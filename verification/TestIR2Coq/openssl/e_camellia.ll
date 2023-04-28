; ModuleID = 'crypto/evp/e_camellia.c'
source_filename = "crypto/evp/e_camellia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.camellia_key_st = type { %union.anon.0, i32 }
%union.anon.0 = type { double, [264 x i8] }

@camellia_128_cbc = internal constant %struct.evp_cipher_st { i32 751, i32 16, i32 16, i32 16, i64 2, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_128_ecb = internal constant %struct.evp_cipher_st { i32 754, i32 16, i32 16, i32 0, i64 1, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_128_ofb = internal constant %struct.evp_cipher_st { i32 766, i32 1, i32 16, i32 16, i64 4, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_128_cfb = internal constant %struct.evp_cipher_st { i32 757, i32 1, i32 16, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_cfb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_128_cfb1 = internal constant %struct.evp_cipher_st { i32 760, i32 1, i32 16, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_128_cfb8 = internal constant %struct.evp_cipher_st { i32 763, i32 1, i32 16, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_128_ctr = internal constant %struct.evp_cipher_st { i32 963, i32 1, i32 16, i32 16, i64 5, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_ctr_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_192_cbc = internal constant %struct.evp_cipher_st { i32 752, i32 16, i32 24, i32 16, i64 2, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_192_ecb = internal constant %struct.evp_cipher_st { i32 755, i32 16, i32 24, i32 0, i64 1, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_192_ofb = internal constant %struct.evp_cipher_st { i32 767, i32 1, i32 24, i32 16, i64 4, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_192_cfb = internal constant %struct.evp_cipher_st { i32 758, i32 1, i32 24, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_cfb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_192_cfb1 = internal constant %struct.evp_cipher_st { i32 761, i32 1, i32 24, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_192_cfb8 = internal constant %struct.evp_cipher_st { i32 764, i32 1, i32 24, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_192_ctr = internal constant %struct.evp_cipher_st { i32 967, i32 1, i32 24, i32 16, i64 5, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_ctr_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_256_cbc = internal constant %struct.evp_cipher_st { i32 753, i32 16, i32 32, i32 16, i64 2, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_256_ecb = internal constant %struct.evp_cipher_st { i32 756, i32 16, i32 32, i32 0, i64 1, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_256_ofb = internal constant %struct.evp_cipher_st { i32 768, i32 1, i32 32, i32 16, i64 4, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_256_cfb = internal constant %struct.evp_cipher_st { i32 759, i32 1, i32 32, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_cfb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_256_cfb1 = internal constant %struct.evp_cipher_st { i32 762, i32 1, i32 32, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_256_cfb8 = internal constant %struct.evp_cipher_st { i32 765, i32 1, i32 32, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@camellia_256_ctr = internal constant %struct.evp_cipher_st { i32 971, i32 1, i32 32, i32 16, i64 5, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @camellia_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @camellia_ctr_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 296, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@.str = private unnamed_addr constant [24 x i8] c"crypto/evp/e_camellia.c\00", align 1
@__func__.camellia_init_key = private unnamed_addr constant [18 x i8] c"camellia_init_key\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_128_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_128_cbc
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_128_ecb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_128_ecb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_128_ofb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_128_ofb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_128_cfb128() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_128_cfb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_128_cfb1() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_128_cfb1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_128_cfb8() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_128_cfb8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_128_ctr() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_128_ctr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_192_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_192_cbc
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_192_ecb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_192_ecb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_192_ofb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_192_ofb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_192_cfb128() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_192_cfb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_192_cfb1() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_192_cfb1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_192_cfb8() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_192_cfb8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_192_ctr() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_192_ctr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_256_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_256_cbc
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_256_ecb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_256_ecb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_256_ofb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_256_ofb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_256_cfb128() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_256_cfb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_256_cfb1() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_256_cfb1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_256_cfb8() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_256_cfb8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_camellia_256_ctr() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @camellia_256_ctr
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @camellia_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* nocapture noundef readnone %iv, i32 noundef %enc) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %call1 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %mul = shl nsw i32 %call1, 3
  %ks = bitcast i8* %call to %struct.camellia_key_st*
  %call2 = tail call i32 @Camellia_set_key(i8* noundef %key, i32 noundef %mul, %struct.camellia_key_st* noundef %ks) #4
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.camellia_init_key, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 157, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %call4 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call3) #4
  %cmp6 = icmp eq i32 %call4, 2
  %0 = add i32 %call4, -3
  %1 = icmp ult i32 %0, -2
  %tobool = icmp ne i32 %enc, 0
  %or.cond17 = or i1 %tobool, %1
  %block9 = getelementptr inbounds i8, i8* %call, i64 280
  %2 = bitcast i8* %block9 to void (i8*, i8*, i8*)**
  br i1 %or.cond17, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.camellia_key_st*)* @Camellia_decrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %2, align 8, !tbaa !4
  %cond = select i1 %cmp6, void (i8*, i8*, i64, i8*, i8*, i32)* bitcast (void (i8*, i8*, i64, %struct.camellia_key_st*, i8*, i32)* @Camellia_cbc_encrypt to void (i8*, i8*, i64, i8*, i8*, i32)*), void (i8*, i8*, i64, i8*, i8*, i32)* null
  %stream = getelementptr inbounds i8, i8* %call, i64 288
  %cbc = bitcast i8* %stream to void (i8*, i8*, i64, i8*, i8*, i32)**
  store void (i8*, i8*, i64, i8*, i8*, i32)* %cond, void (i8*, i8*, i64, i8*, i8*, i32)** %cbc, align 8, !tbaa !11
  br label %cleanup

if.else:                                          ; preds = %if.end
  store void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.camellia_key_st*)* @Camellia_encrypt to void (i8*, i8*, i8*)*), void (i8*, i8*, i8*)** %2, align 8, !tbaa !4
  %cond11 = select i1 %cmp6, void (i8*, i8*, i64, i8*, i8*, i32)* bitcast (void (i8*, i8*, i64, %struct.camellia_key_st*, i8*, i32)* @Camellia_cbc_encrypt to void (i8*, i8*, i64, i8*, i8*, i32)*), void (i8*, i8*, i64, i8*, i8*, i32)* null
  %stream12 = getelementptr inbounds i8, i8* %call, i64 288
  %cbc13 = bitcast i8* %stream12 to void (i8*, i8*, i64, i8*, i8*, i32)**
  store void (i8*, i8*, i64, i8*, i8*, i32)* %cond11, void (i8*, i8*, i64, i8*, i8*, i32)** %cbc13, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.else ], [ 1, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @camellia_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %stream = getelementptr inbounds i8, i8* %call, i64 288
  %cbc = bitcast i8* %stream to void (i8*, i8*, i64, i8*, i8*, i32)**
  %0 = load void (i8*, i8*, i64, i8*, i8*, i32)*, void (i8*, i8*, i64, i8*, i8*, i32)** %cbc, align 8, !tbaa !11
  %tobool.not = icmp eq void (i8*, i8*, i64, i8*, i8*, i32)* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call3 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  tail call void %0(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef nonnull %call, i8* noundef nonnull %arraydecay, i32 noundef %call3) #4
  br label %if.end15

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %tobool5.not = icmp eq i32 %call4, 0
  %arraydecay13 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %block14 = getelementptr inbounds i8, i8* %call, i64 280
  %1 = bitcast i8* %block14 to void (i8*, i8*, i8*)**
  %2 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %1, align 8, !tbaa !4
  br i1 %tobool5.not, label %if.else10, label %if.then6

if.then6:                                         ; preds = %if.else
  tail call void @CRYPTO_cbc128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef nonnull %call, i8* noundef nonnull %arraydecay13, void (i8*, i8*, i8*)* noundef %2) #4
  br label %if.end15

if.else10:                                        ; preds = %if.else
  tail call void @CRYPTO_cbc128_decrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef nonnull %call, i8* noundef nonnull %arraydecay13, void (i8*, i8*, i8*)* noundef %2) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then6, %if.else10, %if.then
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare i32 @Camellia_set_key(i8* noundef, i32 noundef, %struct.camellia_key_st* noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare void @Camellia_decrypt(i8* noundef, i8* noundef, %struct.camellia_key_st* noundef) #3

declare void @Camellia_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.camellia_key_st* noundef, i8* noundef, i32 noundef) #3

declare void @Camellia_encrypt(i8* noundef, i8* noundef, %struct.camellia_key_st* noundef) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_cbc128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #3

declare void @CRYPTO_cbc128_decrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @camellia_ecb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #1 {
entry:
  %call = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %conv = sext i32 %call to i64
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %cmp = icmp ugt i64 %conv, %len
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %len, %conv
  %block = getelementptr inbounds i8, i8* %call1, i64 280
  %0 = bitcast i8* %block to void (i8*, i8*, i8*)**
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %i.020 = phi i64 [ 0, %if.end ], [ %add, %for.body ]
  %1 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %0, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %i.020
  %add.ptr5 = getelementptr inbounds i8, i8* %out, i64 %i.020
  tail call void %1(i8* noundef %add.ptr, i8* noundef %add.ptr5, i8* noundef %call1) #4
  %add = add i64 %i.020, %conv
  %cmp3.not = icmp ugt i64 %add, %sub
  br i1 %cmp3.not, label %cleanup, label %for.body, !llvm.loop !12

cleanup:                                          ; preds = %for.body, %entry
  ret i32 1
}

declare i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @camellia_ofb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #1 {
entry:
  %num = alloca i32, align 4
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %call1 = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  store i32 %call1, i32* %num, align 4, !tbaa !14
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %block = getelementptr inbounds i8, i8* %call, i64 280
  %1 = bitcast i8* %block to void (i8*, i8*, i8*)**
  %2 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %1, align 8, !tbaa !4
  call void @CRYPTO_ofb128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %call, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, void (i8*, i8*, i8*)* noundef %2) #4
  %3 = load i32, i32* %num, align 4, !tbaa !14
  %call2 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %3) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 1
}

declare i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_ofb128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i32* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @camellia_cfb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #1 {
entry:
  %num = alloca i32, align 4
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %call1 = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  store i32 %call1, i32* %num, align 4, !tbaa !14
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call2 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %block = getelementptr inbounds i8, i8* %call, i64 280
  %1 = bitcast i8* %block to void (i8*, i8*, i8*)**
  %2 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %1, align 8, !tbaa !4
  call void @CRYPTO_cfb128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %call, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call2, void (i8*, i8*, i8*)* noundef %2) #4
  %3 = load i32, i32* %num, align 4, !tbaa !14
  %call3 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %3) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 1
}

declare void @CRYPTO_cfb128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i32* noundef, i32 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @camellia_cfb1_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #1 {
entry:
  %num = alloca i32, align 4
  %num5 = alloca i32, align 4
  %num16 = alloca i32, align 4
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %call1 = tail call i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef 8192) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %cmp54 = icmp ugt i64 %len, 1152921504606846975
  br i1 %cmp54, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %0 = bitcast i32* %num5 to i8*
  %arraydecay9 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %block11 = getelementptr inbounds i8, i8* %call, i64 280
  %1 = bitcast i8* %block11 to void (i8*, i8*, i8*)**
  br label %while.body

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  %call2 = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  store i32 %call2, i32* %num, align 4, !tbaa !14
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call3 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %block = getelementptr inbounds i8, i8* %call, i64 280
  %3 = bitcast i8* %block to void (i8*, i8*, i8*)**
  %4 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %3, align 8, !tbaa !4
  call void @CRYPTO_cfb128_1_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %call, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call3, void (i8*, i8*, i8*)* noundef %4) #4
  %5 = load i32, i32* %num, align 4, !tbaa !14
  %call4 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %5) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  br label %cleanup

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %len.addr.057 = phi i64 [ %len, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.056 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr13, %while.body ]
  %out.addr.055 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %call6 = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  store i32 %call6, i32* %num5, align 4, !tbaa !14
  %call10 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %6 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %1, align 8, !tbaa !4
  call void @CRYPTO_cfb128_1_encrypt(i8* noundef %in.addr.056, i8* noundef %out.addr.055, i64 noundef -9223372036854775808, i8* noundef %call, i8* noundef nonnull %arraydecay9, i32* noundef nonnull %num5, i32 noundef %call10, void (i8*, i8*, i8*)* noundef %6) #4
  %7 = load i32, i32* %num5, align 4, !tbaa !14
  %call12 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %7) #4
  %sub = add i64 %len.addr.057, -1152921504606846976
  %add.ptr = getelementptr inbounds i8, i8* %out.addr.055, i64 1152921504606846976
  %add.ptr13 = getelementptr inbounds i8, i8* %in.addr.056, i64 1152921504606846976
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  %cmp = icmp ugt i64 %sub, 1152921504606846975
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !15

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %out.addr.0.lcssa = phi i8* [ %out, %while.cond.preheader ], [ %add.ptr, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %while.cond.preheader ], [ %add.ptr13, %while.body ]
  %len.addr.0.lcssa = phi i64 [ %len, %while.cond.preheader ], [ %sub, %while.body ]
  %tobool14.not = icmp eq i64 %len.addr.0.lcssa, 0
  br i1 %tobool14.not, label %cleanup, label %if.then15

if.then15:                                        ; preds = %while.end
  %8 = bitcast i32* %num16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #5
  %call17 = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  store i32 %call17, i32* %num16, align 4, !tbaa !14
  %mul = shl nuw nsw i64 %len.addr.0.lcssa, 3
  %arraydecay20 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call21 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %block22 = getelementptr inbounds i8, i8* %call, i64 280
  %9 = bitcast i8* %block22 to void (i8*, i8*, i8*)**
  %10 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %9, align 8, !tbaa !4
  call void @CRYPTO_cfb128_1_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %mul, i8* noundef %call, i8* noundef nonnull %arraydecay20, i32* noundef nonnull %num16, i32 noundef %call21, void (i8*, i8*, i8*)* noundef %10) #4
  %11 = load i32, i32* %num16, align 4, !tbaa !14
  %call23 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %11) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then15, %if.then
  ret i32 1
}

declare i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @CRYPTO_cfb128_1_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i32* noundef, i32 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @camellia_cfb8_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #1 {
entry:
  %num = alloca i32, align 4
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %call1 = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  store i32 %call1, i32* %num, align 4, !tbaa !14
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call2 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %block = getelementptr inbounds i8, i8* %call, i64 280
  %1 = bitcast i8* %block to void (i8*, i8*, i8*)**
  %2 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %1, align 8, !tbaa !4
  call void @CRYPTO_cfb128_8_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %call, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call2, void (i8*, i8*, i8*)* noundef %2) #4
  %3 = load i32, i32* %num, align 4, !tbaa !14
  %call3 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %3) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 1
}

declare void @CRYPTO_cfb128_8_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i32* noundef, i32 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @camellia_ctr_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #1 {
entry:
  %num = alloca i32, align 4
  %call = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i32 %call, i32* %num, align 4, !tbaa !14
  %stream = getelementptr inbounds i8, i8* %call1, i64 288
  %ctr = bitcast i8* %stream to void (i8*, i8*, i64, i8*, i8*)**
  %1 = load void (i8*, i8*, i64, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*)** %ctr, align 8, !tbaa !11
  %tobool.not = icmp eq void (i8*, i8*, i64, i8*, i8*)* %1, null
  %arraydecay8 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call9 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load void (i8*, i8*, i64, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*)** %ctr, align 8, !tbaa !11
  call void @CRYPTO_ctr128_encrypt_ctr32(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef nonnull %call1, i8* noundef nonnull %arraydecay8, i8* noundef %call9, i32* noundef nonnull %num, void (i8*, i8*, i64, i8*, i8*)* noundef %2) #4
  br label %if.end10

if.else:                                          ; preds = %if.end
  %block = getelementptr inbounds i8, i8* %call1, i64 280
  %3 = bitcast i8* %block to void (i8*, i8*, i8*)**
  %4 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %3, align 8, !tbaa !4
  call void @CRYPTO_ctr128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef nonnull %call1, i8* noundef nonnull %arraydecay8, i8* noundef %call9, i32* noundef nonnull %num, void (i8*, i8*, i8*)* noundef %4) #4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  %5 = load i32, i32* %num, align 4, !tbaa !14
  %call11 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %5) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare void @CRYPTO_ctr128_encrypt_ctr32(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i32* noundef, void (i8*, i8*, i64, i8*, i8*)* noundef) local_unnamed_addr #3

declare i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_ctr128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i32* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 280}
!5 = !{!"", !6, i64 0, !10, i64 280, !7, i64 288}
!6 = !{!"camellia_key_st", !7, i64 0, !9, i64 272}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!9, !9, i64 0}
!15 = distinct !{!15, !13}
