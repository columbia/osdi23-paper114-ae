; ModuleID = 'crypto/dsa/dsa_ameth.c'
source_filename = "crypto/dsa/dsa_ameth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, {}*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.dsa_st = type { i32, i32, %struct.ffc_params_st, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.dsa_method*, %struct.engine_st*, i8*, %struct.ossl_lib_ctx_st*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.dsa_method = type { i8*, %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*)*, i32 (%struct.dsa_st*)*, i32, i8*, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)*, i32 (%struct.dsa_st*)* }
%struct.DSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.0, %struct.anon.6, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.6 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }

@.str = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"OpenSSL DSA method\00", align 1
@ossl_dsa_asn1_meths = local_unnamed_addr constant [5 x { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }] [{ i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* } { i32 66, i32 116, i64 1, i8* null, i8* null, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* null, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* null, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* null, void (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* null, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i64 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* null, i32 (%struct.ossl_param_st*, i8*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* null }, { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* } { i32 67, i32 116, i64 1, i8* null, i8* null, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* null, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* null, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* null, void (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* null, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i64 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* null, i32 (%struct.ossl_param_st*, i8*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* null }, { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* } { i32 70, i32 116, i64 1, i8* null, i8* null, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* null, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* null, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* null, void (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* null, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i64 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* null, i32 (%struct.ossl_param_st*, i8*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* null }, { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* } { i32 113, i32 116, i64 1, i8* null, i8* null, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* null, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* null, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* null, void (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* null, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i64 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* null, i32 (%struct.ossl_param_st*, i8*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* null }, { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* } { i32 116, i32 116, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* @dsa_pub_decode, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* @dsa_pub_encode, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @dsa_pub_cmp, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @dsa_pub_print, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* @dsa_priv_decode, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* @dsa_priv_encode, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @dsa_priv_print, i32 (%struct.evp_pkey_st*)* @int_dsa_size, i32 (%struct.evp_pkey_st*)* @dsa_bits, i32 (%struct.evp_pkey_st*)* @dsa_security_bits, i32 (%struct.evp_pkey_st*, i8**, i32)* @dsa_param_decode, i32 (%struct.evp_pkey_st*, i8**)* @dsa_param_encode, i32 (%struct.evp_pkey_st*)* @dsa_missing_parameters, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @dsa_copy_parameters, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @dsa_cmp_parameters, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @dsa_param_print, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* @dsa_sig_print, void (%struct.evp_pkey_st*)* @int_dsa_free, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* @dsa_pkey_ctrl, i32 (%struct.evp_pkey_st*, i8**, i32)* @old_dsa_priv_decode, i32 (%struct.evp_pkey_st*, i8**)* @old_dsa_priv_encode, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i64 (%struct.evp_pkey_st*)* @dsa_pkey_dirty_cnt, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* @dsa_pkey_export_to, i32 (%struct.ossl_param_st*, i8*)* @dsa_pkey_import_from, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @dsa_pkey_copy, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* null }], align 16
@.str.2 = private unnamed_addr constant [23 x i8] c"crypto/dsa/dsa_ameth.c\00", align 1
@__func__.dsa_pub_decode = private unnamed_addr constant [15 x i8] c"dsa_pub_decode\00", align 1
@__func__.dsa_pub_encode = private unnamed_addr constant [15 x i8] c"dsa_pub_encode\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Private-Key\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%s: (%d bit)\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Public-Key: (%d bit)\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"priv:\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"pub: \00", align 1
@__func__.dsa_priv_encode = private unnamed_addr constant [16 x i8] c"dsa_priv_encode\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"r:   \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"s:   \00", align 1
@__func__.old_dsa_priv_decode = private unnamed_addr constant [20 x i8] c"old_dsa_priv_decode\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@__func__.dsa_pkey_import_from = private unnamed_addr constant [21 x i8] c"dsa_pkey_import_from\00", align 1

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_pub_decode(%struct.evp_pkey_st* noundef %pkey, %struct.X509_pubkey_st* noundef %pubkey) #0 {
entry:
  %p = alloca i8*, align 8
  %pm = alloca i8*, align 8
  %pklen = alloca i32, align 4
  %ptype = alloca i32, align 4
  %pval = alloca i8*, align 8
  %palg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast i8** %pm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast i32* %pklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  %3 = bitcast i32* %ptype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5
  %4 = bitcast i8** %pval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  %5 = bitcast %struct.X509_algor_st** %palg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  %call = call i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef null, i8** noundef nonnull %p, i32* noundef nonnull %pklen, %struct.X509_algor_st** noundef nonnull %palg, %struct.X509_pubkey_st* noundef %pubkey) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %palg, align 8, !tbaa !4
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef null, i32* noundef nonnull %ptype, i8** noundef nonnull %pval, %struct.X509_algor_st* noundef %6) #6
  %7 = load i32, i32* %ptype, align 4, !tbaa !8
  switch i32 %7, label %err [
    i32 16, label %if.then1
    i32 -1, label %if.then11
    i32 5, label %if.then11
  ]

if.then1:                                         ; preds = %if.end
  %8 = bitcast i8** %pval to %struct.asn1_string_st**
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %8, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 2
  %10 = load i8*, i8** %data, align 8, !tbaa !10
  store i8* %10, i8** %pm, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 0
  %11 = load i32, i32* %length, align 8, !tbaa !13
  %conv = sext i32 %11 to i64
  %call2 = call %struct.dsa_st* @d2i_DSAparams(%struct.dsa_st** noundef null, i8** noundef nonnull %pm, i64 noundef %conv) #6
  %cmp3 = icmp eq %struct.dsa_st* %call2, null
  br i1 %cmp3, label %err, label %if.end19

if.then11:                                        ; preds = %if.end, %if.end
  %call12 = call %struct.dsa_st* @DSA_new() #6
  %cmp13 = icmp eq %struct.dsa_st* %call12, null
  br i1 %cmp13, label %err, label %if.end19

if.end19:                                         ; preds = %if.then11, %if.then1
  %dsa.0 = phi %struct.dsa_st* [ %call2, %if.then1 ], [ %call12, %if.then11 ]
  %12 = load i32, i32* %pklen, align 4, !tbaa !8
  %conv20 = sext i32 %12 to i64
  %call21 = call %struct.asn1_string_st* @d2i_ASN1_INTEGER(%struct.asn1_string_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv20) #6
  %cmp22 = icmp eq %struct.asn1_string_st* %call21, null
  br i1 %cmp22, label %err, label %if.end25

if.end25:                                         ; preds = %if.end19
  %call26 = call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef nonnull %call21, %struct.bignum_st* noundef null) #6
  %pub_key = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa.0, i64 0, i32 3
  store %struct.bignum_st* %call26, %struct.bignum_st** %pub_key, align 8, !tbaa !14
  %cmp27 = icmp eq %struct.bignum_st* %call26, null
  br i1 %cmp27, label %err, label %if.end30

if.end30:                                         ; preds = %if.end25
  %dirty_cnt = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa.0, i64 0, i32 13
  %13 = load i64, i64* %dirty_cnt, align 8, !tbaa !18
  %inc = add i64 %13, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !18
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %call21) #6
  %14 = bitcast %struct.dsa_st* %dsa.0 to i8*
  %call31 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 116, i8* noundef %14) #6
  br label %cleanup

err:                                              ; preds = %if.end25, %if.end19, %if.end, %if.then11, %if.then1
  %.sink51 = phi i32 [ 51, %if.then1 ], [ 57, %if.then11 ], [ 61, %if.end ], [ 66, %if.end19 ], [ 71, %if.end25 ]
  %.sink = phi i32 [ 104, %if.then1 ], [ 786688, %if.then11 ], [ 105, %if.end ], [ 104, %if.end19 ], [ 108, %if.end25 ]
  %public_key.0 = phi %struct.asn1_string_st* [ null, %if.then1 ], [ null, %if.then11 ], [ null, %if.end ], [ null, %if.end19 ], [ %call21, %if.end25 ]
  %dsa.1 = phi %struct.dsa_st* [ null, %if.then1 ], [ null, %if.then11 ], [ null, %if.end ], [ %dsa.0, %if.end19 ], [ %dsa.0, %if.end25 ]
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.sink51, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dsa_pub_decode, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef %.sink, i8* noundef null) #6
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %public_key.0) #6
  call void @DSA_free(%struct.dsa_st* noundef %dsa.1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end30
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end30 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_pub_encode(%struct.X509_pubkey_st* noundef %pk, %struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %penc = alloca i8*, align 8
  %0 = bitcast i8** %penc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %penc, align 8, !tbaa !4
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa2 = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %1 = load %struct.dsa_st*, %struct.dsa_st** %dsa2, align 8, !tbaa !19
  %save_parameters = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 10
  %2 = load i32, i32* %save_parameters, align 8, !tbaa !20
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %p = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %1, i64 0, i32 2, i32 0
  %3 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !23
  %cmp.not = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp.not, label %if.end16, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %q = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %1, i64 0, i32 2, i32 1
  %4 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !24
  %cmp5.not = icmp eq %struct.bignum_st* %4, null
  br i1 %cmp5.not, label %if.end16, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %g = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %1, i64 0, i32 2, i32 2
  %5 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !25
  %cmp8.not = icmp eq %struct.bignum_st* %5, null
  br i1 %cmp8.not, label %if.end16, label %if.then

if.then:                                          ; preds = %land.lhs.true6
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_new() #6
  %cmp9 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dsa_pub_encode, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end:                                           ; preds = %if.then
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 2
  %call11 = tail call i32 @i2d_DSAparams(%struct.dsa_st* noundef nonnull %1, i8** noundef nonnull %data) #6
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 0
  store i32 %call11, i32* %length, align 8, !tbaa !13
  %cmp13 = icmp slt i32 %call11, 1
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dsa_pub_encode, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end16:                                         ; preds = %entry, %land.lhs.true, %land.lhs.true3, %land.lhs.true6, %if.end
  %ptype.0 = phi i32 [ 16, %if.end ], [ -1, %land.lhs.true6 ], [ -1, %land.lhs.true3 ], [ -1, %land.lhs.true ], [ -1, %entry ]
  %str.0 = phi %struct.asn1_string_st* [ %call, %if.end ], [ null, %land.lhs.true6 ], [ null, %land.lhs.true3 ], [ null, %land.lhs.true ], [ null, %entry ]
  %pub_key = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %1, i64 0, i32 3
  %6 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !14
  %call17 = tail call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef %6, %struct.asn1_string_st* noundef null) #6
  %cmp18 = icmp eq %struct.asn1_string_st* %call17, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dsa_pub_encode, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @i2d_ASN1_INTEGER(%struct.asn1_string_st* noundef nonnull %call17, i8** noundef nonnull %penc) #6
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %call17) #6
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dsa_pub_encode, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end24:                                         ; preds = %if.end20
  %call25 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 116) #6
  %cmp26 = icmp eq %struct.asn1_object_st* %call25, null
  br i1 %cmp26, label %err, label %if.end28

if.end28:                                         ; preds = %if.end24
  %7 = bitcast %struct.asn1_string_st* %str.0 to i8*
  %8 = load i8*, i8** %penc, align 8, !tbaa !4
  %call29 = call i32 @X509_PUBKEY_set0_param(%struct.X509_pubkey_st* noundef %pk, %struct.asn1_object_st* noundef nonnull %call25, i32 noundef %ptype.0, i8* noundef %7, i8* noundef %8, i32 noundef %call21) #6
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %cleanup

err:                                              ; preds = %if.end28, %if.end24, %if.then23, %if.then19, %if.then14, %if.then10
  %str.1 = phi %struct.asn1_string_st* [ null, %if.then10 ], [ %call, %if.then14 ], [ %str.0, %if.then19 ], [ %str.0, %if.then23 ], [ %str.0, %if.end24 ], [ %str.0, %if.end28 ]
  %9 = load i8*, i8** %penc, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 139) #6
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %str.1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end28 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_pub_cmp(%struct.evp_pkey_st* nocapture noundef readonly %a, %struct.evp_pkey_st* nocapture noundef readonly %b) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %pub_key = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %0, i64 0, i32 3
  %1 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !14
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 5
  %dsa2 = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %2 = load %struct.dsa_st*, %struct.dsa_st** %dsa2, align 8, !tbaa !19
  %pub_key3 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %2, i64 0, i32 3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %pub_key3, align 8, !tbaa !14
  %call = tail call i32 @BN_cmp(%struct.bignum_st* noundef %1, %struct.bignum_st* noundef %3) #6
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_pub_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %call = tail call fastcc i32 @do_dsa_print(%struct.bio_st* noundef %bp, %struct.dsa_st* noundef %0, i32 noundef %indent, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_priv_decode(%struct.evp_pkey_st* noundef %pkey, %struct.pkcs8_priv_key_info_st* noundef %p8) #0 {
entry:
  %call = tail call %struct.dsa_st* @ossl_dsa_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  %cmp.not = icmp eq %struct.dsa_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.dsa_st* %call to i8*
  %call1 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 116, i8* noundef nonnull %0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_priv_encode(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %dp = alloca i8*, align 8
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %dp, align 8, !tbaa !4
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %1 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %cmp = icmp eq %struct.dsa_st* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %priv_key = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %1, i64 0, i32 4
  %2 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !26
  %cmp4 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dsa_priv_encode, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 101, i8* noundef null) #6
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_new() #6
  %cmp5 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dsa_priv_encode, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end7:                                          ; preds = %if.end
  %3 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 2
  %call10 = tail call i32 @i2d_DSAparams(%struct.dsa_st* noundef %3, i8** noundef nonnull %data) #6
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 0
  store i32 %call10, i32* %length, align 8, !tbaa !13
  %cmp12 = icmp slt i32 %call10, 1
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end7
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dsa_priv_encode, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end14:                                         ; preds = %if.end7
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 1
  store i32 16, i32* %type, align 4, !tbaa !27
  %4 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %priv_key17 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %4, i64 0, i32 4
  %5 = load %struct.bignum_st*, %struct.bignum_st** %priv_key17, align 8, !tbaa !26
  %call18 = tail call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef %5, %struct.asn1_string_st* noundef null) #6
  %cmp19 = icmp eq %struct.asn1_string_st* %call18, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end14
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dsa_priv_encode, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 109, i8* noundef null) #6
  br label %err

if.end21:                                         ; preds = %if.end14
  %call22 = call i32 @i2d_ASN1_INTEGER(%struct.asn1_string_st* noundef nonnull %call18, i8** noundef nonnull %dp) #6
  call void @ASN1_STRING_clear_free(%struct.asn1_string_st* noundef nonnull %call18) #6
  %call23 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 116) #6
  %6 = bitcast %struct.asn1_string_st* %call to i8*
  %7 = load i8*, i8** %dp, align 8, !tbaa !4
  %call24 = call i32 @PKCS8_pkey_set0(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.asn1_object_st* noundef %call23, i32 noundef 0, i32 noundef 16, i8* noundef nonnull %6, i8* noundef %7, i32 noundef %call22) #6
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.end21.err_crit_edge, label %cleanup

if.end21.err_crit_edge:                           ; preds = %if.end21
  %.pre = load i8*, i8** %dp, align 8, !tbaa !4
  br label %err

err:                                              ; preds = %if.end21.err_crit_edge, %if.then20, %if.then13, %if.then6, %if.then
  %8 = phi i8* [ null, %if.then ], [ null, %if.then6 ], [ null, %if.then13 ], [ null, %if.then20 ], [ %.pre, %if.end21.err_crit_edge ]
  %params.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ null, %if.then6 ], [ %call, %if.then13 ], [ %call, %if.then20 ], [ %call, %if.end21.err_crit_edge ]
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 209) #6
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %params.0) #6
  call void @ASN1_STRING_clear_free(%struct.asn1_string_st* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end21 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_priv_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %call = tail call fastcc i32 @do_dsa_print(%struct.bio_st* noundef %bp, %struct.dsa_st* noundef %0, i32 noundef %indent, i32 noundef 2) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @int_dsa_size(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %call = tail call i32 @DSA_size(%struct.dsa_st* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_bits(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %call = tail call i32 @DSA_bits(%struct.dsa_st* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_security_bits(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %call = tail call i32 @DSA_security_bits(%struct.dsa_st* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_param_decode(%struct.evp_pkey_st* noundef %pkey, i8** noundef %pder, i32 noundef %derlen) #0 {
entry:
  %conv = sext i32 %derlen to i64
  %call = tail call %struct.dsa_st* @d2i_DSAparams(%struct.dsa_st** noundef null, i8** noundef %pder, i64 noundef %conv) #6
  %cmp = icmp eq %struct.dsa_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dirty_cnt = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %call, i64 0, i32 13
  %0 = load i64, i64* %dirty_cnt, align 8, !tbaa !18
  %inc = add i64 %0, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !18
  %1 = bitcast %struct.dsa_st* %call to i8*
  %call2 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 116, i8* noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_param_encode(%struct.evp_pkey_st* nocapture noundef readonly %pkey, i8** noundef %pder) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %call = tail call i32 @i2d_DSAparams(%struct.dsa_st* noundef %0, i8** noundef %pder) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @dsa_missing_parameters(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #1 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa2 = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa2, align 8, !tbaa !19
  %cmp = icmp eq %struct.dsa_st* %0, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %p = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %0, i64 0, i32 2, i32 0
  %1 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !23
  %cmp3 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %q = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %0, i64 0, i32 2, i32 1
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !24
  %cmp6 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false4
  %g = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %0, i64 0, i32 2, i32 2
  %3 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !25
  %cmp8 = icmp eq %struct.bignum_st* %3, null
  %phi.cast = zext i1 %cmp8 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false4, %lor.lhs.false, %entry
  %4 = phi i32 [ 1, %lor.lhs.false4 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_copy_parameters(%struct.evp_pkey_st* nocapture noundef %to, %struct.evp_pkey_st* nocapture noundef readonly %from) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %to, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %cmp = icmp eq %struct.dsa_st* %0, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call %struct.dsa_st* @DSA_new() #6
  store %struct.dsa_st* %call, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %cmp5 = icmp eq %struct.dsa_st* %call, null
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %if.then, %entry
  %1 = phi %struct.dsa_st* [ %call, %if.then ], [ %0, %entry ]
  %params = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %1, i64 0, i32 2
  %pkey10 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 5
  %dsa11 = bitcast %union.legacy_pkey_st* %pkey10 to %struct.dsa_st**
  %2 = load %struct.dsa_st*, %struct.dsa_st** %dsa11, align 8, !tbaa !19
  %params12 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %2, i64 0, i32 2
  %call13 = tail call i32 @ossl_ffc_params_copy(%struct.ffc_params_st* noundef nonnull %params, %struct.ffc_params_st* noundef nonnull %params12) #6
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %return, label %if.end15

if.end15:                                         ; preds = %if.end7
  %3 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %dirty_cnt = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %3, i64 0, i32 13
  %4 = load i64, i64* %dirty_cnt, align 8, !tbaa !18
  %inc = add i64 %4, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %if.end7, %if.then, %if.end15
  %retval.0 = phi i32 [ 1, %if.end15 ], [ 0, %if.then ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_cmp_parameters(%struct.evp_pkey_st* nocapture noundef readonly %a, %struct.evp_pkey_st* nocapture noundef readonly %b) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %params = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %0, i64 0, i32 2
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 5
  %dsa2 = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %1 = load %struct.dsa_st*, %struct.dsa_st** %dsa2, align 8, !tbaa !19
  %params3 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %1, i64 0, i32 2
  %call = tail call i32 @ossl_ffc_params_cmp(%struct.ffc_params_st* noundef nonnull %params, %struct.ffc_params_st* noundef nonnull %params3, i32 noundef 1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_param_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %call = tail call fastcc i32 @do_dsa_print(%struct.bio_st* noundef %bp, %struct.dsa_st* noundef %0, i32 noundef %indent, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_sig_print(%struct.bio_st* noundef %bp, %struct.X509_algor_st* nocapture noundef readnone %sigalg, %struct.asn1_string_st* noundef %sig, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %pctx) #0 {
entry:
  %p = alloca i8*, align 8
  %r = alloca %struct.bignum_st*, align 8
  %s = alloca %struct.bignum_st*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %cmp = icmp eq %struct.asn1_string_st* %sig, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6
  %cmp1 = icmp sgt i32 %call, 0
  %. = zext i1 %cmp1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %sig, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !10
  store i8* %1, i8** %p, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %sig, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !13
  %conv = sext i32 %2 to i64
  %call3 = call %struct.DSA_SIG_st* @d2i_DSA_SIG(%struct.DSA_SIG_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv) #6
  %cmp4.not = icmp eq %struct.DSA_SIG_st* %call3, null
  br i1 %cmp4.not, label %if.end19, label %if.then6

if.then6:                                         ; preds = %if.end
  %3 = bitcast %struct.bignum_st** %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %4 = bitcast %struct.bignum_st** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  call void @DSA_SIG_get0(%struct.DSA_SIG_st* noundef nonnull %call3, %struct.bignum_st** noundef nonnull %r, %struct.bignum_st** noundef nonnull %s) #6
  %call7 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1) #6
  %cmp8.not = icmp eq i32 %call7, 1
  br i1 %cmp8.not, label %if.end11, label %err

if.end11:                                         ; preds = %if.then6
  %5 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !4
  %call12 = call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.bignum_st* noundef %5, i8* noundef null, i32 noundef %indent) #6
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end11
  %6 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !4
  %call15 = call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), %struct.bignum_st* noundef %6, i8* noundef null, i32 noundef %indent) #6
  %tobool16.not = icmp ne i32 %call15, 0
  %spec.select = zext i1 %tobool16.not to i32
  br label %err

err:                                              ; preds = %if.end14, %if.end11, %if.then6
  %rv.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.end11 ], [ %spec.select, %if.end14 ]
  call void @DSA_SIG_free(%struct.DSA_SIG_st* noundef nonnull %call3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %call20 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end19
  %call25 = call i32 @X509_signature_dump(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef nonnull %sig, i32 noundef %indent) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then, %if.end24, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ %call25, %if.end24 ], [ %., %if.then ], [ 0, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @int_dsa_free(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  tail call void @DSA_free(%struct.dsa_st* noundef %0) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @dsa_pkey_ctrl(%struct.evp_pkey_st* nocapture noundef readnone %pkey, i32 noundef %op, i64 noundef %arg1, i8* nocapture noundef writeonly %arg2) #2 {
entry:
  %cond = icmp eq i32 %op, 3
  br i1 %cond, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %0 = bitcast i8* %arg2 to i32*
  store i32 672, i32* %0, align 4, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i32 [ 1, %sw.bb ], [ -2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @old_dsa_priv_decode(%struct.evp_pkey_st* noundef %pkey, i8** noundef %pder, i32 noundef %derlen) #0 {
entry:
  %conv = sext i32 %derlen to i64
  %call = tail call %struct.dsa_st* @d2i_DSAPrivateKey(%struct.dsa_st** noundef null, i8** noundef %pder, i64 noundef %conv) #6
  %cmp = icmp eq %struct.dsa_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.old_dsa_priv_decode, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 524298, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dirty_cnt = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %call, i64 0, i32 13
  %0 = load i64, i64* %dirty_cnt, align 8, !tbaa !18
  %inc = add i64 %0, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !18
  %1 = bitcast %struct.dsa_st* %call to i8*
  %call2 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 116, i8* noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @old_dsa_priv_encode(%struct.evp_pkey_st* nocapture noundef readonly %pkey, i8** noundef %pder) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %call = tail call i32 @i2d_DSAPrivateKey(%struct.dsa_st* noundef %0, i8** noundef %pder) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i64 @dsa_pkey_dirty_cnt(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #1 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !19
  %dirty_cnt = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %0, i64 0, i32 13
  %1 = load i64, i64* %dirty_cnt, align 8, !tbaa !18
  ret i64 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_pkey_export_to(%struct.evp_pkey_st* nocapture noundef readonly %from, i8* noundef %to_keydata, i32 (i8*, i32, %struct.ossl_param_st*)* nocapture noundef readonly %importer, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 5
  %dsa1 = bitcast %union.legacy_pkey_st* %pkey to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa1, align 8, !tbaa !19
  %call = tail call %struct.bignum_st* @DSA_get0_p(%struct.dsa_st* noundef %0) #6
  %call2 = tail call %struct.bignum_st* @DSA_get0_g(%struct.dsa_st* noundef %0) #6
  %call3 = tail call %struct.bignum_st* @DSA_get0_q(%struct.dsa_st* noundef %0) #6
  %call4 = tail call %struct.bignum_st* @DSA_get0_pub_key(%struct.dsa_st* noundef %0) #6
  %call5 = tail call %struct.bignum_st* @DSA_get0_priv_key(%struct.dsa_st* noundef %0) #6
  %cmp = icmp eq %struct.bignum_st* %call, null
  %cmp6 = icmp eq %struct.bignum_st* %call3, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6
  %cmp8 = icmp eq %struct.bignum_st* %call2, null
  %or.cond52 = select i1 %or.cond, i1 true, i1 %cmp8
  br i1 %or.cond52, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call9 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #6
  %cmp10 = icmp eq %struct.ossl_param_bld_st* %call9, null
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call) #6
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end12
  %call15 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call3) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %call18 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call2) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %lor.lhs.false17
  %cmp22.not = icmp eq %struct.bignum_st* %call4, null
  br i1 %cmp22.not, label %if.end29, label %if.then23

if.then23:                                        ; preds = %if.end21
  %call24 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call9, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call4) #6
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end29

if.end29:                                         ; preds = %if.then23, %if.end21
  %selection.0 = phi i32 [ 4, %if.end21 ], [ 6, %if.then23 ]
  %cmp30.not = icmp eq %struct.bignum_st* %call5, null
  br i1 %cmp30.not, label %if.end37, label %if.then31

if.then31:                                        ; preds = %if.end29
  %call32 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call5) #6
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.then31
  %or36 = or i32 %selection.0, 1
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.end29
  %selection.1 = phi i32 [ %or36, %if.end35 ], [ %selection.0, %if.end29 ]
  %call38 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef nonnull %call9) #6
  %cmp39 = icmp eq %struct.ossl_param_st* %call38, null
  br i1 %cmp39, label %err, label %if.end41

if.end41:                                         ; preds = %if.end37
  %call42 = tail call i32 %importer(i8* noundef %to_keydata, i32 noundef %selection.1, %struct.ossl_param_st* noundef nonnull %call38) #6
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef nonnull %call38) #6
  br label %err

err:                                              ; preds = %if.end37, %if.then31, %if.then23, %if.end12, %lor.lhs.false14, %lor.lhs.false17, %if.end41
  %rv.0 = phi i32 [ 0, %if.end37 ], [ %call42, %if.end41 ], [ 0, %if.then31 ], [ 0, %if.then23 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false14 ], [ 0, %if.end12 ]
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef nonnull %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_pkey_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx) #0 {
entry:
  %0 = bitcast i8* %vpctx to %struct.evp_pkey_ctx_st*
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef %0) #6
  %libctx = getelementptr inbounds i8, i8* %vpctx, i64 8
  %1 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %1, align 8, !tbaa !28
  %call1 = tail call %struct.dsa_st* @ossl_dsa_new(%struct.ossl_lib_ctx_st* noundef %2) #6
  %cmp = icmp eq %struct.dsa_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 483, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dsa_pkey_import_from, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ossl_dsa_ffc_params_fromdata(%struct.dsa_st* noundef nonnull %call1, %struct.ossl_param_st* noundef %params) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @ossl_dsa_key_fromdata(%struct.dsa_st* noundef nonnull %call1, %struct.ossl_param_st* noundef %params) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %3 = bitcast %struct.dsa_st* %call1 to i8*
  %call6 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call, i32 noundef 116, i8* noundef nonnull %3) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %cleanup

if.then8:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.end
  tail call void @DSA_free(%struct.dsa_st* noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false5, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then8 ], [ 1, %lor.lhs.false5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_pkey_copy(%struct.evp_pkey_st* noundef %to, %struct.evp_pkey_st* nocapture noundef readonly %from) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 5
  %dsa1 = bitcast %union.legacy_pkey_st* %pkey to %struct.dsa_st**
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa1, align 8, !tbaa !19
  %cmp.not = icmp eq %struct.dsa_st* %0, null
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.dsa_st* @ossl_dsa_dup(%struct.dsa_st* noundef nonnull %0, i32 noundef 135) #6
  %cmp2 = icmp eq %struct.dsa_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %dupkey.0 = phi %struct.dsa_st* [ %call, %if.then ], [ null, %entry ]
  %1 = bitcast %struct.dsa_st* %dupkey.0 to i8*
  %call5 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %to, i32 noundef 116, i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end4
  tail call void @DSA_free(%struct.dsa_st* noundef %dupkey.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ %call5, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #4

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #4

declare %struct.dsa_st* @d2i_DSAparams(%struct.dsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

declare %struct.dsa_st* @DSA_new() local_unnamed_addr #4

declare %struct.asn1_string_st* @d2i_ASN1_INTEGER(%struct.asn1_string_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #4

declare %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #4

declare i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @DSA_free(%struct.dsa_st* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.asn1_string_st* @ASN1_STRING_new() local_unnamed_addr #4

declare i32 @i2d_DSAparams(%struct.dsa_st* noundef, i8** noundef) local_unnamed_addr #4

declare %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #4

declare i32 @i2d_ASN1_INTEGER(%struct.asn1_string_st* noundef, i8** noundef) local_unnamed_addr #4

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #4

declare i32 @X509_PUBKEY_set0_param(%struct.X509_pubkey_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #4

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_dsa_print(%struct.bio_st* noundef %bp, %struct.dsa_st* noundef %x, i32 noundef %off, i32 noundef %ptype) unnamed_addr #0 {
entry:
  %params = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %x, i64 0, i32 2
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !23
  %cmp.not = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @DSA_bits(%struct.dsa_st* noundef nonnull %x) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mod_len.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  %cmp1 = icmp eq i32 %ptype, 2
  br i1 %cmp1, label %if.end9, label %if.end4

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %ptype, 0
  br i1 %cmp5, label %if.end9.thread82, label %if.else27

if.end9.thread82:                                 ; preds = %if.end4
  %pub_key784 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %x, i64 0, i32 3
  %1 = load %struct.bignum_st*, %struct.bignum_st** %pub_key784, align 8, !tbaa !14
  br label %if.else27

if.end9:                                          ; preds = %if.end
  %priv_key3 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %x, i64 0, i32 4
  %2 = load %struct.bignum_st*, %struct.bignum_st** %priv_key3, align 8, !tbaa !26
  %pub_key7 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %x, i64 0, i32 3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %pub_key7, align 8, !tbaa !14
  %cmp18.not = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp18.not, label %if.else27, label %if.then19

if.then19:                                        ; preds = %if.end9
  %call20 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %off, i32 noundef 128) #6
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %err, label %if.end22

if.end22:                                         ; preds = %if.then19
  %call23 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 noundef %mod_len.0) #6
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %err, label %if.end32

if.else27:                                        ; preds = %if.end4, %if.end9.thread82, %if.end9
  %pub_key.081 = phi %struct.bignum_st* [ %3, %if.end9 ], [ %1, %if.end9.thread82 ], [ null, %if.end4 ]
  %call28 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef %mod_len.0) #6
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %err, label %if.end32

if.end32:                                         ; preds = %if.else27, %if.end22
  %pub_key.080 = phi %struct.bignum_st* [ %pub_key.081, %if.else27 ], [ %3, %if.end22 ]
  %priv_key.07078 = phi %struct.bignum_st* [ null, %if.else27 ], [ %2, %if.end22 ]
  %call33 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), %struct.bignum_st* noundef %priv_key.07078, i8* noundef null, i32 noundef %off) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %if.end36

if.end36:                                         ; preds = %if.end32
  %call37 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), %struct.bignum_st* noundef %pub_key.080, i8* noundef null, i32 noundef %off) #6
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end40

if.end40:                                         ; preds = %if.end36
  %call42 = tail call i32 @ossl_ffc_params_print(%struct.bio_st* noundef %bp, %struct.ffc_params_st* noundef nonnull %params, i32 noundef %off) #6
  %tobool43.not = icmp ne i32 %call42, 0
  %spec.select = zext i1 %tobool43.not to i32
  br label %err

err:                                              ; preds = %if.end40, %if.end36, %if.end32, %if.else27, %if.end22, %if.then19
  %ret.0 = phi i32 [ 0, %if.end22 ], [ 0, %if.end36 ], [ 0, %if.end32 ], [ 0, %if.then19 ], [ 0, %if.else27 ], [ %spec.select, %if.end40 ]
  ret i32 %ret.0
}

declare i32 @DSA_bits(%struct.dsa_st* noundef) local_unnamed_addr #4

declare i32 @BIO_indent(%struct.bio_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #4

declare i32 @ASN1_bn_print(%struct.bio_st* noundef, i8* noundef, %struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ossl_ffc_params_print(%struct.bio_st* noundef, %struct.ffc_params_st* noundef, i32 noundef) local_unnamed_addr #4

declare %struct.dsa_st* @ossl_dsa_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #4

declare void @ASN1_STRING_clear_free(%struct.asn1_string_st* noundef) local_unnamed_addr #4

declare i32 @PKCS8_pkey_set0(%struct.pkcs8_priv_key_info_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @DSA_size(%struct.dsa_st* noundef) local_unnamed_addr #4

declare i32 @DSA_security_bits(%struct.dsa_st* noundef) local_unnamed_addr #4

declare i32 @ossl_ffc_params_copy(%struct.ffc_params_st* noundef, %struct.ffc_params_st* noundef) local_unnamed_addr #4

declare i32 @ossl_ffc_params_cmp(%struct.ffc_params_st* noundef, %struct.ffc_params_st* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #4

declare %struct.DSA_SIG_st* @d2i_DSA_SIG(%struct.DSA_SIG_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #4

declare void @DSA_SIG_get0(%struct.DSA_SIG_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #4

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @DSA_SIG_free(%struct.DSA_SIG_st* noundef) local_unnamed_addr #4

declare i32 @X509_signature_dump(%struct.bio_st* noundef, %struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #4

declare %struct.dsa_st* @d2i_DSAPrivateKey(%struct.dsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #4

declare i32 @i2d_DSAPrivateKey(%struct.dsa_st* noundef, i8** noundef) local_unnamed_addr #4

declare %struct.bignum_st* @DSA_get0_p(%struct.dsa_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @DSA_get0_g(%struct.dsa_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @DSA_get0_q(%struct.dsa_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @DSA_get0_pub_key(%struct.dsa_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @DSA_get0_priv_key(%struct.dsa_st* noundef) local_unnamed_addr #4

declare %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #4

declare i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

declare %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #4

declare void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #4

declare void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #4

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #4

declare %struct.dsa_st* @ossl_dsa_new(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #4

declare i32 @ossl_dsa_ffc_params_fromdata(%struct.dsa_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #4

declare i32 @ossl_dsa_key_fromdata(%struct.dsa_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #4

declare %struct.dsa_st* @ossl_dsa_dup(%struct.dsa_st* noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !5, i64 8}
!11 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !5, i64 8, !12, i64 16}
!12 = !{!"long", !6, i64 0}
!13 = !{!11, !9, i64 0}
!14 = !{!15, !5, i64 96}
!15 = !{!"dsa_st", !9, i64 0, !9, i64 4, !16, i64 8, !5, i64 96, !5, i64 104, !9, i64 112, !5, i64 120, !6, i64 128, !17, i64 136, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !12, i64 184}
!16 = !{!"ffc_params_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !12, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !5, i64 72, !5, i64 80}
!17 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!18 = !{!15, !12, i64 184}
!19 = !{!6, !6, i64 0}
!20 = !{!21, !9, i64 72}
!21 = !{!"evp_pkey_st", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !5, i64 56, !5, i64 64, !9, i64 72, !9, i64 76, !17, i64 80, !5, i64 96, !5, i64 104, !12, i64 112, !5, i64 120, !12, i64 128, !22, i64 136}
!22 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8}
!23 = !{!15, !5, i64 8}
!24 = !{!15, !5, i64 16}
!25 = !{!15, !5, i64 24}
!26 = !{!15, !5, i64 104}
!27 = !{!11, !9, i64 4}
!28 = !{!29, !5, i64 8}
!29 = !{!"evp_pkey_ctx_st", !9, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !6, i64 40, !30, i64 56, !5, i64 88, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !9, i64 160, !5, i64 168}
!30 = !{!"", !5, i64 0, !5, i64 8, !12, i64 16, !9, i64 24}
