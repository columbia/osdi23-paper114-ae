; ModuleID = 'crypto/evp/e_aria.c'
source_filename = "crypto/evp/e_aria.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.aria_key_st = type { [17 x %union.ARIA_u128], i32 }
%union.ARIA_u128 = type { [4 x i32] }
%struct.gcm128_context = type { %union.anon.1, %union.anon.1, %union.anon.1, %union.anon.1, %union.anon.1, %union.anon.1, [16 x %struct.u128], void (i64*, %struct.u128*)*, void (i64*, %struct.u128*, i8*, i64)*, i32, i32, void (i8*, i8*, i8*)*, i8*, [48 x i8] }
%union.anon.1 = type { [2 x i64] }
%struct.u128 = type { i64, i64 }
%struct.ccm128_context = type { %union.anon.3, %union.anon.3, i64, void (i8*, i8*, i8*)*, i8* }
%union.anon.3 = type { [2 x i64] }

@aria_128_cbc = internal constant %struct.evp_cipher_st { i32 1066, i32 16, i32 16, i32 16, i64 2, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_128_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_128_cfb128 = internal constant %struct.evp_cipher_st { i32 1067, i32 1, i32 16, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_128_cfb128_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_128_ofb = internal constant %struct.evp_cipher_st { i32 1068, i32 1, i32 16, i32 16, i64 4, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_128_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_128_ecb = internal constant %struct.evp_cipher_st { i32 1065, i32 16, i32 16, i32 0, i64 1, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_128_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_192_cbc = internal constant %struct.evp_cipher_st { i32 1071, i32 16, i32 24, i32 16, i64 2, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_192_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_192_cfb128 = internal constant %struct.evp_cipher_st { i32 1072, i32 1, i32 24, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_192_cfb128_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_192_ofb = internal constant %struct.evp_cipher_st { i32 1073, i32 1, i32 24, i32 16, i64 4, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_192_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_192_ecb = internal constant %struct.evp_cipher_st { i32 1070, i32 16, i32 24, i32 0, i64 1, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_192_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_256_cbc = internal constant %struct.evp_cipher_st { i32 1076, i32 16, i32 32, i32 16, i64 2, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_256_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_256_cfb128 = internal constant %struct.evp_cipher_st { i32 1077, i32 1, i32 32, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_256_cfb128_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_256_ofb = internal constant %struct.evp_cipher_st { i32 1078, i32 1, i32 32, i32 16, i64 4, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_256_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_256_ecb = internal constant %struct.evp_cipher_st { i32 1075, i32 16, i32 32, i32 0, i64 1, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_256_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_128_cfb1 = internal constant %struct.evp_cipher_st { i32 1080, i32 1, i32 16, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_128_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_192_cfb1 = internal constant %struct.evp_cipher_st { i32 1081, i32 1, i32 24, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_192_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_256_cfb1 = internal constant %struct.evp_cipher_st { i32 1082, i32 1, i32 32, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_256_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_128_cfb8 = internal constant %struct.evp_cipher_st { i32 1083, i32 1, i32 16, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_128_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_192_cfb8 = internal constant %struct.evp_cipher_st { i32 1084, i32 1, i32 24, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_192_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_256_cfb8 = internal constant %struct.evp_cipher_st { i32 1085, i32 1, i32 32, i32 16, i64 3, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_256_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_128_ctr = internal constant %struct.evp_cipher_st { i32 1069, i32 1, i32 16, i32 16, i64 5, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_ctr_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_192_ctr = internal constant %struct.evp_cipher_st { i32 1074, i32 1, i32 24, i32 16, i64 5, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_ctr_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_256_ctr = internal constant %struct.evp_cipher_st { i32 1079, i32 1, i32 32, i32 16, i64 5, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_ctr_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 276, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_128_gcm = internal constant %struct.evp_cipher_st { i32 1123, i32 1, i32 16, i32 12, i64 3148918, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_gcm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_gcm_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aria_gcm_cleanup, i32 752, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aria_gcm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_192_gcm = internal constant %struct.evp_cipher_st { i32 1124, i32 1, i32 24, i32 12, i64 3148918, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_gcm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_gcm_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aria_gcm_cleanup, i32 752, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aria_gcm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_256_gcm = internal constant %struct.evp_cipher_st { i32 1125, i32 1, i32 32, i32 12, i64 3148918, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_gcm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_gcm_cipher, i32 (%struct.evp_cipher_ctx_st*)* @aria_gcm_cleanup, i32 752, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aria_gcm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_128_ccm = internal constant %struct.evp_cipher_st { i32 1120, i32 1, i32 16, i32 12, i64 3148919, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_ccm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_ccm_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 376, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aria_ccm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_192_ccm = internal constant %struct.evp_cipher_st { i32 1121, i32 1, i32 24, i32 12, i64 3148919, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_ccm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_ccm_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 376, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aria_ccm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aria_256_ccm = internal constant %struct.evp_cipher_st { i32 1122, i32 1, i32 32, i32 12, i64 3148919, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aria_ccm_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aria_ccm_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 376, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aria_ccm_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@.str = private unnamed_addr constant [20 x i8] c"crypto/evp/e_aria.c\00", align 1
@__func__.aria_init_key = private unnamed_addr constant [14 x i8] c"aria_init_key\00", align 1
@__func__.aria_gcm_init_key = private unnamed_addr constant [18 x i8] c"aria_gcm_init_key\00", align 1
@__func__.aria_gcm_ctrl = private unnamed_addr constant [14 x i8] c"aria_gcm_ctrl\00", align 1
@__func__.aria_ccm_init_key = private unnamed_addr constant [18 x i8] c"aria_ccm_init_key\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_128_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_128_cbc
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_128_cfb128() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_128_cfb128
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_128_ofb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_128_ofb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_128_ecb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_128_ecb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_192_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_192_cbc
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_192_cfb128() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_192_cfb128
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_192_ofb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_192_ofb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_192_ecb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_192_ecb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_256_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_256_cbc
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_256_cfb128() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_256_cfb128
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_256_ofb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_256_ofb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_256_ecb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_256_ecb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_128_cfb1() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_128_cfb1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_192_cfb1() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_192_cfb1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_256_cfb1() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_256_cfb1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_128_cfb8() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_128_cfb8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_192_cfb8() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_192_cfb8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_256_cfb8() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_256_cfb8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_128_ctr() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_128_ctr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_192_ctr() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_192_ctr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_256_ctr() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_256_ctr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_128_gcm() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_128_gcm
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_192_gcm() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_192_gcm
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_256_gcm() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_256_gcm
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_128_ccm() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_128_ccm
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_192_ccm() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_192_ccm
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_aria_256_ccm() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @aria_256_ccm
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* nocapture noundef readnone %iv, i32 noundef %enc) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %call1 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call) #6
  %tobool.not = icmp ne i32 %enc, 0
  %0 = add i32 %call1, -3
  %1 = icmp ult i32 %0, -2
  %or.cond = select i1 %tobool.not, i1 true, i1 %1
  %call3 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %mul = shl nsw i32 %call3, 3
  %call4 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %2 = bitcast i8* %call4 to %struct.aria_key_st*
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @ossl_aria_set_encrypt_key(i8* noundef %key, i32 noundef %mul, %struct.aria_key_st* noundef %2) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %call9 = tail call i32 @ossl_aria_set_decrypt_key(i8* noundef %key, i32 noundef %mul, %struct.aria_key_st* noundef %2) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call5, %if.then ], [ %call9, %if.else ]
  %cmp10 = icmp slt i32 %ret.0, 0
  br i1 %cmp10, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.aria_init_key, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 176, i8* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_128_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %cmp20 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp20, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.023 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.022 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.021 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr2, %while.body ]
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call to %struct.aria_key_st*
  %call1 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  tail call fastcc void @aria_cbc_encrypt(i8* noundef %in.addr.022, i8* noundef %out.addr.021, i64 noundef 4611686018427387904, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32 noundef %call1) #7
  %sub = add i64 %inl.addr.023, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.022, i64 4611686018427387904
  %add.ptr2 = getelementptr inbounds i8, i8* %out.addr.021, i64 4611686018427387904
  %cmp = icmp slt i64 %inl.addr.023, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !4

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr2, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %call3 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks4 = bitcast i8* %call3 to %struct.aria_key_st*
  %arraydecay6 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call7 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  tail call fastcc void @aria_cbc_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.aria_key_st* noundef %ks4, i8* noundef nonnull %arraydecay6, i32 noundef %call7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

declare i32 @EVP_CIPHER_set_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #2

declare i32 @EVP_CIPHER_get_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_aria_set_encrypt_key(i8* noundef, i32 noundef, %struct.aria_key_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_aria_set_decrypt_key(i8* noundef, i32 noundef, %struct.aria_key_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @aria_cbc_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, %struct.aria_key_st* noundef %key, i8* noundef %ivec, i32 noundef %enc) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %enc, 0
  %0 = bitcast %struct.aria_key_st* %key to i8*
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @CRYPTO_cbc128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %0, i8* noundef %ivec, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aria_key_st*)* @ossl_aria_encrypt to void (i8*, i8*, i8*)*)) #6
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @CRYPTO_cbc128_decrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %0, i8* noundef %ivec, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aria_key_st*)* @ossl_aria_encrypt to void (i8*, i8*, i8*)*)) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_cbc128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #2

declare void @ossl_aria_encrypt(i8* noundef, i8* noundef, %struct.aria_key_st* noundef) #2

declare void @CRYPTO_cbc128_decrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_128_cfb128_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %tobool29.not = icmp eq i64 %inl, 0
  br i1 %tobool29.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp = icmp ult i64 %inl, 4611686018427387904
  %spec.select = select i1 %cmp, i64 %inl, i64 4611686018427387904
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %chunk.133 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %spec.select28, %while.body ]
  %inl.addr.032 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.031 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.030 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr5, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call2 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call2 to %struct.aria_key_st*
  %call3 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  call fastcc void @aria_cfb128_encrypt(i8* noundef %in.addr.031, i8* noundef %out.addr.030, i64 noundef %chunk.133, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call3) #7
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call4 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #6
  %sub = sub i64 %inl.addr.032, %chunk.133
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.031, i64 %chunk.133
  %add.ptr5 = getelementptr inbounds i8, i8* %out.addr.030, i64 %chunk.133
  %cmp6 = icmp ult i64 %sub, %chunk.133
  %spec.select28 = select i1 %cmp6, i64 %sub, i64 %chunk.133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !10

while.end:                                        ; preds = %while.body, %entry
  ret i32 1
}

declare i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @aria_cfb128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %length, %struct.aria_key_st* noundef %key, i8* noundef %ivec, i32* noundef %num, i32 noundef %enc) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.aria_key_st* %key to i8*
  tail call void @CRYPTO_cfb128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %length, i8* noundef %0, i8* noundef %ivec, i32* noundef %num, i32 noundef %enc, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aria_key_st*)* @ossl_aria_encrypt to void (i8*, i8*, i8*)*)) #6
  ret void
}

declare i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_cfb128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i32* noundef, i32 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_128_ofb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %num4 = alloca i32, align 4
  %cmp25 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp25, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.028 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.027 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.026 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr3, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call1 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call1 to %struct.aria_key_st*
  call fastcc void @aria_ofb128_encrypt(i8* noundef %in.addr.027, i8* noundef %out.addr.026, i64 noundef 4611686018427387904, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num) #7
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call2 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #6
  %sub = add i64 %inl.addr.028, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.027, i64 4611686018427387904
  %add.ptr3 = getelementptr inbounds i8, i8* %out.addr.026, i64 4611686018427387904
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  %cmp = icmp slt i64 %inl.addr.028, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !11

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr3, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %2 = bitcast i32* %num4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  %call5 = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call5, i32* %num4, align 4, !tbaa !6
  %call6 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks7 = bitcast i8* %call6 to %struct.aria_key_st*
  %arraydecay9 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  call fastcc void @aria_ofb128_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.aria_key_st* noundef %ks7, i8* noundef nonnull %arraydecay9, i32* noundef nonnull %num4) #7
  %3 = load i32, i32* %num4, align 4, !tbaa !6
  %call10 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @aria_ofb128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %length, %struct.aria_key_st* noundef %key, i8* noundef %ivec, i32* noundef %num) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.aria_key_st* %key to i8*
  tail call void @CRYPTO_ofb128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %length, i8* noundef %0, i8* noundef %ivec, i32* noundef %num, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aria_key_st*)* @ossl_aria_encrypt to void (i8*, i8*, i8*)*)) #6
  ret void
}

declare void @CRYPTO_ofb128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i32* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_128_ecb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 1
  %0 = load i32, i32* %block_size, align 4, !tbaa !12
  %conv = sext i32 %0 to i64
  %cmp = icmp ugt i64 %conv, %inl
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %inl, %conv
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %i.019 = phi i64 [ 0, %if.end ], [ %add, %for.body ]
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %i.019
  %add.ptr4 = getelementptr inbounds i8, i8* %out, i64 %i.019
  %call5 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call5 to %struct.aria_key_st*
  %call6 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  tail call fastcc void @aria_ecb_encrypt(i8* noundef %add.ptr, i8* noundef %add.ptr4, %struct.aria_key_st* noundef %ks) #7
  %add = add i64 %i.019, %conv
  %cmp2.not = icmp ugt i64 %add, %sub
  br i1 %cmp2.not, label %cleanup, label %for.body, !llvm.loop !16

cleanup:                                          ; preds = %for.body, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @aria_ecb_encrypt(i8* noundef %in, i8* noundef %out, %struct.aria_key_st* noundef %key) unnamed_addr #1 {
entry:
  tail call void @ossl_aria_encrypt(i8* noundef %in, i8* noundef %out, %struct.aria_key_st* noundef %key) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_192_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %cmp20 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp20, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.023 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.022 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.021 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr2, %while.body ]
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call to %struct.aria_key_st*
  %call1 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  tail call fastcc void @aria_cbc_encrypt(i8* noundef %in.addr.022, i8* noundef %out.addr.021, i64 noundef 4611686018427387904, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32 noundef %call1) #7
  %sub = add i64 %inl.addr.023, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.022, i64 4611686018427387904
  %add.ptr2 = getelementptr inbounds i8, i8* %out.addr.021, i64 4611686018427387904
  %cmp = icmp slt i64 %inl.addr.023, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !17

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr2, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %call3 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks4 = bitcast i8* %call3 to %struct.aria_key_st*
  %arraydecay6 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call7 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  tail call fastcc void @aria_cbc_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.aria_key_st* noundef %ks4, i8* noundef nonnull %arraydecay6, i32 noundef %call7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_192_cfb128_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %tobool29.not = icmp eq i64 %inl, 0
  br i1 %tobool29.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp = icmp ult i64 %inl, 4611686018427387904
  %spec.select = select i1 %cmp, i64 %inl, i64 4611686018427387904
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %chunk.133 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %spec.select28, %while.body ]
  %inl.addr.032 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.031 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.030 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr5, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call2 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call2 to %struct.aria_key_st*
  %call3 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  call fastcc void @aria_cfb128_encrypt(i8* noundef %in.addr.031, i8* noundef %out.addr.030, i64 noundef %chunk.133, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call3) #7
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call4 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #6
  %sub = sub i64 %inl.addr.032, %chunk.133
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.031, i64 %chunk.133
  %add.ptr5 = getelementptr inbounds i8, i8* %out.addr.030, i64 %chunk.133
  %cmp6 = icmp ult i64 %sub, %chunk.133
  %spec.select28 = select i1 %cmp6, i64 %sub, i64 %chunk.133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !18

while.end:                                        ; preds = %while.body, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_192_ofb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %num4 = alloca i32, align 4
  %cmp25 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp25, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.028 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.027 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.026 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr3, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call1 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call1 to %struct.aria_key_st*
  call fastcc void @aria_ofb128_encrypt(i8* noundef %in.addr.027, i8* noundef %out.addr.026, i64 noundef 4611686018427387904, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num) #7
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call2 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #6
  %sub = add i64 %inl.addr.028, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.027, i64 4611686018427387904
  %add.ptr3 = getelementptr inbounds i8, i8* %out.addr.026, i64 4611686018427387904
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  %cmp = icmp slt i64 %inl.addr.028, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !19

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr3, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %2 = bitcast i32* %num4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  %call5 = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call5, i32* %num4, align 4, !tbaa !6
  %call6 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks7 = bitcast i8* %call6 to %struct.aria_key_st*
  %arraydecay9 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  call fastcc void @aria_ofb128_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.aria_key_st* noundef %ks7, i8* noundef nonnull %arraydecay9, i32* noundef nonnull %num4) #7
  %3 = load i32, i32* %num4, align 4, !tbaa !6
  %call10 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_192_ecb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 1
  %0 = load i32, i32* %block_size, align 4, !tbaa !12
  %conv = sext i32 %0 to i64
  %cmp = icmp ugt i64 %conv, %inl
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %inl, %conv
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %i.019 = phi i64 [ 0, %if.end ], [ %add, %for.body ]
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %i.019
  %add.ptr4 = getelementptr inbounds i8, i8* %out, i64 %i.019
  %call5 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call5 to %struct.aria_key_st*
  %call6 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  tail call fastcc void @aria_ecb_encrypt(i8* noundef %add.ptr, i8* noundef %add.ptr4, %struct.aria_key_st* noundef %ks) #7
  %add = add i64 %i.019, %conv
  %cmp2.not = icmp ugt i64 %add, %sub
  br i1 %cmp2.not, label %cleanup, label %for.body, !llvm.loop !20

cleanup:                                          ; preds = %for.body, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_256_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %cmp20 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp20, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.023 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.022 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.021 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr2, %while.body ]
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call to %struct.aria_key_st*
  %call1 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  tail call fastcc void @aria_cbc_encrypt(i8* noundef %in.addr.022, i8* noundef %out.addr.021, i64 noundef 4611686018427387904, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32 noundef %call1) #7
  %sub = add i64 %inl.addr.023, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.022, i64 4611686018427387904
  %add.ptr2 = getelementptr inbounds i8, i8* %out.addr.021, i64 4611686018427387904
  %cmp = icmp slt i64 %inl.addr.023, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !21

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr2, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %call3 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks4 = bitcast i8* %call3 to %struct.aria_key_st*
  %arraydecay6 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call7 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  tail call fastcc void @aria_cbc_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.aria_key_st* noundef %ks4, i8* noundef nonnull %arraydecay6, i32 noundef %call7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_256_cfb128_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %tobool29.not = icmp eq i64 %inl, 0
  br i1 %tobool29.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp = icmp ult i64 %inl, 4611686018427387904
  %spec.select = select i1 %cmp, i64 %inl, i64 4611686018427387904
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %chunk.133 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %spec.select28, %while.body ]
  %inl.addr.032 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.031 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.030 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr5, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call2 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call2 to %struct.aria_key_st*
  %call3 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  call fastcc void @aria_cfb128_encrypt(i8* noundef %in.addr.031, i8* noundef %out.addr.030, i64 noundef %chunk.133, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call3) #7
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call4 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #6
  %sub = sub i64 %inl.addr.032, %chunk.133
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.031, i64 %chunk.133
  %add.ptr5 = getelementptr inbounds i8, i8* %out.addr.030, i64 %chunk.133
  %cmp6 = icmp ult i64 %sub, %chunk.133
  %spec.select28 = select i1 %cmp6, i64 %sub, i64 %chunk.133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !22

while.end:                                        ; preds = %while.body, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_256_ofb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %num4 = alloca i32, align 4
  %cmp25 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp25, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.028 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.027 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.026 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr3, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call1 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call1 to %struct.aria_key_st*
  call fastcc void @aria_ofb128_encrypt(i8* noundef %in.addr.027, i8* noundef %out.addr.026, i64 noundef 4611686018427387904, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num) #7
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call2 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #6
  %sub = add i64 %inl.addr.028, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.027, i64 4611686018427387904
  %add.ptr3 = getelementptr inbounds i8, i8* %out.addr.026, i64 4611686018427387904
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  %cmp = icmp slt i64 %inl.addr.028, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !23

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr3, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %2 = bitcast i32* %num4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  %call5 = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call5, i32* %num4, align 4, !tbaa !6
  %call6 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks7 = bitcast i8* %call6 to %struct.aria_key_st*
  %arraydecay9 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  call fastcc void @aria_ofb128_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.aria_key_st* noundef %ks7, i8* noundef nonnull %arraydecay9, i32* noundef nonnull %num4) #7
  %3 = load i32, i32* %num4, align 4, !tbaa !6
  %call10 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_256_ecb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 1
  %0 = load i32, i32* %block_size, align 4, !tbaa !12
  %conv = sext i32 %0 to i64
  %cmp = icmp ugt i64 %conv, %inl
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %inl, %conv
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %i.019 = phi i64 [ 0, %if.end ], [ %add, %for.body ]
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %i.019
  %add.ptr4 = getelementptr inbounds i8, i8* %out, i64 %i.019
  %call5 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call5 to %struct.aria_key_st*
  %call6 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  tail call fastcc void @aria_ecb_encrypt(i8* noundef %add.ptr, i8* noundef %add.ptr4, %struct.aria_key_st* noundef %ks) #7
  %add = add i64 %i.019, %conv
  %cmp2.not = icmp ugt i64 %add, %sub
  br i1 %cmp2.not, label %cleanup, label %for.body, !llvm.loop !24

cleanup:                                          ; preds = %for.body, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_128_cfb1_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %tobool34.not = icmp eq i64 %inl, 0
  br i1 %tobool34.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp = icmp ult i64 %inl, 576460752303423488
  %spec.select = select i1 %cmp, i64 %inl, i64 576460752303423488
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %chunk.138 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %spec.select33, %while.body ]
  %inl.addr.037 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.036 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.035 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr7, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call2 = call i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef 8192) #6
  %tobool3.not = icmp eq i32 %call2, 0
  %mul = shl i64 %chunk.138, 3
  %cond = select i1 %tobool3.not, i64 %mul, i64 %chunk.138
  %call4 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call4 to %struct.aria_key_st*
  %call5 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  call fastcc void @aria_cfb1_encrypt(i8* noundef %in.addr.036, i8* noundef %out.addr.035, i64 noundef %cond, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call5) #7
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call6 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #6
  %sub = sub i64 %inl.addr.037, %chunk.138
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.036, i64 %chunk.138
  %add.ptr7 = getelementptr inbounds i8, i8* %out.addr.035, i64 %chunk.138
  %cmp8 = icmp ult i64 %sub, %chunk.138
  %spec.select33 = select i1 %cmp8, i64 %sub, i64 %chunk.138
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !25

while.end:                                        ; preds = %while.body, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @aria_cfb1_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %length, %struct.aria_key_st* noundef %key, i8* noundef %ivec, i32* noundef %num, i32 noundef %enc) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.aria_key_st* %key to i8*
  tail call void @CRYPTO_cfb128_1_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %length, i8* noundef %0, i8* noundef %ivec, i32* noundef %num, i32 noundef %enc, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aria_key_st*)* @ossl_aria_encrypt to void (i8*, i8*, i8*)*)) #6
  ret void
}

declare i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_cfb128_1_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i32* noundef, i32 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_192_cfb1_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %tobool34.not = icmp eq i64 %inl, 0
  br i1 %tobool34.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp = icmp ult i64 %inl, 576460752303423488
  %spec.select = select i1 %cmp, i64 %inl, i64 576460752303423488
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %chunk.138 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %spec.select33, %while.body ]
  %inl.addr.037 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.036 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.035 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr7, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call2 = call i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef 8192) #6
  %tobool3.not = icmp eq i32 %call2, 0
  %mul = shl i64 %chunk.138, 3
  %cond = select i1 %tobool3.not, i64 %mul, i64 %chunk.138
  %call4 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call4 to %struct.aria_key_st*
  %call5 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  call fastcc void @aria_cfb1_encrypt(i8* noundef %in.addr.036, i8* noundef %out.addr.035, i64 noundef %cond, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call5) #7
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call6 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #6
  %sub = sub i64 %inl.addr.037, %chunk.138
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.036, i64 %chunk.138
  %add.ptr7 = getelementptr inbounds i8, i8* %out.addr.035, i64 %chunk.138
  %cmp8 = icmp ult i64 %sub, %chunk.138
  %spec.select33 = select i1 %cmp8, i64 %sub, i64 %chunk.138
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !26

while.end:                                        ; preds = %while.body, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_256_cfb1_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %tobool34.not = icmp eq i64 %inl, 0
  br i1 %tobool34.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp = icmp ult i64 %inl, 576460752303423488
  %spec.select = select i1 %cmp, i64 %inl, i64 576460752303423488
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %chunk.138 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %spec.select33, %while.body ]
  %inl.addr.037 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.036 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.035 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr7, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call2 = call i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef 8192) #6
  %tobool3.not = icmp eq i32 %call2, 0
  %mul = shl i64 %chunk.138, 3
  %cond = select i1 %tobool3.not, i64 %mul, i64 %chunk.138
  %call4 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call4 to %struct.aria_key_st*
  %call5 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  call fastcc void @aria_cfb1_encrypt(i8* noundef %in.addr.036, i8* noundef %out.addr.035, i64 noundef %cond, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call5) #7
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call6 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #6
  %sub = sub i64 %inl.addr.037, %chunk.138
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.036, i64 %chunk.138
  %add.ptr7 = getelementptr inbounds i8, i8* %out.addr.035, i64 %chunk.138
  %cmp8 = icmp ult i64 %sub, %chunk.138
  %spec.select33 = select i1 %cmp8, i64 %sub, i64 %chunk.138
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !27

while.end:                                        ; preds = %while.body, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_128_cfb8_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %tobool29.not = icmp eq i64 %inl, 0
  br i1 %tobool29.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp = icmp ult i64 %inl, 4611686018427387904
  %spec.select = select i1 %cmp, i64 %inl, i64 4611686018427387904
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %chunk.133 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %spec.select28, %while.body ]
  %inl.addr.032 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.031 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.030 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr5, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call2 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call2 to %struct.aria_key_st*
  %call3 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  call fastcc void @aria_cfb8_encrypt(i8* noundef %in.addr.031, i8* noundef %out.addr.030, i64 noundef %chunk.133, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call3) #7
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call4 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #6
  %sub = sub i64 %inl.addr.032, %chunk.133
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.031, i64 %chunk.133
  %add.ptr5 = getelementptr inbounds i8, i8* %out.addr.030, i64 %chunk.133
  %cmp6 = icmp ult i64 %sub, %chunk.133
  %spec.select28 = select i1 %cmp6, i64 %sub, i64 %chunk.133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !28

while.end:                                        ; preds = %while.body, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @aria_cfb8_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %length, %struct.aria_key_st* noundef %key, i8* noundef %ivec, i32* noundef %num, i32 noundef %enc) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.aria_key_st* %key to i8*
  tail call void @CRYPTO_cfb128_8_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %length, i8* noundef %0, i8* noundef %ivec, i32* noundef %num, i32 noundef %enc, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aria_key_st*)* @ossl_aria_encrypt to void (i8*, i8*, i8*)*)) #6
  ret void
}

declare void @CRYPTO_cfb128_8_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i32* noundef, i32 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_192_cfb8_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %tobool29.not = icmp eq i64 %inl, 0
  br i1 %tobool29.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp = icmp ult i64 %inl, 4611686018427387904
  %spec.select = select i1 %cmp, i64 %inl, i64 4611686018427387904
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %chunk.133 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %spec.select28, %while.body ]
  %inl.addr.032 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.031 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.030 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr5, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call2 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call2 to %struct.aria_key_st*
  %call3 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  call fastcc void @aria_cfb8_encrypt(i8* noundef %in.addr.031, i8* noundef %out.addr.030, i64 noundef %chunk.133, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call3) #7
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call4 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #6
  %sub = sub i64 %inl.addr.032, %chunk.133
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.031, i64 %chunk.133
  %add.ptr5 = getelementptr inbounds i8, i8* %out.addr.030, i64 %chunk.133
  %cmp6 = icmp ult i64 %sub, %chunk.133
  %spec.select28 = select i1 %cmp6, i64 %sub, i64 %chunk.133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !29

while.end:                                        ; preds = %while.body, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_256_cfb8_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %tobool29.not = icmp eq i64 %inl, 0
  br i1 %tobool29.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp = icmp ult i64 %inl, 4611686018427387904
  %spec.select = select i1 %cmp, i64 %inl, i64 4611686018427387904
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %chunk.133 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %spec.select28, %while.body ]
  %inl.addr.032 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.031 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.030 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr5, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call2 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ks = bitcast i8* %call2 to %struct.aria_key_st*
  %call3 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  call fastcc void @aria_cfb8_encrypt(i8* noundef %in.addr.031, i8* noundef %out.addr.030, i64 noundef %chunk.133, %struct.aria_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call3) #7
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call4 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #6
  %sub = sub i64 %inl.addr.032, %chunk.133
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.031, i64 %chunk.133
  %add.ptr5 = getelementptr inbounds i8, i8* %out.addr.030, i64 %chunk.133
  %cmp6 = icmp ult i64 %sub, %chunk.133
  %spec.select28 = select i1 %cmp6, i64 %sub, i64 %chunk.133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !30

while.end:                                        ; preds = %while.body, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_ctr_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #1 {
entry:
  %num = alloca i32, align 4
  %call = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i32 %call, i32* %num, align 4, !tbaa !6
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call2 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  call void @CRYPTO_ctr128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %call1, i8* noundef nonnull %arraydecay, i8* noundef %call2, i32* noundef nonnull %num, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aria_key_st*)* @ossl_aria_encrypt to void (i8*, i8*, i8*)*)) #6
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call3 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare void @CRYPTO_ctr128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i32* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_gcm_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tobool = icmp ne i8* %iv, null
  %tobool1 = icmp ne i8* %key, null
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %mul = shl nsw i32 %call4, 3
  %ks5 = bitcast i8* %call to %struct.aria_key_st*
  %call6 = tail call i32 @ossl_aria_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul, %struct.aria_key_st* noundef %ks5) #6
  %gcm = getelementptr inbounds i8, i8* %call, i64 288
  %0 = bitcast i8* %gcm to %struct.gcm128_context*
  tail call void @CRYPTO_gcm128_init(%struct.gcm128_context* noundef nonnull %0, i8* noundef %call, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aria_key_st*)* @ossl_aria_encrypt to void (i8*, i8*, i8*)*)) #6
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then3
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.aria_gcm_init_key, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 176, i8* noundef null) #6
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  %cmp10 = icmp eq i8* %iv, null
  br i1 %cmp10, label %land.lhs.true11, label %if.then17

land.lhs.true11:                                  ; preds = %if.end9
  %iv_set = getelementptr inbounds i8, i8* %call, i64 284
  %1 = bitcast i8* %iv_set to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !31
  %tobool12.not = icmp eq i32 %2, 0
  br i1 %tobool12.not, label %if.end20, label %if.end15

if.end15:                                         ; preds = %land.lhs.true11
  %iv14 = getelementptr inbounds i8, i8* %call, i64 728
  %3 = bitcast i8* %iv14 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !34
  %tobool16.not = icmp eq i8* %4, null
  br i1 %tobool16.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end9, %if.end15
  %iv.addr.066 = phi i8* [ %4, %if.end15 ], [ %iv, %if.end9 ]
  %ivlen = getelementptr inbounds i8, i8* %call, i64 736
  %5 = bitcast i8* %ivlen to i32*
  %6 = load i32, i32* %5, align 8, !tbaa !35
  %conv = sext i32 %6 to i64
  tail call void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef nonnull %0, i8* noundef nonnull %iv.addr.066, i64 noundef %conv) #6
  %iv_set19 = getelementptr inbounds i8, i8* %call, i64 284
  %7 = bitcast i8* %iv_set19 to i32*
  store i32 1, i32* %7, align 4, !tbaa !31
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true11, %if.then17, %if.end15
  %key_set = getelementptr inbounds i8, i8* %call, i64 280
  %8 = bitcast i8* %key_set to i32*
  store i32 1, i32* %8, align 8, !tbaa !36
  br label %cleanup

if.else:                                          ; preds = %if.end
  %key_set21 = getelementptr inbounds i8, i8* %call, i64 280
  %9 = bitcast i8* %key_set21 to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !36
  %tobool22.not = icmp eq i32 %10, 0
  br i1 %tobool22.not, label %if.else27, label %if.then23

if.then23:                                        ; preds = %if.else
  %gcm24 = getelementptr inbounds i8, i8* %call, i64 288
  %11 = bitcast i8* %gcm24 to %struct.gcm128_context*
  %ivlen25 = getelementptr inbounds i8, i8* %call, i64 736
  %12 = bitcast i8* %ivlen25 to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !35
  %conv26 = sext i32 %13 to i64
  tail call void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef nonnull %11, i8* noundef %iv, i64 noundef %conv26) #6
  br label %if.end32

if.else27:                                        ; preds = %if.else
  %iv28 = getelementptr inbounds i8, i8* %call, i64 728
  %14 = bitcast i8* %iv28 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !34
  %ivlen29 = getelementptr inbounds i8, i8* %call, i64 736
  %16 = bitcast i8* %ivlen29 to i32*
  %17 = load i32, i32* %16, align 8, !tbaa !35
  %conv30 = sext i32 %17 to i64
  %call31 = tail call i8* @memcpy(i8* noundef %15, i8* noundef %iv, i64 noundef %conv30) #6
  br label %if.end32

if.end32:                                         ; preds = %if.else27, %if.then23
  %iv_set33 = getelementptr inbounds i8, i8* %call, i64 284
  %18 = bitcast i8* %iv_set33 to i32*
  store i32 1, i32* %18, align 4, !tbaa !31
  %iv_gen = getelementptr inbounds i8, i8* %call, i64 744
  %19 = bitcast i8* %iv_gen to i32*
  store i32 0, i32* %19, align 8, !tbaa !37
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end32, %entry, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 1, %entry ], [ 1, %if.end32 ], [ 1, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_gcm_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %key_set = getelementptr inbounds i8, i8* %call, i64 280
  %0 = bitcast i8* %key_set to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !36
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tls_aad_len = getelementptr inbounds i8, i8* %call, i64 748
  %2 = bitcast i8* %tls_aad_len to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !38
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %call2 = tail call fastcc i32 @aria_gcm_tls_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %iv_set = getelementptr inbounds i8, i8* %call, i64 284
  %4 = bitcast i8* %iv_set to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !31
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %tobool7.not = icmp eq i8* %in, null
  br i1 %tobool7.not, label %if.end31, label %if.then8

if.then8:                                         ; preds = %if.end6
  %cmp9 = icmp eq i8* %out, null
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  %gcm = getelementptr inbounds i8, i8* %call, i64 288
  %6 = bitcast i8* %gcm to %struct.gcm128_context*
  %call11 = tail call i32 @CRYPTO_gcm128_aad(%struct.gcm128_context* noundef nonnull %6, i8* noundef nonnull %in, i64 noundef %len) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end30, label %cleanup

if.else:                                          ; preds = %if.then8
  %call15 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tobool16.not = icmp eq i32 %call15, 0
  %gcm24 = getelementptr inbounds i8, i8* %call, i64 288
  %7 = bitcast i8* %gcm24 to %struct.gcm128_context*
  br i1 %tobool16.not, label %if.else23, label %if.then17

if.then17:                                        ; preds = %if.else
  %call19 = tail call i32 @CRYPTO_gcm128_encrypt(%struct.gcm128_context* noundef nonnull %7, i8* noundef nonnull %in, i8* noundef nonnull %out, i64 noundef %len) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end30, label %cleanup

if.else23:                                        ; preds = %if.else
  %call25 = tail call i32 @CRYPTO_gcm128_decrypt(%struct.gcm128_context* noundef nonnull %7, i8* noundef nonnull %in, i8* noundef nonnull %out, i64 noundef %len) #6
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end30, label %cleanup

if.end30:                                         ; preds = %if.then17, %if.else23, %if.then10
  %conv = trunc i64 %len to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end6
  %call32 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end49

if.then34:                                        ; preds = %if.end31
  %taglen = getelementptr inbounds i8, i8* %call, i64 740
  %8 = bitcast i8* %taglen to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !39
  %cmp35 = icmp slt i32 %9, 0
  br i1 %cmp35, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.then34
  %gcm39 = getelementptr inbounds i8, i8* %call, i64 288
  %10 = bitcast i8* %gcm39 to %struct.gcm128_context*
  %call40 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %11 = load i32, i32* %8, align 4, !tbaa !39
  %conv42 = sext i32 %11 to i64
  %call43 = tail call i32 @CRYPTO_gcm128_finish(%struct.gcm128_context* noundef nonnull %10, i8* noundef %call40, i64 noundef %conv42) #6
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end47, label %cleanup

if.end47:                                         ; preds = %if.end38
  store i32 0, i32* %4, align 4, !tbaa !31
  br label %cleanup

if.end49:                                         ; preds = %if.end31
  %gcm50 = getelementptr inbounds i8, i8* %call, i64 288
  %12 = bitcast i8* %gcm50 to %struct.gcm128_context*
  %call51 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  tail call void @CRYPTO_gcm128_tag(%struct.gcm128_context* noundef nonnull %12, i8* noundef %call51, i64 noundef 16) #6
  %taglen52 = getelementptr inbounds i8, i8* %call, i64 740
  %13 = bitcast i8* %taglen52 to i32*
  store i32 16, i32* %13, align 4, !tbaa !39
  store i32 0, i32* %4, align 4, !tbaa !31
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then34, %if.else23, %if.then17, %if.then10, %if.end3, %entry, %if.end49, %if.end47, %if.end30, %if.then1
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ %conv, %if.end30 ], [ 0, %if.end49 ], [ 0, %if.end47 ], [ -1, %entry ], [ -1, %if.end3 ], [ -1, %if.then10 ], [ -1, %if.then17 ], [ -1, %if.else23 ], [ -1, %if.then34 ], [ -1, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_gcm_cleanup(%struct.evp_cipher_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %iv = getelementptr inbounds i8, i8* %call, i64 728
  %0 = bitcast i8* %iv to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !34
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %cmp.not = icmp eq i8* %1, %arraydecay
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 507) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_gcm_ctrl(%struct.evp_cipher_ctx_st* noundef %c, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %c) #6
  switch i32 %type, label %cleanup236 [
    i32 0, label %sw.bb
    i32 37, label %sw.bb3
    i32 9, label %sw.bb5
    i32 17, label %sw.bb25
    i32 16, label %sw.bb38
    i32 18, label %sw.bb56
    i32 19, label %sw.bb92
    i32 24, label %sw.bb128
    i32 22, label %sw.bb155
    i32 8, label %sw.bb196
  ]

sw.bb:                                            ; preds = %entry
  %key_set = getelementptr inbounds i8, i8* %call, i64 280
  %0 = bitcast i8* %key_set to i32*
  store i32 0, i32* %0, align 8, !tbaa !36
  %iv_set = getelementptr inbounds i8, i8* %call, i64 284
  %1 = bitcast i8* %iv_set to i32*
  store i32 0, i32* %1, align 4, !tbaa !31
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 0
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !40
  %call1 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %2) #6
  %ivlen = getelementptr inbounds i8, i8* %call, i64 736
  %3 = bitcast i8* %ivlen to i32*
  store i32 %call1, i32* %3, align 8, !tbaa !35
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 5, i64 0
  %iv2 = getelementptr inbounds i8, i8* %call, i64 728
  %4 = bitcast i8* %iv2 to i8**
  store i8* %arraydecay, i8** %4, align 8, !tbaa !34
  %taglen = getelementptr inbounds i8, i8* %call, i64 740
  %5 = bitcast i8* %taglen to i32*
  store i32 -1, i32* %5, align 4, !tbaa !39
  %iv_gen = getelementptr inbounds i8, i8* %call, i64 744
  %6 = bitcast i8* %iv_gen to i32*
  store i32 0, i32* %6, align 8, !tbaa !37
  %tls_aad_len = getelementptr inbounds i8, i8* %call, i64 748
  %7 = bitcast i8* %tls_aad_len to i32*
  store i32 -1, i32* %7, align 4, !tbaa !38
  br label %cleanup236

sw.bb3:                                           ; preds = %entry
  %ivlen4 = getelementptr inbounds i8, i8* %call, i64 736
  %8 = bitcast i8* %ivlen4 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !35
  %10 = bitcast i8* %ptr to i32*
  store i32 %9, i32* %10, align 4, !tbaa !6
  br label %cleanup236

sw.bb5:                                           ; preds = %entry
  %cmp = icmp slt i32 %arg, 1
  br i1 %cmp, label %cleanup236, label %if.end

if.end:                                           ; preds = %sw.bb5
  %cmp6 = icmp ugt i32 %arg, 16
  br i1 %cmp6, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %ivlen7 = getelementptr inbounds i8, i8* %call, i64 736
  %11 = bitcast i8* %ivlen7 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !35
  %cmp8 = icmp slt i32 %12, %arg
  br i1 %cmp8, label %if.then9, label %if.end23

if.then9:                                         ; preds = %land.lhs.true
  %iv10 = getelementptr inbounds i8, i8* %call, i64 728
  %13 = bitcast i8* %iv10 to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !34
  %arraydecay12 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 5, i64 0
  %cmp13.not = icmp eq i8* %14, %arraydecay12
  br i1 %cmp13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.then9
  tail call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 281) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then9
  %conv359 = zext i32 %arg to i64
  %call17 = tail call i8* @CRYPTO_malloc(i64 noundef %conv359, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 282) #6
  store i8* %call17, i8** %13, align 8, !tbaa !34
  %cmp19 = icmp eq i8* %call17, null
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end16
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.aria_gcm_ctrl, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup236

if.end23:                                         ; preds = %if.end, %if.end16, %land.lhs.true
  %ivlen24 = getelementptr inbounds i8, i8* %call, i64 736
  %15 = bitcast i8* %ivlen24 to i32*
  store i32 %arg, i32* %15, align 8, !tbaa !35
  br label %cleanup236

sw.bb25:                                          ; preds = %entry
  %16 = add i32 %arg, -17
  %17 = icmp ult i32 %16, -16
  br i1 %17, label %cleanup236, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %sw.bb25
  %call31 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %c) #6
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %if.end33, label %cleanup236

if.end33:                                         ; preds = %lor.lhs.false30
  %call34 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #6
  %conv35360 = zext i32 %arg to i64
  %call36 = tail call i8* @memcpy(i8* noundef %call34, i8* noundef %ptr, i64 noundef %conv35360) #6
  %taglen37 = getelementptr inbounds i8, i8* %call, i64 740
  %18 = bitcast i8* %taglen37 to i32*
  store i32 %arg, i32* %18, align 4, !tbaa !39
  br label %cleanup236

sw.bb38:                                          ; preds = %entry
  %19 = add i32 %arg, -17
  %20 = icmp ult i32 %19, -16
  br i1 %20, label %cleanup236, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %sw.bb38
  %call45 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %c) #6
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup236, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %taglen48 = getelementptr inbounds i8, i8* %call, i64 740
  %21 = bitcast i8* %taglen48 to i32*
  %22 = load i32, i32* %21, align 4, !tbaa !39
  %cmp49 = icmp slt i32 %22, 0
  br i1 %cmp49, label %cleanup236, label %if.end52

if.end52:                                         ; preds = %lor.lhs.false47
  %call53 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #6
  %conv54361 = zext i32 %arg to i64
  %call55 = tail call i8* @memcpy(i8* noundef %ptr, i8* noundef %call53, i64 noundef %conv54361) #6
  br label %cleanup236

sw.bb56:                                          ; preds = %entry
  %cmp57 = icmp eq i32 %arg, -1
  br i1 %cmp57, label %if.then59, label %if.end65

if.then59:                                        ; preds = %sw.bb56
  %iv60 = getelementptr inbounds i8, i8* %call, i64 728
  %23 = bitcast i8* %iv60 to i8**
  %24 = load i8*, i8** %23, align 8, !tbaa !34
  %ivlen61 = getelementptr inbounds i8, i8* %call, i64 736
  %25 = bitcast i8* %ivlen61 to i32*
  %26 = load i32, i32* %25, align 8, !tbaa !35
  %conv62 = sext i32 %26 to i64
  %call63 = tail call i8* @memcpy(i8* noundef %24, i8* noundef %ptr, i64 noundef %conv62) #6
  %iv_gen64 = getelementptr inbounds i8, i8* %call, i64 744
  %27 = bitcast i8* %iv_gen64 to i32*
  store i32 1, i32* %27, align 8, !tbaa !37
  br label %cleanup236

if.end65:                                         ; preds = %sw.bb56
  %cmp66 = icmp slt i32 %arg, 4
  br i1 %cmp66, label %cleanup236, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.end65
  %ivlen69 = getelementptr inbounds i8, i8* %call, i64 736
  %28 = bitcast i8* %ivlen69 to i32*
  %29 = load i32, i32* %28, align 8, !tbaa !35
  %sub = sub nsw i32 %29, %arg
  %cmp70 = icmp slt i32 %sub, 8
  br i1 %cmp70, label %cleanup236, label %if.then75

if.then75:                                        ; preds = %lor.lhs.false68
  %iv76 = getelementptr inbounds i8, i8* %call, i64 728
  %30 = bitcast i8* %iv76 to i8**
  %31 = load i8*, i8** %30, align 8, !tbaa !34
  %conv77362 = zext i32 %arg to i64
  %call78 = tail call i8* @memcpy(i8* noundef %31, i8* noundef %ptr, i64 noundef %conv77362) #6
  %call80 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %c) #6
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end90, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %if.then75
  %32 = load i8*, i8** %30, align 8, !tbaa !34
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %conv77362
  %33 = load i32, i32* %28, align 8, !tbaa !35
  %sub85 = sub nsw i32 %33, %arg
  %call86 = tail call i32 @RAND_bytes(i8* noundef nonnull %add.ptr, i32 noundef %sub85) #6
  %cmp87 = icmp slt i32 %call86, 1
  br i1 %cmp87, label %cleanup236, label %if.end90

if.end90:                                         ; preds = %land.lhs.true82, %if.then75
  %iv_gen91 = getelementptr inbounds i8, i8* %call, i64 744
  %34 = bitcast i8* %iv_gen91 to i32*
  store i32 1, i32* %34, align 8, !tbaa !37
  br label %cleanup236

sw.bb92:                                          ; preds = %entry
  %iv_gen93 = getelementptr inbounds i8, i8* %call, i64 744
  %35 = bitcast i8* %iv_gen93 to i32*
  %36 = load i32, i32* %35, align 8, !tbaa !37
  %cmp94 = icmp eq i32 %36, 0
  br i1 %cmp94, label %cleanup236, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %sw.bb92
  %key_set97 = getelementptr inbounds i8, i8* %call, i64 280
  %37 = bitcast i8* %key_set97 to i32*
  %38 = load i32, i32* %37, align 8, !tbaa !36
  %cmp98 = icmp eq i32 %38, 0
  br i1 %cmp98, label %cleanup236, label %if.end101

if.end101:                                        ; preds = %lor.lhs.false96
  %gcm = getelementptr inbounds i8, i8* %call, i64 288
  %39 = bitcast i8* %gcm to %struct.gcm128_context*
  %iv102 = getelementptr inbounds i8, i8* %call, i64 728
  %40 = bitcast i8* %iv102 to i8**
  %41 = load i8*, i8** %40, align 8, !tbaa !34
  %ivlen103 = getelementptr inbounds i8, i8* %call, i64 736
  %42 = bitcast i8* %ivlen103 to i32*
  %43 = load i32, i32* %42, align 8, !tbaa !35
  %conv104 = sext i32 %43 to i64
  tail call void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef nonnull %39, i8* noundef %41, i64 noundef %conv104) #6
  %cmp105 = icmp slt i32 %arg, 1
  %.pre = load i32, i32* %42, align 8, !tbaa !35
  %cmp109 = icmp slt i32 %.pre, %arg
  %or.cond = select i1 %cmp105, i1 true, i1 %cmp109
  %arg.addr.0 = select i1 %or.cond, i32 %.pre, i32 %arg
  %44 = load i8*, i8** %40, align 8, !tbaa !34
  %idx.ext116 = sext i32 %.pre to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %44, i64 %idx.ext116
  %idx.ext118 = sext i32 %arg.addr.0 to i64
  %idx.neg = sub nsw i64 0, %idx.ext118
  %add.ptr119 = getelementptr inbounds i8, i8* %add.ptr117, i64 %idx.neg
  %call121 = tail call i8* @memcpy(i8* noundef %ptr, i8* noundef %add.ptr119, i64 noundef %idx.ext118) #6
  %45 = load i8*, i8** %40, align 8, !tbaa !34
  %46 = load i32, i32* %42, align 8, !tbaa !35
  %idx.ext124 = sext i32 %46 to i64
  %add.ptr125 = getelementptr inbounds i8, i8* %45, i64 %idx.ext124
  %add.ptr126 = getelementptr inbounds i8, i8* %add.ptr125, i64 -8
  tail call fastcc void @ctr64_inc(i8* noundef nonnull %add.ptr126) #7
  %iv_set127 = getelementptr inbounds i8, i8* %call, i64 284
  %47 = bitcast i8* %iv_set127 to i32*
  store i32 1, i32* %47, align 4, !tbaa !31
  br label %cleanup236

sw.bb128:                                         ; preds = %entry
  %iv_gen129 = getelementptr inbounds i8, i8* %call, i64 744
  %48 = bitcast i8* %iv_gen129 to i32*
  %49 = load i32, i32* %48, align 8, !tbaa !37
  %cmp130 = icmp eq i32 %49, 0
  br i1 %cmp130, label %cleanup236, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %sw.bb128
  %key_set133 = getelementptr inbounds i8, i8* %call, i64 280
  %50 = bitcast i8* %key_set133 to i32*
  %51 = load i32, i32* %50, align 8, !tbaa !36
  %cmp134 = icmp eq i32 %51, 0
  br i1 %cmp134, label %cleanup236, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %lor.lhs.false132
  %call137 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %c) #6
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %cleanup236

if.end140:                                        ; preds = %lor.lhs.false136
  %iv141 = getelementptr inbounds i8, i8* %call, i64 728
  %52 = bitcast i8* %iv141 to i8**
  %53 = load i8*, i8** %52, align 8, !tbaa !34
  %ivlen142 = getelementptr inbounds i8, i8* %call, i64 736
  %54 = bitcast i8* %ivlen142 to i32*
  %55 = load i32, i32* %54, align 8, !tbaa !35
  %idx.ext143 = sext i32 %55 to i64
  %add.ptr144 = getelementptr inbounds i8, i8* %53, i64 %idx.ext143
  %idx.ext145 = sext i32 %arg to i64
  %idx.neg146 = sub nsw i64 0, %idx.ext145
  %add.ptr147 = getelementptr inbounds i8, i8* %add.ptr144, i64 %idx.neg146
  %call149 = tail call i8* @memcpy(i8* noundef %add.ptr147, i8* noundef %ptr, i64 noundef %idx.ext145) #6
  %gcm150 = getelementptr inbounds i8, i8* %call, i64 288
  %56 = bitcast i8* %gcm150 to %struct.gcm128_context*
  %57 = load i8*, i8** %52, align 8, !tbaa !34
  %58 = load i32, i32* %54, align 8, !tbaa !35
  %conv153 = sext i32 %58 to i64
  tail call void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef nonnull %56, i8* noundef %57, i64 noundef %conv153) #6
  %iv_set154 = getelementptr inbounds i8, i8* %call, i64 284
  %59 = bitcast i8* %iv_set154 to i32*
  store i32 1, i32* %59, align 4, !tbaa !31
  br label %cleanup236

sw.bb155:                                         ; preds = %entry
  %cmp156.not = icmp eq i32 %arg, 13
  br i1 %cmp156.not, label %if.end159, label %cleanup236

if.end159:                                        ; preds = %sw.bb155
  %call160 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #6
  %call162 = tail call i8* @memcpy(i8* noundef %call160, i8* noundef %ptr, i64 noundef 13) #6
  %tls_aad_len163 = getelementptr inbounds i8, i8* %call, i64 748
  %60 = bitcast i8* %tls_aad_len163 to i32*
  store i32 13, i32* %60, align 4, !tbaa !38
  %call164 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #6
  %arrayidx = getelementptr inbounds i8, i8* %call164, i64 11
  %61 = load i8, i8* %arrayidx, align 1, !tbaa !42
  %conv166 = zext i8 %61 to i32
  %shl = shl nuw nsw i32 %conv166, 8
  %call167 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #6
  %arrayidx170 = getelementptr inbounds i8, i8* %call167, i64 12
  %62 = load i8, i8* %arrayidx170, align 1, !tbaa !42
  %conv171 = zext i8 %62 to i32
  %or = or i32 %shl, %conv171
  %cmp172 = icmp ult i32 %or, 8
  br i1 %cmp172, label %cleanup236, label %if.end175

if.end175:                                        ; preds = %if.end159
  %sub176 = add nsw i32 %or, -8
  %call177 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %c) #6
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.then179, label %63

if.then179:                                       ; preds = %if.end175
  %cmp180 = icmp ult i32 %sub176, 16
  br i1 %cmp180, label %cleanup236, label %if.end183

if.end183:                                        ; preds = %if.then179
  %sub184 = add nsw i32 %or, -24
  br label %63

63:                                               ; preds = %if.end183, %if.end175
  %len.0 = phi i32 [ %sub176, %if.end175 ], [ %sub184, %if.end183 ]
  %shr = lshr i32 %len.0, 8
  %conv186 = trunc i32 %shr to i8
  %call187 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #6
  %arrayidx190 = getelementptr inbounds i8, i8* %call187, i64 11
  store i8 %conv186, i8* %arrayidx190, align 1, !tbaa !42
  %conv191 = trunc i32 %len.0 to i8
  %call192 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #6
  %arrayidx195 = getelementptr inbounds i8, i8* %call192, i64 12
  store i8 %conv191, i8* %arrayidx195, align 1, !tbaa !42
  br label %cleanup236

sw.bb196:                                         ; preds = %entry
  %64 = bitcast i8* %ptr to %struct.evp_cipher_ctx_st*
  %call197 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %64) #6
  %key = getelementptr inbounds i8, i8* %call, i64 672
  %65 = bitcast i8* %key to i8**
  %66 = load i8*, i8** %65, align 8, !tbaa !43
  %tobool199.not = icmp eq i8* %66, null
  br i1 %tobool199.not, label %if.end210, label %if.then200

if.then200:                                       ; preds = %sw.bb196
  %cmp203.not = icmp eq i8* %66, %call
  br i1 %cmp203.not, label %if.end206, label %cleanup236

if.end206:                                        ; preds = %if.then200
  %key209 = getelementptr inbounds i8, i8* %call197, i64 672
  %67 = bitcast i8* %key209 to i8**
  store i8* %call197, i8** %67, align 8, !tbaa !43
  br label %if.end210

if.end210:                                        ; preds = %if.end206, %sw.bb196
  %iv211 = getelementptr inbounds i8, i8* %call, i64 728
  %68 = bitcast i8* %iv211 to i8**
  %69 = load i8*, i8** %68, align 8, !tbaa !34
  %arraydecay213 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 5, i64 0
  %cmp214 = icmp eq i8* %69, %arraydecay213
  br i1 %cmp214, label %if.then216, label %if.else

if.then216:                                       ; preds = %if.end210
  %iv217 = getelementptr inbounds i8, i8* %ptr, i64 40
  %iv219 = getelementptr inbounds i8, i8* %call197, i64 728
  %70 = bitcast i8* %iv219 to i8**
  store i8* %iv217, i8** %70, align 8, !tbaa !34
  br label %cleanup236

if.else:                                          ; preds = %if.end210
  %ivlen220 = getelementptr inbounds i8, i8* %call, i64 736
  %71 = bitcast i8* %ivlen220 to i32*
  %72 = load i32, i32* %71, align 8, !tbaa !35
  %conv221 = sext i32 %72 to i64
  %call222 = tail call i8* @CRYPTO_malloc(i64 noundef %conv221, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 387) #6
  %iv223 = getelementptr inbounds i8, i8* %call197, i64 728
  %73 = bitcast i8* %iv223 to i8**
  store i8* %call222, i8** %73, align 8, !tbaa !34
  %cmp224 = icmp eq i8* %call222, null
  br i1 %cmp224, label %if.then226, label %if.end227

if.then226:                                       ; preds = %if.else
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 388, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.aria_gcm_ctrl, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup236

if.end227:                                        ; preds = %if.else
  %74 = load i8*, i8** %68, align 8, !tbaa !34
  %75 = load i32, i32* %71, align 8, !tbaa !35
  %conv231 = sext i32 %75 to i64
  %call232 = tail call i8* @memcpy(i8* noundef nonnull %call222, i8* noundef %74, i64 noundef %conv231) #6
  br label %cleanup236

cleanup236:                                       ; preds = %if.then179, %if.end159, %63, %entry, %if.then226, %if.then200, %if.end227, %if.then216, %sw.bb155, %sw.bb128, %lor.lhs.false132, %lor.lhs.false136, %sw.bb92, %lor.lhs.false96, %land.lhs.true82, %if.end65, %lor.lhs.false68, %sw.bb38, %lor.lhs.false44, %lor.lhs.false47, %sw.bb25, %lor.lhs.false30, %sw.bb5, %if.end140, %if.end101, %if.end90, %if.then59, %if.end52, %if.end33, %if.end23, %if.then21, %sw.bb3, %sw.bb
  %retval.2 = phi i32 [ 1, %if.end140 ], [ 1, %if.end101 ], [ 1, %if.then59 ], [ 1, %if.end90 ], [ 1, %if.end52 ], [ 1, %if.end33 ], [ 0, %if.then21 ], [ 1, %if.end23 ], [ 1, %sw.bb3 ], [ 1, %sw.bb ], [ 0, %sw.bb5 ], [ 0, %lor.lhs.false30 ], [ 0, %sw.bb25 ], [ 0, %lor.lhs.false47 ], [ 0, %lor.lhs.false44 ], [ 0, %sw.bb38 ], [ 0, %lor.lhs.false68 ], [ 0, %if.end65 ], [ 0, %land.lhs.true82 ], [ 0, %lor.lhs.false96 ], [ 0, %sw.bb92 ], [ 0, %lor.lhs.false136 ], [ 0, %lor.lhs.false132 ], [ 0, %sw.bb128 ], [ 0, %sw.bb155 ], [ 0, %if.then226 ], [ 0, %if.then200 ], [ 1, %if.end227 ], [ 1, %if.then216 ], [ -1, %entry ], [ 16, %63 ], [ 0, %if.end159 ], [ 0, %if.then179 ]
  ret i32 %retval.2
}

declare void @CRYPTO_gcm128_init(%struct.gcm128_context* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #2

declare void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @aria_gcm_tls_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) unnamed_addr #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %cmp = icmp ne i8* %out, %in
  %cmp1 = icmp ult i64 %len, 24
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tobool.not = icmp eq i32 %call2, 0
  %cond = select i1 %tobool.not, i32 24, i32 19
  %call3 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %cond, i32 noundef 8, i8* noundef %out) #6
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %gcm = getelementptr inbounds i8, i8* %call, i64 288
  %0 = bitcast i8* %gcm to %struct.gcm128_context*
  %call7 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tls_aad_len = getelementptr inbounds i8, i8* %call, i64 748
  %1 = bitcast i8* %tls_aad_len to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !38
  %conv = sext i32 %2 to i64
  %call8 = tail call i32 @CRYPTO_gcm128_aad(%struct.gcm128_context* noundef nonnull %0, i8* noundef %call7, i64 noundef %conv) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %err

if.end11:                                         ; preds = %if.end6
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 8
  %sub = add i64 %len, -24
  %call13 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end11
  %call17 = tail call i32 @CRYPTO_gcm128_encrypt(%struct.gcm128_context* noundef nonnull %0, i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr, i64 noundef %sub) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %err

if.end20:                                         ; preds = %if.then15
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr, i64 %sub
  tail call void @CRYPTO_gcm128_tag(%struct.gcm128_context* noundef nonnull %0, i8* noundef nonnull %add.ptr21, i64 noundef 16) #6
  %conv24 = trunc i64 %len to i32
  br label %err

if.else:                                          ; preds = %if.end11
  %call26 = tail call i32 @CRYPTO_gcm128_decrypt(%struct.gcm128_context* noundef nonnull %0, i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr, i64 noundef %sub) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %err

if.end29:                                         ; preds = %if.else
  %call31 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  tail call void @CRYPTO_gcm128_tag(%struct.gcm128_context* noundef nonnull %0, i8* noundef %call31, i64 noundef 16) #6
  %call32 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr, i64 %sub
  %call34 = tail call i32 @CRYPTO_memcmp(i8* noundef %call32, i8* noundef nonnull %add.ptr33, i64 noundef 16) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end29
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %add.ptr, i64 noundef %sub) #6
  br label %err

if.end37:                                         ; preds = %if.end29
  %conv38 = trunc i64 %sub to i32
  br label %err

err:                                              ; preds = %if.end, %if.end20, %if.end37, %if.else, %if.then15, %if.end6, %if.then36
  %rv.0 = phi i32 [ -1, %if.end6 ], [ -1, %if.then15 ], [ %conv24, %if.end20 ], [ -1, %if.else ], [ -1, %if.then36 ], [ %conv38, %if.end37 ], [ -1, %if.end ]
  %iv_set = getelementptr inbounds i8, i8* %call, i64 284
  %3 = bitcast i8* %iv_set to i32*
  store i32 0, i32* %3, align 4, !tbaa !31
  %tls_aad_len40 = getelementptr inbounds i8, i8* %call, i64 748
  %4 = bitcast i8* %tls_aad_len40 to i32*
  store i32 -1, i32* %4, align 4, !tbaa !38
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_gcm128_aad(%struct.gcm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CRYPTO_gcm128_encrypt(%struct.gcm128_context* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CRYPTO_gcm128_decrypt(%struct.gcm128_context* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CRYPTO_gcm128_finish(%struct.gcm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_gcm128_tag(%struct.gcm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @ctr64_inc(i8* nocapture noundef %counter) unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %counter, i64 7
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !42
  %inc = add i8 %0, 1
  store i8 %inc, i8* %arrayidx, align 1, !tbaa !42
  %tobool.not.not = icmp eq i8 %inc, 0
  br i1 %tobool.not.not, label %do.body.1, label %cleanup, !llvm.loop !44

do.body.1:                                        ; preds = %entry
  %arrayidx.1 = getelementptr inbounds i8, i8* %counter, i64 6
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !42
  %inc.1 = add i8 %1, 1
  store i8 %inc.1, i8* %arrayidx.1, align 1, !tbaa !42
  %tobool.not.1.not = icmp eq i8 %inc.1, 0
  br i1 %tobool.not.1.not, label %do.body.2, label %cleanup, !llvm.loop !44

do.body.2:                                        ; preds = %do.body.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %counter, i64 5
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !42
  %inc.2 = add i8 %2, 1
  store i8 %inc.2, i8* %arrayidx.2, align 1, !tbaa !42
  %tobool.not.2.not = icmp eq i8 %inc.2, 0
  br i1 %tobool.not.2.not, label %do.body.3, label %cleanup, !llvm.loop !44

do.body.3:                                        ; preds = %do.body.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %counter, i64 4
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !42
  %inc.3 = add i8 %3, 1
  store i8 %inc.3, i8* %arrayidx.3, align 1, !tbaa !42
  %tobool.not.3.not = icmp eq i8 %inc.3, 0
  br i1 %tobool.not.3.not, label %do.body.4, label %cleanup, !llvm.loop !44

do.body.4:                                        ; preds = %do.body.3
  %arrayidx.4 = getelementptr inbounds i8, i8* %counter, i64 3
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !42
  %inc.4 = add i8 %4, 1
  store i8 %inc.4, i8* %arrayidx.4, align 1, !tbaa !42
  %tobool.not.4.not = icmp eq i8 %inc.4, 0
  br i1 %tobool.not.4.not, label %do.body.5, label %cleanup, !llvm.loop !44

do.body.5:                                        ; preds = %do.body.4
  %arrayidx.5 = getelementptr inbounds i8, i8* %counter, i64 2
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !42
  %inc.5 = add i8 %5, 1
  store i8 %inc.5, i8* %arrayidx.5, align 1, !tbaa !42
  %tobool.not.5.not = icmp eq i8 %inc.5, 0
  br i1 %tobool.not.5.not, label %do.body.6, label %cleanup, !llvm.loop !44

do.body.6:                                        ; preds = %do.body.5
  %arrayidx.6 = getelementptr inbounds i8, i8* %counter, i64 1
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !42
  %inc.6 = add i8 %6, 1
  store i8 %inc.6, i8* %arrayidx.6, align 1, !tbaa !42
  %tobool.not.6.not = icmp eq i8 %inc.6, 0
  br i1 %tobool.not.6.not, label %do.body.7, label %cleanup, !llvm.loop !44

do.body.7:                                        ; preds = %do.body.6
  %7 = load i8, i8* %counter, align 1, !tbaa !42
  %inc.7 = add i8 %7, 1
  store i8 %inc.7, i8* %counter, align 1, !tbaa !42
  br label %cleanup

cleanup:                                          ; preds = %do.body.7, %do.body.6, %do.body.5, %do.body.4, %do.body.3, %do.body.2, %do.body.1, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_ccm_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tobool = icmp ne i8* %iv, null
  %tobool1 = icmp ne i8* %key, null
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool1, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %mul = shl nsw i32 %call4, 3
  %ks5 = bitcast i8* %call to %struct.aria_key_st*
  %call6 = tail call i32 @ossl_aria_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul, %struct.aria_key_st* noundef %ks5) #6
  %ccm = getelementptr inbounds i8, i8* %call, i64 312
  %0 = bitcast i8* %ccm to %struct.ccm128_context*
  %M = getelementptr inbounds i8, i8* %call, i64 300
  %1 = bitcast i8* %M to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !45
  %L = getelementptr inbounds i8, i8* %call, i64 296
  %3 = bitcast i8* %L to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !49
  tail call void @CRYPTO_ccm128_init(%struct.ccm128_context* noundef nonnull %0, i32 noundef %2, i32 noundef %4, i8* noundef %call, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aria_key_st*)* @ossl_aria_encrypt to void (i8*, i8*, i8*)*)) #6
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then3
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 528, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.aria_ccm_init_key, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 176, i8* noundef null) #6
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  %str = getelementptr inbounds i8, i8* %call, i64 368
  %5 = bitcast i8* %str to void (i8*, i8*, i64, i8*, i8*, i8*)**
  store void (i8*, i8*, i64, i8*, i8*, i8*)* null, void (i8*, i8*, i64, i8*, i8*, i8*)** %5, align 8, !tbaa !50
  %key_set = getelementptr inbounds i8, i8* %call, i64 280
  %6 = bitcast i8* %key_set to i32*
  store i32 1, i32* %6, align 8, !tbaa !51
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  br i1 %tobool, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end10
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %L14 = getelementptr inbounds i8, i8* %call, i64 296
  %7 = bitcast i8* %L14 to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !49
  %sub = sub nsw i32 15, %8
  %conv = sext i32 %sub to i64
  %call15 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %iv, i64 noundef %conv) #6
  %iv_set = getelementptr inbounds i8, i8* %call, i64 284
  %9 = bitcast i8* %iv_set to i32*
  store i32 1, i32* %9, align 4, !tbaa !52
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then12, %entry, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 1, %entry ], [ 1, %if.then12 ], [ 1, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_ccm_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #1 {
entry:
  %tag = alloca [16 x i8], align 16
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ccm1 = getelementptr inbounds i8, i8* %call, i64 312
  %0 = bitcast i8* %ccm1 to %struct.ccm128_context*
  %key_set = getelementptr inbounds i8, i8* %call, i64 280
  %1 = bitcast i8* %key_set to i32*
  %2 = load i32, i32* %1, align 8, !tbaa !51
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tls_aad_len = getelementptr inbounds i8, i8* %call, i64 304
  %3 = bitcast i8* %tls_aad_len to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !53
  %cmp = icmp sgt i32 %4, -1
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @aria_ccm_tls_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i8* %in, null
  %cmp6 = icmp ne i8* %out, null
  %or.cond = and i1 %cmp6, %cmp5
  br i1 %or.cond, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %iv_set = getelementptr inbounds i8, i8* %call, i64 284
  %5 = bitcast i8* %iv_set to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !52
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end8
  br i1 %cmp6, label %if.end29, label %if.then13

if.then13:                                        ; preds = %if.end11
  br i1 %cmp5, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.then13
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %L = getelementptr inbounds i8, i8* %call, i64 296
  %7 = bitcast i8* %L to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !49
  %sub = sub nsw i32 15, %8
  %conv = sext i32 %sub to i64
  %call16 = tail call i32 @CRYPTO_ccm128_setiv(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %arraydecay, i64 noundef %conv, i64 noundef %len) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.then15
  %len_set = getelementptr inbounds i8, i8* %call, i64 292
  %9 = bitcast i8* %len_set to i32*
  store i32 1, i32* %9, align 4, !tbaa !54
  %conv20 = trunc i64 %len to i32
  br label %cleanup

if.end21:                                         ; preds = %if.then13
  %len_set22 = getelementptr inbounds i8, i8* %call, i64 292
  %10 = bitcast i8* %len_set22 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !54
  %tobool23 = icmp eq i32 %11, 0
  %tobool25 = icmp ne i64 %len, 0
  %or.cond97 = and i1 %tobool25, %tobool23
  br i1 %or.cond97, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end21
  tail call void @CRYPTO_ccm128_aad(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %in, i64 noundef %len) #6
  %conv28 = trunc i64 %len to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end11
  %call30 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %if.end35

land.lhs.true32:                                  ; preds = %if.end29
  %tag_set = getelementptr inbounds i8, i8* %call, i64 288
  %12 = bitcast i8* %tag_set to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !55
  %tobool33.not = icmp eq i32 %13, 0
  br i1 %tobool33.not, label %cleanup, label %if.end35

if.end35:                                         ; preds = %land.lhs.true32, %if.end29
  %len_set36 = getelementptr inbounds i8, i8* %call, i64 292
  %14 = bitcast i8* %len_set36 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !54
  %tobool37.not = icmp eq i32 %15, 0
  br i1 %tobool37.not, label %if.then38, label %if.end49

if.then38:                                        ; preds = %if.end35
  %arraydecay40 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %L41 = getelementptr inbounds i8, i8* %call, i64 296
  %16 = bitcast i8* %L41 to i32*
  %17 = load i32, i32* %16, align 8, !tbaa !49
  %sub42 = sub nsw i32 15, %17
  %conv43 = sext i32 %sub42 to i64
  %call44 = tail call i32 @CRYPTO_ccm128_setiv(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %arraydecay40, i64 noundef %conv43, i64 noundef %len) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %cleanup

if.end47:                                         ; preds = %if.then38
  store i32 1, i32* %14, align 4, !tbaa !54
  br label %if.end49

if.end49:                                         ; preds = %if.end47, %if.end35
  %call50 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tobool51.not = icmp eq i32 %call50, 0
  %str63 = getelementptr inbounds i8, i8* %call, i64 368
  %18 = bitcast i8* %str63 to void (i8*, i8*, i64, i8*, i8*, i8*)**
  %19 = load void (i8*, i8*, i64, i8*, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*, i8*)** %18, align 8, !tbaa !50
  %tobool64.not = icmp eq void (i8*, i8*, i64, i8*, i8*, i8*)* %19, null
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end49
  br i1 %tobool64.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then52
  %call55 = tail call i32 @CRYPTO_ccm128_encrypt_ccm64(%struct.ccm128_context* noundef nonnull %0, i8* noundef %in, i8* noundef nonnull %out, i64 noundef %len, void (i8*, i8*, i64, i8*, i8*, i8*)* noundef nonnull %19) #6
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end60, label %cleanup

cond.false:                                       ; preds = %if.then52
  %call57 = tail call i32 @CRYPTO_ccm128_encrypt(%struct.ccm128_context* noundef nonnull %0, i8* noundef %in, i8* noundef nonnull %out, i64 noundef %len) #6
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %cleanup

if.end60:                                         ; preds = %cond.false, %cond.true
  %tag_set61 = getelementptr inbounds i8, i8* %call, i64 288
  %20 = bitcast i8* %tag_set61 to i32*
  store i32 1, i32* %20, align 8, !tbaa !55
  %conv62 = trunc i64 %len to i32
  br label %cleanup

if.else:                                          ; preds = %if.end49
  br i1 %tobool64.not, label %cond.false69, label %cond.true65

cond.true65:                                      ; preds = %if.else
  %call67 = tail call i32 @CRYPTO_ccm128_decrypt_ccm64(%struct.ccm128_context* noundef nonnull %0, i8* noundef %in, i8* noundef nonnull %out, i64 noundef %len, void (i8*, i8*, i64, i8*, i8*, i8*)* noundef nonnull %19) #6
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then72, label %if.then91

cond.false69:                                     ; preds = %if.else
  %call70 = tail call i32 @CRYPTO_ccm128_decrypt(%struct.ccm128_context* noundef nonnull %0, i8* noundef %in, i8* noundef nonnull %out, i64 noundef %len) #6
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %if.then91

if.then72:                                        ; preds = %cond.false69, %cond.true65
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %tag, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #8
  %M = getelementptr inbounds i8, i8* %call, i64 300
  %22 = bitcast i8* %M to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !45
  %conv74 = sext i32 %23 to i64
  %call75 = call i64 @CRYPTO_ccm128_tag(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %21, i64 noundef %conv74) #6
  %tobool76.not = icmp eq i64 %call75, 0
  br i1 %tobool76.not, label %if.end88.thread168, label %if.then77

if.then77:                                        ; preds = %if.then72
  %call79 = call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %24 = load i32, i32* %22, align 4, !tbaa !45
  %conv81 = sext i32 %24 to i64
  %call82 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %21, i8* noundef %call79, i64 noundef %conv81) #6
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
  call void @OPENSSL_cleanse(i8* noundef nonnull %out, i64 noundef %len) #6
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end88
  %rv.1165 = phi i32 [ -1, %if.then91 ], [ %conv85, %if.end88 ]
  store i32 0, i32* %5, align 4, !tbaa !52
  %tag_set94 = getelementptr inbounds i8, i8* %call, i64 288
  %25 = bitcast i8* %tag_set94 to i32*
  store i32 0, i32* %25, align 8, !tbaa !55
  store i32 0, i32* %14, align 4, !tbaa !54
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %cond.false, %if.then38, %land.lhs.true32, %if.end21, %if.then15, %if.end8, %if.end4, %entry, %if.end92, %if.end60, %if.end27, %if.end19, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ %conv62, %if.end60 ], [ %rv.1165, %if.end92 ], [ %conv28, %if.end27 ], [ %conv20, %if.end19 ], [ -1, %entry ], [ 0, %if.end4 ], [ -1, %if.end8 ], [ -1, %if.then15 ], [ -1, %if.end21 ], [ -1, %land.lhs.true32 ], [ -1, %if.then38 ], [ -1, %cond.false ], [ -1, %cond.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aria_ccm_ctrl(%struct.evp_cipher_ctx_st* noundef %c, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %c) #6
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
  %key_set = getelementptr inbounds i8, i8* %call, i64 280
  %L = getelementptr inbounds i8, i8* %call, i64 296
  %0 = bitcast i8* %L to i32*
  store i32 8, i32* %0, align 8, !tbaa !49
  %M = getelementptr inbounds i8, i8* %call, i64 300
  %1 = bitcast i8* %M to i32*
  store i32 12, i32* %1, align 4, !tbaa !45
  %2 = bitcast i8* %key_set to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2, align 8, !tbaa !6
  %tls_aad_len = getelementptr inbounds i8, i8* %call, i64 304
  %3 = bitcast i8* %tls_aad_len to i32*
  store i32 -1, i32* %3, align 8, !tbaa !53
  br label %cleanup124

sw.bb1:                                           ; preds = %entry
  %L2 = getelementptr inbounds i8, i8* %call, i64 296
  %4 = bitcast i8* %L2 to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !49
  %sub = sub nsw i32 15, %5
  %6 = bitcast i8* %ptr to i32*
  store i32 %sub, i32* %6, align 4, !tbaa !6
  br label %cleanup124

sw.bb3:                                           ; preds = %entry
  %cmp.not = icmp eq i32 %arg, 13
  br i1 %cmp.not, label %if.end, label %cleanup124

if.end:                                           ; preds = %sw.bb3
  %call4 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #6
  %call5 = tail call i8* @memcpy(i8* noundef %call4, i8* noundef %ptr, i64 noundef 13) #6
  %tls_aad_len6 = getelementptr inbounds i8, i8* %call, i64 304
  %7 = bitcast i8* %tls_aad_len6 to i32*
  store i32 13, i32* %7, align 8, !tbaa !53
  %call7 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #6
  %arrayidx = getelementptr inbounds i8, i8* %call7, i64 11
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !42
  %conv9 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %call10 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #6
  %arrayidx13 = getelementptr inbounds i8, i8* %call10, i64 12
  %9 = load i8, i8* %arrayidx13, align 1, !tbaa !42
  %conv14 = zext i8 %9 to i32
  %or = or i32 %shl, %conv14
  %cmp17 = icmp ult i32 %or, 8
  br i1 %cmp17, label %cleanup124, label %if.end20

if.end20:                                         ; preds = %if.end
  %10 = trunc i32 %or to i16
  %conv23 = add i16 %10, -8
  %call24 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %c) #6
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.then25, label %if.end36

if.then25:                                        ; preds = %if.end20
  %conv26 = zext i16 %conv23 to i32
  %M27 = getelementptr inbounds i8, i8* %call, i64 300
  %11 = bitcast i8* %M27 to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !45
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
  %call39 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #6
  %arrayidx42 = getelementptr inbounds i8, i8* %call39, i64 11
  store i8 %conv38, i8* %arrayidx42, align 1, !tbaa !42
  %conv44 = trunc i16 %len.0 to i8
  %call45 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #6
  %arrayidx48 = getelementptr inbounds i8, i8* %call45, i64 12
  store i8 %conv44, i8* %arrayidx48, align 1, !tbaa !42
  %M49 = getelementptr inbounds i8, i8* %call, i64 300
  %15 = bitcast i8* %M49 to i32*
  %16 = load i32, i32* %15, align 4, !tbaa !45
  br label %cleanup124

sw.bb50:                                          ; preds = %entry
  %cmp51.not = icmp eq i32 %arg, 4
  br i1 %cmp51.not, label %if.end54, label %cleanup124

if.end54:                                         ; preds = %sw.bb50
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 5, i64 0
  %call56 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %ptr, i64 noundef 4) #6
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
  %L66 = getelementptr inbounds i8, i8* %call, i64 296
  %19 = bitcast i8* %L66 to i32*
  store i32 %arg.addr.0, i32* %19, align 8, !tbaa !49
  br label %cleanup124

sw.bb67:                                          ; preds = %entry
  %and68 = and i32 %arg, 1
  %tobool69 = icmp ne i32 %and68, 0
  %20 = add i32 %arg, -17
  %21 = icmp ult i32 %20, -13
  %22 = or i1 %21, %tobool69
  br i1 %22, label %cleanup124, label %if.end77

if.end77:                                         ; preds = %sw.bb67
  %call78 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %c) #6
  %tobool79 = icmp ne i32 %call78, 0
  %tobool80 = icmp ne i8* %ptr, null
  %or.cond127 = and i1 %tobool80, %tobool79
  br i1 %or.cond127, label %cleanup124, label %if.end82

if.end82:                                         ; preds = %if.end77
  br i1 %tobool80, label %if.then84, label %if.end89

if.then84:                                        ; preds = %if.end82
  %tag_set85 = getelementptr inbounds i8, i8* %call, i64 288
  %23 = bitcast i8* %tag_set85 to i32*
  store i32 1, i32* %23, align 8, !tbaa !55
  %call86 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %c) #6
  %conv87196 = zext i32 %arg to i64
  %call88 = tail call i8* @memcpy(i8* noundef %call86, i8* noundef nonnull %ptr, i64 noundef %conv87196) #6
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %if.end82
  %M90 = getelementptr inbounds i8, i8* %call, i64 300
  %24 = bitcast i8* %M90 to i32*
  store i32 %arg, i32* %24, align 4, !tbaa !45
  br label %cleanup124

sw.bb91:                                          ; preds = %entry
  %call92 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %c) #6
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %cleanup124, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %sw.bb91
  %tag_set95 = getelementptr inbounds i8, i8* %call, i64 288
  %25 = bitcast i8* %tag_set95 to i32*
  %26 = load i32, i32* %25, align 8, !tbaa !55
  %tobool96.not = icmp eq i32 %26, 0
  br i1 %tobool96.not, label %cleanup124, label %if.end98

if.end98:                                         ; preds = %lor.lhs.false94
  %ccm = getelementptr inbounds i8, i8* %call, i64 312
  %27 = bitcast i8* %ccm to %struct.ccm128_context*
  %conv99 = sext i32 %arg to i64
  %call100 = tail call i64 @CRYPTO_ccm128_tag(%struct.ccm128_context* noundef nonnull %27, i8* noundef %ptr, i64 noundef %conv99) #6
  %tobool101.not = icmp eq i64 %call100, 0
  br i1 %tobool101.not, label %cleanup124, label %if.end103

if.end103:                                        ; preds = %if.end98
  store i32 0, i32* %25, align 8, !tbaa !55
  %iv_set105 = getelementptr inbounds i8, i8* %call, i64 284
  %28 = bitcast i8* %iv_set105 to i32*
  store i32 0, i32* %28, align 4, !tbaa !52
  %len_set106 = getelementptr inbounds i8, i8* %call, i64 292
  %29 = bitcast i8* %len_set106 to i32*
  store i32 0, i32* %29, align 4, !tbaa !54
  br label %cleanup124

sw.bb107:                                         ; preds = %entry
  %30 = bitcast i8* %ptr to %struct.evp_cipher_ctx_st*
  %call108 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %30) #6
  %key = getelementptr inbounds i8, i8* %call, i64 360
  %31 = bitcast i8* %key to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !56
  %tobool110.not = icmp eq i8* %32, null
  br i1 %tobool110.not, label %cleanup124, label %if.then111

if.then111:                                       ; preds = %sw.bb107
  %cmp114.not = icmp eq i8* %32, %call
  br i1 %cmp114.not, label %if.end117, label %cleanup124

if.end117:                                        ; preds = %if.then111
  %key120 = getelementptr inbounds i8, i8* %call108, i64 360
  %33 = bitcast i8* %key120 to i8**
  store i8* %call108, i8** %33, align 8, !tbaa !56
  br label %cleanup124

cleanup124:                                       ; preds = %entry, %if.then111, %if.end117, %sw.bb107, %if.end98, %sw.bb91, %lor.lhs.false94, %if.end77, %sw.bb67, %sw.bb59, %sw.bb50, %if.end, %if.then25, %sw.bb3, %if.end103, %if.end89, %if.end65, %if.end54, %if.end36, %sw.bb1, %sw.bb
  %retval.2 = phi i32 [ 1, %if.end103 ], [ 1, %if.end89 ], [ 1, %if.end65 ], [ 1, %if.end54 ], [ %16, %if.end36 ], [ 1, %sw.bb1 ], [ 1, %sw.bb ], [ 0, %sw.bb3 ], [ 0, %if.then25 ], [ 0, %if.end ], [ 0, %sw.bb50 ], [ 0, %sw.bb59 ], [ 0, %sw.bb67 ], [ 0, %if.end77 ], [ 0, %lor.lhs.false94 ], [ 0, %sw.bb91 ], [ 0, %if.end98 ], [ 0, %if.then111 ], [ 1, %if.end117 ], [ 1, %sw.bb107 ], [ -1, %entry ]
  ret i32 %retval.2
}

declare void @CRYPTO_ccm128_init(%struct.ccm128_context* noundef, i32 noundef, i32 noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @aria_ccm_tls_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) unnamed_addr #1 {
entry:
  %tag = alloca [16 x i8], align 16
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %ccm1 = getelementptr inbounds i8, i8* %call, i64 312
  %0 = bitcast i8* %ccm1 to %struct.ccm128_context*
  %cmp.not = icmp eq i8* %out, %in
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup75

lor.lhs.false:                                    ; preds = %entry
  %M = getelementptr inbounds i8, i8* %call, i64 300
  %1 = bitcast i8* %M to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !45
  %conv = sext i32 %2 to i64
  %add = add nsw i64 %conv, 8
  %cmp2 = icmp ugt i64 %add, %len
  br i1 %cmp2, label %cleanup75, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %call7 = tail call i8* @memcpy(i8* noundef %out, i8* noundef %call6, i64 noundef 8) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %add.ptr = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 4
  %call9 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %out, i64 noundef 8) #6
  %3 = load i32, i32* %1, align 4, !tbaa !45
  %add11 = add nsw i32 %3, 8
  %conv12 = sext i32 %add11 to i64
  %sub = sub i64 %len, %conv12
  %L = getelementptr inbounds i8, i8* %call, i64 296
  %4 = bitcast i8* %L to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !49
  %sub15 = sub nsw i32 15, %5
  %conv16 = sext i32 %sub15 to i64
  %call17 = tail call i32 @CRYPTO_ccm128_setiv(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %arraydecay, i64 noundef %conv16, i64 noundef %sub) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup75

if.end20:                                         ; preds = %if.end8
  %call21 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tls_aad_len = getelementptr inbounds i8, i8* %call, i64 304
  %6 = bitcast i8* %tls_aad_len to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !53
  %conv22 = sext i32 %7 to i64
  tail call void @CRYPTO_ccm128_aad(%struct.ccm128_context* noundef nonnull %0, i8* noundef %call21, i64 noundef %conv22) #6
  %add.ptr23 = getelementptr inbounds i8, i8* %out, i64 8
  %call25 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tobool26.not = icmp eq i32 %call25, 0
  %str48 = getelementptr inbounds i8, i8* %call, i64 368
  %8 = bitcast i8* %str48 to void (i8*, i8*, i64, i8*, i8*, i8*)**
  %9 = load void (i8*, i8*, i64, i8*, i8*, i8*)*, void (i8*, i8*, i64, i8*, i8*, i8*)** %8, align 8, !tbaa !50
  %tobool49.not = icmp eq void (i8*, i8*, i64, i8*, i8*, i8*)* %9, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end20
  br i1 %tobool49.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then27
  %call30 = tail call i32 @CRYPTO_ccm128_encrypt_ccm64(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %add.ptr23, i8* noundef nonnull %add.ptr23, i64 noundef %sub, void (i8*, i8*, i64, i8*, i8*, i8*)* noundef nonnull %9) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end35, label %cleanup75

cond.false:                                       ; preds = %if.then27
  %call32 = tail call i32 @CRYPTO_ccm128_encrypt(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %add.ptr23, i8* noundef nonnull %add.ptr23, i64 noundef %sub) #6
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %cleanup75

if.end35:                                         ; preds = %cond.false, %cond.true
  %add.ptr36 = getelementptr inbounds i8, i8* %add.ptr23, i64 %sub
  %10 = load i32, i32* %1, align 4, !tbaa !45
  %conv38 = sext i32 %10 to i64
  %call39 = tail call i64 @CRYPTO_ccm128_tag(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %add.ptr36, i64 noundef %conv38) #6
  %tobool40.not = icmp eq i64 %call39, 0
  br i1 %tobool40.not, label %cleanup75, label %if.end42

if.end42:                                         ; preds = %if.end35
  %11 = load i32, i32* %1, align 4, !tbaa !45
  %12 = trunc i64 %sub to i32
  %13 = add i32 %12, 8
  %conv47 = add i32 %13, %11
  br label %cleanup75

if.else:                                          ; preds = %if.end20
  br i1 %tobool49.not, label %cond.false54, label %cond.true50

cond.true50:                                      ; preds = %if.else
  %call52 = tail call i32 @CRYPTO_ccm128_decrypt_ccm64(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %add.ptr23, i8* noundef nonnull %add.ptr23, i64 noundef %sub, void (i8*, i8*, i64, i8*, i8*, i8*)* noundef nonnull %9) #6
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then57, label %if.end74

cond.false54:                                     ; preds = %if.else
  %call55 = tail call i32 @CRYPTO_ccm128_decrypt(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %add.ptr23, i8* noundef nonnull %add.ptr23, i64 noundef %sub) #6
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %if.end74

if.then57:                                        ; preds = %cond.false54, %cond.true50
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %tag, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #8
  %15 = load i32, i32* %1, align 4, !tbaa !45
  %conv60 = sext i32 %15 to i64
  %call61 = call i64 @CRYPTO_ccm128_tag(%struct.ccm128_context* noundef nonnull %0, i8* noundef nonnull %14, i64 noundef %conv60) #6
  %tobool62.not = icmp eq i64 %call61, 0
  br i1 %tobool62.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then57
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #8
  br label %if.end74

cleanup:                                          ; preds = %if.then57
  %add.ptr65 = getelementptr inbounds i8, i8* %add.ptr23, i64 %sub
  %16 = load i32, i32* %1, align 4, !tbaa !45
  %conv67 = sext i32 %16 to i64
  %call68 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %14, i8* noundef nonnull %add.ptr65, i64 noundef %conv67) #6
  %tobool69.not.not = icmp eq i32 %call68, 0
  %conv71 = trunc i64 %sub to i32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #8
  br i1 %tobool69.not.not, label %cleanup75, label %if.end74

if.end74:                                         ; preds = %cleanup.thread, %cleanup, %cond.false54, %cond.true50
  call void @OPENSSL_cleanse(i8* noundef nonnull %add.ptr23, i64 noundef %sub) #6
  br label %cleanup75

cleanup75:                                        ; preds = %if.end35, %cond.true, %cond.false, %if.end8, %entry, %lor.lhs.false, %cleanup, %if.end74, %if.end42
  %retval.1 = phi i32 [ %conv47, %if.end42 ], [ -1, %if.end74 ], [ %conv71, %cleanup ], [ -1, %lor.lhs.false ], [ -1, %entry ], [ -1, %if.end8 ], [ -1, %cond.false ], [ -1, %cond.true ], [ -1, %if.end35 ]
  ret i32 %retval.1
}

declare i32 @CRYPTO_ccm128_setiv(%struct.ccm128_context* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_ccm128_aad(%struct.ccm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CRYPTO_ccm128_encrypt_ccm64(%struct.ccm128_context* noundef, i8* noundef, i8* noundef, i64 noundef, void (i8*, i8*, i64, i8*, i8*, i8*)* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_ccm128_encrypt(%struct.ccm128_context* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CRYPTO_ccm128_decrypt_ccm64(%struct.ccm128_context* noundef, i8* noundef, i8* noundef, i64 noundef, void (i8*, i8*, i64, i8*, i8*, i8*)* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_ccm128_decrypt(%struct.ccm128_context* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i64 @CRYPTO_ccm128_tag(%struct.ccm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = !{!13, !7, i64 4}
!13 = !{!"evp_cipher_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !14, i64 16, !7, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !7, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !7, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !8, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248}
!14 = !{!"long", !8, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = !{!32, !7, i64 284}
!32 = !{!"", !8, i64 0, !7, i64 280, !7, i64 284, !33, i64 288, !15, i64 728, !7, i64 736, !7, i64 740, !7, i64 744, !7, i64 748}
!33 = !{!"gcm128_context", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 48, !8, i64 64, !8, i64 80, !8, i64 96, !15, i64 352, !15, i64 360, !7, i64 368, !7, i64 372, !15, i64 376, !15, i64 384, !8, i64 392}
!34 = !{!32, !15, i64 728}
!35 = !{!32, !7, i64 736}
!36 = !{!32, !7, i64 280}
!37 = !{!32, !7, i64 744}
!38 = !{!32, !7, i64 748}
!39 = !{!32, !7, i64 740}
!40 = !{!41, !15, i64 0}
!41 = !{!"evp_cipher_ctx_st", !15, i64 0, !15, i64 8, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 40, !8, i64 56, !7, i64 88, !15, i64 96, !7, i64 104, !14, i64 112, !15, i64 120, !7, i64 128, !7, i64 132, !8, i64 136, !15, i64 168, !15, i64 176}
!42 = !{!8, !8, i64 0}
!43 = !{!32, !15, i64 672}
!44 = distinct !{!44, !5}
!45 = !{!46, !7, i64 300}
!46 = !{!"", !8, i64 0, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !7, i64 304, !47, i64 312, !15, i64 368}
!47 = !{!"ccm128_context", !8, i64 0, !8, i64 16, !48, i64 32, !15, i64 40, !15, i64 48}
!48 = !{!"long long", !8, i64 0}
!49 = !{!46, !7, i64 296}
!50 = !{!46, !15, i64 368}
!51 = !{!46, !7, i64 280}
!52 = !{!46, !7, i64 284}
!53 = !{!46, !7, i64 304}
!54 = !{!46, !7, i64 292}
!55 = !{!46, !7, i64 288}
!56 = !{!46, !15, i64 360}
