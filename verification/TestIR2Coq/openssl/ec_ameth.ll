; ModuleID = 'crypto/ec/ec_ameth.c'
source_filename = "crypto/ec/ec_ameth.c"
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
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.bignum_ctx = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon.0, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.bn_mont_ctx_st = type opaque
%union.anon.0 = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.1, %struct.anon.7, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%union.anon.1 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.7 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }

@.str = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"OpenSSL EC algorithm\00", align 1
@ossl_eckey_asn1_meth = local_unnamed_addr constant { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* } { i32 408, i32 408, i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* @eckey_pub_decode, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* @eckey_pub_encode, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @eckey_pub_cmp, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @eckey_pub_print, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* null, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* @eckey_priv_encode, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @eckey_priv_print, i32 (%struct.evp_pkey_st*)* @int_ec_size, i32 (%struct.evp_pkey_st*)* @ec_bits, i32 (%struct.evp_pkey_st*)* @ec_security_bits, i32 (%struct.evp_pkey_st*, i8**, i32)* @eckey_param_decode, i32 (%struct.evp_pkey_st*, i8**)* @eckey_param_encode, i32 (%struct.evp_pkey_st*)* @ec_missing_parameters, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ec_copy_parameters, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ec_cmp_parameters, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @eckey_param_print, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* null, void (%struct.evp_pkey_st*)* @int_ec_free, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* @ec_pkey_ctrl, i32 (%struct.evp_pkey_st*, i8**, i32)* @old_ec_priv_decode, i32 (%struct.evp_pkey_st*, i8**)* @old_ec_priv_encode, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.evp_pkey_st*)* @ec_pkey_check, i32 (%struct.evp_pkey_st*)* @ec_pkey_public_check, i32 (%struct.evp_pkey_st*)* @ec_pkey_param_check, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i64 (%struct.evp_pkey_st*)* @ec_pkey_dirty_cnt, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* @ec_pkey_export_to, i32 (%struct.ossl_param_st*, i8*)* @ec_pkey_import_from, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @ec_pkey_copy, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* @eckey_priv_decode_ex }, align 8
@ossl_sm2_asn1_meth = local_unnamed_addr constant { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* } { i32 1172, i32 408, i64 1, i8* null, i8* null, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* null, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* null, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* null, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* null, void (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* null, i32 (%struct.evp_pkey_st*, i8**, i32)* null, i32 (%struct.evp_pkey_st*, i8**)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i32 (%struct.evp_pkey_st*, i8*, i64*)* null, i64 (%struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* null, i32 (%struct.ossl_param_st*, i8*)* null, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* null, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* null }, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"crypto/ec/ec_ameth.c\00", align 1
@__func__.eckey_pub_decode = private unnamed_addr constant [17 x i8] c"eckey_pub_decode\00", align 1
@__func__.eckey_pub_encode = private unnamed_addr constant [17 x i8] c"eckey_pub_encode\00", align 1
@__func__.eckey_param2type = private unnamed_addr constant [17 x i8] c"eckey_param2type\00", align 1
@__func__.eckey_priv_encode = private unnamed_addr constant [18 x i8] c"eckey_priv_encode\00", align 1
@__func__.ec_pkey_check = private unnamed_addr constant [14 x i8] c"ec_pkey_check\00", align 1
@__func__.ec_pkey_param_check = private unnamed_addr constant [20 x i8] c"ec_pkey_param_check\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"use-cofactor-flag\00", align 1
@__func__.ec_pkey_import_from = private unnamed_addr constant [20 x i8] c"ec_pkey_import_from\00", align 1
@__func__.do_EC_KEY_print = private unnamed_addr constant [16 x i8] c"do_EC_KEY_print\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Private-Key\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Public-Key\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ECDSA-Parameters\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%s: (%d bit)\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%*spriv:\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%*spub:\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define internal i32 @eckey_pub_decode(%struct.evp_pkey_st* noundef %pkey, %struct.X509_pubkey_st* noundef %pubkey) #0 {
entry:
  %p = alloca i8*, align 8
  %pklen = alloca i32, align 4
  %eckey = alloca %struct.ec_key_st*, align 8
  %palg = alloca %struct.X509_algor_st*, align 8
  %libctx = alloca %struct.ossl_lib_ctx_st*, align 8
  %propq = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %p, align 8, !tbaa !4
  %1 = bitcast i32* %pklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = bitcast %struct.ec_key_st** %eckey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %3 = bitcast %struct.X509_algor_st** %palg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %4 = bitcast %struct.ossl_lib_ctx_st** %libctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  store %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %5 = bitcast i8** %propq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  store i8* null, i8** %propq, align 8, !tbaa !4
  %call = call i32 @ossl_x509_PUBKEY_get0_libctx(%struct.ossl_lib_ctx_st** noundef nonnull %libctx, i8** noundef nonnull %propq, %struct.X509_pubkey_st* noundef %pubkey) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef null, i8** noundef nonnull %p, i32* noundef nonnull %pklen, %struct.X509_algor_st** noundef nonnull %palg, %struct.X509_pubkey_st* noundef %pubkey) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %palg, align 8, !tbaa !4
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %8 = load i8*, i8** %propq, align 8, !tbaa !4
  %call3 = call %struct.ec_key_st* @ossl_ec_key_param_from_x509_algor(%struct.X509_algor_st* noundef %6, %struct.ossl_lib_ctx_st* noundef %7, i8* noundef %8) #6
  store %struct.ec_key_st* %call3, %struct.ec_key_st** %eckey, align 8, !tbaa !4
  %tobool4.not = icmp eq %struct.ec_key_st* %call3, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %9 = load i32, i32* %pklen, align 4, !tbaa !8
  %conv = sext i32 %9 to i64
  %call7 = call %struct.ec_key_st* @o2i_ECPublicKey(%struct.ec_key_st** noundef nonnull %eckey, i8** noundef nonnull %p, i64 noundef %conv) #6
  %tobool8.not = icmp eq %struct.ec_key_st* %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.eckey_pub_decode, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 142, i8* noundef null) #6
  %10 = load %struct.ec_key_st*, %struct.ec_key_st** %eckey, align 8, !tbaa !4
  call void @EC_KEY_free(%struct.ec_key_st* noundef %10) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %11 = bitcast %struct.ec_key_st** %eckey to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !4
  %call11 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 408, i8* noundef %12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.then9, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %if.then9 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @eckey_pub_encode(%struct.X509_pubkey_st* noundef %pk, %struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pval = alloca i8*, align 8
  %ptype = alloca i32, align 4
  %p = alloca i8*, align 8
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %1 = bitcast i8** %pval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* null, i8** %pval, align 8, !tbaa !4
  %2 = bitcast i32* %ptype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %call = call fastcc i32 @eckey_param2type(i32* noundef nonnull %ptype, i8** noundef nonnull %pval, %struct.ec_key_st* noundef %0) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.eckey_pub_encode, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2o_ECPublicKey(%struct.ec_key_st* noundef %0, i8** noundef null) #6
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %errthread-pre-split, label %if.end4

if.end4:                                          ; preds = %if.end
  %conv40 = zext i32 %call2 to i64
  %call5 = tail call i8* @CRYPTO_malloc(i64 noundef %conv40, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 84) #6
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %errthread-pre-split, label %if.end9

if.end9:                                          ; preds = %if.end4
  store i8* %call5, i8** %p, align 8, !tbaa !4
  %call10 = call i32 @i2o_ECPublicKey(%struct.ec_key_st* noundef %0, i8** noundef nonnull %p) #6
  %cmp11 = icmp slt i32 %call10, 1
  br i1 %cmp11, label %errthread-pre-split, label %if.end14

if.end14:                                         ; preds = %if.end9
  %call15 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 408) #6
  %4 = load i32, i32* %ptype, align 4, !tbaa !8
  %5 = load i8*, i8** %pval, align 8, !tbaa !4
  %call16 = call i32 @X509_PUBKEY_set0_param(%struct.X509_pubkey_st* noundef %pk, %struct.asn1_object_st* noundef %call15, i32 noundef %4, i8* noundef %5, i8* noundef nonnull %call5, i32 noundef %call10) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %cleanup

errthread-pre-split:                              ; preds = %if.end, %if.end4, %if.end9
  %penc.0.ph = phi i8* [ %call5, %if.end9 ], [ null, %if.end4 ], [ null, %if.end ]
  %.pr = load i32, i32* %ptype, align 4, !tbaa !8
  br label %err

err:                                              ; preds = %errthread-pre-split, %if.end14
  %6 = phi i32 [ %.pr, %errthread-pre-split ], [ %4, %if.end14 ]
  %penc.0 = phi i8* [ %penc.0.ph, %errthread-pre-split ], [ %call5, %if.end14 ]
  %cmp20 = icmp eq i32 %6, 6
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %err
  %7 = bitcast i8** %pval to %struct.asn1_object_st**
  %8 = load %struct.asn1_object_st*, %struct.asn1_object_st** %7, align 8, !tbaa !4
  call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %8) #6
  br label %if.end23

if.else:                                          ; preds = %err
  %9 = bitcast i8** %pval to %struct.asn1_string_st**
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %9, align 8, !tbaa !4
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %10) #6
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then22
  call void @CRYPTO_free(i8* noundef %penc.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 99) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end23, %if.then
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 0, %if.then ], [ 1, %if.end14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @eckey_pub_cmp(%struct.evp_pkey_st* nocapture noundef readonly %a, %struct.evp_pkey_st* nocapture noundef readonly %b) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %0) #6
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 5
  %ec2 = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %1 = load %struct.ec_key_st*, %struct.ec_key_st** %ec2, align 8, !tbaa !10
  %call3 = tail call %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef %1) #6
  %2 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %call6 = tail call %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef %2) #6
  %cmp = icmp eq %struct.ec_group_st* %call, null
  %cmp7 = icmp eq %struct.ec_point_st* %call3, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  %cmp9 = icmp eq %struct.ec_point_st* %call6, null
  %or.cond20 = select i1 %or.cond, i1 true, i1 %cmp9
  br i1 %or.cond20, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call10 = tail call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef nonnull %call, %struct.ec_point_st* noundef nonnull %call3, %struct.ec_point_st* noundef nonnull %call6, %struct.bignum_ctx* noundef null) #6
  %switch.selectcmp = icmp eq i32 %call10, 1
  %switch.select = select i1 %switch.selectcmp, i32 0, i32 -2
  %switch.selectcmp30 = icmp eq i32 %call10, 0
  %switch.select31 = select i1 %switch.selectcmp30, i32 1, i32 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ %switch.select31, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @eckey_pub_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %call = tail call fastcc i32 @do_EC_KEY_print(%struct.bio_st* noundef %bp, %struct.ec_key_st* noundef %0, i32 noundef %indent, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @eckey_priv_encode(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %ec_key = alloca %struct.ec_key_st, align 8
  %p = alloca i8*, align 8
  %ptype = alloca i32, align 4
  %pval = alloca i8*, align 8
  %0 = bitcast %struct.ec_key_st* %ec_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #5
  %1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5, i32 0
  %2 = load i8*, i8** %1, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %0, i8* noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false), !tbaa.struct !11
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %4 = bitcast i32* %ptype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5
  %5 = bitcast i8** %pval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  %call = call fastcc i32 @eckey_param2type(i32* noundef nonnull %ptype, i8** noundef nonnull %pval, %struct.ec_key_st* noundef nonnull %ec_key) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.eckey_priv_encode, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 142, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @EC_KEY_get_enc_flags(%struct.ec_key_st* noundef nonnull %ec_key) #6
  %or = or i32 %call2, 1
  call void @EC_KEY_set_enc_flags(%struct.ec_key_st* noundef nonnull %ec_key, i32 noundef %or) #6
  %call3 = call i32 @i2d_ECPrivateKey(%struct.ec_key_st* noundef nonnull %ec_key, i8** noundef null) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.eckey_priv_encode, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %conv = sext i32 %call3 to i64
  %call7 = call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 192) #6
  %cmp = icmp eq i8* %call7, null
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.eckey_priv_encode, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  store i8* %call7, i8** %p, align 8, !tbaa !4
  %call11 = call i32 @i2d_ECPrivateKey(%struct.ec_key_st* noundef nonnull %ec_key, i8** noundef nonnull %p) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 199) #6
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.eckey_priv_encode, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 408) #6
  %6 = load i32, i32* %ptype, align 4, !tbaa !8
  %7 = load i8*, i8** %pval, align 8, !tbaa !4
  %call16 = call i32 @PKCS8_pkey_set0(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.asn1_object_st* noundef %call15, i32 noundef 0, i32 noundef %6, i8* noundef %7, i8* noundef nonnull %call7, i32 noundef %call3) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %cleanup

if.then18:                                        ; preds = %if.end14
  call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 206) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then18, %if.then13, %if.then9, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then18 ], [ 0, %if.then13 ], [ 0, %if.then5 ], [ 0, %if.then ], [ 1, %if.end14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @eckey_priv_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %call = tail call fastcc i32 @do_EC_KEY_print(%struct.bio_st* noundef %bp, %struct.ec_key_st* noundef %0, i32 noundef %indent, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @int_ec_size(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %call = tail call i32 @ECDSA_size(%struct.ec_key_st* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_bits(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %0) #6
  %call2 = tail call i32 @EC_GROUP_order_bits(%struct.ec_group_st* noundef %call) #6
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_security_bits(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %call = tail call i32 @ec_bits(%struct.evp_pkey_st* noundef %pkey) #7
  %cmp = icmp sgt i32 %call, 511
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %call, 383
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp sgt i32 %call, 255
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp sgt i32 %call, 223
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp sgt i32 %call, 159
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end9
  %div = sdiv i32 %call, 2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6, %if.end3, %if.end, %entry, %if.end12
  %retval.0 = phi i32 [ %div, %if.end12 ], [ 256, %entry ], [ 192, %if.end ], [ 128, %if.end3 ], [ 112, %if.end6 ], [ 80, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @eckey_param_decode(%struct.evp_pkey_st* noundef %pkey, i8** noundef %pder, i32 noundef %derlen) #0 {
entry:
  %conv = sext i32 %derlen to i64
  %call = tail call %struct.ec_key_st* @d2i_ECParameters(%struct.ec_key_st** noundef null, i8** noundef %pder, i64 noundef %conv) #6
  %cmp = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.ec_key_st* %call to i8*
  %call2 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 408, i8* noundef nonnull %0) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @eckey_param_encode(%struct.evp_pkey_st* nocapture noundef readonly %pkey, i8** noundef %pder) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %call = tail call i32 @i2d_ECParameters(%struct.ec_key_st* noundef %0, i8** noundef %pder) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_missing_parameters(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %cmp = icmp eq %struct.ec_key_st* %0, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef nonnull %0) #6
  %cmp4 = icmp eq %struct.ec_group_st* %call, null
  %spec.select = zext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_copy_parameters(%struct.evp_pkey_st* nocapture noundef %to, %struct.evp_pkey_st* nocapture noundef readonly %from) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %0) #6
  %call1 = tail call %struct.ec_group_st* @EC_GROUP_dup(%struct.ec_group_st* noundef %call) #6
  %cmp = icmp eq %struct.ec_group_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pkey2 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %to, i64 0, i32 5
  %ec3 = bitcast %union.legacy_pkey_st* %pkey2 to %struct.ec_key_st**
  %1 = load %struct.ec_key_st*, %struct.ec_key_st** %ec3, align 8, !tbaa !10
  %cmp4 = icmp eq %struct.ec_key_st* %1, null
  br i1 %cmp4, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.end
  %call6 = tail call %struct.ec_key_st* @EC_KEY_new() #6
  store %struct.ec_key_st* %call6, %struct.ec_key_st** %ec3, align 8, !tbaa !10
  %cmp11 = icmp eq %struct.ec_key_st* %call6, null
  br i1 %cmp11, label %err, label %if.end14

if.end14:                                         ; preds = %if.then5, %if.end
  %2 = phi %struct.ec_key_st* [ %call6, %if.then5 ], [ %1, %if.end ]
  %call17 = tail call i32 @EC_KEY_set_group(%struct.ec_key_st* noundef nonnull %2, %struct.ec_group_st* noundef nonnull %call1) #6
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %err, label %cleanup.sink.split

err:                                              ; preds = %if.end14, %if.then5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end14, %err
  %retval.0.ph = phi i32 [ 0, %err ], [ 1, %if.end14 ]
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_cmp_parameters(%struct.evp_pkey_st* nocapture noundef readonly %a, %struct.evp_pkey_st* nocapture noundef readonly %b) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %0) #6
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 5
  %ec2 = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %1 = load %struct.ec_key_st*, %struct.ec_key_st** %ec2, align 8, !tbaa !10
  %call3 = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %1) #6
  %cmp = icmp eq %struct.ec_group_st* %call, null
  %cmp4 = icmp eq %struct.ec_group_st* %call3, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @EC_GROUP_cmp(%struct.ec_group_st* noundef nonnull %call, %struct.ec_group_st* noundef nonnull %call3, %struct.bignum_ctx* noundef null) #6
  %tobool.not = icmp eq i32 %call5, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @eckey_param_print(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* nocapture noundef readonly %pkey, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %call = tail call fastcc i32 @do_EC_KEY_print(%struct.bio_st* noundef %bp, %struct.ec_key_st* noundef %0, i32 noundef %indent, i32 noundef 2) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @int_ec_free(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef %0) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_pkey_ctrl(%struct.evp_pkey_st* noundef %pkey, i32 noundef %op, i64 noundef %arg1, i8* noundef %arg2) #0 {
entry:
  switch i32 %op, label %return [
    i32 3, label %sw.bb
    i32 9, label %sw.bb1
    i32 10, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %pkey) #6
  %cmp = icmp eq i32 %call, 1172
  %0 = bitcast i8* %arg2 to i32*
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 1143, i32* %0, align 4, !tbaa !8
  br label %return

if.end:                                           ; preds = %sw.bb
  store i32 672, i32* %0, align 4, !tbaa !8
  br label %return

sw.bb1:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !14
  %cmp2.not = icmp eq i32 %1, 0
  br i1 %cmp2.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %sw.bb1
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !18
  %cmp3 = icmp eq %struct.evp_keymgmt_st* %2, null
  br i1 %cmp3, label %if.end6, label %return

if.end6:                                          ; preds = %land.rhs
  %call7 = tail call %struct.ec_key_st* @evp_pkey_get0_EC_KEY_int(%struct.evp_pkey_st* noundef nonnull %pkey) #6
  %call8 = tail call i32 @EC_KEY_oct2key(%struct.ec_key_st* noundef %call7, i8* noundef %arg2, i64 noundef %arg1, %struct.bignum_ctx* noundef null) #6
  br label %return

sw.bb9:                                           ; preds = %entry
  %call10 = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef %pkey) #6
  %3 = bitcast i8* %arg2 to i8**
  %call11 = tail call i64 @EC_KEY_key2buf(%struct.ec_key_st* noundef %call10, i32 noundef 4, i8** noundef %3, %struct.bignum_ctx* noundef null) #6
  %conv = trunc i64 %call11 to i32
  br label %return

return:                                           ; preds = %sw.bb1, %entry, %land.rhs, %sw.bb9, %if.end6, %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %sw.bb9 ], [ %call8, %if.end6 ], [ 2, %if.then ], [ 1, %if.end ], [ 0, %land.rhs ], [ -2, %entry ], [ 0, %sw.bb1 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @old_ec_priv_decode(%struct.evp_pkey_st* noundef %pkey, i8** noundef %pder, i32 noundef %derlen) #0 {
entry:
  %conv = sext i32 %derlen to i64
  %call = tail call %struct.ec_key_st* @d2i_ECPrivateKey(%struct.ec_key_st** noundef null, i8** noundef %pder, i64 noundef %conv) #6
  %cmp = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.ec_key_st* %call to i8*
  %call2 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 408, i8* noundef nonnull %0) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @old_ec_priv_encode(%struct.evp_pkey_st* nocapture noundef readonly %pkey, i8** noundef %pder) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %call = tail call i32 @i2d_ECPrivateKey(%struct.ec_key_st* noundef %0, i8** noundef %pder) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_pkey_check(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %priv_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %0, i64 0, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !19
  %cmp = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 437, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ec_pkey_check, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 125, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @EC_KEY_check_key(%struct.ec_key_st* noundef nonnull %0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_pkey_public_check(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %call = tail call i32 @EC_KEY_check_key(%struct.ec_key_st* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_pkey_param_check(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %0, i64 0, i32 3
  %1 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !21
  %cmp = icmp eq %struct.ec_group_st* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 466, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ec_pkey_param_check, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 124, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @EC_GROUP_check(%struct.ec_group_st* noundef nonnull %1, %struct.bignum_ctx* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i64 @ec_pkey_dirty_cnt(%struct.evp_pkey_st* nocapture noundef readonly %pkey) #1 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey1 to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %0, i64 0, i32 14
  %1 = load i64, i64* %dirty_cnt, align 8, !tbaa !22
  ret i64 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_pkey_export_to(%struct.evp_pkey_st* noundef readonly %from, i8* noundef %to_keydata, i32 (i8*, i32, %struct.ossl_param_st*)* nocapture noundef readonly %importer, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #0 {
entry:
  %pub_key_buf = alloca i8*, align 8
  %gen_buf = alloca i8*, align 8
  %0 = bitcast i8** %pub_key_buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %pub_key_buf, align 8, !tbaa !4
  %1 = bitcast i8** %gen_buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* null, i8** %gen_buf, align 8, !tbaa !4
  %cmp = icmp eq %struct.evp_pkey_st* %from, null
  br i1 %cmp, label %cleanup51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey to %struct.ec_key_st**
  %2 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %cmp1 = icmp eq %struct.ec_key_st* %2, null
  br i1 %cmp1, label %cleanup51, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef nonnull %2) #6
  %cmp3 = icmp eq %struct.ec_group_st* %call, null
  br i1 %cmp3, label %cleanup51, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %call4 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #6
  %cmp5 = icmp eq %struct.ossl_param_bld_st* %call4, null
  br i1 %cmp5, label %cleanup51, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx) #6
  %cmp9 = icmp eq %struct.bignum_ctx* %call8, null
  br i1 %cmp9, label %err, label %if.end11

if.end11:                                         ; preds = %if.end7
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call8) #6
  %call12 = call i32 @ossl_ec_group_todata(%struct.ec_group_st* noundef nonnull %call, %struct.ossl_param_bld_st* noundef nonnull %call4, %struct.ossl_param_st* noundef null, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.bignum_ctx* noundef nonnull %call8, i8** noundef nonnull %gen_buf) #6
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end11
  %call15 = call %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef nonnull %2) #6
  %call16 = call %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef nonnull %2) #6
  %cmp17.not = icmp eq %struct.ec_point_st* %call16, null
  br i1 %cmp17.not, label %if.end27, label %if.then18

if.then18:                                        ; preds = %if.end14
  %call19 = call i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef nonnull %call, %struct.ec_point_st* noundef nonnull %call16, i32 noundef 2, i8** noundef nonnull %pub_key_buf, %struct.bignum_ctx* noundef nonnull %call8) #6
  %cmp20 = icmp eq i64 %call19, 0
  br i1 %cmp20, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.then18
  %3 = load i8*, i8** %pub_key_buf, align 8, !tbaa !4
  %call22 = call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef nonnull %call4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %3, i64 noundef %call19) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false21, %if.end14
  %selection.0 = phi i32 [ 4, %if.end14 ], [ 6, %lor.lhs.false21 ]
  %cmp28.not = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp28.not, label %if.end48, label %if.then29

if.then29:                                        ; preds = %if.end27
  %call30 = call i32 @EC_GROUP_order_bits(%struct.ec_group_st* noundef nonnull %call) #6
  %cmp31 = icmp slt i32 %call30, 1
  br i1 %cmp31, label %err, label %if.end33

if.end33:                                         ; preds = %if.then29
  %add = add nuw nsw i32 %call30, 7
  %div106 = lshr i32 %add, 3
  %conv107 = zext i32 %div106 to i64
  %call34 = call i32 @OSSL_PARAM_BLD_push_BN_pad(%struct.ossl_param_bld_st* noundef nonnull %call4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call15, i64 noundef %conv107) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end33
  %call39 = call i32 @EC_KEY_get_flags(%struct.ec_key_st* noundef nonnull %2) #6
  %and = lshr i32 %call39, 12
  %and.lobit = and i32 %and, 1
  %call41 = call i32 @OSSL_PARAM_BLD_push_int(%struct.ossl_param_bld_st* noundef nonnull %call4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %and.lobit) #6
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %cleanup

cleanup:                                          ; preds = %if.end37
  %or45 = or i32 %selection.0, 129
  br label %if.end48

if.end48:                                         ; preds = %cleanup, %if.end27
  %selection.2 = phi i32 [ %or45, %cleanup ], [ %selection.0, %if.end27 ]
  %call49 = call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef nonnull %call4) #6
  %call50 = call i32 %importer(i8* noundef %to_keydata, i32 noundef %selection.2, %struct.ossl_param_st* noundef %call49) #6
  br label %err

err:                                              ; preds = %if.end37, %if.end33, %if.then29, %if.then18, %lor.lhs.false21, %if.end11, %if.end7, %if.end48
  %params.0 = phi %struct.ossl_param_st* [ null, %if.end7 ], [ null, %if.then18 ], [ %call49, %if.end48 ], [ null, %lor.lhs.false21 ], [ null, %if.end11 ], [ null, %if.then29 ], [ null, %if.end33 ], [ null, %if.end37 ]
  %rv.0 = phi i32 [ 0, %if.end7 ], [ 0, %if.then18 ], [ %call50, %if.end48 ], [ 0, %lor.lhs.false21 ], [ 0, %if.end11 ], [ 0, %if.then29 ], [ 0, %if.end33 ], [ 0, %if.end37 ]
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef nonnull %call4) #6
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.0) #6
  %4 = load i8*, i8** %pub_key_buf, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 608) #6
  %5 = load i8*, i8** %gen_buf, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 609) #6
  call void @BN_CTX_end(%struct.bignum_ctx* noundef %call8) #6
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call8) #6
  br label %cleanup51

cleanup51:                                        ; preds = %if.end, %entry, %lor.lhs.false, %lor.lhs.false2, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_pkey_import_from(%struct.ossl_param_st* noundef %params, i8* noundef %vpctx) #0 {
entry:
  %0 = bitcast i8* %vpctx to %struct.evp_pkey_ctx_st*
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef %0) #6
  %libctx = getelementptr inbounds i8, i8* %vpctx, i64 8
  %1 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %1, align 8, !tbaa !23
  %propquery = getelementptr inbounds i8, i8* %vpctx, i64 16
  %3 = bitcast i8* %propquery to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !26
  %call1 = tail call %struct.ec_key_st* @EC_KEY_new_ex(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef %4) #6
  %cmp = icmp eq %struct.ec_key_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 622, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ec_pkey_import_from, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ossl_ec_group_fromdata(%struct.ec_key_st* noundef nonnull %call1, %struct.ossl_param_st* noundef %params) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @ossl_ec_key_otherparams_fromdata(%struct.ec_key_st* noundef nonnull %call1, %struct.ossl_param_st* noundef %params) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then11, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @ossl_ec_key_fromdata(%struct.ec_key_st* noundef nonnull %call1, %struct.ossl_param_st* noundef %params, i32 noundef 1) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then11, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %5 = bitcast %struct.ec_key_st* %call1 to i8*
  %call9 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call, i32 noundef 408, i8* noundef nonnull %5) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %cleanup

if.then11:                                        ; preds = %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false, %if.end
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false8, %if.then11, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then11 ], [ 1, %lor.lhs.false8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_pkey_copy(%struct.evp_pkey_st* noundef %to, %struct.evp_pkey_st* nocapture noundef readonly %from) #0 {
entry:
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey to %struct.ec_key_st**
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !10
  %cmp.not = icmp eq %struct.ec_key_st* %0, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.ec_key_st* @EC_KEY_dup(%struct.ec_key_st* noundef nonnull %0) #6
  %cmp1 = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end4

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !14
  %call3 = tail call i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef %to, i32 noundef %1) #6
  br label %cleanup

if.end4:                                          ; preds = %if.then
  %2 = bitcast %struct.ec_key_st* %call to i8*
  %call5 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %to, i32 noundef 408, i8* noundef nonnull %2) #6
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end4
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then6, %if.then, %if.else
  %retval.0 = phi i32 [ %call3, %if.else ], [ 0, %if.then ], [ 0, %if.then6 ], [ %call5, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @eckey_priv_decode_ex(%struct.evp_pkey_st* noundef %pkey, %struct.pkcs8_priv_key_info_st* noundef %p8, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #0 {
entry:
  %call = tail call %struct.ec_key_st* @ossl_ec_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  %cmp.not = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.ec_key_st* %call to i8*
  %call1 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 408, i8* noundef nonnull %0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_KEY_print(%struct.bio_st* noundef %bp, %struct.ec_key_st* noundef %x, i32 noundef %off) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef %x) #6
  %cmp.not = icmp eq %struct.bignum_st* %call, null
  %cond = zext i1 %cmp.not to i32
  %call1 = tail call fastcc i32 @do_EC_KEY_print(%struct.bio_st* noundef %bp, %struct.ec_key_st* noundef %x, i32 noundef %off, i32 noundef %cond) #7
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_EC_KEY_print(%struct.bio_st* noundef %bp, %struct.ec_key_st* noundef %x, i32 noundef %off, i32 noundef %ktype) unnamed_addr #0 {
entry:
  %priv = alloca i8*, align 8
  %pub = alloca i8*, align 8
  %0 = bitcast i8** %priv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %priv, align 8, !tbaa !4
  %1 = bitcast i8** %pub to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* null, i8** %pub, align 8, !tbaa !4
  %cmp = icmp eq %struct.ec_key_st* %x, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef nonnull %x) #6
  %cmp1 = icmp eq %struct.ec_group_st* %call, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.do_EC_KEY_print, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cmp2.not = icmp eq i32 %ktype, 2
  br i1 %cmp2.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef nonnull %x) #6
  %cmp4.not = icmp eq %struct.ec_point_st* %call3, null
  br i1 %cmp4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %call6 = tail call i32 @EC_KEY_get_conv_form(%struct.ec_key_st* noundef nonnull %x) #6
  %call7 = call i64 @EC_KEY_key2buf(%struct.ec_key_st* noundef nonnull %x, i32 noundef %call6, i8** noundef nonnull %pub, %struct.bignum_ctx* noundef null) #6
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %if.then65, label %if.end11

if.end11:                                         ; preds = %if.then5, %land.lhs.true
  %publen.0 = phi i64 [ %call7, %if.then5 ], [ 0, %land.lhs.true ]
  %cmp12 = icmp eq i32 %ktype, 0
  br i1 %cmp12, label %land.lhs.true13, label %if.end21

land.lhs.true13:                                  ; preds = %if.end11
  %call14 = call %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef nonnull %x) #6
  %cmp15.not = icmp eq %struct.bignum_st* %call14, null
  br i1 %cmp15.not, label %if.end21, label %if.then16

if.then16:                                        ; preds = %land.lhs.true13
  %call17 = call i64 @EC_KEY_priv2buf(%struct.ec_key_st* noundef nonnull %x, i8** noundef nonnull %priv) #6
  %cmp18 = icmp eq i64 %call17, 0
  br i1 %cmp18, label %if.then65, label %if.end21

if.end21:                                         ; preds = %if.end, %if.then16, %land.lhs.true13, %if.end11
  %cmp12109 = phi i1 [ true, %if.then16 ], [ true, %land.lhs.true13 ], [ false, %if.end11 ], [ false, %if.end ]
  %publen.0108 = phi i64 [ %publen.0, %if.then16 ], [ %publen.0, %land.lhs.true13 ], [ %publen.0, %if.end11 ], [ 0, %if.end ]
  %privlen.0 = phi i64 [ %call17, %if.then16 ], [ 0, %land.lhs.true13 ], [ 0, %if.end11 ], [ 0, %if.end ]
  %call29 = call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %off, i32 noundef 128) #6
  %tobool.not = icmp eq i32 %call29, 0
  br i1 %tobool.not, label %if.then65, label %if.end31

if.end31:                                         ; preds = %if.end21
  %cmp24 = icmp eq i32 %ktype, 1
  %. = select i1 %cmp24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0)
  %ecstr.0 = select i1 %cmp12109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %.
  %call32 = call i32 @EC_GROUP_order_bits(%struct.ec_group_st* noundef nonnull %call) #6
  %call33 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %ecstr.0, i32 noundef %call32) #6
  %cmp34 = icmp slt i32 %call33, 1
  br i1 %cmp34, label %if.then65, label %if.end36

if.end36:                                         ; preds = %if.end31
  %cmp37.not = icmp eq i64 %privlen.0, 0
  br i1 %cmp37.not, label %if.end47, label %if.then38

if.then38:                                        ; preds = %if.end36
  %call39 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 noundef %off, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #6
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %if.then65, label %if.end42

if.end42:                                         ; preds = %if.then38
  %2 = load i8*, i8** %priv, align 8, !tbaa !4
  %add = add nsw i32 %off, 4
  %call43 = call i32 @ASN1_buf_print(%struct.bio_st* noundef %bp, i8* noundef %2, i64 noundef %privlen.0, i32 noundef %add) #6
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then65, label %if.end47

if.end47:                                         ; preds = %if.end42, %if.end36
  %cmp48.not = icmp eq i64 %publen.0108, 0
  br i1 %cmp48.not, label %err, label %if.then49

if.then49:                                        ; preds = %if.end47
  %call50 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 noundef %off, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #6
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %if.then65, label %if.end53

if.end53:                                         ; preds = %if.then49
  %3 = load i8*, i8** %pub, align 8, !tbaa !4
  %add54 = add nsw i32 %off, 4
  %call55 = call i32 @ASN1_buf_print(%struct.bio_st* noundef %bp, i8* noundef %3, i64 noundef %publen.0108, i32 noundef %add54) #6
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then65, label %err

err:                                              ; preds = %if.end47, %if.end53
  %call60 = call i32 @ECPKParameters_print(%struct.bio_st* noundef %bp, %struct.ec_group_st* noundef nonnull %call, i32 noundef %off) #6
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end21, %if.end53, %if.then49, %if.end42, %if.then38, %if.end31, %if.then16, %if.then5, %err
  %privlen.1114 = phi i64 [ %privlen.0, %err ], [ %privlen.0, %if.end21 ], [ %privlen.0, %if.end53 ], [ %privlen.0, %if.then49 ], [ %privlen.0, %if.end42 ], [ %privlen.0, %if.then38 ], [ %privlen.0, %if.end31 ], [ 0, %if.then16 ], [ 0, %if.then5 ]
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.do_EC_KEY_print, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %err
  %ret.0115 = phi i32 [ 0, %if.then65 ], [ 1, %err ]
  %privlen.1113 = phi i64 [ %privlen.1114, %if.then65 ], [ %privlen.0, %err ]
  %4 = load i8*, i8** %priv, align 8, !tbaa !4
  call void @CRYPTO_clear_free(i8* noundef %4, i64 noundef %privlen.1113, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 349) #6
  %5 = load i8*, i8** %pub, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 350) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0115, %if.end66 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @ECParameters_print(%struct.bio_st* noundef %bp, %struct.ec_key_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_EC_KEY_print(%struct.bio_st* noundef %bp, %struct.ec_key_st* noundef %x, i32 noundef 4, i32 noundef 2) #7
  ret i32 %call
}

declare i32 @ossl_x509_PUBKEY_get0_libctx(%struct.ossl_lib_ctx_st** noundef, i8** noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #3

declare i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #3

declare %struct.ec_key_st* @ossl_ec_key_param_from_x509_algor(%struct.X509_algor_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.ec_key_st* @o2i_ECPublicKey(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @EC_KEY_free(%struct.ec_key_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @eckey_param2type(i32* nocapture noundef writeonly %pptype, i8** nocapture noundef writeonly %ppval, %struct.ec_key_st* noundef %ec_key) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %ec_key, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef nonnull %ec_key) #6
  %cmp1 = icmp eq %struct.ec_group_st* %call, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.eckey_param2type, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 124, i8* noundef null) #6
  br label %cleanup26

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef nonnull %call) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef nonnull %call) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %call6 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call3) #6
  %cmp7 = icmp eq %struct.asn1_object_st* %call6, null
  br i1 %cmp7, label %if.then11, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.then5
  %call9 = tail call i64 @OBJ_length(%struct.asn1_object_st* noundef nonnull %call6) #6
  %cmp10 = icmp eq i64 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false8, %if.then5
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %call6) #6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.eckey_param2type, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 167, i8* noundef null) #6
  br label %cleanup26

if.end12:                                         ; preds = %lor.lhs.false8
  %0 = bitcast i8** %ppval to %struct.asn1_object_st**
  store %struct.asn1_object_st* %call6, %struct.asn1_object_st** %0, align 8, !tbaa !4
  store i32 6, i32* %pptype, align 4, !tbaa !8
  br label %cleanup26

if.else:                                          ; preds = %land.lhs.true, %if.end
  %call13 = tail call %struct.asn1_string_st* @ASN1_STRING_new() #6
  %cmp14 = icmp eq %struct.asn1_string_st* %call13, null
  br i1 %cmp14, label %cleanup26, label %if.end16

if.end16:                                         ; preds = %if.else
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call13, i64 0, i32 2
  %call17 = tail call i32 @i2d_ECParameters(%struct.ec_key_st* noundef nonnull %ec_key, i8** noundef nonnull %data) #6
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call13, i64 0, i32 0
  store i32 %call17, i32* %length, align 8, !tbaa !27
  %cmp19 = icmp slt i32 %call17, 1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef nonnull %call13) #6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.eckey_param2type, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #6
  br label %cleanup26

if.end21:                                         ; preds = %if.end16
  %1 = bitcast i8** %ppval to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call13, %struct.asn1_string_st** %1, align 8, !tbaa !4
  store i32 16, i32* %pptype, align 4, !tbaa !8
  br label %cleanup26

cleanup26:                                        ; preds = %if.end12, %if.end21, %if.then20, %if.else, %if.then11, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %if.then11 ], [ 0, %if.else ], [ 0, %if.then20 ], [ 1, %if.end21 ], [ 1, %if.end12 ]
  ret i32 %retval.2
}

declare i32 @i2o_ECPublicKey(%struct.ec_key_st* noundef, i8** noundef) local_unnamed_addr #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @X509_PUBKEY_set0_param(%struct.X509_pubkey_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #3

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #3

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef) local_unnamed_addr #3

declare i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef) local_unnamed_addr #3

declare i64 @OBJ_length(%struct.asn1_object_st* noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @ASN1_STRING_new() local_unnamed_addr #3

declare i32 @i2d_ECParameters(%struct.ec_key_st* noundef, i8** noundef) local_unnamed_addr #3

declare %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i32 @EC_POINT_cmp(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @EC_KEY_get_enc_flags(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare void @EC_KEY_set_enc_flags(%struct.ec_key_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @i2d_ECPrivateKey(%struct.ec_key_st* noundef, i8** noundef) local_unnamed_addr #3

declare i32 @PKCS8_pkey_set0(%struct.pkcs8_priv_key_info_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ECDSA_size(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i32 @EC_GROUP_order_bits(%struct.ec_group_st* noundef) local_unnamed_addr #3

declare %struct.ec_key_st* @d2i_ECParameters(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare %struct.ec_group_st* @EC_GROUP_dup(%struct.ec_group_st* noundef) local_unnamed_addr #3

declare %struct.ec_key_st* @EC_KEY_new() local_unnamed_addr #3

declare i32 @EC_KEY_set_group(%struct.ec_key_st* noundef, %struct.ec_group_st* noundef) local_unnamed_addr #3

declare void @EC_GROUP_free(%struct.ec_group_st* noundef) local_unnamed_addr #3

declare i32 @EC_GROUP_cmp(%struct.ec_group_st* noundef, %struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @EC_KEY_oct2key(%struct.ec_key_st* noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare %struct.ec_key_st* @evp_pkey_get0_EC_KEY_int(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i64 @EC_KEY_key2buf(%struct.ec_key_st* noundef, i32 noundef, i8** noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare %struct.ec_key_st* @d2i_ECPrivateKey(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EC_KEY_check_key(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i32 @EC_GROUP_check(%struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #3

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #3

declare i32 @ossl_ec_group_todata(%struct.ec_group_st* noundef, %struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.bignum_ctx* noundef, i8** noundef) local_unnamed_addr #3

declare i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i32 noundef, i8** noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_BLD_push_BN_pad(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EC_KEY_get_flags(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_BLD_push_int(%struct.ossl_param_bld_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #3

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #3

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #3

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare %struct.ec_key_st* @EC_KEY_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @ossl_ec_group_fromdata(%struct.ec_key_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare i32 @ossl_ec_key_otherparams_fromdata(%struct.ec_key_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare i32 @ossl_ec_key_fromdata(%struct.ec_key_st* noundef, %struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.ec_key_st* @EC_KEY_dup(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.ec_key_st* @ossl_ec_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EC_KEY_get_conv_form(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i64 @EC_KEY_priv2buf(%struct.ec_key_st* noundef, i8** noundef) local_unnamed_addr #3

declare i32 @BIO_indent(%struct.bio_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @ASN1_buf_print(%struct.bio_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ECPKParameters_print(%struct.bio_st* noundef, %struct.ec_group_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
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
!10 = !{!6, !6, i64 0}
!11 = !{i64 0, i64 8, !4, i64 8, i64 8, !4, i64 16, i64 4, !8, i64 24, i64 8, !4, i64 32, i64 8, !4, i64 40, i64 8, !4, i64 48, i64 4, !8, i64 52, i64 4, !10, i64 56, i64 4, !10, i64 60, i64 4, !8, i64 64, i64 8, !4, i64 72, i64 8, !4, i64 80, i64 8, !4, i64 88, i64 8, !4, i64 96, i64 8, !4, i64 104, i64 8, !12}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!15, !9, i64 0}
!15 = !{!"evp_pkey_st", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !5, i64 56, !5, i64 64, !9, i64 72, !9, i64 76, !16, i64 80, !5, i64 96, !5, i64 104, !13, i64 112, !5, i64 120, !13, i64 128, !17, i64 136}
!16 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!17 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8}
!18 = !{!15, !5, i64 96}
!19 = !{!20, !5, i64 40}
!20 = !{!"ec_key_st", !5, i64 0, !5, i64 8, !9, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !9, i64 48, !6, i64 52, !6, i64 56, !9, i64 60, !16, i64 64, !5, i64 80, !5, i64 88, !5, i64 96, !13, i64 104}
!21 = !{!20, !5, i64 24}
!22 = !{!20, !13, i64 104}
!23 = !{!24, !5, i64 8}
!24 = !{!"evp_pkey_ctx_st", !9, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !6, i64 40, !25, i64 56, !5, i64 88, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !9, i64 160, !5, i64 168}
!25 = !{!"", !5, i64 0, !5, i64 8, !13, i64 16, !9, i64 24}
!26 = !{!24, !5, i64 16}
!27 = !{!28, !9, i64 0}
!28 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !5, i64 8, !13, i64 16}
