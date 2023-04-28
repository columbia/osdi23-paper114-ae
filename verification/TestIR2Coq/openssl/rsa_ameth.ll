; ModuleID = 'crypto/rsa/rsa_ameth.c'
source_filename = "crypto/rsa/rsa_ameth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.7 }
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.7 = type { i32, i32, i32 }
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
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.x509_sig_info_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.rsa_pss_params_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.0, %struct.anon.5, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.5 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.bignum_st = type opaque
%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.rsa_pss_params_30_st = type { i32, %struct.anon.6, i32, i32 }
%struct.anon.6 = type { i32, i32 }
%struct.stack_st_RSA_PRIME_INFO = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.bn_blinding_st = type opaque
%struct.rsa_prime_info_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bn_mont_ctx_st* }
%struct.stack_st = type opaque
%struct.ossl_param_bld_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/rsa/rsa_ameth.c\00", align 1
@__func__.ossl_rsa_pss_to_ctx = private unnamed_addr constant [20 x i8] c"ossl_rsa_pss_to_ctx\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"OpenSSL RSA method\00", align 1
@ossl_rsa_asn1_meths = local_unnamed_addr constant [2 x %struct.evp_pkey_asn1_method_st] [%struct.evp_pkey_asn1_method_st { i32 6, i32 6, i64 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* @rsa_pub_decode, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* @rsa_pub_encode, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @rsa_pub_cmp, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @rsa_pub_print, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* @rsa_priv_decode, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* @rsa_priv_encode, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @rsa_priv_print, i32 (%struct.evp_pkey_st*)* @int_rsa_size, i32 (%struct.evp_pkey_st*)* @rsa_bits, i32 (%struct.evp_pkey_st*)* @rsa_security_bits, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* @rsa_sig_print, void (%struct.evp_pkey_st*)* @int_rsa_free, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* @rsa_pkey_ctrl, i32 (%struct.evp_pkey_st*, i8**, i32)* @old_rsa_priv_decode, i32 (%struct.evp_pkey_st*, i8**)* @old_rsa_priv_encode, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* @rsa_item_verify, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* @rsa_item_sign, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* @rsa_sig_info_set, i32 (%struct.evp_pkey_st*)* @rsa_pkey_check, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i64 (%struct.evp_pkey_st*)* @rsa_pkey_dirty_cnt, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* @rsa_pkey_export_to, i32 (%struct.ossl_param_st*, i8*)* @rsa_pkey_import_from, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @rsa_pkey_copy, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* null }, %struct.evp_pkey_asn1_method_st { i32 19, i32 6, i64 1, i8* null, i8* null, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* null, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* null, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* null, void (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* null, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i64 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* null, i32 (%struct.ossl_param_st*, i8*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* null }], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"OpenSSL RSA-PSS method\00", align 1
@ossl_rsa_pss_asn1_meth = local_unnamed_addr constant %struct.evp_pkey_asn1_method_st { i32 912, i32 912, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* @rsa_pub_decode, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* @rsa_pub_encode, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @rsa_pub_cmp, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @rsa_pub_print, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* @rsa_priv_decode, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* @rsa_priv_encode, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @rsa_priv_print, i32 (%struct.evp_pkey_st*)* @int_rsa_size, i32 (%struct.evp_pkey_st*)* @rsa_bits, i32 (%struct.evp_pkey_st*)* @rsa_security_bits, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* @rsa_sig_print, void (%struct.evp_pkey_st*)* @int_rsa_free, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* @rsa_pkey_ctrl, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* @rsa_item_verify, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* @rsa_item_sign, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* @rsa_sig_info_set, i32 (%struct.evp_pkey_st*)* @rsa_pkey_check, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i64 (%struct.evp_pkey_st*)* @rsa_pkey_dirty_cnt, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* @rsa_pss_pkey_export_to, i32 (%struct.ossl_param_st*, i8*)* @rsa_pss_pkey_import_from, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @rsa_pkey_copy, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* null }, align 8
@__func__.rsa_pss_verify_param = private unnamed_addr constant [21 x i8] c"rsa_pss_verify_param\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Private-Key: (%d bit, %d primes)\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"modulus:\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"publicExponent:\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Public-Key: (%d bit)\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Modulus:\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Exponent:\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"privateExponent:\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"prime1:\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"prime2:\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"exponent1:\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"exponent2:\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"coefficient:\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"prime%d:\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"exponent%d:\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"coefficient%d:\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"No PSS parameter restrictions\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"PSS parameter restrictions:\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"(INVALID PSS PARAMETERS)\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Hash Algorithm: \00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"sha1 (default)\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Mask Algorithm: \00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c" with \00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"mgf1 with sha1 (default)\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"%s Salt Length: 0x\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Minimum\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"14 (default)\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Trailer Field: 0x\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"01 (default)\00", align 1
@__func__.rsa_priv_encode = private unnamed_addr constant [16 x i8] c"rsa_priv_encode\00", align 1
@__func__.rsa_pkey_ctrl = private unnamed_addr constant [14 x i8] c"rsa_pkey_ctrl\00", align 1
@__func__.rsa_item_verify = private unnamed_addr constant [16 x i8] c"rsa_item_verify\00", align 1
@__func__.rsa_int_import_from = private unnamed_addr constant [20 x i8] c"rsa_int_import_from\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_pss_params_st* @ossl_rsa_pss_params_create(%struct.evp_md_st* noundef %sigmd, %struct.evp_md_st* noundef %mgf1md, i32 noundef %saltlen) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.rsa_pss_params_st* @RSA_PSS_PARAMS_new() #5
  %cmp = icmp eq %struct.rsa_pss_params_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i32 %saltlen, 20
  br i1 %cmp1.not, label %if.end12, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #5
  %saltLength = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %call, i64 0, i32 2
  store %struct.asn1_string_st* %call3, %struct.asn1_string_st** %saltLength, align 8, !tbaa !4
  %cmp5 = icmp eq %struct.asn1_string_st* %call3, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.then2
  %conv = sext i32 %saltlen to i64
  %call9 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call3, i64 noundef %conv) #5
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end7, %if.end
  %hashAlgorithm = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %call, i64 0, i32 0
  %call13 = tail call i32 @ossl_x509_algor_new_from_md(%struct.X509_algor_st** noundef nonnull %hashAlgorithm, %struct.evp_md_st* noundef %sigmd) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %if.end16

if.end16:                                         ; preds = %if.end12
  %cmp17 = icmp eq %struct.evp_md_st* %mgf1md, null
  %spec.select = select i1 %cmp17, %struct.evp_md_st* %sigmd, %struct.evp_md_st* %mgf1md
  %maskGenAlgorithm = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %call, i64 0, i32 1
  %call21 = tail call i32 @ossl_x509_algor_md_to_mgf1(%struct.X509_algor_st** noundef nonnull %maskGenAlgorithm, %struct.evp_md_st* noundef %spec.select) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.end24

if.end24:                                         ; preds = %if.end16
  %maskHash = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %call, i64 0, i32 4
  %call25 = tail call i32 @ossl_x509_algor_new_from_md(%struct.X509_algor_st** noundef nonnull %maskHash, %struct.evp_md_st* noundef %spec.select) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %cleanup

err:                                              ; preds = %if.end24, %if.end16, %if.end12, %if.end7, %if.then2, %entry
  tail call void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %err
  %retval.0 = phi %struct.rsa_pss_params_st* [ null, %err ], [ %call, %if.end24 ]
  ret %struct.rsa_pss_params_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.rsa_pss_params_st* @RSA_PSS_PARAMS_new() local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_x509_algor_new_from_md(%struct.X509_algor_st** noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @ossl_x509_algor_md_to_mgf1(%struct.X509_algor_st** noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ossl_rsa_ctx_to_pss_string(%struct.evp_pkey_ctx_st* noundef %pkctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.rsa_pss_params_st* @rsa_ctx_to_pss(%struct.evp_pkey_ctx_st* noundef %pkctx) #6
  %cmp = icmp eq %struct.rsa_pss_params_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.rsa_pss_params_st* %call to i8*
  %call1 = tail call %struct.ASN1_ITEM_st* @RSA_PSS_PARAMS_it() #5
  %call2 = tail call %struct.asn1_string_st* @ASN1_item_pack(i8* noundef nonnull %0, %struct.ASN1_ITEM_st* noundef %call1, %struct.asn1_string_st** noundef null) #5
  tail call void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.asn1_string_st* [ %call2, %if.end ], [ null, %entry ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.rsa_pss_params_st* @rsa_ctx_to_pss(%struct.evp_pkey_ctx_st* noundef %pkctx) unnamed_addr #0 {
entry:
  %sigmd = alloca %struct.evp_md_st*, align 8
  %mgf1md = alloca %struct.evp_md_st*, align 8
  %saltlen = alloca i32, align 4
  %0 = bitcast %struct.evp_md_st** %sigmd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.evp_md_st** %mgf1md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef %pkctx) #5
  %2 = bitcast i32* %saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  %call1 = call i32 @EVP_PKEY_CTX_get_signature_md(%struct.evp_pkey_ctx_st* noundef %pkctx, %struct.evp_md_st** noundef nonnull %sigmd) #5
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @EVP_PKEY_CTX_get_rsa_mgf1_md(%struct.evp_pkey_ctx_st* noundef %pkctx, %struct.evp_md_st** noundef nonnull %mgf1md) #5
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @EVP_PKEY_CTX_get_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef %pkctx, i32* noundef nonnull %saltlen) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %3 = load i32, i32* %saltlen, align 4, !tbaa !9
  %cmp9 = icmp eq i32 %3, -1
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** %sigmd, align 8, !tbaa !11
  %call11 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %4) #5
  store i32 %call11, i32* %saltlen, align 4, !tbaa !9
  br label %if.end26

if.else:                                          ; preds = %if.end8
  %5 = add i32 %3, 3
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %if.then14, label %if.end26

if.then14:                                        ; preds = %if.else
  %call15 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %call) #5
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %sigmd, align 8, !tbaa !11
  %call16 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %7) #5
  %sub = add i32 %call15, -2
  %sub17 = sub i32 %sub, %call16
  store i32 %sub17, i32* %saltlen, align 4, !tbaa !9
  %call18 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %call) #5
  %and = and i32 %call18, 7
  %cmp19 = icmp eq i32 %and, 1
  %8 = load i32, i32* %saltlen, align 4, !tbaa !9
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then14
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %saltlen, align 4, !tbaa !9
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.then20
  %9 = phi i32 [ %dec, %if.then20 ], [ %8, %if.then14 ]
  %cmp22 = icmp slt i32 %9, 0
  br i1 %cmp22, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.else, %if.end21, %if.then10
  %10 = phi i32 [ %3, %if.else ], [ %9, %if.end21 ], [ %call11, %if.then10 ]
  %11 = load %struct.evp_md_st*, %struct.evp_md_st** %sigmd, align 8, !tbaa !11
  %12 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md, align 8, !tbaa !11
  %call27 = call %struct.rsa_pss_params_st* @ossl_rsa_pss_params_create(%struct.evp_md_st* noundef %11, %struct.evp_md_st* noundef %12, i32 noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end5, %if.end, %entry, %if.end26
  %retval.0 = phi %struct.rsa_pss_params_st* [ %call27, %if.end26 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end5 ], [ null, %if.end21 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.rsa_pss_params_st* %retval.0
}

declare %struct.asn1_string_st* @ASN1_item_pack(i8* noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @RSA_PSS_PARAMS_it() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_pss_to_ctx(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st* noundef %pkctx, %struct.X509_algor_st* noundef %sigalg, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %pkctx.addr = alloca %struct.evp_pkey_ctx_st*, align 8
  %saltlen = alloca i32, align 4
  %mgf1md = alloca %struct.evp_md_st*, align 8
  %md = alloca %struct.evp_md_st*, align 8
  %checkmd = alloca %struct.evp_md_st*, align 8
  store %struct.evp_pkey_ctx_st* %pkctx, %struct.evp_pkey_ctx_st** %pkctx.addr, align 8, !tbaa !11
  %0 = bitcast i32* %saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %1 = bitcast %struct.evp_md_st** %mgf1md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store %struct.evp_md_st* null, %struct.evp_md_st** %mgf1md, align 8, !tbaa !11
  %2 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !11
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %sigalg, i64 0, i32 0
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !12
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #5
  %cmp.not = icmp eq i32 %call, 912
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 529, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_rsa_pss_to_ctx, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 155, i8* noundef null) #5
  br label %cleanup33

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.rsa_pss_params_st* @ossl_rsa_pss_decode(%struct.X509_algor_st* noundef nonnull %sigalg) #5
  %call2 = call i32 @ossl_rsa_pss_get_param(%struct.rsa_pss_params_st* noundef %call1, %struct.evp_md_st** noundef nonnull %md, %struct.evp_md_st** noundef nonnull %mgf1md, i32* noundef nonnull %saltlen) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 536, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_rsa_pss_to_ctx, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 149, i8* noundef null) #5
  br label %err

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !11
  %call7 = call i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st** noundef nonnull %pkctx.addr, %struct.evp_md_st* noundef %4, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef nonnull %pkey) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.then6.if.end20_crit_edge

if.then6.if.end20_crit_edge:                      ; preds = %if.then6
  %.pre = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pkctx.addr, align 8, !tbaa !11
  br label %if.end20

if.else:                                          ; preds = %if.end4
  %5 = bitcast %struct.evp_md_st** %checkmd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7
  %call11 = call i32 @EVP_PKEY_CTX_get_signature_md(%struct.evp_pkey_ctx_st* noundef %pkctx, %struct.evp_md_st** noundef nonnull %checkmd) #5
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %cleanup.thread, label %if.end14

if.end14:                                         ; preds = %if.else
  %6 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !11
  %call15 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %6) #5
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %checkmd, align 8, !tbaa !11
  %call16 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %7) #5
  %cmp17.not = icmp eq i32 %call15, %call16
  br i1 %cmp17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 549, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_rsa_pss_to_ctx, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 158, i8* noundef null) #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then18, %if.else
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7
  br label %err

cleanup:                                          ; preds = %if.end14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then6.if.end20_crit_edge, %cleanup
  %8 = phi %struct.evp_pkey_ctx_st* [ %.pre, %if.then6.if.end20_crit_edge ], [ %pkctx, %cleanup ]
  %call21 = call i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef %8, i32 noundef 6) #5
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %err, label %if.end24

if.end24:                                         ; preds = %if.end20
  %9 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pkctx.addr, align 8, !tbaa !11
  %10 = load i32, i32* %saltlen, align 4, !tbaa !9
  %call25 = call i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef %9, i32 noundef %10) #5
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %err, label %if.end28

if.end28:                                         ; preds = %if.end24
  %11 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pkctx.addr, align 8, !tbaa !11
  %12 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md, align 8, !tbaa !11
  %call29 = call i32 @EVP_PKEY_CTX_set_rsa_mgf1_md(%struct.evp_pkey_ctx_st* noundef %11, %struct.evp_md_st* noundef %12) #5
  %cmp30 = icmp slt i32 %call29, 1
  %spec.select = select i1 %cmp30, i32 -1, i32 1
  br label %err

err:                                              ; preds = %cleanup.thread, %if.end28, %if.end24, %if.end20, %if.then6, %if.then3
  %rv.0 = phi i32 [ -1, %if.end20 ], [ -1, %if.end24 ], [ -1, %if.then6 ], [ -1, %if.then3 ], [ %spec.select, %if.end28 ], [ -1, %cleanup.thread ]
  call void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef %call1) #5
  br label %cleanup33

cleanup33:                                        ; preds = %err, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %rv.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.rsa_pss_params_st* @ossl_rsa_pss_decode(%struct.X509_algor_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_pss_get_param(%struct.rsa_pss_params_st* noundef %pss, %struct.evp_md_st** noundef %pmd, %struct.evp_md_st** noundef %pmgf1md, i32* noundef %psaltlen) local_unnamed_addr #0 {
entry:
  %trailerField = alloca i32, align 4
  %0 = bitcast i32* %trailerField to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 0, i32* %trailerField, align 4, !tbaa !9
  %call = call i32 @ossl_rsa_pss_get_param_unverified(%struct.rsa_pss_params_st* noundef %pss, %struct.evp_md_st** noundef %pmd, %struct.evp_md_st** noundef %pmgf1md, i32* noundef %psaltlen, i32* noundef nonnull %trailerField) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @rsa_pss_verify_param(i32* noundef %psaltlen, i32* noundef nonnull %trailerField) #6
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %1
}

declare i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_get_signature_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_rsa_mgf1_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_get_param_unverified(%struct.rsa_pss_params_st* noundef, %struct.evp_md_st** noundef, %struct.evp_md_st** noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_pss_verify_param(i32* noundef readonly %psaltlen, i32* noundef readonly %ptrailerField) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32* %psaltlen, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, i32* %psaltlen, align 4, !tbaa !9
  %cmp1 = icmp slt i32 %0, 0
  br i1 %cmp1, label %return.sink.split, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp2.not = icmp eq i32* %ptrailerField, null
  br i1 %cmp2.not, label %return, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end
  %1 = load i32, i32* %ptrailerField, align 4, !tbaa !9
  %cmp4.not = icmp eq i32 %1, 1
  br i1 %cmp4.not, label %return, label %return.sink.split

return.sink.split:                                ; preds = %land.lhs.true3, %land.lhs.true
  %.sink1 = phi i32 [ 574, %land.lhs.true ], [ 582, %land.lhs.true3 ]
  %.sink = phi i32 [ 150, %land.lhs.true ], [ 139, %land.lhs.true3 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.rsa_pss_verify_param, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef %.sink, i8* noundef null) #5
  br label %return

return:                                           ; preds = %return.sink.split, %if.end, %land.lhs.true3
  %retval.0 = phi i32 [ 1, %land.lhs.true3 ], [ 1, %if.end ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_pub_decode(%struct.evp_pkey_st* noundef %pkey, %struct.X509_pubkey_st* noundef %pubkey) #0 {
entry:
  %p = alloca i8*, align 8
  %pklen = alloca i32, align 4
  %alg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast i32* %pklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  %2 = bitcast %struct.X509_algor_st** %alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %call = call i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef null, i8** noundef nonnull %p, i32* noundef nonnull %pklen, %struct.X509_algor_st** noundef nonnull %alg, %struct.X509_pubkey_st* noundef %pubkey) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %pklen, align 4, !tbaa !9
  %conv = sext i32 %3 to i64
  %call1 = call %struct.rsa_st* @d2i_RSAPublicKey(%struct.rsa_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv) #5
  %cmp = icmp eq %struct.rsa_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !11
  %call5 = call i32 @ossl_rsa_param_decode(%struct.rsa_st* noundef nonnull %call1, %struct.X509_algor_st* noundef %4) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %if.end8

if.end8:                                          ; preds = %if.end4
  call void @RSA_clear_flags(%struct.rsa_st* noundef nonnull %call1, i32 noundef 61440) #5
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %5 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !14
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %5, i64 0, i32 0
  %6 = load i32, i32* %pkey_id, align 8, !tbaa !19
  switch i32 %6, label %sw.epilog [
    i32 6, label %sw.epilog.sink.split
    i32 912, label %sw.bb9
  ]

sw.bb9:                                           ; preds = %if.end8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end8, %sw.bb9
  %.sink = phi i32 [ 4096, %sw.bb9 ], [ 0, %if.end8 ]
  call void @RSA_set_flags(%struct.rsa_st* noundef nonnull %call1, i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end8
  %7 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !14
  %pkey_id11 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %7, i64 0, i32 0
  %8 = load i32, i32* %pkey_id11, align 8, !tbaa !19
  %9 = bitcast %struct.rsa_st* %call1 to i8*
  %call12 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef %8, i8* noundef nonnull %9) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %sw.epilog, %if.end4
  call void @RSA_free(%struct.rsa_st* noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %sw.epilog ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_pub_encode(%struct.X509_pubkey_st* noundef %pk, %struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %penc = alloca i8*, align 8
  %str = alloca %struct.asn1_string_st*, align 8
  %strtype = alloca i32, align 4
  %0 = bitcast i8** %penc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i8* null, i8** %penc, align 8, !tbaa !11
  %1 = bitcast %struct.asn1_string_st** %str to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %2 = bitcast i32* %strtype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  %call = call fastcc i32 @rsa_param_encode(%struct.evp_pkey_st* noundef %pkey, %struct.asn1_string_st** noundef nonnull %str, i32* noundef nonnull %strtype) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %3 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  %call2 = call i32 @i2d_RSAPublicKey(%struct.rsa_st* noundef %3, i8** noundef nonnull %penc) #5
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !14
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 0
  %5 = load i32, i32* %pkey_id, align 8, !tbaa !19
  %call5 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %5) #5
  %6 = load i32, i32* %strtype, align 4, !tbaa !9
  %7 = bitcast %struct.asn1_string_st** %str to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !11
  %9 = load i8*, i8** %penc, align 8, !tbaa !11
  %call6 = call i32 @X509_PUBKEY_set0_param(%struct.X509_pubkey_st* noundef %pk, %struct.asn1_object_st* noundef %call5, i32 noundef %6, i8* noundef %8, i8* noundef %9, i32 noundef %call2) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.end4
  %10 = load i8*, i8** %penc, align 8, !tbaa !11
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 69) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_pub_cmp(%struct.evp_pkey_st* nocapture noundef readonly %a, %struct.evp_pkey_st* nocapture noundef readonly %b) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey to %struct.rsa_st**
  %0 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  %call = tail call i32 @RSA_flags(%struct.rsa_st* noundef %0) #5
  %and = and i32 %call, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 5
  %rsa2 = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %1 = load %struct.rsa_st*, %struct.rsa_st** %rsa2, align 8, !tbaa !21
  %call3 = tail call i32 @RSA_flags(%struct.rsa_st* noundef %1) #5
  %and4 = and i32 %call3, 1
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.rsa_st*, %struct.rsa_st** %rsa2, align 8, !tbaa !21
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %2, i64 0, i32 5
  %3 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !22
  %4 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  %n10 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %4, i64 0, i32 5
  %5 = load %struct.bignum_st*, %struct.bignum_st** %n10, align 8, !tbaa !22
  %call11 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %3, %struct.bignum_st* noundef %5) #5
  %cmp.not = icmp eq i32 %call11, 0
  br i1 %cmp.not, label %lor.lhs.false12, label %return

lor.lhs.false12:                                  ; preds = %if.end
  %6 = load %struct.rsa_st*, %struct.rsa_st** %rsa2, align 8, !tbaa !21
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %6, i64 0, i32 6
  %7 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !26
  %8 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  %e17 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %8, i64 0, i32 6
  %9 = load %struct.bignum_st*, %struct.bignum_st** %e17, align 8, !tbaa !26
  %call18 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %7, %struct.bignum_st* noundef %9) #5
  %cmp19.not = icmp eq i32 %call18, 0
  %spec.select = zext i1 %cmp19.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false12, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_pub_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %call = tail call fastcc i32 @pkey_rsa_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %pkey, i32 noundef %indent, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_priv_decode(%struct.evp_pkey_st* noundef %pkey, %struct.pkcs8_priv_key_info_st* noundef %p8) #0 {
entry:
  %call = tail call %struct.rsa_st* @ossl_rsa_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  %cmp.not = icmp eq %struct.rsa_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !14
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !19
  %2 = bitcast %struct.rsa_st* %call to i8*
  %call1 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef %1, i8* noundef nonnull %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_priv_encode(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %rk = alloca i8*, align 8
  %str = alloca %struct.asn1_string_st*, align 8
  %strtype = alloca i32, align 4
  %0 = bitcast i8** %rk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i8* null, i8** %rk, align 8, !tbaa !11
  %1 = bitcast %struct.asn1_string_st** %str to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %2 = bitcast i32* %strtype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  %call = call fastcc i32 @rsa_param_encode(%struct.evp_pkey_st* noundef %pkey, %struct.asn1_string_st** noundef nonnull %str, i32* noundef nonnull %strtype) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %3 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  %call2 = call i32 @i2d_RSAPrivateKey(%struct.rsa_st* noundef %3, i8** noundef nonnull %rk) #5
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %cleanup.sink.split, label %if.end4

if.end4:                                          ; preds = %if.end
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !14
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 0
  %5 = load i32, i32* %pkey_id, align 8, !tbaa !19
  %call5 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %5) #5
  %6 = load i32, i32* %strtype, align 4, !tbaa !9
  %7 = bitcast %struct.asn1_string_st** %str to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !11
  %9 = load i8*, i8** %rk, align 8, !tbaa !11
  %call6 = call i32 @PKCS8_pkey_set0(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.asn1_object_st* noundef %call5, i32 noundef 0, i32 noundef %6, i8* noundef %8, i8* noundef %9, i32 noundef %call2) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end4, %if.end
  %.sink17 = phi i32 [ 154, %if.end ], [ 161, %if.end4 ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink17, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.rsa_priv_encode, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #5
  %.sink = load %struct.asn1_string_st*, %struct.asn1_string_st** %str, align 8, !tbaa !11
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end4 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_priv_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %call = tail call fastcc i32 @pkey_rsa_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %pkey, i32 noundef %indent, i32 noundef 1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @int_rsa_size(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %0 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  %call = tail call i32 @RSA_size(%struct.rsa_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_bits(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %0 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !22
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %1) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_security_bits(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %0 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  %call = tail call i32 @RSA_security_bits(%struct.rsa_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_sig_print(%struct.bio_st* noundef %bp, %struct.X509_algor_st* noundef %sigalg, %struct.asn1_string_st* noundef %sig, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %pctx) #0 {
entry:
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %sigalg, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !12
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  %cmp = icmp eq i32 %call, 912
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.rsa_pss_params_st* @ossl_rsa_pss_decode(%struct.X509_algor_st* noundef nonnull %sigalg) #5
  %call2 = tail call fastcc i32 @rsa_pss_param_print(%struct.bio_st* noundef %bp, i32 noundef 0, %struct.rsa_pss_params_st* noundef %call1, i32 noundef %indent) #6
  tail call void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef %call1) #5
  %tobool.not.not = icmp eq i32 %call2, 0
  br i1 %tobool.not.not, label %return, label %if.end9

if.else:                                          ; preds = %entry
  %call5 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #5
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %return, label %if.end9

if.end9:                                          ; preds = %if.then, %if.else
  %tobool10.not = icmp eq %struct.asn1_string_st* %sig, null
  br i1 %tobool10.not, label %return, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call12 = tail call i32 @X509_signature_dump(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef nonnull %sig, i32 noundef %indent) #5
  br label %return

return:                                           ; preds = %if.then, %if.end9, %if.else, %if.then11
  %retval.1 = phi i32 [ 0, %if.then ], [ %call12, %if.then11 ], [ 0, %if.else ], [ 1, %if.end9 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal void @int_rsa_free(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %0 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  tail call void @RSA_free(%struct.rsa_st* noundef %0) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_pkey_ctrl(%struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %op, i64 noundef %arg1, i8* nocapture noundef writeonly %arg2) #0 {
entry:
  %md = alloca %struct.evp_md_st*, align 8
  %mgf1md = alloca %struct.evp_md_st*, align 8
  %min_saltlen = alloca i32, align 4
  %0 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.evp_md_st** %mgf1md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %2 = bitcast i32* %min_saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  %cond = icmp eq i32 %op, 3
  br i1 %cond, label %sw.bb, label %cleanup

sw.bb:                                            ; preds = %entry
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %3 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  %pss = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %3, i64 0, i32 14
  %4 = load %struct.rsa_pss_params_st*, %struct.rsa_pss_params_st** %pss, align 8, !tbaa !27
  %cmp.not = icmp eq %struct.rsa_pss_params_st* %4, null
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %sw.bb
  %call = call i32 @ossl_rsa_pss_get_param(%struct.rsa_pss_params_st* noundef nonnull %4, %struct.evp_md_st** noundef nonnull %md, %struct.evp_md_st** noundef nonnull %mgf1md, i32* noundef nonnull %min_saltlen) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.rsa_pkey_ctrl, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !11
  %call6 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #5
  %6 = bitcast i8* %arg2 to i32*
  store i32 %call6, i32* %6, align 4, !tbaa !9
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %7 = bitcast i8* %arg2 to i32*
  store i32 672, i32* %7, align 4, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7, %if.end, %if.then5
  %retval.0 = phi i32 [ 2, %if.end ], [ 0, %if.then5 ], [ 1, %if.end7 ], [ -2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @old_rsa_priv_decode(%struct.evp_pkey_st* noundef %pkey, i8** noundef %pder, i32 noundef %derlen) #0 {
entry:
  %conv = sext i32 %derlen to i64
  %call = tail call %struct.rsa_st* @d2i_RSAPrivateKey(%struct.rsa_st** noundef null, i8** noundef %pder, i64 noundef %conv) #5
  %cmp = icmp eq %struct.rsa_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !14
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !19
  %2 = bitcast %struct.rsa_st* %call to i8*
  %call2 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef %1, i8* noundef nonnull %2) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @old_rsa_priv_encode(%struct.evp_pkey_st* nocapture noundef readonly %pkey, i8** noundef %pder) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %0 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  %call = tail call i32 @i2d_RSAPrivateKey(%struct.rsa_st* noundef %0, i8** noundef %pder) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_item_verify(%struct.evp_md_ctx_st* noundef %ctx, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %asn, %struct.X509_algor_st* noundef %sigalg, %struct.asn1_string_st* nocapture noundef readnone %sig, %struct.evp_pkey_st* noundef %pkey) #0 {
entry:
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %sigalg, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !12
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  %cmp.not = icmp eq i32 %call, 912
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 617, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.rsa_item_verify, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 155, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ossl_rsa_pss_to_ctx(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st* noundef null, %struct.X509_algor_st* noundef nonnull %sigalg, %struct.evp_pkey_st* noundef %pkey) #6
  %cmp2 = icmp sgt i32 %call1, 0
  %. = select i1 %cmp2, i32 2, i32 -1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_item_sign(%struct.evp_md_ctx_st* noundef %ctx, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %asn, %struct.X509_algor_st* noundef %alg1, %struct.X509_algor_st* noundef %alg2, %struct.asn1_string_st* nocapture noundef readnone %sig) #0 {
entry:
  %pad_mode = alloca i32, align 4
  %0 = bitcast i32* %pad_mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef %ctx) #5
  %call1 = call i32 @EVP_PKEY_CTX_get_rsa_padding(%struct.evp_pkey_ctx_st* noundef %call, i32* noundef nonnull %pad_mode) #5
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %cleanup23, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %pad_mode, align 4, !tbaa !9
  %cond = icmp eq i32 %1, 6
  br i1 %cond, label %if.then6, label %cleanup23

if.then6:                                         ; preds = %if.end
  %call7 = call %struct.asn1_string_st* @ossl_rsa_ctx_to_pss_string(%struct.evp_pkey_ctx_st* noundef %call) #6
  %tobool.not = icmp eq %struct.asn1_string_st* %call7, null
  br i1 %tobool.not, label %cleanup23, label %if.end9

if.end9:                                          ; preds = %if.then6
  %tobool10.not = icmp eq %struct.X509_algor_st* %alg2, null
  br i1 %tobool10.not, label %if.end18, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call12 = call %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef nonnull %call7) #5
  %tobool13.not = icmp eq %struct.asn1_string_st* %call12, null
  br i1 %tobool13.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then11
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef nonnull %call7) #5
  br label %cleanup23

cleanup:                                          ; preds = %if.then11
  %call16 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 912) #5
  %2 = bitcast %struct.asn1_string_st* %call12 to i8*
  %call17 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef nonnull %alg2, %struct.asn1_object_st* noundef %call16, i32 noundef 16, i8* noundef nonnull %2) #5
  br label %if.end18

if.end18:                                         ; preds = %cleanup, %if.end9
  %call19 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 912) #5
  %3 = bitcast %struct.asn1_string_st* %call7 to i8*
  %call20 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %alg1, %struct.asn1_object_st* noundef %call19, i32 noundef 16, i8* noundef nonnull %3) #5
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup.thread, %if.end, %if.end18, %if.then6, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 3, %if.end18 ], [ 0, %if.then6 ], [ 2, %if.end ], [ 0, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_sig_info_set(%struct.x509_sig_info_st* noundef %siginf, %struct.X509_algor_st* noundef %sigalg, %struct.asn1_string_st* nocapture noundef readnone %sig) #0 {
entry:
  %saltlen = alloca i32, align 4
  %mgf1md = alloca %struct.evp_md_st*, align 8
  %md = alloca %struct.evp_md_st*, align 8
  %0 = bitcast i32* %saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %1 = bitcast %struct.evp_md_st** %mgf1md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store %struct.evp_md_st* null, %struct.evp_md_st** %mgf1md, align 8, !tbaa !11
  %2 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !11
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %sigalg, i64 0, i32 0
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !12
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #5
  %cmp.not = icmp eq i32 %call, 912
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.rsa_pss_params_st* @ossl_rsa_pss_decode(%struct.X509_algor_st* noundef nonnull %sigalg) #5
  %call2 = call i32 @ossl_rsa_pss_get_param(%struct.rsa_pss_params_st* noundef %call1, %struct.evp_md_st** noundef nonnull %md, %struct.evp_md_st** noundef nonnull %mgf1md, i32* noundef nonnull %saltlen) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !11
  %call5 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %4) #5
  %call5.off = add i32 %call5, -672
  %switch = icmp ult i32 %call5.off, 3
  br i1 %switch, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end4
  %5 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md, align 8, !tbaa !11
  %call10 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #5
  %cmp11 = icmp eq i32 %call5, %call10
  br i1 %cmp11, label %land.lhs.true12, label %if.else

land.lhs.true12:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %saltlen, align 4, !tbaa !9
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !11
  %call13 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %7) #5
  %cmp14 = icmp eq i32 %6, %call13
  br i1 %cmp14, label %if.end16, label %if.else

if.else:                                          ; preds = %if.end4, %land.lhs.true12, %land.lhs.true
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true12, %if.else
  %flags.0 = phi i32 [ 0, %if.else ], [ 2, %land.lhs.true12 ]
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !11
  %call17 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %8) #5
  switch i32 %call5, label %if.end28.fold.split [
    i32 64, label %if.end28
    i32 114, label %if.then22
    i32 4, label %if.then25
  ]

if.then22:                                        ; preds = %if.end16
  br label %if.end28

if.then25:                                        ; preds = %if.end16
  br label %if.end28

if.end28.fold.split:                              ; preds = %if.end16
  %mul = shl nsw i32 %call17, 2
  br label %if.end28

if.end28:                                         ; preds = %if.end16, %if.end28.fold.split, %if.then22, %if.then25
  %secbits.0 = phi i32 [ 68, %if.then22 ], [ 39, %if.then25 ], [ %call5, %if.end16 ], [ %mul, %if.end28.fold.split ]
  call void @X509_SIG_INFO_set(%struct.x509_sig_info_st* noundef %siginf, i32 noundef %call5, i32 noundef 912, i32 noundef %secbits.0, i32 noundef %flags.0) #5
  br label %err

err:                                              ; preds = %if.end, %if.end28
  %rv.0 = phi i32 [ 1, %if.end28 ], [ 0, %if.end ]
  call void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_pkey_check(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %0 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  %call = tail call i32 @RSA_check_key_ex(%struct.rsa_st* noundef %0, %struct.bn_gencb_st* noundef null) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i64 @rsa_pkey_dirty_cnt(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #3 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %0 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  %dirty_cnt = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 25
  %1 = load i32, i32* %dirty_cnt, align 8, !tbaa !28
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_pkey_export_to(%struct.evp_pkey_st* nocapture noundef readonly %from, i8* noundef %to_keydata, i32 (i8*, i32, %struct.ossl_param_st*)* nocapture noundef readonly %importer, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) #0 {
entry:
  %call = tail call fastcc i32 @rsa_int_export_to(%struct.evp_pkey_st* noundef %from, i8* noundef %to_keydata, i32 (i8*, i32, %struct.ossl_param_st*)* noundef %importer) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_pkey_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx) #0 {
entry:
  %call = tail call fastcc i32 @rsa_int_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_pkey_copy(%struct.evp_pkey_st* noundef %to, %struct.evp_pkey_st* nocapture noundef readonly %from) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 5
  %rsa1 = bitcast %union.legacy_pkey_st* %pkey to %struct.rsa_st**
  %0 = load %struct.rsa_st*, %struct.rsa_st** %rsa1, align 8, !tbaa !21
  %cmp.not = icmp eq %struct.rsa_st* %0, null
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.rsa_st* @ossl_rsa_dup(%struct.rsa_st* noundef nonnull %0, i32 noundef 135) #5
  %cmp2 = icmp eq %struct.rsa_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %dupkey.0 = phi %struct.rsa_st* [ %call, %if.then ], [ null, %entry ]
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !29
  %2 = bitcast %struct.rsa_st* %dupkey.0 to i8*
  %call5 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %to, i32 noundef %1, i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end4
  tail call void @RSA_free(%struct.rsa_st* noundef %dupkey.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ %call5, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_pss_pkey_export_to(%struct.evp_pkey_st* nocapture noundef readonly %from, i8* noundef %to_keydata, i32 (i8*, i32, %struct.ossl_param_st*)* nocapture noundef readonly %importer, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) #0 {
entry:
  %call = tail call fastcc i32 @rsa_int_export_to(%struct.evp_pkey_st* noundef %from, i8* noundef %to_keydata, i32 (i8*, i32, %struct.ossl_param_st*)* noundef %importer) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_pss_pkey_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx) #0 {
entry:
  %call = tail call fastcc i32 @rsa_int_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx, i32 noundef 4096) #6
  ret i32 %call
}

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_get_rsa_mgf1_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_get_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #2

declare %struct.rsa_st* @d2i_RSAPublicKey(%struct.rsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_param_decode(%struct.rsa_st* noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #2

declare void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #2

declare void @RSA_clear_flags(%struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @RSA_set_flags(%struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_param_encode(%struct.evp_pkey_st* nocapture noundef readonly %pkey, %struct.asn1_string_st** noundef %pstr, i32* nocapture noundef writeonly %pstrtype) unnamed_addr #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %rsa2 = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %0 = load %struct.rsa_st*, %struct.rsa_st** %rsa2, align 8, !tbaa !21
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %pstr, align 8, !tbaa !11
  %call = tail call i32 @RSA_test_flags(%struct.rsa_st* noundef %0, i32 noundef 61440) #5
  %cmp.not = icmp eq i32 %call, 4096
  br i1 %cmp.not, label %if.end, label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %pss = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 14
  %1 = load %struct.rsa_pss_params_st*, %struct.rsa_pss_params_st** %pss, align 8, !tbaa !27
  %cmp3 = icmp eq %struct.rsa_pss_params_st* %1, null
  br i1 %cmp3, label %cleanup.sink.split, label %if.end5

if.end5:                                          ; preds = %if.end
  %2 = bitcast %struct.rsa_pss_params_st* %1 to i8*
  %call7 = tail call %struct.ASN1_ITEM_st* @RSA_PSS_PARAMS_it() #5
  %call8 = tail call %struct.asn1_string_st* @ASN1_item_pack(i8* noundef nonnull %2, %struct.ASN1_ITEM_st* noundef %call7, %struct.asn1_string_st** noundef nonnull %pstr) #5
  %cmp9 = icmp eq %struct.asn1_string_st* %call8, null
  br i1 %cmp9, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end5, %if.end, %entry
  %.sink = phi i32 [ 5, %entry ], [ -1, %if.end ], [ 16, %if.end5 ]
  store i32 %.sink, i32* %pstrtype, align 4, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare i32 @i2d_RSAPublicKey(%struct.rsa_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @X509_PUBKEY_set0_param(%struct.X509_pubkey_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RSA_test_flags(%struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RSA_flags(%struct.rsa_st* noundef) local_unnamed_addr #2

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkey_rsa_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %off, i32 noundef %priv) unnamed_addr #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %0 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !21
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mod_len.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  %prime_infos = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 15
  %2 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !30
  %call3 = tail call fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %2) #6
  %call4 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %off, i32 noundef 128) #5
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup113, label %if.end6

if.end6:                                          ; preds = %if.end
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %3 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !14
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %3, i64 0, i32 0
  %4 = load i32, i32* %pkey_id, align 8, !tbaa !19
  %cmp7 = icmp eq i32 %4, 912
  %cond = select i1 %cmp7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef %cond) #5
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %cleanup113, label %if.end11

if.end11:                                         ; preds = %if.end6
  %tobool12.not = icmp eq i32 %priv, 0
  br i1 %tobool12.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  %d = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 7
  %5 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !31
  %tobool13.not = icmp eq %struct.bignum_st* %5, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %cmp15 = icmp slt i32 %call3, 1
  %add = add nsw i32 %call3, 2
  %cond16 = select i1 %cmp15, i32 2, i32 %add
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 noundef %mod_len.0, i32 noundef %cond16) #5
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %cleanup113, label %if.end25

if.else:                                          ; preds = %land.lhs.true, %if.end11
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 noundef %mod_len.0) #5
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %cleanup113, label %if.end25

if.end25:                                         ; preds = %if.else, %if.then14
  %s.0 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), %if.then14 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), %if.else ]
  %str.0 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %if.then14 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), %if.else ]
  %6 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !22
  %call27 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef nonnull %str.0, %struct.bignum_st* noundef %6, i8* noundef null, i32 noundef %off) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup113, label %if.end30

if.end30:                                         ; preds = %if.end25
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 6
  %7 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !26
  %call31 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef %s.0, %struct.bignum_st* noundef %7, i8* noundef null, i32 noundef %off) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup113, label %if.end34

if.end34:                                         ; preds = %if.end30
  br i1 %tobool12.not, label %if.end104, label %if.then36

if.then36:                                        ; preds = %if.end34
  %d37 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 7
  %8 = load %struct.bignum_st*, %struct.bignum_st** %d37, align 8, !tbaa !31
  %call38 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), %struct.bignum_st* noundef %8, i8* noundef null, i32 noundef %off) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup113, label %if.end41

if.end41:                                         ; preds = %if.then36
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 8
  %9 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !32
  %call42 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), %struct.bignum_st* noundef %9, i8* noundef null, i32 noundef %off) #5
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup113, label %if.end45

if.end45:                                         ; preds = %if.end41
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 9
  %10 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !33
  %call46 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %struct.bignum_st* noundef %10, i8* noundef null, i32 noundef %off) #5
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup113, label %if.end49

if.end49:                                         ; preds = %if.end45
  %dmp1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 10
  %11 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !34
  %call50 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), %struct.bignum_st* noundef %11, i8* noundef null, i32 noundef %off) #5
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup113, label %if.end53

if.end53:                                         ; preds = %if.end49
  %dmq1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 11
  %12 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !35
  %call54 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), %struct.bignum_st* noundef %12, i8* noundef null, i32 noundef %off) #5
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %cleanup113, label %if.end57

if.end57:                                         ; preds = %if.end53
  %iqmp = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 12
  %13 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !36
  %call58 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), %struct.bignum_st* noundef %13, i8* noundef null, i32 noundef %off) #5
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup113, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end57
  %14 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !30
  %call63194 = tail call fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %14) #6
  %cmp64195 = icmp sgt i32 %call63194, 0
  br i1 %cmp64195, label %for.body, label %if.end104

for.body:                                         ; preds = %for.cond.preheader, %for.cond67.2
  %i.0196 = phi i32 [ %inc99, %for.cond67.2 ], [ 0, %for.cond.preheader ]
  %15 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !30
  %call66 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %15, i32 noundef %i.0196) #6
  %add87 = add nuw nsw i32 %i.0196, 3
  %t = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call66, i64 0, i32 2
  %d85 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call66, i64 0, i32 1
  %r = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call66, i64 0, i32 0
  %call70 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %off, i32 noundef 128) #5
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %cleanup113, label %sw.bb

for.cond67:                                       ; preds = %sw.epilog
  %call70.1 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %off, i32 noundef 128) #5
  %tobool71.not.1 = icmp eq i32 %call70.1, 0
  br i1 %tobool71.not.1, label %cleanup113, label %sw.bb79.1

sw.bb79.1:                                        ; preds = %for.cond67
  %call81.1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 noundef %add87) #5
  %cmp82.1 = icmp slt i32 %call81.1, 1
  br i1 %cmp82.1, label %cleanup113, label %sw.epilog.1

sw.epilog.1:                                      ; preds = %sw.bb79.1
  %16 = load %struct.bignum_st*, %struct.bignum_st** %d85, align 8, !tbaa !37
  %call92.1 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), %struct.bignum_st* noundef %16, i8* noundef null, i32 noundef %off) #5
  %tobool93.not.1 = icmp eq i32 %call92.1, 0
  br i1 %tobool93.not.1, label %cleanup113, label %for.cond67.1

for.cond67.1:                                     ; preds = %sw.epilog.1
  %call70.2 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %off, i32 noundef 128) #5
  %tobool71.not.2 = icmp eq i32 %call70.2, 0
  br i1 %tobool71.not.2, label %cleanup113, label %sw.bb86.2

sw.bb86.2:                                        ; preds = %for.cond67.1
  %call88.2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 noundef %add87) #5
  %cmp89.2 = icmp slt i32 %call88.2, 1
  br i1 %cmp89.2, label %cleanup113, label %sw.epilog.2

sw.epilog.2:                                      ; preds = %sw.bb86.2
  %17 = load %struct.bignum_st*, %struct.bignum_st** %t, align 8, !tbaa !39
  %call92.2 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), %struct.bignum_st* noundef %17, i8* noundef null, i32 noundef %off) #5
  %tobool93.not.2 = icmp eq i32 %call92.2, 0
  br i1 %tobool93.not.2, label %cleanup113, label %for.cond67.2

for.cond67.2:                                     ; preds = %sw.epilog.2
  %inc99 = add nuw nsw i32 %i.0196, 1
  %18 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !30
  %call63 = tail call fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %18) #6
  %cmp64 = icmp slt i32 %inc99, %call63
  br i1 %cmp64, label %for.body, label %if.end104, !llvm.loop !40

sw.bb:                                            ; preds = %for.body
  %call75 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 noundef %add87) #5
  %cmp76 = icmp slt i32 %call75, 1
  br i1 %cmp76, label %cleanup113, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %19 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !42
  %call92 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), %struct.bignum_st* noundef %19, i8* noundef null, i32 noundef %off) #5
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %cleanup113, label %for.cond67

if.end104:                                        ; preds = %for.cond67.2, %for.cond.preheader, %if.end34
  %20 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !14
  %pkey_id106 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %20, i64 0, i32 0
  %21 = load i32, i32* %pkey_id106, align 8, !tbaa !19
  %cmp107 = icmp eq i32 %21, 912
  br i1 %cmp107, label %land.lhs.true108, label %if.end112

land.lhs.true108:                                 ; preds = %if.end104
  %pss = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 14
  %22 = load %struct.rsa_pss_params_st*, %struct.rsa_pss_params_st** %pss, align 8, !tbaa !27
  %call109 = tail call fastcc i32 @rsa_pss_param_print(%struct.bio_st* noundef %bp, i32 noundef 1, %struct.rsa_pss_params_st* noundef %22, i32 noundef %off) #6
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %cleanup113, label %if.end112

if.end112:                                        ; preds = %land.lhs.true108, %if.end104
  br label %cleanup113

cleanup113:                                       ; preds = %sw.epilog, %sw.bb, %for.body, %for.cond67, %sw.bb79.1, %sw.epilog.1, %for.cond67.1, %sw.bb86.2, %sw.epilog.2, %if.end57, %if.end53, %if.end49, %if.end45, %if.end41, %if.then36, %if.end112, %if.end, %if.end6, %if.then14, %if.else, %if.end25, %if.end30, %land.lhs.true108
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %if.then14 ], [ 1, %if.end112 ], [ 0, %land.lhs.true108 ], [ 0, %if.end30 ], [ 0, %if.end25 ], [ 0, %if.else ], [ 0, %if.end ], [ 0, %if.then36 ], [ 0, %if.end41 ], [ 0, %if.end45 ], [ 0, %if.end49 ], [ 0, %if.end53 ], [ 0, %if.end57 ], [ 0, %sw.epilog.2 ], [ 0, %sw.bb86.2 ], [ 0, %for.cond67.1 ], [ 0, %sw.epilog.1 ], [ 0, %sw.bb79.1 ], [ 0, %for.cond67 ], [ 0, %for.body ], [ 0, %sw.bb ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

declare i32 @BIO_indent(%struct.bio_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ASN1_bn_print(%struct.bio_st* noundef, i8* noundef, %struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  %1 = bitcast i8* %call to %struct.rsa_prime_info_st*
  ret %struct.rsa_prime_info_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_pss_param_print(%struct.bio_st* noundef %bp, i32 noundef %pss_key, %struct.rsa_pss_params_st* noundef readonly %pss, i32 noundef %indent) unnamed_addr #0 {
entry:
  %call = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %indent, i32 noundef 128) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i32 %pss_key, 0
  %cmp14 = icmp eq %struct.rsa_pss_params_st* %pss, null
  br i1 %tobool1.not, label %if.else13, label %if.then2

if.then2:                                         ; preds = %if.end
  br i1 %cmp14, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then2
  %call4 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0)) #5
  %cmp5 = icmp sgt i32 %call4, 0
  %. = zext i1 %cmp5 to i32
  br label %cleanup

if.else:                                          ; preds = %if.then2
  %call8 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0)) #5
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %cleanup, label %if.end21

if.else13:                                        ; preds = %if.end
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.else13
  %call16 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0)) #5
  %cmp17 = icmp sgt i32 %call16, 0
  %.193 = zext i1 %cmp17 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.else13, %if.else
  %call22 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #5
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %err, label %if.end25

if.end25:                                         ; preds = %if.end21
  %add = add nsw i32 %indent, 2
  %spec.select = select i1 %tobool1.not, i32 %indent, i32 %add
  %call29 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %spec.select, i32 noundef 128) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end32

if.end32:                                         ; preds = %if.end25
  %call33 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0)) #5
  %cmp34 = icmp slt i32 %call33, 1
  br i1 %cmp34, label %err, label %if.end36

if.end36:                                         ; preds = %if.end32
  %hashAlgorithm = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %pss, i64 0, i32 0
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %hashAlgorithm, align 8, !tbaa !43
  %tobool37.not = icmp eq %struct.X509_algor_st* %0, null
  br i1 %tobool37.not, label %if.else44, label %if.then38

if.then38:                                        ; preds = %if.end36
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !12
  %call40 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %1) #5
  %cmp41 = icmp slt i32 %call40, 1
  br i1 %cmp41, label %err, label %if.end49

if.else44:                                        ; preds = %if.end36
  %call45 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #5
  %cmp46 = icmp slt i32 %call45, 1
  br i1 %cmp46, label %err, label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then38
  %call50 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #5
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %err, label %if.end53

if.end53:                                         ; preds = %if.end49
  %call54 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %spec.select, i32 noundef 128) #5
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %if.end57

if.end57:                                         ; preds = %if.end53
  %call58 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0)) #5
  %cmp59 = icmp slt i32 %call58, 1
  br i1 %cmp59, label %err, label %if.end61

if.end61:                                         ; preds = %if.end57
  %maskGenAlgorithm = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %pss, i64 0, i32 1
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %maskGenAlgorithm, align 8, !tbaa !44
  %tobool62.not = icmp eq %struct.X509_algor_st* %2, null
  br i1 %tobool62.not, label %if.else89, label %if.then63

if.then63:                                        ; preds = %if.end61
  %algorithm65 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %2, i64 0, i32 0
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm65, align 8, !tbaa !12
  %call66 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %3) #5
  %cmp67 = icmp slt i32 %call66, 1
  br i1 %cmp67, label %err, label %if.end69

if.end69:                                         ; preds = %if.then63
  %call70 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #5
  %cmp71 = icmp slt i32 %call70, 1
  br i1 %cmp71, label %err, label %if.end73

if.end73:                                         ; preds = %if.end69
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %maskGenAlgorithm, align 8, !tbaa !44
  %call75 = tail call %struct.X509_algor_st* @ossl_x509_algor_mgf1_decode(%struct.X509_algor_st* noundef %4) #5
  %cmp76.not = icmp eq %struct.X509_algor_st* %call75, null
  br i1 %cmp76.not, label %if.else83, label %if.then77

if.then77:                                        ; preds = %if.end73
  %algorithm78 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call75, i64 0, i32 0
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm78, align 8, !tbaa !12
  %call79 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %5) #5
  %cmp80 = icmp slt i32 %call79, 1
  br i1 %cmp80, label %err, label %if.end94

if.else83:                                        ; preds = %if.end73
  %call84 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)) #5
  %cmp85 = icmp slt i32 %call84, 1
  br i1 %cmp85, label %err, label %if.end94

if.else89:                                        ; preds = %if.end61
  %call90 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0)) #5
  %cmp91 = icmp slt i32 %call90, 1
  br i1 %cmp91, label %err, label %if.end94

if.end94:                                         ; preds = %if.else89, %if.then77, %if.else83
  %maskHash.0 = phi %struct.X509_algor_st* [ %call75, %if.then77 ], [ null, %if.else83 ], [ null, %if.else89 ]
  %call95 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #5
  %call96 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %spec.select, i32 noundef 128) #5
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %if.end99

if.end99:                                         ; preds = %if.end94
  %cond = select i1 %tobool1.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)
  %call101 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i8* noundef %cond) #5
  %cmp102 = icmp slt i32 %call101, 1
  br i1 %cmp102, label %err, label %if.end104

if.end104:                                        ; preds = %if.end99
  %saltLength = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %pss, i64 0, i32 2
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %saltLength, align 8, !tbaa !4
  %tobool105.not = icmp eq %struct.asn1_string_st* %6, null
  br i1 %tobool105.not, label %if.else112, label %if.then106

if.then106:                                       ; preds = %if.end104
  %call108 = tail call i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef nonnull %6) #5
  %cmp109 = icmp slt i32 %call108, 1
  br i1 %cmp109, label %err, label %if.end117

if.else112:                                       ; preds = %if.end104
  %call113 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0)) #5
  %cmp114 = icmp slt i32 %call113, 1
  br i1 %cmp114, label %err, label %if.end117

if.end117:                                        ; preds = %if.else112, %if.then106
  %call118 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #5
  %call119 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %spec.select, i32 noundef 128) #5
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %err, label %if.end122

if.end122:                                        ; preds = %if.end117
  %call123 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0)) #5
  %cmp124 = icmp slt i32 %call123, 1
  br i1 %cmp124, label %err, label %if.end126

if.end126:                                        ; preds = %if.end122
  %trailerField = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %pss, i64 0, i32 3
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %trailerField, align 8, !tbaa !45
  %tobool127.not = icmp eq %struct.asn1_string_st* %7, null
  br i1 %tobool127.not, label %if.else134, label %if.then128

if.then128:                                       ; preds = %if.end126
  %call130 = tail call i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef nonnull %7) #5
  %cmp131 = icmp slt i32 %call130, 1
  br i1 %cmp131, label %err, label %if.end139

if.else134:                                       ; preds = %if.end126
  %call135 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0)) #5
  %cmp136 = icmp slt i32 %call135, 1
  br i1 %cmp136, label %err, label %if.end139

if.end139:                                        ; preds = %if.else134, %if.then128
  %call140 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #5
  br label %err

err:                                              ; preds = %if.else134, %if.then128, %if.end122, %if.end117, %if.else112, %if.then106, %if.end99, %if.end94, %if.else89, %if.else83, %if.then77, %if.end69, %if.then63, %if.end57, %if.end53, %if.end49, %if.else44, %if.then38, %if.end32, %if.end25, %if.end21, %entry, %if.end139
  %rv.0 = phi i32 [ 0, %if.end21 ], [ 0, %if.end32 ], [ 0, %if.then38 ], [ 0, %if.end49 ], [ 0, %if.end57 ], [ 0, %if.then63 ], [ 0, %if.end69 ], [ 0, %if.then77 ], [ 0, %if.end99 ], [ 0, %if.then106 ], [ 0, %if.end122 ], [ 0, %if.then128 ], [ 1, %if.end139 ], [ 0, %if.else134 ], [ 0, %if.end117 ], [ 0, %if.else112 ], [ 0, %if.end94 ], [ 0, %if.else83 ], [ 0, %if.else89 ], [ 0, %if.end53 ], [ 0, %if.else44 ], [ 0, %if.end25 ], [ 0, %entry ]
  %maskHash.1 = phi %struct.X509_algor_st* [ null, %if.end21 ], [ null, %if.end32 ], [ null, %if.then38 ], [ null, %if.end49 ], [ null, %if.end57 ], [ null, %if.then63 ], [ null, %if.end69 ], [ %call75, %if.then77 ], [ %maskHash.0, %if.end99 ], [ %maskHash.0, %if.then106 ], [ %maskHash.0, %if.end122 ], [ %maskHash.0, %if.then128 ], [ %maskHash.0, %if.end139 ], [ %maskHash.0, %if.else134 ], [ %maskHash.0, %if.end117 ], [ %maskHash.0, %if.else112 ], [ %maskHash.0, %if.end94 ], [ null, %if.else83 ], [ null, %if.else89 ], [ null, %if.end53 ], [ null, %if.else44 ], [ null, %if.end25 ], [ null, %entry ]
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %maskHash.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.else, %if.then3, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ %., %if.then3 ], [ 0, %if.else ], [ %.193, %if.then15 ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.X509_algor_st* @ossl_x509_algor_mgf1_decode(%struct.X509_algor_st* noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

declare %struct.rsa_st* @ossl_rsa_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @i2d_RSAPrivateKey(%struct.rsa_st* noundef, i8** noundef) local_unnamed_addr #2

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @PKCS8_pkey_set0(%struct.pkcs8_priv_key_info_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RSA_size(%struct.rsa_st* noundef) local_unnamed_addr #2

declare i32 @RSA_security_bits(%struct.rsa_st* noundef) local_unnamed_addr #2

declare i32 @X509_signature_dump(%struct.bio_st* noundef, %struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.rsa_st* @d2i_RSAPrivateKey(%struct.rsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_get_rsa_padding(%struct.evp_pkey_ctx_st* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @X509_SIG_INFO_set(%struct.x509_sig_info_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RSA_check_key_ex(%struct.rsa_st* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_int_export_to(%struct.evp_pkey_st* nocapture noundef readonly %from, i8* noundef %to_keydata, i32 (i8*, i32, %struct.ossl_param_st*)* nocapture noundef readonly %importer) unnamed_addr #0 {
entry:
  %md = alloca %struct.evp_md_st*, align 8
  %mgf1md = alloca %struct.evp_md_st*, align 8
  %saltlen = alloca i32, align 4
  %trailerfield = alloca i32, align 4
  %pss_params = alloca %struct.rsa_pss_params_30_st, align 4
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 5
  %rsa1 = bitcast %union.legacy_pkey_st* %pkey to %struct.rsa_st**
  %0 = load %struct.rsa_st*, %struct.rsa_st** %rsa1, align 8, !tbaa !21
  %call = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #5
  %cmp = icmp eq %struct.ossl_param_bld_st* %call, null
  br i1 %cmp, label %cleanup54, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bignum_st* @RSA_get0_n(%struct.rsa_st* noundef %0) #5
  %cmp3 = icmp eq %struct.bignum_st* %call2, null
  br i1 %cmp3, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call %struct.bignum_st* @RSA_get0_e(%struct.rsa_st* noundef %0) #5
  %cmp5 = icmp eq %struct.bignum_st* %call4, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false
  %call8 = tail call i32 @ossl_rsa_todata(%struct.rsa_st* noundef %0, %struct.ossl_param_bld_st* noundef nonnull %call, %struct.ossl_param_st* noundef null) #5
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end7
  %call11 = tail call %struct.bignum_st* @RSA_get0_d(%struct.rsa_st* noundef %0) #5
  %cmp12.not = icmp eq %struct.bignum_st* %call11, null
  %spec.select = select i1 %cmp12.not, i32 2, i32 3
  %pss = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %0, i64 0, i32 14
  %1 = load %struct.rsa_pss_params_st*, %struct.rsa_pss_params_st** %pss, align 8, !tbaa !27
  %cmp16.not = icmp eq %struct.rsa_pss_params_st* %1, null
  br i1 %cmp16.not, label %if.end48, label %if.then17

if.then17:                                        ; preds = %if.end10
  %2 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !11
  %3 = bitcast %struct.evp_md_st** %mgf1md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  store %struct.evp_md_st* null, %struct.evp_md_st** %mgf1md, align 8, !tbaa !11
  %4 = bitcast i32* %saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7
  %5 = bitcast i32* %trailerfield to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7
  %6 = bitcast %struct.rsa_pss_params_30_st* %pss_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %6) #7
  %call19 = call i32 @ossl_rsa_pss_get_param_unverified(%struct.rsa_pss_params_st* noundef nonnull %1, %struct.evp_md_st** noundef nonnull %md, %struct.evp_md_st** noundef nonnull %mgf1md, i32* noundef nonnull %saltlen, i32* noundef nonnull %trailerfield) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup.thread, label %if.end22

if.end22:                                         ; preds = %if.then17
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !11
  %call23 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %7) #5
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md, align 8, !tbaa !11
  %call24 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %8) #5
  %call25 = call i32 @ossl_rsa_pss_params_30_set_defaults(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup.thread, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.end22
  %call28 = call i32 @ossl_rsa_pss_params_30_set_hashalg(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params, i32 noundef %call23) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup.thread, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %call31 = call i32 @ossl_rsa_pss_params_30_set_maskgenhashalg(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params, i32 noundef %call24) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup.thread, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %9 = load i32, i32* %saltlen, align 4, !tbaa !9
  %call34 = call i32 @ossl_rsa_pss_params_30_set_saltlen(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params, i32 noundef %9) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup.thread, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %call37 = call i32 @ossl_rsa_pss_params_30_todata(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params, %struct.ossl_param_bld_st* noundef nonnull %call, %struct.ossl_param_st* noundef null) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then17, %lor.lhs.false33, %lor.lhs.false30, %lor.lhs.false27, %if.end22, %lor.lhs.false36
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  br label %err

cleanup:                                          ; preds = %lor.lhs.false36
  %or41 = or i32 %spec.select, 128
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  br label %if.end48

if.end48:                                         ; preds = %cleanup, %if.end10
  %selection.2 = phi i32 [ %or41, %cleanup ], [ %spec.select, %if.end10 ]
  %call49 = call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef nonnull %call) #5
  %cmp50 = icmp eq %struct.ossl_param_st* %call49, null
  br i1 %cmp50, label %err, label %if.end52

if.end52:                                         ; preds = %if.end48
  %call53 = call i32 %importer(i8* noundef %to_keydata, i32 noundef %selection.2, %struct.ossl_param_st* noundef nonnull %call49) #5
  br label %err

err:                                              ; preds = %cleanup.thread, %if.end48, %if.end7, %if.end, %lor.lhs.false, %if.end52
  %rv.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %if.end48 ], [ %call53, %if.end52 ], [ 0, %if.end7 ], [ 0, %cleanup.thread ]
  %params.0 = phi %struct.ossl_param_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %if.end48 ], [ %call49, %if.end52 ], [ null, %if.end7 ], [ null, %cleanup.thread ]
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.0) #5
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef nonnull %call) #5
  br label %cleanup54

cleanup54:                                        ; preds = %entry, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #2

declare %struct.bignum_st* @RSA_get0_n(%struct.rsa_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @RSA_get0_e(%struct.rsa_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_todata(%struct.rsa_st* noundef, %struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @RSA_get0_d(%struct.rsa_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_set_defaults(%struct.rsa_pss_params_30_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_set_hashalg(%struct.rsa_pss_params_30_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_set_maskgenhashalg(%struct.rsa_pss_params_30_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_set_saltlen(%struct.rsa_pss_params_30_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_todata(%struct.rsa_pss_params_30_st* noundef, %struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_int_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx, i32 noundef %rsa_type) unnamed_addr #0 {
entry:
  %rsa_pss_params = alloca %struct.rsa_pss_params_30_st, align 4
  %pss_defaults_set = alloca i32, align 4
  %0 = bitcast i8* %vpctx to %struct.evp_pkey_ctx_st*
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef %0) #5
  %libctx = getelementptr inbounds i8, i8* %vpctx, i64 8
  %1 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %1, align 8, !tbaa !46
  %call1 = tail call %struct.rsa_st* @ossl_rsa_new_with_ctx(%struct.ossl_lib_ctx_st* noundef %2) #5
  %3 = bitcast %struct.rsa_pss_params_30_st* %rsa_pss_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %3) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %4 = bitcast i32* %pss_defaults_set to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7
  store i32 0, i32* %pss_defaults_set, align 4, !tbaa !9
  %cmp = icmp eq %struct.rsa_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 795, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.rsa_int_import_from, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup42

if.end:                                           ; preds = %entry
  tail call void @RSA_clear_flags(%struct.rsa_st* noundef nonnull %call1, i32 noundef 61440) #5
  tail call void @RSA_set_flags(%struct.rsa_st* noundef nonnull %call1, i32 noundef %rsa_type) #5
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %1, align 8, !tbaa !46
  %call3 = call i32 @ossl_rsa_pss_params_30_fromdata(%struct.rsa_pss_params_30_st* noundef nonnull %rsa_pss_params, i32* noundef nonnull %pss_defaults_set, %struct.ossl_param_st* noundef %params, %struct.ossl_lib_ctx_st* noundef %5) #5
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then40, label %if.end5

if.end5:                                          ; preds = %if.end
  switch i32 %rsa_type, label %if.then40 [
    i32 0, label %sw.bb
    i32 4096, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end5
  %call6 = call i32 @ossl_rsa_pss_params_30_is_unrestricted(%struct.rsa_pss_params_30_st* noundef nonnull %rsa_pss_params) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then40, label %sw.epilog

sw.bb10:                                          ; preds = %if.end5
  %call11 = call i32 @ossl_rsa_pss_params_30_is_unrestricted(%struct.rsa_pss_params_30_st* noundef nonnull %rsa_pss_params) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %sw.epilog

if.then13:                                        ; preds = %sw.bb10
  %call14 = call i32 @ossl_rsa_pss_params_30_hashalg(%struct.rsa_pss_params_30_st* noundef nonnull %rsa_pss_params) #5
  %call15 = call i32 @ossl_rsa_pss_params_30_maskgenhashalg(%struct.rsa_pss_params_30_st* noundef nonnull %rsa_pss_params) #5
  %call16 = call i32 @ossl_rsa_pss_params_30_saltlen(%struct.rsa_pss_params_30_st* noundef nonnull %rsa_pss_params) #5
  %call17 = call i8* @OBJ_nid2sn(i32 noundef %call14) #5
  %call18 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call17) #5
  %call19 = call i8* @OBJ_nid2sn(i32 noundef %call15) #5
  %call20 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call19) #5
  %call21 = call %struct.rsa_pss_params_st* @ossl_rsa_pss_params_create(%struct.evp_md_st* noundef %call18, %struct.evp_md_st* noundef %call20, i32 noundef %call16) #6
  %pss = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 14
  store %struct.rsa_pss_params_st* %call21, %struct.rsa_pss_params_st** %pss, align 8, !tbaa !27
  %cmp22 = icmp eq %struct.rsa_pss_params_st* %call21, null
  br i1 %cmp22, label %if.then40, label %sw.epilog

sw.epilog:                                        ; preds = %if.then13, %sw.bb10, %sw.bb
  %call30 = call i32 @ossl_rsa_fromdata(%struct.rsa_st* noundef nonnull %call1, %struct.ossl_param_st* noundef %params) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then40, label %if.end33

if.end33:                                         ; preds = %sw.epilog
  switch i32 %rsa_type, label %if.then40 [
    i32 0, label %err
    i32 4096, label %sw.bb36
  ]

sw.bb36:                                          ; preds = %if.end33
  br label %err

err:                                              ; preds = %if.end33, %sw.bb36
  %.sink = phi i32 [ 912, %sw.bb36 ], [ 6, %if.end33 ]
  %6 = bitcast %struct.rsa_st* %call1 to i8*
  %call35 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call, i32 noundef %.sink, i8* noundef nonnull %6) #5
  %tobool39.not = icmp eq i32 %call35, 0
  br i1 %tobool39.not, label %if.then40, label %cleanup42

if.then40:                                        ; preds = %if.end, %sw.bb, %if.then13, %sw.epilog, %if.end33, %if.end5, %err
  call void @RSA_free(%struct.rsa_st* noundef nonnull %call1) #5
  br label %cleanup42

cleanup42:                                        ; preds = %err, %if.then40, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then40 ], [ %call35, %err ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %3) #7
  ret i32 %retval.0
}

declare %struct.rsa_st* @ossl_rsa_new_with_ctx(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @ossl_rsa_pss_params_30_fromdata(%struct.rsa_pss_params_30_st* noundef, i32* noundef, %struct.ossl_param_st* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_is_unrestricted(%struct.rsa_pss_params_30_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_hashalg(%struct.rsa_pss_params_30_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_maskgenhashalg(%struct.rsa_pss_params_30_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_saltlen(%struct.rsa_pss_params_30_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_fromdata(%struct.rsa_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare %struct.rsa_st* @ossl_rsa_dup(%struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 16}
!5 = !{!"rsa_pss_params_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !6, i64 0}
!13 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!14 = !{!15, !6, i64 8}
!15 = !{!"evp_pkey_st", !10, i64 0, !10, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !6, i64 56, !6, i64 64, !10, i64 72, !10, i64 76, !16, i64 80, !6, i64 96, !6, i64 104, !17, i64 112, !6, i64 120, !17, i64 128, !18, i64 136}
!16 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!17 = !{!"long", !7, i64 0}
!18 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8}
!19 = !{!20, !10, i64 0}
!20 = !{!"evp_pkey_asn1_method_st", !10, i64 0, !10, i64 4, !17, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312}
!21 = !{!7, !7, i64 0}
!22 = !{!23, !6, i64 40}
!23 = !{!"rsa_st", !10, i64 0, !6, i64 8, !10, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !24, i64 104, !6, i64 128, !6, i64 136, !16, i64 144, !7, i64 160, !10, i64 164, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !10, i64 216}
!24 = !{!"rsa_pss_params_30_st", !10, i64 0, !25, i64 4, !10, i64 12, !10, i64 16}
!25 = !{!"", !10, i64 0, !10, i64 4}
!26 = !{!23, !6, i64 48}
!27 = !{!23, !6, i64 128}
!28 = !{!23, !10, i64 216}
!29 = !{!15, !10, i64 0}
!30 = !{!23, !6, i64 136}
!31 = !{!23, !6, i64 56}
!32 = !{!23, !6, i64 64}
!33 = !{!23, !6, i64 72}
!34 = !{!23, !6, i64 80}
!35 = !{!23, !6, i64 88}
!36 = !{!23, !6, i64 96}
!37 = !{!38, !6, i64 8}
!38 = !{!"rsa_prime_info_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!39 = !{!38, !6, i64 16}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!38, !6, i64 0}
!43 = !{!5, !6, i64 0}
!44 = !{!5, !6, i64 8}
!45 = !{!5, !6, i64 24}
!46 = !{!47, !6, i64 8}
!47 = !{!"evp_pkey_ctx_st", !10, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !48, i64 56, !6, i64 88, !6, i64 96, !6, i64 104, !10, i64 112, !10, i64 116, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !10, i64 160, !6, i64 168}
!48 = !{!"", !6, i64 0, !6, i64 8, !17, i64 16, !10, i64 24}
