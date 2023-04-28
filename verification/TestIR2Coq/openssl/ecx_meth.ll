; ModuleID = 'crypto/ec/ecx_meth.c'
source_filename = "crypto/ec/ecx_meth.c"
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
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.1, %struct.anon.7, i8*, {}*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%union.anon.1 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.7 = type { i8*, i8*, i64, i8 }
%struct.bignum_st = type opaque
%struct.ecx_key_st = type { %struct.ossl_lib_ctx_st*, i8*, i8, [57 x i8], i8*, i64, i32, i32, i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }

@.str = private unnamed_addr constant [7 x i8] c"X25519\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"OpenSSL X25519 algorithm\00", align 1
@ossl_ecx25519_asn1_meth = local_unnamed_addr constant { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* } { i32 1034, i32 1034, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* @ecx_pub_decode, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* @ecx_pub_encode, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ecx_pub_cmp, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @ecx_pub_print, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* null, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* @ecx_priv_encode, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @ecx_priv_print, i32 (%struct.evp_pkey_st*)* @ecx_size, i32 (%struct.evp_pkey_st*)* @ecx_bits, i32 (%struct.evp_pkey_st*)* @ecx_security_bits, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ecx_cmp_parameters, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* null, void (%struct.evp_pkey_st*)* @ecx_free, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* @ecx_ctrl, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* @ecx_set_priv_key, i32 (%struct.evp_pkey_st*, i8*, i64)* @ecx_set_pub_key, i32 (%struct.evp_pkey_st*, i8*, i64*)* @ecx_get_priv_key, i32 (%struct.evp_pkey_st*, i8*, i64*)* @ecx_get_pub_key, i64 (%struct.evp_pkey_st*)* @ecx_pkey_dirty_cnt, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* @ecx_pkey_export_to, i32 (%struct.ossl_param_st*, i8*)* @x25519_import_from, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ecx_pkey_copy, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* @ecx_priv_decode_ex }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"X448\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"OpenSSL X448 algorithm\00", align 1
@ossl_ecx448_asn1_meth = local_unnamed_addr constant { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* } { i32 1035, i32 1035, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* @ecx_pub_decode, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* @ecx_pub_encode, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ecx_pub_cmp, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @ecx_pub_print, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* null, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* @ecx_priv_encode, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @ecx_priv_print, i32 (%struct.evp_pkey_st*)* @ecx_size, i32 (%struct.evp_pkey_st*)* @ecx_bits, i32 (%struct.evp_pkey_st*)* @ecx_security_bits, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ecx_cmp_parameters, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* null, void (%struct.evp_pkey_st*)* @ecx_free, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* @ecx_ctrl, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* @ecx_set_priv_key, i32 (%struct.evp_pkey_st*, i8*, i64)* @ecx_set_pub_key, i32 (%struct.evp_pkey_st*, i8*, i64*)* @ecx_get_priv_key, i32 (%struct.evp_pkey_st*, i8*, i64*)* @ecx_get_pub_key, i64 (%struct.evp_pkey_st*)* @ecx_pkey_dirty_cnt, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* @ecx_pkey_export_to, i32 (%struct.ossl_param_st*, i8*)* @x448_import_from, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ecx_pkey_copy, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* @ecx_priv_decode_ex }, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"ED25519\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"OpenSSL ED25519 algorithm\00", align 1
@ossl_ed25519_asn1_meth = local_unnamed_addr constant { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* } { i32 1087, i32 1087, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* @ecx_pub_decode, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* @ecx_pub_encode, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ecx_pub_cmp, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @ecx_pub_print, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* null, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* @ecx_priv_encode, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @ecx_priv_print, i32 (%struct.evp_pkey_st*)* @ecd_size25519, i32 (%struct.evp_pkey_st*)* @ecx_bits, i32 (%struct.evp_pkey_st*)* @ecx_security_bits, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ecx_cmp_parameters, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* null, void (%struct.evp_pkey_st*)* @ecx_free, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* @ecd_ctrl, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* @ecd_item_verify, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* @ecd_item_sign25519, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* @ecd_sig_info_set25519, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* @ecx_set_priv_key, i32 (%struct.evp_pkey_st*, i8*, i64)* @ecx_set_pub_key, i32 (%struct.evp_pkey_st*, i8*, i64*)* @ecx_get_priv_key, i32 (%struct.evp_pkey_st*, i8*, i64*)* @ecx_get_pub_key, i64 (%struct.evp_pkey_st*)* @ecx_pkey_dirty_cnt, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* @ecx_pkey_export_to, i32 (%struct.ossl_param_st*, i8*)* @ed25519_import_from, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ecx_pkey_copy, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* @ecx_priv_decode_ex }, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"ED448\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"OpenSSL ED448 algorithm\00", align 1
@ossl_ed448_asn1_meth = local_unnamed_addr constant { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* } { i32 1088, i32 1088, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* @ecx_pub_decode, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* @ecx_pub_encode, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ecx_pub_cmp, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @ecx_pub_print, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* null, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* @ecx_priv_encode, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @ecx_priv_print, i32 (%struct.evp_pkey_st*)* @ecd_size448, i32 (%struct.evp_pkey_st*)* @ecx_bits, i32 (%struct.evp_pkey_st*)* @ecx_security_bits, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ecx_cmp_parameters, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* null, void (%struct.evp_pkey_st*)* @ecx_free, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* @ecd_ctrl, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* @ecd_item_verify, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* @ecd_item_sign448, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* @ecd_sig_info_set448, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* @ecx_set_priv_key, i32 (%struct.evp_pkey_st*, i8*, i64)* @ecx_set_pub_key, i32 (%struct.evp_pkey_st*, i8*, i64*)* @ecx_get_priv_key, i32 (%struct.evp_pkey_st*, i8*, i64*)* @ecx_get_pub_key, i64 (%struct.evp_pkey_st*)* @ecx_pkey_dirty_cnt, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* @ecx_pkey_export_to, i32 (%struct.ossl_param_st*, i8*)* @ed448_import_from, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ecx_pkey_copy, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* @ecx_priv_decode_ex }, align 8
@ecx25519_pkey_meth = internal constant %struct.evp_pkey_method_st { i32 1034, i32 0, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* null, void (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_ecx_keygen, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* @pkey_ecx_derive25519, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* @pkey_ecx_ctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* null, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null }, align 8
@ecx448_pkey_meth = internal constant %struct.evp_pkey_method_st { i32 1035, i32 0, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* null, void (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_ecx_keygen, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* @pkey_ecx_derive448, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* @pkey_ecx_ctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* null, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null }, align 8
@ed25519_pkey_meth = internal constant %struct.evp_pkey_method_st { i32 1087, i32 4, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* null, void (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_ecx_keygen, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* @pkey_ecd_ctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* null, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* @pkey_ecd_digestsign25519, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* @pkey_ecd_digestverify25519, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null }, align 8
@ed448_pkey_meth = internal constant %struct.evp_pkey_method_st { i32 1088, i32 4, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* null, void (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* @pkey_ecx_keygen, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, i32 (%struct.evp_pkey_ctx_st*)* null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* @pkey_ecd_ctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* null, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* @pkey_ecd_digestsign448, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* @pkey_ecd_digestverify448, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* null }, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"crypto/ec/ecx_meth.c\00", align 1
@__func__.ecx_pub_encode = private unnamed_addr constant [15 x i8] c"ecx_pub_encode\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%*s<INVALID PRIVATE KEY>\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%*s%s Private-Key:\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%*spriv:\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"%*s<INVALID PUBLIC KEY>\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"%*s%s Public-Key:\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"%*spub:\0A\00", align 1
@__func__.ecx_priv_encode = private unnamed_addr constant [16 x i8] c"ecx_priv_encode\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@__func__.ecx_generic_import_from = private unnamed_addr constant [24 x i8] c"ecx_generic_import_from\00", align 1
@__func__.ecd_item_verify = private unnamed_addr constant [16 x i8] c"ecd_item_verify\00", align 1
@__func__.validate_ecx_derive = private unnamed_addr constant [20 x i8] c"validate_ecx_derive\00", align 1
@__func__.pkey_ecd_ctrl = private unnamed_addr constant [14 x i8] c"pkey_ecd_ctrl\00", align 1
@__func__.pkey_ecd_digestsign25519 = private unnamed_addr constant [25 x i8] c"pkey_ecd_digestsign25519\00", align 1
@__func__.pkey_ecd_digestsign448 = private unnamed_addr constant [23 x i8] c"pkey_ecd_digestsign448\00", align 1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_pub_decode(%struct.evp_pkey_st* noundef %pkey, %struct.X509_pubkey_st* noundef %pubkey) #0 {
entry:
  %p = alloca i8*, align 8
  %pklen = alloca i32, align 4
  %palg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast i32* %pklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  %2 = bitcast %struct.X509_algor_st** %palg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %call = call i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef null, i8** noundef nonnull %p, i32* noundef nonnull %pklen, %struct.X509_algor_st** noundef nonnull %palg, %struct.X509_pubkey_st* noundef %pubkey) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %palg, align 8, !tbaa !4
  %4 = load i8*, i8** %p, align 8, !tbaa !4
  %5 = load i32, i32* %pklen, align 4, !tbaa !8
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %6 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %6, i64 0, i32 0
  %7 = load i32, i32* %pkey_id, align 8, !tbaa !15
  %call1 = call %struct.ecx_key_st* @ossl_ecx_key_op(%struct.X509_algor_st* noundef %3, i8* noundef %4, i32 noundef %5, i32 noundef %7, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  %cmp.not = icmp eq %struct.ecx_key_st* %call1, null
  br i1 %cmp.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %8 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id4 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %8, i64 0, i32 0
  %9 = load i32, i32* %pkey_id4, align 8, !tbaa !15
  %10 = bitcast %struct.ecx_key_st* %call1 to i8*
  %call5 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef %9, i8* noundef nonnull %10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then2 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_pub_encode(%struct.X509_pubkey_st* noundef %pk, %struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ecx = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ecx_key_st**
  %0 = load %struct.ecx_key_st*, %struct.ecx_key_st** %ecx, align 8, !tbaa !17
  %cmp = icmp eq %struct.ecx_key_st* %0, null
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %0, i64 0, i32 3, i64 0
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 0
  %2 = load i32, i32* %pkey_id, align 8, !tbaa !15
  switch i32 %2, label %cond.false [
    i32 1034, label %cond.end
    i32 1087, label %cond.end
  ]

cond.false:                                       ; preds = %if.end
  %cmp8 = icmp eq i32 %2, 1035
  %cond = select i1 %cmp8, i64 56, i64 57
  br label %cond.end

cond.end:                                         ; preds = %if.end, %if.end, %cond.false
  %cond9 = phi i64 [ %cond, %cond.false ], [ 32, %if.end ], [ 32, %if.end ]
  %call = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %arraydecay, i64 noundef %cond9, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 41) #8
  %cmp10 = icmp eq i8* %call, null
  br i1 %cmp10, label %cleanup.sink.split, label %if.end13

if.end13:                                         ; preds = %cond.end
  %3 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id15 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %3, i64 0, i32 0
  %4 = load i32, i32* %pkey_id15, align 8, !tbaa !15
  %call16 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %4) #8
  %5 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id18 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %5, i64 0, i32 0
  %6 = load i32, i32* %pkey_id18, align 8, !tbaa !15
  switch i32 %6, label %cond.false27 [
    i32 1034, label %cond.end33
    i32 1087, label %cond.end33
  ]

cond.false27:                                     ; preds = %if.end13
  %cmp30 = icmp eq i32 %6, 1035
  %cond32 = select i1 %cmp30, i32 56, i32 57
  br label %cond.end33

cond.end33:                                       ; preds = %if.end13, %if.end13, %cond.false27
  %cond34 = phi i32 [ %cond32, %cond.false27 ], [ 32, %if.end13 ], [ 32, %if.end13 ]
  %call35 = tail call i32 @X509_PUBKEY_set0_param(%struct.X509_pubkey_st* noundef %pk, %struct.asn1_object_st* noundef %call16, i32 noundef -1, i8* noundef null, i8* noundef nonnull %call, i32 noundef %cond34) #8
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %if.then36, label %cleanup

if.then36:                                        ; preds = %cond.end33
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 49) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cond.end, %entry, %if.then36
  %.sink53 = phi i32 [ 50, %if.then36 ], [ 37, %entry ], [ 43, %cond.end ]
  %.sink = phi i32 [ 786688, %if.then36 ], [ 116, %entry ], [ 786688, %cond.end ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef %.sink53, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ecx_pub_encode, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.end33
  %retval.0 = phi i32 [ 1, %cond.end33 ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_pub_cmp(%struct.evp_pkey_st* nocapture noundef readonly %a, %struct.evp_pkey_st* nocapture noundef readonly %b) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 5
  %ecx = bitcast %union.legacy_pkey_st* %pkey to %struct.ecx_key_st**
  %0 = load %struct.ecx_key_st*, %struct.ecx_key_st** %ecx, align 8, !tbaa !17
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 5
  %ecx2 = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ecx_key_st**
  %1 = load %struct.ecx_key_st*, %struct.ecx_key_st** %ecx2, align 8, !tbaa !17
  %cmp = icmp eq %struct.ecx_key_st* %0, null
  %cmp3 = icmp eq %struct.ecx_key_st* %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %0, i64 0, i32 3, i64 0
  %arraydecay5 = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %1, i64 0, i32 3, i64 0
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 2
  %2 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %2, i64 0, i32 0
  %3 = load i32, i32* %pkey_id, align 8, !tbaa !15
  switch i32 %3, label %cond.false [
    i32 1034, label %cond.end
    i32 1087, label %cond.end
  ]

cond.false:                                       ; preds = %if.end
  %cmp13 = icmp eq i32 %3, 1035
  %cond = select i1 %cmp13, i64 56, i64 57
  br label %cond.end

cond.end:                                         ; preds = %if.end, %if.end, %cond.false
  %cond14 = phi i64 [ %cond, %cond.false ], [ 32, %if.end ], [ 32, %if.end ]
  %call = tail call i32 @CRYPTO_memcmp(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay5, i64 noundef %cond14) #8
  %cmp15 = icmp eq i32 %call, 0
  %conv16 = zext i1 %cmp15 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %conv16, %cond.end ], [ -2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_pub_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %call = tail call fastcc i32 @ecx_key_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %pkey, i32 noundef %indent, i32 noundef 0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_priv_encode(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %oct = alloca %struct.asn1_string_st, align 8
  %penc = alloca i8*, align 8
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ecx = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ecx_key_st**
  %0 = load %struct.ecx_key_st*, %struct.ecx_key_st** %ecx, align 8, !tbaa !17
  %1 = bitcast %struct.asn1_string_st* %oct to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7
  %2 = bitcast i8** %penc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store i8* null, i8** %penc, align 8, !tbaa !4
  %cmp = icmp eq %struct.ecx_key_st* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %privkey = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %0, i64 0, i32 4
  %3 = load i8*, i8** %privkey, align 8, !tbaa !18
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ecx_priv_encode, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 123, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 2
  store i8* %3, i8** %data, align 8, !tbaa !20
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 0
  %5 = load i32, i32* %pkey_id, align 8, !tbaa !15
  switch i32 %5, label %cond.false [
    i32 1034, label %cond.end
    i32 1087, label %cond.end
  ]

cond.false:                                       ; preds = %if.end
  %cmp11 = icmp eq i32 %5, 1035
  %cond = select i1 %cmp11, i32 56, i32 57
  br label %cond.end

cond.end:                                         ; preds = %if.end, %if.end, %cond.false
  %cond12 = phi i32 [ %cond, %cond.false ], [ 32, %if.end ], [ 32, %if.end ]
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 0
  store i32 %cond12, i32* %length, align 8, !tbaa !22
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 3
  store i64 0, i64* %flags, align 8, !tbaa !23
  %call = call i32 @i2d_ASN1_OCTET_STRING(%struct.asn1_string_st* noundef nonnull %oct, i8** noundef nonnull %penc) #8
  %cmp13 = icmp slt i32 %call, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %cond.end
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ecx_priv_encode, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end15:                                         ; preds = %cond.end
  %6 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id17 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %6, i64 0, i32 0
  %7 = load i32, i32* %pkey_id17, align 8, !tbaa !15
  %call18 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %7) #8
  %8 = load i8*, i8** %penc, align 8, !tbaa !4
  %call19 = call i32 @PKCS8_pkey_set0(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.asn1_object_st* noundef %call18, i32 noundef 0, i32 noundef -1, i8* noundef null, i8* noundef %8, i32 noundef %call) #8
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.end15
  %9 = load i8*, i8** %penc, align 8, !tbaa !4
  %conv37 = zext i32 %call to i64
  call void @CRYPTO_clear_free(i8* noundef %9, i64 noundef %conv37, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 124) #8
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ecx_priv_encode, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then20, %if.then14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then14 ], [ 0, %if.then20 ], [ 1, %if.end15 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_priv_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %call = tail call fastcc i32 @ecx_key_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %pkey, i32 noundef %indent, i32 noundef 1) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @ecx_size(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #1 {
entry:
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !15
  switch i32 %1, label %cond.false [
    i32 1034, label %cond.end
    i32 1087, label %cond.end
  ]

cond.false:                                       ; preds = %entry
  %cmp6 = icmp eq i32 %1, 1035
  %cond = select i1 %cmp6, i32 56, i32 57
  br label %cond.end

cond.end:                                         ; preds = %entry, %entry, %cond.false
  %cond7 = phi i32 [ %cond, %cond.false ], [ 32, %entry ], [ 32, %entry ]
  ret i32 %cond7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @ecx_bits(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #1 {
entry:
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !15
  switch i32 %1, label %if.else8 [
    i32 1034, label %return
    i32 1087, label %return
    i32 1035, label %if.then7
  ]

if.then7:                                         ; preds = %entry
  br label %return

if.else8:                                         ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %entry, %if.else8, %if.then7
  %retval.0 = phi i32 [ 448, %if.then7 ], [ 456, %if.else8 ], [ 253, %entry ], [ 253, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @ecx_security_bits(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #1 {
entry:
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !15
  %switch.selectcmp.case1 = icmp eq i32 %1, 1034
  %switch.selectcmp.case2 = icmp eq i32 %1, 1087
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %2 = select i1 %switch.selectcmp, i32 128, i32 224
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ecx_cmp_parameters(%struct.evp_pkey_st* nocapture noundef readnone %a, %struct.evp_pkey_st* nocapture noundef readnone %b) #2 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @ecx_free(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ecx = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ecx_key_st**
  %0 = load %struct.ecx_key_st*, %struct.ecx_key_st** %ecx, align 8, !tbaa !17
  tail call void @ossl_ecx_key_free(%struct.ecx_key_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_ctrl(%struct.evp_pkey_st* noundef %pkey, i32 noundef %op, i64 noundef %arg1, i8* noundef %arg2) #0 {
entry:
  switch i32 %op, label %return [
    i32 9, label %sw.bb
    i32 10, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %conv = trunc i64 %arg1 to i32
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !15
  %call = tail call %struct.ecx_key_st* @ossl_ecx_key_op(%struct.X509_algor_st* noundef null, i8* noundef %arg2, i32 noundef %conv, i32 noundef %1, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  %cmp.not = icmp eq %struct.ecx_key_st* %call, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %sw.bb
  %2 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id3 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %2, i64 0, i32 0
  %3 = load i32, i32* %pkey_id3, align 8, !tbaa !15
  %4 = bitcast %struct.ecx_key_st* %call to i8*
  %call4 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef %3, i8* noundef nonnull %4) #8
  br label %return

sw.bb5:                                           ; preds = %entry
  %pkey6 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ecx7 = bitcast %union.legacy_pkey_st* %pkey6 to %struct.ecx_key_st**
  %5 = load %struct.ecx_key_st*, %struct.ecx_key_st** %ecx7, align 8, !tbaa !17
  %cmp8.not = icmp eq %struct.ecx_key_st* %5, null
  br i1 %cmp8.not, label %return, label %if.then10

if.then10:                                        ; preds = %sw.bb5
  %6 = bitcast i8* %arg2 to i8**
  %arraydecay = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %5, i64 0, i32 3, i64 0
  %ameth13 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %7 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth13, align 8, !tbaa !10
  %pkey_id14 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %7, i64 0, i32 0
  %8 = load i32, i32* %pkey_id14, align 8, !tbaa !15
  switch i32 %8, label %cond.false [
    i32 1034, label %cond.end
    i32 1087, label %cond.end
  ]

cond.false:                                       ; preds = %if.then10
  %cmp23 = icmp eq i32 %8, 1035
  %cond = select i1 %cmp23, i64 56, i64 57
  br label %cond.end

cond.end:                                         ; preds = %if.then10, %if.then10, %cond.false
  %cond25 = phi i64 [ %cond, %cond.false ], [ 32, %if.then10 ], [ 32, %if.then10 ]
  %call27 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %arraydecay, i64 noundef %cond25, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 235) #8
  store i8* %call27, i8** %6, align 8, !tbaa !4
  %cmp28.not = icmp eq i8* %call27, null
  br i1 %cmp28.not, label %return, label %if.then30

if.then30:                                        ; preds = %cond.end
  %9 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth13, align 8, !tbaa !10
  %pkey_id32 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %9, i64 0, i32 0
  %10 = load i32, i32* %pkey_id32, align 8, !tbaa !15
  switch i32 %10, label %cond.false41 [
    i32 1034, label %return
    i32 1087, label %return
  ]

cond.false41:                                     ; preds = %if.then30
  %cmp44 = icmp eq i32 %10, 1035
  %cond46 = select i1 %cmp44, i32 56, i32 57
  br label %return

return:                                           ; preds = %cond.end, %if.then30, %if.then30, %cond.false41, %sw.bb5, %entry, %if.then, %sw.bb
  %retval.2 = phi i32 [ 1, %if.then ], [ 0, %sw.bb ], [ -2, %entry ], [ 0, %sw.bb5 ], [ 32, %if.then30 ], [ 32, %if.then30 ], [ %cond46, %cond.false41 ], [ 0, %cond.end ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_set_priv_key(%struct.evp_pkey_st* noundef %pkey, i8* noundef %priv, i64 noundef %len) #0 {
entry:
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !24
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef nonnull %0) #8
  %call2 = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %libctx.0 = phi %struct.ossl_lib_ctx_st* [ %call2, %if.then ], [ null, %entry ]
  %conv = trunc i64 %len to i32
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 0
  %2 = load i32, i32* %pkey_id, align 8, !tbaa !15
  %call3 = tail call %struct.ecx_key_st* @ossl_ecx_key_op(%struct.X509_algor_st* noundef null, i8* noundef %priv, i32 noundef %conv, i32 noundef %2, i32 noundef 1, %struct.ossl_lib_ctx_st* noundef %libctx.0, i8* noundef null) #8
  %cmp4.not = icmp eq %struct.ecx_key_st* %call3, null
  br i1 %cmp4.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end
  %3 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id8 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %3, i64 0, i32 0
  %4 = load i32, i32* %pkey_id8, align 8, !tbaa !15
  %5 = bitcast %struct.ecx_key_st* %call3 to i8*
  %call9 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef %4, i8* noundef nonnull %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then6
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_set_pub_key(%struct.evp_pkey_st* noundef %pkey, i8* noundef %pub, i64 noundef %len) #0 {
entry:
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !24
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef nonnull %0) #8
  %call2 = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %libctx.0 = phi %struct.ossl_lib_ctx_st* [ %call2, %if.then ], [ null, %entry ]
  %conv = trunc i64 %len to i32
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 0
  %2 = load i32, i32* %pkey_id, align 8, !tbaa !15
  %call3 = tail call %struct.ecx_key_st* @ossl_ecx_key_op(%struct.X509_algor_st* noundef null, i8* noundef %pub, i32 noundef %conv, i32 noundef %2, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %libctx.0, i8* noundef null) #8
  %cmp4.not = icmp eq %struct.ecx_key_st* %call3, null
  br i1 %cmp4.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end
  %3 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id8 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %3, i64 0, i32 0
  %4 = load i32, i32* %pkey_id8, align 8, !tbaa !15
  %5 = bitcast %struct.ecx_key_st* %call3 to i8*
  %call9 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef %4, i8* noundef nonnull %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then6
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_get_priv_key(%struct.evp_pkey_st* nocapture noundef readonly %pkey, i8* noundef %priv, i64* nocapture noundef %len) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ecx = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ecx_key_st**
  %0 = load %struct.ecx_key_st*, %struct.ecx_key_st** %ecx, align 8, !tbaa !17
  %cmp = icmp eq i8* %priv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 0
  %2 = load i32, i32* %pkey_id, align 8, !tbaa !15
  switch i32 %2, label %cond.false [
    i32 1034, label %cond.end
    i32 1087, label %cond.end
  ]

cond.false:                                       ; preds = %if.then
  %cmp8 = icmp eq i32 %2, 1035
  %cond = select i1 %cmp8, i64 56, i64 57
  br label %cond.end

cond.end:                                         ; preds = %if.then, %if.then, %cond.false
  %cond9 = phi i64 [ %cond, %cond.false ], [ 32, %if.then ], [ 32, %if.then ]
  store i64 %cond9, i64* %len, align 8, !tbaa !25
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp10 = icmp eq %struct.ecx_key_st* %0, null
  br i1 %cmp10, label %cleanup, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end
  %privkey = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %0, i64 0, i32 4
  %3 = load i8*, i8** %privkey, align 8, !tbaa !18
  %cmp13 = icmp eq i8* %3, null
  br i1 %cmp13, label %cleanup, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %4 = load i64, i64* %len, align 8, !tbaa !25
  %ameth16 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %5 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth16, align 8, !tbaa !10
  %pkey_id17 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %5, i64 0, i32 0
  %6 = load i32, i32* %pkey_id17, align 8, !tbaa !15
  switch i32 %6, label %cond.false26 [
    i32 1034, label %cond.end32
    i32 1087, label %cond.end32
  ]

cond.false26:                                     ; preds = %lor.lhs.false15
  %cmp29 = icmp eq i32 %6, 1035
  %cond31 = select i1 %cmp29, i64 56, i64 57
  br label %cond.end32

cond.end32:                                       ; preds = %lor.lhs.false15, %lor.lhs.false15, %cond.false26
  %cond33 = phi i64 [ %cond31, %cond.false26 ], [ 32, %lor.lhs.false15 ], [ 32, %lor.lhs.false15 ]
  %cmp35 = icmp ult i64 %4, %cond33
  br i1 %cmp35, label %cleanup, label %if.end38

if.end38:                                         ; preds = %cond.end32
  switch i32 %6, label %cond.false49 [
    i32 1034, label %cond.end55
    i32 1087, label %cond.end55
  ]

cond.false49:                                     ; preds = %if.end38
  %cmp52 = icmp eq i32 %6, 1035
  %cond54 = select i1 %cmp52, i64 56, i64 57
  br label %cond.end55

cond.end55:                                       ; preds = %if.end38, %if.end38, %cond.false49
  %cond56 = phi i64 [ %cond54, %cond.false49 ], [ 32, %if.end38 ], [ 32, %if.end38 ]
  store i64 %cond56, i64* %len, align 8, !tbaa !25
  %call = tail call i8* @memcpy(i8* noundef nonnull %priv, i8* noundef nonnull %3, i64 noundef %cond56) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false12, %cond.end32, %cond.end55, %cond.end
  %retval.0 = phi i32 [ 1, %cond.end ], [ 1, %cond.end55 ], [ 0, %cond.end32 ], [ 0, %lor.lhs.false12 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_get_pub_key(%struct.evp_pkey_st* nocapture noundef readonly %pkey, i8* noundef %pub, i64* nocapture noundef %len) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ecx = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ecx_key_st**
  %0 = load %struct.ecx_key_st*, %struct.ecx_key_st** %ecx, align 8, !tbaa !17
  %cmp = icmp eq i8* %pub, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 0
  %2 = load i32, i32* %pkey_id, align 8, !tbaa !15
  switch i32 %2, label %cond.false [
    i32 1034, label %cond.end
    i32 1087, label %cond.end
  ]

cond.false:                                       ; preds = %if.then
  %cmp8 = icmp eq i32 %2, 1035
  %cond = select i1 %cmp8, i64 56, i64 57
  br label %cond.end

cond.end:                                         ; preds = %if.then, %if.then, %cond.false
  %cond9 = phi i64 [ %cond, %cond.false ], [ 32, %if.then ], [ 32, %if.then ]
  store i64 %cond9, i64* %len, align 8, !tbaa !25
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp10 = icmp eq %struct.ecx_key_st* %0, null
  br i1 %cmp10, label %cleanup, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end
  %3 = load i64, i64* %len, align 8, !tbaa !25
  %ameth13 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth13, align 8, !tbaa !10
  %pkey_id14 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 0
  %5 = load i32, i32* %pkey_id14, align 8, !tbaa !15
  switch i32 %5, label %cond.false23 [
    i32 1034, label %cond.end29
    i32 1087, label %cond.end29
  ]

cond.false23:                                     ; preds = %lor.lhs.false12
  %cmp26 = icmp eq i32 %5, 1035
  %cond28 = select i1 %cmp26, i64 56, i64 57
  br label %cond.end29

cond.end29:                                       ; preds = %lor.lhs.false12, %lor.lhs.false12, %cond.false23
  %cond30 = phi i64 [ %cond28, %cond.false23 ], [ 32, %lor.lhs.false12 ], [ 32, %lor.lhs.false12 ]
  %cmp32 = icmp ult i64 %3, %cond30
  br i1 %cmp32, label %cleanup, label %if.end35

if.end35:                                         ; preds = %cond.end29
  switch i32 %5, label %cond.false46 [
    i32 1034, label %cond.end52
    i32 1087, label %cond.end52
  ]

cond.false46:                                     ; preds = %if.end35
  %cmp49 = icmp eq i32 %5, 1035
  %cond51 = select i1 %cmp49, i64 56, i64 57
  br label %cond.end52

cond.end52:                                       ; preds = %if.end35, %if.end35, %cond.false46
  %cond53 = phi i64 [ %cond51, %cond.false46 ], [ 32, %if.end35 ], [ 32, %if.end35 ]
  store i64 %cond53, i64* %len, align 8, !tbaa !25
  %arraydecay = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %0, i64 0, i32 3, i64 0
  %call = tail call i8* @memcpy(i8* noundef nonnull %pub, i8* noundef nonnull %arraydecay, i64 noundef %cond53) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end29, %cond.end52, %cond.end
  %retval.0 = phi i32 [ 1, %cond.end ], [ 1, %cond.end52 ], [ 0, %cond.end29 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i64 @ecx_pkey_dirty_cnt(%struct.evp_pkey_st* nocapture noundef readnone %pkey) #2 {
entry:
  ret i64 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_pkey_export_to(%struct.evp_pkey_st* nocapture noundef readonly %from, i8* noundef %to_keydata, i32 (i8*, i32, %struct.ossl_param_st*)* nocapture noundef readonly %importer, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 5
  %ecx = bitcast %union.legacy_pkey_st* %pkey to %struct.ecx_key_st**
  %0 = load %struct.ecx_key_st*, %struct.ecx_key_st** %ecx, align 8, !tbaa !17
  %call = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %cmp = icmp eq %struct.ossl_param_bld_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %0, i64 0, i32 3, i64 0
  %keylen = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %0, i64 0, i32 5
  %1 = load i64, i64* %keylen, align 8, !tbaa !26
  %call1 = tail call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %arraydecay, i64 noundef %1) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %privkey = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %0, i64 0, i32 4
  %2 = load i8*, i8** %privkey, align 8, !tbaa !18
  %cmp4.not = icmp eq i8* %2, null
  br i1 %cmp4.not, label %if.end13, label %if.then5

if.then5:                                         ; preds = %if.end3
  %3 = load i64, i64* %keylen, align 8, !tbaa !26
  %call8 = tail call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef %3) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.then5, %if.end3
  %selection.0 = phi i32 [ 2, %if.end3 ], [ 3, %if.then5 ]
  %call14 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef nonnull %call) #8
  %call15 = tail call i32 %importer(i8* noundef %to_keydata, i32 noundef %selection.0, %struct.ossl_param_st* noundef %call14) #8
  br label %err

err:                                              ; preds = %if.then5, %if.end, %if.end13
  %params.0 = phi %struct.ossl_param_st* [ %call14, %if.end13 ], [ null, %if.then5 ], [ null, %if.end ]
  %rv.0 = phi i32 [ %call15, %if.end13 ], [ 0, %if.then5 ], [ 0, %if.end ]
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef nonnull %call) #8
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.0) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @x25519_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx) #0 {
entry:
  %call = tail call fastcc i32 @ecx_generic_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx, i32 noundef 1034) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_pkey_copy(%struct.evp_pkey_st* noundef %to, %struct.evp_pkey_st* nocapture noundef readonly %from) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 5
  %ecx1 = bitcast %union.legacy_pkey_st* %pkey to %struct.ecx_key_st**
  %0 = load %struct.ecx_key_st*, %struct.ecx_key_st** %ecx1, align 8, !tbaa !17
  %cmp.not = icmp eq %struct.ecx_key_st* %0, null
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.ecx_key_st* @ossl_ecx_key_dup(%struct.ecx_key_st* noundef nonnull %0, i32 noundef 135) #8
  %cmp2 = icmp eq %struct.ecx_key_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %dupkey.0 = phi %struct.ecx_key_st* [ %call, %if.then ], [ null, %entry ]
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !27
  %2 = bitcast %struct.ecx_key_st* %dupkey.0 to i8*
  %call5 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %to, i32 noundef %1, i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end4
  tail call void @ossl_ecx_key_free(%struct.ecx_key_st* noundef %dupkey.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ %call5, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecx_priv_decode_ex(%struct.evp_pkey_st* noundef %pkey, %struct.pkcs8_priv_key_info_st* noundef %p8, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #0 {
entry:
  %call = tail call %struct.ecx_key_st* @ossl_ecx_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %cmp.not = icmp eq %struct.ecx_key_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !15
  %2 = bitcast %struct.ecx_key_st* %call to i8*
  %call1 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef %1, i8* noundef nonnull %2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @x448_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx) #0 {
entry:
  %call = tail call fastcc i32 @ecx_generic_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx, i32 noundef 1035) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ecd_size25519(%struct.evp_pkey_st* nocapture noundef readnone %pkey) #2 {
entry:
  ret i32 64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @ecd_ctrl(%struct.evp_pkey_st* nocapture noundef readnone %pkey, i32 noundef %op, i64 noundef %arg1, i8* nocapture noundef writeonly %arg2) #3 {
entry:
  %cond = icmp eq i32 %op, 3
  br i1 %cond, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %0 = bitcast i8* %arg2 to i32*
  store i32 0, i32* %0, align 4, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i32 [ 2, %sw.bb ], [ -2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecd_item_verify(%struct.evp_md_ctx_st* noundef %ctx, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %asn, %struct.X509_algor_st* noundef %sigalg, %struct.asn1_string_st* nocapture noundef readnone %str, %struct.evp_pkey_st* noundef %pkey) #0 {
entry:
  %obj = alloca %struct.asn1_object_st*, align 8
  %ptype = alloca i32, align 4
  %0 = bitcast %struct.asn1_object_st** %obj to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast i32* %ptype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %obj, i32* noundef nonnull %ptype, i8** noundef null, %struct.X509_algor_st* noundef %sigalg) #8
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %obj, align 8, !tbaa !4
  %call = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #8
  %3 = add i32 %call, -1089
  %4 = icmp ult i32 %3, -2
  %5 = load i32, i32* %ptype, align 4
  %cmp2 = icmp ne i32 %5, -1
  %or.cond8 = select i1 %4, i1 true, i1 %cmp2
  br i1 %or.cond8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 554, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ecd_item_verify, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef null, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %pkey) #8
  %tobool.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool.not, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecd_item_sign25519(%struct.evp_md_ctx_st* nocapture noundef readnone %ctx, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %asn, %struct.X509_algor_st* noundef %alg1, %struct.X509_algor_st* noundef %alg2, %struct.asn1_string_st* nocapture noundef readnone %str) #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 1087) #8
  %call1 = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %alg1, %struct.asn1_object_st* noundef %call, i32 noundef -1, i8* noundef null) #8
  %tobool.not = icmp eq %struct.X509_algor_st* %alg2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 1087) #8
  %call3 = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef nonnull %alg2, %struct.asn1_object_st* noundef %call2, i32 noundef -1, i8* noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecd_sig_info_set25519(%struct.x509_sig_info_st* noundef %siginf, %struct.X509_algor_st* nocapture noundef readnone %alg, %struct.asn1_string_st* nocapture noundef readnone %sig) #0 {
entry:
  tail call void @X509_SIG_INFO_set(%struct.x509_sig_info_st* noundef %siginf, i32 noundef 0, i32 noundef 1087, i32 noundef 128, i32 noundef 2) #8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ed25519_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx) #0 {
entry:
  %call = tail call fastcc i32 @ecx_generic_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx, i32 noundef 1087) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ecd_size448(%struct.evp_pkey_st* nocapture noundef readnone %pkey) #2 {
entry:
  ret i32 114
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecd_item_sign448(%struct.evp_md_ctx_st* nocapture noundef readnone %ctx, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %asn, %struct.X509_algor_st* noundef %alg1, %struct.X509_algor_st* noundef %alg2, %struct.asn1_string_st* nocapture noundef readnone %str) #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 1088) #8
  %call1 = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %alg1, %struct.asn1_object_st* noundef %call, i32 noundef -1, i8* noundef null) #8
  %cmp.not = icmp eq %struct.X509_algor_st* %alg2, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 1088) #8
  %call3 = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef nonnull %alg2, %struct.asn1_object_st* noundef %call2, i32 noundef -1, i8* noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecd_sig_info_set448(%struct.x509_sig_info_st* noundef %siginf, %struct.X509_algor_st* nocapture noundef readnone %alg, %struct.asn1_string_st* nocapture noundef readnone %sig) #0 {
entry:
  tail call void @X509_SIG_INFO_set(%struct.x509_sig_info_st* noundef %siginf, i32 noundef 0, i32 noundef 1088, i32 noundef 224, i32 noundef 2) #8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ed448_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx) #0 {
entry:
  %call = tail call fastcc i32 @ecx_generic_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx, i32 noundef 1088) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_pkey_method_st* @ossl_ecx25519_pkey_method() local_unnamed_addr #2 {
entry:
  ret %struct.evp_pkey_method_st* @ecx25519_pkey_meth
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_pkey_method_st* @ossl_ecx448_pkey_method() local_unnamed_addr #2 {
entry:
  ret %struct.evp_pkey_method_st* @ecx448_pkey_meth
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_pkey_method_st* @ossl_ed25519_pkey_method() local_unnamed_addr #2 {
entry:
  ret %struct.evp_pkey_method_st* @ed25519_pkey_meth
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_pkey_method_st* @ossl_ed448_pkey_method() local_unnamed_addr #2 {
entry:
  ret %struct.evp_pkey_method_st* @ed448_pkey_meth
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #5

declare %struct.ecx_key_st* @ossl_ecx_key_op(%struct.X509_algor_st* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #5

declare i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare void @ERR_new() local_unnamed_addr #5

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #5

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare i32 @X509_PUBKEY_set0_param(%struct.X509_pubkey_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #5

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ecx_key_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, i32 noundef %op) unnamed_addr #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ecx = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ecx_key_st**
  %0 = load %struct.ecx_key_st*, %struct.ecx_key_st** %ecx, align 8, !tbaa !17
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 0
  %2 = load i32, i32* %pkey_id, align 8, !tbaa !15
  %call = tail call i8* @OBJ_nid2ln(i32 noundef %2) #8
  %cmp = icmp eq i32 %op, 1
  %cmp2 = icmp eq %struct.ecx_key_st* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %privkey = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %0, i64 0, i32 4
  %3 = load i8*, i8** %privkey, align 8, !tbaa !18
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #8
  %cmp6 = icmp sgt i32 %call5, 0
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call) #8
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #8
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end12
  %4 = load i8*, i8** %privkey, align 8, !tbaa !18
  %5 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id19 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %5, i64 0, i32 0
  %6 = load i32, i32* %pkey_id19, align 8, !tbaa !15
  switch i32 %6, label %cond.false [
    i32 1034, label %cond.end
    i32 1087, label %cond.end
  ]

cond.false:                                       ; preds = %if.end16
  %cmp27 = icmp eq i32 %6, 1035
  %cond = select i1 %cmp27, i64 56, i64 57
  br label %cond.end

cond.end:                                         ; preds = %if.end16, %if.end16, %cond.false
  %cond28 = phi i64 [ %cond, %cond.false ], [ 32, %if.end16 ], [ 32, %if.end16 ]
  %add = add nsw i32 %indent, 4
  %call29 = tail call i32 @ASN1_buf_print(%struct.bio_st* noundef %bp, i8* noundef %4, i64 noundef %cond28, i32 noundef %add) #8
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %cleanup, label %if.end48

if.else:                                          ; preds = %entry
  br i1 %cmp2, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.else
  %call37 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #8
  %cmp38 = icmp sgt i32 %call37, 0
  br label %cleanup

if.end42:                                         ; preds = %if.else
  %call43 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call) #8
  %cmp44 = icmp slt i32 %call43, 1
  br i1 %cmp44, label %cleanup, label %if.end48

if.end48:                                         ; preds = %if.end42, %cond.end
  %call49 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #8
  %cmp50 = icmp slt i32 %call49, 1
  br i1 %cmp50, label %cleanup, label %if.end53

if.end53:                                         ; preds = %if.end48
  %arraydecay = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %0, i64 0, i32 3, i64 0
  %7 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !10
  %pkey_id55 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %7, i64 0, i32 0
  %8 = load i32, i32* %pkey_id55, align 8, !tbaa !15
  switch i32 %8, label %cond.false64 [
    i32 1034, label %cond.end70
    i32 1087, label %cond.end70
  ]

cond.false64:                                     ; preds = %if.end53
  %cmp67 = icmp eq i32 %8, 1035
  %cond69 = select i1 %cmp67, i64 56, i64 57
  br label %cond.end70

cond.end70:                                       ; preds = %if.end53, %if.end53, %cond.false64
  %cond71 = phi i64 [ %cond69, %cond.false64 ], [ 32, %if.end53 ], [ 32, %if.end53 ]
  %add73 = add nsw i32 %indent, 4
  %call74 = tail call i32 @ASN1_buf_print(%struct.bio_st* noundef %bp, i8* noundef nonnull %arraydecay, i64 noundef %cond71, i32 noundef %add73) #8
  %cmp75 = icmp ne i32 %call74, 0
  br label %cleanup

cleanup:                                          ; preds = %cond.end70, %if.end48, %if.end42, %if.then36, %cond.end, %if.end12, %if.end8, %if.then4
  %retval.0.shrunk = phi i1 [ %cmp6, %if.then4 ], [ false, %if.end8 ], [ false, %if.end12 ], [ false, %cond.end ], [ %cmp38, %if.then36 ], [ false, %if.end42 ], [ false, %if.end48 ], [ %cmp75, %cond.end70 ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

declare i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #5

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #5

declare i32 @ASN1_buf_print(%struct.bio_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @i2d_ASN1_OCTET_STRING(%struct.asn1_string_st* noundef, i8** noundef) local_unnamed_addr #5

declare i32 @PKCS8_pkey_set0(%struct.pkcs8_priv_key_info_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare void @ossl_ecx_key_free(%struct.ecx_key_st* noundef) local_unnamed_addr #5

declare %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #5

declare %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #5

declare i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #5

declare void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #5

declare void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ecx_generic_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx, i32 noundef %keytype) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %vpctx to %struct.evp_pkey_ctx_st*
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef %0) #8
  %libctx = getelementptr inbounds i8, i8* %vpctx, i64 8
  %1 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %1, align 8, !tbaa !28
  switch i32 %keytype, label %cond.false [
    i32 1087, label %cond.true
    i32 1034, label %cond.true
  ]

cond.true:                                        ; preds = %entry, %entry
  %cmp = icmp eq i32 %keytype, 1034
  %cond = select i1 %cmp, i32 0, i32 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %cmp3 = icmp eq i32 %keytype, 1035
  %cond4 = select i1 %cmp3, i32 1, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ %cond, %cond.true ], [ %cond4, %cond.false ]
  %propquery = getelementptr inbounds i8, i8* %vpctx, i64 16
  %3 = bitcast i8* %propquery to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !31
  %call6 = tail call %struct.ecx_key_st* @ossl_ecx_key_new(%struct.ossl_lib_ctx_st* noundef %2, i32 noundef %cond5, i32 noundef 0, i8* noundef %4) #8
  %cmp7 = icmp eq %struct.ecx_key_st* %call6, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ecx_generic_import_from, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call8 = tail call i32 @ossl_ecx_key_fromdata(%struct.ecx_key_st* noundef nonnull %call6, %struct.ossl_param_st* noundef %params, i32 noundef 1) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %5 = bitcast %struct.ecx_key_st* %call6 to i8*
  %call10 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call, i32 noundef %keytype, i8* noundef nonnull %5) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %cleanup

if.then12:                                        ; preds = %lor.lhs.false9, %if.end
  tail call void @ossl_ecx_key_free(%struct.ecx_key_st* noundef nonnull %call6) #8
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false9, %if.then12, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then12 ], [ 1, %lor.lhs.false9 ]
  ret i32 %retval.0
}

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #5

declare %struct.ecx_key_st* @ossl_ecx_key_new(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

declare i32 @ossl_ecx_key_fromdata(%struct.ecx_key_st* noundef, %struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #5

declare %struct.ecx_key_st* @ossl_ecx_key_dup(%struct.ecx_key_st* noundef, i32 noundef) local_unnamed_addr #5

declare %struct.ecx_key_st* @ossl_ecx_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #5

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #5

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #5

declare i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #5

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

declare void @X509_SIG_INFO_set(%struct.x509_sig_info_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ecx_keygen(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, %struct.evp_pkey_st* noundef %pkey) #0 {
entry:
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %0 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !32
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !33
  %call = tail call %struct.ecx_key_st* @ossl_ecx_key_op(%struct.X509_algor_st* noundef null, i8* noundef null, i32 noundef 0, i32 noundef %1, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  %cmp.not = icmp eq %struct.ecx_key_st* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !32
  %pkey_id2 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %2, i64 0, i32 0
  %3 = load i32, i32* %pkey_id2, align 8, !tbaa !33
  %4 = bitcast %struct.ecx_key_st* %call to i8*
  %call3 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef %3, i8* noundef nonnull %4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ecx_derive25519(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %key, i64* nocapture noundef writeonly %keylen) #0 {
entry:
  %privkey = alloca i8*, align 8
  %pubkey = alloca i8*, align 8
  %0 = bitcast i8** %privkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast i8** %pubkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %call = call fastcc i32 @validate_ecx_derive(%struct.evp_pkey_ctx_st* noundef %ctx, i8** noundef nonnull %privkey, i8** noundef nonnull %pubkey) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp.not = icmp eq i8* %key, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i8*, i8** %privkey, align 8, !tbaa !4
  %3 = load i8*, i8** %pubkey, align 8, !tbaa !4
  %call1 = tail call i32 @ossl_x25519(i8* noundef nonnull %key, i8* noundef %2, i8* noundef %3) #8
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  store i64 32, i64* %keylen, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @pkey_ecx_ctrl(%struct.evp_pkey_ctx_st* nocapture noundef readnone %ctx, i32 noundef %type, i32 noundef %p1, i8* nocapture noundef readnone %p2) #2 {
entry:
  %cmp = icmp eq i32 %type, 2
  %. = select i1 %cmp, i32 1, i32 -2
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @validate_ecx_derive(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8** nocapture noundef writeonly %privkey, i8** nocapture noundef writeonly %pubkey) unnamed_addr #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !35
  %cmp = icmp eq %struct.evp_pkey_st* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %peerkey1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 15
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peerkey1, align 8, !tbaa !36
  %cmp2 = icmp eq %struct.evp_pkey_st* %1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.validate_ecx_derive, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 140, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef nonnull %0) #8
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peerkey1, align 8, !tbaa !36
  %call5 = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef %2) #8
  %cmp6 = icmp eq i8* %call, null
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %privkey8 = getelementptr inbounds i8, i8* %call, i64 80
  %3 = bitcast i8* %privkey8 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !18
  %cmp9 = icmp eq i8* %4, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false7, %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.validate_ecx_derive, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 123, i8* noundef null) #8
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false7
  %cmp12 = icmp eq i8* %call5, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.validate_ecx_derive, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 133, i8* noundef null) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  store i8* %4, i8** %privkey, align 8, !tbaa !4
  %pubkey16 = getelementptr inbounds i8, i8* %call5, i64 17
  store i8* %pubkey16, i8** %pubkey, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then10, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then10 ], [ 0, %if.then13 ], [ 1, %if.end14 ]
  ret i32 %retval.0
}

declare i32 @ossl_x25519(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

declare i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ecx_derive448(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i8* noundef %key, i64* nocapture noundef writeonly %keylen) #0 {
entry:
  %privkey = alloca i8*, align 8
  %pubkey = alloca i8*, align 8
  %0 = bitcast i8** %privkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast i8** %pubkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %call = call fastcc i32 @validate_ecx_derive(%struct.evp_pkey_ctx_st* noundef %ctx, i8** noundef nonnull %privkey, i8** noundef nonnull %pubkey) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp.not = icmp eq i8* %key, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i8*, i8** %privkey, align 8, !tbaa !4
  %3 = load i8*, i8** %pubkey, align 8, !tbaa !4
  %call1 = tail call i32 @ossl_x448(i8* noundef nonnull %key, i8* noundef %2, i8* noundef %3) #8
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  store i64 56, i64* %keylen, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @ossl_x448(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ecd_ctrl(%struct.evp_pkey_ctx_st* nocapture noundef readnone %ctx, i32 noundef %type, i32 noundef %p1, i8* noundef readnone %p2) #0 {
entry:
  switch i32 %type, label %sw.epilog [
    i32 1, label %sw.bb
    i32 7, label %return
  ]

sw.bb:                                            ; preds = %entry
  %cmp = icmp eq i8* %p2, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %0 = bitcast i8* %p2 to %struct.evp_md_st*
  %call = tail call %struct.evp_md_st* @EVP_md_null() #8
  %cmp1 = icmp eq %struct.evp_md_st* %call, %0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 882, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_ecd_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 138, i8* noundef null) #8
  br label %return

sw.epilog:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %sw.bb, %lor.lhs.false, %sw.epilog, %if.end
  %retval.0 = phi i32 [ -2, %sw.epilog ], [ 0, %if.end ], [ 1, %lor.lhs.false ], [ 1, %sw.bb ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ecd_digestsign25519(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sig, i64* nocapture noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #0 {
entry:
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef %ctx) #8
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %call, i64 0, i32 14
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !35
  %call1 = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef %0) #8
  %cmp = icmp eq i8* %sig, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 64, i64* %siglen, align 8, !tbaa !25
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %siglen, align 8, !tbaa !25
  %cmp2 = icmp ult i64 %1, 64
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 816, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.pkey_ecd_digestsign25519, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 100, i8* noundef null) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pubkey = getelementptr inbounds i8, i8* %call1, i64 17
  %privkey = getelementptr inbounds i8, i8* %call1, i64 80
  %2 = bitcast i8* %privkey to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !18
  %call5 = tail call i32 @ossl_ed25519_sign(i8* noundef nonnull %sig, i8* noundef %tbs, i64 noundef %tbslen, i8* noundef nonnull %pubkey, i8* noundef %3, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  store i64 64, i64* %siglen, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end8, %if.then3, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.then3 ], [ 1, %if.end8 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ecd_digestverify25519(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sig, i64 noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #0 {
entry:
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef %ctx) #8
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %call, i64 0, i32 14
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !35
  %call1 = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef %0) #8
  %cmp.not = icmp eq i64 %siglen, 64
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %pubkey = getelementptr inbounds i8, i8* %call1, i64 17
  %libctx = bitcast i8* %call1 to %struct.ossl_lib_ctx_st**
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !37
  %propq = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %propq to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !38
  %call2 = tail call i32 @ossl_ed25519_verify(i8* noundef %tbs, i64 noundef %tbslen, i8* noundef %sig, i8* noundef nonnull %pubkey, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.evp_md_st* @EVP_md_null() local_unnamed_addr #5

declare %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #5

declare i32 @ossl_ed25519_sign(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #5

declare i32 @ossl_ed25519_verify(i8* noundef, i64 noundef, i8* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ecd_digestsign448(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sig, i64* nocapture noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #0 {
entry:
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef %ctx) #8
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %call, i64 0, i32 14
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !35
  %call1 = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef %0) #8
  %cmp = icmp eq i8* %sig, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 114, i64* %siglen, align 8, !tbaa !25
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %siglen, align 8, !tbaa !25
  %cmp2 = icmp ult i64 %1, 114
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef 838, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pkey_ecd_digestsign448, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 100, i8* noundef null) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %libctx = bitcast i8* %call1 to %struct.ossl_lib_ctx_st**
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !37
  %pubkey = getelementptr inbounds i8, i8* %call1, i64 17
  %privkey = getelementptr inbounds i8, i8* %call1, i64 80
  %3 = bitcast i8* %privkey to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !18
  %propq = getelementptr inbounds i8, i8* %call1, i64 8
  %5 = bitcast i8* %propq to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !38
  %call5 = tail call i32 @ossl_ed448_sign(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef nonnull %sig, i8* noundef %tbs, i64 noundef %tbslen, i8* noundef nonnull %pubkey, i8* noundef %4, i8* noundef null, i64 noundef 0, i8* noundef %6) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  store i64 114, i64* %siglen, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end8, %if.then3, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.then3 ], [ 1, %if.end8 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_ecd_digestverify448(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sig, i64 noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #0 {
entry:
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef %ctx) #8
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %call, i64 0, i32 14
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !35
  %call1 = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef %0) #8
  %cmp.not = icmp eq i64 %siglen, 114
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %libctx = bitcast i8* %call1 to %struct.ossl_lib_ctx_st**
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !37
  %pubkey = getelementptr inbounds i8, i8* %call1, i64 17
  %propq = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %propq to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !38
  %call2 = tail call i32 @ossl_ed448_verify(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef %tbs, i64 noundef %tbslen, i8* noundef %sig, i8* noundef nonnull %pubkey, i8* noundef null, i64 noundef 0, i8* noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ossl_ed448_sign(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #5

declare i32 @ossl_ed448_verify(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

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
!11 = !{!"evp_pkey_st", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !5, i64 56, !5, i64 64, !9, i64 72, !9, i64 76, !12, i64 80, !5, i64 96, !5, i64 104, !13, i64 112, !5, i64 120, !13, i64 128, !14, i64 136}
!12 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!13 = !{!"long", !6, i64 0}
!14 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8}
!15 = !{!16, !9, i64 0}
!16 = !{!"evp_pkey_asn1_method_st", !9, i64 0, !9, i64 4, !13, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !5, i64 80}
!19 = !{!"ecx_key_st", !5, i64 0, !5, i64 8, !9, i64 16, !6, i64 17, !5, i64 80, !13, i64 88, !6, i64 96, !6, i64 100, !5, i64 104}
!20 = !{!21, !5, i64 8}
!21 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !5, i64 8, !13, i64 16}
!22 = !{!21, !9, i64 0}
!23 = !{!21, !13, i64 16}
!24 = !{!11, !5, i64 96}
!25 = !{!13, !13, i64 0}
!26 = !{!19, !13, i64 88}
!27 = !{!11, !9, i64 0}
!28 = !{!29, !5, i64 8}
!29 = !{!"evp_pkey_ctx_st", !9, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !6, i64 40, !30, i64 56, !5, i64 88, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !9, i64 160, !5, i64 168}
!30 = !{!"", !5, i64 0, !5, i64 8, !13, i64 16, !9, i64 24}
!31 = !{!29, !5, i64 16}
!32 = !{!29, !5, i64 120}
!33 = !{!34, !9, i64 0}
!34 = !{!"evp_pkey_method_st", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248}
!35 = !{!29, !5, i64 136}
!36 = !{!29, !5, i64 144}
!37 = !{!19, !5, i64 0}
!38 = !{!19, !5, i64 8}
