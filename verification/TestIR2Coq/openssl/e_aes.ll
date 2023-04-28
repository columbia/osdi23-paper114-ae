; ModuleID = 'crypto/evp/e_aes.c'
source_filename = "crypto/evp/e_aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.aes_key_st = type { [60 x i32], i32 }
%struct.gcm128_context = type { %union.anon.3, %union.anon.3, %union.anon.3, %union.anon.3, %union.anon.3, %union.anon.3, [16 x %struct.u128], void (i64*, %struct.u128*)*, void (i64*, %struct.u128*, i8*, i64)*, i32, i32, void (i8*, i8*, i8*)*, i8*, [48 x i8] }
%union.anon.3 = type { [2 x i64] }
%struct.u128 = type { i64, i64 }
%struct.xts128_context = type { i8*, i8*, void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)* }
%struct.ccm128_context = type { %union.anon.6, %union.anon.6, i64, void (i8*, i8*, i8*)*, i8* }
%union.anon.6 = type { [2 x i64] }
%struct.ocb128_context = type { void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)*, i8*, i8*, void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)*, i64, i64, %union.OCB_BLOCK, %union.OCB_BLOCK, %union.OCB_BLOCK*, %struct.anon }
%union.OCB_BLOCK = type { [2 x i64] }
%struct.anon = type { i64, i64, %union.OCB_BLOCK, %union.OCB_BLOCK, %union.OCB_BLOCK, %union.OCB_BLOCK }

@OPENSSL_ia32cap_P = external local_unnamed_addr global [0 x i32], align 4
@aesni_128_cbc = internal constant %struct.evp_cipher_st { i32 419, i32 16, i32 16, i32 16, i64 2, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aesni_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_128_cbc = internal constant %struct.evp_cipher_st { i32 419, i32 16, i32 16, i32 16, i64 2, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_128_ecb = internal constant %struct.evp_cipher_st { i32 418, i32 16, i32 16, i32 0, i64 1, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aesni_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_128_ecb = internal constant %struct.evp_cipher_st { i32 418, i32 16, i32 16, i32 0, i64 1, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_128_ofb = internal constant %struct.evp_cipher_st { i32 420, i32 1, i32 16, i32 16, i64 4, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_128_ofb = internal constant %struct.evp_cipher_st { i32 420, i32 1, i32 16, i32 16, i64 4, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_128_cfb = internal constant %struct.evp_cipher_st { i32 421, i32 1, i32 16, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_128_cfb = internal constant %struct.evp_cipher_st { i32 421, i32 1, i32 16, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_128_cfb1 = internal constant %struct.evp_cipher_st { i32 650, i32 1, i32 16, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_128_cfb1 = internal constant %struct.evp_cipher_st { i32 650, i32 1, i32 16, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_128_cfb8 = internal constant %struct.evp_cipher_st { i32 653, i32 1, i32 16, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_128_cfb8 = internal constant %struct.evp_cipher_st { i32 653, i32 1, i32 16, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_128_ctr = internal constant %struct.evp_cipher_st { i32 904, i32 1, i32 16, i32 16, i64 5, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ctr_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_128_ctr = internal constant %struct.evp_cipher_st { i32 904, i32 1, i32 16, i32 16, i64 5, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ctr_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_192_cbc = internal constant %struct.evp_cipher_st { i32 423, i32 16, i32 24, i32 16, i64 2, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aesni_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_192_cbc = internal constant %struct.evp_cipher_st { i32 423, i32 16, i32 24, i32 16, i64 2, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_192_ecb = internal constant %struct.evp_cipher_st { i32 422, i32 16, i32 24, i32 0, i64 1, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aesni_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_192_ecb = internal constant %struct.evp_cipher_st { i32 422, i32 16, i32 24, i32 0, i64 1, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_192_ofb = internal constant %struct.evp_cipher_st { i32 424, i32 1, i32 24, i32 16, i64 4, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_192_ofb = internal constant %struct.evp_cipher_st { i32 424, i32 1, i32 24, i32 16, i64 4, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_192_cfb = internal constant %struct.evp_cipher_st { i32 425, i32 1, i32 24, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_192_cfb = internal constant %struct.evp_cipher_st { i32 425, i32 1, i32 24, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_192_cfb1 = internal constant %struct.evp_cipher_st { i32 651, i32 1, i32 24, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_192_cfb1 = internal constant %struct.evp_cipher_st { i32 651, i32 1, i32 24, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_192_cfb8 = internal constant %struct.evp_cipher_st { i32 654, i32 1, i32 24, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_192_cfb8 = internal constant %struct.evp_cipher_st { i32 654, i32 1, i32 24, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_192_ctr = internal constant %struct.evp_cipher_st { i32 905, i32 1, i32 24, i32 16, i64 5, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ctr_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_192_ctr = internal constant %struct.evp_cipher_st { i32 905, i32 1, i32 24, i32 16, i64 5, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ctr_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_256_cbc = internal constant %struct.evp_cipher_st { i32 427, i32 16, i32 32, i32 16, i64 2, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aesni_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_256_cbc = internal constant %struct.evp_cipher_st { i32 427, i32 16, i32 32, i32 16, i64 2, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_256_ecb = internal constant %struct.evp_cipher_st { i32 426, i32 16, i32 32, i32 0, i64 1, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aesni_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_256_ecb = internal constant %struct.evp_cipher_st { i32 426, i32 16, i32 32, i32 0, i64 1, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_256_ofb = internal constant %struct.evp_cipher_st { i32 428, i32 1, i32 32, i32 16, i64 4, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_256_ofb = internal constant %struct.evp_cipher_st { i32 428, i32 1, i32 32, i32 16, i64 4, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_256_cfb = internal constant %struct.evp_cipher_st { i32 429, i32 1, i32 32, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_256_cfb = internal constant %struct.evp_cipher_st { i32 429, i32 1, i32 32, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_256_cfb1 = internal constant %struct.evp_cipher_st { i32 652, i32 1, i32 32, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_256_cfb1 = internal constant %struct.evp_cipher_st { i32 652, i32 1, i32 32, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_256_cfb8 = internal constant %struct.evp_cipher_st { i32 655, i32 1, i32 32, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_256_cfb8 = internal constant %struct.evp_cipher_st { i32 655, i32 1, i32 32, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_256_ctr = internal constant %struct.evp_cipher_st { i32 906, i32 1, i32 32, i32 16, i64 5, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ctr_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_256_ctr = internal constant %struct.evp_cipher_st { i32 906, i32 1, i32 32, i32 16, i64 5, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ctr_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 264, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_128_gcm = internal constant %struct.evp_cipher_st { i32 895, i32 1, i32 16, i32 12, i64 3148918, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_gcm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_gcm_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aes_gcm_cleanup, i32 744, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_gcm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_128_gcm = internal constant %struct.evp_cipher_st { i32 895, i32 1, i32 16, i32 12, i64 3148918, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_gcm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_gcm_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aes_gcm_cleanup, i32 744, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_gcm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_192_gcm = internal constant %struct.evp_cipher_st { i32 898, i32 1, i32 24, i32 12, i64 3148918, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_gcm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_gcm_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aes_gcm_cleanup, i32 744, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_gcm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_192_gcm = internal constant %struct.evp_cipher_st { i32 898, i32 1, i32 24, i32 12, i64 3148918, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_gcm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_gcm_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aes_gcm_cleanup, i32 744, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_gcm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_256_gcm = internal constant %struct.evp_cipher_st { i32 901, i32 1, i32 32, i32 12, i64 3148918, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_gcm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_gcm_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aes_gcm_cleanup, i32 744, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_gcm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_256_gcm = internal constant %struct.evp_cipher_st { i32 901, i32 1, i32 32, i32 12, i64 3148918, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_gcm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_gcm_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aes_gcm_cleanup, i32 744, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_gcm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_128_xts = internal constant %struct.evp_cipher_st { i32 913, i32 1, i32 32, i32 16, i64 66673, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_xts_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_xts_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 536, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_xts_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_128_xts = internal constant %struct.evp_cipher_st { i32 913, i32 1, i32 32, i32 16, i64 66673, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_xts_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_xts_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 536, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_xts_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_256_xts = internal constant %struct.evp_cipher_st { i32 914, i32 1, i32 64, i32 16, i64 66673, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_xts_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_xts_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 536, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_xts_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_256_xts = internal constant %struct.evp_cipher_st { i32 914, i32 1, i32 64, i32 16, i64 66673, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_xts_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_xts_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 536, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_xts_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_128_ccm = internal constant %struct.evp_cipher_st { i32 896, i32 1, i32 16, i32 12, i64 3148919, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_ccm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ccm_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 344, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_ccm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_128_ccm = internal constant %struct.evp_cipher_st { i32 896, i32 1, i32 16, i32 12, i64 3148919, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_ccm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ccm_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 344, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_ccm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_192_ccm = internal constant %struct.evp_cipher_st { i32 899, i32 1, i32 24, i32 12, i64 3148919, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_ccm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ccm_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 344, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_ccm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_192_ccm = internal constant %struct.evp_cipher_st { i32 899, i32 1, i32 24, i32 12, i64 3148919, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_ccm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ccm_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 344, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_ccm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_256_ccm = internal constant %struct.evp_cipher_st { i32 902, i32 1, i32 32, i32 12, i64 3148919, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_ccm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ccm_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 344, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_ccm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_256_ccm = internal constant %struct.evp_cipher_st { i32 902, i32 1, i32 32, i32 12, i64 3148919, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_ccm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ccm_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 344, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_ccm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_128_wrap = internal constant %struct.evp_cipher_st { i32 788, i32 8, i32 16, i32 8, i64 1114162, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_wrap_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_wrap_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 256, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_192_wrap = internal constant %struct.evp_cipher_st { i32 789, i32 8, i32 24, i32 8, i64 1114162, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_wrap_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_wrap_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 256, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_256_wrap = internal constant %struct.evp_cipher_st { i32 790, i32 8, i32 32, i32 8, i64 1114162, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_wrap_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_wrap_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 256, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_128_wrap_pad = internal constant %struct.evp_cipher_st { i32 897, i32 8, i32 16, i32 4, i64 1114162, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_wrap_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_wrap_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 256, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_192_wrap_pad = internal constant %struct.evp_cipher_st { i32 900, i32 8, i32 24, i32 4, i64 1114162, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_wrap_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_wrap_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 256, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_256_wrap_pad = internal constant %struct.evp_cipher_st { i32 903, i32 8, i32 32, i32 4, i64 1114162, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_wrap_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_wrap_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 256, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_128_ocb = internal constant %struct.evp_cipher_st { i32 958, i32 16, i32 16, i32 12, i64 3214451, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_ocb_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ocb_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aes_ocb_cleanup, i32 752, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_ocb_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_128_ocb = internal constant %struct.evp_cipher_st { i32 958, i32 16, i32 16, i32 12, i64 3214451, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_ocb_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ocb_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aes_ocb_cleanup, i32 752, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_ocb_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_192_ocb = internal constant %struct.evp_cipher_st { i32 959, i32 16, i32 24, i32 12, i64 3214451, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_ocb_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ocb_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aes_ocb_cleanup, i32 752, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_ocb_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_192_ocb = internal constant %struct.evp_cipher_st { i32 959, i32 16, i32 24, i32 12, i64 3214451, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_ocb_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ocb_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aes_ocb_cleanup, i32 752, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_ocb_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_256_ocb = internal constant %struct.evp_cipher_st { i32 960, i32 16, i32 32, i32 12, i64 3214451, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_ocb_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ocb_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aes_ocb_cleanup, i32 752, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_ocb_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aes_256_ocb = internal constant %struct.evp_cipher_st { i32 960, i32 16, i32 32, i32 12, i64 3214451, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aes_ocb_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aes_ocb_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aes_ocb_cleanup, i32 752, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aes_ocb_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@.str = private unnamed_addr constant [19 x i8] c"crypto/evp/e_aes.c\00", align 1
@__func__.aesni_init_key = private unnamed_addr constant [15 x i8] c"aesni_init_key\00", align 1
@__func__.aes_init_key = private unnamed_addr constant [13 x i8] c"aes_init_key\00", align 1
@__func__.aes_gcm_tls_cipher = private unnamed_addr constant [19 x i8] c"aes_gcm_tls_cipher\00", align 1
@__func__.aes_gcm_ctrl = private unnamed_addr constant [13 x i8] c"aes_gcm_ctrl\00", align 1
@__func__.aesni_xts_init_key = private unnamed_addr constant [19 x i8] c"aesni_xts_init_key\00", align 1
@__func__.aes_xts_cipher = private unnamed_addr constant [15 x i8] c"aes_xts_cipher\00", align 1
@__func__.aes_xts_init_key = private unnamed_addr constant [17 x i8] c"aes_xts_init_key\00", align 1
@__func__.aes_wrap_cipher = private unnamed_addr constant [16 x i8] c"aes_wrap_cipher\00", align 1
@__func__.aes_ocb_cipher = private unnamed_addr constant [15 x i8] c"aes_ocb_cipher\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_128_cbc() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_128_cbc, %struct.evp_cipher_st* @aesni_128_cbc
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_128_ecb() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_128_ecb, %struct.evp_cipher_st* @aesni_128_ecb
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_128_ofb() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_128_ofb, %struct.evp_cipher_st* @aesni_128_ofb
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_128_cfb128() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_128_cfb, %struct.evp_cipher_st* @aesni_128_cfb
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_128_cfb1() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_128_cfb1, %struct.evp_cipher_st* @aesni_128_cfb1
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_128_cfb8() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_128_cfb8, %struct.evp_cipher_st* @aesni_128_cfb8
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_128_ctr() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_128_ctr, %struct.evp_cipher_st* @aesni_128_ctr
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_192_cbc() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_192_cbc, %struct.evp_cipher_st* @aesni_192_cbc
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_192_ecb() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_192_ecb, %struct.evp_cipher_st* @aesni_192_ecb
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_192_ofb() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_192_ofb, %struct.evp_cipher_st* @aesni_192_ofb
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_192_cfb128() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_192_cfb, %struct.evp_cipher_st* @aesni_192_cfb
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_192_cfb1() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_192_cfb1, %struct.evp_cipher_st* @aesni_192_cfb1
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_192_cfb8() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_192_cfb8, %struct.evp_cipher_st* @aesni_192_cfb8
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_192_ctr() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_192_ctr, %struct.evp_cipher_st* @aesni_192_ctr
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_256_cbc() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_256_cbc, %struct.evp_cipher_st* @aesni_256_cbc
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_256_ecb() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_256_ecb, %struct.evp_cipher_st* @aesni_256_ecb
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_256_ofb() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_256_ofb, %struct.evp_cipher_st* @aesni_256_ofb
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_256_cfb128() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_256_cfb, %struct.evp_cipher_st* @aesni_256_cfb
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_256_cfb1() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_256_cfb1, %struct.evp_cipher_st* @aesni_256_cfb1
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_256_cfb8() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_256_cfb8, %struct.evp_cipher_st* @aesni_256_cfb8
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_256_ctr() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_256_ctr, %struct.evp_cipher_st* @aesni_256_ctr
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_128_gcm() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_128_gcm, %struct.evp_cipher_st* @aesni_128_gcm
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_192_gcm() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_192_gcm, %struct.evp_cipher_st* @aesni_192_gcm
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_256_gcm() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_256_gcm, %struct.evp_cipher_st* @aesni_256_gcm
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_128_xts() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_128_xts, %struct.evp_cipher_st* @aesni_128_xts
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_256_xts() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_256_xts, %struct.evp_cipher_st* @aesni_256_xts
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_128_ccm() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_128_ccm, %struct.evp_cipher_st* @aesni_128_ccm
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_192_ccm() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_192_ccm, %struct.evp_cipher_st* @aesni_192_ccm
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_256_ccm() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_256_ccm, %struct.evp_cipher_st* @aesni_256_ccm
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_128_wrap() local_unnamed_addr #1 {
entry:
  ret %struct.evp_cipher_st* @aes_128_wrap
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_192_wrap() local_unnamed_addr #1 {
entry:
  ret %struct.evp_cipher_st* @aes_192_wrap
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_256_wrap() local_unnamed_addr #1 {
entry:
  ret %struct.evp_cipher_st* @aes_256_wrap
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_128_wrap_pad() local_unnamed_addr #1 {
entry:
  ret %struct.evp_cipher_st* @aes_128_wrap_pad
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_192_wrap_pad() local_unnamed_addr #1 {
entry:
  ret %struct.evp_cipher_st* @aes_192_wrap_pad
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_256_wrap_pad() local_unnamed_addr #1 {
entry:
  ret %struct.evp_cipher_st* @aes_256_wrap_pad
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_128_ocb() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_128_ocb, %struct.evp_cipher_st* @aesni_128_ocb
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_192_ocb() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_192_ocb, %struct.evp_cipher_st* @aesni_192_ocb
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aes_256_ocb() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* @aes_256_ocb, %struct.evp_cipher_st* @aesni_256_ocb
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aesni_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* nocapture noundef readnone %iv, i32 noundef %enc) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %call1 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %call2 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call1) #7
  %cmp3 = icmp eq i32 %call2, 2
  %0 = add i32 %call2, -3
  %1 = icmp ult i32 %0, -2
  %tobool = icmp ne i32 %enc, 0
  %or.cond32 = or i1 %tobool, %1
  %call8 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %mul9 = shl nsw i32 %call8, 3
  %ks11 = bitcast i8* %call to %struct.aes_key_st*
  br i1 %or.cond32, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call6 = tail call i32 @aesni_set_decrypt_key(i8* noundef %key, i32 noundef %mul9, %struct.aes_key_st* noundef %ks11) #7
  %block = getelementptr inbounds i8, i8* %call, i64 248
  %2 = bitcast i8* %block to void (i8*, i8*, i8*)**
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @aesni_decrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %2, align 8, !tbaa !8
  %cond = select i1 %cmp3, void (i8*, i8*, i64, i8*, i8*, i32)* bitcast (void (i8*, i8*, i64, %struct.aes_key_st*, i8*, i32)* @aesni_cbc_encrypt to void (i8*, i8*, i64, i8*, i8*, i32)*), void (i8*, i8*, i64, i8*, i8*, i32)* null
  %stream = getelementptr inbounds i8, i8* %call, i64 256
  %cbc = bitcast i8* %stream to void (i8*, i8*, i64, i8*, i8*, i32)**
  store void (i8*, i8*, i64, i8*, i8*, i32)* %cond, void (i8*, i8*, i64, i8*, i8*, i32)** %cbc, align 8, !tbaa !11
  br label %if.end26

if.else:                                          ; preds = %entry
  %call12 = tail call i32 @aesni_set_encrypt_key(i8* noundef %key, i32 noundef %mul9, %struct.aes_key_st* noundef %ks11) #7
  %block13 = getelementptr inbounds i8, i8* %call, i64 248
  %3 = bitcast i8* %block13 to void (i8*, i8*, i8*)**
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @aesni_encrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %3, align 8, !tbaa !8
  br i1 %cmp3, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.else
  %stream16 = getelementptr inbounds i8, i8* %call, i64 256
  %cbc17 = bitcast i8* %stream16 to void (i8*, i8*, i64, i8*, i8*, i32)**
  store void (i8*, i8*, i64, i8*, i8*, i32)* bitcast (void (i8*, i8*, i64, %struct.aes_key_st*, i8*, i32)* @aesni_cbc_encrypt to void (i8*, i8*, i64, i8*, i8*, i32)*), void (i8*, i8*, i64, i8*, i8*, i32)** %cbc17, align 8, !tbaa !11
  br label %if.end26

if.else18:                                        ; preds = %if.else
  %cmp19 = icmp eq i32 %call2, 5
  %stream21 = getelementptr inbounds i8, i8* %call, i64 256
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else18
  %ctr = bitcast i8* %stream21 to void (i8*, i8*, i64, i8*, i8*)**
  store void (i8*, i8*, i64, i8*, i8*)* @aesni_ctr32_encrypt_blocks, void (i8*, i8*, i64, i8*, i8*)** %ctr, align 8, !tbaa !11
  br label %if.end26

if.else22:                                        ; preds = %if.else18
  %cbc24 = bitcast i8* %stream21 to void (i8*, i8*, i64, i8*, i8*, i32)**
  store void (i8*, i8*, i64, i8*, i8*, i32)* null, void (i8*, i8*, i64, i8*, i8*, i32)** %cbc24, align 8, !tbaa !11
  br label %if.end26

if.end26:                                         ; preds = %if.then15, %if.else22, %if.then20, %if.then
  %ret.0 = phi i32 [ %call12, %if.then15 ], [ %call12, %if.then20 ], [ %call12, %if.else22 ], [ %call6, %if.then ]
  %cmp27 = icmp slt i32 %ret.0, 0
  br i1 %cmp27, label %if.then28, label %cleanup

if.then28:                                        ; preds = %if.end26
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.aesni_init_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 143, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then28
  %retval.0 = phi i32 [ 0, %if.then28 ], [ 1, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aesni_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %ks1 = bitcast i8* %call to %struct.aes_key_st*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call2 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  tail call void @aesni_cbc_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, %struct.aes_key_st* noundef %ks1, i8* noundef nonnull %arraydecay, i32 noundef %call2) #7
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #4

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #4

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #4

declare i32 @aesni_set_decrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #4

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #4

declare void @aesni_decrypt(i8* noundef, i8* noundef, %struct.aes_key_st* noundef) #4

declare void @aesni_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, i8* noundef, i32 noundef) #4

declare i32 @aesni_set_encrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #4

declare void @aesni_encrypt(i8* noundef, i8* noundef, %struct.aes_key_st* noundef) #4

declare void @aesni_ctr32_encrypt_blocks(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* nocapture noundef readnone %iv, i32 noundef %enc) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %call1 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %call2 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call1) #7
  %cmp3 = icmp eq i32 %call2, 2
  %0 = add i32 %call2, -3
  %1 = icmp ult i32 %0, -2
  %tobool = icmp ne i32 %enc, 0
  %or.cond81 = or i1 %tobool, %1
  %2 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and36 = and i32 %2, 512
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %or.cond81, label %if.else35, label %if.then

if.then:                                          ; preds = %entry
  %or.cond82 = select i1 %tobool37, i1 %cmp3, i1 false
  %call8 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %mul = shl nsw i32 %call8, 3
  %ks9 = bitcast i8* %call to %struct.aes_key_st*
  br i1 %or.cond82, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %call10 = tail call i32 @AES_set_decrypt_key(i8* noundef %key, i32 noundef %mul, %struct.aes_key_st* noundef %ks9) #7
  %block = getelementptr inbounds i8, i8* %call, i64 248
  %3 = bitcast i8* %block to void (i8*, i8*, i8*)**
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_decrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %3, align 8, !tbaa !8
  %stream = getelementptr inbounds i8, i8* %call, i64 256
  %cbc = bitcast i8* %stream to void (i8*, i8*, i64, i8*, i8*, i32)**
  store void (i8*, i8*, i64, i8*, i8*, i32)* bitcast (void (i8*, i8*, i64, %struct.aes_key_st*, i8*, i32)* @ossl_bsaes_cbc_encrypt to void (i8*, i8*, i64, i8*, i8*, i32)*), void (i8*, i8*, i64, i8*, i8*, i32)** %cbc, align 8, !tbaa !11
  br label %if.end75

if.else:                                          ; preds = %if.then
  br i1 %tobool37, label %if.then13, label %if.else23

if.then13:                                        ; preds = %if.else
  %call18 = tail call i32 @vpaes_set_decrypt_key(i8* noundef %key, i32 noundef %mul, %struct.aes_key_st* noundef %ks9) #7
  %block19 = getelementptr inbounds i8, i8* %call, i64 248
  %4 = bitcast i8* %block19 to void (i8*, i8*, i8*)**
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @vpaes_decrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %4, align 8, !tbaa !8
  %cond = select i1 %cmp3, void (i8*, i8*, i64, i8*, i8*, i32)* bitcast (void (i8*, i8*, i64, %struct.aes_key_st*, i8*, i32)* @vpaes_cbc_encrypt to void (i8*, i8*, i64, i8*, i8*, i32)*), void (i8*, i8*, i64, i8*, i8*, i32)* null
  %stream21 = getelementptr inbounds i8, i8* %call, i64 256
  %cbc22 = bitcast i8* %stream21 to void (i8*, i8*, i64, i8*, i8*, i32)**
  store void (i8*, i8*, i64, i8*, i8*, i32)* %cond, void (i8*, i8*, i64, i8*, i8*, i32)** %cbc22, align 8, !tbaa !11
  br label %if.end75

if.else23:                                        ; preds = %if.else
  %call28 = tail call i32 @AES_set_decrypt_key(i8* noundef %key, i32 noundef %mul, %struct.aes_key_st* noundef %ks9) #7
  %block29 = getelementptr inbounds i8, i8* %call, i64 248
  %5 = bitcast i8* %block29 to void (i8*, i8*, i8*)**
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_decrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %5, align 8, !tbaa !8
  %cond31 = select i1 %cmp3, void (i8*, i8*, i64, i8*, i8*, i32)* bitcast (void (i8*, i8*, i64, %struct.aes_key_st*, i8*, i32)* @AES_cbc_encrypt to void (i8*, i8*, i64, i8*, i8*, i32)*), void (i8*, i8*, i64, i8*, i8*, i32)* null
  %stream32 = getelementptr inbounds i8, i8* %call, i64 256
  %cbc33 = bitcast i8* %stream32 to void (i8*, i8*, i64, i8*, i8*, i32)**
  store void (i8*, i8*, i64, i8*, i8*, i32)* %cond31, void (i8*, i8*, i64, i8*, i8*, i32)** %cbc33, align 8, !tbaa !11
  br label %if.end75

if.else35:                                        ; preds = %entry
  %cmp39 = icmp eq i32 %call2, 5
  %or.cond83 = select i1 %tobool37, i1 %cmp39, i1 false
  %call41 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %mul42 = shl nsw i32 %call41, 3
  %ks44 = bitcast i8* %call to %struct.aes_key_st*
  br i1 %or.cond83, label %if.then40, label %if.else48

if.then40:                                        ; preds = %if.else35
  %call45 = tail call i32 @AES_set_encrypt_key(i8* noundef %key, i32 noundef %mul42, %struct.aes_key_st* noundef %ks44) #7
  %block46 = getelementptr inbounds i8, i8* %call, i64 248
  %6 = bitcast i8* %block46 to void (i8*, i8*, i8*)**
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %6, align 8, !tbaa !8
  %stream47 = getelementptr inbounds i8, i8* %call, i64 256
  %ctr = bitcast i8* %stream47 to void (i8*, i8*, i64, i8*, i8*)**
  store void (i8*, i8*, i64, i8*, i8*)* bitcast (void (i8*, i8*, i64, %struct.aes_key_st*, i8*)* @ossl_bsaes_ctr32_encrypt_blocks to void (i8*, i8*, i64, i8*, i8*)*), void (i8*, i8*, i64, i8*, i8*)** %ctr, align 8, !tbaa !11
  br label %if.end75

if.else48:                                        ; preds = %if.else35
  br i1 %tobool37, label %if.then51, label %if.else62

if.then51:                                        ; preds = %if.else48
  %call56 = tail call i32 @vpaes_set_encrypt_key(i8* noundef %key, i32 noundef %mul42, %struct.aes_key_st* noundef %ks44) #7
  %block57 = getelementptr inbounds i8, i8* %call, i64 248
  %7 = bitcast i8* %block57 to void (i8*, i8*, i8*)**
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @vpaes_encrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %7, align 8, !tbaa !8
  %cond59 = select i1 %cmp3, void (i8*, i8*, i64, i8*, i8*, i32)* bitcast (void (i8*, i8*, i64, %struct.aes_key_st*, i8*, i32)* @vpaes_cbc_encrypt to void (i8*, i8*, i64, i8*, i8*, i32)*), void (i8*, i8*, i64, i8*, i8*, i32)* null
  %stream60 = getelementptr inbounds i8, i8* %call, i64 256
  %cbc61 = bitcast i8* %stream60 to void (i8*, i8*, i64, i8*, i8*, i32)**
  store void (i8*, i8*, i64, i8*, i8*, i32)* %cond59, void (i8*, i8*, i64, i8*, i8*, i32)** %cbc61, align 8, !tbaa !11
  br label %if.end75

if.else62:                                        ; preds = %if.else48
  %call67 = tail call i32 @AES_set_encrypt_key(i8* noundef %key, i32 noundef %mul42, %struct.aes_key_st* noundef %ks44) #7
  %block68 = getelementptr inbounds i8, i8* %call, i64 248
  %8 = bitcast i8* %block68 to void (i8*, i8*, i8*)**
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %8, align 8, !tbaa !8
  %cond70 = select i1 %cmp3, void (i8*, i8*, i64, i8*, i8*, i32)* bitcast (void (i8*, i8*, i64, %struct.aes_key_st*, i8*, i32)* @AES_cbc_encrypt to void (i8*, i8*, i64, i8*, i8*, i32)*), void (i8*, i8*, i64, i8*, i8*, i32)* null
  %stream71 = getelementptr inbounds i8, i8* %call, i64 256
  %cbc72 = bitcast i8* %stream71 to void (i8*, i8*, i64, i8*, i8*, i32)**
  store void (i8*, i8*, i64, i8*, i8*, i32)* %cond70, void (i8*, i8*, i64, i8*, i8*, i32)** %cbc72, align 8, !tbaa !11
  br label %if.end75

if.end75:                                         ; preds = %if.then40, %if.else62, %if.then51, %if.then7, %if.else23, %if.then13
  %ret.0 = phi i32 [ %call45, %if.then40 ], [ %call56, %if.then51 ], [ %call67, %if.else62 ], [ %call10, %if.then7 ], [ %call18, %if.then13 ], [ %call28, %if.else23 ]
  %cmp76 = icmp slt i32 %ret.0, 0
  br i1 %cmp76, label %if.then77, label %cleanup

if.then77:                                        ; preds = %if.end75
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2414, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.aes_init_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 143, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then77
  %retval.0 = phi i32 [ 0, %if.then77 ], [ 1, %if.end75 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %stream = getelementptr inbounds i8, i8* %call, i64 256
  %cbc = bitcast i8* %stream to void (i8*, i8*, i64, i8*, i8*, i32)**
  %0 = load void (i8*, i8*, i64, i8*, i8*, i32)*, void (i8*, i8*, i64, i8*, i8*, i32)** %cbc, align 8, !tbaa !11
  %tobool.not = icmp eq void (i8*, i8*, i64, i8*, i8*, i32)* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call3 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  tail call void %0(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef nonnull %call, i8* noundef nonnull %arraydecay, i32 noundef %call3) #7
  br label %if.end15

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool5.not = icmp eq i32 %call4, 0
  %arraydecay13 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %block14 = getelementptr inbounds i8, i8* %call, i64 248
  %1 = bitcast i8* %block14 to void (i8*, i8*, i8*)**
  %2 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %1, align 8, !tbaa !8
  br i1 %tobool5.not, label %if.else10, label %if.then6

if.then6:                                         ; preds = %if.else
  tail call void @CRYPTO_cbc128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef nonnull %call, i8* noundef nonnull %arraydecay13, void (i8*, i8*, i8*)* noundef %2) #7
  br label %if.end15

if.else10:                                        ; preds = %if.else
  tail call void @CRYPTO_cbc128_decrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef nonnull %call, i8* noundef nonnull %arraydecay13, void (i8*, i8*, i8*)* noundef %2) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then6, %if.else10, %if.then
  ret i32 1
}

declare i32 @AES_set_decrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #4

declare void @AES_decrypt(i8* noundef, i8* noundef, %struct.aes_key_st* noundef) #4

declare void @ossl_bsaes_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, i8* noundef, i32 noundef) #4

declare i32 @vpaes_set_decrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #4

declare void @vpaes_decrypt(i8* noundef, i8* noundef, %struct.aes_key_st* noundef) #4

declare void @vpaes_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, i8* noundef, i32 noundef) #4

declare void @AES_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, i8* noundef, i32 noundef) #4

declare i32 @AES_set_encrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #4

declare void @AES_encrypt(i8* noundef, i8* noundef, %struct.aes_key_st* noundef) #4

declare void @ossl_bsaes_ctr32_encrypt_blocks(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, i8* noundef) #4

declare i32 @vpaes_set_encrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #4

declare void @vpaes_encrypt(i8* noundef, i8* noundef, %struct.aes_key_st* noundef) #4

declare void @CRYPTO_cbc128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #4

declare void @CRYPTO_cbc128_decrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @aesni_ecb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %call = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %conv = sext i32 %call to i64
  %cmp = icmp ugt i64 %conv, %len
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %ks3 = bitcast i8* %call2 to %struct.aes_key_st*
  %call4 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  tail call void @aesni_ecb_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, %struct.aes_key_st* noundef %ks3, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 1
}

declare i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #4

declare void @aesni_ecb_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_ecb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %call = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %conv = sext i32 %call to i64
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %cmp = icmp ugt i64 %conv, %len
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %len, %conv
  %block = getelementptr inbounds i8, i8* %call1, i64 248
  %0 = bitcast i8* %block to void (i8*, i8*, i8*)**
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %i.020 = phi i64 [ 0, %if.end ], [ %add, %for.body ]
  %1 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %0, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %i.020
  %add.ptr5 = getelementptr inbounds i8, i8* %out, i64 %i.020
  tail call void %1(i8* noundef %add.ptr, i8* noundef %add.ptr5, i8* noundef %call1) #7
  %add = add i64 %i.020, %conv
  %cmp3.not = icmp ugt i64 %add, %sub
  br i1 %cmp3.not, label %cleanup, label %for.body, !llvm.loop !12

cleanup:                                          ; preds = %for.body, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_ofb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %num = alloca i32, align 4
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call1 = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  store i32 %call1, i32* %num, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %block = getelementptr inbounds i8, i8* %call, i64 248
  %1 = bitcast i8* %block to void (i8*, i8*, i8*)**
  %2 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %1, align 8, !tbaa !8
  call void @CRYPTO_ofb128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %call, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, void (i8*, i8*, i8*)* noundef %2) #7
  %3 = load i32, i32* %num, align 4, !tbaa !4
  %call2 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 1
}

declare i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #4

declare void @CRYPTO_ofb128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i32* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #4

declare i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_cfb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %num = alloca i32, align 4
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call1 = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  store i32 %call1, i32* %num, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call2 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %block = getelementptr inbounds i8, i8* %call, i64 248
  %1 = bitcast i8* %block to void (i8*, i8*, i8*)**
  %2 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %1, align 8, !tbaa !8
  call void @CRYPTO_cfb128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %call, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call2, void (i8*, i8*, i8*)* noundef %2) #7
  %3 = load i32, i32* %num, align 4, !tbaa !4
  %call3 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 1
}

declare void @CRYPTO_cfb128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i32* noundef, i32 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_cfb1_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %num = alloca i32, align 4
  %num5 = alloca i32, align 4
  %num16 = alloca i32, align 4
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %call1 = tail call i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef 8192) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %cmp54 = icmp ugt i64 %len, 1152921504606846975
  br i1 %cmp54, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %0 = bitcast i32* %num5 to i8*
  %arraydecay9 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %block11 = getelementptr inbounds i8, i8* %call, i64 248
  %1 = bitcast i8* %block11 to void (i8*, i8*, i8*)**
  br label %while.body

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  %call2 = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  store i32 %call2, i32* %num, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call3 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %block = getelementptr inbounds i8, i8* %call, i64 248
  %3 = bitcast i8* %block to void (i8*, i8*, i8*)**
  %4 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %3, align 8, !tbaa !8
  call void @CRYPTO_cfb128_1_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %call, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call3, void (i8*, i8*, i8*)* noundef %4) #7
  %5 = load i32, i32* %num, align 4, !tbaa !4
  %call4 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %5) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  br label %cleanup

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %len.addr.057 = phi i64 [ %len, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.056 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr13, %while.body ]
  %out.addr.055 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call6 = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  store i32 %call6, i32* %num5, align 4, !tbaa !4
  %call10 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %6 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %1, align 8, !tbaa !8
  call void @CRYPTO_cfb128_1_encrypt(i8* noundef %in.addr.056, i8* noundef %out.addr.055, i64 noundef -9223372036854775808, i8* noundef %call, i8* noundef nonnull %arraydecay9, i32* noundef nonnull %num5, i32 noundef %call10, void (i8*, i8*, i8*)* noundef %6) #7
  %7 = load i32, i32* %num5, align 4, !tbaa !4
  %call12 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %7) #7
  %sub = add i64 %len.addr.057, -1152921504606846976
  %add.ptr = getelementptr inbounds i8, i8* %out.addr.055, i64 1152921504606846976
  %add.ptr13 = getelementptr inbounds i8, i8* %in.addr.056, i64 1152921504606846976
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  %cmp = icmp ugt i64 %sub, 1152921504606846975
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !14

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %out.addr.0.lcssa = phi i8* [ %out, %while.cond.preheader ], [ %add.ptr, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %while.cond.preheader ], [ %add.ptr13, %while.body ]
  %len.addr.0.lcssa = phi i64 [ %len, %while.cond.preheader ], [ %sub, %while.body ]
  %tobool14.not = icmp eq i64 %len.addr.0.lcssa, 0
  br i1 %tobool14.not, label %cleanup, label %if.then15

if.then15:                                        ; preds = %while.end
  %8 = bitcast i32* %num16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #8
  %call17 = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  store i32 %call17, i32* %num16, align 4, !tbaa !4
  %mul = shl nuw nsw i64 %len.addr.0.lcssa, 3
  %arraydecay20 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call21 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %block22 = getelementptr inbounds i8, i8* %call, i64 248
  %9 = bitcast i8* %block22 to void (i8*, i8*, i8*)**
  %10 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %9, align 8, !tbaa !8
  call void @CRYPTO_cfb128_1_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %mul, i8* noundef %call, i8* noundef nonnull %arraydecay20, i32* noundef nonnull %num16, i32 noundef %call21, void (i8*, i8*, i8*)* noundef %10) #7
  %11 = load i32, i32* %num16, align 4, !tbaa !4
  %call23 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %11) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then15, %if.then
  ret i32 1
}

declare i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #4

declare void @CRYPTO_cfb128_1_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i32* noundef, i32 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_cfb8_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %num = alloca i32, align 4
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call1 = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  store i32 %call1, i32* %num, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call2 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %block = getelementptr inbounds i8, i8* %call, i64 248
  %1 = bitcast i8* %block to void (i8*, i8*, i8*)**
  %2 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %1, align 8, !tbaa !8
  call void @CRYPTO_cfb128_8_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %call, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call2, void (i8*, i8*, i8*)* noundef %2) #7
  %3 = load i32, i32* %num, align 4, !tbaa !4
  %call3 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 1
}

declare void @CRYPTO_cfb128_8_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i32* noundef, i32 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_ctr_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %num = alloca i32, align 4
  %call = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i32 %call, i32* %num, align 4, !tbaa !4
  %stream = getelementptr inbounds i8, i8* %call1, i64 256
  %ctr = bitcast i8* %stream to void (i8*, i8*, i64, i8*, i8*)**
  %1 = load void (i8*, i8*, i64, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*)** %ctr, align 8, !tbaa !11
  %tobool.not = icmp eq void (i8*, i8*, i64, i8*, i8*)* %1, null
  %arraydecay8 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call9 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load void (i8*, i8*, i64, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*)** %ctr, align 8, !tbaa !11
  call void @CRYPTO_ctr128_encrypt_ctr32(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef nonnull %call1, i8* noundef nonnull %arraydecay8, i8* noundef %call9, i32* noundef nonnull %num, void (i8*, i8*, i64, i8*, i8*)* noundef %2) #7
  br label %if.end10

if.else:                                          ; preds = %if.end
  %block = getelementptr inbounds i8, i8* %call1, i64 248
  %3 = bitcast i8* %block to void (i8*, i8*, i8*)**
  %4 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %3, align 8, !tbaa !8
  call void @CRYPTO_ctr128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef nonnull %call1, i8* noundef nonnull %arraydecay8, i8* noundef %call9, i32* noundef nonnull %num, void (i8*, i8*, i8*)* noundef %4) #7
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  %5 = load i32, i32* %num, align 4, !tbaa !4
  %call11 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare void @CRYPTO_ctr128_encrypt_ctr32(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i32* noundef, void (i8*, i8*, i64, i8*, i8*)* noundef) local_unnamed_addr #4

declare i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #4

declare void @CRYPTO_ctr128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i32* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @aesni_gcm_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool = icmp ne i8* %iv, null
  %tobool1 = icmp ne i8* %key, null
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %mul = shl nsw i32 %call4, 3
  %ks5 = bitcast i8* %call to %struct.aes_key_st*
  %call6 = tail call i32 @aesni_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul, %struct.aes_key_st* noundef %ks5) #7
  %gcm = getelementptr inbounds i8, i8* %call, i64 256
  %0 = bitcast i8* %gcm to %struct.gcm128_context*
  tail call void @CRYPTO_gcm128_init(%struct.gcm128_context* noundef nonnull %0, i8* noundef %call, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @aesni_encrypt to void (i8*, i8*, i8*)*)) #7
  %ctr = getelementptr inbounds i8, i8* %call, i64 736
  %1 = bitcast i8* %ctr to void (i8*, i8*, i64, i8*, i8*)**
  store void (i8*, i8*, i64, i8*, i8*)* @aesni_ctr32_encrypt_blocks, void (i8*, i8*, i64, i8*, i8*)** %1, align 8, !tbaa !15
  %cmp = icmp eq i8* %iv, null
  br i1 %cmp, label %land.lhs.true8, label %if.then14

land.lhs.true8:                                   ; preds = %if.then3
  %iv_set = getelementptr inbounds i8, i8* %call, i64 252
  %2 = bitcast i8* %iv_set to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !19
  %tobool9.not = icmp eq i32 %3, 0
  br i1 %tobool9.not, label %cleanup.sink.split, label %if.end12

if.end12:                                         ; preds = %land.lhs.true8
  %iv11 = getelementptr inbounds i8, i8* %call, i64 696
  %4 = bitcast i8* %iv11 to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !20
  %tobool13.not = icmp eq i8* %5, null
  br i1 %tobool13.not, label %cleanup.sink.split, label %if.then14

if.then14:                                        ; preds = %if.then3, %if.end12
  %iv.addr.062 = phi i8* [ %5, %if.end12 ], [ %iv, %if.then3 ]
  %ivlen = getelementptr inbounds i8, i8* %call, i64 704
  %6 = bitcast i8* %ivlen to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !21
  %conv = sext i32 %7 to i64
  tail call void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef nonnull %0, i8* noundef nonnull %iv.addr.062, i64 noundef %conv) #7
  br label %cleanup.sink.split.sink.split

if.else:                                          ; preds = %if.end
  %key_set18 = getelementptr inbounds i8, i8* %call, i64 248
  %8 = bitcast i8* %key_set18 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !22
  %tobool19.not = icmp eq i32 %9, 0
  br i1 %tobool19.not, label %if.else24, label %if.then20

if.then20:                                        ; preds = %if.else
  %gcm21 = getelementptr inbounds i8, i8* %call, i64 256
  %10 = bitcast i8* %gcm21 to %struct.gcm128_context*
  %ivlen22 = getelementptr inbounds i8, i8* %call, i64 704
  %11 = bitcast i8* %ivlen22 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !21
  %conv23 = sext i32 %12 to i64
  tail call void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef nonnull %10, i8* noundef %iv, i64 noundef %conv23) #7
  br label %cleanup.sink.split.sink.split

if.else24:                                        ; preds = %if.else
  %iv25 = getelementptr inbounds i8, i8* %call, i64 696
  %13 = bitcast i8* %iv25 to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !20
  %ivlen26 = getelementptr inbounds i8, i8* %call, i64 704
  %15 = bitcast i8* %ivlen26 to i32*
  %16 = load i32, i32* %15, align 8, !tbaa !21
  %conv27 = sext i32 %16 to i64
  %call28 = tail call i8* @memcpy(i8* noundef %14, i8* noundef %iv, i64 noundef %conv27) #7
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then20, %if.else24, %if.then14
  %.sink64.ph = phi i64 [ 248, %if.then14 ], [ 712, %if.else24 ], [ 712, %if.then20 ]
  %.sink.ph = phi i32 [ 1, %if.then14 ], [ 0, %if.else24 ], [ 0, %if.then20 ]
  %iv_set16 = getelementptr inbounds i8, i8* %call, i64 252
  %17 = bitcast i8* %iv_set16 to i32*
  store i32 1, i32* %17, align 4, !tbaa !19
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end12, %land.lhs.true8
  %.sink64 = phi i64 [ 248, %land.lhs.true8 ], [ 248, %if.end12 ], [ %.sink64.ph, %cleanup.sink.split.sink.split ]
  %.sink = phi i32 [ 1, %land.lhs.true8 ], [ 1, %if.end12 ], [ %.sink.ph, %cleanup.sink.split.sink.split ]
  %key_set = getelementptr inbounds i8, i8* %call, i64 %.sink64
  %18 = bitcast i8* %key_set to i32*
  store i32 %.sink, i32* %18, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_gcm_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %key_set = getelementptr inbounds i8, i8* %call, i64 248
  %0 = bitcast i8* %key_set to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !22
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup175, label %if.end

if.end:                                           ; preds = %entry
  %tls_aad_len = getelementptr inbounds i8, i8* %call, i64 720
  %2 = bitcast i8* %tls_aad_len to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !23
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %call2 = tail call fastcc i32 @aes_gcm_tls_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #9
  br label %cleanup175

if.end3:                                          ; preds = %if.end
  %iv_set = getelementptr inbounds i8, i8* %call, i64 252
  %4 = bitcast i8* %iv_set to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !19
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %cleanup175, label %if.end6

if.end6:                                          ; preds = %if.end3
  %tobool7.not = icmp eq i8* %in, null
  br i1 %tobool7.not, label %if.else151, label %if.then8

if.then8:                                         ; preds = %if.end6
  %cmp9 = icmp eq i8* %out, null
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  %gcm = getelementptr inbounds i8, i8* %call, i64 256
  %6 = bitcast i8* %gcm to %struct.gcm128_context*
  %call11 = tail call i32 @CRYPTO_gcm128_aad(%struct.gcm128_context* noundef nonnull %6, i8* noundef nonnull %in, i64 noundef %len) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end149, label %cleanup175

if.else:                                          ; preds = %if.then8
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %7 = load i32, i32* %encrypt, align 8, !tbaa !24
  %tobool15.not = icmp eq i32 %7, 0
  %ctr71 = getelementptr inbounds i8, i8* %call, i64 736
  %8 = bitcast i8* %ctr71 to void (i8*, i8*, i64, i8*, i8*)**
  %9 = load void (i8*, i8*, i64, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*)** %8, align 8, !tbaa !15
  %tobool72.not = icmp eq void (i8*, i8*, i64, i8*, i8*)* %9, null
  br i1 %tobool15.not, label %if.else70, label %if.then16

if.then16:                                        ; preds = %if.else
  br i1 %tobool72.not, label %if.else56, label %if.then18

if.then18:                                        ; preds = %if.then16
  %cmp19 = icmp ugt i64 %len, 31
  %cmp21 = icmp eq void (i8*, i8*, i64, i8*, i8*)* %9, @aesni_ctr32_encrypt_blocks
  %or.cond = select i1 %cmp19, i1 %cmp21, i1 false
  br i1 %or.cond, label %land.lhs.true22, label %if.end43

land.lhs.true22:                                  ; preds = %if.then18
  %gcm23 = getelementptr inbounds i8, i8* %call, i64 256
  %ghash = getelementptr inbounds i8, i8* %call, i64 616
  %10 = bitcast i8* %ghash to void (i64*, %struct.u128*, i8*, i64)**
  %11 = load void (i64*, %struct.u128*, i8*, i64)*, void (i64*, %struct.u128*, i8*, i64)** %10, align 8, !tbaa !26
  %cmp24 = icmp eq void (i64*, %struct.u128*, i8*, i64)* %11, @gcm_ghash_avx
  br i1 %cmp24, label %if.then25, label %if.end43

if.then25:                                        ; preds = %land.lhs.true22
  %12 = bitcast i8* %gcm23 to %struct.gcm128_context*
  %mres = getelementptr inbounds i8, i8* %call, i64 624
  %13 = bitcast i8* %mres to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !27
  %sub = sub i32 0, %14
  %rem = and i32 %sub, 15
  %conv = zext i32 %rem to i64
  %call28 = tail call i32 @CRYPTO_gcm128_encrypt(%struct.gcm128_context* noundef nonnull %12, i8* noundef nonnull %in, i8* noundef nonnull %out, i64 noundef %conv) #7
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup.thread, label %cleanup175

cleanup.thread:                                   ; preds = %if.then25
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %conv
  %add.ptr32 = getelementptr inbounds i8, i8* %out, i64 %conv
  %sub33 = sub nuw i64 %len, %conv
  %key = getelementptr inbounds i8, i8* %call, i64 640
  %15 = bitcast i8* %key to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !28
  %Xi = getelementptr inbounds i8, i8* %call, i64 320
  %arraydecay37 = bitcast i8* %Xi to i64*
  %call38 = tail call i64 @aesni_gcm_encrypt(i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr32, i64 noundef %sub33, i8* noundef %16, i8* noundef nonnull %gcm23, i64* noundef nonnull %arraydecay37) #7
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 312
  %17 = bitcast i8* %arrayidx to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !11
  %add = add i64 %18, %call38
  store i64 %add, i64* %17, align 8, !tbaa !11
  %add42 = add i64 %call38, %conv
  %.pre = load void (i8*, i8*, i64, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*)** %8, align 8, !tbaa !15
  br label %if.end43

if.end43:                                         ; preds = %cleanup.thread, %land.lhs.true22, %if.then18
  %19 = phi void (i8*, i8*, i64, i8*, i8*)* [ @aesni_ctr32_encrypt_blocks, %land.lhs.true22 ], [ %9, %if.then18 ], [ %.pre, %cleanup.thread ]
  %bulk.1 = phi i64 [ 0, %land.lhs.true22 ], [ 0, %if.then18 ], [ %add42, %cleanup.thread ]
  %gcm44 = getelementptr inbounds i8, i8* %call, i64 256
  %20 = bitcast i8* %gcm44 to %struct.gcm128_context*
  %add.ptr45 = getelementptr inbounds i8, i8* %in, i64 %bulk.1
  %add.ptr46 = getelementptr inbounds i8, i8* %out, i64 %bulk.1
  %sub47 = sub i64 %len, %bulk.1
  %call49 = tail call i32 @CRYPTO_gcm128_encrypt_ctr32(%struct.gcm128_context* noundef nonnull %20, i8* noundef nonnull %add.ptr45, i8* noundef nonnull %add.ptr46, i64 noundef %sub47, void (i8*, i8*, i64, i8*, i8*)* noundef %19) #7
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end149, label %cleanup175

if.else56:                                        ; preds = %if.then16
  %gcm58 = getelementptr inbounds i8, i8* %call, i64 256
  %21 = bitcast i8* %gcm58 to %struct.gcm128_context*
  %call62 = tail call i32 @CRYPTO_gcm128_encrypt(%struct.gcm128_context* noundef nonnull %21, i8* noundef nonnull %in, i8* noundef nonnull %out, i64 noundef %len) #7
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end149, label %cleanup175

if.else70:                                        ; preds = %if.else
  br i1 %tobool72.not, label %if.else134, label %if.then73

if.then73:                                        ; preds = %if.else70
  %cmp75 = icmp ugt i64 %len, 15
  %cmp79 = icmp eq void (i8*, i8*, i64, i8*, i8*)* %9, @aesni_ctr32_encrypt_blocks
  %or.cond283 = select i1 %cmp75, i1 %cmp79, i1 false
  br i1 %or.cond283, label %land.lhs.true81, label %if.end121

land.lhs.true81:                                  ; preds = %if.then73
  %gcm82 = getelementptr inbounds i8, i8* %call, i64 256
  %ghash83 = getelementptr inbounds i8, i8* %call, i64 616
  %22 = bitcast i8* %ghash83 to void (i64*, %struct.u128*, i8*, i64)**
  %23 = load void (i64*, %struct.u128*, i8*, i64)*, void (i64*, %struct.u128*, i8*, i64)** %22, align 8, !tbaa !26
  %cmp84 = icmp eq void (i64*, %struct.u128*, i8*, i64)* %23, @gcm_ghash_avx
  br i1 %cmp84, label %if.then86, label %if.end121

if.then86:                                        ; preds = %land.lhs.true81
  %24 = bitcast i8* %gcm82 to %struct.gcm128_context*
  %mres89 = getelementptr inbounds i8, i8* %call, i64 624
  %25 = bitcast i8* %mres89 to i32*
  %26 = load i32, i32* %25, align 8, !tbaa !27
  %sub90 = sub i32 0, %26
  %rem91 = and i32 %sub90, 15
  %conv92 = zext i32 %rem91 to i64
  %call94 = tail call i32 @CRYPTO_gcm128_decrypt(%struct.gcm128_context* noundef nonnull %24, i8* noundef nonnull %in, i8* noundef nonnull %out, i64 noundef %conv92) #7
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %cleanup118.thread, label %cleanup175

cleanup118.thread:                                ; preds = %if.then86
  %add.ptr98 = getelementptr inbounds i8, i8* %in, i64 %conv92
  %add.ptr99 = getelementptr inbounds i8, i8* %out, i64 %conv92
  %sub100 = sub nuw i64 %len, %conv92
  %key102 = getelementptr inbounds i8, i8* %call, i64 640
  %27 = bitcast i8* %key102 to i8**
  %28 = load i8*, i8** %27, align 8, !tbaa !28
  %Xi108 = getelementptr inbounds i8, i8* %call, i64 320
  %arraydecay110 = bitcast i8* %Xi108 to i64*
  %call111 = tail call i64 @aesni_gcm_decrypt(i8* noundef nonnull %add.ptr98, i8* noundef nonnull %add.ptr99, i64 noundef %sub100, i8* noundef %28, i8* noundef nonnull %gcm82, i64* noundef nonnull %arraydecay110) #7
  %arrayidx115 = getelementptr inbounds i8, i8* %call, i64 312
  %29 = bitcast i8* %arrayidx115 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !11
  %add116 = add i64 %30, %call111
  store i64 %add116, i64* %29, align 8, !tbaa !11
  %add117 = add i64 %call111, %conv92
  %.pre289 = load void (i8*, i8*, i64, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*)** %8, align 8, !tbaa !15
  br label %if.end121

if.end121:                                        ; preds = %cleanup118.thread, %land.lhs.true81, %if.then73
  %31 = phi void (i8*, i8*, i64, i8*, i8*)* [ @aesni_ctr32_encrypt_blocks, %land.lhs.true81 ], [ %9, %if.then73 ], [ %.pre289, %cleanup118.thread ]
  %bulk74.1 = phi i64 [ 0, %land.lhs.true81 ], [ 0, %if.then73 ], [ %add117, %cleanup118.thread ]
  %gcm122 = getelementptr inbounds i8, i8* %call, i64 256
  %32 = bitcast i8* %gcm122 to %struct.gcm128_context*
  %add.ptr123 = getelementptr inbounds i8, i8* %in, i64 %bulk74.1
  %add.ptr124 = getelementptr inbounds i8, i8* %out, i64 %bulk74.1
  %sub125 = sub i64 %len, %bulk74.1
  %call127 = tail call i32 @CRYPTO_gcm128_decrypt_ctr32(%struct.gcm128_context* noundef nonnull %32, i8* noundef nonnull %add.ptr123, i8* noundef nonnull %add.ptr124, i64 noundef %sub125, void (i8*, i8*, i64, i8*, i8*)* noundef %31) #7
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end149, label %cleanup175

if.else134:                                       ; preds = %if.else70
  %gcm136 = getelementptr inbounds i8, i8* %call, i64 256
  %33 = bitcast i8* %gcm136 to %struct.gcm128_context*
  %call140 = tail call i32 @CRYPTO_gcm128_decrypt(%struct.gcm128_context* noundef nonnull %33, i8* noundef nonnull %in, i8* noundef nonnull %out, i64 noundef %len) #7
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end149, label %cleanup175

if.end149:                                        ; preds = %if.else56, %if.end43, %if.else134, %if.end121, %if.then10
  %conv150 = trunc i64 %len to i32
  br label %cleanup175

if.else151:                                       ; preds = %if.end6
  %encrypt152 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %34 = load i32, i32* %encrypt152, align 8, !tbaa !24
  %tobool153.not = icmp eq i32 %34, 0
  br i1 %tobool153.not, label %if.then154, label %if.end169

if.then154:                                       ; preds = %if.else151
  %taglen = getelementptr inbounds i8, i8* %call, i64 708
  %35 = bitcast i8* %taglen to i32*
  %36 = load i32, i32* %35, align 4, !tbaa !29
  %cmp155 = icmp slt i32 %36, 0
  br i1 %cmp155, label %cleanup175, label %if.end158

if.end158:                                        ; preds = %if.then154
  %gcm159 = getelementptr inbounds i8, i8* %call, i64 256
  %37 = bitcast i8* %gcm159 to %struct.gcm128_context*
  %arraydecay160 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 0
  %conv162288 = zext i32 %36 to i64
  %call163 = tail call i32 @CRYPTO_gcm128_finish(%struct.gcm128_context* noundef nonnull %37, i8* noundef nonnull %arraydecay160, i64 noundef %conv162288) #7
  %cmp164.not = icmp eq i32 %call163, 0
  br i1 %cmp164.not, label %if.end167, label %cleanup175

if.end167:                                        ; preds = %if.end158
  store i32 0, i32* %4, align 4, !tbaa !19
  br label %cleanup175

if.end169:                                        ; preds = %if.else151
  %gcm170 = getelementptr inbounds i8, i8* %call, i64 256
  %38 = bitcast i8* %gcm170 to %struct.gcm128_context*
  %arraydecay172 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 0
  tail call void @CRYPTO_gcm128_tag(%struct.gcm128_context* noundef nonnull %38, i8* noundef nonnull %arraydecay172, i64 noundef 16) #7
  %taglen173 = getelementptr inbounds i8, i8* %call, i64 708
  %39 = bitcast i8* %taglen173 to i32*
  store i32 16, i32* %39, align 4, !tbaa !29
  store i32 0, i32* %4, align 4, !tbaa !19
  br label %cleanup175

cleanup175:                                       ; preds = %if.then86, %if.then25, %if.end158, %if.then154, %if.then10, %if.end3, %entry, %if.end43, %if.else56, %if.end121, %if.else134, %if.end169, %if.end167, %if.end149, %if.then1
  %retval.8 = phi i32 [ %call2, %if.then1 ], [ %conv150, %if.end149 ], [ -1, %if.end43 ], [ -1, %if.else56 ], [ -1, %if.end121 ], [ -1, %if.else134 ], [ 0, %if.end169 ], [ 0, %if.end167 ], [ -1, %entry ], [ -1, %if.end3 ], [ -1, %if.then10 ], [ -1, %if.then154 ], [ -1, %if.end158 ], [ -1, %if.then25 ], [ -1, %if.then86 ]
  ret i32 %retval.8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_gcm_cleanup(%struct.evp_cipher_ctx_st* noundef %c) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %c) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %gcm = getelementptr inbounds i8, i8* %call, i64 256
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %gcm, i64 noundef 440) #7
  %iv = getelementptr inbounds i8, i8* %call, i64 696
  %0 = bitcast i8* %iv to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !20
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 5, i64 0
  %cmp2.not = icmp eq i8* %1, %arraydecay
  br i1 %cmp2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2564) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then3 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_gcm_ctrl(%struct.evp_cipher_ctx_st* noundef %c, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %c) #7
  switch i32 %type, label %cleanup237 [
    i32 0, label %sw.bb
    i32 37, label %sw.bb3
    i32 9, label %sw.bb5
    i32 17, label %sw.bb25
    i32 16, label %sw.bb37
    i32 18, label %sw.bb56
    i32 19, label %sw.bb92
    i32 24, label %sw.bb128
    i32 22, label %sw.bb155
    i32 8, label %sw.bb197
  ]

sw.bb:                                            ; preds = %entry
  %key_set = getelementptr inbounds i8, i8* %call, i64 248
  %0 = bitcast i8* %key_set to i32*
  store i32 0, i32* %0, align 8, !tbaa !22
  %iv_set = getelementptr inbounds i8, i8* %call, i64 252
  %1 = bitcast i8* %iv_set to i32*
  store i32 0, i32* %1, align 4, !tbaa !19
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 0
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !30
  %call1 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %2) #7
  %ivlen = getelementptr inbounds i8, i8* %call, i64 704
  %3 = bitcast i8* %ivlen to i32*
  store i32 %call1, i32* %3, align 8, !tbaa !21
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 5, i64 0
  %iv2 = getelementptr inbounds i8, i8* %call, i64 696
  %4 = bitcast i8* %iv2 to i8**
  store i8* %arraydecay, i8** %4, align 8, !tbaa !20
  %taglen = getelementptr inbounds i8, i8* %call, i64 708
  %5 = bitcast i8* %taglen to i32*
  store i32 -1, i32* %5, align 4, !tbaa !29
  %iv_gen = getelementptr inbounds i8, i8* %call, i64 712
  %6 = bitcast i8* %iv_gen to i32*
  store i32 0, i32* %6, align 8, !tbaa !31
  %tls_aad_len = getelementptr inbounds i8, i8* %call, i64 720
  %7 = bitcast i8* %tls_aad_len to i32*
  store i32 -1, i32* %7, align 8, !tbaa !23
  br label %cleanup237

sw.bb3:                                           ; preds = %entry
  %ivlen4 = getelementptr inbounds i8, i8* %call, i64 704
  %8 = bitcast i8* %ivlen4 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !21
  %10 = bitcast i8* %ptr to i32*
  store i32 %9, i32* %10, align 4, !tbaa !4
  br label %cleanup237

sw.bb5:                                           ; preds = %entry
  %cmp = icmp slt i32 %arg, 1
  br i1 %cmp, label %cleanup237, label %if.end

if.end:                                           ; preds = %sw.bb5
  %cmp6 = icmp ugt i32 %arg, 16
  br i1 %cmp6, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %ivlen7 = getelementptr inbounds i8, i8* %call, i64 704
  %11 = bitcast i8* %ivlen7 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !21
  %cmp8 = icmp slt i32 %12, %arg
  br i1 %cmp8, label %if.then9, label %if.end23

if.then9:                                         ; preds = %land.lhs.true
  %iv10 = getelementptr inbounds i8, i8* %call, i64 696
  %13 = bitcast i8* %iv10 to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !20
  %arraydecay12 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 5, i64 0
  %cmp13.not = icmp eq i8* %14, %arraydecay12
  br i1 %cmp13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.then9
  tail call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2592) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then9
  %conv361 = zext i32 %arg to i64
  %call17 = tail call i8* @CRYPTO_malloc(i64 noundef %conv361, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2593) #7
  store i8* %call17, i8** %13, align 8, !tbaa !20
  %cmp19 = icmp eq i8* %call17, null
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end16
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2594, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.aes_gcm_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup237

if.end23:                                         ; preds = %if.end, %if.end16, %land.lhs.true
  %ivlen24 = getelementptr inbounds i8, i8* %call, i64 704
  %15 = bitcast i8* %ivlen24 to i32*
  store i32 %arg, i32* %15, align 8, !tbaa !21
  br label %cleanup237

sw.bb25:                                          ; preds = %entry
  %16 = add i32 %arg, -17
  %17 = icmp ult i32 %16, -16
  br i1 %17, label %cleanup237, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %sw.bb25
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 2
  %18 = load i32, i32* %encrypt, align 8, !tbaa !24
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end32, label %cleanup237

if.end32:                                         ; preds = %lor.lhs.false30
  %arraydecay33 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 6, i64 0
  %conv34362 = zext i32 %arg to i64
  %call35 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay33, i8* noundef %ptr, i64 noundef %conv34362) #7
  %taglen36 = getelementptr inbounds i8, i8* %call, i64 708
  %19 = bitcast i8* %taglen36 to i32*
  store i32 %arg, i32* %19, align 4, !tbaa !29
  br label %cleanup237

sw.bb37:                                          ; preds = %entry
  %20 = add i32 %arg, -17
  %21 = icmp ult i32 %20, -16
  br i1 %21, label %cleanup237, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %sw.bb37
  %encrypt44 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 2
  %22 = load i32, i32* %encrypt44, align 8, !tbaa !24
  %tobool45.not = icmp eq i32 %22, 0
  br i1 %tobool45.not, label %cleanup237, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %taglen47 = getelementptr inbounds i8, i8* %call, i64 708
  %23 = bitcast i8* %taglen47 to i32*
  %24 = load i32, i32* %23, align 4, !tbaa !29
  %cmp48 = icmp slt i32 %24, 0
  br i1 %cmp48, label %cleanup237, label %if.end51

if.end51:                                         ; preds = %lor.lhs.false46
  %arraydecay53 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 6, i64 0
  %conv54363 = zext i32 %arg to i64
  %call55 = tail call i8* @memcpy(i8* noundef %ptr, i8* noundef nonnull %arraydecay53, i64 noundef %conv54363) #7
  br label %cleanup237

sw.bb56:                                          ; preds = %entry
  %cmp57 = icmp eq i32 %arg, -1
  br i1 %cmp57, label %if.then59, label %if.end65

if.then59:                                        ; preds = %sw.bb56
  %iv60 = getelementptr inbounds i8, i8* %call, i64 696
  %25 = bitcast i8* %iv60 to i8**
  %26 = load i8*, i8** %25, align 8, !tbaa !20
  %ivlen61 = getelementptr inbounds i8, i8* %call, i64 704
  %27 = bitcast i8* %ivlen61 to i32*
  %28 = load i32, i32* %27, align 8, !tbaa !21
  %conv62 = sext i32 %28 to i64
  %call63 = tail call i8* @memcpy(i8* noundef %26, i8* noundef %ptr, i64 noundef %conv62) #7
  %iv_gen64 = getelementptr inbounds i8, i8* %call, i64 712
  %29 = bitcast i8* %iv_gen64 to i32*
  store i32 1, i32* %29, align 8, !tbaa !31
  br label %cleanup237

if.end65:                                         ; preds = %sw.bb56
  %cmp66 = icmp slt i32 %arg, 4
  br i1 %cmp66, label %cleanup237, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.end65
  %ivlen69 = getelementptr inbounds i8, i8* %call, i64 704
  %30 = bitcast i8* %ivlen69 to i32*
  %31 = load i32, i32* %30, align 8, !tbaa !21
  %sub = sub nsw i32 %31, %arg
  %cmp70 = icmp slt i32 %sub, 8
  br i1 %cmp70, label %cleanup237, label %if.then75

if.then75:                                        ; preds = %lor.lhs.false68
  %iv76 = getelementptr inbounds i8, i8* %call, i64 696
  %32 = bitcast i8* %iv76 to i8**
  %33 = load i8*, i8** %32, align 8, !tbaa !20
  %conv77364 = zext i32 %arg to i64
  %call78 = tail call i8* @memcpy(i8* noundef %33, i8* noundef %ptr, i64 noundef %conv77364) #7
  %encrypt80 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 2
  %34 = load i32, i32* %encrypt80, align 8, !tbaa !24
  %tobool81.not = icmp eq i32 %34, 0
  br i1 %tobool81.not, label %if.end90, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %if.then75
  %35 = load i8*, i8** %32, align 8, !tbaa !20
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %conv77364
  %36 = load i32, i32* %30, align 8, !tbaa !21
  %sub85 = sub nsw i32 %36, %arg
  %call86 = tail call i32 @RAND_bytes(i8* noundef nonnull %add.ptr, i32 noundef %sub85) #7
  %cmp87 = icmp slt i32 %call86, 1
  br i1 %cmp87, label %cleanup237, label %if.end90

if.end90:                                         ; preds = %land.lhs.true82, %if.then75
  %iv_gen91 = getelementptr inbounds i8, i8* %call, i64 712
  %37 = bitcast i8* %iv_gen91 to i32*
  store i32 1, i32* %37, align 8, !tbaa !31
  br label %cleanup237

sw.bb92:                                          ; preds = %entry
  %iv_gen93 = getelementptr inbounds i8, i8* %call, i64 712
  %38 = bitcast i8* %iv_gen93 to i32*
  %39 = load i32, i32* %38, align 8, !tbaa !31
  %cmp94 = icmp eq i32 %39, 0
  br i1 %cmp94, label %cleanup237, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %sw.bb92
  %key_set97 = getelementptr inbounds i8, i8* %call, i64 248
  %40 = bitcast i8* %key_set97 to i32*
  %41 = load i32, i32* %40, align 8, !tbaa !22
  %cmp98 = icmp eq i32 %41, 0
  br i1 %cmp98, label %cleanup237, label %if.end101

if.end101:                                        ; preds = %lor.lhs.false96
  %gcm = getelementptr inbounds i8, i8* %call, i64 256
  %42 = bitcast i8* %gcm to %struct.gcm128_context*
  %iv102 = getelementptr inbounds i8, i8* %call, i64 696
  %43 = bitcast i8* %iv102 to i8**
  %44 = load i8*, i8** %43, align 8, !tbaa !20
  %ivlen103 = getelementptr inbounds i8, i8* %call, i64 704
  %45 = bitcast i8* %ivlen103 to i32*
  %46 = load i32, i32* %45, align 8, !tbaa !21
  %conv104 = sext i32 %46 to i64
  tail call void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef nonnull %42, i8* noundef %44, i64 noundef %conv104) #7
  %cmp105 = icmp slt i32 %arg, 1
  %.pre = load i32, i32* %45, align 8, !tbaa !21
  %cmp109 = icmp slt i32 %.pre, %arg
  %or.cond = select i1 %cmp105, i1 true, i1 %cmp109
  %arg.addr.0 = select i1 %or.cond, i32 %.pre, i32 %arg
  %47 = load i8*, i8** %43, align 8, !tbaa !20
  %idx.ext116 = sext i32 %.pre to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %47, i64 %idx.ext116
  %idx.ext118 = sext i32 %arg.addr.0 to i64
  %idx.neg = sub nsw i64 0, %idx.ext118
  %add.ptr119 = getelementptr inbounds i8, i8* %add.ptr117, i64 %idx.neg
  %call121 = tail call i8* @memcpy(i8* noundef %ptr, i8* noundef %add.ptr119, i64 noundef %idx.ext118) #7
  %48 = load i8*, i8** %43, align 8, !tbaa !20
  %49 = load i32, i32* %45, align 8, !tbaa !21
  %idx.ext124 = sext i32 %49 to i64
  %add.ptr125 = getelementptr inbounds i8, i8* %48, i64 %idx.ext124
  %add.ptr126 = getelementptr inbounds i8, i8* %add.ptr125, i64 -8
  tail call fastcc void @ctr64_inc(i8* noundef nonnull %add.ptr126) #9
  %iv_set127 = getelementptr inbounds i8, i8* %call, i64 252
  %50 = bitcast i8* %iv_set127 to i32*
  store i32 1, i32* %50, align 4, !tbaa !19
  br label %cleanup237

sw.bb128:                                         ; preds = %entry
  %iv_gen129 = getelementptr inbounds i8, i8* %call, i64 712
  %51 = bitcast i8* %iv_gen129 to i32*
  %52 = load i32, i32* %51, align 8, !tbaa !31
  %cmp130 = icmp eq i32 %52, 0
  br i1 %cmp130, label %cleanup237, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %sw.bb128
  %key_set133 = getelementptr inbounds i8, i8* %call, i64 248
  %53 = bitcast i8* %key_set133 to i32*
  %54 = load i32, i32* %53, align 8, !tbaa !22
  %cmp134 = icmp eq i32 %54, 0
  br i1 %cmp134, label %cleanup237, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %lor.lhs.false132
  %encrypt137 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 2
  %55 = load i32, i32* %encrypt137, align 8, !tbaa !24
  %tobool138.not = icmp eq i32 %55, 0
  br i1 %tobool138.not, label %if.end140, label %cleanup237

if.end140:                                        ; preds = %lor.lhs.false136
  %iv141 = getelementptr inbounds i8, i8* %call, i64 696
  %56 = bitcast i8* %iv141 to i8**
  %57 = load i8*, i8** %56, align 8, !tbaa !20
  %ivlen142 = getelementptr inbounds i8, i8* %call, i64 704
  %58 = bitcast i8* %ivlen142 to i32*
  %59 = load i32, i32* %58, align 8, !tbaa !21
  %idx.ext143 = sext i32 %59 to i64
  %add.ptr144 = getelementptr inbounds i8, i8* %57, i64 %idx.ext143
  %idx.ext145 = sext i32 %arg to i64
  %idx.neg146 = sub nsw i64 0, %idx.ext145
  %add.ptr147 = getelementptr inbounds i8, i8* %add.ptr144, i64 %idx.neg146
  %call149 = tail call i8* @memcpy(i8* noundef %add.ptr147, i8* noundef %ptr, i64 noundef %idx.ext145) #7
  %gcm150 = getelementptr inbounds i8, i8* %call, i64 256
  %60 = bitcast i8* %gcm150 to %struct.gcm128_context*
  %61 = load i8*, i8** %56, align 8, !tbaa !20
  %62 = load i32, i32* %58, align 8, !tbaa !21
  %conv153 = sext i32 %62 to i64
  tail call void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef nonnull %60, i8* noundef %61, i64 noundef %conv153) #7
  %iv_set154 = getelementptr inbounds i8, i8* %call, i64 252
  %63 = bitcast i8* %iv_set154 to i32*
  store i32 1, i32* %63, align 4, !tbaa !19
  br label %cleanup237

sw.bb155:                                         ; preds = %entry
  %cmp156.not = icmp eq i32 %arg, 13
  br i1 %cmp156.not, label %if.end159, label %cleanup237

if.end159:                                        ; preds = %sw.bb155
  %arraydecay161 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 6, i64 0
  %call163 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay161, i8* noundef %ptr, i64 noundef 13) #7
  %tls_aad_len164 = getelementptr inbounds i8, i8* %call, i64 720
  %64 = bitcast i8* %tls_aad_len164 to i32*
  store i32 13, i32* %64, align 8, !tbaa !23
  %tls_enc_records = getelementptr inbounds i8, i8* %call, i64 728
  %65 = bitcast i8* %tls_enc_records to i64*
  store i64 0, i64* %65, align 8, !tbaa !32
  %arrayidx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 6, i64 11
  %66 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv167 = zext i8 %66 to i32
  %shl = shl nuw nsw i32 %conv167, 8
  %arrayidx171 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 6, i64 12
  %67 = load i8, i8* %arrayidx171, align 1, !tbaa !11
  %conv172 = zext i8 %67 to i32
  %or = or i32 %shl, %conv172
  %cmp173 = icmp ult i32 %or, 8
  br i1 %cmp173, label %cleanup237, label %if.end176

if.end176:                                        ; preds = %if.end159
  %sub177 = add nsw i32 %or, -8
  %encrypt178 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 2
  %68 = load i32, i32* %encrypt178, align 8, !tbaa !24
  %tobool179.not = icmp eq i32 %68, 0
  br i1 %tobool179.not, label %if.then180, label %69

if.then180:                                       ; preds = %if.end176
  %cmp181 = icmp ult i32 %sub177, 16
  br i1 %cmp181, label %cleanup237, label %if.end184

if.end184:                                        ; preds = %if.then180
  %sub185 = add nsw i32 %or, -24
  br label %69

69:                                               ; preds = %if.end184, %if.end176
  %len.0 = phi i32 [ %sub177, %if.end176 ], [ %sub185, %if.end184 ]
  %shr = lshr i32 %len.0, 8
  %conv187 = trunc i32 %shr to i8
  store i8 %conv187, i8* %arrayidx, align 1, !tbaa !11
  %conv192 = trunc i32 %len.0 to i8
  store i8 %conv192, i8* %arrayidx171, align 1, !tbaa !11
  br label %cleanup237

sw.bb197:                                         ; preds = %entry
  %70 = bitcast i8* %ptr to %struct.evp_cipher_ctx_st*
  %call198 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %70) #7
  %key = getelementptr inbounds i8, i8* %call, i64 640
  %71 = bitcast i8* %key to i8**
  %72 = load i8*, i8** %71, align 8, !tbaa !28
  %tobool200.not = icmp eq i8* %72, null
  br i1 %tobool200.not, label %if.end211, label %if.then201

if.then201:                                       ; preds = %sw.bb197
  %cmp204.not = icmp eq i8* %72, %call
  br i1 %cmp204.not, label %if.end207, label %cleanup237

if.end207:                                        ; preds = %if.then201
  %key210 = getelementptr inbounds i8, i8* %call198, i64 640
  %73 = bitcast i8* %key210 to i8**
  store i8* %call198, i8** %73, align 8, !tbaa !28
  br label %if.end211

if.end211:                                        ; preds = %if.end207, %sw.bb197
  %iv212 = getelementptr inbounds i8, i8* %call, i64 696
  %74 = bitcast i8* %iv212 to i8**
  %75 = load i8*, i8** %74, align 8, !tbaa !20
  %arraydecay214 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 5, i64 0
  %cmp215 = icmp eq i8* %75, %arraydecay214
  br i1 %cmp215, label %if.then217, label %if.else

if.then217:                                       ; preds = %if.end211
  %iv218 = getelementptr inbounds i8, i8* %ptr, i64 40
  %iv220 = getelementptr inbounds i8, i8* %call198, i64 696
  %76 = bitcast i8* %iv220 to i8**
  store i8* %iv218, i8** %76, align 8, !tbaa !20
  br label %cleanup237

if.else:                                          ; preds = %if.end211
  %ivlen221 = getelementptr inbounds i8, i8* %call, i64 704
  %77 = bitcast i8* %ivlen221 to i32*
  %78 = load i32, i32* %77, align 8, !tbaa !21
  %conv222 = sext i32 %78 to i64
  %call223 = tail call i8* @CRYPTO_malloc(i64 noundef %conv222, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2695) #7
  %iv224 = getelementptr inbounds i8, i8* %call198, i64 696
  %79 = bitcast i8* %iv224 to i8**
  store i8* %call223, i8** %79, align 8, !tbaa !20
  %cmp225 = icmp eq i8* %call223, null
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %if.else
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2696, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.aes_gcm_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup237

if.end228:                                        ; preds = %if.else
  %80 = load i8*, i8** %74, align 8, !tbaa !20
  %81 = load i32, i32* %77, align 8, !tbaa !21
  %conv232 = sext i32 %81 to i64
  %call233 = tail call i8* @memcpy(i8* noundef nonnull %call223, i8* noundef %80, i64 noundef %conv232) #7
  br label %cleanup237

cleanup237:                                       ; preds = %if.then180, %if.end159, %69, %entry, %if.then227, %if.then201, %if.end228, %if.then217, %sw.bb155, %sw.bb128, %lor.lhs.false132, %lor.lhs.false136, %sw.bb92, %lor.lhs.false96, %land.lhs.true82, %if.end65, %lor.lhs.false68, %sw.bb37, %lor.lhs.false43, %lor.lhs.false46, %sw.bb25, %lor.lhs.false30, %sw.bb5, %if.end140, %if.end101, %if.end90, %if.then59, %if.end51, %if.end32, %if.end23, %if.then21, %sw.bb3, %sw.bb
  %retval.2 = phi i32 [ 1, %if.end140 ], [ 1, %if.end101 ], [ 1, %if.then59 ], [ 1, %if.end90 ], [ 1, %if.end51 ], [ 1, %if.end32 ], [ 0, %if.then21 ], [ 1, %if.end23 ], [ 1, %sw.bb3 ], [ 1, %sw.bb ], [ 0, %sw.bb5 ], [ 0, %lor.lhs.false30 ], [ 0, %sw.bb25 ], [ 0, %lor.lhs.false46 ], [ 0, %lor.lhs.false43 ], [ 0, %sw.bb37 ], [ 0, %lor.lhs.false68 ], [ 0, %if.end65 ], [ 0, %land.lhs.true82 ], [ 0, %lor.lhs.false96 ], [ 0, %sw.bb92 ], [ 0, %lor.lhs.false136 ], [ 0, %lor.lhs.false132 ], [ 0, %sw.bb128 ], [ 0, %sw.bb155 ], [ 0, %if.then227 ], [ 0, %if.then201 ], [ 1, %if.end228 ], [ 1, %if.then217 ], [ -1, %entry ], [ 16, %69 ], [ 0, %if.end159 ], [ 0, %if.then180 ]
  ret i32 %retval.2
}

declare void @CRYPTO_gcm128_init(%struct.gcm128_context* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #4

declare void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @aes_gcm_tls_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) unnamed_addr #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %cmp = icmp ne i8* %out, %in
  %cmp1 = icmp ult i64 %len, 24
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup152, label %if.end

if.end:                                           ; preds = %entry
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %0 = load i32, i32* %encrypt, align 8, !tbaa !24
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %tls_enc_records = getelementptr inbounds i8, i8* %call, i64 728
  %1 = bitcast i8* %tls_enc_records to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !32
  %inc = add i64 %2, 1
  store i64 %inc, i64* %1, align 8, !tbaa !32
  %cmp2 = icmp eq i64 %inc, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2807, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.aes_gcm_tls_cipher, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 183, i8* noundef null) #7
  br label %err

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %cond = phi i32 [ 19, %land.lhs.true ], [ 24, %if.end ]
  %call7 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i32 noundef %cond, i32 noundef 8, i8* noundef %out) #7
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %err, label %if.end10

if.end10:                                         ; preds = %if.end4
  %gcm = getelementptr inbounds i8, i8* %call, i64 256
  %3 = bitcast i8* %gcm to %struct.gcm128_context*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 0
  %tls_aad_len = getelementptr inbounds i8, i8* %call, i64 720
  %4 = bitcast i8* %tls_aad_len to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !23
  %conv = sext i32 %5 to i64
  %call11 = tail call i32 @CRYPTO_gcm128_aad(%struct.gcm128_context* noundef nonnull %3, i8* noundef nonnull %arraydecay, i64 noundef %conv) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %err

if.end14:                                         ; preds = %if.end10
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 8
  %sub = add i64 %len, -24
  %6 = load i32, i32* %encrypt, align 8, !tbaa !24
  %tobool17.not = icmp eq i32 %6, 0
  %ctr75 = getelementptr inbounds i8, i8* %call, i64 736
  %7 = bitcast i8* %ctr75 to void (i8*, i8*, i64, i8*, i8*)**
  %8 = load void (i8*, i8*, i64, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*)** %7, align 8, !tbaa !15
  %tobool76.not = icmp eq void (i8*, i8*, i64, i8*, i8*)* %8, null
  br i1 %tobool17.not, label %if.else74, label %if.then18

if.then18:                                        ; preds = %if.end14
  br i1 %tobool76.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then18
  %cmp21 = icmp ugt i64 %sub, 31
  %cmp25 = icmp eq void (i8*, i8*, i64, i8*, i8*)* %8, @aesni_ctr32_encrypt_blocks
  %or.cond242 = select i1 %cmp21, i1 %cmp25, i1 false
  br i1 %or.cond242, label %land.lhs.true27, label %if.end46

land.lhs.true27:                                  ; preds = %if.then20
  %ghash = getelementptr inbounds i8, i8* %call, i64 616
  %9 = bitcast i8* %ghash to void (i64*, %struct.u128*, i8*, i64)**
  %10 = load void (i64*, %struct.u128*, i8*, i64)*, void (i64*, %struct.u128*, i8*, i64)** %9, align 8, !tbaa !26
  %cmp29 = icmp eq void (i64*, %struct.u128*, i8*, i64)* %10, @gcm_ghash_avx
  br i1 %cmp29, label %if.then31, label %if.end46

if.then31:                                        ; preds = %land.lhs.true27
  %call33 = tail call i32 @CRYPTO_gcm128_encrypt(%struct.gcm128_context* noundef nonnull %3, i8* noundef null, i8* noundef null, i64 noundef 0) #7
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %cleanup152

if.end36:                                         ; preds = %if.then31
  %key = getelementptr inbounds i8, i8* %call, i64 640
  %11 = bitcast i8* %key to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !28
  %Xi = getelementptr inbounds i8, i8* %call, i64 320
  %arraydecay41 = bitcast i8* %Xi to i64*
  %call42 = tail call i64 @aesni_gcm_encrypt(i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr, i64 noundef %sub, i8* noundef %12, i8* noundef nonnull %gcm, i64* noundef nonnull %arraydecay41) #7
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 312
  %13 = bitcast i8* %arrayidx to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !11
  %add = add i64 %14, %call42
  store i64 %add, i64* %13, align 8, !tbaa !11
  %.pre = load void (i8*, i8*, i64, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*)** %7, align 8, !tbaa !15
  br label %if.end46

if.end46:                                         ; preds = %if.end36, %land.lhs.true27, %if.then20
  %15 = phi void (i8*, i8*, i64, i8*, i8*)* [ %.pre, %if.end36 ], [ @aesni_ctr32_encrypt_blocks, %land.lhs.true27 ], [ %8, %if.then20 ]
  %bulk.0 = phi i64 [ %call42, %if.end36 ], [ 0, %land.lhs.true27 ], [ 0, %if.then20 ]
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr, i64 %bulk.0
  %sub50 = sub i64 %sub, %bulk.0
  %call52 = tail call i32 @CRYPTO_gcm128_encrypt_ctr32(%struct.gcm128_context* noundef nonnull %3, i8* noundef nonnull %add.ptr48, i8* noundef nonnull %add.ptr48, i64 noundef %sub50, void (i8*, i8*, i64, i8*, i8*)* noundef %15) #7
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end68, label %err

if.else:                                          ; preds = %if.then18
  %call61 = tail call i32 @CRYPTO_gcm128_encrypt(%struct.gcm128_context* noundef nonnull %3, i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr, i64 noundef %sub) #7
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end68, label %err

if.end68:                                         ; preds = %if.end46, %if.else
  %add.ptr69 = getelementptr inbounds i8, i8* %add.ptr, i64 %sub
  tail call void @CRYPTO_gcm128_tag(%struct.gcm128_context* noundef nonnull %3, i8* noundef nonnull %add.ptr69, i64 noundef 16) #7
  %conv73 = trunc i64 %len to i32
  br label %err

if.else74:                                        ; preds = %if.end14
  br i1 %tobool76.not, label %if.else125, label %if.then77

if.then77:                                        ; preds = %if.else74
  %cmp79 = icmp ugt i64 %sub, 15
  %cmp83 = icmp eq void (i8*, i8*, i64, i8*, i8*)* %8, @aesni_ctr32_encrypt_blocks
  %or.cond244 = select i1 %cmp79, i1 %cmp83, i1 false
  br i1 %or.cond244, label %land.lhs.true85, label %if.end112

land.lhs.true85:                                  ; preds = %if.then77
  %ghash87 = getelementptr inbounds i8, i8* %call, i64 616
  %16 = bitcast i8* %ghash87 to void (i64*, %struct.u128*, i8*, i64)**
  %17 = load void (i64*, %struct.u128*, i8*, i64)*, void (i64*, %struct.u128*, i8*, i64)** %16, align 8, !tbaa !26
  %cmp88 = icmp eq void (i64*, %struct.u128*, i8*, i64)* %17, @gcm_ghash_avx
  br i1 %cmp88, label %if.then90, label %if.end112

if.then90:                                        ; preds = %land.lhs.true85
  %call92 = tail call i32 @CRYPTO_gcm128_decrypt(%struct.gcm128_context* noundef nonnull %3, i8* noundef null, i8* noundef null, i64 noundef 0) #7
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %cleanup152

if.end95:                                         ; preds = %if.then90
  %key97 = getelementptr inbounds i8, i8* %call, i64 640
  %18 = bitcast i8* %key97 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !28
  %Xi103 = getelementptr inbounds i8, i8* %call, i64 320
  %arraydecay105 = bitcast i8* %Xi103 to i64*
  %call106 = tail call i64 @aesni_gcm_decrypt(i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr, i64 noundef %sub, i8* noundef %19, i8* noundef nonnull %gcm, i64* noundef nonnull %arraydecay105) #7
  %arrayidx110 = getelementptr inbounds i8, i8* %call, i64 312
  %20 = bitcast i8* %arrayidx110 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !11
  %add111 = add i64 %21, %call106
  store i64 %add111, i64* %20, align 8, !tbaa !11
  %.pre254 = load void (i8*, i8*, i64, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*)** %7, align 8, !tbaa !15
  br label %if.end112

if.end112:                                        ; preds = %if.end95, %land.lhs.true85, %if.then77
  %22 = phi void (i8*, i8*, i64, i8*, i8*)* [ %.pre254, %if.end95 ], [ @aesni_ctr32_encrypt_blocks, %land.lhs.true85 ], [ %8, %if.then77 ]
  %bulk78.0 = phi i64 [ %call106, %if.end95 ], [ 0, %land.lhs.true85 ], [ 0, %if.then77 ]
  %add.ptr114 = getelementptr inbounds i8, i8* %add.ptr, i64 %bulk78.0
  %sub116 = sub i64 %sub, %bulk78.0
  %call118 = tail call i32 @CRYPTO_gcm128_decrypt_ctr32(%struct.gcm128_context* noundef nonnull %3, i8* noundef nonnull %add.ptr114, i8* noundef nonnull %add.ptr114, i64 noundef %sub116, void (i8*, i8*, i64, i8*, i8*)* noundef %22) #7
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end138, label %err

if.else125:                                       ; preds = %if.else74
  %call131 = tail call i32 @CRYPTO_gcm128_decrypt(%struct.gcm128_context* noundef nonnull %3, i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr, i64 noundef %sub) #7
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end138, label %err

if.end138:                                        ; preds = %if.end112, %if.else125
  tail call void @CRYPTO_gcm128_tag(%struct.gcm128_context* noundef nonnull %3, i8* noundef nonnull %arraydecay, i64 noundef 16) #7
  %add.ptr144 = getelementptr inbounds i8, i8* %add.ptr, i64 %sub
  %call145 = tail call i32 @CRYPTO_memcmp(i8* noundef nonnull %arraydecay, i8* noundef nonnull %add.ptr144, i64 noundef 16) #7
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %if.then147

if.then147:                                       ; preds = %if.end138
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %add.ptr, i64 noundef %sub) #7
  br label %err

if.end148:                                        ; preds = %if.end138
  %conv149 = trunc i64 %sub to i32
  br label %err

err:                                              ; preds = %if.end112, %if.end46, %if.else125, %if.else, %if.end68, %if.end148, %if.end10, %if.end4, %if.then147, %if.then3
  %rv.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.end4 ], [ -1, %if.end10 ], [ %conv73, %if.end68 ], [ -1, %if.else ], [ -1, %if.then147 ], [ %conv149, %if.end148 ], [ -1, %if.else125 ], [ -1, %if.end46 ], [ -1, %if.end112 ]
  %iv_set = getelementptr inbounds i8, i8* %call, i64 252
  %23 = bitcast i8* %iv_set to i32*
  store i32 0, i32* %23, align 4, !tbaa !19
  %tls_aad_len151 = getelementptr inbounds i8, i8* %call, i64 720
  %24 = bitcast i8* %tls_aad_len151 to i32*
  store i32 -1, i32* %24, align 8, !tbaa !23
  br label %cleanup152

cleanup152:                                       ; preds = %if.then90, %if.then31, %entry, %err
  %retval.2 = phi i32 [ %rv.0, %err ], [ -1, %entry ], [ -1, %if.then31 ], [ -1, %if.then90 ]
  ret i32 %retval.2
}

declare i32 @CRYPTO_gcm128_aad(%struct.gcm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @gcm_ghash_avx(i64* noundef, %struct.u128* noundef, i8* noundef, i64 noundef) #4

declare i32 @CRYPTO_gcm128_encrypt(%struct.gcm128_context* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i64 @aesni_gcm_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i64* noundef) local_unnamed_addr #4

declare i32 @CRYPTO_gcm128_encrypt_ctr32(%struct.gcm128_context* noundef, i8* noundef, i8* noundef, i64 noundef, void (i8*, i8*, i64, i8*, i8*)* noundef) local_unnamed_addr #4

declare i32 @CRYPTO_gcm128_decrypt(%struct.gcm128_context* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i64 @aesni_gcm_decrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i64* noundef) local_unnamed_addr #4

declare i32 @CRYPTO_gcm128_decrypt_ctr32(%struct.gcm128_context* noundef, i8* noundef, i8* noundef, i64 noundef, void (i8*, i8*, i64, i8*, i8*)* noundef) local_unnamed_addr #4

declare i32 @CRYPTO_gcm128_finish(%struct.gcm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @CRYPTO_gcm128_tag(%struct.gcm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @ctr64_inc(i8* nocapture noundef %counter) unnamed_addr #6 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %counter, i64 7
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %inc = add i8 %0, 1
  store i8 %inc, i8* %arrayidx, align 1, !tbaa !11
  %tobool.not.not = icmp eq i8 %inc, 0
  br i1 %tobool.not.not, label %do.body.1, label %cleanup, !llvm.loop !33

do.body.1:                                        ; preds = %entry
  %arrayidx.1 = getelementptr inbounds i8, i8* %counter, i64 6
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !11
  %inc.1 = add i8 %1, 1
  store i8 %inc.1, i8* %arrayidx.1, align 1, !tbaa !11
  %tobool.not.1.not = icmp eq i8 %inc.1, 0
  br i1 %tobool.not.1.not, label %do.body.2, label %cleanup, !llvm.loop !33

do.body.2:                                        ; preds = %do.body.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %counter, i64 5
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !11
  %inc.2 = add i8 %2, 1
  store i8 %inc.2, i8* %arrayidx.2, align 1, !tbaa !11
  %tobool.not.2.not = icmp eq i8 %inc.2, 0
  br i1 %tobool.not.2.not, label %do.body.3, label %cleanup, !llvm.loop !33

do.body.3:                                        ; preds = %do.body.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %counter, i64 4
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !11
  %inc.3 = add i8 %3, 1
  store i8 %inc.3, i8* %arrayidx.3, align 1, !tbaa !11
  %tobool.not.3.not = icmp eq i8 %inc.3, 0
  br i1 %tobool.not.3.not, label %do.body.4, label %cleanup, !llvm.loop !33

do.body.4:                                        ; preds = %do.body.3
  %arrayidx.4 = getelementptr inbounds i8, i8* %counter, i64 3
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !11
  %inc.4 = add i8 %4, 1
  store i8 %inc.4, i8* %arrayidx.4, align 1, !tbaa !11
  %tobool.not.4.not = icmp eq i8 %inc.4, 0
  br i1 %tobool.not.4.not, label %do.body.5, label %cleanup, !llvm.loop !33

do.body.5:                                        ; preds = %do.body.4
  %arrayidx.5 = getelementptr inbounds i8, i8* %counter, i64 2
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !11
  %inc.5 = add i8 %5, 1
  store i8 %inc.5, i8* %arrayidx.5, align 1, !tbaa !11
  %tobool.not.5.not = icmp eq i8 %inc.5, 0
  br i1 %tobool.not.5.not, label %do.body.6, label %cleanup, !llvm.loop !33

do.body.6:                                        ; preds = %do.body.5
  %arrayidx.6 = getelementptr inbounds i8, i8* %counter, i64 1
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !11
  %inc.6 = add i8 %6, 1
  store i8 %inc.6, i8* %arrayidx.6, align 1, !tbaa !11
  %tobool.not.6.not = icmp eq i8 %inc.6, 0
  br i1 %tobool.not.6.not, label %do.body.7, label %cleanup, !llvm.loop !33

do.body.7:                                        ; preds = %do.body.6
  %7 = load i8, i8* %counter, align 1, !tbaa !11
  %inc.7 = add i8 %7, 1
  store i8 %inc.7, i8* %counter, align 1, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %do.body.7, %do.body.6, %do.body.5, %do.body.4, %do.body.3, %do.body.2, %do.body.1, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_gcm_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool = icmp ne i8* %iv, null
  %tobool1 = icmp ne i8* %key, null
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool1, label %do.body, label %if.else41

do.body:                                          ; preds = %if.end
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 512
  %tobool4.not = icmp eq i32 %and, 0
  %key_len23 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 9
  %1 = load i32, i32* %key_len23, align 8, !tbaa !34
  %mul24 = shl nsw i32 %1, 3
  %ks26 = bitcast i8* %call to %struct.aes_key_st*
  %call27 = tail call i32 @AES_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul24, %struct.aes_key_st* noundef %ks26) #7
  %gcm28 = getelementptr inbounds i8, i8* %call, i64 256
  %2 = bitcast i8* %gcm28 to %struct.gcm128_context*
  tail call void @CRYPTO_gcm128_init(%struct.gcm128_context* noundef nonnull %2, i8* noundef %call, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*)) #7
  %ctr30 = getelementptr inbounds i8, i8* %call, i64 736
  %3 = bitcast i8* %ctr30 to void (i8*, i8*, i64, i8*, i8*)**
  %. = select i1 %tobool4.not, void (i8*, i8*, i64, i8*, i8*)* null, void (i8*, i8*, i64, i8*, i8*)* bitcast (void (i8*, i8*, i64, %struct.aes_key_st*, i8*)* @ossl_bsaes_ctr32_encrypt_blocks to void (i8*, i8*, i64, i8*, i8*)*)
  store void (i8*, i8*, i64, i8*, i8*)* %., void (i8*, i8*, i64, i8*, i8*)** %3, align 8, !tbaa !15
  %cmp = icmp eq i8* %iv, null
  br i1 %cmp, label %land.lhs.true31, label %if.then37

land.lhs.true31:                                  ; preds = %do.body
  %iv_set = getelementptr inbounds i8, i8* %call, i64 252
  %4 = bitcast i8* %iv_set to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !19
  %tobool32.not = icmp eq i32 %5, 0
  br i1 %tobool32.not, label %cleanup.sink.split, label %if.end35

if.end35:                                         ; preds = %land.lhs.true31
  %iv34 = getelementptr inbounds i8, i8* %call, i64 696
  %6 = bitcast i8* %iv34 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !20
  %tobool36.not = icmp eq i8* %7, null
  br i1 %tobool36.not, label %cleanup.sink.split, label %if.then37

if.then37:                                        ; preds = %do.body, %if.end35
  %iv.addr.098 = phi i8* [ %7, %if.end35 ], [ %iv, %do.body ]
  %gcm38 = getelementptr inbounds i8, i8* %call, i64 256
  %8 = bitcast i8* %gcm38 to %struct.gcm128_context*
  %ivlen = getelementptr inbounds i8, i8* %call, i64 704
  %9 = bitcast i8* %ivlen to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !21
  %conv = sext i32 %10 to i64
  tail call void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef nonnull %8, i8* noundef nonnull %iv.addr.098, i64 noundef %conv) #7
  br label %cleanup.sink.split.sink.split

if.else41:                                        ; preds = %if.end
  %key_set42 = getelementptr inbounds i8, i8* %call, i64 248
  %11 = bitcast i8* %key_set42 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !22
  %tobool43.not = icmp eq i32 %12, 0
  br i1 %tobool43.not, label %if.else48, label %if.then44

if.then44:                                        ; preds = %if.else41
  %gcm45 = getelementptr inbounds i8, i8* %call, i64 256
  %13 = bitcast i8* %gcm45 to %struct.gcm128_context*
  %ivlen46 = getelementptr inbounds i8, i8* %call, i64 704
  %14 = bitcast i8* %ivlen46 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !21
  %conv47 = sext i32 %15 to i64
  tail call void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef nonnull %13, i8* noundef %iv, i64 noundef %conv47) #7
  br label %cleanup.sink.split.sink.split

if.else48:                                        ; preds = %if.else41
  %iv49 = getelementptr inbounds i8, i8* %call, i64 696
  %16 = bitcast i8* %iv49 to i8**
  %17 = load i8*, i8** %16, align 8, !tbaa !20
  %ivlen50 = getelementptr inbounds i8, i8* %call, i64 704
  %18 = bitcast i8* %ivlen50 to i32*
  %19 = load i32, i32* %18, align 8, !tbaa !21
  %conv51 = sext i32 %19 to i64
  %call52 = tail call i8* @memcpy(i8* noundef %17, i8* noundef %iv, i64 noundef %conv51) #7
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then44, %if.else48, %if.then37
  %.sink101.ph = phi i64 [ 248, %if.then37 ], [ 712, %if.else48 ], [ 712, %if.then44 ]
  %.sink99.ph = phi i32 [ 1, %if.then37 ], [ 0, %if.else48 ], [ 0, %if.then44 ]
  %iv_set39 = getelementptr inbounds i8, i8* %call, i64 252
  %20 = bitcast i8* %iv_set39 to i32*
  store i32 1, i32* %20, align 4, !tbaa !19
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end35, %land.lhs.true31
  %.sink101 = phi i64 [ 248, %land.lhs.true31 ], [ 248, %if.end35 ], [ %.sink101.ph, %cleanup.sink.split.sink.split ]
  %.sink99 = phi i32 [ 1, %land.lhs.true31 ], [ 1, %if.end35 ], [ %.sink99.ph, %cleanup.sink.split.sink.split ]
  %key_set = getelementptr inbounds i8, i8* %call, i64 %.sink101
  %21 = bitcast i8* %key_set to i32*
  store i32 %.sink99, i32* %21, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aesni_xts_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool = icmp ne i8* %iv, null
  %tobool1 = icmp ne i8* %key, null
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup37

if.end:                                           ; preds = %entry
  br i1 %tobool1, label %if.then3, label %if.end29

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %div = sdiv i32 %call4, 2
  %mul = shl nsw i32 %div, 3
  %tobool5.not = icmp eq i32 %enc, 0
  br i1 %tobool5.not, label %if.else, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.then3
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, i8* %key, i64 %idx.ext
  %call7 = tail call i32 @CRYPTO_memcmp(i8* noundef nonnull %key, i8* noundef nonnull %add.ptr, i64 noundef %idx.ext) #7
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then9, label %if.then12

if.then9:                                         ; preds = %land.lhs.true6
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.aesni_xts_init_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 192, i8* noundef null) #7
  br label %cleanup37

if.then12:                                        ; preds = %land.lhs.true6
  %ks = bitcast i8* %call to %struct.aes_key_st*
  %call13 = tail call i32 @aesni_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul, %struct.aes_key_st* noundef %ks) #7
  %block1 = getelementptr inbounds i8, i8* %call, i64 512
  %0 = bitcast i8* %block1 to void (i8*, i8*, i8*)**
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @aesni_encrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %0, align 8, !tbaa !35
  %stream = getelementptr inbounds i8, i8* %call, i64 528
  %1 = bitcast i8* %stream to void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)**
  store void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)* @aesni_xts_encrypt, void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)** %1, align 8, !tbaa !38
  br label %if.end20

if.else:                                          ; preds = %if.then3
  %ks15 = bitcast i8* %call to %struct.aes_key_st*
  %call16 = tail call i32 @aesni_set_decrypt_key(i8* noundef nonnull %key, i32 noundef %mul, %struct.aes_key_st* noundef %ks15) #7
  %block118 = getelementptr inbounds i8, i8* %call, i64 512
  %2 = bitcast i8* %block118 to void (i8*, i8*, i8*)**
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @aesni_decrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %2, align 8, !tbaa !35
  %stream19 = getelementptr inbounds i8, i8* %call, i64 528
  %3 = bitcast i8* %stream19 to void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)**
  store void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)* @aesni_xts_decrypt, void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)** %3, align 8, !tbaa !38
  %.pre = sext i32 %div to i64
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then12
  %idx.ext21.pre-phi = phi i64 [ %.pre, %if.else ], [ %idx.ext, %if.then12 ]
  %add.ptr22 = getelementptr inbounds i8, i8* %key, i64 %idx.ext21.pre-phi
  %ks2 = getelementptr inbounds i8, i8* %call, i64 248
  %ks23 = bitcast i8* %ks2 to %struct.aes_key_st*
  %call24 = tail call i32 @aesni_set_encrypt_key(i8* noundef nonnull %add.ptr22, i32 noundef %mul, %struct.aes_key_st* noundef nonnull %ks23) #7
  %xts25 = getelementptr inbounds i8, i8* %call, i64 496
  %block2 = getelementptr inbounds i8, i8* %call, i64 520
  %4 = bitcast i8* %block2 to void (i8*, i8*, i8*)**
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @aesni_encrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %4, align 8, !tbaa !39
  %key1 = bitcast i8* %xts25 to i8**
  store i8* %call, i8** %key1, align 8, !tbaa !40
  br label %if.end29

if.end29:                                         ; preds = %if.end20, %if.end
  br i1 %tobool, label %if.then31, label %cleanup37

if.then31:                                        ; preds = %if.end29
  %ks232 = getelementptr inbounds i8, i8* %call, i64 248
  %key2 = getelementptr inbounds i8, i8* %call, i64 504
  %5 = bitcast i8* %key2 to i8**
  store i8* %ks232, i8** %5, align 8, !tbaa !41
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call35 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %iv, i64 noundef 16) #7
  br label %cleanup37

cleanup37:                                        ; preds = %if.end29, %if.then31, %if.then9, %entry
  %retval.1 = phi i32 [ 0, %if.then9 ], [ 1, %entry ], [ 1, %if.then31 ], [ 1, %if.end29 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_xts_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %xts = getelementptr inbounds i8, i8* %call, i64 496
  %0 = bitcast i8* %xts to %struct.xts128_context*
  %key1 = bitcast i8* %xts to i8**
  %1 = load i8*, i8** %key1, align 8, !tbaa !40
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %key2 = getelementptr inbounds i8, i8* %call, i64 504
  %2 = bitcast i8* %key2 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !41
  %cmp2 = icmp eq i8* %3, null
  %cmp4 = icmp eq i8* %out, null
  %or.cond = or i1 %cmp4, %cmp2
  %cmp6 = icmp eq i8* %in, null
  %or.cond27 = or i1 %cmp6, %or.cond
  %cmp8 = icmp ult i64 %len, 16
  %or.cond28 = or i1 %cmp8, %or.cond27
  br i1 %or.cond28, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp9 = icmp ugt i64 %len, 16777216
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3257, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.aes_xts_cipher, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 191, i8* noundef null) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %stream = getelementptr inbounds i8, i8* %call, i64 528
  %4 = bitcast i8* %stream to void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)**
  %5 = load void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)*, void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)** %4, align 8, !tbaa !38
  %tobool.not = icmp eq void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)* %5, null
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end11
  %6 = bitcast i8* %1 to %struct.aes_key_st*
  %7 = bitcast i8* %3 to %struct.aes_key_st*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  tail call void %5(i8* noundef nonnull %in, i8* noundef nonnull %out, i64 noundef %len, %struct.aes_key_st* noundef nonnull %6, %struct.aes_key_st* noundef %7, i8* noundef nonnull %arraydecay) #7
  br label %if.end26

if.else:                                          ; preds = %if.end11
  %arraydecay20 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call21 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %call22 = tail call i32 @CRYPTO_xts128_encrypt(%struct.xts128_context* noundef nonnull %0, i8* noundef nonnull %arraydecay20, i8* noundef nonnull %in, i8* noundef nonnull %out, i64 noundef %len, i32 noundef %call21) #7
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end26, label %cleanup

if.end26:                                         ; preds = %if.else, %if.then12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry, %lor.lhs.false, %if.end26, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 1, %if.end26 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_xts_ctrl(%struct.evp_cipher_ctx_st* noundef %c, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %c) #7
  switch i32 %type, label %cleanup32 [
    i32 8, label %if.then
    i32 0, label %if.end27
  ]

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %ptr to %struct.evp_cipher_ctx_st*
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %0) #7
  %xts = getelementptr inbounds i8, i8* %call, i64 496
  %key1 = bitcast i8* %xts to i8**
  %1 = load i8*, i8** %key1, align 8, !tbaa !40
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %if.then
  %cmp5.not = icmp eq i8* %1, %call
  br i1 %cmp5.not, label %if.end, label %cleanup32

if.end:                                           ; preds = %if.then2
  %xts8 = getelementptr inbounds i8, i8* %call1, i64 496
  %key19 = bitcast i8* %xts8 to i8**
  store i8* %call1, i8** %key19, align 8, !tbaa !40
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %key2 = getelementptr inbounds i8, i8* %call, i64 504
  %2 = bitcast i8* %key2 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !41
  %tobool12.not = icmp eq i8* %3, null
  br i1 %tobool12.not, label %cleanup32, label %if.then13

if.then13:                                        ; preds = %if.end10
  %ks2 = getelementptr inbounds i8, i8* %call, i64 248
  %cmp16.not = icmp eq i8* %3, %ks2
  br i1 %cmp16.not, label %if.end18, label %cleanup32

if.end18:                                         ; preds = %if.then13
  %ks219 = getelementptr inbounds i8, i8* %call1, i64 248
  br label %cleanup32.sink.split

if.end27:                                         ; preds = %entry
  %xts28 = getelementptr inbounds i8, i8* %call, i64 496
  %key129 = bitcast i8* %xts28 to i8**
  store i8* null, i8** %key129, align 8, !tbaa !40
  br label %cleanup32.sink.split

cleanup32.sink.split:                             ; preds = %if.end27, %if.end18
  %call1.sink = phi i8* [ %call1, %if.end18 ], [ %call, %if.end27 ]
  %ks219.sink = phi i8* [ %ks219, %if.end18 ], [ null, %if.end27 ]
  %key221 = getelementptr inbounds i8, i8* %call1.sink, i64 504
  %4 = bitcast i8* %key221 to i8**
  store i8* %ks219.sink, i8** %4, align 8, !tbaa !41
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup32.sink.split, %entry, %if.then2, %if.then13, %if.end10
  %retval.1 = phi i32 [ 0, %if.then2 ], [ 0, %if.then13 ], [ 1, %if.end10 ], [ -1, %entry ], [ 1, %cleanup32.sink.split ]
  ret i32 %retval.1
}

declare void @aesni_xts_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, %struct.aes_key_st* noundef, i8* noundef) #4

declare void @aesni_xts_decrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, %struct.aes_key_st* noundef, i8* noundef) #4

declare i32 @CRYPTO_xts128_encrypt(%struct.xts128_context* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_xts_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool = icmp ne i8* %iv, null
  %tobool1 = icmp ne i8* %key, null
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup71

if.end:                                           ; preds = %entry
  br i1 %tobool1, label %do.body, label %if.end63

do.body:                                          ; preds = %if.end
  %call4 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %div = sdiv i32 %call4, 2
  %mul = shl nsw i32 %div, 3
  %tobool5.not = icmp eq i32 %enc, 0
  br i1 %tobool5.not, label %if.end10, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %do.body
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, i8* %key, i64 %idx.ext
  %call7 = tail call i32 @CRYPTO_memcmp(i8* noundef nonnull %key, i8* noundef nonnull %add.ptr, i64 noundef %idx.ext) #7
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %cleanup.thread, label %if.end10

cleanup.thread:                                   ; preds = %land.lhs.true6
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3158, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.aes_xts_init_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 192, i8* noundef null) #7
  br label %cleanup71

if.end10:                                         ; preds = %land.lhs.true6, %do.body
  %stream = getelementptr inbounds i8, i8* %call, i64 528
  %0 = bitcast i8* %stream to void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)**
  store void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)* null, void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)** %0, align 8, !tbaa !38
  %1 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %1, 512
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end37, label %if.then12

if.then12:                                        ; preds = %if.end10
  %cond = select i1 %tobool5.not, void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)* @ossl_bsaes_xts_decrypt, void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)* @ossl_bsaes_xts_encrypt
  store void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)* %cond, void (i8*, i8*, i64, %struct.aes_key_st*, %struct.aes_key_st*, i8*)** %0, align 8, !tbaa !38
  br label %if.end37

if.end37:                                         ; preds = %if.end10, %if.then12
  %ks47 = bitcast i8* %call to %struct.aes_key_st*
  br i1 %tobool5.not, label %if.else45, label %if.then39

if.then39:                                        ; preds = %if.end37
  %call42 = tail call i32 @AES_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul, %struct.aes_key_st* noundef %ks47) #7
  br label %cleanup

if.else45:                                        ; preds = %if.end37
  %call48 = tail call i32 @AES_set_decrypt_key(i8* noundef nonnull %key, i32 noundef %mul, %struct.aes_key_st* noundef %ks47) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.else45
  %.sink = phi void (i8*, i8*, i8*)* [ bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*), %if.then39 ], [ bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_decrypt to void (i8*, i8*, i8*)*), %if.else45 ]
  %block144 = getelementptr inbounds i8, i8* %call, i64 512
  %2 = bitcast i8* %block144 to void (i8*, i8*, i8*)**
  store void (i8*, i8*, i8*)* %.sink, void (i8*, i8*, i8*)** %2, align 8, !tbaa !35
  %idx.ext52 = sext i32 %div to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %key, i64 %idx.ext52
  %ks254 = getelementptr inbounds i8, i8* %call, i64 248
  %ks55 = bitcast i8* %ks254 to %struct.aes_key_st*
  %call56 = tail call i32 @AES_set_encrypt_key(i8* noundef nonnull %add.ptr53, i32 noundef %mul, %struct.aes_key_st* noundef nonnull %ks55) #7
  %xts57 = getelementptr inbounds i8, i8* %call, i64 496
  %block258 = getelementptr inbounds i8, i8* %call, i64 520
  %3 = bitcast i8* %block258 to void (i8*, i8*, i8*)**
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %3, align 8, !tbaa !39
  %key161 = bitcast i8* %xts57 to i8**
  store i8* %call, i8** %key161, align 8, !tbaa !40
  br i1 %tobool, label %if.then65, label %cleanup71

if.end63:                                         ; preds = %if.end
  br i1 %tobool, label %if.then65, label %cleanup71

if.then65:                                        ; preds = %cleanup, %if.end63
  %ks266 = getelementptr inbounds i8, i8* %call, i64 248
  %key2 = getelementptr inbounds i8, i8* %call, i64 504
  %4 = bitcast i8* %key2 to i8**
  store i8* %ks266, i8** %4, align 8, !tbaa !41
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call69 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %iv, i64 noundef 16) #7
  br label %cleanup71

cleanup71:                                        ; preds = %cleanup.thread, %cleanup, %if.end63, %if.then65, %entry
  %retval.1 = phi i32 [ 1, %cleanup ], [ 1, %entry ], [ 1, %if.then65 ], [ 1, %if.end63 ], [ 0, %cleanup.thread ]
  ret i32 %retval.1
}

declare void @ossl_bsaes_xts_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, %struct.aes_key_st* noundef, i8* noundef) #4

declare void @ossl_bsaes_xts_decrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, %struct.aes_key_st* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @aesni_ccm_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool = icmp ne i8* %iv, null
  %tobool1 = icmp ne i8* %key, null
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool1, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %mul = shl nsw i32 %call4, 3
  %ks5 = bitcast i8* %call to %struct.aes_key_st*
  %call6 = tail call i32 @aesni_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul, %struct.aes_key_st* noundef %ks5) #7
  %ccm = getelementptr inbounds i8, i8* %call, i64 280
  %0 = bitcast i8* %ccm to %struct.ccm128_context*
  %M = getelementptr inbounds i8, i8* %call, i64 268
  %1 = bitcast i8* %M to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !42
  %L = getelementptr inbounds i8, i8* %call, i64 264
  %3 = bitcast i8* %L to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !46
  tail call void @CRYPTO_ccm128_init(%struct.ccm128_context* noundef nonnull %0, i32 noundef %2, i32 noundef %4, i8* noundef %call, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @aesni_encrypt to void (i8*, i8*, i8*)*)) #7
  %tobool8.not = icmp eq i32 %enc, 0
  %cond = select i1 %tobool8.not, void (i8*, i8*, i64, i8*, i8*, i8*)* @aesni_ccm64_decrypt_blocks, void (i8*, i8*, i64, i8*, i8*, i8*)* @aesni_ccm64_encrypt_blocks
  %str = getelementptr inbounds i8, i8* %call, i64 336
  %5 = bitcast i8* %str to void (i8*, i8*, i64, i8*, i8*, i8*)**
  store void (i8*, i8*, i64, i8*, i8*, i8*)* %cond, void (i8*, i8*, i64, i8*, i8*, i8*)** %5, align 8, !tbaa !47
  %key_set = getelementptr inbounds i8, i8* %call, i64 248
  %6 = bitcast i8* %key_set to i32*
  store i32 1, i32* %6, align 8, !tbaa !48
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end
  br i1 %tobool, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end9
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %L13 = getelementptr inbounds i8, i8* %call, i64 264
  %7 = bitcast i8* %L13 to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !46
  %sub = sub nsw i32 15, %8
  %conv = sext i32 %sub to i64
  %call14 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %iv, i64 noundef %conv) #7
  %iv_set = getelementptr inbounds i8, i8* %call, i64 252
  %9 = bitcast i8* %iv_set to i32*
  store i32 1, i32* %9, align 4, !tbaa !49
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then11, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_ccm_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %tag = alloca [16 x i8], align 16
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %ccm1 = getelementptr inbounds i8, i8* %call, i64 280
  %0 = bitcast i8* %ccm1 to %struct.ccm128_context*
  %key_set = getelementptr inbounds i8, i8* %call, i64 248
  %1 = bitcast i8* %key_set to i32*
  %2 = load i32, i32* %1, align 8, !tbaa !48
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tls_aad_len = getelementptr inbounds i8, i8* %call, i64 272
  %3 = bitcast i8* %tls_aad_len to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !50
  %cmp = icmp sgt i32 %4, -1
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @aes_ccm_tls_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i8* %in, null
  %cmp6 = icmp ne i8* %out, null
  %or.cond = and i1 %cmp6, %cmp5
  br i1 %or.cond, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %iv_set = getelementptr inbounds i8, i8* %call, i64 252
  %5 = bitcast i8* %iv_set to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !49
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end8
  br i1 %cmp6, label %if.end29, label %if.then13

if.then13:                                        ; preds = %if.end11
  br i1 %cmp5, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.then13
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %L = getelementptr inbounds i8, i8* %call, i64 264
  %7 = bitcast i8* %L to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !46
  %sub = sub nsw i32 15, %8
  %conv = sext i32 %sub to i64
  %call16 = tail call i32 @CRYPTO_ccm128_setiv(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %arraydecay, i64 noundef %conv, i64 noundef %len) #7
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.then15
  %len_set = getelementptr inbounds i8, i8* %call, i64 260
  %9 = bitcast i8* %len_set to i32*
  store i32 1, i32* %9, align 4, !tbaa !51
  %conv20 = trunc i64 %len to i32
  br label %cleanup

if.end21:                                         ; preds = %if.then13
  %len_set22 = getelementptr inbounds i8, i8* %call, i64 260
  %10 = bitcast i8* %len_set22 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !51
  %tobool23 = icmp eq i32 %11, 0
  %tobool25 = icmp ne i64 %len, 0
  %or.cond97 = and i1 %tobool25, %tobool23
  br i1 %or.cond97, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end21
  tail call void @CRYPTO_ccm128_aad(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %in, i64 noundef %len) #7
  %conv28 = trunc i64 %len to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end11
  %call30 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %if.end35

land.lhs.true32:                                  ; preds = %if.end29
  %tag_set = getelementptr inbounds i8, i8* %call, i64 256
  %12 = bitcast i8* %tag_set to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !52
  %tobool33.not = icmp eq i32 %13, 0
  br i1 %tobool33.not, label %cleanup, label %if.end35

if.end35:                                         ; preds = %land.lhs.true32, %if.end29
  %len_set36 = getelementptr inbounds i8, i8* %call, i64 260
  %14 = bitcast i8* %len_set36 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !51
  %tobool37.not = icmp eq i32 %15, 0
  br i1 %tobool37.not, label %if.then38, label %if.end49

if.then38:                                        ; preds = %if.end35
  %arraydecay40 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %L41 = getelementptr inbounds i8, i8* %call, i64 264
  %16 = bitcast i8* %L41 to i32*
  %17 = load i32, i32* %16, align 8, !tbaa !46
  %sub42 = sub nsw i32 15, %17
  %conv43 = sext i32 %sub42 to i64
  %call44 = tail call i32 @CRYPTO_ccm128_setiv(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %arraydecay40, i64 noundef %conv43, i64 noundef %len) #7
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %cleanup

if.end47:                                         ; preds = %if.then38
  store i32 1, i32* %14, align 4, !tbaa !51
  br label %if.end49

if.end49:                                         ; preds = %if.end47, %if.end35
  %call50 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool51.not = icmp eq i32 %call50, 0
  %str63 = getelementptr inbounds i8, i8* %call, i64 336
  %18 = bitcast i8* %str63 to void (i8*, i8*, i64, i8*, i8*, i8*)**
  %19 = load void (i8*, i8*, i64, i8*, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*, i8*)** %18, align 8, !tbaa !47
  %tobool64.not = icmp eq void (i8*, i8*, i64, i8*, i8*, i8*)* %19, null
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end49
  br i1 %tobool64.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then52
  %call55 = tail call i32 @CRYPTO_ccm128_encrypt_ccm64(%struct.ccm128_context* noundef nonnull %0, i8* noundef %in, i8* noundef nonnull %out, i64 noundef %len, void (i8*, i8*, i64, i8*, i8*, i8*)* noundef nonnull %19) #7
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end60, label %cleanup

cond.false:                                       ; preds = %if.then52
  %call57 = tail call i32 @CRYPTO_ccm128_encrypt(%struct.ccm128_context* noundef nonnull %0, i8* noundef %in, i8* noundef nonnull %out, i64 noundef %len) #7
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %cleanup

if.end60:                                         ; preds = %cond.false, %cond.true
  %tag_set61 = getelementptr inbounds i8, i8* %call, i64 256
  %20 = bitcast i8* %tag_set61 to i32*
  store i32 1, i32* %20, align 8, !tbaa !52
  %conv62 = trunc i64 %len to i32
  br label %cleanup

if.else:                                          ; preds = %if.end49
  br i1 %tobool64.not, label %cond.false69, label %cond.true65

cond.true65:                                      ; preds = %if.else
  %call67 = tail call i32 @CRYPTO_ccm128_decrypt_ccm64(%struct.ccm128_context* noundef nonnull %0, i8* noundef %in, i8* noundef nonnull %out, i64 noundef %len, void (i8*, i8*, i64, i8*, i8*, i8*)* noundef nonnull %19) #7
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then72, label %if.then91

cond.false69:                                     ; preds = %if.else
  %call70 = tail call i32 @CRYPTO_ccm128_decrypt(%struct.ccm128_context* noundef nonnull %0, i8* noundef %in, i8* noundef nonnull %out, i64 noundef %len) #7
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %if.then91

if.then72:                                        ; preds = %cond.false69, %cond.true65
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %tag, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #8
  %M = getelementptr inbounds i8, i8* %call, i64 268
  %22 = bitcast i8* %M to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !42
  %conv74 = sext i32 %23 to i64
  %call75 = call i64 @CRYPTO_ccm128_tag(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %21, i64 noundef %conv74) #7
  %tobool76.not = icmp eq i64 %call75, 0
  br i1 %tobool76.not, label %if.end88.thread168, label %if.then77

if.then77:                                        ; preds = %if.then72
  %call79 = call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %24 = load i32, i32* %22, align 4, !tbaa !42
  %conv81 = sext i32 %24 to i64
  %call82 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %21, i8* noundef %call79, i64 noundef %conv81) #7
  %tobool83.not = icmp eq i32 %call82, 0
  %conv85 = trunc i64 %len to i32
  br i1 %tobool83.not, label %if.end88, label %if.end88.thread168

if.end88.thread168:                               ; preds = %if.then72, %if.then77
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #8
  br label %if.then91

if.end88:                                         ; preds = %if.then77
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #8
  %cmp89 = icmp eq i32 %conv85, -1
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %cond.false69, %cond.true65, %if.end88.thread168, %if.end88
  call void @OPENSSL_cleanse(i8* noundef nonnull %out, i64 noundef %len) #7
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end88
  %rv.1165 = phi i32 [ -1, %if.then91 ], [ %conv85, %if.end88 ]
  store i32 0, i32* %5, align 4, !tbaa !49
  %tag_set94 = getelementptr inbounds i8, i8* %call, i64 256
  %25 = bitcast i8* %tag_set94 to i32*
  store i32 0, i32* %25, align 8, !tbaa !52
  store i32 0, i32* %14, align 4, !tbaa !51
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %cond.false, %if.then38, %land.lhs.true32, %if.end21, %if.then15, %if.end8, %if.end4, %entry, %if.end92, %if.end60, %if.end27, %if.end19, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ %conv62, %if.end60 ], [ %rv.1165, %if.end92 ], [ %conv28, %if.end27 ], [ %conv20, %if.end19 ], [ -1, %entry ], [ 0, %if.end4 ], [ -1, %if.end8 ], [ -1, %if.then15 ], [ -1, %if.end21 ], [ -1, %land.lhs.true32 ], [ -1, %if.then38 ], [ -1, %cond.false ], [ -1, %cond.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_ccm_ctrl(%struct.evp_cipher_ctx_st* noundef %c, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %c) #7
  switch i32 %type, label %cleanup124 [
    i32 0, label %sw.bb
    i32 37, label %sw.bb1
    i32 22, label %sw.bb3
    i32 18, label %sw.bb50
    i32 9, label %sw.bb57
    i32 20, label %sw.bb59
    i32 17, label %sw.bb67
    i32 16, label %sw.bb91
    i32 8, label %sw.bb107
  ]

sw.bb:                                            ; preds = %entry
  %key_set = getelementptr inbounds i8, i8* %call, i64 248
  %L = getelementptr inbounds i8, i8* %call, i64 264
  %0 = bitcast i8* %L to i32*
  store i32 8, i32* %0, align 8, !tbaa !46
  %M = getelementptr inbounds i8, i8* %call, i64 268
  %1 = bitcast i8* %M to i32*
  store i32 12, i32* %1, align 4, !tbaa !42
  %2 = bitcast i8* %key_set to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2, align 8, !tbaa !4
  %tls_aad_len = getelementptr inbounds i8, i8* %call, i64 272
  %3 = bitcast i8* %tls_aad_len to i32*
  store i32 -1, i32* %3, align 8, !tbaa !50
  br label %cleanup124

sw.bb1:                                           ; preds = %entry
  %L2 = getelementptr inbounds i8, i8* %call, i64 264
  %4 = bitcast i8* %L2 to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !46
  %sub = sub nsw i32 15, %5
  %6 = bitcast i8* %ptr to i32*
  store i32 %sub, i32* %6, align 4, !tbaa !4
  br label %cleanup124

sw.bb3:                                           ; preds = %entry
  %cmp.not = icmp eq i32 %arg, 13
  br i1 %cmp.not, label %if.end, label %cleanup124

if.end:                                           ; preds = %sw.bb3
  %call4 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #7
  %call5 = tail call i8* @memcpy(i8* noundef %call4, i8* noundef %ptr, i64 noundef 13) #7
  %tls_aad_len6 = getelementptr inbounds i8, i8* %call, i64 272
  %7 = bitcast i8* %tls_aad_len6 to i32*
  store i32 13, i32* %7, align 8, !tbaa !50
  %call7 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #7
  %arrayidx = getelementptr inbounds i8, i8* %call7, i64 11
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv9 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %call10 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #7
  %arrayidx13 = getelementptr inbounds i8, i8* %call10, i64 12
  %9 = load i8, i8* %arrayidx13, align 1, !tbaa !11
  %conv14 = zext i8 %9 to i32
  %or = or i32 %shl, %conv14
  %cmp17 = icmp ult i32 %or, 8
  br i1 %cmp17, label %cleanup124, label %if.end20

if.end20:                                         ; preds = %if.end
  %10 = trunc i32 %or to i16
  %conv23 = add i16 %10, -8
  %call24 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %c) #7
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.then25, label %if.end36

if.then25:                                        ; preds = %if.end20
  %conv26 = zext i16 %conv23 to i32
  %M27 = getelementptr inbounds i8, i8* %call, i64 268
  %11 = bitcast i8* %M27 to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !42
  %cmp28 = icmp sgt i32 %12, %conv26
  br i1 %cmp28, label %cleanup124, label %if.end31

if.end31:                                         ; preds = %if.then25
  %13 = trunc i32 %12 to i16
  %conv35 = sub i16 %conv23, %13
  br label %if.end36

if.end36:                                         ; preds = %if.end20, %if.end31
  %len.0 = phi i16 [ %conv35, %if.end31 ], [ %conv23, %if.end20 ]
  %14 = lshr i16 %len.0, 8
  %conv38 = trunc i16 %14 to i8
  %call39 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #7
  %arrayidx42 = getelementptr inbounds i8, i8* %call39, i64 11
  store i8 %conv38, i8* %arrayidx42, align 1, !tbaa !11
  %conv44 = trunc i16 %len.0 to i8
  %call45 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #7
  %arrayidx48 = getelementptr inbounds i8, i8* %call45, i64 12
  store i8 %conv44, i8* %arrayidx48, align 1, !tbaa !11
  %M49 = getelementptr inbounds i8, i8* %call, i64 268
  %15 = bitcast i8* %M49 to i32*
  %16 = load i32, i32* %15, align 4, !tbaa !42
  br label %cleanup124

sw.bb50:                                          ; preds = %entry
  %cmp51.not = icmp eq i32 %arg, 4
  br i1 %cmp51.not, label %if.end54, label %cleanup124

if.end54:                                         ; preds = %sw.bb50
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 5, i64 0
  %call56 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %ptr, i64 noundef 4) #7
  br label %cleanup124

sw.bb57:                                          ; preds = %entry
  %sub58 = sub nsw i32 15, %arg
  br label %sw.bb59

sw.bb59:                                          ; preds = %entry, %sw.bb57
  %arg.addr.0 = phi i32 [ %arg, %entry ], [ %sub58, %sw.bb57 ]
  %17 = add i32 %arg.addr.0, -9
  %18 = icmp ult i32 %17, -7
  br i1 %18, label %cleanup124, label %if.end65

if.end65:                                         ; preds = %sw.bb59
  %L66 = getelementptr inbounds i8, i8* %call, i64 264
  %19 = bitcast i8* %L66 to i32*
  store i32 %arg.addr.0, i32* %19, align 8, !tbaa !46
  br label %cleanup124

sw.bb67:                                          ; preds = %entry
  %and68 = and i32 %arg, 1
  %tobool69 = icmp ne i32 %and68, 0
  %20 = add i32 %arg, -17
  %21 = icmp ult i32 %20, -13
  %22 = or i1 %21, %tobool69
  br i1 %22, label %cleanup124, label %if.end77

if.end77:                                         ; preds = %sw.bb67
  %call78 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %c) #7
  %tobool79 = icmp ne i32 %call78, 0
  %tobool80 = icmp ne i8* %ptr, null
  %or.cond127 = and i1 %tobool80, %tobool79
  br i1 %or.cond127, label %cleanup124, label %if.end82

if.end82:                                         ; preds = %if.end77
  br i1 %tobool80, label %if.then84, label %if.end89

if.then84:                                        ; preds = %if.end82
  %tag_set85 = getelementptr inbounds i8, i8* %call, i64 256
  %23 = bitcast i8* %tag_set85 to i32*
  store i32 1, i32* %23, align 8, !tbaa !52
  %call86 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #7
  %conv87196 = zext i32 %arg to i64
  %call88 = tail call i8* @memcpy(i8* noundef %call86, i8* noundef nonnull %ptr, i64 noundef %conv87196) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %if.end82
  %M90 = getelementptr inbounds i8, i8* %call, i64 268
  %24 = bitcast i8* %M90 to i32*
  store i32 %arg, i32* %24, align 4, !tbaa !42
  br label %cleanup124

sw.bb91:                                          ; preds = %entry
  %call92 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %c) #7
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %cleanup124, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %sw.bb91
  %tag_set95 = getelementptr inbounds i8, i8* %call, i64 256
  %25 = bitcast i8* %tag_set95 to i32*
  %26 = load i32, i32* %25, align 8, !tbaa !52
  %tobool96.not = icmp eq i32 %26, 0
  br i1 %tobool96.not, label %cleanup124, label %if.end98

if.end98:                                         ; preds = %lor.lhs.false94
  %ccm = getelementptr inbounds i8, i8* %call, i64 280
  %27 = bitcast i8* %ccm to %struct.ccm128_context*
  %conv99 = sext i32 %arg to i64
  %call100 = tail call i64 @CRYPTO_ccm128_tag(%struct.ccm128_context* noundef nonnull %27, i8* noundef %ptr, i64 noundef %conv99) #7
  %tobool101.not = icmp eq i64 %call100, 0
  br i1 %tobool101.not, label %cleanup124, label %if.end103

if.end103:                                        ; preds = %if.end98
  store i32 0, i32* %25, align 8, !tbaa !52
  %iv_set105 = getelementptr inbounds i8, i8* %call, i64 252
  %28 = bitcast i8* %iv_set105 to i32*
  store i32 0, i32* %28, align 4, !tbaa !49
  %len_set106 = getelementptr inbounds i8, i8* %call, i64 260
  %29 = bitcast i8* %len_set106 to i32*
  store i32 0, i32* %29, align 4, !tbaa !51
  br label %cleanup124

sw.bb107:                                         ; preds = %entry
  %30 = bitcast i8* %ptr to %struct.evp_cipher_ctx_st*
  %call108 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %30) #7
  %key = getelementptr inbounds i8, i8* %call, i64 328
  %31 = bitcast i8* %key to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !53
  %tobool110.not = icmp eq i8* %32, null
  br i1 %tobool110.not, label %cleanup124, label %if.then111

if.then111:                                       ; preds = %sw.bb107
  %cmp114.not = icmp eq i8* %32, %call
  br i1 %cmp114.not, label %if.end117, label %cleanup124

if.end117:                                        ; preds = %if.then111
  %key120 = getelementptr inbounds i8, i8* %call108, i64 328
  %33 = bitcast i8* %key120 to i8**
  store i8* %call108, i8** %33, align 8, !tbaa !53
  br label %cleanup124

cleanup124:                                       ; preds = %entry, %if.then111, %if.end117, %sw.bb107, %if.end98, %sw.bb91, %lor.lhs.false94, %if.end77, %sw.bb67, %sw.bb59, %sw.bb50, %if.end, %if.then25, %sw.bb3, %if.end103, %if.end89, %if.end65, %if.end54, %if.end36, %sw.bb1, %sw.bb
  %retval.2 = phi i32 [ 1, %if.end103 ], [ 1, %if.end89 ], [ 1, %if.end65 ], [ 1, %if.end54 ], [ %16, %if.end36 ], [ 1, %sw.bb1 ], [ 1, %sw.bb ], [ 0, %sw.bb3 ], [ 0, %if.then25 ], [ 0, %if.end ], [ 0, %sw.bb50 ], [ 0, %sw.bb59 ], [ 0, %sw.bb67 ], [ 0, %if.end77 ], [ 0, %lor.lhs.false94 ], [ 0, %sw.bb91 ], [ 0, %if.end98 ], [ 0, %if.then111 ], [ 1, %if.end117 ], [ 1, %sw.bb107 ], [ -1, %entry ]
  ret i32 %retval.2
}

declare void @CRYPTO_ccm128_init(%struct.ccm128_context* noundef, i32 noundef, i32 noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #4

declare void @aesni_ccm64_encrypt_blocks(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #4

declare void @aesni_ccm64_decrypt_blocks(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @aes_ccm_tls_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) unnamed_addr #2 {
entry:
  %tag = alloca [16 x i8], align 16
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %ccm1 = getelementptr inbounds i8, i8* %call, i64 280
  %0 = bitcast i8* %ccm1 to %struct.ccm128_context*
  %cmp.not = icmp eq i8* %out, %in
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup75

lor.lhs.false:                                    ; preds = %entry
  %M = getelementptr inbounds i8, i8* %call, i64 268
  %1 = bitcast i8* %M to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !42
  %conv = sext i32 %2 to i64
  %add = add nsw i64 %conv, 8
  %cmp2 = icmp ugt i64 %add, %len
  br i1 %cmp2, label %cleanup75, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %call7 = tail call i8* @memcpy(i8* noundef %out, i8* noundef %call6, i64 noundef 8) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %add.ptr = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 4
  %call9 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %out, i64 noundef 8) #7
  %3 = load i32, i32* %1, align 4, !tbaa !42
  %add11 = add nsw i32 %3, 8
  %conv12 = sext i32 %add11 to i64
  %sub = sub i64 %len, %conv12
  %L = getelementptr inbounds i8, i8* %call, i64 264
  %4 = bitcast i8* %L to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !46
  %sub15 = sub nsw i32 15, %5
  %conv16 = sext i32 %sub15 to i64
  %call17 = tail call i32 @CRYPTO_ccm128_setiv(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %arraydecay, i64 noundef %conv16, i64 noundef %sub) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup75

if.end20:                                         ; preds = %if.end8
  %call21 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tls_aad_len = getelementptr inbounds i8, i8* %call, i64 272
  %6 = bitcast i8* %tls_aad_len to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !50
  %conv22 = sext i32 %7 to i64
  tail call void @CRYPTO_ccm128_aad(%struct.ccm128_context* noundef nonnull %0, i8* noundef %call21, i64 noundef %conv22) #7
  %add.ptr23 = getelementptr inbounds i8, i8* %out, i64 8
  %call25 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool26.not = icmp eq i32 %call25, 0
  %str48 = getelementptr inbounds i8, i8* %call, i64 336
  %8 = bitcast i8* %str48 to void (i8*, i8*, i64, i8*, i8*, i8*)**
  %9 = load void (i8*, i8*, i64, i8*, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*, i8*)** %8, align 8, !tbaa !47
  %tobool49.not = icmp eq void (i8*, i8*, i64, i8*, i8*, i8*)* %9, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end20
  br i1 %tobool49.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then27
  %call30 = tail call i32 @CRYPTO_ccm128_encrypt_ccm64(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %add.ptr23, i8* noundef nonnull %add.ptr23, i64 noundef %sub, void (i8*, i8*, i64, i8*, i8*, i8*)* noundef nonnull %9) #7
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end35, label %cleanup75

cond.false:                                       ; preds = %if.then27
  %call32 = tail call i32 @CRYPTO_ccm128_encrypt(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %add.ptr23, i8* noundef nonnull %add.ptr23, i64 noundef %sub) #7
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %cleanup75

if.end35:                                         ; preds = %cond.false, %cond.true
  %add.ptr36 = getelementptr inbounds i8, i8* %add.ptr23, i64 %sub
  %10 = load i32, i32* %1, align 4, !tbaa !42
  %conv38 = sext i32 %10 to i64
  %call39 = tail call i64 @CRYPTO_ccm128_tag(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %add.ptr36, i64 noundef %conv38) #7
  %tobool40.not = icmp eq i64 %call39, 0
  br i1 %tobool40.not, label %cleanup75, label %if.end42

if.end42:                                         ; preds = %if.end35
  %11 = load i32, i32* %1, align 4, !tbaa !42
  %12 = trunc i64 %sub to i32
  %13 = add i32 %12, 8
  %conv47 = add i32 %13, %11
  br label %cleanup75

if.else:                                          ; preds = %if.end20
  br i1 %tobool49.not, label %cond.false54, label %cond.true50

cond.true50:                                      ; preds = %if.else
  %call52 = tail call i32 @CRYPTO_ccm128_decrypt_ccm64(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %add.ptr23, i8* noundef nonnull %add.ptr23, i64 noundef %sub, void (i8*, i8*, i64, i8*, i8*, i8*)* noundef nonnull %9) #7
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then57, label %if.end74

cond.false54:                                     ; preds = %if.else
  %call55 = tail call i32 @CRYPTO_ccm128_decrypt(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %add.ptr23, i8* noundef nonnull %add.ptr23, i64 noundef %sub) #7
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %if.end74

if.then57:                                        ; preds = %cond.false54, %cond.true50
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %tag, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #8
  %15 = load i32, i32* %1, align 4, !tbaa !42
  %conv60 = sext i32 %15 to i64
  %call61 = call i64 @CRYPTO_ccm128_tag(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %14, i64 noundef %conv60) #7
  %tobool62.not = icmp eq i64 %call61, 0
  br i1 %tobool62.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then57
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #8
  br label %if.end74

cleanup:                                          ; preds = %if.then57
  %add.ptr65 = getelementptr inbounds i8, i8* %add.ptr23, i64 %sub
  %16 = load i32, i32* %1, align 4, !tbaa !42
  %conv67 = sext i32 %16 to i64
  %call68 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %14, i8* noundef nonnull %add.ptr65, i64 noundef %conv67) #7
  %tobool69.not.not = icmp eq i32 %call68, 0
  %conv71 = trunc i64 %sub to i32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #8
  br i1 %tobool69.not.not, label %cleanup75, label %if.end74

if.end74:                                         ; preds = %cleanup.thread, %cleanup, %cond.false54, %cond.true50
  call void @OPENSSL_cleanse(i8* noundef nonnull %add.ptr23, i64 noundef %sub) #7
  br label %cleanup75

cleanup75:                                        ; preds = %if.end35, %cond.true, %cond.false, %if.end8, %entry, %lor.lhs.false, %cleanup, %if.end74, %if.end42
  %retval.1 = phi i32 [ %conv47, %if.end42 ], [ -1, %if.end74 ], [ %conv71, %cleanup ], [ -1, %lor.lhs.false ], [ -1, %entry ], [ -1, %if.end8 ], [ -1, %cond.false ], [ -1, %cond.true ], [ -1, %if.end35 ]
  ret i32 %retval.1
}

declare i32 @CRYPTO_ccm128_setiv(%struct.ccm128_context* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @CRYPTO_ccm128_aad(%struct.ccm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ccm128_encrypt_ccm64(%struct.ccm128_context* noundef, i8* noundef, i8* noundef, i64 noundef, void (i8*, i8*, i64, i8*, i8*, i8*)* noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ccm128_encrypt(%struct.ccm128_context* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ccm128_decrypt_ccm64(%struct.ccm128_context* noundef, i8* noundef, i8* noundef, i64 noundef, void (i8*, i8*, i64, i8*, i8*, i8*)* noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ccm128_decrypt(%struct.ccm128_context* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i64 @CRYPTO_ccm128_tag(%struct.ccm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_ccm_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool = icmp ne i8* %iv, null
  %tobool1 = icmp ne i8* %key, null
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool1, label %do.body, label %if.end22

do.body:                                          ; preds = %if.end
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 512
  %tobool4.not = icmp eq i32 %and, 0
  %call11 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %mul12 = shl nsw i32 %call11, 3
  %ks14 = bitcast i8* %call to %struct.aes_key_st*
  br i1 %tobool4.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %do.body
  %call8 = tail call i32 @vpaes_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul12, %struct.aes_key_st* noundef %ks14) #7
  br label %if.end22.sink.split

if.end10:                                         ; preds = %do.body
  %call15 = tail call i32 @AES_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul12, %struct.aes_key_st* noundef %ks14) #7
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.end10, %if.then5
  %.sink55 = phi void (i8*, i8*, i8*)* [ bitcast (void (i8*, i8*, %struct.aes_key_st*)* @vpaes_encrypt to void (i8*, i8*, i8*)*), %if.then5 ], [ bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*), %if.end10 ]
  %ccm = getelementptr inbounds i8, i8* %call, i64 280
  %1 = bitcast i8* %ccm to %struct.ccm128_context*
  %M = getelementptr inbounds i8, i8* %call, i64 268
  %2 = bitcast i8* %M to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !42
  %L = getelementptr inbounds i8, i8* %call, i64 264
  %4 = bitcast i8* %L to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !46
  tail call void @CRYPTO_ccm128_init(%struct.ccm128_context* noundef nonnull %1, i32 noundef %3, i32 noundef %5, i8* noundef %call, void (i8*, i8*, i8*)* noundef %.sink55) #7
  %str = getelementptr inbounds i8, i8* %call, i64 336
  %6 = bitcast i8* %str to void (i8*, i8*, i64, i8*, i8*, i8*)**
  store void (i8*, i8*, i64, i8*, i8*, i8*)* null, void (i8*, i8*, i64, i8*, i8*, i8*)** %6, align 8, !tbaa !47
  %key_set = getelementptr inbounds i8, i8* %call, i64 248
  %7 = bitcast i8* %key_set to i32*
  store i32 1, i32* %7, align 8, !tbaa !48
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.end
  br i1 %tobool, label %if.then24, label %cleanup

if.then24:                                        ; preds = %if.end22
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %L26 = getelementptr inbounds i8, i8* %call, i64 264
  %8 = bitcast i8* %L26 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !46
  %sub = sub nsw i32 15, %9
  %conv = sext i32 %sub to i64
  %call27 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %iv, i64 noundef %conv) #7
  %iv_set = getelementptr inbounds i8, i8* %call, i64 252
  %10 = bitcast i8* %iv_set to i32*
  store i32 1, i32* %10, align 4, !tbaa !49
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then24, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_wrap_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %cmp = icmp eq i8* %iv, null
  %cmp1 = icmp eq i8* %key, null
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  br i1 %cmp1, label %if.end19, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool.not = icmp eq i32 %call4, 0
  %call9 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %mul10 = shl nsw i32 %call9, 3
  %ks12 = bitcast i8* %call to %struct.aes_key_st*
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  %call8 = tail call i32 @AES_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul10, %struct.aes_key_st* noundef %ks12) #7
  br label %if.end14

if.else:                                          ; preds = %if.then3
  %call13 = tail call i32 @AES_set_decrypt_key(i8* noundef nonnull %key, i32 noundef %mul10, %struct.aes_key_st* noundef %ks12) #7
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then5
  br i1 %cmp, label %cleanup.sink.split, label %if.then21

if.end19:                                         ; preds = %if.end
  br i1 %cmp, label %cleanup, label %if.then21

if.then21:                                        ; preds = %if.end14, %if.end19
  %call22 = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.then21
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %conv51 = zext i32 %call22 to i64
  %call27 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %iv, i64 noundef %conv51) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end14, %if.end25
  %.sink = phi i8* [ %arraydecay, %if.end25 ], [ null, %if.end14 ]
  %iv17 = getelementptr inbounds i8, i8* %call, i64 248
  %0 = bitcast i8* %iv17 to i8**
  store i8* %.sink, i8** %0, align 8, !tbaa !54
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19, %if.then21, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then21 ], [ 1, %if.end19 ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_wrap_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inlen) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %call1 = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %cmp = icmp eq i32 %call1, 4
  %tobool.not = icmp eq i8* %in, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq i64 %inlen, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end4
  %cmp7 = icmp ugt i64 %inlen, 15
  %and = and i64 %inlen, 7
  %tobool9.not = icmp eq i64 %and, 0
  %or.cond = and i1 %cmp7, %tobool9.not
  br i1 %or.cond, label %if.end17, label %cleanup

if.end11:                                         ; preds = %if.end4
  %.pre = and i64 %inlen, 7
  %tobool15.not = icmp eq i64 %.pre, 0
  %or.cond106 = or i1 %tobool15.not, %cmp
  br i1 %or.cond106, label %if.end17, label %cleanup

if.end17:                                         ; preds = %land.lhs.true, %if.end11
  %conv18 = trunc i64 %inlen to i32
  %call19 = tail call i32 @ossl_is_partially_overlapping(i8* noundef %out, i8* noundef nonnull %in, i32 noundef %conv18) #7
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3614, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.aes_wrap_cipher, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 162, i8* noundef null) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %tobool23.not = icmp eq i8* %out, null
  %call25 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool23.not, label %if.then24, label %if.end34

if.then24:                                        ; preds = %if.end22
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.then24
  %add = add i64 %inlen, 7
  %div = and i64 %add, 4294967288
  %inlen.addr.0 = select i1 %cmp, i64 %div, i64 %inlen
  %0 = trunc i64 %inlen.addr.0 to i32
  %conv32 = add i32 %0, 8
  br label %cleanup

if.else:                                          ; preds = %if.then24
  %conv33 = add i32 %conv18, -8
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %iv45 = getelementptr inbounds i8, i8* %call, i64 248
  %1 = bitcast i8* %iv45 to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !54
  br i1 %cmp, label %if.then36, label %if.else48

if.then36:                                        ; preds = %if.end34
  br i1 %tobool26.not, label %if.else42, label %if.then39

if.then39:                                        ; preds = %if.then36
  %call41 = tail call i64 @CRYPTO_128_wrap_pad(i8* noundef %call, i8* noundef %2, i8* noundef nonnull %out, i8* noundef nonnull %in, i64 noundef %inlen, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*)) #7
  br label %if.end62

if.else42:                                        ; preds = %if.then36
  %call46 = tail call i64 @CRYPTO_128_unwrap_pad(i8* noundef %call, i8* noundef %2, i8* noundef nonnull %out, i8* noundef nonnull %in, i64 noundef %inlen, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_decrypt to void (i8*, i8*, i8*)*)) #7
  br label %if.end62

if.else48:                                        ; preds = %if.end34
  br i1 %tobool26.not, label %if.else56, label %if.then51

if.then51:                                        ; preds = %if.else48
  %call55 = tail call i64 @CRYPTO_128_wrap(i8* noundef %call, i8* noundef %2, i8* noundef nonnull %out, i8* noundef nonnull %in, i64 noundef %inlen, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*)) #7
  br label %if.end62

if.else56:                                        ; preds = %if.else48
  %call60 = tail call i64 @CRYPTO_128_unwrap(i8* noundef %call, i8* noundef %2, i8* noundef nonnull %out, i8* noundef nonnull %in, i64 noundef %inlen, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_decrypt to void (i8*, i8*, i8*)*)) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then51, %if.else56, %if.then39, %if.else42
  %rv.0 = phi i64 [ %call41, %if.then39 ], [ %call46, %if.else42 ], [ %call55, %if.then51 ], [ %call60, %if.else56 ]
  %tobool63.not = icmp eq i64 %rv.0, 0
  %conv64 = trunc i64 %rv.0 to i32
  %cond = select i1 %tobool63.not, i32 -1, i32 %conv64
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %land.lhs.true, %if.end, %entry, %if.end62, %if.else, %if.then27, %if.then21
  %retval.0 = phi i32 [ 0, %if.then21 ], [ %cond, %if.end62 ], [ %conv32, %if.then27 ], [ %conv33, %if.else ], [ 0, %entry ], [ -1, %if.end ], [ -1, %land.lhs.true ], [ -1, %if.end11 ]
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #4

declare i32 @ossl_is_partially_overlapping(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i64 @CRYPTO_128_wrap_pad(i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #4

declare i64 @CRYPTO_128_unwrap_pad(i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #4

declare i64 @CRYPTO_128_wrap(i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #4

declare i64 @CRYPTO_128_unwrap(i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @aesni_ocb_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool = icmp ne i8* %iv, null
  %tobool1 = icmp ne i8* %key, null
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool1, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  %call4 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %mul = shl nsw i32 %call4, 3
  %ks = bitcast i8* %call to %struct.aes_key_st*
  %call5 = tail call i32 @aesni_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul, %struct.aes_key_st* noundef %ks) #7
  %call6 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %mul7 = shl nsw i32 %call6, 3
  %ksdec = getelementptr inbounds i8, i8* %call, i64 248
  %ks8 = bitcast i8* %ksdec to %struct.aes_key_st*
  %call9 = tail call i32 @aesni_set_decrypt_key(i8* noundef nonnull %key, i32 noundef %mul7, %struct.aes_key_st* noundef nonnull %ks8) #7
  %ocb = getelementptr inbounds i8, i8* %call, i64 504
  %0 = bitcast i8* %ocb to %struct.ocb128_context*
  %tobool14.not = icmp eq i32 %enc, 0
  %cond = select i1 %tobool14.not, void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)* @aesni_ocb_decrypt, void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)* @aesni_ocb_encrypt
  %call15 = tail call i32 @CRYPTO_ocb128_init(%struct.ocb128_context* noundef nonnull %0, i8* noundef %call, i8* noundef nonnull %ksdec, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @aesni_encrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @aesni_decrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)* noundef nonnull %cond) #7
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %do.end

do.end:                                           ; preds = %do.body
  %cmp = icmp eq i8* %iv, null
  br i1 %cmp, label %land.lhs.true19, label %if.then25

land.lhs.true19:                                  ; preds = %do.end
  %iv_set = getelementptr inbounds i8, i8* %call, i64 500
  %1 = bitcast i8* %iv_set to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !56
  %tobool20.not = icmp eq i32 %2, 0
  br i1 %tobool20.not, label %if.end34, label %if.end23

if.end23:                                         ; preds = %land.lhs.true19
  %iv22 = getelementptr inbounds i8, i8* %call, i64 680
  %3 = bitcast i8* %iv22 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !60
  %tobool24.not = icmp eq i8* %4, null
  br i1 %tobool24.not, label %if.end34, label %if.then25

if.then25:                                        ; preds = %do.end, %if.end23
  %iv.addr.086 = phi i8* [ %4, %if.end23 ], [ %iv, %do.end ]
  %ivlen = getelementptr inbounds i8, i8* %call, i64 744
  %5 = bitcast i8* %ivlen to i32*
  %6 = load i32, i32* %5, align 8, !tbaa !61
  %conv = sext i32 %6 to i64
  %taglen = getelementptr inbounds i8, i8* %call, i64 748
  %7 = bitcast i8* %taglen to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !62
  %conv27 = sext i32 %8 to i64
  %call28 = tail call i32 @CRYPTO_ocb128_setiv(%struct.ocb128_context* noundef nonnull %0, i8* noundef nonnull %iv.addr.086, i64 noundef %conv, i64 noundef %conv27) #7
  %cmp29.not = icmp eq i32 %call28, 1
  br i1 %cmp29.not, label %if.end32, label %cleanup

if.end32:                                         ; preds = %if.then25
  %iv_set33 = getelementptr inbounds i8, i8* %call, i64 500
  %9 = bitcast i8* %iv_set33 to i32*
  store i32 1, i32* %9, align 4, !tbaa !56
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true19, %if.end32, %if.end23
  %key_set = getelementptr inbounds i8, i8* %call, i64 496
  %10 = bitcast i8* %key_set to i32*
  store i32 1, i32* %10, align 8, !tbaa !63
  br label %cleanup

if.else:                                          ; preds = %if.end
  %key_set35 = getelementptr inbounds i8, i8* %call, i64 496
  %11 = bitcast i8* %key_set35 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !63
  %tobool36.not = icmp eq i32 %12, 0
  br i1 %tobool36.not, label %if.else44, label %if.then37

if.then37:                                        ; preds = %if.else
  %ocb38 = getelementptr inbounds i8, i8* %call, i64 504
  %13 = bitcast i8* %ocb38 to %struct.ocb128_context*
  %ivlen39 = getelementptr inbounds i8, i8* %call, i64 744
  %14 = bitcast i8* %ivlen39 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !61
  %conv40 = sext i32 %15 to i64
  %taglen41 = getelementptr inbounds i8, i8* %call, i64 748
  %16 = bitcast i8* %taglen41 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !62
  %conv42 = sext i32 %17 to i64
  %call43 = tail call i32 @CRYPTO_ocb128_setiv(%struct.ocb128_context* noundef nonnull %13, i8* noundef %iv, i64 noundef %conv40, i64 noundef %conv42) #7
  br label %if.end49

if.else44:                                        ; preds = %if.else
  %iv45 = getelementptr inbounds i8, i8* %call, i64 680
  %18 = bitcast i8* %iv45 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !60
  %ivlen46 = getelementptr inbounds i8, i8* %call, i64 744
  %20 = bitcast i8* %ivlen46 to i32*
  %21 = load i32, i32* %20, align 8, !tbaa !61
  %conv47 = sext i32 %21 to i64
  %call48 = tail call i8* @memcpy(i8* noundef %19, i8* noundef %iv, i64 noundef %conv47) #7
  br label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then37
  %iv_set50 = getelementptr inbounds i8, i8* %call, i64 500
  %22 = bitcast i8* %iv_set50 to i32*
  store i32 1, i32* %22, align 4, !tbaa !56
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end49, %if.then25, %do.body, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %do.body ], [ 0, %if.then25 ], [ 1, %if.end49 ], [ 1, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_ocb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %iv_set = getelementptr inbounds i8, i8* %call, i64 500
  %0 = bitcast i8* %iv_set to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !56
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup181, label %if.end

if.end:                                           ; preds = %entry
  %key_set = getelementptr inbounds i8, i8* %call, i64 496
  %2 = bitcast i8* %key_set to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !63
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %cleanup181, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp.not = icmp eq i8* %in, null
  br i1 %cmp.not, label %if.else108, label %if.then4

if.then4:                                         ; preds = %if.end3
  %cmp5 = icmp eq i8* %out, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  %aad_buf = getelementptr inbounds i8, i8* %call, i64 720
  %aad_buf_len = getelementptr inbounds i8, i8* %call, i64 740
  %4 = bitcast i8* %aad_buf_len to i32*
  br label %if.end12

if.else:                                          ; preds = %if.then4
  %data_buf = getelementptr inbounds i8, i8* %call, i64 704
  %data_buf_len = getelementptr inbounds i8, i8* %call, i64 736
  %5 = bitcast i8* %data_buf_len to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 %idx.ext
  %conv = trunc i64 %len to i32
  %call8 = tail call i32 @ossl_is_partially_overlapping(i8* noundef nonnull %add.ptr, i8* noundef nonnull %in, i32 noundef %conv) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.else
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3920, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.aes_ocb_cipher, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 162, i8* noundef null) #7
  br label %cleanup181

if.end12:                                         ; preds = %if.else, %if.then6
  %buf.0 = phi i8* [ %aad_buf, %if.then6 ], [ %data_buf, %if.else ]
  %buf_len.0 = phi i32* [ %4, %if.then6 ], [ %5, %if.else ]
  %7 = load i32, i32* %buf_len.0, align 4, !tbaa !4
  %cmp13 = icmp sgt i32 %7, 0
  br i1 %cmp13, label %if.then15, label %if.end63

if.then15:                                        ; preds = %if.end12
  %sub = sub nsw i32 16, %7
  %conv16 = zext i32 %sub to i64
  %cmp17 = icmp ugt i64 %conv16, %len
  %idx.ext20297 = zext i32 %7 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %buf.0, i64 %idx.ext20297
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.then15
  %call22 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr21, i8* noundef nonnull %in, i64 noundef %len) #7
  %8 = load i32, i32* %buf_len.0, align 4, !tbaa !4
  %9 = trunc i64 %len to i32
  %conv24 = add i32 %8, %9
  store i32 %conv24, i32* %buf_len.0, align 4, !tbaa !4
  br label %cleanup181

if.end25:                                         ; preds = %if.then15
  %call29 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr21, i8* noundef nonnull %in, i64 noundef %conv16) #7
  %sub31 = sub i64 %len, %conv16
  %add.ptr33 = getelementptr inbounds i8, i8* %in, i64 %conv16
  br i1 %cmp5, label %if.then36, label %if.else41

if.then36:                                        ; preds = %if.end25
  %ocb = getelementptr inbounds i8, i8* %call, i64 504
  %10 = bitcast i8* %ocb to %struct.ocb128_context*
  %call37 = tail call i32 @CRYPTO_ocb128_aad(%struct.ocb128_context* noundef nonnull %10, i8* noundef nonnull %buf.0, i64 noundef 16) #7
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup181, label %cleanup

if.else41:                                        ; preds = %if.end25
  %call42 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool43.not = icmp eq i32 %call42, 0
  %ocb51 = getelementptr inbounds i8, i8* %call, i64 504
  %11 = bitcast i8* %ocb51 to %struct.ocb128_context*
  br i1 %tobool43.not, label %if.else50, label %if.then44

if.then44:                                        ; preds = %if.else41
  %call46 = tail call i32 @CRYPTO_ocb128_encrypt(%struct.ocb128_context* noundef nonnull %11, i8* noundef nonnull %buf.0, i8* noundef nonnull %out, i64 noundef 16) #7
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup181, label %cleanup

if.else50:                                        ; preds = %if.else41
  %call52 = tail call i32 @CRYPTO_ocb128_decrypt(%struct.ocb128_context* noundef nonnull %11, i8* noundef nonnull %buf.0, i8* noundef nonnull %out, i64 noundef 16) #7
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %cleanup181, label %cleanup

cleanup:                                          ; preds = %if.then36, %if.else50, %if.then44
  store i32 0, i32* %buf_len.0, align 4, !tbaa !4
  %add.ptr61 = getelementptr inbounds i8, i8* %out, i64 16
  %spec.select = select i1 %cmp5, i8* null, i8* %add.ptr61
  br label %if.end63

if.end63:                                         ; preds = %cleanup, %if.end12
  %len.addr.1 = phi i64 [ %sub31, %cleanup ], [ %len, %if.end12 ]
  %written_len.1 = phi i32 [ 16, %cleanup ], [ 0, %if.end12 ]
  %in.addr.1 = phi i8* [ %add.ptr33, %cleanup ], [ %in, %if.end12 ]
  %out.addr.2 = phi i8* [ %spec.select, %cleanup ], [ %out, %if.end12 ]
  %rem = and i64 %len.addr.1, 15
  %12 = icmp ult i64 %len.addr.1, 16
  br i1 %12, label %if.end101, label %if.then66

if.then66:                                        ; preds = %if.end63
  %cmp67 = icmp eq i8* %out.addr.2, null
  br i1 %cmp67, label %if.then69, label %if.else76

if.then69:                                        ; preds = %if.then66
  %ocb70 = getelementptr inbounds i8, i8* %call, i64 504
  %13 = bitcast i8* %ocb70 to %struct.ocb128_context*
  %sub71 = and i64 %len.addr.1, -16
  %call72 = tail call i32 @CRYPTO_ocb128_aad(%struct.ocb128_context* noundef nonnull %13, i8* noundef %in.addr.1, i64 noundef %sub71) #7
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %cleanup181, label %if.end94

if.else76:                                        ; preds = %if.then66
  %call77 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool78.not = icmp eq i32 %call77, 0
  %ocb87 = getelementptr inbounds i8, i8* %call, i64 504
  %14 = bitcast i8* %ocb87 to %struct.ocb128_context*
  %sub88 = and i64 %len.addr.1, -16
  br i1 %tobool78.not, label %if.else86, label %if.then79

if.then79:                                        ; preds = %if.else76
  %call82 = tail call i32 @CRYPTO_ocb128_encrypt(%struct.ocb128_context* noundef nonnull %14, i8* noundef %in.addr.1, i8* noundef nonnull %out.addr.2, i64 noundef %sub88) #7
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %cleanup181, label %if.end94

if.else86:                                        ; preds = %if.else76
  %call89 = tail call i32 @CRYPTO_ocb128_decrypt(%struct.ocb128_context* noundef nonnull %14, i8* noundef %in.addr.1, i8* noundef nonnull %out.addr.2, i64 noundef %sub88) #7
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %cleanup181, label %if.end94

if.end94:                                         ; preds = %if.then79, %if.else86, %if.then69
  %sub95.pre-phi = phi i64 [ %sub88, %if.then79 ], [ %sub88, %if.else86 ], [ %sub71, %if.then69 ]
  %15 = trunc i64 %sub95.pre-phi to i32
  %conv98 = add i32 %written_len.1, %15
  %add.ptr100 = getelementptr inbounds i8, i8* %in.addr.1, i64 %sub95.pre-phi
  br label %if.end101

if.end101:                                        ; preds = %if.end94, %if.end63
  %written_len.2 = phi i32 [ %conv98, %if.end94 ], [ %written_len.1, %if.end63 ]
  %in.addr.2 = phi i8* [ %add.ptr100, %if.end94 ], [ %in.addr.1, %if.end63 ]
  %cmp102.not = icmp eq i64 %rem, 0
  br i1 %cmp102.not, label %cleanup181, label %if.then104

if.then104:                                       ; preds = %if.end101
  %call105 = tail call i8* @memcpy(i8* noundef nonnull %buf.0, i8* noundef %in.addr.2, i64 noundef %rem) #7
  %conv106 = trunc i64 %rem to i32
  store i32 %conv106, i32* %buf_len.0, align 4, !tbaa !4
  br label %cleanup181

if.else108:                                       ; preds = %if.end3
  %data_buf_len109 = getelementptr inbounds i8, i8* %call, i64 736
  %16 = bitcast i8* %data_buf_len109 to i32*
  %17 = load i32, i32* %16, align 8, !tbaa !64
  %cmp110 = icmp sgt i32 %17, 0
  br i1 %cmp110, label %if.then112, label %if.end138

if.then112:                                       ; preds = %if.else108
  %call113 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool114.not = icmp eq i32 %call113, 0
  %ocb126 = getelementptr inbounds i8, i8* %call, i64 504
  %18 = bitcast i8* %ocb126 to %struct.ocb128_context*
  %data_buf127 = getelementptr inbounds i8, i8* %call, i64 704
  %19 = load i32, i32* %16, align 8, !tbaa !64
  %conv130 = sext i32 %19 to i64
  br i1 %tobool114.not, label %if.else125, label %if.then115

if.then115:                                       ; preds = %if.then112
  %call121 = tail call i32 @CRYPTO_ocb128_encrypt(%struct.ocb128_context* noundef nonnull %18, i8* noundef nonnull %data_buf127, i8* noundef %out, i64 noundef %conv130) #7
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %cleanup181, label %if.end135

if.else125:                                       ; preds = %if.then112
  %call131 = tail call i32 @CRYPTO_ocb128_decrypt(%struct.ocb128_context* noundef nonnull %18, i8* noundef nonnull %data_buf127, i8* noundef %out, i64 noundef %conv130) #7
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %cleanup181, label %if.end135

if.end135:                                        ; preds = %if.else125, %if.then115
  %20 = load i32, i32* %16, align 8, !tbaa !64
  store i32 0, i32* %16, align 8, !tbaa !64
  br label %if.end138

if.end138:                                        ; preds = %if.end135, %if.else108
  %written_len.3 = phi i32 [ %20, %if.end135 ], [ 0, %if.else108 ]
  %aad_buf_len139 = getelementptr inbounds i8, i8* %call, i64 740
  %21 = bitcast i8* %aad_buf_len139 to i32*
  %22 = load i32, i32* %21, align 4, !tbaa !65
  %cmp140 = icmp sgt i32 %22, 0
  br i1 %cmp140, label %if.then142, label %if.end153

if.then142:                                       ; preds = %if.end138
  %ocb143 = getelementptr inbounds i8, i8* %call, i64 504
  %23 = bitcast i8* %ocb143 to %struct.ocb128_context*
  %aad_buf144 = getelementptr inbounds i8, i8* %call, i64 720
  %conv147295 = zext i32 %22 to i64
  %call148 = tail call i32 @CRYPTO_ocb128_aad(%struct.ocb128_context* noundef nonnull %23, i8* noundef nonnull %aad_buf144, i64 noundef %conv147295) #7
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %cleanup181, label %if.end151

if.end151:                                        ; preds = %if.then142
  store i32 0, i32* %21, align 4, !tbaa !65
  br label %if.end153

if.end153:                                        ; preds = %if.end151, %if.end138
  %call154 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.then156, label %if.end171

if.then156:                                       ; preds = %if.end153
  %taglen = getelementptr inbounds i8, i8* %call, i64 748
  %24 = bitcast i8* %taglen to i32*
  %25 = load i32, i32* %24, align 4, !tbaa !62
  %cmp157 = icmp slt i32 %25, 0
  br i1 %cmp157, label %cleanup181, label %if.end160

if.end160:                                        ; preds = %if.then156
  %ocb161 = getelementptr inbounds i8, i8* %call, i64 504
  %26 = bitcast i8* %ocb161 to %struct.ocb128_context*
  %tag = getelementptr inbounds i8, i8* %call, i64 688
  %conv164296 = zext i32 %25 to i64
  %call165 = tail call i32 @CRYPTO_ocb128_finish(%struct.ocb128_context* noundef nonnull %26, i8* noundef nonnull %tag, i64 noundef %conv164296) #7
  %cmp166.not = icmp eq i32 %call165, 0
  br i1 %cmp166.not, label %if.end169, label %cleanup181

if.end169:                                        ; preds = %if.end160
  store i32 0, i32* %0, align 4, !tbaa !56
  br label %cleanup181

if.end171:                                        ; preds = %if.end153
  %ocb172 = getelementptr inbounds i8, i8* %call, i64 504
  %27 = bitcast i8* %ocb172 to %struct.ocb128_context*
  %tag173 = getelementptr inbounds i8, i8* %call, i64 688
  %call175 = tail call i32 @CRYPTO_ocb128_tag(%struct.ocb128_context* noundef nonnull %27, i8* noundef nonnull %tag173, i64 noundef 16) #7
  %cmp176.not = icmp eq i32 %call175, 1
  br i1 %cmp176.not, label %if.end179, label %cleanup181

if.end179:                                        ; preds = %if.end171
  store i32 0, i32* %0, align 4, !tbaa !56
  br label %cleanup181

cleanup181:                                       ; preds = %if.else50, %if.then44, %if.then36, %if.then19, %if.end171, %if.end160, %if.then156, %if.then142, %if.else125, %if.then115, %if.end101, %if.then104, %if.else86, %if.then79, %if.then69, %if.end, %entry, %if.end179, %if.end169, %if.then10
  %retval.1 = phi i32 [ 0, %if.then10 ], [ %written_len.3, %if.end179 ], [ %written_len.3, %if.end169 ], [ -1, %entry ], [ -1, %if.end ], [ -1, %if.then69 ], [ -1, %if.then79 ], [ -1, %if.else86 ], [ %written_len.2, %if.then104 ], [ %written_len.2, %if.end101 ], [ -1, %if.then115 ], [ -1, %if.else125 ], [ -1, %if.then142 ], [ -1, %if.then156 ], [ -1, %if.end160 ], [ -1, %if.end171 ], [ -1, %if.else50 ], [ -1, %if.then44 ], [ -1, %if.then36 ], [ 0, %if.then19 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_ocb_cleanup(%struct.evp_cipher_ctx_st* noundef %c) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %c) #7
  %ocb = getelementptr inbounds i8, i8* %call, i64 504
  %0 = bitcast i8* %ocb to %struct.ocb128_context*
  tail call void @CRYPTO_ocb128_cleanup(%struct.ocb128_context* noundef nonnull %0) #7
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_ocb_ctrl(%struct.evp_cipher_ctx_st* noundef %c, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %c) #7
  switch i32 %type, label %cleanup [
    i32 0, label %sw.bb
    i32 37, label %sw.bb3
    i32 9, label %sw.bb5
    i32 17, label %sw.bb8
    i32 16, label %sw.bb26
    i32 8, label %sw.bb39
  ]

sw.bb:                                            ; preds = %entry
  %key_set = getelementptr inbounds i8, i8* %call, i64 496
  %0 = bitcast i8* %key_set to i32*
  store i32 0, i32* %0, align 8, !tbaa !63
  %iv_set = getelementptr inbounds i8, i8* %call, i64 500
  %1 = bitcast i8* %iv_set to i32*
  store i32 0, i32* %1, align 4, !tbaa !56
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 0
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !30
  %call1 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %2) #7
  %ivlen = getelementptr inbounds i8, i8* %call, i64 744
  %3 = bitcast i8* %ivlen to i32*
  store i32 %call1, i32* %3, align 8, !tbaa !61
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 5, i64 0
  %iv2 = getelementptr inbounds i8, i8* %call, i64 680
  %4 = bitcast i8* %iv2 to i8**
  store i8* %arraydecay, i8** %4, align 8, !tbaa !60
  %taglen = getelementptr inbounds i8, i8* %call, i64 748
  %5 = bitcast i8* %taglen to i32*
  store i32 16, i32* %5, align 4, !tbaa !62
  %data_buf_len = getelementptr inbounds i8, i8* %call, i64 736
  %6 = bitcast i8* %data_buf_len to i32*
  store i32 0, i32* %6, align 8, !tbaa !64
  %aad_buf_len = getelementptr inbounds i8, i8* %call, i64 740
  %7 = bitcast i8* %aad_buf_len to i32*
  store i32 0, i32* %7, align 4, !tbaa !65
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %ivlen4 = getelementptr inbounds i8, i8* %call, i64 744
  %8 = bitcast i8* %ivlen4 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !61
  %10 = bitcast i8* %ptr to i32*
  store i32 %9, i32* %10, align 4, !tbaa !4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %11 = add i32 %arg, -16
  %12 = icmp ult i32 %11, -15
  br i1 %12, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb5
  %ivlen7 = getelementptr inbounds i8, i8* %call, i64 744
  %13 = bitcast i8* %ivlen7 to i32*
  store i32 %arg, i32* %13, align 8, !tbaa !61
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %cmp9 = icmp eq i8* %ptr, null
  br i1 %cmp9, label %if.then10, label %if.end17

if.then10:                                        ; preds = %sw.bb8
  %14 = icmp ugt i32 %arg, 16
  br i1 %14, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then10
  %taglen16 = getelementptr inbounds i8, i8* %call, i64 748
  %15 = bitcast i8* %taglen16 to i32*
  store i32 %arg, i32* %15, align 4, !tbaa !62
  br label %cleanup

if.end17:                                         ; preds = %sw.bb8
  %taglen18 = getelementptr inbounds i8, i8* %call, i64 748
  %16 = bitcast i8* %taglen18 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !62
  %cmp19.not = icmp eq i32 %17, %arg
  br i1 %cmp19.not, label %lor.lhs.false20, label %cleanup

lor.lhs.false20:                                  ; preds = %if.end17
  %call21 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %c) #7
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end23, label %cleanup

if.end23:                                         ; preds = %lor.lhs.false20
  %tag = getelementptr inbounds i8, i8* %call, i64 688
  %conv = sext i32 %arg to i64
  %call25 = tail call i8* @memcpy(i8* noundef nonnull %tag, i8* noundef nonnull %ptr, i64 noundef %conv) #7
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %taglen27 = getelementptr inbounds i8, i8* %call, i64 748
  %18 = bitcast i8* %taglen27 to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !62
  %cmp28.not = icmp eq i32 %19, %arg
  br i1 %cmp28.not, label %lor.lhs.false30, label %cleanup

lor.lhs.false30:                                  ; preds = %sw.bb26
  %call31 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %c) #7
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup, label %if.end34

if.end34:                                         ; preds = %lor.lhs.false30
  %tag35 = getelementptr inbounds i8, i8* %call, i64 688
  %conv37 = sext i32 %arg to i64
  %call38 = tail call i8* @memcpy(i8* noundef %ptr, i8* noundef nonnull %tag35, i64 noundef %conv37) #7
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  %20 = bitcast i8* %ptr to %struct.evp_cipher_ctx_st*
  %call40 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %20) #7
  %ocb = getelementptr inbounds i8, i8* %call40, i64 504
  %21 = bitcast i8* %ocb to %struct.ocb128_context*
  %ocb41 = getelementptr inbounds i8, i8* %call, i64 504
  %22 = bitcast i8* %ocb41 to %struct.ocb128_context*
  %ksdec = getelementptr inbounds i8, i8* %call40, i64 248
  %call43 = tail call i32 @CRYPTO_ocb128_copy_ctx(%struct.ocb128_context* noundef nonnull %21, %struct.ocb128_context* noundef nonnull %22, i8* noundef %call40, i8* noundef nonnull %ksdec) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb26, %lor.lhs.false30, %if.end17, %lor.lhs.false20, %if.then10, %sw.bb5, %sw.bb39, %if.end34, %if.end23, %if.end15, %if.end, %sw.bb3, %sw.bb
  %retval.0 = phi i32 [ %call43, %sw.bb39 ], [ 1, %if.end34 ], [ 1, %if.end15 ], [ 1, %if.end23 ], [ 1, %if.end ], [ 1, %sw.bb3 ], [ 1, %sw.bb ], [ 0, %sw.bb5 ], [ 0, %if.then10 ], [ 0, %lor.lhs.false20 ], [ 0, %if.end17 ], [ 0, %lor.lhs.false30 ], [ 0, %sw.bb26 ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_ocb128_init(%struct.ocb128_context* noundef, i8* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef, void (i8*, i8*, i8*)* noundef, void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)* noundef) local_unnamed_addr #4

declare void @aesni_ocb_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, [16 x i8]* noundef, i8* noundef) #4

declare void @aesni_ocb_decrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, [16 x i8]* noundef, i8* noundef) #4

declare i32 @CRYPTO_ocb128_setiv(%struct.ocb128_context* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ocb128_aad(%struct.ocb128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ocb128_encrypt(%struct.ocb128_context* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ocb128_decrypt(%struct.ocb128_context* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ocb128_finish(%struct.ocb128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ocb128_tag(%struct.ocb128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @CRYPTO_ocb128_cleanup(%struct.ocb128_context* noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ocb128_copy_ctx(%struct.ocb128_context* noundef, %struct.ocb128_context* noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @aes_ocb_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #2 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %tobool = icmp ne i8* %iv, null
  %tobool1 = icmp ne i8* %key, null
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool1, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 512
  %tobool4.not = icmp eq i32 %and, 0
  %call21 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %mul22 = shl nsw i32 %call21, 3
  %ks24 = bitcast i8* %call to %struct.aes_key_st*
  br i1 %tobool4.not, label %if.end20, label %if.then5

if.then5:                                         ; preds = %do.body
  %call7 = tail call i32 @vpaes_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul22, %struct.aes_key_st* noundef %ks24) #7
  %call8 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %mul9 = shl nsw i32 %call8, 3
  %ksdec = getelementptr inbounds i8, i8* %call, i64 248
  %ks10 = bitcast i8* %ksdec to %struct.aes_key_st*
  %call11 = tail call i32 @vpaes_set_decrypt_key(i8* noundef nonnull %key, i32 noundef %mul9, %struct.aes_key_st* noundef nonnull %ks10) #7
  %ocb = getelementptr inbounds i8, i8* %call, i64 504
  %1 = bitcast i8* %ocb to %struct.ocb128_context*
  %call16 = tail call i32 @CRYPTO_ocb128_init(%struct.ocb128_context* noundef nonnull %1, i8* noundef %call, i8* noundef nonnull %ksdec, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @vpaes_encrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @vpaes_decrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)* noundef null) #7
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %do.end

if.end20:                                         ; preds = %do.body
  %call25 = tail call i32 @AES_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul22, %struct.aes_key_st* noundef %ks24) #7
  %call26 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %mul27 = shl nsw i32 %call26, 3
  %ksdec28 = getelementptr inbounds i8, i8* %call, i64 248
  %ks29 = bitcast i8* %ksdec28 to %struct.aes_key_st*
  %call30 = tail call i32 @AES_set_decrypt_key(i8* noundef nonnull %key, i32 noundef %mul27, %struct.aes_key_st* noundef nonnull %ks29) #7
  %ocb31 = getelementptr inbounds i8, i8* %call, i64 504
  %2 = bitcast i8* %ocb31 to %struct.ocb128_context*
  %call36 = tail call i32 @CRYPTO_ocb128_init(%struct.ocb128_context* noundef nonnull %2, i8* noundef %call, i8* noundef nonnull %ksdec28, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_decrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)* noundef null) #7
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end20, %if.then5
  %cmp = icmp eq i8* %iv, null
  br i1 %cmp, label %land.lhs.true40, label %if.then46

land.lhs.true40:                                  ; preds = %do.end
  %iv_set = getelementptr inbounds i8, i8* %call, i64 500
  %3 = bitcast i8* %iv_set to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !56
  %tobool41.not = icmp eq i32 %4, 0
  br i1 %tobool41.not, label %if.end55, label %if.end44

if.end44:                                         ; preds = %land.lhs.true40
  %iv43 = getelementptr inbounds i8, i8* %call, i64 680
  %5 = bitcast i8* %iv43 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !60
  %tobool45.not = icmp eq i8* %6, null
  br i1 %tobool45.not, label %if.end55, label %if.then46

if.then46:                                        ; preds = %do.end, %if.end44
  %iv.addr.0116 = phi i8* [ %6, %if.end44 ], [ %iv, %do.end ]
  %ocb47 = getelementptr inbounds i8, i8* %call, i64 504
  %7 = bitcast i8* %ocb47 to %struct.ocb128_context*
  %ivlen = getelementptr inbounds i8, i8* %call, i64 744
  %8 = bitcast i8* %ivlen to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !61
  %conv = sext i32 %9 to i64
  %taglen = getelementptr inbounds i8, i8* %call, i64 748
  %10 = bitcast i8* %taglen to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !62
  %conv48 = sext i32 %11 to i64
  %call49 = tail call i32 @CRYPTO_ocb128_setiv(%struct.ocb128_context* noundef nonnull %7, i8* noundef nonnull %iv.addr.0116, i64 noundef %conv, i64 noundef %conv48) #7
  %cmp50.not = icmp eq i32 %call49, 1
  br i1 %cmp50.not, label %if.end53, label %cleanup

if.end53:                                         ; preds = %if.then46
  %iv_set54 = getelementptr inbounds i8, i8* %call, i64 500
  %12 = bitcast i8* %iv_set54 to i32*
  store i32 1, i32* %12, align 4, !tbaa !56
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true40, %if.end53, %if.end44
  %key_set = getelementptr inbounds i8, i8* %call, i64 496
  %13 = bitcast i8* %key_set to i32*
  store i32 1, i32* %13, align 8, !tbaa !63
  br label %cleanup

if.else:                                          ; preds = %if.end
  %key_set56 = getelementptr inbounds i8, i8* %call, i64 496
  %14 = bitcast i8* %key_set56 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !63
  %tobool57.not = icmp eq i32 %15, 0
  br i1 %tobool57.not, label %if.else65, label %if.then58

if.then58:                                        ; preds = %if.else
  %ocb59 = getelementptr inbounds i8, i8* %call, i64 504
  %16 = bitcast i8* %ocb59 to %struct.ocb128_context*
  %ivlen60 = getelementptr inbounds i8, i8* %call, i64 744
  %17 = bitcast i8* %ivlen60 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !61
  %conv61 = sext i32 %18 to i64
  %taglen62 = getelementptr inbounds i8, i8* %call, i64 748
  %19 = bitcast i8* %taglen62 to i32*
  %20 = load i32, i32* %19, align 4, !tbaa !62
  %conv63 = sext i32 %20 to i64
  %call64 = tail call i32 @CRYPTO_ocb128_setiv(%struct.ocb128_context* noundef nonnull %16, i8* noundef %iv, i64 noundef %conv61, i64 noundef %conv63) #7
  br label %if.end70

if.else65:                                        ; preds = %if.else
  %iv66 = getelementptr inbounds i8, i8* %call, i64 680
  %21 = bitcast i8* %iv66 to i8**
  %22 = load i8*, i8** %21, align 8, !tbaa !60
  %ivlen67 = getelementptr inbounds i8, i8* %call, i64 744
  %23 = bitcast i8* %ivlen67 to i32*
  %24 = load i32, i32* %23, align 8, !tbaa !61
  %conv68 = sext i32 %24 to i64
  %call69 = tail call i8* @memcpy(i8* noundef %22, i8* noundef %iv, i64 noundef %conv68) #7
  br label %if.end70

if.end70:                                         ; preds = %if.else65, %if.then58
  %iv_set71 = getelementptr inbounds i8, i8* %call, i64 500
  %25 = bitcast i8* %iv_set71 to i32*
  store i32 1, i32* %25, align 4, !tbaa !56
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end70, %if.then46, %if.end20, %if.then5, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then5 ], [ 0, %if.end20 ], [ 0, %if.then46 ], [ 1, %if.end70 ], [ 1, %if.end55 ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 248}
!9 = !{!"", !6, i64 0, !10, i64 248, !6, i64 256}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !10, i64 736}
!16 = !{!"", !6, i64 0, !5, i64 248, !5, i64 252, !17, i64 256, !10, i64 696, !5, i64 704, !5, i64 708, !5, i64 712, !5, i64 716, !5, i64 720, !18, i64 728, !10, i64 736}
!17 = !{!"gcm128_context", !6, i64 0, !6, i64 16, !6, i64 32, !6, i64 48, !6, i64 64, !6, i64 80, !6, i64 96, !10, i64 352, !10, i64 360, !5, i64 368, !5, i64 372, !10, i64 376, !10, i64 384, !6, i64 392}
!18 = !{!"long", !6, i64 0}
!19 = !{!16, !5, i64 252}
!20 = !{!16, !10, i64 696}
!21 = !{!16, !5, i64 704}
!22 = !{!16, !5, i64 248}
!23 = !{!16, !5, i64 720}
!24 = !{!25, !5, i64 16}
!25 = !{!"evp_cipher_ctx_st", !10, i64 0, !10, i64 8, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 40, !6, i64 56, !5, i64 88, !10, i64 96, !5, i64 104, !18, i64 112, !10, i64 120, !5, i64 128, !5, i64 132, !6, i64 136, !10, i64 168, !10, i64 176}
!26 = !{!16, !10, i64 616}
!27 = !{!16, !5, i64 624}
!28 = !{!16, !10, i64 640}
!29 = !{!16, !5, i64 708}
!30 = !{!25, !10, i64 0}
!31 = !{!16, !5, i64 712}
!32 = !{!16, !18, i64 728}
!33 = distinct !{!33, !13}
!34 = !{!25, !5, i64 104}
!35 = !{!36, !10, i64 512}
!36 = !{!"", !6, i64 0, !6, i64 248, !37, i64 496, !10, i64 528}
!37 = !{!"xts128_context", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!38 = !{!36, !10, i64 528}
!39 = !{!36, !10, i64 520}
!40 = !{!36, !10, i64 496}
!41 = !{!36, !10, i64 504}
!42 = !{!43, !5, i64 268}
!43 = !{!"", !6, i64 0, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !44, i64 280, !10, i64 336}
!44 = !{!"ccm128_context", !6, i64 0, !6, i64 16, !45, i64 32, !10, i64 40, !10, i64 48}
!45 = !{!"long long", !6, i64 0}
!46 = !{!43, !5, i64 264}
!47 = !{!43, !10, i64 336}
!48 = !{!43, !5, i64 248}
!49 = !{!43, !5, i64 252}
!50 = !{!43, !5, i64 272}
!51 = !{!43, !5, i64 260}
!52 = !{!43, !5, i64 256}
!53 = !{!43, !10, i64 328}
!54 = !{!55, !10, i64 248}
!55 = !{!"", !6, i64 0, !10, i64 248}
!56 = !{!57, !5, i64 500}
!57 = !{!"", !6, i64 0, !6, i64 248, !5, i64 496, !5, i64 500, !58, i64 504, !10, i64 680, !6, i64 688, !6, i64 704, !6, i64 720, !5, i64 736, !5, i64 740, !5, i64 744, !5, i64 748}
!58 = !{!"ocb128_context", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !18, i64 40, !18, i64 48, !6, i64 56, !6, i64 72, !10, i64 88, !59, i64 96}
!59 = !{!"", !45, i64 0, !45, i64 8, !6, i64 16, !6, i64 32, !6, i64 48, !6, i64 64}
!60 = !{!57, !10, i64 680}
!61 = !{!57, !5, i64 744}
!62 = !{!57, !5, i64 748}
!63 = !{!57, !5, i64 496}
!64 = !{!57, !5, i64 736}
!65 = !{!57, !5, i64 740}
