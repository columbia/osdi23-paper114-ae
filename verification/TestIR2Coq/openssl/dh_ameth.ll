; ModuleID = 'crypto/dh/dh_ameth.c'
source_filename = "crypto/dh/dh_ameth.c"
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
%struct.dh_st = type { i32, i32, %struct.ffc_params_st, i32, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.ossl_lib_ctx_st*, %struct.dh_method*, i8*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.0, %struct.anon.6, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.6 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }

@.str = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"OpenSSL PKCS#3 DH method\00", align 1
@ossl_dh_asn1_meth = local_unnamed_addr constant { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* } { i32 28, i32 28, i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* @dh_pub_decode, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* @dh_pub_encode, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @dh_pub_cmp, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @dh_public_print, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* @dh_priv_decode, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* @dh_priv_encode, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @dh_private_print, i32 (%struct.evp_pkey_st*)* @int_dh_size, i32 (%struct.evp_pkey_st*)* @dh_bits, i32 (%struct.evp_pkey_st*)* @dh_security_bits, i32 (%struct.evp_pkey_st*, i8**, i32)* @dh_param_decode, i32 (%struct.evp_pkey_st*, i8**)* @dh_param_encode, i32 (%struct.evp_pkey_st*)* @dh_missing_parameters, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @dh_copy_parameters, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @dh_cmp_parameters, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @dh_param_print, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* null, void (%struct.evp_pkey_st*)* @int_dh_free, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* @dh_pkey_ctrl, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* @dh_pkey_public_check, i32 (%struct.evp_pkey_st*)* @dh_pkey_param_check, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i64 (%struct.evp_pkey_st*)* @dh_pkey_dirty_cnt, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* @dh_pkey_export_to, i32 (%struct.ossl_param_st*, i8*)* @dh_pkey_import_from, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @dh_pkey_copy, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* null }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"X9.42 DH\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"OpenSSL X9.42 DH method\00", align 1
@ossl_dhx_asn1_meth = constant { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* } { i32 920, i32 920, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* @dh_pub_decode, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* @dh_pub_encode, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @dh_pub_cmp, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @dh_public_print, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* @dh_priv_decode, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* @dh_priv_encode, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @dh_private_print, i32 (%struct.evp_pkey_st*)* @int_dh_size, i32 (%struct.evp_pkey_st*)* @dh_bits, i32 (%struct.evp_pkey_st*)* @dh_security_bits, i32 (%struct.evp_pkey_st*, i8**, i32)* @dh_param_decode, i32 (%struct.evp_pkey_st*, i8**)* @dh_param_encode, i32 (%struct.evp_pkey_st*)* @dh_missing_parameters, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @dh_copy_parameters, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @dh_cmp_parameters, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @dh_param_print, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* null, void (%struct.evp_pkey_st*)* @int_dh_free, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* @dhx_pkey_ctrl, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* @dh_pkey_public_check, i32 (%struct.evp_pkey_st*)* @dh_pkey_param_check, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i64 (%struct.evp_pkey_st*)* @dh_pkey_dirty_cnt, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* @dh_pkey_export_to, i32 (%struct.ossl_param_st*, i8*)* @dhx_pkey_import_from, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @dh_pkey_copy, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* null }, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"DH Private-Key\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"DH Public-Key\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"DH Parameters\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s: (%d bit)\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"private-key:\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"public-key:\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"recommended-private-length: %d bits\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"crypto/dh/dh_ameth.c\00", align 1
@__func__.do_dh_print = private unnamed_addr constant [12 x i8] c"do_dh_print\00", align 1
@__func__.dh_pub_decode = private unnamed_addr constant [14 x i8] c"dh_pub_decode\00", align 1
@__func__.dh_pub_encode = private unnamed_addr constant [14 x i8] c"dh_pub_encode\00", align 1
@__func__.dh_priv_encode = private unnamed_addr constant [15 x i8] c"dh_priv_encode\00", align 1
@__func__.dh_pkey_public_check = private unnamed_addr constant [21 x i8] c"dh_pkey_public_check\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"priv_len\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@__func__.dh_pkey_import_from_type = private unnamed_addr constant [25 x i8] c"dh_pkey_import_from_type\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @DHparams_dup(%struct.dh_st* noundef %dh) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.dh_st* @DH_new() #5
  %cmp = icmp eq %struct.dh_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @int_dh_param_copy(%struct.dh_st* noundef nonnull %call, %struct.dh_st* noundef %dh, i32 noundef -1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  tail call void @DH_free(%struct.dh_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi %struct.dh_st* [ null, %if.then2 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct.dh_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.dh_st* @DH_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_dh_param_copy(%struct.dh_st* noundef %to, %struct.dh_st* noundef %from, i32 noundef %is_x942) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %is_x942, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %q = getelementptr inbounds %struct.dh_st, %struct.dh_st* %from, i64 0, i32 2, i32 1
  %0 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !4
  %cmp1 = icmp ne %struct.bignum_st* %0, null
  %conv = zext i1 %cmp1 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %is_x942.addr.0 = phi i32 [ %conv, %if.then ], [ %is_x942, %entry ]
  %params2 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %to, i64 0, i32 2
  %params3 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %from, i64 0, i32 2
  %call = tail call i32 @ossl_ffc_params_copy(%struct.ffc_params_st* noundef nonnull %params2, %struct.ffc_params_st* noundef nonnull %params3) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq i32 %is_x942.addr.0, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %length = getelementptr inbounds %struct.dh_st, %struct.dh_st* %from, i64 0, i32 3
  %1 = load i32, i32* %length, align 8, !tbaa !13
  %length8 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %to, i64 0, i32 3
  store i32 %1, i32* %length8, align 8, !tbaa !13
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %dirty_cnt = getelementptr inbounds %struct.dh_st, %struct.dh_st* %to, i64 0, i32 14
  %2 = load i64, i64* %dirty_cnt, align 8, !tbaa !14
  %inc = add i64 %2, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !14
  br label %return

return:                                           ; preds = %if.end, %if.end9
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare void @DH_free(%struct.dh_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @DHparams_print(%struct.bio_st* noundef %bp, %struct.dh_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_dh_print(%struct.bio_st* noundef %bp, %struct.dh_st* noundef %x, i32 noundef 4, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_dh_print(%struct.bio_st* noundef %bp, %struct.dh_st* noundef %x, i32 noundef %indent, i32 noundef %ptype) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %ptype, 2
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  %priv_key1 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %x, i64 0, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %priv_key1, align 8, !tbaa !15
  br label %if.then3

if.end:                                           ; preds = %entry
  %cmp2 = icmp sgt i32 %ptype, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end.thread, %if.end
  %priv_key.089 = phi %struct.bignum_st* [ %0, %if.end.thread ], [ null, %if.end ]
  %pub_key4 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %x, i64 0, i32 4
  %1 = load %struct.bignum_st*, %struct.bignum_st** %pub_key4, align 8, !tbaa !16
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then3
  %cmp290 = phi i1 [ true, %if.then3 ], [ false, %if.end ]
  %priv_key.088 = phi %struct.bignum_st* [ %priv_key.089, %if.then3 ], [ null, %if.end ]
  %pub_key.0 = phi %struct.bignum_st* [ %1, %if.then3 ], [ null, %if.end ]
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %x, i64 0, i32 2
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %2 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !17
  %cmp7 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp7, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %cmp9 = icmp eq %struct.bignum_st* %priv_key.088, null
  %or.cond = select i1 %cmp, i1 %cmp9, i1 false
  br i1 %or.cond, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %cmp13 = icmp eq %struct.bignum_st* %pub_key.0, null
  %or.cond57 = select i1 %cmp290, i1 %cmp13, i1 false
  br i1 %or.cond57, label %err, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false10
  %call = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %indent, i32 noundef 128) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end15
  %cmp19 = icmp eq i32 %ptype, 1
  %. = select i1 %cmp19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)
  %ktype.0 = select i1 %cmp, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %.
  %call25 = tail call i32 @DH_bits(%struct.dh_st* noundef nonnull %x) #5
  %call26 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef %ktype.0, i32 noundef %call25) #5
  %cmp27 = icmp slt i32 %call26, 1
  br i1 %cmp27, label %err, label %if.end29

if.end29:                                         ; preds = %lor.lhs.false24
  %add = add nsw i32 %indent, 4
  %call30 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %struct.bignum_st* noundef %priv_key.088, i8* noundef null, i32 noundef %add) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end33

if.end33:                                         ; preds = %if.end29
  %call34 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), %struct.bignum_st* noundef %pub_key.0, i8* noundef null, i32 noundef %add) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end33
  %call39 = tail call i32 @ossl_ffc_params_print(%struct.bio_st* noundef %bp, %struct.ffc_params_st* noundef nonnull %params, i32 noundef %add) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %if.end42

if.end42:                                         ; preds = %if.end37
  %length = getelementptr inbounds %struct.dh_st, %struct.dh_st* %x, i64 0, i32 3
  %3 = load i32, i32* %length, align 8, !tbaa !13
  %cmp43.not = icmp eq i32 %3, 0
  br i1 %cmp43.not, label %cleanup, label %if.then44

if.then44:                                        ; preds = %if.end42
  %call45 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %add, i32 noundef 128) #5
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.then44
  %4 = load i32, i32* %length, align 8, !tbaa !13
  %call49 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 noundef %4) #5
  %cmp50 = icmp slt i32 %call49, 1
  br i1 %cmp50, label %err, label %cleanup

err:                                              ; preds = %if.end6, %lor.lhs.false, %lor.lhs.false10, %if.then44, %lor.lhs.false47, %if.end37, %if.end33, %if.end29, %if.end15, %lor.lhs.false24
  %reason.0 = phi i32 [ 524295, %lor.lhs.false24 ], [ 524295, %lor.lhs.false47 ], [ 524295, %if.then44 ], [ 524295, %if.end37 ], [ 524295, %if.end33 ], [ 524295, %if.end29 ], [ 524295, %if.end15 ], [ 786690, %lor.lhs.false10 ], [ 786690, %lor.lhs.false ], [ 786690, %if.end6 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.do_dh_print, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef %reason.0, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %lor.lhs.false47, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %lor.lhs.false47 ], [ 1, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_pub_decode(%struct.evp_pkey_st* noundef %pkey, %struct.X509_pubkey_st* noundef %pubkey) #0 {
entry:
  %p = alloca i8*, align 8
  %pm = alloca i8*, align 8
  %pklen = alloca i32, align 4
  %ptype = alloca i32, align 4
  %pval = alloca i8*, align 8
  %palg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast i8** %pm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %2 = bitcast i32* %pklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  %3 = bitcast i32* %ptype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  %4 = bitcast i8** %pval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7
  %5 = bitcast %struct.X509_algor_st** %palg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7
  %call = call i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef null, i8** noundef nonnull %p, i32* noundef nonnull %pklen, %struct.X509_algor_st** noundef nonnull %palg, %struct.X509_pubkey_st* noundef %pubkey) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %palg, align 8, !tbaa !18
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef null, i32* noundef nonnull %ptype, i8** noundef nonnull %pval, %struct.X509_algor_st* noundef %6) #5
  %7 = load i32, i32* %ptype, align 4, !tbaa !19
  %cmp.not = icmp eq i32 %7, 16
  br i1 %cmp.not, label %if.end2, label %err

if.end2:                                          ; preds = %if.end
  %8 = bitcast i8** %pval to %struct.asn1_string_st**
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %8, align 8, !tbaa !18
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 2
  %10 = load i8*, i8** %data, align 8, !tbaa !20
  store i8* %10, i8** %pm, align 8, !tbaa !18
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 0
  %11 = load i32, i32* %length, align 8, !tbaa !22
  %conv = sext i32 %11 to i64
  %call3 = call fastcc %struct.dh_st* @d2i_dhp(%struct.evp_pkey_st* noundef %pkey, i8** noundef nonnull %pm, i64 noundef %conv) #6
  %cmp4 = icmp eq %struct.dh_st* %call3, null
  br i1 %cmp4, label %err, label %if.end7

if.end7:                                          ; preds = %if.end2
  %12 = load i32, i32* %pklen, align 4, !tbaa !19
  %conv8 = sext i32 %12 to i64
  %call9 = call %struct.asn1_string_st* @d2i_ASN1_INTEGER(%struct.asn1_string_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv8) #5
  %cmp10 = icmp eq %struct.asn1_string_st* %call9, null
  br i1 %cmp10, label %err, label %if.end13

if.end13:                                         ; preds = %if.end7
  %call14 = call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef nonnull %call9, %struct.bignum_st* noundef null) #5
  %pub_key = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call3, i64 0, i32 4
  store %struct.bignum_st* %call14, %struct.bignum_st** %pub_key, align 8, !tbaa !16
  %cmp15 = icmp eq %struct.bignum_st* %call14, null
  br i1 %cmp15, label %err, label %if.end18

if.end18:                                         ; preds = %if.end13
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %call9) #5
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %13 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !23
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %13, i64 0, i32 0
  %14 = load i32, i32* %pkey_id, align 8, !tbaa !26
  %15 = bitcast %struct.dh_st* %call3 to i8*
  %call19 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef %14, i8* noundef nonnull %15) #5
  br label %cleanup

err:                                              ; preds = %if.end13, %if.end7, %if.end2, %if.end
  %.sink40 = phi i32 [ 77, %if.end ], [ 86, %if.end2 ], [ 91, %if.end7 ], [ 97, %if.end13 ]
  %.sink = phi i32 [ 105, %if.end ], [ 104, %if.end2 ], [ 104, %if.end7 ], [ 109, %if.end13 ]
  %public_key.0 = phi %struct.asn1_string_st* [ null, %if.end ], [ null, %if.end2 ], [ null, %if.end7 ], [ %call9, %if.end13 ]
  %dh.0 = phi %struct.dh_st* [ null, %if.end ], [ null, %if.end2 ], [ %call3, %if.end7 ], [ %call3, %if.end13 ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef %.sink40, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dh_pub_decode, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef %.sink, i8* noundef null) #5
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %public_key.0) #5
  call void @DH_free(%struct.dh_st* noundef %dh.0) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end18
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end18 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_pub_encode(%struct.X509_pubkey_st* noundef %pk, %struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %penc = alloca i8*, align 8
  %0 = bitcast i8** %penc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i8* null, i8** %penc, align 8, !tbaa !18
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh2 = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %1 = load %struct.dh_st*, %struct.dh_st** %dh2, align 8, !tbaa !28
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_new() #5
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dh_pub_encode, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 2
  %call3 = tail call fastcc i32 @i2d_dhp(%struct.evp_pkey_st* noundef nonnull %pkey, %struct.dh_st* noundef %1, i8** noundef nonnull %data) #6
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 0
  store i32 %call3, i32* %length, align 8, !tbaa !22
  %cmp5 = icmp slt i32 %call3, 1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dh_pub_encode, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end7:                                          ; preds = %if.end
  %pub_key8 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %1, i64 0, i32 4
  %2 = load %struct.bignum_st*, %struct.bignum_st** %pub_key8, align 8, !tbaa !16
  %call9 = tail call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef %2, %struct.asn1_string_st* noundef null) #5
  %cmp10 = icmp eq %struct.asn1_string_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call13 = call i32 @i2d_ASN1_INTEGER(%struct.asn1_string_st* noundef nonnull %call9, i8** noundef nonnull %penc) #5
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %call9) #5
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dh_pub_encode, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end16:                                         ; preds = %if.end12
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %3 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !23
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %3, i64 0, i32 0
  %4 = load i32, i32* %pkey_id, align 8, !tbaa !26
  %call17 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %4) #5
  %5 = bitcast %struct.asn1_string_st* %call to i8*
  %6 = load i8*, i8** %penc, align 8, !tbaa !18
  %call18 = call i32 @X509_PUBKEY_set0_param(%struct.X509_pubkey_st* noundef %pk, %struct.asn1_object_st* noundef %call17, i32 noundef 16, i8* noundef nonnull %5, i8* noundef %6, i32 noundef %call13) #5
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end16, %if.end7, %if.then15, %if.then6, %if.then
  %7 = load i8*, i8** %penc, align 8, !tbaa !18
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 152) #5
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_pub_cmp(%struct.evp_pkey_st* nocapture noundef readonly %a, %struct.evp_pkey_st* nocapture noundef readonly %b) #0 {
entry:
  %call = tail call i32 @dh_cmp_parameters(%struct.evp_pkey_st* noundef %a, %struct.evp_pkey_st* noundef %b) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %pub_key = getelementptr inbounds %struct.dh_st, %struct.dh_st* %0, i64 0, i32 4
  %1 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !16
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 5
  %dh2 = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %2 = load %struct.dh_st*, %struct.dh_st** %dh2, align 8, !tbaa !28
  %pub_key3 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %2, i64 0, i32 4
  %3 = load %struct.bignum_st*, %struct.bignum_st** %pub_key3, align 8, !tbaa !16
  %call4 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %1, %struct.bignum_st* noundef %3) #5
  %cmp5.not = icmp eq i32 %call4, 0
  %. = zext i1 %cmp5.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_public_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %call = tail call fastcc i32 @do_dh_print(%struct.bio_st* noundef %bp, %struct.dh_st* noundef %0, i32 noundef %indent, i32 noundef 1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_priv_decode(%struct.evp_pkey_st* noundef %pkey, %struct.pkcs8_priv_key_info_st* noundef %p8) #0 {
entry:
  %call = tail call %struct.dh_st* @ossl_dh_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  %cmp.not = icmp eq %struct.dh_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !23
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !26
  %2 = bitcast %struct.dh_st* %call to i8*
  %call1 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef %1, i8* noundef nonnull %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_priv_encode(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %dp = alloca i8*, align 8
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i8* null, i8** %dp, align 8, !tbaa !18
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_new() #5
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dh_priv_encode, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end:                                           ; preds = %entry
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %1 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 2
  %call2 = tail call fastcc i32 @i2d_dhp(%struct.evp_pkey_st* noundef %pkey, %struct.dh_st* noundef %1, i8** noundef nonnull %data) #6
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 0
  store i32 %call2, i32* %length, align 8, !tbaa !22
  %cmp4 = icmp slt i32 %call2, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dh_priv_encode, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end6:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 1
  store i32 16, i32* %type, align 4, !tbaa !29
  %2 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %priv_key = getelementptr inbounds %struct.dh_st, %struct.dh_st* %2, i64 0, i32 5
  %3 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !15
  %call9 = tail call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef %3, %struct.asn1_string_st* noundef null) #5
  %cmp10 = icmp eq %struct.asn1_string_st* %call9, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dh_priv_encode, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 106, i8* noundef null) #5
  br label %err

if.end12:                                         ; preds = %if.end6
  %call13 = call i32 @i2d_ASN1_INTEGER(%struct.asn1_string_st* noundef nonnull %call9, i8** noundef nonnull %dp) #5
  call void @ASN1_STRING_clear_free(%struct.asn1_string_st* noundef nonnull %call9) #5
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !23
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 0
  %5 = load i32, i32* %pkey_id, align 8, !tbaa !26
  %call14 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %5) #5
  %6 = bitcast %struct.asn1_string_st* %call to i8*
  %7 = load i8*, i8** %dp, align 8, !tbaa !18
  %call15 = call i32 @PKCS8_pkey_set0(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.asn1_object_st* noundef %call14, i32 noundef 0, i32 noundef 16, i8* noundef nonnull %6, i8* noundef %7, i32 noundef %call13) #5
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end12.err_crit_edge, label %cleanup

if.end12.err_crit_edge:                           ; preds = %if.end12
  %.pre = load i8*, i8** %dp, align 8, !tbaa !18
  br label %err

err:                                              ; preds = %if.end12.err_crit_edge, %if.then11, %if.then5, %if.then
  %8 = phi i8* [ %.pre, %if.end12.err_crit_edge ], [ null, %if.then11 ], [ null, %if.then5 ], [ null, %if.then ]
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 218) #5
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %call) #5
  call void @ASN1_STRING_clear_free(%struct.asn1_string_st* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_private_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %call = tail call fastcc i32 @do_dh_print(%struct.bio_st* noundef %bp, %struct.dh_st* noundef %0, i32 noundef %indent, i32 noundef 2) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @int_dh_size(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %call = tail call i32 @DH_size(%struct.dh_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_bits(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %call = tail call i32 @DH_bits(%struct.dh_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_security_bits(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %call = tail call i32 @DH_security_bits(%struct.dh_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_param_decode(%struct.evp_pkey_st* noundef %pkey, i8** noundef %pder, i32 noundef %derlen) #0 {
entry:
  %conv = sext i32 %derlen to i64
  %call = tail call fastcc %struct.dh_st* @d2i_dhp(%struct.evp_pkey_st* noundef %pkey, i8** noundef %pder, i64 noundef %conv) #6
  %cmp = icmp eq %struct.dh_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dirty_cnt = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 14
  %0 = load i64, i64* %dirty_cnt, align 8, !tbaa !14
  %inc = add i64 %0, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !14
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !23
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 0
  %2 = load i32, i32* %pkey_id, align 8, !tbaa !26
  %3 = bitcast %struct.dh_st* %call to i8*
  %call2 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef %2, i8* noundef nonnull %3) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_param_encode(%struct.evp_pkey_st* nocapture noundef readonly %pkey, i8** noundef %pder) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %call = tail call fastcc i32 @i2d_dhp(%struct.evp_pkey_st* noundef %pkey, %struct.dh_st* noundef %0, i8** noundef %pder) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @dh_missing_parameters(%struct.evp_pkey_st* nocapture noundef readonly %a) #3 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %cmp = icmp eq %struct.dh_st* %0, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %0, i64 0, i32 2, i32 0
  %1 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !17
  %cmp3 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %g = getelementptr inbounds %struct.dh_st, %struct.dh_st* %0, i64 0, i32 2, i32 2
  %2 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !30
  %cmp7 = icmp eq %struct.bignum_st* %2, null
  %phi.cast = zext i1 %cmp7 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_copy_parameters(%struct.evp_pkey_st* nocapture noundef %to, %struct.evp_pkey_st* nocapture noundef readonly %from) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %to, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %cmp = icmp eq %struct.dh_st* %0, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call %struct.dh_st* @DH_new() #5
  store %struct.dh_st* %call, %struct.dh_st** %dh, align 8, !tbaa !28
  %cmp5 = icmp eq %struct.dh_st* %call, null
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %if.then, %entry
  %1 = phi %struct.dh_st* [ %call, %if.then ], [ %0, %entry ]
  %pkey10 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 5
  %dh11 = bitcast %union.legacy_pkey_st* %pkey10 to %struct.dh_st**
  %2 = load %struct.dh_st*, %struct.dh_st** %dh11, align 8, !tbaa !28
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 2
  %3 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !23
  %cmp12 = icmp eq %struct.evp_pkey_asn1_method_st* %3, bitcast ({ i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }* @ossl_dhx_asn1_meth to %struct.evp_pkey_asn1_method_st*)
  %conv = zext i1 %cmp12 to i32
  %call13 = tail call fastcc i32 @int_dh_param_copy(%struct.dh_st* noundef nonnull %1, %struct.dh_st* noundef %2, i32 noundef %conv) #6
  br label %return

return:                                           ; preds = %if.then, %if.end7
  %retval.0 = phi i32 [ %call13, %if.end7 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_cmp_parameters(%struct.evp_pkey_st* nocapture noundef readonly %a, %struct.evp_pkey_st* nocapture noundef readnone %b) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %0, i64 0, i32 2
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !23
  %cmp = icmp ne %struct.evp_pkey_asn1_method_st* %1, bitcast ({ i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }* @ossl_dhx_asn1_meth to %struct.evp_pkey_asn1_method_st*)
  %conv = zext i1 %cmp to i32
  %call = tail call i32 @ossl_ffc_params_cmp(%struct.ffc_params_st* noundef nonnull %params, %struct.ffc_params_st* noundef nonnull %params, i32 noundef %conv) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_param_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %call = tail call fastcc i32 @do_dh_print(%struct.bio_st* noundef %bp, %struct.dh_st* noundef %0, i32 noundef %indent, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @int_dh_free(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  tail call void @DH_free(%struct.dh_st* noundef %0) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_pkey_ctrl(%struct.evp_pkey_st* noundef %pkey, i32 noundef %op, i64 noundef %arg1, i8* noundef %arg2) #0 {
entry:
  switch i32 %op, label %return [
    i32 9, label %sw.bb
    i32 10, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !31
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %sw.bb
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !32
  %cmp1 = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp1, label %if.end, label %return

if.end:                                           ; preds = %land.rhs
  %call = tail call %struct.dh_st* @evp_pkey_get0_DH_int(%struct.evp_pkey_st* noundef nonnull %pkey) #5
  %call3 = tail call i32 @ossl_dh_buf2key(%struct.dh_st* noundef %call, i8* noundef %arg2, i64 noundef %arg1) #5
  br label %return

sw.bb4:                                           ; preds = %entry
  %call5 = tail call %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef %pkey) #5
  %2 = bitcast i8* %arg2 to i8**
  %call6 = tail call i64 @ossl_dh_key2buf(%struct.dh_st* noundef %call5, i8** noundef %2, i64 noundef 0, i32 noundef 1) #5
  %conv = trunc i64 %call6 to i32
  br label %return

return:                                           ; preds = %sw.bb, %entry, %land.rhs, %sw.bb4, %if.end
  %retval.0 = phi i32 [ %conv, %sw.bb4 ], [ %call3, %if.end ], [ 0, %land.rhs ], [ -2, %entry ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_pkey_public_check(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh2 = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh2, align 8, !tbaa !28
  %pub_key = getelementptr inbounds %struct.dh_st, %struct.dh_st* %0, i64 0, i32 4
  %1 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !16
  %cmp = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 423, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dh_pkey_public_check, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 125, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @DH_check_pub_key_ex(%struct.dh_st* noundef nonnull %0, %struct.bignum_st* noundef nonnull %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_pkey_param_check(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh2 = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh2, align 8, !tbaa !28
  %call = tail call i32 @DH_check_ex(%struct.dh_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i64 @dh_pkey_dirty_cnt(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #3 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey1 to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !28
  %dirty_cnt = getelementptr inbounds %struct.dh_st, %struct.dh_st* %0, i64 0, i32 14
  %1 = load i64, i64* %dirty_cnt, align 8, !tbaa !14
  ret i64 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_pkey_export_to(%struct.evp_pkey_st* nocapture noundef readonly %from, i8* noundef %to_keydata, i32 (i8*, i32, %struct.ossl_param_st*)* nocapture noundef readonly %importer, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 5
  %dh1 = bitcast %union.legacy_pkey_st* %pkey to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh1, align 8, !tbaa !28
  %call = tail call %struct.bignum_st* @DH_get0_p(%struct.dh_st* noundef %0) #5
  %call2 = tail call %struct.bignum_st* @DH_get0_g(%struct.dh_st* noundef %0) #5
  %call3 = tail call %struct.bignum_st* @DH_get0_q(%struct.dh_st* noundef %0) #5
  %call4 = tail call i64 @DH_get_length(%struct.dh_st* noundef %0) #5
  %call5 = tail call %struct.bignum_st* @DH_get0_pub_key(%struct.dh_st* noundef %0) #5
  %call6 = tail call %struct.bignum_st* @DH_get0_priv_key(%struct.dh_st* noundef %0) #5
  %cmp = icmp eq %struct.bignum_st* %call, null
  %cmp7 = icmp eq %struct.bignum_st* %call2, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call8 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #5
  %cmp9 = icmp eq %struct.ossl_param_bld_st* %call8, null
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call) #5
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end11
  %call14 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call2) #5
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false13
  %cmp18.not = icmp eq %struct.bignum_st* %call3, null
  br i1 %cmp18.not, label %if.end24, label %if.then19

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call3) #5
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end17
  %cmp25 = icmp sgt i64 %call4, 0
  br i1 %cmp25, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end24
  %call27 = tail call i32 @OSSL_PARAM_BLD_push_long(%struct.ossl_param_bld_st* noundef nonnull %call8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 noundef %call4) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end24
  %selection.0 = phi i32 [ 4, %if.end24 ], [ 132, %if.then26 ]
  %cmp33.not = icmp eq %struct.bignum_st* %call5, null
  br i1 %cmp33.not, label %if.end40, label %if.then34

if.then34:                                        ; preds = %if.end32
  %call35 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call5) #5
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %if.end38

if.end38:                                         ; preds = %if.then34
  %or39 = or i32 %selection.0, 2
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %if.end32
  %selection.1 = phi i32 [ %or39, %if.end38 ], [ %selection.0, %if.end32 ]
  %cmp41.not = icmp eq %struct.bignum_st* %call6, null
  br i1 %cmp41.not, label %if.end48, label %if.then42

if.then42:                                        ; preds = %if.end40
  %call43 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call6) #5
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.end46

if.end46:                                         ; preds = %if.then42
  %or47 = or i32 %selection.1, 1
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end40
  %selection.2 = phi i32 [ %or47, %if.end46 ], [ %selection.1, %if.end40 ]
  %call49 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef nonnull %call8) #5
  %cmp50 = icmp eq %struct.ossl_param_st* %call49, null
  br i1 %cmp50, label %err, label %if.end52

if.end52:                                         ; preds = %if.end48
  %call53 = tail call i32 %importer(i8* noundef %to_keydata, i32 noundef %selection.2, %struct.ossl_param_st* noundef nonnull %call49) #5
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef nonnull %call49) #5
  br label %err

err:                                              ; preds = %if.end48, %if.then42, %if.then34, %if.then26, %if.then19, %if.end11, %lor.lhs.false13, %if.end52
  %rv.0 = phi i32 [ 0, %if.end48 ], [ %call53, %if.end52 ], [ 0, %if.then42 ], [ 0, %if.then34 ], [ 0, %if.then26 ], [ 0, %if.then19 ], [ 0, %lor.lhs.false13 ], [ 0, %if.end11 ]
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef nonnull %call8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_pkey_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx) #0 {
entry:
  %call = tail call fastcc i32 @dh_pkey_import_from_type(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx, i32 noundef 28) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_pkey_copy(%struct.evp_pkey_st* noundef %to, %struct.evp_pkey_st* nocapture noundef readonly %from) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 5
  %dh1 = bitcast %union.legacy_pkey_st* %pkey to %struct.dh_st**
  %0 = load %struct.dh_st*, %struct.dh_st** %dh1, align 8, !tbaa !28
  %cmp.not = icmp eq %struct.dh_st* %0, null
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.dh_st* @ossl_dh_dup(%struct.dh_st* noundef nonnull %0, i32 noundef 135) #5
  %cmp2 = icmp eq %struct.dh_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %dupkey.0 = phi %struct.dh_st* [ %call, %if.then ], [ null, %entry ]
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !31
  %2 = bitcast %struct.dh_st* %dupkey.0 to i8*
  %call5 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %to, i32 noundef %1, i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end4
  tail call void @DH_free(%struct.dh_st* noundef %dupkey.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ %call5, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dhx_pkey_ctrl(%struct.evp_pkey_st* nocapture noundef readnone %pkey, i32 noundef %op, i64 noundef %arg1, i8* nocapture noundef readnone %arg2) #4 {
entry:
  ret i32 -2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dhx_pkey_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx) #0 {
entry:
  %call = tail call fastcc i32 @dh_pkey_import_from_type(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx, i32 noundef 920) #6
  ret i32 %call
}

declare i32 @ossl_ffc_params_copy(%struct.ffc_params_st* noundef, %struct.ffc_params_st* noundef) local_unnamed_addr #2

declare i32 @BIO_indent(%struct.bio_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @DH_bits(%struct.dh_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_bn_print(%struct.bio_st* noundef, i8* noundef, %struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_print(%struct.bio_st* noundef, %struct.ffc_params_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #2

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.dh_st* @d2i_dhp(%struct.evp_pkey_st* nocapture noundef readonly %pkey, i8** noundef %pp, i64 noundef %length) unnamed_addr #0 {
entry:
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !23
  %cmp = icmp eq %struct.evp_pkey_asn1_method_st* %0, bitcast ({ i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }* @ossl_dhx_asn1_meth to %struct.evp_pkey_asn1_method_st*)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call %struct.dh_st* @d2i_DHxparams(%struct.dh_st** noundef null, i8** noundef %pp, i64 noundef %length) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = tail call %struct.dh_st* @d2i_DHparams(%struct.dh_st** noundef null, i8** noundef %pp, i64 noundef %length) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dh.0 = phi %struct.dh_st* [ %call, %if.then ], [ %call1, %if.else ]
  ret %struct.dh_st* %dh.0
}

declare %struct.asn1_string_st* @d2i_ASN1_INTEGER(%struct.asn1_string_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.dh_st* @d2i_DHxparams(%struct.dh_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.dh_st* @d2i_DHparams(%struct.dh_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_STRING_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @i2d_dhp(%struct.evp_pkey_st* nocapture noundef readonly %pkey, %struct.dh_st* noundef %a, i8** noundef %pp) unnamed_addr #0 {
entry:
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !23
  %cmp = icmp eq %struct.evp_pkey_asn1_method_st* %0, bitcast ({ i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }* @ossl_dhx_asn1_meth to %struct.evp_pkey_asn1_method_st*)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @i2d_DHxparams(%struct.dh_st* noundef %a, i8** noundef %pp) #5
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2d_DHparams(%struct.dh_st* noundef %a, i8** noundef %pp) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @i2d_ASN1_INTEGER(%struct.asn1_string_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @X509_PUBKEY_set0_param(%struct.X509_pubkey_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @i2d_DHxparams(%struct.dh_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @i2d_DHparams(%struct.dh_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.dh_st* @ossl_dh_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @ASN1_STRING_clear_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @PKCS8_pkey_set0(%struct.pkcs8_priv_key_info_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @DH_size(%struct.dh_st* noundef) local_unnamed_addr #2

declare i32 @DH_security_bits(%struct.dh_st* noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_cmp(%struct.ffc_params_st* noundef, %struct.ffc_params_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_dh_buf2key(%struct.dh_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.dh_st* @evp_pkey_get0_DH_int(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i64 @ossl_dh_key2buf(%struct.dh_st* noundef, i8** noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @DH_check_pub_key_ex(%struct.dh_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @DH_check_ex(%struct.dh_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @DH_get0_p(%struct.dh_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @DH_get0_g(%struct.dh_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @DH_get0_q(%struct.dh_st* noundef) local_unnamed_addr #2

declare i64 @DH_get_length(%struct.dh_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @DH_get0_pub_key(%struct.dh_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @DH_get0_priv_key(%struct.dh_st* noundef) local_unnamed_addr #2

declare %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #2

declare i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_BLD_push_long(%struct.ossl_param_bld_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dh_pkey_import_from_type(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx, i32 noundef %type) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %vpctx to %struct.evp_pkey_ctx_st*
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef %0) #5
  %libctx = getelementptr inbounds i8, i8* %vpctx, i64 8
  %1 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %1, align 8, !tbaa !33
  %call1 = tail call %struct.dh_st* @ossl_dh_new_ex(%struct.ossl_lib_ctx_st* noundef %2) #5
  %cmp = icmp eq %struct.dh_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 507, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.dh_pkey_import_from_type, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @DH_clear_flags(%struct.dh_st* noundef nonnull %call1, i32 noundef 61440) #5
  %cmp2 = icmp eq i32 %type, 28
  %cond = select i1 %cmp2, i32 0, i32 4096
  tail call void @DH_set_flags(%struct.dh_st* noundef nonnull %call1, i32 noundef %cond) #5
  %call3 = tail call i32 @ossl_dh_params_fromdata(%struct.dh_st* noundef nonnull %call1, %struct.ossl_param_st* noundef %params) #5
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i32 @ossl_dh_key_fromdata(%struct.dh_st* noundef nonnull %call1, %struct.ossl_param_st* noundef %params) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then9, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %3 = bitcast %struct.dh_st* %call1 to i8*
  %call7 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call, i32 noundef %type, i8* noundef nonnull %3) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %cleanup

if.then9:                                         ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end
  tail call void @DH_free(%struct.dh_st* noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false6, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 1, %lor.lhs.false6 ]
  ret i32 %retval.0
}

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare %struct.dh_st* @ossl_dh_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare void @DH_clear_flags(%struct.dh_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @DH_set_flags(%struct.dh_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_dh_params_fromdata(%struct.dh_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i32 @ossl_dh_key_fromdata(%struct.dh_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare %struct.dh_st* @ossl_dh_dup(%struct.dh_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 16}
!5 = !{!"dh_st", !6, i64 0, !6, i64 4, !9, i64 8, !6, i64 96, !10, i64 104, !10, i64 112, !6, i64 120, !10, i64 128, !7, i64 136, !12, i64 144, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !11, i64 192}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"ffc_params_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !10, i64 72, !10, i64 80}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!13 = !{!5, !6, i64 96}
!14 = !{!5, !11, i64 192}
!15 = !{!5, !10, i64 112}
!16 = !{!5, !10, i64 104}
!17 = !{!5, !10, i64 8}
!18 = !{!10, !10, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!21, !10, i64 8}
!21 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !10, i64 8, !11, i64 16}
!22 = !{!21, !6, i64 0}
!23 = !{!24, !10, i64 8}
!24 = !{!"evp_pkey_st", !6, i64 0, !6, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !10, i64 56, !10, i64 64, !6, i64 72, !6, i64 76, !12, i64 80, !10, i64 96, !10, i64 104, !11, i64 112, !10, i64 120, !11, i64 128, !25, i64 136}
!25 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!26 = !{!27, !6, i64 0}
!27 = !{!"evp_pkey_asn1_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312}
!28 = !{!7, !7, i64 0}
!29 = !{!21, !6, i64 4}
!30 = !{!5, !10, i64 24}
!31 = !{!24, !6, i64 0}
!32 = !{!24, !10, i64 96}
!33 = !{!34, !10, i64 8}
!34 = !{!"evp_pkey_ctx_st", !6, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !35, i64 56, !10, i64 88, !10, i64 96, !10, i64 104, !6, i64 112, !6, i64 116, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !6, i64 160, !10, i64 168}
!35 = !{!"", !10, i64 0, !10, i64 8, !11, i64 16, !6, i64 24}
