; ModuleID = 'crypto/evp/evp_pbe.c'
source_filename = "crypto/evp/evp_pbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_EVP_PBE_CTL = type opaque
%struct.evp_pbe_st = type { i32, i32, i32, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type { %struct.evp_md_st*, %struct.evp_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i8*, %struct.evp_md_st* }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.0, %struct.anon.5, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.anon.5 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.6 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.6 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.asn1_object_st = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/evp/evp_pbe.c\00", align 1
@__func__.EVP_PBE_CipherInit_ex = private unnamed_addr constant [22 x i8] c"EVP_PBE_CipherInit_ex\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TYPE=%s\00", align 1
@pbe_algs = internal unnamed_addr global %struct.stack_st_EVP_PBE_CTL* null, align 8
@__func__.EVP_PBE_alg_add_type = private unnamed_addr constant [21 x i8] c"EVP_PBE_alg_add_type\00", align 1
@builtin_pbe = internal constant [29 x %struct.evp_pbe_st] [%struct.evp_pbe_st { i32 0, i32 9, i32 31, i32 3, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS5_PBE_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS5_PBE_keyivgen_ex }, %struct.evp_pbe_st { i32 0, i32 10, i32 31, i32 4, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS5_PBE_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS5_PBE_keyivgen_ex }, %struct.evp_pbe_st { i32 0, i32 68, i32 166, i32 64, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS5_PBE_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS5_PBE_keyivgen_ex }, %struct.evp_pbe_st { i32 0, i32 69, i32 -1, i32 -1, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS5_v2_PBKDF2_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 0, i32 144, i32 5, i32 64, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS12_PBE_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS12_PBE_keyivgen_ex }, %struct.evp_pbe_st { i32 0, i32 145, i32 97, i32 64, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS12_PBE_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS12_PBE_keyivgen_ex }, %struct.evp_pbe_st { i32 0, i32 146, i32 44, i32 64, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS12_PBE_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS12_PBE_keyivgen_ex }, %struct.evp_pbe_st { i32 0, i32 147, i32 43, i32 64, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS12_PBE_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS12_PBE_keyivgen_ex }, %struct.evp_pbe_st { i32 0, i32 148, i32 37, i32 64, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS12_PBE_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS12_PBE_keyivgen_ex }, %struct.evp_pbe_st { i32 0, i32 149, i32 98, i32 64, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS12_PBE_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS12_PBE_keyivgen_ex }, %struct.evp_pbe_st { i32 0, i32 161, i32 -1, i32 -1, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS5_v2_PBE_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS5_v2_PBE_keyivgen_ex }, %struct.evp_pbe_st { i32 0, i32 168, i32 166, i32 3, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS5_PBE_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS5_PBE_keyivgen_ex }, %struct.evp_pbe_st { i32 0, i32 169, i32 166, i32 4, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS5_PBE_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS5_PBE_keyivgen_ex }, %struct.evp_pbe_st { i32 0, i32 170, i32 31, i32 64, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS5_PBE_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS5_PBE_keyivgen_ex }, %struct.evp_pbe_st { i32 1, i32 163, i32 -1, i32 64, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 1, i32 780, i32 -1, i32 4, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 1, i32 781, i32 -1, i32 64, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 1, i32 797, i32 -1, i32 4, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 1, i32 798, i32 -1, i32 675, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 1, i32 799, i32 -1, i32 672, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 1, i32 800, i32 -1, i32 673, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 1, i32 801, i32 -1, i32 674, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 1, i32 810, i32 -1, i32 809, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 1, i32 988, i32 -1, i32 982, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 1, i32 989, i32 -1, i32 983, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 1, i32 1193, i32 -1, i32 1094, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 1, i32 1194, i32 -1, i32 1095, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pbe_st { i32 2, i32 69, i32 -1, i32 -1, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS5_v2_PBKDF2_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS5_v2_PBKDF2_keyivgen_ex }, %struct.evp_pbe_st { i32 2, i32 973, i32 -1, i32 -1, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* @PKCS5_v2_scrypt_keyivgen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* @PKCS5_v2_scrypt_keyivgen_ex }], align 16

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PBE_CipherInit_ex(%struct.asn1_object_st* noundef %pbe_obj, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %cipher_nid = alloca i32, align 4
  %md_nid = alloca i32, align 4
  %keygen_ex = alloca i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)*, align 8
  %keygen = alloca i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)*, align 8
  %obj_tmp = alloca [80 x i8], align 16
  %0 = bitcast i32* %cipher_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %1 = bitcast i32* %md_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %2 = bitcast i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)** %keygen_ex to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  %3 = bitcast i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** %keygen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %pbe_obj) #7
  %call1 = call i32 @EVP_PBE_find_ex(i32 noundef 0, i32 noundef %call, i32* noundef nonnull %cipher_nid, i32* noundef nonnull %md_nid, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef nonnull %keygen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)** noundef nonnull %keygen_ex) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds [80 x i8], [80 x i8]* %obj_tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #6
  %cmp = icmp eq %struct.asn1_object_st* %pbe_obj, null
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %call3 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef 80) #7
  br label %if.end

if.else:                                          ; preds = %if.then
  %call5 = call i32 @i2t_ASN1_OBJECT(i8* noundef nonnull %4, i32 noundef 80, %struct.asn1_object_st* noundef nonnull %pbe_obj) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.EVP_PBE_CipherInit_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 121, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #6
  br label %err

if.end7:                                          ; preds = %entry
  %cmp8 = icmp eq i8* %pass, null
  br i1 %cmp8, label %if.end15, label %if.else10

if.else10:                                        ; preds = %if.end7
  %cmp11 = icmp eq i32 %passlen, -1
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.else10
  %call13 = call i64 @strlen(i8* noundef nonnull %pass) #9
  %conv = trunc i64 %call13 to i32
  br label %if.end15

if.end15:                                         ; preds = %if.end7, %if.else10, %if.then12
  %passlen.addr.0 = phi i32 [ %conv, %if.then12 ], [ %passlen, %if.else10 ], [ 0, %if.end7 ]
  %5 = load i32, i32* %cipher_nid, align 4, !tbaa !4
  %cmp16.not = icmp eq i32 %5, -1
  br i1 %cmp16.not, label %if.end35, label %if.then18

if.then18:                                        ; preds = %if.end15
  %call19 = call i32 @ERR_set_mark() #7
  %6 = load i32, i32* %cipher_nid, align 4, !tbaa !4
  %call20 = call i8* @OBJ_nid2sn(i32 noundef %6) #7
  %call21 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %call20, i8* noundef %propq) #7
  %cmp22 = icmp eq %struct.evp_cipher_st* %call21, null
  br i1 %cmp22, label %if.end27, label %if.end33

if.end27:                                         ; preds = %if.then18
  %7 = load i32, i32* %cipher_nid, align 4, !tbaa !4
  %call25 = call i8* @OBJ_nid2sn(i32 noundef %7) #7
  %call26 = call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %call25) #7
  %cmp28 = icmp eq %struct.evp_cipher_st* %call26, null
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end27
  %call31 = call i32 @ERR_clear_last_mark() #7
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.EVP_PBE_CipherInit_ex, i64 0, i64 0)) #7
  %8 = load i32, i32* %cipher_nid, align 4, !tbaa !4
  %call32 = call i8* @OBJ_nid2sn(i32 noundef %8) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 160, i8* noundef %call32) #7
  br label %err

if.end33:                                         ; preds = %if.then18, %if.end27
  %cipher.097 = phi %struct.evp_cipher_st* [ %call26, %if.end27 ], [ %call21, %if.then18 ]
  %call34 = call i32 @ERR_pop_to_mark() #7
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %if.end15
  %cipher.1 = phi %struct.evp_cipher_st* [ %cipher.097, %if.end33 ], [ null, %if.end15 ]
  %cipher_fetch.0 = phi %struct.evp_cipher_st* [ %call21, %if.end33 ], [ null, %if.end15 ]
  %9 = load i32, i32* %md_nid, align 4, !tbaa !4
  %cmp36.not = icmp eq i32 %9, -1
  br i1 %cmp36.not, label %if.end54, label %if.then38

if.then38:                                        ; preds = %if.end35
  %call39 = call i32 @ERR_set_mark() #7
  %10 = load i32, i32* %md_nid, align 4, !tbaa !4
  %call40 = call i8* @OBJ_nid2sn(i32 noundef %10) #7
  %call41 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %call40, i8* noundef %propq) #7
  %cmp42 = icmp eq %struct.evp_md_st* %call41, null
  br i1 %cmp42, label %if.then44, label %if.end52

if.then44:                                        ; preds = %if.then38
  %11 = load i32, i32* %md_nid, align 4, !tbaa !4
  %call45 = call i8* @OBJ_nid2sn(i32 noundef %11) #7
  %call46 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call45) #7
  %call51 = call i32 @ERR_clear_last_mark() #7
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.EVP_PBE_CipherInit_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 161, i8* noundef null) #7
  br label %err

if.end52:                                         ; preds = %if.then38
  %call53 = call i32 @ERR_pop_to_mark() #7
  br label %if.end54

if.end54:                                         ; preds = %if.end52, %if.end35
  %md_fetch.0 = phi %struct.evp_md_st* [ %call41, %if.end52 ], [ null, %if.end35 ]
  %12 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)** %keygen_ex, align 8, !tbaa !8
  %cmp55.not = icmp eq i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* %12, null
  br i1 %cmp55.not, label %if.else59, label %if.then57

if.then57:                                        ; preds = %if.end54
  %call58 = call i32 %12(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen.addr.0, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* noundef %cipher.1, %struct.evp_md_st* noundef %md_fetch.0, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  br label %err

if.else59:                                        ; preds = %if.end54
  %13 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** %keygen, align 8, !tbaa !8
  %call60 = call i32 %13(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen.addr.0, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* noundef %cipher.1, %struct.evp_md_st* noundef %md_fetch.0, i32 noundef %en_de) #7
  br label %err

err:                                              ; preds = %if.end, %if.then57, %if.else59, %if.then44, %if.then30
  %cipher_fetch.1 = phi %struct.evp_cipher_st* [ null, %if.then30 ], [ %cipher_fetch.0, %if.then44 ], [ %cipher_fetch.0, %if.then57 ], [ %cipher_fetch.0, %if.else59 ], [ null, %if.end ]
  %md_fetch.1 = phi %struct.evp_md_st* [ null, %if.then30 ], [ null, %if.then44 ], [ %md_fetch.0, %if.then57 ], [ %md_fetch.0, %if.else59 ], [ null, %if.end ]
  %ret.0 = phi i32 [ 0, %if.then30 ], [ 0, %if.then44 ], [ %call58, %if.then57 ], [ %call60, %if.else59 ], [ 0, %if.end ]
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %cipher_fetch.1) #7
  call void @EVP_MD_free(%struct.evp_md_st* noundef %md_fetch.1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PBE_find_ex(i32 noundef %type, i32 noundef %pbe_nid, i32* noundef writeonly %pcnid, i32* noundef writeonly %pmnid, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef writeonly %pkeygen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)** noundef writeonly %pkeygen_ex) local_unnamed_addr #0 {
entry:
  %pbelu = alloca %struct.evp_pbe_st, align 8
  %0 = bitcast %struct.evp_pbe_st* %pbelu to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #6
  %cmp = icmp eq i32 %pbe_nid, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pbe_type = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %pbelu, i64 0, i32 0
  store i32 %type, i32* %pbe_type, align 8, !tbaa !10
  %pbe_nid1 = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %pbelu, i64 0, i32 1
  store i32 %pbe_nid, i32* %pbe_nid1, align 4, !tbaa !12
  %1 = load %struct.stack_st_EVP_PBE_CTL*, %struct.stack_st_EVP_PBE_CTL** @pbe_algs, align 8, !tbaa !8
  %cmp2.not = icmp eq %struct.stack_st_EVP_PBE_CTL* %1, null
  br i1 %cmp2.not, label %if.end9, label %if.end5

if.end5:                                          ; preds = %if.end
  %call = call fastcc i32 @sk_EVP_PBE_CTL_find(%struct.stack_st_EVP_PBE_CTL* noundef nonnull %1, %struct.evp_pbe_st* noundef nonnull %pbelu) #8
  %2 = load %struct.stack_st_EVP_PBE_CTL*, %struct.stack_st_EVP_PBE_CTL** @pbe_algs, align 8, !tbaa !8
  %call4 = call fastcc %struct.evp_pbe_st* @sk_EVP_PBE_CTL_value(%struct.stack_st_EVP_PBE_CTL* noundef %2, i32 noundef %call) #8
  %cmp6 = icmp eq %struct.evp_pbe_st* %call4, null
  br i1 %cmp6, label %if.end9, label %if.end12

if.end9:                                          ; preds = %if.end, %if.end5
  %call8 = call fastcc %struct.evp_pbe_st* @OBJ_bsearch_pbe2(%struct.evp_pbe_st* noundef nonnull %pbelu) #8
  %cmp10 = icmp eq %struct.evp_pbe_st* %call8, null
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end5, %if.end9
  %pbetmp.143 = phi %struct.evp_pbe_st* [ %call8, %if.end9 ], [ %call4, %if.end5 ]
  %cmp13.not = icmp eq i32* %pcnid, null
  br i1 %cmp13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  %cipher_nid = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %pbetmp.143, i64 0, i32 2
  %3 = load i32, i32* %cipher_nid, align 8, !tbaa !13
  store i32 %3, i32* %pcnid, align 4, !tbaa !4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  %cmp16.not = icmp eq i32* %pmnid, null
  br i1 %cmp16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  %md_nid = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %pbetmp.143, i64 0, i32 3
  %4 = load i32, i32* %md_nid, align 4, !tbaa !14
  store i32 %4, i32* %pmnid, align 4, !tbaa !4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  %cmp19.not = icmp eq i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** %pkeygen, null
  br i1 %cmp19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end18
  %keygen = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %pbetmp.143, i64 0, i32 4
  %5 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** %keygen, align 8, !tbaa !15
  store i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* %5, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** %pkeygen, align 8, !tbaa !8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  %cmp22.not = icmp eq i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)** %pkeygen_ex, null
  br i1 %cmp22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %if.end21
  %keygen_ex = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %pbetmp.143, i64 0, i32 5
  %6 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)** %keygen_ex, align 8, !tbaa !16
  store i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)* %6, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)** %pkeygen_ex, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then23, %if.end9, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end9 ], [ 1, %if.then23 ], [ 1, %if.end21 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @i2t_ASN1_OBJECT(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PBE_CipherInit(%struct.asn1_object_st* noundef %pbe_obj, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %en_de) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PBE_CipherInit_ex(%struct.asn1_object_st* noundef %pbe_obj, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PBE_alg_add_type(i32 noundef %pbe_type, i32 noundef %pbe_nid, i32 noundef %cipher_nid, i32 noundef %md_nid, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* noundef %keygen) local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_EVP_PBE_CTL*, %struct.stack_st_EVP_PBE_CTL** @pbe_algs, align 8, !tbaa !8
  %cmp = icmp eq %struct.stack_st_EVP_PBE_CTL* %0, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.stack_st_EVP_PBE_CTL* @sk_EVP_PBE_CTL_new() #8
  store %struct.stack_st_EVP_PBE_CTL* %call, %struct.stack_st_EVP_PBE_CTL** @pbe_algs, align 8, !tbaa !8
  %cmp1 = icmp eq %struct.stack_st_EVP_PBE_CTL* %call, null
  br i1 %cmp1, label %err, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef 32, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 203) #7
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %1 = bitcast i8* %call4 to %struct.evp_pbe_st*
  %pbe_type8 = bitcast i8* %call4 to i32*
  store i32 %pbe_type, i32* %pbe_type8, align 8, !tbaa !10
  %pbe_nid9 = getelementptr inbounds i8, i8* %call4, i64 4
  %2 = bitcast i8* %pbe_nid9 to i32*
  store i32 %pbe_nid, i32* %2, align 4, !tbaa !12
  %cipher_nid10 = getelementptr inbounds i8, i8* %call4, i64 8
  %3 = bitcast i8* %cipher_nid10 to i32*
  store i32 %cipher_nid, i32* %3, align 8, !tbaa !13
  %md_nid11 = getelementptr inbounds i8, i8* %call4, i64 12
  %4 = bitcast i8* %md_nid11 to i32*
  store i32 %md_nid, i32* %4, align 4, !tbaa !14
  %keygen12 = getelementptr inbounds i8, i8* %call4, i64 16
  %5 = bitcast i8* %keygen12 to i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)**
  store i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* %keygen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** %5, align 8, !tbaa !15
  %6 = load %struct.stack_st_EVP_PBE_CTL*, %struct.stack_st_EVP_PBE_CTL** @pbe_algs, align 8, !tbaa !8
  %call13 = tail call fastcc i32 @sk_EVP_PBE_CTL_push(%struct.stack_st_EVP_PBE_CTL* noundef %6, %struct.evp_pbe_st* noundef nonnull %1) #8
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.end7
  tail call void @CRYPTO_free(i8* noundef nonnull %call4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 213) #7
  br label %err

err:                                              ; preds = %if.end3, %if.then, %if.then14
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.EVP_PBE_alg_add_type, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_PBE_CTL* @sk_EVP_PBE_CTL_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.evp_pbe_st**, %struct.evp_pbe_st**)* @pbe_cmp to i32 (i8*, i8*)*)) #7
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_PBE_CTL*
  ret %struct.stack_st_EVP_PBE_CTL* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @pbe_cmp(%struct.evp_pbe_st** nocapture noundef readonly %a, %struct.evp_pbe_st** nocapture noundef readonly %b) #4 {
entry:
  %0 = load %struct.evp_pbe_st*, %struct.evp_pbe_st** %a, align 8, !tbaa !8
  %pbe_type = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pbe_type, align 8, !tbaa !10
  %2 = load %struct.evp_pbe_st*, %struct.evp_pbe_st** %b, align 8, !tbaa !8
  %pbe_type1 = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %2, i64 0, i32 0
  %3 = load i32, i32* %pbe_type1, align 8, !tbaa !10
  %sub = sub nsw i32 %1, %3
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.else, label %cleanup

if.else:                                          ; preds = %entry
  %pbe_nid = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %0, i64 0, i32 1
  %4 = load i32, i32* %pbe_nid, align 4, !tbaa !12
  %pbe_nid2 = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %2, i64 0, i32 1
  %5 = load i32, i32* %pbe_nid2, align 4, !tbaa !12
  %sub3 = sub nsw i32 %4, %5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else
  %retval.0 = phi i32 [ %sub3, %if.else ], [ %sub, %entry ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_PBE_CTL_push(%struct.stack_st_EVP_PBE_CTL* noundef %sk, %struct.evp_pbe_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PBE_CTL* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_pbe_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #7
  ret i32 %call
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PBE_alg_add(i32 noundef %nid, %struct.evp_cipher_st* noundef %cipher, %struct.evp_md_st* noundef %md, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* noundef %keygen) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @EVP_CIPHER_get_nid(%struct.evp_cipher_st* noundef nonnull %cipher) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cipher_nid.0 = phi i32 [ %call, %if.then ], [ -1, %entry ]
  %tobool1.not = icmp eq %struct.evp_md_st* %md, null
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %md) #7
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then2
  %md_nid.0 = phi i32 [ %call3, %if.then2 ], [ -1, %if.end ]
  %call6 = tail call i32 @EVP_PBE_alg_add_type(i32 noundef 0, i32 noundef %nid, i32 noundef %cipher_nid.0, i32 noundef %md_nid.0, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)* noundef %keygen) #8
  ret i32 %call6
}

declare i32 @EVP_CIPHER_get_nid(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_PBE_CTL_find(%struct.stack_st_EVP_PBE_CTL* noundef %sk, %struct.evp_pbe_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PBE_CTL* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_pbe_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %0, i8* noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pbe_st* @sk_EVP_PBE_CTL_value(%struct.stack_st_EVP_PBE_CTL* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PBE_CTL* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #7
  %1 = bitcast i8* %call to %struct.evp_pbe_st*
  ret %struct.evp_pbe_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pbe_st* @OBJ_bsearch_pbe2(%struct.evp_pbe_st* noundef %key) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pbe_st* %key to i8*
  %call = tail call i8* @OBJ_bsearch_(i8* noundef %0, i8* noundef bitcast ([29 x %struct.evp_pbe_st]* @builtin_pbe to i8*), i32 noundef 29, i32 noundef 32, i32 (i8*, i8*)* noundef nonnull @pbe2_cmp_BSEARCH_CMP_FN) #7
  %1 = bitcast i8* %call to %struct.evp_pbe_st*
  ret %struct.evp_pbe_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PBE_find(i32 noundef %type, i32 noundef %pbe_nid, i32* noundef %pcnid, i32* noundef %pmnid, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef %pkeygen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PBE_find_ex(i32 noundef %type, i32 noundef %pbe_nid, i32* noundef %pcnid, i32* noundef %pmnid, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef %pkeygen, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)** noundef null) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_PBE_cleanup() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_EVP_PBE_CTL*, %struct.stack_st_EVP_PBE_CTL** @pbe_algs, align 8, !tbaa !8
  tail call fastcc void @sk_EVP_PBE_CTL_pop_free(%struct.stack_st_EVP_PBE_CTL* noundef %0) #8
  store %struct.stack_st_EVP_PBE_CTL* null, %struct.stack_st_EVP_PBE_CTL** @pbe_algs, align 8, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_PBE_CTL_pop_free(%struct.stack_st_EVP_PBE_CTL* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PBE_CTL* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_pbe_st*)* @free_evp_pbe_ctl to void (i8*)*)) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_evp_pbe_ctl(%struct.evp_pbe_st* noundef %pbe) #0 {
entry:
  %0 = bitcast %struct.evp_pbe_st* %pbe to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 280) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @EVP_PBE_get(i32* noundef writeonly %ptype, i32* noundef writeonly %ppbe_nid, i64 noundef %num) local_unnamed_addr #5 {
entry:
  %cmp = icmp ugt i64 %num, 28
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32* %ptype, null
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %pbe_type = getelementptr inbounds [29 x %struct.evp_pbe_st], [29 x %struct.evp_pbe_st]* @builtin_pbe, i64 0, i64 %num, i32 0
  %0 = load i32, i32* %pbe_type, align 16, !tbaa !10
  store i32 %0, i32* %ptype, align 4, !tbaa !4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %tobool3.not = icmp eq i32* %ppbe_nid, null
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end2
  %pbe_nid = getelementptr inbounds [29 x %struct.evp_pbe_st], [29 x %struct.evp_pbe_st]* @builtin_pbe, i64 0, i64 %num, i32 1
  %1 = load i32, i32* %pbe_nid, align 4, !tbaa !12
  store i32 %1, i32* %ppbe_nid, align 4, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then4 ], [ 1, %if.end2 ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OBJ_bsearch_(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @pbe2_cmp_BSEARCH_CMP_FN(i8* nocapture noundef readonly %a_, i8* nocapture noundef readonly %b_) #4 {
entry:
  %0 = bitcast i8* %a_ to %struct.evp_pbe_st*
  %1 = bitcast i8* %b_ to %struct.evp_pbe_st*
  %call = tail call fastcc i32 @pbe2_cmp(%struct.evp_pbe_st* noundef %0, %struct.evp_pbe_st* noundef %1) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @pbe2_cmp(%struct.evp_pbe_st* nocapture noundef readonly %pbe1, %struct.evp_pbe_st* nocapture noundef readonly %pbe2) unnamed_addr #4 {
entry:
  %pbe_type = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %pbe1, i64 0, i32 0
  %0 = load i32, i32* %pbe_type, align 8, !tbaa !10
  %pbe_type1 = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %pbe2, i64 0, i32 0
  %1 = load i32, i32* %pbe_type1, align 8, !tbaa !10
  %sub = sub nsw i32 %0, %1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.else, label %cleanup

if.else:                                          ; preds = %entry
  %pbe_nid = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %pbe1, i64 0, i32 1
  %2 = load i32, i32* %pbe_nid, align 4, !tbaa !12
  %pbe_nid2 = getelementptr inbounds %struct.evp_pbe_st, %struct.evp_pbe_st* %pbe2, i64 0, i32 1
  %3 = load i32, i32* %pbe_nid2, align 4, !tbaa !12
  %sub3 = sub nsw i32 %2, %3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else
  %retval.0 = phi i32 [ %sub3, %if.else ], [ %sub, %entry ]
  ret i32 %retval.0
}

declare i32 @PKCS5_PBE_keyivgen(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32 noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef, i32 noundef) #2

declare i32 @PKCS5_PBE_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32 noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) #2

declare i32 @PKCS5_v2_PBKDF2_keyivgen(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32 noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef, i32 noundef) #2

declare i32 @PKCS12_PBE_keyivgen(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32 noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef, i32 noundef) #2

declare i32 @PKCS12_PBE_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32 noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) #2

declare i32 @PKCS5_v2_PBE_keyivgen(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32 noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef, i32 noundef) #2

declare i32 @PKCS5_v2_PBE_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32 noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) #2

declare i32 @PKCS5_v2_PBKDF2_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32 noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) #2

declare i32 @PKCS5_v2_scrypt_keyivgen(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32 noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef, i32 noundef) #2

declare i32 @PKCS5_v2_scrypt_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32 noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"evp_pbe_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !9, i64 16, !9, i64 24}
!12 = !{!11, !5, i64 4}
!13 = !{!11, !5, i64 8}
!14 = !{!11, !5, i64 12}
!15 = !{!11, !9, i64 16}
!16 = !{!11, !9, i64 24}
