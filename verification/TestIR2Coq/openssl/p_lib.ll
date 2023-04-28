; ModuleID = 'crypto/evp/p_lib.c'
source_filename = "crypto/evp/p_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_item_st = type { i32, i8* }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.6 }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, {}*, {}*, {}*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, {}*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, {}*, {}*, {}*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.evp_md_ctx_st = type { %struct.evp_md_st*, %struct.evp_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i8*, %struct.evp_md_st* }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.0, %struct.anon.5, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.ossl_lib_ctx_st = type opaque
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.anon.5 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.bignum_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.6 = type { i32, i32, i32 }
%struct.OP_CACHE_ELEM = type { %struct.evp_keymgmt_st*, i8* }
%struct.stack_st = type opaque
%struct.raw_key_details_st = type { i8**, i64*, i32 }
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.ec_key_st = type opaque
%struct.ec_group_st = type opaque
%struct.rsa_st = type opaque
%struct.dsa_st = type opaque
%struct.dh_st = type opaque
%struct.ecx_key_st = type { %struct.ossl_lib_ctx_st*, i8*, i8, [57 x i8], i8*, i64, i32, i32, i8* }
%struct.evp_signature_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*, i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)* }
%struct.ossl_encoder_ctx_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.x509_attributes_st = type opaque
%struct.bio_method_st = type opaque
%struct.ossl_namemap_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/evp/p_lib.c\00", align 1
@__func__.EVP_PKEY_copy_parameters = private unnamed_addr constant [25 x i8] c"EVP_PKEY_copy_parameters\00", align 1
@__func__.EVP_PKEY_get_raw_private_key = private unnamed_addr constant [29 x i8] c"EVP_PKEY_get_raw_private_key\00", align 1
@__func__.EVP_PKEY_get_raw_public_key = private unnamed_addr constant [28 x i8] c"EVP_PKEY_get_raw_public_key\00", align 1
@__func__.EVP_PKEY_set1_engine = private unnamed_addr constant [21 x i8] c"EVP_PKEY_set1_engine\00", align 1
@__func__.EVP_PKEY_get0_hmac = private unnamed_addr constant [19 x i8] c"EVP_PKEY_get0_hmac\00", align 1
@__func__.EVP_PKEY_get0_poly1305 = private unnamed_addr constant [23 x i8] c"EVP_PKEY_get0_poly1305\00", align 1
@__func__.EVP_PKEY_get0_siphash = private unnamed_addr constant [22 x i8] c"EVP_PKEY_get0_siphash\00", align 1
@__func__.evp_pkey_get0_DH_int = private unnamed_addr constant [21 x i8] c"evp_pkey_get0_DH_int\00", align 1
@standard_name2type = internal unnamed_addr constant [12 x %struct.ossl_item_st] [%struct.ossl_item_st { i32 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0) }, %struct.ossl_item_st { i32 912, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0) }, %struct.ossl_item_st { i32 408, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0) }, %struct.ossl_item_st { i32 1087, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0) }, %struct.ossl_item_st { i32 1088, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0) }, %struct.ossl_item_st { i32 1034, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0) }, %struct.ossl_item_st { i32 1035, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0) }, %struct.ossl_item_st { i32 1172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0) }, %struct.ossl_item_st { i32 28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0) }, %struct.ossl_item_st { i32 920, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0) }, %struct.ossl_item_st { i32 920, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0) }, %struct.ossl_item_st { i32 116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"encoded-pub-key\00", align 1
@__func__.EVP_PKEY_new = private unnamed_addr constant [13 x i8] c"EVP_PKEY_new\00", align 1
@__func__.EVP_PKEY_set_type_by_keymgmt = private unnamed_addr constant [29 x i8] c"EVP_PKEY_set_type_by_keymgmt\00", align 1
@__func__.EVP_PKEY_dup = private unnamed_addr constant [13 x i8] c"EVP_PKEY_dup\00", align 1
@__func__.evp_pkey_copy_downgraded = private unnamed_addr constant [25 x i8] c"evp_pkey_copy_downgraded\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"keymgmt key type = %s but legacy type = EVP_PKEY_NONE\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"key type = %s\00", align 1
@__func__.EVP_PKEY_set_params = private unnamed_addr constant [20 x i8] c"EVP_PKEY_set_params\00", align 1
@__func__.EVP_PKEY_get_params = private unnamed_addr constant [20 x i8] c"EVP_PKEY_get_params\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"point-format\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"compressed\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"hybrid\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"field-type\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"prime-field\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"characteristic-two-field\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@__func__.new_raw_key_int = private unnamed_addr constant [16 x i8] c"new_raw_key_int\00", align 1
@__func__.new_cmac_key_int = private unnamed_addr constant [17 x i8] c"new_cmac_key_int\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"CMAC\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@__func__.evp_pkey_get0_DSA_int = private unnamed_addr constant [22 x i8] c"evp_pkey_get0_DSA_int\00", align 1
@__func__.evp_pkey_get0_ECX_KEY = private unnamed_addr constant [22 x i8] c"evp_pkey_get0_ECX_KEY\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"ED25519\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"ED448\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"X25519\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"X448\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"SM2\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"X9.42 DH\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"DHX\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Public Key\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"%s algorithm \22%s\22 unsupported\0A\00", align 1
@__func__.pkey_set_type = private unnamed_addr constant [14 x i8] c"pkey_set_type\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp.not, label %if.end9.thread, label %if.then

if.then:                                          ; preds = %entry
  %bits = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 18, i32 0
  %0 = load i32, i32* %bits, align 8, !tbaa !4
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp1.not = icmp eq %struct.evp_pkey_asn1_method_st* %1, null
  br i1 %cmp1.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %pkey_bits = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 13
  %pkey_bits3 = bitcast {}** %pkey_bits to i32 (%struct.evp_pkey_st*)**
  %2 = load i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)** %pkey_bits3, align 8, !tbaa !14
  %cmp4.not = icmp eq i32 (%struct.evp_pkey_st*)* %2, null
  br i1 %cmp4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %call = tail call i32 %2(%struct.evp_pkey_st* noundef nonnull %pkey) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then, %land.lhs.true, %if.then5
  %size.0 = phi i32 [ %call, %if.then5 ], [ %0, %land.lhs.true ], [ %0, %if.then ]
  %3 = icmp sgt i32 %size.0, 0
  %spec.select = select i1 %3, i32 %size.0, i32 0
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %if.end9, %entry
  %4 = phi i32 [ 0, %entry ], [ %spec.select, %if.end9 ]
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp.not, label %if.end9.thread, label %if.then

if.then:                                          ; preds = %entry
  %security_bits = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 18, i32 1
  %0 = load i32, i32* %security_bits, align 4, !tbaa !16
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp1.not = icmp eq %struct.evp_pkey_asn1_method_st* %1, null
  br i1 %cmp1.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %pkey_security_bits = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 14
  %pkey_security_bits3 = bitcast {}** %pkey_security_bits to i32 (%struct.evp_pkey_st*)**
  %2 = load i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)** %pkey_security_bits3, align 8, !tbaa !17
  %cmp4.not = icmp eq i32 (%struct.evp_pkey_st*)* %2, null
  br i1 %cmp4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %call = tail call i32 %2(%struct.evp_pkey_st* noundef nonnull %pkey) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then, %land.lhs.true, %if.then5
  %size.0 = phi i32 [ %call, %if.then5 ], [ %0, %land.lhs.true ], [ %0, %if.then ]
  %3 = icmp sgt i32 %size.0, 0
  %spec.select = select i1 %3, i32 %size.0, i32 0
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %if.end9, %entry
  %4 = phi i32 [ 0, %entry ], [ %spec.select, %if.end9 ]
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_PKEY_save_parameters(%struct.evp_pkey_st* nocapture noundef %pkey, i32 noundef %mode) local_unnamed_addr #2 {
entry:
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  switch i32 %0, label %return [
    i32 116, label %if.then
    i32 408, label %if.then7
  ]

if.then:                                          ; preds = %entry
  %save_parameters = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 10
  %1 = load i32, i32* %save_parameters, align 8, !tbaa !19
  %cmp1 = icmp sgt i32 %mode, -1
  br i1 %cmp1, label %return.sink.split, label %return

if.then7:                                         ; preds = %entry
  %save_parameters9 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 10
  %2 = load i32, i32* %save_parameters9, align 8, !tbaa !19
  %cmp10 = icmp sgt i32 %mode, -1
  br i1 %cmp10, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.then7, %if.then
  %save_parameters9.sink = phi i32* [ %save_parameters, %if.then ], [ %save_parameters9, %if.then7 ]
  %retval.0.ph = phi i32 [ %1, %if.then ], [ %2, %if.then7 ]
  store i32 %mode, i32* %save_parameters9.sink, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %return.sink.split, %entry, %if.then7, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %2, %if.then7 ], [ 0, %entry ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set_ex_data(%struct.evp_pkey_st* noundef %key, i32 noundef %idx, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %key, i64 0, i32 12
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %arg) #12
  ret i32 %call
}

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i8* @EVP_PKEY_get_ex_data(%struct.evp_pkey_st* noundef %key, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %key, i64 0, i32 12
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #12
  ret i8* %call
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef %to, %struct.evp_pkey_st* noundef %from) local_unnamed_addr #0 {
entry:
  %downgraded_from = alloca %struct.evp_pkey_st*, align 8
  %to_keymgmt = alloca %struct.evp_keymgmt_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %downgraded_from to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %downgraded_from, align 8, !tbaa !20
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %to, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !18
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %land.lhs.true9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %to, i64 0, i32 13
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp1 = icmp eq %struct.evp_keymgmt_st* %2, null
  br i1 %cmp1, label %land.lhs.true2, label %if.end43

land.lhs.true2:                                   ; preds = %land.lhs.true
  %keymgmt3 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 13
  %3 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt3, align 8, !tbaa !21
  %cmp4.not = icmp eq %struct.evp_keymgmt_st* %3, null
  br i1 %cmp4.not, label %land.lhs.true33, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %call = call i32 @evp_pkey_copy_downgraded(%struct.evp_pkey_st** noundef nonnull %downgraded_from, %struct.evp_pkey_st* noundef nonnull %from) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %end, label %if.end6

if.end6:                                          ; preds = %if.then
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %downgraded_from, align 8, !tbaa !20
  %.pr.pre = load i32, i32* %type, align 8, !tbaa !18
  %cmp8 = icmp eq i32 %.pr.pre, 0
  br i1 %cmp8, label %land.lhs.true9, label %land.lhs.true33

land.lhs.true9:                                   ; preds = %entry, %if.end6
  %from.addr.0134 = phi %struct.evp_pkey_st* [ %4, %if.end6 ], [ %from, %entry ]
  %keymgmt10 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %to, i64 0, i32 13
  %5 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt10, align 8, !tbaa !21
  %cmp11 = icmp eq %struct.evp_keymgmt_st* %5, null
  br i1 %cmp11, label %if.then12, label %if.end43

if.then12:                                        ; preds = %land.lhs.true9
  %type13 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from.addr.0134, i64 0, i32 0
  %6 = load i32, i32* %type13, align 8, !tbaa !18
  %cmp14.not = icmp ne i32 %6, 0
  %keymgmt24.phi.trans.insert = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from.addr.0134, i64 0, i32 13
  %.pre = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt24.phi.trans.insert, align 8, !tbaa !21
  %cmp17 = icmp eq %struct.evp_keymgmt_st* %.pre, null
  %or.cond = select i1 %cmp14.not, i1 %cmp17, i1 false
  br i1 %or.cond, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then12
  %call20 = call i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef nonnull %to, i32 noundef %6) #14
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %end, label %if.end43

if.else:                                          ; preds = %if.then12
  %call25 = call i32 @EVP_PKEY_set_type_by_keymgmt(%struct.evp_pkey_st* noundef nonnull %to, %struct.evp_keymgmt_st* noundef %.pre) #14
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %end, label %if.end43

land.lhs.true33:                                  ; preds = %land.lhs.true2, %if.end6
  %from.addr.0.ph151.ph = phi %struct.evp_pkey_st* [ %from, %land.lhs.true2 ], [ %4, %if.end6 ]
  %.pr150.ph = phi i32 [ %1, %land.lhs.true2 ], [ %.pr.pre, %if.end6 ]
  %.pr = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp35 = icmp eq %struct.evp_keymgmt_st* %.pr, null
  br i1 %cmp35, label %if.then36, label %if.end43

if.then36:                                        ; preds = %land.lhs.true33
  %type38 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from.addr.0.ph151.ph, i64 0, i32 0
  %7 = load i32, i32* %type38, align 8, !tbaa !18
  %cmp39.not = icmp eq i32 %.pr150.ph, %7
  br i1 %cmp39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.then36
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EVP_PKEY_copy_parameters, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 101, i8* noundef null) #12
  br label %end

if.end43:                                         ; preds = %land.lhs.true, %land.lhs.true9, %land.lhs.true33, %if.then36, %if.then18, %if.else
  %from.addr.0135 = phi %struct.evp_pkey_st* [ %from.addr.0.ph151.ph, %land.lhs.true33 ], [ %from.addr.0.ph151.ph, %if.then36 ], [ %from.addr.0134, %if.then18 ], [ %from.addr.0134, %if.else ], [ %from.addr.0134, %land.lhs.true9 ], [ %from, %land.lhs.true ]
  %call44 = call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef %from.addr.0135) #14
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end43
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EVP_PKEY_copy_parameters, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 103, i8* noundef null) #12
  br label %end

if.end47:                                         ; preds = %if.end43
  %call48 = call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef nonnull %to) #14
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end56

if.then50:                                        ; preds = %if.end47
  %call51 = call i32 @EVP_PKEY_parameters_eq(%struct.evp_pkey_st* noundef nonnull %to, %struct.evp_pkey_st* noundef %from.addr.0135) #14
  %cmp52 = icmp eq i32 %call51, 1
  br i1 %cmp52, label %end, label %if.else54

if.else54:                                        ; preds = %if.then50
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EVP_PKEY_copy_parameters, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 153, i8* noundef null) #12
  br label %end

if.end56:                                         ; preds = %if.end47
  %keymgmt57 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %to, i64 0, i32 13
  %8 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt57, align 8, !tbaa !21
  %cmp58.not = icmp eq %struct.evp_keymgmt_st* %8, null
  br i1 %cmp58.not, label %if.end80, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.end56
  %keymgmt60 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from.addr.0135, i64 0, i32 13
  %9 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt60, align 8, !tbaa !21
  %cmp61.not = icmp eq %struct.evp_keymgmt_st* %9, null
  br i1 %cmp61.not, label %land.lhs.true67, label %if.then62

if.then62:                                        ; preds = %land.lhs.true59
  %call63 = call i32 @evp_keymgmt_util_copy(%struct.evp_pkey_st* noundef nonnull %to, %struct.evp_pkey_st* noundef nonnull %from.addr.0135, i32 noundef 4) #12
  br label %end

land.lhs.true67:                                  ; preds = %land.lhs.true59
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %to, i64 0, i32 14
  %10 = load i8*, i8** %keydata, align 8, !tbaa !22
  %cmp68 = icmp eq i8* %10, null
  br i1 %cmp68, label %if.then69, label %if.end80

if.then69:                                        ; preds = %land.lhs.true67
  %11 = bitcast %struct.evp_keymgmt_st** %to_keymgmt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #13
  store %struct.evp_keymgmt_st* %8, %struct.evp_keymgmt_st** %to_keymgmt, align 8, !tbaa !20
  %call71 = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef nonnull %from.addr.0135, %struct.ossl_lib_ctx_st* noundef null, %struct.evp_keymgmt_st** noundef nonnull %to_keymgmt, i8* noundef null) #14
  %cmp72 = icmp eq i8* %call71, null
  br i1 %cmp72, label %if.then73, label %if.else74

if.then73:                                        ; preds = %if.then69
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EVP_PKEY_copy_parameters, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 101, i8* noundef null) #12
  br label %if.end79

if.else74:                                        ; preds = %if.then69
  %12 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt57, align 8, !tbaa !21
  %call76 = call i8* @evp_keymgmt_dup(%struct.evp_keymgmt_st* noundef %12, i8* noundef nonnull %call71, i32 noundef 4) #12
  store i8* %call76, i8** %keydata, align 8, !tbaa !22
  %cmp78 = icmp ne i8* %call76, null
  %conv = zext i1 %cmp78 to i32
  br label %if.end79

if.end79:                                         ; preds = %if.else74, %if.then73
  %ok.0 = phi i32 [ 0, %if.then73 ], [ %conv, %if.else74 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #13
  br label %end

if.end80:                                         ; preds = %if.end56, %land.lhs.true67
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from.addr.0135, i64 0, i32 2
  %13 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp81.not = icmp eq %struct.evp_pkey_asn1_method_st* %13, null
  br i1 %cmp81.not, label %end, label %land.lhs.true83

land.lhs.true83:                                  ; preds = %if.end80
  %param_copy = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %13, i64 0, i32 18
  %14 = load i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)** %param_copy, align 8, !tbaa !23
  %cmp85.not = icmp eq i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* %14, null
  br i1 %cmp85.not, label %end, label %if.then87

if.then87:                                        ; preds = %land.lhs.true83
  %call90 = call i32 %14(%struct.evp_pkey_st* noundef nonnull %to, %struct.evp_pkey_st* noundef nonnull %from.addr.0135) #12
  br label %end

end:                                              ; preds = %if.then50, %if.end79, %if.end80, %land.lhs.true83, %if.then87, %if.else54, %if.else, %if.then18, %if.then, %if.then62, %if.then46, %if.then40
  %ok.1 = phi i32 [ 0, %if.then18 ], [ 0, %if.then46 ], [ %call63, %if.then62 ], [ %ok.0, %if.end79 ], [ %call90, %if.then87 ], [ 0, %land.lhs.true83 ], [ 0, %if.end80 ], [ 0, %if.else54 ], [ 0, %if.else ], [ 0, %if.then40 ], [ 0, %if.then ], [ 1, %if.then50 ]
  %15 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %downgraded_from, align 8, !tbaa !20
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %15) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %ok.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_pkey_copy_downgraded(%struct.evp_pkey_st** noundef %dest, %struct.evp_pkey_st* nocapture noundef readonly %src) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st** %dest, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %src, i64 0, i32 5, i32 0
  %0 = load i8*, i8** %ptr, align 8, !tbaa !24
  %cmp3.not = icmp eq i8* %0, null
  br i1 %cmp3.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %src, i64 0, i32 14
  %1 = load i8*, i8** %keydata, align 8, !tbaa !22
  %cmp5.not = icmp eq i8* %1, null
  br i1 %cmp5.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %src, i64 0, i32 13
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp7.not = icmp eq %struct.evp_keymgmt_st* %2, null
  br i1 %cmp7.not, label %return, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  %keydata13 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %src, i64 0, i32 14
  %3 = load i8*, i8** %keydata13, align 8, !tbaa !22
  %type14 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %src, i64 0, i32 0
  %4 = load i32, i32* %type14, align 8, !tbaa !18
  %call = tail call i8* @EVP_KEYMGMT_get0_name(%struct.evp_keymgmt_st* noundef nonnull %2) #12
  switch i32 %4, label %if.then23 [
    i32 0, label %if.then19
    i32 -1, label %if.end25
  ]

if.then19:                                        ; preds = %if.then9
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1986, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_pkey_copy_downgraded, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call) #12
  br label %return

if.then23:                                        ; preds = %if.then9
  %call24 = tail call i8* @OBJ_nid2sn(i32 noundef %4) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then9, %if.then23
  %keytype.0 = phi i8* [ %call24, %if.then23 ], [ %call, %if.then9 ]
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dest, align 8, !tbaa !20
  %cmp26 = icmp eq %struct.evp_pkey_st* %5, null
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end25
  %call29 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #14
  store %struct.evp_pkey_st* %call29, %struct.evp_pkey_st** %dest, align 8, !tbaa !20
  %cmp30 = icmp eq %struct.evp_pkey_st* %call29, null
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then28
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2000, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_pkey_copy_downgraded, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #12
  br label %return

if.else:                                          ; preds = %if.end25
  tail call fastcc void @evp_pkey_free_it(%struct.evp_pkey_st* noundef nonnull %5) #14
  %.pre = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dest, align 8, !tbaa !20
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.else
  %6 = phi %struct.evp_pkey_st* [ %call29, %if.then28 ], [ %.pre, %if.else ]
  %call35 = tail call i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef %6, i32 noundef %4) #14
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %return, label %if.then36

if.then36:                                        ; preds = %if.end34
  %cmp37 = icmp eq i8* %3, null
  br i1 %cmp37, label %return, label %if.end40

if.end40:                                         ; preds = %if.then36
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dest, align 8, !tbaa !20
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %7, i64 0, i32 2
  %8 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %import_from = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %8, i64 0, i32 38
  %9 = load i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)** %import_from, align 8, !tbaa !25
  %cmp41 = icmp eq i32 (%struct.ossl_param_st*, i8*)* %9, null
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.end40
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2013, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_pkey_copy_downgraded, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 206, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* noundef %keytype.0) #12
  br label %if.end63

if.else44:                                        ; preds = %if.end40
  %prov = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %2, i64 0, i32 4
  %10 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !26
  %call45 = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %10) #12
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dest, align 8, !tbaa !20
  %call46 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %call45, %struct.evp_pkey_st* noundef %11, i8* noundef null) #12
  %cond = icmp eq %struct.evp_pkey_ctx_st* %call46, null
  br i1 %cond, label %if.then49, label %land.lhs.true53

if.then49:                                        ; preds = %if.else44
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2026, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_pkey_copy_downgraded, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #12
  br label %if.end61

land.lhs.true53:                                  ; preds = %if.else44
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dest, align 8, !tbaa !20
  %ameth54 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %12, i64 0, i32 2
  %13 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth54, align 8, !tbaa !13
  %import_from55 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %13, i64 0, i32 38
  %14 = load i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)** %import_from55, align 8, !tbaa !25
  %15 = bitcast %struct.evp_pkey_ctx_st* %call46 to i8*
  %call56 = tail call i32 @evp_keymgmt_export(%struct.evp_keymgmt_st* noundef nonnull %2, i8* noundef nonnull %3, i32 noundef 135, i32 (%struct.ossl_param_st*, i8*)* noundef %14, i8* noundef nonnull %15) #12
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %land.lhs.true53
  %16 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dest, align 8, !tbaa !20
  %ameth59 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %16, i64 0, i32 2
  %17 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth59, align 8, !tbaa !13
  %dirty_cnt = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %17, i64 0, i32 36
  %18 = load i64 (%struct.evp_pkey_st*)*, i64 (%struct.evp_pkey_st*)** %dirty_cnt, align 8, !tbaa !28
  %call60 = tail call i64 %18(%struct.evp_pkey_st* noundef %16) #12
  %19 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dest, align 8, !tbaa !20
  %dirty_cnt_copy = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %19, i64 0, i32 17
  store i64 %call60, i64* %dirty_cnt_copy, align 8, !tbaa !29
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call46) #12
  br label %return

if.end61:                                         ; preds = %if.then49, %land.lhs.true53
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call46) #12
  br label %if.end63

if.end63:                                         ; preds = %if.end61, %if.then43
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2042, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_pkey_copy_downgraded, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 205, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* noundef %keytype.0) #12
  br label %return

return:                                           ; preds = %if.then36, %if.then19, %if.then58, %if.then32, %lor.lhs.false, %land.lhs.true, %if.end34, %if.end63, %entry
  %retval.4 = phi i32 [ 0, %entry ], [ 0, %if.end63 ], [ 0, %if.end34 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ 1, %if.then36 ], [ 0, %if.then19 ], [ 1, %if.then58 ], [ 0, %if.then32 ]
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef %pkey, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @pkey_set_type(%struct.evp_pkey_st* noundef %pkey, %struct.engine_st* noundef null, i32 noundef %type, i8* noundef null, i32 noundef -1, %struct.evp_keymgmt_st* noundef null) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set_type_by_keymgmt(%struct.evp_pkey_st* noundef %pkey, %struct.evp_keymgmt_st* noundef %keymgmt) local_unnamed_addr #0 {
entry:
  %str = alloca [2 x i8*], align 16
  %0 = bitcast [2 x i8*]* %str to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %call = call i32 @EVP_KEYMGMT_names_do_all(%struct.evp_keymgmt_st* noundef %keymgmt, void (i8*, i8*)* noundef nonnull @find_ameth, i8* noundef nonnull %0) #12
  %tobool = icmp eq i32 %call, 0
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %str, i64 0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  %cmp = icmp ne i8* %1, null
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1615, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.EVP_PKEY_set_type_by_keymgmt, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds [2 x i8*], [2 x i8*]* %str, i64 0, i64 0
  %2 = load i8*, i8** %arrayidx1, align 16, !tbaa !20
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  %call5 = call i64 @strlen(i8* noundef nonnull %2) #15
  %conv = trunc i64 %call5 to i32
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi i32 [ %conv, %cond.false ], [ -1, %if.end ]
  %call6 = call fastcc i32 @pkey_set_type(%struct.evp_pkey_st* noundef %pkey, %struct.engine_st* noundef null, i32 noundef 0, i8* noundef %2, i32 noundef %cond, %struct.evp_keymgmt_st* noundef %keymgmt) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call6, %cond.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp1.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %call = tail call i32 @evp_keymgmt_util_has(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef 4) #12
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  br label %return

if.else:                                          ; preds = %if.then
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp3.not = icmp eq %struct.evp_pkey_asn1_method_st* %1, null
  br i1 %cmp3.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %param_missing = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 17
  %param_missing5 = bitcast {}** %param_missing to i32 (%struct.evp_pkey_st*)**
  %2 = load i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)** %param_missing5, align 8, !tbaa !30
  %cmp6.not = icmp eq i32 (%struct.evp_pkey_st*)* %2, null
  br i1 %cmp6.not, label %return, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %call11 = tail call i32 %2(%struct.evp_pkey_st* noundef nonnull %pkey) #12
  br label %return

return:                                           ; preds = %entry, %if.else, %land.lhs.true, %if.then7, %if.then2
  %retval.0 = phi i32 [ %lnot.ext, %if.then2 ], [ %call11, %if.then7 ], [ 0, %land.lhs.true ], [ 0, %if.else ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_parameters_eq(%struct.evp_pkey_st* noundef %a, %struct.evp_pkey_st* noundef %b) local_unnamed_addr #0 {
entry:
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %keymgmt1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 13
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt1, align 8, !tbaa !21
  %cmp2.not = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call fastcc i32 @evp_pkey_cmp_any(%struct.evp_pkey_st* noundef nonnull %a, %struct.evp_pkey_st* noundef %b, i32 noundef 4) #14
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !18
  %type3 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 0
  %3 = load i32, i32* %type3, align 8, !tbaa !18
  %cmp4.not = icmp eq i32 %2, %3
  br i1 %cmp4.not, label %if.end6, label %return

if.end6:                                          ; preds = %if.end
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp7.not = icmp eq %struct.evp_pkey_asn1_method_st* %4, null
  br i1 %cmp7.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %param_cmp = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 19
  %5 = load i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)** %param_cmp, align 8, !tbaa !31
  %cmp9.not = icmp eq i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* %5, null
  br i1 %cmp9.not, label %return, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %call13 = tail call i32 %5(%struct.evp_pkey_st* noundef nonnull %a, %struct.evp_pkey_st* noundef nonnull %b) #12
  br label %return

return:                                           ; preds = %if.end6, %land.lhs.true, %if.end, %if.then10, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call13, %if.then10 ], [ -1, %if.end ], [ -2, %land.lhs.true ], [ -2, %if.end6 ]
  ret i32 %retval.0
}

declare i32 @evp_keymgmt_util_copy(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef %pk, %struct.ossl_lib_ctx_st* noundef %libctx, %struct.evp_keymgmt_st** noundef %keymgmt, i8* noundef %propquery) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_st* %pk, null
  br i1 %cmp, label %cleanup123, label %land.end

land.end:                                         ; preds = %entry
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 5, i32 0
  %0 = load i8*, i8** %ptr, align 8, !tbaa !24
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %land.rhs3, label %if.then14

land.rhs3:                                        ; preds = %land.end
  %keydata4 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 14
  %1 = load i8*, i8** %keydata4, align 8, !tbaa !22
  %cmp5 = icmp eq i8* %1, null
  br i1 %cmp5, label %cleanup123, label %if.end20

if.then14:                                        ; preds = %land.end
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 2
  %2 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %dirty_cnt = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %2, i64 0, i32 36
  %3 = load i64 (%struct.evp_pkey_st*)*, i64 (%struct.evp_pkey_st*)** %dirty_cnt, align 8, !tbaa !28
  %cmp15 = icmp eq i64 (%struct.evp_pkey_st*)* %3, null
  br i1 %cmp15, label %cleanup123, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then14
  %export_to = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %2, i64 0, i32 37
  %4 = load i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)** %export_to, align 8, !tbaa !32
  %cmp17 = icmp eq i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)* %4, null
  br i1 %cmp17, label %cleanup123, label %if.end20

if.end20:                                         ; preds = %land.rhs3, %lor.lhs.false
  %cmp21.not = icmp eq %struct.evp_keymgmt_st** %keymgmt, null
  br i1 %cmp21.not, label %if.end28, label %if.end23

if.end23:                                         ; preds = %if.end20
  %5 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !20
  store %struct.evp_keymgmt_st* null, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !20
  %cmp24 = icmp eq %struct.evp_keymgmt_st* %5, null
  br i1 %cmp24, label %if.end28, label %if.end31

if.end28:                                         ; preds = %if.end20, %if.end23
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.evp_pkey_st* noundef nonnull %pk, i8* noundef %propquery) #12
  %keymgmt26 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %call, i64 0, i32 4
  %6 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt26, align 8, !tbaa !33
  store %struct.evp_keymgmt_st* null, %struct.evp_keymgmt_st** %keymgmt26, align 8, !tbaa !33
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #12
  %cmp29 = icmp eq %struct.evp_keymgmt_st* %6, null
  br i1 %cmp29, label %end, label %if.end31

if.end31:                                         ; preds = %if.end23, %if.end28
  %tmp_keymgmt.1210 = phi %struct.evp_keymgmt_st* [ %6, %if.end28 ], [ %5, %if.end23 ]
  %7 = load i8*, i8** %ptr, align 8, !tbaa !24
  %cmp34.not = icmp eq i8* %7, null
  br i1 %cmp34.not, label %if.end115, label %if.then35

if.then35:                                        ; preds = %if.end31
  %ameth36 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 2
  %8 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth36, align 8, !tbaa !13
  %dirty_cnt37 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %8, i64 0, i32 36
  %9 = load i64 (%struct.evp_pkey_st*)*, i64 (%struct.evp_pkey_st*)** %dirty_cnt37, align 8, !tbaa !28
  %call38 = tail call i64 %9(%struct.evp_pkey_st* noundef nonnull %pk) #12
  %dirty_cnt_copy = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 17
  %10 = load i64, i64* %dirty_cnt_copy, align 8, !tbaa !29
  %cmp39 = icmp eq i64 %call38, %10
  br i1 %cmp39, label %if.then40, label %if.end56

if.then40:                                        ; preds = %if.then35
  %lock = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 8
  %11 = load i8*, i8** %lock, align 8, !tbaa !36
  %call41 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %11) #12
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %end, label %if.end44

if.end44:                                         ; preds = %if.then40
  %call45 = tail call %struct.OP_CACHE_ELEM* @evp_keymgmt_util_find_operation_cache(%struct.evp_pkey_st* noundef nonnull %pk, %struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210) #12
  %cmp46.not = icmp eq %struct.OP_CACHE_ELEM* %call45, null
  br i1 %cmp46.not, label %if.end53, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end44
  %keymgmt47 = getelementptr inbounds %struct.OP_CACHE_ELEM, %struct.OP_CACHE_ELEM* %call45, i64 0, i32 0
  %12 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt47, align 8, !tbaa !37
  %cmp48.not = icmp eq %struct.evp_keymgmt_st* %12, null
  br i1 %cmp48.not, label %if.end53, label %if.then49

if.then49:                                        ; preds = %land.lhs.true
  %keydata50 = getelementptr inbounds %struct.OP_CACHE_ELEM, %struct.OP_CACHE_ELEM* %call45, i64 0, i32 1
  %13 = load i8*, i8** %keydata50, align 8, !tbaa !39
  %14 = load i8*, i8** %lock, align 8, !tbaa !36
  %call52 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %14) #12
  br label %end

if.end53:                                         ; preds = %land.lhs.true, %if.end44
  %15 = load i8*, i8** %lock, align 8, !tbaa !36
  %call55 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %15) #12
  br label %if.end56

if.end56:                                         ; preds = %if.end53, %if.then35
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 0
  %16 = load i32, i32* %type, align 8, !tbaa !18
  %call57 = tail call i8* @OBJ_nid2sn(i32 noundef %16) #12
  %call58 = tail call i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210, i8* noundef %call57) #12
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %end, label %if.end61

if.end61:                                         ; preds = %if.end56
  %call62 = tail call i8* @evp_keymgmt_newdata(%struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210) #12
  %cmp63 = icmp eq i8* %call62, null
  br i1 %cmp63, label %end, label %if.end65

if.end65:                                         ; preds = %if.end61
  %17 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth36, align 8, !tbaa !13
  %export_to67 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %17, i64 0, i32 37
  %18 = load i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)** %export_to67, align 8, !tbaa !32
  %import = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %tmp_keymgmt.1210, i64 0, i32 24
  %19 = load i32 (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i32, %struct.ossl_param_st*)** %import, align 8, !tbaa !40
  %call68 = tail call i32 %18(%struct.evp_pkey_st* noundef nonnull %pk, i8* noundef nonnull %call62, i32 (i8*, i32, %struct.ossl_param_st*)* noundef %19, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propquery) #12
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end65
  tail call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210, i8* noundef nonnull %call62) #12
  br label %end

if.end71:                                         ; preds = %if.end65
  %call72 = tail call i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210) #12
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end71
  tail call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210, i8* noundef nonnull %call62) #12
  br label %end

if.end75:                                         ; preds = %if.end71
  %lock76 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 8
  %20 = load i8*, i8** %lock76, align 8, !tbaa !36
  %call77 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %20) #12
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %end, label %if.end80

if.end80:                                         ; preds = %if.end75
  %21 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth36, align 8, !tbaa !13
  %dirty_cnt82 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %21, i64 0, i32 36
  %22 = load i64 (%struct.evp_pkey_st*)*, i64 (%struct.evp_pkey_st*)** %dirty_cnt82, align 8, !tbaa !28
  %call83 = tail call i64 %22(%struct.evp_pkey_st* noundef nonnull %pk) #12
  %23 = load i64, i64* %dirty_cnt_copy, align 8, !tbaa !29
  %cmp85.not = icmp eq i64 %call83, %23
  br i1 %cmp85.not, label %if.end92, label %land.lhs.true86

land.lhs.true86:                                  ; preds = %if.end80
  %call87 = tail call i32 @evp_keymgmt_util_clear_operation_cache(%struct.evp_pkey_st* noundef nonnull %pk, i32 noundef 0) #12
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then89, label %if.end92

if.then89:                                        ; preds = %land.lhs.true86
  %24 = load i8*, i8** %lock76, align 8, !tbaa !36
  %call91 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %24) #12
  tail call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210, i8* noundef nonnull %call62) #12
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210) #12
  br label %end

if.end92:                                         ; preds = %land.lhs.true86, %if.end80
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210) #12
  %call93 = tail call %struct.OP_CACHE_ELEM* @evp_keymgmt_util_find_operation_cache(%struct.evp_pkey_st* noundef nonnull %pk, %struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210) #12
  %cmp94.not = icmp eq %struct.OP_CACHE_ELEM* %call93, null
  br i1 %cmp94.not, label %if.end102, label %land.lhs.true95

land.lhs.true95:                                  ; preds = %if.end92
  %keymgmt96 = getelementptr inbounds %struct.OP_CACHE_ELEM, %struct.OP_CACHE_ELEM* %call93, i64 0, i32 0
  %25 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt96, align 8, !tbaa !37
  %cmp97.not = icmp eq %struct.evp_keymgmt_st* %25, null
  br i1 %cmp97.not, label %if.end102, label %if.then98

if.then98:                                        ; preds = %land.lhs.true95
  %keydata99 = getelementptr inbounds %struct.OP_CACHE_ELEM, %struct.OP_CACHE_ELEM* %call93, i64 0, i32 1
  %26 = load i8*, i8** %keydata99, align 8, !tbaa !39
  %27 = load i8*, i8** %lock76, align 8, !tbaa !36
  %call101 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %27) #12
  tail call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210, i8* noundef nonnull %call62) #12
  br label %end

if.end102:                                        ; preds = %land.lhs.true95, %if.end92
  %call103 = tail call i32 @evp_keymgmt_util_cache_keydata(%struct.evp_pkey_st* noundef nonnull %pk, %struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210, i8* noundef nonnull %call62) #12
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then105, label %if.end108

if.then105:                                       ; preds = %if.end102
  %28 = load i8*, i8** %lock76, align 8, !tbaa !36
  %call107 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %28) #12
  tail call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210, i8* noundef nonnull %call62) #12
  br label %end

if.end108:                                        ; preds = %if.end102
  %29 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth36, align 8, !tbaa !13
  %dirty_cnt110 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %29, i64 0, i32 36
  %30 = load i64 (%struct.evp_pkey_st*)*, i64 (%struct.evp_pkey_st*)** %dirty_cnt110, align 8, !tbaa !28
  %call111 = tail call i64 %30(%struct.evp_pkey_st* noundef nonnull %pk) #12
  store i64 %call111, i64* %dirty_cnt_copy, align 8, !tbaa !29
  %31 = load i8*, i8** %lock76, align 8, !tbaa !36
  %call114 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %31) #12
  br label %end

if.end115:                                        ; preds = %if.end31
  %call116 = tail call i8* @evp_keymgmt_util_export_to_provider(%struct.evp_pkey_st* noundef nonnull %pk, %struct.evp_keymgmt_st* noundef nonnull %tmp_keymgmt.1210) #12
  br label %end

end:                                              ; preds = %if.then98, %if.then49, %if.then70, %if.then74, %if.then89, %if.then105, %if.end108, %if.then40, %if.end56, %if.end61, %if.end75, %if.end28, %if.end115
  %tmp_keymgmt.1211 = phi %struct.evp_keymgmt_st* [ null, %if.end28 ], [ %tmp_keymgmt.1210, %if.end115 ], [ %tmp_keymgmt.1210, %if.then49 ], [ %tmp_keymgmt.1210, %if.then98 ], [ %tmp_keymgmt.1210, %if.end108 ], [ %tmp_keymgmt.1210, %if.then105 ], [ %tmp_keymgmt.1210, %if.then89 ], [ %tmp_keymgmt.1210, %if.then74 ], [ %tmp_keymgmt.1210, %if.then70 ], [ %tmp_keymgmt.1210, %if.then40 ], [ %tmp_keymgmt.1210, %if.end56 ], [ %tmp_keymgmt.1210, %if.end61 ], [ %tmp_keymgmt.1210, %if.end75 ]
  %keydata.1 = phi i8* [ null, %if.end28 ], [ %call116, %if.end115 ], [ %13, %if.then49 ], [ %26, %if.then98 ], [ %call62, %if.end108 ], [ null, %if.then105 ], [ null, %if.then89 ], [ null, %if.then74 ], [ null, %if.then70 ], [ null, %if.then40 ], [ null, %if.end56 ], [ null, %if.end61 ], [ %call62, %if.end75 ]
  br i1 %cmp21.not, label %if.end122, label %if.then121

if.then121:                                       ; preds = %end
  %cmp117 = icmp eq i8* %keydata.1, null
  %spec.select = select i1 %cmp117, %struct.evp_keymgmt_st* null, %struct.evp_keymgmt_st* %tmp_keymgmt.1211
  store %struct.evp_keymgmt_st* %spec.select, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !20
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %end
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef null) #12
  br label %cleanup123

cleanup123:                                       ; preds = %if.then14, %lor.lhs.false, %land.rhs3, %entry, %if.end122
  %retval.0 = phi i8* [ %keydata.1, %if.end122 ], [ null, %entry ], [ null, %land.rhs3 ], [ null, %lor.lhs.false ], [ null, %if.then14 ]
  ret i8* %retval.0
}

declare i8* @evp_keymgmt_dup(%struct.evp_keymgmt_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %x) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %cmp = icmp eq %struct.evp_pkey_st* %x, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 7
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #14
  %1 = load i32, i32* %i, align 4, !tbaa !41
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 8
  tail call fastcc void @evp_pkey_free_it(%struct.evp_pkey_st* noundef nonnull %x) #14
  %2 = bitcast %struct.evp_pkey_st* %x to i8*
  %ex_data = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 12
  tail call void @CRYPTO_free_ex_data(i32 noundef 17, i8* noundef nonnull %2, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #12
  %3 = load i8*, i8** %lock, align 8, !tbaa !36
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %3) #12
  %attributes = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 9
  %4 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !42
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %4) #14
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call5, void (i8*)* noundef bitcast (void (%struct.x509_attributes_st*)* @X509_ATTRIBUTE_free to void (i8*)*)) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1770) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret void
}

declare i32 @evp_keymgmt_util_has(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_cmp_parameters(%struct.evp_pkey_st* noundef %a, %struct.evp_pkey_st* noundef %b) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_parameters_eq(%struct.evp_pkey_st* noundef %a, %struct.evp_pkey_st* noundef %b) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_cmp_any(%struct.evp_pkey_st* noundef %a, %struct.evp_pkey_st* noundef %b, i32 noundef %selection) unnamed_addr #0 {
entry:
  %keymgmt1 = alloca %struct.evp_keymgmt_st*, align 8
  %keymgmt2 = alloca %struct.evp_keymgmt_st*, align 8
  %0 = bitcast %struct.evp_keymgmt_st** %keymgmt1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = bitcast %struct.evp_keymgmt_st** %keymgmt2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 13
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %2, null
  %keymgmt3 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 13
  %3 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt3, align 8, !tbaa !21
  %cmp4.not = icmp eq %struct.evp_keymgmt_st* %3, null
  br i1 %cmp.not, label %lor.rhs, label %land.lhs.true

lor.rhs:                                          ; preds = %entry
  br i1 %cmp4.not, label %cleanup, label %if.end11

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp4.not, label %if.end22, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %call = tail call i32 @evp_keymgmt_util_match(%struct.evp_pkey_st* noundef nonnull %a, %struct.evp_pkey_st* noundef nonnull %b, i32 noundef %selection) #12
  br label %cleanup

if.end11:                                         ; preds = %lor.rhs
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 0
  %4 = load i32, i32* %type, align 8, !tbaa !18
  %cmp12.not = icmp eq i32 %4, 0
  br i1 %cmp12.not, label %if.end22, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end11
  %call19 = tail call i8* @OBJ_nid2sn(i32 noundef %4) #12
  %call20 = tail call i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef nonnull %3, i8* noundef %call19) #12
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %land.lhs.true16, %if.end11
  %type23 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 0
  %5 = load i32, i32* %type23, align 8, !tbaa !18
  %cmp24.not = icmp eq i32 %5, 0
  br i1 %cmp24.not, label %if.end35, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.end22
  %keymgmt26 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 13
  %6 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt26, align 8, !tbaa !21
  %cmp27 = icmp eq %struct.evp_keymgmt_st* %6, null
  br i1 %cmp27, label %land.lhs.true28, label %if.end35

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %7 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %call31 = tail call i8* @OBJ_nid2sn(i32 noundef %5) #12
  %call32 = tail call i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef %7, i8* noundef %call31) #12
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup, label %if.end35

if.end35:                                         ; preds = %land.lhs.true28, %land.lhs.true25, %if.end22
  %8 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  store %struct.evp_keymgmt_st* %8, %struct.evp_keymgmt_st** %keymgmt1, align 8, !tbaa !20
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 14
  %9 = load i8*, i8** %keydata, align 8, !tbaa !22
  %keymgmt37 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 13
  %10 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt37, align 8, !tbaa !21
  store %struct.evp_keymgmt_st* %10, %struct.evp_keymgmt_st** %keymgmt2, align 8, !tbaa !20
  %keydata38 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 14
  %11 = load i8*, i8** %keydata38, align 8, !tbaa !22
  %cmp39.not = icmp eq %struct.evp_keymgmt_st* %10, null
  br i1 %cmp39.not, label %if.end47, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %if.end35
  %match = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %10, i64 0, i32 23
  %12 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %match, align 8, !tbaa !43
  %cmp41.not = icmp eq i32 (i8*, i8*, i32)* %12, null
  br i1 %cmp41.not, label %if.end47, label %if.then42

if.then42:                                        ; preds = %land.lhs.true40
  %call43 = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef nonnull %a, %struct.ossl_lib_ctx_st* noundef null, %struct.evp_keymgmt_st** noundef nonnull %keymgmt2, i8* noundef null) #14
  %cmp44.not = icmp eq i8* %call43, null
  br i1 %cmp44.not, label %if.end47, label %if.end47.thread

if.end47.thread:                                  ; preds = %if.then42
  %13 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt2, align 8, !tbaa !20
  store %struct.evp_keymgmt_st* %13, %struct.evp_keymgmt_st** %keymgmt1, align 8, !tbaa !20
  br label %if.end59

if.end47:                                         ; preds = %if.then42, %land.lhs.true40, %if.end35
  %cmp50.not = icmp eq %struct.evp_keymgmt_st* %8, null
  br i1 %cmp50.not, label %cleanup, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.end47
  %match52 = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %8, i64 0, i32 23
  %14 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %match52, align 8, !tbaa !43
  %cmp53.not = icmp eq i32 (i8*, i8*, i32)* %14, null
  br i1 %cmp53.not, label %if.end59, label %if.then54

if.then54:                                        ; preds = %land.lhs.true51
  %call55 = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef nonnull %b, %struct.ossl_lib_ctx_st* noundef null, %struct.evp_keymgmt_st** noundef nonnull %keymgmt1, i8* noundef null) #14
  %cmp56.not = icmp eq i8* %call55, null
  %.pre = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt1, align 8, !tbaa !20
  br i1 %cmp56.not, label %if.end59, label %if.then57

if.then57:                                        ; preds = %if.then54
  store %struct.evp_keymgmt_st* %.pre, %struct.evp_keymgmt_st** %keymgmt2, align 8, !tbaa !20
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end47.thread, %if.then57, %land.lhs.true51
  %15 = phi %struct.evp_keymgmt_st* [ %.pre, %if.then57 ], [ %8, %land.lhs.true51 ], [ %13, %if.end47.thread ], [ %.pre, %if.then54 ]
  %keydata1.0108 = phi i8* [ %9, %if.then57 ], [ %9, %land.lhs.true51 ], [ %call43, %if.end47.thread ], [ %9, %if.then54 ]
  %keydata2.0 = phi i8* [ %call55, %if.then57 ], [ %11, %land.lhs.true51 ], [ %11, %if.end47.thread ], [ %11, %if.then54 ]
  %16 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt2, align 8, !tbaa !20
  %cmp60.not = icmp ne %struct.evp_keymgmt_st* %15, %16
  %cmp63 = icmp eq %struct.evp_keymgmt_st* %15, null
  %or.cond101 = or i1 %cmp63, %cmp60.not
  br i1 %or.cond101, label %cleanup, label %if.end65

if.end65:                                         ; preds = %if.end59
  %call66 = call i32 @evp_keymgmt_match(%struct.evp_keymgmt_st* noundef nonnull %15, i8* noundef %keydata1.0108, i8* noundef %keydata2.0, i32 noundef %selection) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end59, %land.lhs.true28, %land.lhs.true16, %lor.rhs, %if.end65, %if.then10
  %retval.0 = phi i32 [ %call, %if.then10 ], [ %call66, %if.end65 ], [ -2, %lor.rhs ], [ -1, %land.lhs.true16 ], [ -1, %land.lhs.true28 ], [ -2, %if.end59 ], [ -2, %if.end47 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_cmp(%struct.evp_pkey_st* noundef %a, %struct.evp_pkey_st* noundef %b) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %a, %struct.evp_pkey_st* noundef %b) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %a, %struct.evp_pkey_st* noundef %b) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_st* %a, %b
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.evp_pkey_st* %a, null
  %cmp2 = icmp eq %struct.evp_pkey_st* %b, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp5.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp5.not, label %lor.lhs.false6, label %if.then9

lor.lhs.false6:                                   ; preds = %if.end4
  %keymgmt7 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 13
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt7, align 8, !tbaa !21
  %cmp8.not = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false6, %if.end4
  %call = tail call fastcc i32 @evp_pkey_cmp_any(%struct.evp_pkey_st* noundef nonnull %a, %struct.evp_pkey_st* noundef nonnull %b, i32 noundef 6) #14
  br label %return

if.end10:                                         ; preds = %lor.lhs.false6
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !18
  %type11 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %b, i64 0, i32 0
  %3 = load i32, i32* %type11, align 8, !tbaa !18
  %cmp12.not = icmp eq i32 %2, %3
  br i1 %cmp12.not, label %if.end14, label %return

if.end14:                                         ; preds = %if.end10
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp15.not = icmp eq %struct.evp_pkey_asn1_method_st* %4, null
  br i1 %cmp15.not, label %return, label %if.then16

if.then16:                                        ; preds = %if.end14
  %param_cmp = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 19
  %5 = load i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)** %param_cmp, align 8, !tbaa !31
  %cmp18.not = icmp eq i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* %5, null
  br i1 %cmp18.not, label %if.end26, label %if.then19

if.then19:                                        ; preds = %if.then16
  %call22 = tail call i32 %5(%struct.evp_pkey_st* noundef nonnull %a, %struct.evp_pkey_st* noundef nonnull %b) #12
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %return, label %if.then19.if.end26_crit_edge

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  %.pre = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  br label %if.end26

if.end26:                                         ; preds = %if.then19.if.end26_crit_edge, %if.then16
  %6 = phi %struct.evp_pkey_asn1_method_st* [ %.pre, %if.then19.if.end26_crit_edge ], [ %4, %if.then16 ]
  %pub_cmp = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %6, i64 0, i32 7
  %7 = load i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)** %pub_cmp, align 8, !tbaa !44
  %cmp28.not = icmp eq i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* %7, null
  br i1 %cmp28.not, label %return, label %if.then29

if.then29:                                        ; preds = %if.end26
  %call32 = tail call i32 %7(%struct.evp_pkey_st* noundef nonnull %a, %struct.evp_pkey_st* noundef nonnull %b) #12
  br label %return

return:                                           ; preds = %if.then19, %if.then29, %if.end14, %if.end26, %if.end10, %if.end, %entry, %if.then9
  %retval.1 = phi i32 [ %call, %if.then9 ], [ 1, %entry ], [ 0, %if.end ], [ -1, %if.end10 ], [ -2, %if.end26 ], [ -2, %if.end14 ], [ %call22, %if.then19 ], [ %call32, %if.then29 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %keytype, i8* noundef %propq, i8* noundef %priv, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @new_raw_key_int(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %keytype, i8* noundef %propq, i32 noundef 0, %struct.engine_st* noundef null, i8* noundef %priv, i64 noundef %len, i32 noundef 1) #14
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @new_raw_key_int(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %strtype, i8* noundef %propq, i32 noundef %nidtype, %struct.engine_st* noundef %e, i8* noundef %key, i64 noundef %len, i32 noundef %key_is_priv) unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %tmpe = alloca %struct.engine_st*, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !20
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.engine_st** %tmpe to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store %struct.engine_st* null, %struct.engine_st** %tmpe, align 8, !tbaa !20
  %cmp1.not = icmp eq i8* %strtype, null
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %call = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef nonnull %tmpe, i8* noundef nonnull %strtype, i32 noundef -1) #12
  br label %if.end11

if.else:                                          ; preds = %if.then
  %cmp3.not = icmp eq i32 %nidtype, 0
  br i1 %cmp3.not, label %if.end11, label %if.then4

if.then4:                                         ; preds = %if.else
  %call5 = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find(%struct.engine_st** noundef nonnull %tmpe, i32 noundef %nidtype) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then2, %if.then4, %if.else
  %ameth.0 = phi %struct.evp_pkey_asn1_method_st* [ %call, %if.then2 ], [ %call5, %if.then4 ], [ null, %if.else ]
  %2 = load %struct.engine_st*, %struct.engine_st** %tmpe, align 8, !tbaa !20
  %cmp7 = icmp eq %struct.engine_st* %2, null
  %call10 = call i32 @ENGINE_finish(%struct.engine_st* noundef %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  %cmp13113 = icmp eq %struct.evp_pkey_asn1_method_st* %ameth.0, null
  %cmp13 = select i1 %cmp7, i1 true, i1 %cmp13113
  br i1 %cmp13, label %if.then14, label %if.end33

if.then14:                                        ; preds = %if.end11
  br i1 %cmp1.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then14
  %call16 = call i8* @OBJ_nid2sn(i32 noundef %nidtype) #12
  br label %cond.end

cond.end:                                         ; preds = %if.then14, %cond.false
  %cond = phi i8* [ %call16, %cond.false ], [ %strtype, %if.then14 ]
  %call17 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %cond, i8* noundef %propq) #12
  %cmp18 = icmp eq %struct.evp_pkey_ctx_st* %call17, null
  br i1 %cmp18, label %if.then75, label %if.end20

if.end20:                                         ; preds = %cond.end
  %call21 = call i32 @ERR_set_mark() #12
  %call22 = call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef nonnull %call17) #12
  %cmp23 = icmp eq i32 %call22, 1
  br i1 %cmp23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end20
  %3 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %3) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %call25 = call i32 @ERR_clear_last_mark() #12
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %tobool.not = icmp eq i32 %key_is_priv, 0
  %cond26 = select i1 %tobool.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)
  %params114 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params114, i8* noundef %cond26, i8* noundef %key, i64 noundef %len) #12
  %call27 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef nonnull %call17, %struct.evp_pkey_st** noundef nonnull %pkey, i32 noundef 135, %struct.ossl_param_st* noundef nonnull %arrayidx) #12
  %cmp28.not = icmp eq i32 %call27, 1
  br i1 %cmp28.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then24
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call17) #12
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #13
  br label %cleanup77

cleanup:                                          ; preds = %if.then24
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.new_raw_key_int, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 180, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #13
  %.pre = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !20
  br label %if.then75

if.end31:                                         ; preds = %if.end20
  %call32 = call i32 @ERR_pop_to_mark() #12
  br label %if.end33

if.end33:                                         ; preds = %entry, %if.end31, %if.end11
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call17, %if.end31 ], [ null, %if.end11 ], [ null, %entry ]
  %call34 = call %struct.evp_pkey_st* @EVP_PKEY_new() #14
  store %struct.evp_pkey_st* %call34, %struct.evp_pkey_st** %pkey, align 8, !tbaa !20
  %cmp35 = icmp eq %struct.evp_pkey_st* %call34, null
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.new_raw_key_int, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #12
  br label %if.then75

if.end37:                                         ; preds = %if.end33
  %call38 = call fastcc i32 @pkey_set_type(%struct.evp_pkey_st* noundef nonnull %call34, %struct.engine_st* noundef %e, i32 noundef %nidtype, i8* noundef %strtype, i32 noundef -1, %struct.evp_keymgmt_st* noundef null) #14
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then75, label %if.end41

if.end41:                                         ; preds = %if.end37
  %ameth42 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call34, i64 0, i32 2
  %5 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth42, align 8, !tbaa !13
  %cmp43.not = icmp eq %struct.evp_pkey_asn1_method_st* %5, null
  br i1 %cmp43.not, label %if.then75, label %if.end47

if.end47:                                         ; preds = %if.end41
  %tobool48.not = icmp eq i32 %key_is_priv, 0
  br i1 %tobool48.not, label %if.else61, label %if.then49

if.then49:                                        ; preds = %if.end47
  %set_priv_key = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %5, i64 0, i32 32
  %6 = load i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)** %set_priv_key, align 8, !tbaa !45
  %cmp51 = icmp eq i32 (%struct.evp_pkey_st*, i8*, i64)* %6, null
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.then49
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.new_raw_key_int, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #12
  br label %if.then75

if.end54:                                         ; preds = %if.then49
  %call57 = call i32 %6(%struct.evp_pkey_st* noundef nonnull %call34, i8* noundef %key, i64 noundef %len) #12
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end76

if.then59:                                        ; preds = %if.end54
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 459, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.new_raw_key_int, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 180, i8* noundef null) #12
  br label %if.then75

if.else61:                                        ; preds = %if.end47
  %set_pub_key = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %5, i64 0, i32 33
  %7 = load i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)** %set_pub_key, align 8, !tbaa !46
  %cmp63 = icmp eq i32 (%struct.evp_pkey_st*, i8*, i64)* %7, null
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.else61
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 464, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.new_raw_key_int, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #12
  br label %if.then75

if.end66:                                         ; preds = %if.else61
  %call69 = call i32 %7(%struct.evp_pkey_st* noundef nonnull %call34, i8* noundef %key, i64 noundef %len) #12
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %if.end76

if.then71:                                        ; preds = %if.end66
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 469, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.new_raw_key_int, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 180, i8* noundef null) #12
  br label %if.then75

if.then75:                                        ; preds = %cond.end, %cleanup, %if.then36, %if.then53, %if.then59, %if.then65, %if.then71, %if.end41, %if.end37
  %8 = phi %struct.evp_pkey_st* [ %call34, %if.end37 ], [ %call34, %if.end41 ], [ %call34, %if.then71 ], [ %call34, %if.then65 ], [ %call34, %if.then59 ], [ %call34, %if.then53 ], [ null, %if.then36 ], [ %.pre, %cleanup ], [ null, %cond.end ]
  %ctx.1.ph = phi %struct.evp_pkey_ctx_st* [ %ctx.0, %if.end37 ], [ %ctx.0, %if.end41 ], [ %ctx.0, %if.then71 ], [ %ctx.0, %if.then65 ], [ %ctx.0, %if.then59 ], [ %ctx.0, %if.then53 ], [ %ctx.0, %if.then36 ], [ %call17, %cleanup ], [ null, %cond.end ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %8) #14
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !20
  br label %if.end76

if.end76:                                         ; preds = %if.end66, %if.end54, %if.then75
  %ctx.1111 = phi %struct.evp_pkey_ctx_st* [ %ctx.1.ph, %if.then75 ], [ %ctx.0, %if.end66 ], [ %ctx.0, %if.end54 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.1111) #12
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !20
  br label %cleanup77

cleanup77:                                        ; preds = %cleanup.thread, %if.end76
  %retval.1 = phi %struct.evp_pkey_st* [ %9, %if.end76 ], [ %4, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret %struct.evp_pkey_st* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key(i32 noundef %type, %struct.engine_st* noundef %e, i8* noundef %priv, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @new_raw_key_int(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef %type, %struct.engine_st* noundef %e, i8* noundef %priv, i64 noundef %len, i32 noundef 1) #14
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @EVP_PKEY_new_raw_public_key_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %keytype, i8* noundef %propq, i8* noundef %pub, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @new_raw_key_int(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %keytype, i8* noundef %propq, i32 noundef 0, %struct.engine_st* noundef null, i8* noundef %pub, i64 noundef %len, i32 noundef 0) #14
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @EVP_PKEY_new_raw_public_key(i32 noundef %type, %struct.engine_st* noundef %e, i8* noundef %pub, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @new_raw_key_int(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef %type, %struct.engine_st* noundef %e, i8* noundef %pub, i64 noundef %len, i32 noundef 0) #14
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_raw_private_key(%struct.evp_pkey_st* noundef %pkey, i8* noundef %priv, i64* noundef %len) local_unnamed_addr #0 {
entry:
  %priv.addr = alloca i8*, align 8
  %raw_key = alloca %struct.raw_key_details_st, align 8
  store i8* %priv, i8** %priv.addr, align 8, !tbaa !20
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.raw_key_details_st* %raw_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #13
  %cmp1 = icmp eq i8* %priv, null
  %.priv.addr = select i1 %cmp1, i8** null, i8** %priv.addr
  %key = getelementptr inbounds %struct.raw_key_details_st, %struct.raw_key_details_st* %raw_key, i64 0, i32 0
  store i8** %.priv.addr, i8*** %key, align 8, !tbaa !47
  %len2 = getelementptr inbounds %struct.raw_key_details_st, %struct.raw_key_details_st* %raw_key, i64 0, i32 1
  store i64* %len, i64** %len2, align 8, !tbaa !49
  %selection = getelementptr inbounds %struct.raw_key_details_st, %struct.raw_key_details_st* %raw_key, i64 0, i32 2
  store i32 1, i32* %selection, align 8, !tbaa !50
  %call = call i32 @evp_keymgmt_util_export(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef 1, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @get_raw_key_details, i8* noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #13
  br label %return

if.end:                                           ; preds = %entry
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %2 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp3 = icmp eq %struct.evp_pkey_asn1_method_st* %2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 558, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.EVP_PKEY_get_raw_private_key, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #12
  br label %return

if.end5:                                          ; preds = %if.end
  %get_priv_key = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %2, i64 0, i32 34
  %3 = load i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)** %get_priv_key, align 8, !tbaa !51
  %cmp7 = icmp eq i32 (%struct.evp_pkey_st*, i8*, i64*)* %3, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 563, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.EVP_PKEY_get_raw_private_key, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #12
  br label %return

if.end9:                                          ; preds = %if.end5
  %call12 = tail call i32 %3(%struct.evp_pkey_st* noundef nonnull %pkey, i8* noundef %priv, i64* noundef %len) #12
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %return

if.then13:                                        ; preds = %if.end9
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 568, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.EVP_PKEY_get_raw_private_key, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 182, i8* noundef null) #12
  br label %return

return:                                           ; preds = %if.end9, %if.then13, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.then4 ], [ 0, %if.then8 ], [ 0, %if.then13 ], [ 1, %if.end9 ]
  ret i32 %retval.0
}

declare i32 @evp_keymgmt_util_export(%struct.evp_pkey_st* noundef, i32 noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_raw_key_details(%struct.ossl_param_st* noundef %params, i8* nocapture noundef readonly %arg) #0 {
entry:
  %selection = getelementptr inbounds i8, i8* %arg, i64 16
  %0 = bitcast i8* %selection to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !50
  switch i32 %1, label %cleanup [
    i32 1, label %if.then
    i32 2, label %if.then6
  ]

if.then:                                          ; preds = %entry
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #12
  %cmp1.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp1.not, label %cleanup, label %cleanup.sink.split

if.then6:                                         ; preds = %entry
  %call7 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #12
  %cmp8.not = icmp eq %struct.ossl_param_st* %call7, null
  br i1 %cmp8.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then6, %if.then
  %call7.sink = phi %struct.ossl_param_st* [ %call, %if.then ], [ %call7, %if.then6 ]
  %key10 = bitcast i8* %arg to i8***
  %2 = load i8**, i8*** %key10, align 8, !tbaa !47
  %len11 = getelementptr inbounds i8, i8* %arg, i64 8
  %3 = bitcast i8* %len11 to i64**
  %4 = load i64*, i64** %3, align 8, !tbaa !49
  %call12 = tail call i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef nonnull %call7.sink, i8** noundef %2, i64 noundef -1, i64* noundef %4) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then, %if.then6, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then6 ], [ 0, %if.then ], [ %call12, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_raw_public_key(%struct.evp_pkey_st* noundef %pkey, i8* noundef %pub, i64* noundef %len) local_unnamed_addr #0 {
entry:
  %pub.addr = alloca i8*, align 8
  %raw_key = alloca %struct.raw_key_details_st, align 8
  store i8* %pub, i8** %pub.addr, align 8, !tbaa !20
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.raw_key_details_st* %raw_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #13
  %cmp1 = icmp eq i8* %pub, null
  %.pub.addr = select i1 %cmp1, i8** null, i8** %pub.addr
  %key = getelementptr inbounds %struct.raw_key_details_st, %struct.raw_key_details_st* %raw_key, i64 0, i32 0
  store i8** %.pub.addr, i8*** %key, align 8, !tbaa !47
  %len2 = getelementptr inbounds %struct.raw_key_details_st, %struct.raw_key_details_st* %raw_key, i64 0, i32 1
  store i64* %len, i64** %len2, align 8, !tbaa !49
  %selection = getelementptr inbounds %struct.raw_key_details_st, %struct.raw_key_details_st* %raw_key, i64 0, i32 2
  store i32 2, i32* %selection, align 8, !tbaa !50
  %call = call i32 @evp_keymgmt_util_export(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef 2, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @get_raw_key_details, i8* noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #13
  br label %return

if.end:                                           ; preds = %entry
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %2 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp3 = icmp eq %struct.evp_pkey_asn1_method_st* %2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 590, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EVP_PKEY_get_raw_public_key, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #12
  br label %return

if.end5:                                          ; preds = %if.end
  %get_pub_key = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %2, i64 0, i32 35
  %3 = load i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)** %get_pub_key, align 8, !tbaa !52
  %cmp7 = icmp eq i32 (%struct.evp_pkey_st*, i8*, i64*)* %3, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 595, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EVP_PKEY_get_raw_public_key, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #12
  br label %return

if.end9:                                          ; preds = %if.end5
  %call12 = tail call i32 %3(%struct.evp_pkey_st* noundef nonnull %pkey, i8* noundef %pub, i64* noundef %len) #12
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %return

if.then13:                                        ; preds = %if.end9
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 600, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EVP_PKEY_get_raw_public_key, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 182, i8* noundef null) #12
  br label %return

return:                                           ; preds = %if.end9, %if.then13, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.then4 ], [ 0, %if.then8 ], [ 0, %if.then13 ], [ 1, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @EVP_PKEY_new_CMAC_key(%struct.engine_st* noundef %e, i8* noundef %priv, i64 noundef %len, %struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @new_cmac_key_int(i8* noundef %priv, i64 noundef %len, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef %e) #14
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @new_cmac_key_int(i8* noundef %priv, i64 noundef %len, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef %e) unnamed_addr #0 {
entry:
  %params = alloca [5 x %struct.ossl_param_st], align 16
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %tmp14 = alloca %struct.ossl_param_st, align 8
  %tmp23 = alloca %struct.ossl_param_st, align 8
  %tmp25 = alloca %struct.ossl_param_st, align 8
  %cmp.not = icmp eq %struct.engine_st* %e, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call i8* @ENGINE_get_id(%struct.engine_st* noundef nonnull %e) #12
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %entry ]
  %0 = bitcast [5 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %0) #13
  %arraydecay = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %1 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !20
  %cmp1.not = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp1.not, label %if.then4, label %if.end

if.end:                                           ; preds = %cond.end
  %call2 = tail call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %cipher) #12
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %cond.end, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 625, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.new_cmac_key_int, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 180, i8* noundef null) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef null) #12
  %cmp7 = icmp eq %struct.evp_pkey_ctx_st* %call6, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef nonnull %call6) #12
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 634, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.new_cmac_key_int, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 180, i8* noundef null) #12
  br label %err

if.end12:                                         ; preds = %if.end9
  %incdec.ptr = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params3 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef %priv, i64 noundef %len) #12
  %incdec.ptr13 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %2 = bitcast %struct.ossl_param_st* %tmp14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #13
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* noundef nonnull %call2, i64 noundef 0) #12
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #13
  %cmp20.not = icmp eq i8* %cond, null
  br i1 %cmp20.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end12
  %incdec.ptr22 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %4 = bitcast %struct.ossl_param_st* %tmp23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #13
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp23, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %cond, i64 noundef 0) #12
  %5 = bitcast %struct.ossl_param_st* %incdec.ptr13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #13
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end12
  %p.1 = phi %struct.ossl_param_st* [ %incdec.ptr22, %if.then21 ], [ %incdec.ptr13, %if.end12 ]
  %6 = bitcast %struct.ossl_param_st* %tmp25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp25) #12
  %7 = bitcast %struct.ossl_param_st* %p.1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #13
  %call27 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef nonnull %call6, %struct.evp_pkey_st** noundef nonnull %pkey, i32 noundef 135, %struct.ossl_param_st* noundef nonnull %arraydecay) #12
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %err

if.then29:                                        ; preds = %if.end24
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 653, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.new_cmac_key_int, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 180, i8* noundef null) #12
  br label %err

err:                                              ; preds = %if.end24, %if.end5, %if.then29, %if.then11
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call6) #12
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !20
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then4
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then4 ], [ %8, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %0) #13
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkey_set_type(%struct.evp_pkey_st* noundef %pkey, %struct.engine_st* noundef %e, i32 noundef %type, i8* noundef %str, i32 noundef %len, %struct.evp_keymgmt_st* noundef %keymgmt) unnamed_addr #0 {
entry:
  %e.addr = alloca %struct.engine_st*, align 8
  store %struct.engine_st* %e, %struct.engine_st** %e.addr, align 8, !tbaa !20
  %cmp = icmp eq %struct.engine_st* %e, null
  %e.addr. = select i1 %cmp, %struct.engine_st** %e.addr, %struct.engine_st** null
  %cmp1 = icmp eq i32 %type, 0
  %cmp2 = icmp eq %struct.evp_keymgmt_st* %keymgmt, null
  %0 = and i1 %cmp, %cmp1
  %or.cond140 = or i1 %0, %cmp2
  br i1 %or.cond140, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1483, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_set_type, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup90

if.end:                                           ; preds = %entry
  %cmp10.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp10.not, label %if.end36, label %lor.end15

lor.end15:                                        ; preds = %if.end
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5, i32 0
  %1 = load i8*, i8** %ptr, align 8, !tbaa !24
  %cmp14.not = icmp eq i8* %1, null
  br i1 %cmp14.not, label %lor.rhs18, label %if.then23

lor.rhs18:                                        ; preds = %lor.end15
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 14
  %2 = load i8*, i8** %keydata, align 8, !tbaa !22
  %cmp19.not = icmp eq i8* %2, null
  br i1 %cmp19.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %lor.end15, %lor.rhs18
  tail call fastcc void @evp_pkey_free_it(%struct.evp_pkey_st* noundef nonnull %pkey) #14
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %lor.rhs18
  %type25 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %3 = load i32, i32* %type25, align 8, !tbaa !18
  %cmp26.not = icmp eq i32 %3, 0
  br i1 %cmp26.not, label %if.end32, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end24
  %save_type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 1
  %4 = load i32, i32* %save_type, align 4, !tbaa !55
  %cmp27 = icmp eq i32 %4, %type
  br i1 %cmp27, label %land.lhs.true28, label %if.end32

land.lhs.true28:                                  ; preds = %land.lhs.true
  %ameth29 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %5 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth29, align 8, !tbaa !13
  %cmp30.not = icmp eq %struct.evp_pkey_asn1_method_st* %5, null
  br i1 %cmp30.not, label %if.end32, label %cleanup90

if.end32:                                         ; preds = %land.lhs.true28, %land.lhs.true, %if.end24
  %engine = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 3
  %6 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !56
  %call = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %6) #12
  store %struct.engine_st* null, %struct.engine_st** %engine, align 8, !tbaa !56
  %pmeth_engine = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 4
  %7 = load %struct.engine_st*, %struct.engine_st** %pmeth_engine, align 8, !tbaa !57
  %call34 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %7) #12
  store %struct.engine_st* null, %struct.engine_st** %pmeth_engine, align 8, !tbaa !57
  br label %if.end36

if.end36:                                         ; preds = %if.end32, %if.end
  %cmp37.not = icmp eq i8* %str, null
  br i1 %cmp37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end36
  %call39 = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef %e.addr., i8* noundef nonnull %str, i32 noundef %len) #12
  br label %if.end44

if.else:                                          ; preds = %if.end36
  br i1 %cmp1, label %if.end44, label %if.then41

if.then41:                                        ; preds = %if.else
  %call42 = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find(%struct.engine_st** noundef %e.addr., i32 noundef %type) #12
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then41, %if.then38
  %ameth.0 = phi %struct.evp_pkey_asn1_method_st* [ %call39, %if.then38 ], [ %call42, %if.then41 ], [ null, %if.else ]
  %or.cond = and i1 %cmp10.not, %cmp
  br i1 %or.cond, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end44
  %8 = load %struct.engine_st*, %struct.engine_st** %e.addr, align 8, !tbaa !20
  %call49 = call i32 @ENGINE_finish(%struct.engine_st* noundef %8) #12
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end44
  %cmp52 = icmp eq %struct.evp_pkey_asn1_method_st* %ameth.0, null
  %9 = and i1 %cmp2, %cmp52
  br i1 %9, label %cleanup61.thread, label %cleanup61

cleanup61.thread:                                 ; preds = %if.end50
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1534, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_set_type, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 156, i8* noundef null) #12
  br label %cleanup90

cleanup61:                                        ; preds = %if.end50
  br i1 %cmp10.not, label %cleanup90, label %if.then65

if.then65:                                        ; preds = %cleanup61
  br i1 %cmp2, label %if.then76, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %if.then65
  %call68 = call i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef nonnull %keymgmt) #12
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %if.end71

if.then70:                                        ; preds = %land.lhs.true67
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1540, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pkey_set_type, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup90

if.end71:                                         ; preds = %land.lhs.true67
  %keymgmt72 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  store %struct.evp_keymgmt_st* %keymgmt, %struct.evp_keymgmt_st** %keymgmt72, align 8, !tbaa !21
  %save_type73 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 1
  store i32 %type, i32* %save_type73, align 4, !tbaa !55
  %type74 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  store i32 %type, i32* %type74, align 8, !tbaa !18
  br label %if.end78

if.then76:                                        ; preds = %if.then65
  %keymgmt72144 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  store %struct.evp_keymgmt_st* null, %struct.evp_keymgmt_st** %keymgmt72144, align 8, !tbaa !21
  %save_type73145 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 1
  store i32 %type, i32* %save_type73145, align 4, !tbaa !55
  %type74146 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  store i32 %type, i32* %type74146, align 8, !tbaa !18
  %ameth77 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  store %struct.evp_pkey_asn1_method_st* %ameth.0, %struct.evp_pkey_asn1_method_st** %ameth77, align 8, !tbaa !13
  br label %if.end78

if.end78:                                         ; preds = %if.end71, %if.then76
  %type74147 = getelementptr %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %10 = load %struct.engine_st*, %struct.engine_st** %e.addr, align 8, !tbaa !20
  %engine79 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 3
  store %struct.engine_st* %10, %struct.engine_st** %engine79, align 8, !tbaa !56
  br i1 %cmp52, label %if.else86, label %if.then81

if.then81:                                        ; preds = %if.end78
  br i1 %cmp1, label %if.then83, label %cleanup90

if.then83:                                        ; preds = %if.then81
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth.0, i64 0, i32 0
  %11 = load i32, i32* %pkey_id, align 8, !tbaa !58
  store i32 %11, i32* %type74147, align 8, !tbaa !18
  br label %cleanup90

if.else86:                                        ; preds = %if.end78
  store i32 -1, i32* %type74147, align 8, !tbaa !18
  br label %cleanup90

cleanup90:                                        ; preds = %cleanup61.thread, %cleanup61, %if.then81, %if.then83, %if.else86, %land.lhs.true28, %if.then70, %if.then
  %retval.3 = phi i32 [ 0, %if.then70 ], [ 1, %cleanup61 ], [ 0, %if.then ], [ 1, %land.lhs.true28 ], [ 1, %if.else86 ], [ 1, %if.then83 ], [ 1, %if.then81 ], [ 0, %cleanup61.thread ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set_type_str(%struct.evp_pkey_st* noundef %pkey, i8* noundef %str, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @pkey_set_type(%struct.evp_pkey_st* noundef %pkey, %struct.engine_st* noundef null, i32 noundef 0, i8* noundef %str, i32 noundef %len, %struct.evp_keymgmt_st* noundef null) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set1_engine(%struct.evp_pkey_st* nocapture noundef %pkey, %struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.engine_st* %e, null
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @ENGINE_init(%struct.engine_st* noundef nonnull %e) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 688, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.EVP_PKEY_set1_engine, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524326, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %if.then
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  %call2 = tail call %struct.evp_pkey_method_st* @ENGINE_get_pkey_meth(%struct.engine_st* noundef nonnull %e, i32 noundef %0) #12
  %cmp3 = icmp eq %struct.evp_pkey_method_st* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef nonnull %e) #12
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 693, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.EVP_PKEY_set1_engine, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 156, i8* noundef null) #12
  br label %return

if.end7:                                          ; preds = %if.end, %entry
  %pmeth_engine = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 4
  %1 = load %struct.engine_st*, %struct.engine_st** %pmeth_engine, align 8, !tbaa !57
  %call8 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %1) #12
  store %struct.engine_st* %e, %struct.engine_st** %pmeth_engine, align 8, !tbaa !57
  br label %return

return:                                           ; preds = %if.end7, %if.then4, %if.then1
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.end7 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #3

declare %struct.evp_pkey_method_st* @ENGINE_get_pkey_meth(%struct.engine_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.engine_st* @EVP_PKEY_get0_engine(%struct.evp_pkey_st* nocapture noundef readonly %pkey) local_unnamed_addr #4 {
entry:
  %engine = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 3
  %0 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !56
  ret %struct.engine_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef %type, i8* noundef %key) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_type(i32 noundef %type) #14
  %cmp = icmp ne i8* %key, null
  br i1 %cmp, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %entry
  %cmp1 = icmp eq i32 %call, 408
  %cmp2 = icmp eq i32 %call, 1172
  switch i32 %call, label %if.end17 [
    i32 1172, label %if.then
    i32 408, label %if.then
  ]

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true
  %0 = bitcast i8* %key to %struct.ec_key_st*
  %call3 = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef nonnull %0) #12
  %cmp4.not = icmp eq %struct.ec_group_st* %call3, null
  br i1 %cmp4.not, label %if.end17, label %if.then5

if.then5:                                         ; preds = %if.then
  %call6 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef nonnull %call3) #12
  %cmp7 = icmp eq i32 %call6, 1172
  %or.cond25 = select i1 %cmp7, i1 %cmp1, i1 false
  br i1 %or.cond25, label %if.end17, label %if.else

if.else:                                          ; preds = %if.then5
  %cmp11 = icmp ne i32 %call6, 1172
  %or.cond26 = select i1 %cmp11, i1 %cmp2, i1 false
  %spec.select = select i1 %or.cond26, i32 408, i32 %type
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then, %if.then5, %land.lhs.true, %entry
  %type.addr.2 = phi i32 [ %type, %land.lhs.true ], [ %type, %entry ], [ %type, %if.then ], [ 1172, %if.then5 ], [ %spec.select, %if.else ]
  %cmp18 = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp18, label %cleanup, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end17
  %call20 = tail call i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef %type.addr.2) #14
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %lor.lhs.false19
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5, i32 0
  store i8* %key, i8** %ptr, align 8, !tbaa !24
  tail call fastcc void @detect_foreign_key(%struct.evp_pkey_st* noundef nonnull %pkey) #14
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false19, %if.end22
  %retval.0 = phi i32 [ %conv, %if.end22 ], [ 0, %lor.lhs.false19 ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_type(i32 noundef %type) local_unnamed_addr #0 {
entry:
  %e = alloca %struct.engine_st*, align 8
  %0 = bitcast %struct.engine_st** %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %call = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find(%struct.engine_st** noundef nonnull %e, i32 noundef %type) #12
  %tobool.not = icmp eq %struct.evp_pkey_asn1_method_st* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %call, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !58
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %ret.0 = phi i32 [ %1, %if.then ], [ 0, %entry ]
  %2 = load %struct.engine_st*, %struct.engine_st** %e, align 8, !tbaa !20
  %call1 = call i32 @ENGINE_finish(%struct.engine_st* noundef %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %ret.0
}

declare %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @detect_foreign_key(%struct.evp_pkey_st* nocapture noundef %pkey) unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  switch i32 %0, label %sw.default [
    i32 6, label %sw.bb
    i32 1172, label %sw.bb4
    i32 408, label %sw.bb4
    i32 116, label %sw.bb20
    i32 28, label %sw.bb36
  ]

sw.bb:                                            ; preds = %entry
  %pkey1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey1 to %struct.rsa_st**
  %1 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !24
  %cmp.not = icmp eq %struct.rsa_st* %1, null
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %sw.bb
  %call = tail call i32 @ossl_rsa_is_foreign(%struct.rsa_st* noundef nonnull %1) #12
  %tobool = icmp ne i32 %call, 0
  %phi.cast74 = zext i1 %tobool to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %2 = phi i8 [ 0, %sw.bb ], [ %phi.cast74, %land.rhs ]
  %foreign = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 11
  %bf.load = load i8, i8* %foreign, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %2
  store i8 %bf.set, i8* %foreign, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry, %entry
  %pkey5 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey5 to %struct.ec_key_st**
  %3 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !24
  %cmp6.not = icmp eq %struct.ec_key_st* %3, null
  br i1 %cmp6.not, label %land.end12, label %land.rhs7

land.rhs7:                                        ; preds = %sw.bb4
  %call10 = tail call i32 @ossl_ec_key_is_foreign(%struct.ec_key_st* noundef nonnull %3) #12
  %tobool11 = icmp ne i32 %call10, 0
  %phi.cast73 = zext i1 %tobool11 to i8
  br label %land.end12

land.end12:                                       ; preds = %land.rhs7, %sw.bb4
  %4 = phi i8 [ 0, %sw.bb4 ], [ %phi.cast73, %land.rhs7 ]
  %foreign14 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 11
  %bf.load15 = load i8, i8* %foreign14, align 4
  %bf.clear17 = and i8 %bf.load15, -2
  %bf.set18 = or i8 %bf.clear17, %4
  store i8 %bf.set18, i8* %foreign14, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %pkey21 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey21 to %struct.dsa_st**
  %5 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !24
  %cmp22.not = icmp eq %struct.dsa_st* %5, null
  br i1 %cmp22.not, label %land.end28, label %land.rhs23

land.rhs23:                                       ; preds = %sw.bb20
  %call26 = tail call i32 @ossl_dsa_is_foreign(%struct.dsa_st* noundef nonnull %5) #12
  %tobool27 = icmp ne i32 %call26, 0
  %phi.cast72 = zext i1 %tobool27 to i8
  br label %land.end28

land.end28:                                       ; preds = %land.rhs23, %sw.bb20
  %6 = phi i8 [ 0, %sw.bb20 ], [ %phi.cast72, %land.rhs23 ]
  %foreign30 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 11
  %bf.load31 = load i8, i8* %foreign30, align 4
  %bf.clear33 = and i8 %bf.load31, -2
  %bf.set34 = or i8 %bf.clear33, %6
  store i8 %bf.set34, i8* %foreign30, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %pkey37 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %dh = bitcast %union.legacy_pkey_st* %pkey37 to %struct.dh_st**
  %7 = load %struct.dh_st*, %struct.dh_st** %dh, align 8, !tbaa !24
  %cmp38.not = icmp eq %struct.dh_st* %7, null
  br i1 %cmp38.not, label %land.end44, label %land.rhs39

land.rhs39:                                       ; preds = %sw.bb36
  %call42 = tail call i32 @ossl_dh_is_foreign(%struct.dh_st* noundef nonnull %7) #12
  %tobool43 = icmp ne i32 %call42, 0
  %phi.cast = zext i1 %tobool43 to i8
  br label %land.end44

land.end44:                                       ; preds = %land.rhs39, %sw.bb36
  %8 = phi i8 [ 0, %sw.bb36 ], [ %phi.cast, %land.rhs39 ]
  %foreign46 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 11
  %bf.load47 = load i8, i8* %foreign46, align 4
  %bf.clear49 = and i8 %bf.load47, -2
  %bf.set50 = or i8 %bf.clear49, %8
  store i8 %bf.set50, i8* %foreign46, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %foreign52 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 11
  %bf.load53 = load i8, i8* %foreign52, align 4
  %bf.clear54 = and i8 %bf.load53, -2
  store i8 %bf.clear54, i8* %foreign52, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %land.end44, %land.end28, %land.end12, %land.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_PKEY_get0(%struct.evp_pkey_st* noundef readonly %pkey) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp1.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp1.not, label %if.then2, label %return

if.then2:                                         ; preds = %if.end
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5, i32 0
  %1 = load i8*, i8** %ptr, align 8, !tbaa !24
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i8* [ %1, %if.then2 ], [ null, %entry ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @EVP_PKEY_get0_hmac(%struct.evp_pkey_st* noundef %pkey, i64* nocapture noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  %cmp.not = icmp eq i32 %0, 855
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_PKEY_get0_hmac, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 174, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef nonnull %pkey) #14
  %cmp1.not = icmp eq i8* %call, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %length = bitcast i8* %call to i32*
  %1 = load i32, i32* %length, align 8, !tbaa !59
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %len, align 8, !tbaa !54
  %data = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %data to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !61
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %3, %if.then2 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef %pk) local_unnamed_addr #0 {
entry:
  %tmp_copy = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %tmp_copy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %tmp_copy, align 8, !tbaa !20
  %cmp.not = icmp eq %struct.evp_pkey_st* %pk, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 5, i32 0
  %1 = load i8*, i8** %ptr, align 8, !tbaa !24
  %cmp3.not = icmp eq i8* %1, null
  br i1 %cmp3.not, label %lor.lhs.false, label %if.end8

lor.lhs.false:                                    ; preds = %if.end
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 14
  %2 = load i8*, i8** %keydata, align 8, !tbaa !22
  %cmp5.not = icmp eq i8* %2, null
  br i1 %cmp5.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false, %if.end
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 13
  %3 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp9.not = icmp eq %struct.evp_keymgmt_st* %3, null
  br i1 %cmp9.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end8
  %lock = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 8
  %4 = load i8*, i8** %lock, align 8, !tbaa !36
  %call = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %4) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end14
  %ptr17 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 6, i32 0
  %5 = load i8*, i8** %ptr17, align 8, !tbaa !24
  %6 = load i8*, i8** %lock, align 8, !tbaa !36
  %call19 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %6) #12
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end16
  %cmp23.not = icmp eq i8* %5, null
  br i1 %cmp23.not, label %if.end26, label %cleanup

if.end26:                                         ; preds = %if.end22
  %call27 = call i32 @evp_pkey_copy_downgraded(%struct.evp_pkey_st** noundef nonnull %tmp_copy, %struct.evp_pkey_st* noundef nonnull %pk) #14
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup, label %if.end30

if.end30:                                         ; preds = %if.end26
  %7 = load i8*, i8** %lock, align 8, !tbaa !36
  %call32 = call i32 @CRYPTO_THREAD_write_lock(i8* noundef %7) #12
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end30
  %8 = load i8*, i8** %ptr17, align 8, !tbaa !24
  %cmp38 = icmp eq i8* %8, null
  br i1 %cmp38, label %if.then40, label %if.end47

if.then40:                                        ; preds = %if.end35
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %tmp_copy, align 8, !tbaa !20
  %ptr42 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %9, i64 0, i32 5, i32 0
  %10 = load i8*, i8** %ptr42, align 8, !tbaa !24
  store i8* %10, i8** %ptr17, align 8, !tbaa !24
  store i8* null, i8** %ptr42, align 8, !tbaa !24
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %if.end35
  %ret.0 = phi i8* [ %10, %if.then40 ], [ %8, %if.end35 ]
  %11 = load i8*, i8** %lock, align 8, !tbaa !36
  %call49 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %11) #12
  %tobool50.not = icmp eq i32 %call49, 0
  %spec.select = select i1 %tobool50.not, i8* null, i8* %ret.0
  br label %err

err:                                              ; preds = %if.end47, %if.end30
  %ret.1 = phi i8* [ null, %if.end30 ], [ %spec.select, %if.end47 ]
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %tmp_copy, align 8, !tbaa !20
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %12) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end26, %if.end22, %if.end16, %if.end14, %lor.lhs.false, %entry, %err
  %retval.0 = phi i8* [ %ret.1, %err ], [ null, %entry ], [ null, %lor.lhs.false ], [ null, %if.end14 ], [ null, %if.end16 ], [ %5, %if.end22 ], [ null, %if.end26 ], [ %1, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @EVP_PKEY_get0_poly1305(%struct.evp_pkey_st* noundef %pkey, i64* nocapture noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  %cmp.not = icmp eq i32 %0, 1061
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 806, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.EVP_PKEY_get0_poly1305, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 164, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef nonnull %pkey) #14
  %cmp1.not = icmp eq i8* %call, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %length = bitcast i8* %call to i32*
  %1 = load i32, i32* %length, align 8, !tbaa !59
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %len, align 8, !tbaa !54
  %data = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %data to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !61
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %3, %if.then2 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @EVP_PKEY_get0_siphash(%struct.evp_pkey_st* noundef %pkey, i64* nocapture noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  %cmp.not = icmp eq i32 %0, 1062
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 824, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.EVP_PKEY_get0_siphash, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 175, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef nonnull %pkey) #14
  %cmp1.not = icmp eq i8* %call, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %length = bitcast i8* %call to i32*
  %1 = load i32, i32* %length, align 8, !tbaa !59
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %len, align 8, !tbaa !54
  %data = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %data to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !61
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %3, %if.then2 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.dsa_st* @evp_pkey_get0_DSA_int(%struct.evp_pkey_st* noundef %pkey) #14
  ret %struct.dsa_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.dsa_st* @evp_pkey_get0_DSA_int(%struct.evp_pkey_st* noundef %pkey) unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  %cmp.not = icmp eq i32 %0, 116
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 840, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_pkey_get0_DSA_int, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 129, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef nonnull %pkey) #14
  %1 = bitcast i8* %call to %struct.dsa_st*
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.dsa_st* [ null, %if.then ], [ %1, %if.end ]
  ret %struct.dsa_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set1_DSA(%struct.evp_pkey_st* noundef %pkey, %struct.dsa_st* noundef %key) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st* %key to i8*
  %call = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 116, i8* noundef %0) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @DSA_up_ref(%struct.dsa_st* noundef %key) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

declare i32 @DSA_up_ref(%struct.dsa_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @EVP_PKEY_get1_DSA(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.dsa_st* @evp_pkey_get0_DSA_int(%struct.evp_pkey_st* noundef %pkey) #14
  %cmp.not = icmp eq %struct.dsa_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @DSA_up_ref(%struct.dsa_st* noundef nonnull %call) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.dsa_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ecx_key_st* @ossl_evp_pkey_get1_X25519(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ecx_key_st* @evp_pkey_get1_ECX_KEY(%struct.evp_pkey_st* noundef %pkey, i32 noundef 1034) #14
  ret %struct.ecx_key_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ecx_key_st* @evp_pkey_get1_ECX_KEY(%struct.evp_pkey_st* noundef %pkey, i32 noundef %type) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ecx_key_st* @evp_pkey_get0_ECX_KEY(%struct.evp_pkey_st* noundef %pkey, i32 noundef %type) #14
  %cmp.not = icmp eq %struct.ecx_key_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @ossl_ecx_key_up_ref(%struct.ecx_key_st* noundef nonnull %call) #12
  %tobool.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool.not, %struct.ecx_key_st* null, %struct.ecx_key_st* %call
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %ret.0 = phi %struct.ecx_key_st* [ null, %entry ], [ %spec.select, %land.lhs.true ]
  ret %struct.ecx_key_st* %ret.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ecx_key_st* @ossl_evp_pkey_get1_X448(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ecx_key_st* @evp_pkey_get1_ECX_KEY(%struct.evp_pkey_st* noundef %pkey, i32 noundef 1035) #14
  ret %struct.ecx_key_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ecx_key_st* @ossl_evp_pkey_get1_ED25519(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ecx_key_st* @evp_pkey_get1_ECX_KEY(%struct.evp_pkey_st* noundef %pkey, i32 noundef 1087) #14
  ret %struct.ecx_key_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ecx_key_st* @ossl_evp_pkey_get1_ED448(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ecx_key_st* @evp_pkey_get1_ECX_KEY(%struct.evp_pkey_st* noundef %pkey, i32 noundef 1088) #14
  ret %struct.ecx_key_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set1_DH(%struct.evp_pkey_st* noundef %pkey, %struct.dh_st* noundef %dhkey) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_dh_is_named_safe_prime_group(%struct.dh_st* noundef %dhkey) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %call1 = tail call %struct.bignum_st* @DH_get0_q(%struct.dh_st* noundef %dhkey) #12
  %cmp = icmp eq %struct.bignum_st* %call1, null
  %cond = select i1 %cmp, i32 28, i32 920
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %type.0 = phi i32 [ %cond, %if.else ], [ 28, %entry ]
  %0 = bitcast %struct.dh_st* %dhkey to i8*
  %call2 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef %type.0, i8* noundef %0) #14
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @DH_up_ref(%struct.dh_st* noundef %dhkey) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  ret i32 %call2
}

declare i32 @ossl_dh_is_named_safe_prime_group(%struct.dh_st* noundef) local_unnamed_addr #3

declare %struct.bignum_st* @DH_get0_q(%struct.dh_st* noundef) local_unnamed_addr #3

declare i32 @DH_up_ref(%struct.dh_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @evp_pkey_get0_DH_int(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  switch i32 %0, label %if.then [
    i32 28, label %if.end
    i32 920, label %if.end
  ]

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 939, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.evp_pkey_get0_DH_int, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 128, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %entry, %entry
  %call = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef nonnull %pkey) #14
  %1 = bitcast i8* %call to %struct.dh_st*
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.dh_st* [ null, %if.then ], [ %1, %if.end ]
  ret %struct.dh_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.dh_st* @evp_pkey_get0_DH_int(%struct.evp_pkey_st* noundef %pkey) #14
  ret %struct.dh_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @EVP_PKEY_get1_DH(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.dh_st* @evp_pkey_get0_DH_int(%struct.evp_pkey_st* noundef %pkey) #14
  %cmp.not = icmp eq %struct.dh_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @DH_up_ref(%struct.dh_st* noundef nonnull %call) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.dh_st* %call
}

declare %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find(%struct.engine_st** noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* nocapture noundef readonly %pkey) local_unnamed_addr #4 {
entry:
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* nocapture noundef readonly %pkey) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  %call = tail call i32 @EVP_PKEY_type(i32 noundef %0) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_pkey_name2type(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #15
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.inc.10, %for.inc.9, %for.inc.8, %for.inc.7, %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %entry
  %i.019.lcssa = phi i64 [ 0, %entry ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ], [ 7, %for.inc.6 ], [ 8, %for.inc.7 ], [ 9, %for.inc.8 ], [ 10, %for.inc.9 ], [ 11, %for.inc.10 ]
  %id = getelementptr inbounds [12 x %struct.ossl_item_st], [12 x %struct.ossl_item_st]* @standard_name2type, i64 0, i64 %i.019.lcssa, i32 0
  %0 = load i32, i32* %id, align 16, !tbaa !62
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0)) #15
  %cmp1.1 = icmp eq i32 %call.1, 0
  br i1 %cmp1.1, label %if.then, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #15
  %cmp1.2 = icmp eq i32 %call.2, 0
  br i1 %cmp1.2, label %if.then, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0)) #15
  %cmp1.3 = icmp eq i32 %call.3, 0
  br i1 %cmp1.3, label %if.then, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #15
  %cmp1.4 = icmp eq i32 %call.4, 0
  br i1 %cmp1.4, label %if.then, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #15
  %cmp1.5 = icmp eq i32 %call.5, 0
  br i1 %cmp1.5, label %if.then, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #15
  %cmp1.6 = icmp eq i32 %call.6, 0
  br i1 %cmp1.6, label %if.then, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %call.7 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0)) #15
  %cmp1.7 = icmp eq i32 %call.7, 0
  br i1 %cmp1.7, label %if.then, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %call.8 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0)) #15
  %cmp1.8 = icmp eq i32 %call.8, 0
  br i1 %cmp1.8, label %if.then, label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %call.9 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0)) #15
  %cmp1.9 = icmp eq i32 %call.9, 0
  br i1 %cmp1.9, label %if.then, label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  %call.10 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)) #15
  %cmp1.10 = icmp eq i32 %call.10, 0
  br i1 %cmp1.10, label %if.then, label %for.inc.10

for.inc.10:                                       ; preds = %for.inc.9
  %call.11 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)) #15
  %cmp1.11 = icmp eq i32 %call.11, 0
  br i1 %cmp1.11, label %if.then, label %for.inc.11

for.inc.11:                                       ; preds = %for.inc.10
  %call3 = tail call i32 @OBJ_sn2nid(i8* noundef %name) #12
  %call4 = tail call i32 @EVP_PKEY_type(i32 noundef %call3) #14
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %for.inc.11
  %call8 = tail call i32 @OBJ_ln2nid(i8* noundef %name) #12
  %call9 = tail call i32 @EVP_PKEY_type(i32 noundef %call8) #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.11, %if.end7, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call9, %if.end7 ], [ %call4, %for.inc.11 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare i32 @OBJ_sn2nid(i8* noundef) local_unnamed_addr #3

declare i32 @OBJ_ln2nid(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i8* @evp_pkey_type2name(i32 noundef %type) local_unnamed_addr #0 {
entry:
  switch i32 %type, label %for.inc.11 [
    i32 6, label %if.then
    i32 912, label %if.then.fold.split
    i32 408, label %if.then.fold.split11
    i32 1087, label %if.then.fold.split12
    i32 1088, label %if.then.fold.split13
    i32 1034, label %if.then.fold.split14
    i32 1035, label %if.then.fold.split15
    i32 1172, label %if.then.fold.split16
    i32 28, label %if.then.fold.split17
    i32 920, label %if.then.fold.split18
    i32 116, label %if.then.fold.split19
  ]

if.then.fold.split:                               ; preds = %entry
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %entry, %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split
  %i.09.lcssa = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split11 ], [ 3, %if.then.fold.split12 ], [ 4, %if.then.fold.split13 ], [ 5, %if.then.fold.split14 ], [ 6, %if.then.fold.split15 ], [ 7, %if.then.fold.split16 ], [ 8, %if.then.fold.split17 ], [ 9, %if.then.fold.split18 ], [ 11, %if.then.fold.split19 ]
  %ptr = getelementptr inbounds [12 x %struct.ossl_item_st], [12 x %struct.ossl_item_st]* @standard_name2type, i64 0, i64 %i.09.lcssa, i32 1
  %0 = load i8*, i8** %ptr, align 8, !tbaa !64
  br label %cleanup

for.inc.11:                                       ; preds = %entry
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %type) #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.11, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ %call, %for.inc.11 ]
  ret i8* %retval.0
}

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* nocapture noundef readonly %pkey, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @evp_pkey_name2type(i8* noundef %name) #14
  %type1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %1 = load i32, i32* %type1, align 8, !tbaa !18
  %cmp2 = icmp eq i32 %1, %call
  %conv = zext i1 %cmp2 to i32
  br label %return

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef nonnull %0, i8* noundef %name) #12
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

declare i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_type_names_do_all(%struct.evp_pkey_st* nocapture noundef readonly %pkey, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  %cmp.not = icmp eq i32 %0, 0
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp1.not = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %entry
  br i1 %cmp1.not, label %return, label %if.end6

if.end:                                           ; preds = %entry
  br i1 %cmp1.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %pkey) #14
  %call5 = tail call i8* @OBJ_nid2sn(i32 noundef %call) #12
  tail call void %fn(i8* noundef %call5, i8* noundef %data) #12
  br label %return

if.end6:                                          ; preds = %lor.lhs.false, %if.end
  %call8 = tail call i32 @EVP_KEYMGMT_names_do_all(%struct.evp_keymgmt_st* noundef nonnull %1, void (i8*, i8*)* noundef %fn, i8* noundef %data) #12
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.end6, %if.then4
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ 1, %if.then4 ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

declare i32 @EVP_KEYMGMT_names_do_all(%struct.evp_keymgmt_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_can_sign(%struct.evp_pkey_st* nocapture noundef readonly %pkey) local_unnamed_addr #0 {
entry:
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef nonnull %pkey) #14
  switch i32 %call, label %if.end22 [
    i32 6, label %return
    i32 116, label %return
    i32 1087, label %return
    i32 1088, label %return
    i32 408, label %sw.bb3
  ]

sw.bb3:                                           ; preds = %if.then
  %pkey4 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey4 to %struct.ec_key_st**
  %1 = load %struct.ec_key_st*, %struct.ec_key_st** %ec, align 8, !tbaa !24
  %call5 = tail call i32 @EC_KEY_can_sign(%struct.ec_key_st* noundef %1) #12
  br label %return

if.else:                                          ; preds = %entry
  %call7 = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef nonnull %0) #12
  %call8 = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %call7) #12
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %query_operation_name = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %2, i64 0, i32 20
  %3 = load i8* (i32)*, i8* (i32)** %query_operation_name, align 8, !tbaa !65
  %cmp10.not = icmp eq i8* (i32)* %3, null
  br i1 %cmp10.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %call13 = tail call i8* %3(i32 noundef 12) #12
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call15 = tail call i8* @EVP_KEYMGMT_get0_name(%struct.evp_keymgmt_st* noundef nonnull %2) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call13, %cond.true ], [ %call15, %cond.false ]
  %call16 = tail call %struct.evp_signature_st* @EVP_SIGNATURE_fetch(%struct.ossl_lib_ctx_st* noundef %call8, i8* noundef %cond, i8* noundef null) #12
  %cmp17.not = icmp eq %struct.evp_signature_st* %call16, null
  br i1 %cmp17.not, label %if.end22, label %cleanup

cleanup:                                          ; preds = %cond.end
  tail call void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef nonnull %call16) #12
  br label %return

if.end22:                                         ; preds = %cond.end, %if.then
  br label %return

return:                                           ; preds = %cleanup, %if.then, %if.then, %if.then, %if.then, %if.end22, %sw.bb3
  %retval.1 = phi i32 [ 0, %if.end22 ], [ %call5, %sw.bb3 ], [ 1, %cleanup ], [ 1, %if.then ], [ 1, %if.then ], [ 1, %if.then ], [ 1, %if.then ]
  ret i32 %retval.1
}

declare i32 @EC_KEY_can_sign(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare i8* @EVP_KEYMGMT_get0_name(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare %struct.evp_signature_st* @EVP_SIGNATURE_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_print_public(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %pkey, i32 noundef %indent, %struct.asn1_pctx_st* noundef %pctx) local_unnamed_addr #0 {
entry:
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp.not = icmp eq %struct.evp_pkey_asn1_method_st* %0, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %pub_print = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 8
  %1 = load i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)** %pub_print, align 8, !tbaa !66
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* [ %1, %cond.true ], [ null, %entry ]
  %call = tail call fastcc i32 @print_pkey(%struct.evp_pkey_st* noundef nonnull %pkey, %struct.bio_st* noundef %out, i32 noundef %indent, i32 noundef 134, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef %cond, %struct.asn1_pctx_st* noundef %pctx) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @print_pkey(%struct.evp_pkey_st* noundef %pkey, %struct.bio_st* noundef %out, i32 noundef %indent, i32 noundef %selection, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef readonly %legacy_print, %struct.asn1_pctx_st* noundef %legacy_pctx) unnamed_addr #0 {
entry:
  %out.addr = alloca %struct.bio_st*, align 8
  %pop_f_prefix = alloca i32, align 4
  %saved_indent = alloca i64, align 8
  store %struct.bio_st* %out, %struct.bio_st** %out.addr, align 8, !tbaa !20
  %0 = bitcast i32* %pop_f_prefix to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %1 = bitcast i64* %saved_indent to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %conv = sext i32 %indent to i64
  %call = call fastcc i32 @print_set_indent(%struct.bio_st** noundef nonnull %out.addr, i32* noundef nonnull %pop_f_prefix, i64* noundef nonnull %saved_indent, i64 noundef %conv) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %pkey, i32 noundef %selection, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* noundef null, i8* noundef null) #12
  %call2 = tail call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef %call1) #12
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end6.thread, label %if.end6

if.end6.thread:                                   ; preds = %if.end
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call1) #12
  br label %if.end10

if.end6:                                          ; preds = %if.end
  %2 = load %struct.bio_st*, %struct.bio_st** %out.addr, align 8, !tbaa !20
  %call5 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call1, %struct.bio_st* noundef %2) #12
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call1) #12
  %cmp7.not = icmp eq i32 %call5, -2
  br i1 %cmp7.not, label %if.end10, label %end

if.end10:                                         ; preds = %if.end6.thread, %if.end6
  %cmp11.not = icmp eq i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* %legacy_print, null
  %3 = load %struct.bio_st*, %struct.bio_st** %out.addr, align 8, !tbaa !20
  br i1 %cmp11.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  %call14 = tail call i32 %legacy_print(%struct.bio_st* noundef %3, %struct.evp_pkey_st* noundef %pkey, i32 noundef 0, %struct.asn1_pctx_st* noundef %legacy_pctx) #12
  br label %end

if.else:                                          ; preds = %if.end10
  %call15 = tail call fastcc i32 @unsup_alg(%struct.bio_st* noundef %3, %struct.evp_pkey_st* noundef %pkey) #14
  br label %end

end:                                              ; preds = %if.then13, %if.else, %if.end6
  %ret.1 = phi i32 [ %call5, %if.end6 ], [ %call14, %if.then13 ], [ %call15, %if.else ]
  %4 = load i32, i32* %pop_f_prefix, align 4, !tbaa !41
  %5 = load i64, i64* %saved_indent, align 8, !tbaa !54
  call fastcc void @print_reset_indent(%struct.bio_st** noundef nonnull %out.addr, i32 noundef %4, i64 noundef %5) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %ret.1, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_print_private(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %pkey, i32 noundef %indent, %struct.asn1_pctx_st* noundef %pctx) local_unnamed_addr #0 {
entry:
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp.not = icmp eq %struct.evp_pkey_asn1_method_st* %0, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %priv_print = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 11
  %1 = load i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)** %priv_print, align 8, !tbaa !67
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* [ %1, %cond.true ], [ null, %entry ]
  %call = tail call fastcc i32 @print_pkey(%struct.evp_pkey_st* noundef nonnull %pkey, %struct.bio_st* noundef %out, i32 noundef %indent, i32 noundef 135, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef %cond, %struct.asn1_pctx_st* noundef %pctx) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_print_params(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %pkey, i32 noundef %indent, %struct.asn1_pctx_st* noundef %pctx) local_unnamed_addr #0 {
entry:
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp.not = icmp eq %struct.evp_pkey_asn1_method_st* %0, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %param_print = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 20
  %1 = load i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)** %param_print, align 8, !tbaa !68
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* [ %1, %cond.true ], [ null, %entry ]
  %call = tail call fastcc i32 @print_pkey(%struct.evp_pkey_st* noundef nonnull %pkey, %struct.bio_st* noundef %out, i32 noundef %indent, i32 noundef 132, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef %cond, %struct.asn1_pctx_st* noundef %pctx) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_print_public_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %pkey, i32 noundef %indent, %struct.asn1_pctx_st* noundef %pctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %fp, i32 noundef 0) #12
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_print_public(%struct.bio_st* noundef nonnull %call, %struct.evp_pkey_st* noundef %pkey, i32 noundef %indent, %struct.asn1_pctx_st* noundef %pctx) #14
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_print_private_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %pkey, i32 noundef %indent, %struct.asn1_pctx_st* noundef %pctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %fp, i32 noundef 0) #12
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_print_private(%struct.bio_st* noundef nonnull %call, %struct.evp_pkey_st* noundef %pkey, i32 noundef %indent, %struct.asn1_pctx_st* noundef %pctx) #14
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_print_params_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %pkey, i32 noundef %indent, %struct.asn1_pctx_st* noundef %pctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %fp, i32 noundef 0) #12
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_print_params(%struct.bio_st* noundef nonnull %call, %struct.evp_pkey_st* noundef %pkey, i32 noundef %indent, %struct.asn1_pctx_st* noundef %pctx) #14
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_default_digest_nid(%struct.evp_pkey_st* noundef %pkey, i32* noundef %pnid) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32* %pnid to i8*
  %call = tail call fastcc i32 @evp_pkey_asn1_ctrl(%struct.evp_pkey_st* noundef %pkey, i32 noundef 3, i32 noundef 0, i8* noundef %0) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_asn1_ctrl(%struct.evp_pkey_st* noundef %pkey, i32 noundef %op, i32 noundef %arg1, i8* noundef %arg2) unnamed_addr #0 {
entry:
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp = icmp eq %struct.evp_pkey_asn1_method_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @legacy_asn1_ctrl_to_param(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef %op, i8* noundef %arg2) #14
  br label %return

if.end:                                           ; preds = %entry
  %pkey_ctrl = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 23
  %1 = load i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)** %pkey_ctrl, align 8, !tbaa !69
  %cmp2 = icmp eq i32 (%struct.evp_pkey_st*, i32, i64, i8*)* %1, null
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %2 = zext i32 %arg1 to i64
  %call7 = tail call i32 %1(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef %op, i64 noundef %2, i8* noundef %arg2) #12
  br label %return

return:                                           ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call7, %if.end4 ], [ -2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_default_digest_name(%struct.evp_pkey_st* noundef %pkey, i8* noundef %mdname, i64 noundef %mdname_sz) local_unnamed_addr #0 {
entry:
  %nid = alloca i32, align 4
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp = icmp eq %struct.evp_pkey_asn1_method_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 14
  %2 = load i8*, i8** %keydata, align 8, !tbaa !22
  %call = tail call i32 @evp_keymgmt_util_get_deflt_digest_name(%struct.evp_keymgmt_st* noundef %1, i8* noundef %2, i8* noundef %mdname, i64 noundef %mdname_sz) #12
  br label %return

if.end:                                           ; preds = %entry
  %3 = bitcast i32* %nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13
  store i32 0, i32* %nid, align 4, !tbaa !41
  %call1 = call i32 @EVP_PKEY_get_default_digest_nid(%struct.evp_pkey_st* noundef nonnull %pkey, i32* noundef nonnull %nid) #14
  %cmp2 = icmp sgt i32 %call1, 0
  br i1 %cmp2, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %4 = load i32, i32* %nid, align 4, !tbaa !41
  %call3 = call i8* @OBJ_nid2sn(i32 noundef %4) #12
  %call6 = call i64 @OPENSSL_strlcpy(i8* noundef %mdname, i8* noundef %call3, i64 noundef %mdname_sz) #12
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13
  br label %return

return:                                           ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end7 ]
  ret i32 %retval.0
}

declare i32 @evp_keymgmt_util_get_deflt_digest_name(%struct.evp_keymgmt_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_group_name(%struct.evp_pkey_st* noundef %pkey, i8* noundef %gname, i64 noundef %gname_sz, i64* noundef %gname_len) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %pkey, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef %gname, i64 noundef %gname_sz, i64* noundef %gname_len) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %pkey, i8* noundef %key_name, i8* noundef %str, i64 noundef %max_buf_sz, i64* noundef writeonly %out_len) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %cmp = icmp eq i8* %key_name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params56 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params56, i8* noundef nonnull %key_name, i8* noundef %str, i64 noundef %max_buf_sz) #12
  %arrayidx1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %1 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #12
  %2 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #13
  %call = call i32 @EVP_PKEY_get_params(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end26, label %if.end6

if.end6:                                          ; preds = %if.end
  %call5 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx) #12
  %phi.cmp = icmp ne i32 %call5, 0
  %cmp8 = icmp ne i64* %out_len, null
  %or.cond = and i1 %cmp8, %phi.cmp
  %return_size = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 4
  %3 = load i64, i64* %return_size, align 16
  br i1 %or.cond, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  store i64 %3, i64* %out_len, align 8, !tbaa !54
  br label %if.end11

if.end11:                                         ; preds = %if.end6, %if.then9
  %cmp16 = icmp eq i64 %3, %max_buf_sz
  %or.cond42 = select i1 %phi.cmp, i1 %cmp16, i1 false
  br i1 %or.cond42, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end11
  %cmp21 = icmp ne i8* %str, null
  %or.cond31 = and i1 %cmp21, %phi.cmp
  br i1 %or.cond31, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end18
  %arrayidx25 = getelementptr inbounds i8, i8* %str, i64 %3
  store i8 0, i8* %arrayidx25, align 1, !tbaa !24
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then22, %if.end18
  %ret2.0465155 = phi i1 [ true, %if.then22 ], [ %phi.cmp, %if.end18 ], [ false, %if.end ]
  %land.ext = zext i1 %ret2.0465155 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry, %if.end26
  %retval.0 = phi i32 [ %land.ext, %if.end26 ], [ 0, %entry ], [ 0, %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_digestsign_supports_digest(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #12
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ERR_set_mark() #12
  %call2 = tail call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_pkey_ctx_st** noundef null, i8* noundef %name, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef null) #12
  %call3 = tail call i32 @ERR_pop_to_mark() #12
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #3

declare i32 @ERR_set_mark() local_unnamed_addr #3

declare i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare i32 @ERR_pop_to_mark() local_unnamed_addr #3

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef %pkey, i8* noundef %pub, i64 noundef %publen) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp1.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @EVP_PKEY_set_octet_string_param(%struct.evp_pkey_st* noundef nonnull %pkey, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* noundef %pub, i64 noundef %publen) #14
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp2 = icmp ugt i64 %publen, 2147483647
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %conv = trunc i64 %publen to i32
  %call5 = tail call fastcc i32 @evp_pkey_asn1_ctrl(%struct.evp_pkey_st* noundef %pkey, i32 noundef 9, i32 noundef %conv, i8* noundef %pub) #14
  %cmp6 = icmp sgt i32 %call5, 0
  %. = zext i1 %cmp6 to i32
  br label %return

return:                                           ; preds = %if.end4, %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set_octet_string_param(%struct.evp_pkey_st* noundef %pkey, i8* noundef %key_name, i8* noundef %buf, i64 noundef %bsize) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %cmp = icmp eq i8* %key_name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params4 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params4, i8* noundef nonnull %key_name, i8* noundef %buf, i64 noundef %bsize) #12
  %arrayidx1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %1 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #12
  %2 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #13
  %call = call i32 @EVP_PKEY_set_params(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @EVP_PKEY_get1_encoded_public_key(%struct.evp_pkey_st* noundef %pkey, i8** noundef %ppub) local_unnamed_addr #0 {
entry:
  %return_size = alloca i64, align 8
  %cmp.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp1.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp1.not, label %if.end11, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %1 = bitcast i64* %return_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store i64 -1, i64* %return_size, align 8, !tbaa !54
  %call = call i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef nonnull %pkey, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* noundef null, i64 noundef 0, i64* noundef nonnull %return_size) #14
  %2 = load i64, i64* %return_size, align 8, !tbaa !54
  %cmp2 = icmp eq i64 %2, -1
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call4 = call i8* @CRYPTO_malloc(i64 noundef %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1400) #12
  store i8* %call4, i8** %ppub, align 8, !tbaa !20
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %3 = load i64, i64* %return_size, align 8, !tbaa !54
  %call8 = call i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef nonnull %pkey, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %call4, i64 noundef %3, i64* noundef null) #14
  %tobool.not = icmp eq i32 %call8, 0
  %4 = load i64, i64* %return_size, align 8
  %spec.select = select i1 %tobool.not, i64 0, i64 %4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ 0, %if.end ], [ %spec.select, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  br label %cleanup16

if.end11:                                         ; preds = %land.lhs.true, %entry
  %5 = bitcast i8** %ppub to i8*
  %call12 = tail call fastcc i32 @evp_pkey_asn1_ctrl(%struct.evp_pkey_st* noundef %pkey, i32 noundef 10, i32 noundef 0, i8* noundef %5) #14
  %conv = sext i32 %call12 to i64
  %cmp13 = icmp sgt i64 %conv, 0
  %spec.select26 = select i1 %cmp13, i64 %conv, i64 0
  br label %cleanup16

cleanup16:                                        ; preds = %if.end11, %cleanup
  %retval.1 = phi i64 [ %retval.0, %cleanup ], [ %spec.select26, %if.end11 ]
  ret i64 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef %pkey, i8* noundef %key_name, i8* noundef %buf, i64 noundef %max_buf_sz, i64* noundef writeonly %out_len) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %cmp = icmp eq i8* %key_name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params25 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params25, i8* noundef nonnull %key_name, i8* noundef %buf, i64 noundef %max_buf_sz) #12
  %arrayidx1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %1 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #12
  %2 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #13
  %call = call i32 @EVP_PKEY_get_params(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %if.end6

if.end6:                                          ; preds = %if.end
  %call5 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx) #12
  %phi.cmp = icmp ne i32 %call5, 0
  %cmp8 = icmp ne i64* %out_len, null
  %or.cond = and i1 %cmp8, %phi.cmp
  br i1 %or.cond, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %return_size = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 4
  %3 = load i64, i64* %return_size, align 16, !tbaa !70
  store i64 %3, i64* %out_len, align 8, !tbaa !54
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then9, %if.end6
  %ret2.024 = phi i1 [ true, %if.then9 ], [ %phi.cmp, %if.end6 ], [ false, %if.end ]
  %land.ext = zext i1 %ret2.024 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11
  %retval.0 = phi i32 [ %land.ext, %if.end11 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 152, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1424) #12
  %0 = bitcast i8* %call to %struct.evp_pkey_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1427, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EVP_PKEY_new, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = bitcast i8* %call to i32*
  store i32 0, i32* %type, align 8, !tbaa !18
  %save_type = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %save_type to i32*
  store i32 0, i32* %1, align 4, !tbaa !55
  %references = getelementptr inbounds i8, i8* %call, i64 48
  %2 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %2 seq_cst, align 4, !tbaa !72
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #12
  %lock = getelementptr inbounds i8, i8* %call, i64 56
  %3 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %3, align 8, !tbaa !36
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %save_parameters = getelementptr inbounds i8, i8* %call, i64 72
  %4 = bitcast i8* %save_parameters to i32*
  store i32 1, i32* %4, align 8, !tbaa !19
  %ex_data = getelementptr inbounds i8, i8* %call, i64 80
  %5 = bitcast i8* %ex_data to %struct.crypto_ex_data_st*
  %call6 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 17, i8* noundef nonnull %call, %struct.crypto_ex_data_st* noundef nonnull %5) #12
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end5, %if.end
  %.sink = phi i32 [ 1437, %if.end ], [ 1444, %if.end5 ]
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EVP_PKEY_new, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #12
  %6 = load i8*, i8** %3, align 8, !tbaa !36
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %6) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1452) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %err, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ null, %err ], [ %0, %if.end5 ]
  ret %struct.evp_pkey_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #3

declare i32 @CRYPTO_new_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define internal void @find_ameth(i8* noundef %name, i8* nocapture noundef %data) #0 {
entry:
  %0 = bitcast i8* %data to i8**
  %call = tail call i32 @ERR_set_mark() #12
  %call1 = tail call i64 @strlen(i8* noundef %name) #15
  %conv = trunc i64 %call1 to i32
  %call2 = tail call fastcc i32 @pkey_set_type(%struct.evp_pkey_st* noundef null, %struct.engine_st* noundef null, i32 noundef 0, i8* noundef %name, i32 noundef %conv, %struct.evp_keymgmt_st* noundef null) #14
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %0, align 8, !tbaa !20
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.end12.sink.split, label %if.else

if.else:                                          ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %data, i64 8
  %2 = bitcast i8* %arrayidx6 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !20
  %cmp7 = icmp eq i8* %3, null
  br i1 %cmp7, label %if.end12.sink.split, label %if.end12

if.end12.sink.split:                              ; preds = %if.else, %if.then
  %.sink = phi i8** [ %0, %if.then ], [ %2, %if.else ]
  store i8* %name, i8** %.sink, align 8, !tbaa !20
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.else, %entry
  %call13 = tail call i32 @ERR_pop_to_mark() #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* nocapture noundef %pkey) local_unnamed_addr #7 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %references = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 7
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #14
  %1 = load i32, i32* %i, align 4, !tbaa !41
  %cmp1 = icmp sgt i32 %1, 1
  %cond = zext i1 %cmp1 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #8 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !41
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1648, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EVP_PKEY_dup, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, i8* noundef null) #12
  br label %cleanup54

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #14
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %cleanup54, label %if.end3

if.end3:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  %cmp4 = icmp eq i32 %0, 0
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp5 = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp4, label %land.lhs.true, label %if.end7.thread

land.lhs.true:                                    ; preds = %if.end3
  br i1 %cmp5, label %done, label %if.then10

if.end7.thread:                                   ; preds = %if.end3
  br i1 %cmp5, label %if.then20, label %if.then10

if.then10:                                        ; preds = %land.lhs.true, %if.end7.thread
  %call11 = tail call i32 @evp_keymgmt_util_copy(%struct.evp_pkey_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef 135) #12
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %err, label %done

if.then20:                                        ; preds = %if.end7.thread
  %ameth21 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %2 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth21, align 8, !tbaa !13
  %cmp22 = icmp eq %struct.evp_pkey_asn1_method_st* %2, null
  br i1 %cmp22, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then20
  %copy = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %2, i64 0, i32 39
  %3 = load i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)** %copy, align 8, !tbaa !73
  %cmp23 = icmp eq i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* %3, null
  br i1 %cmp23, label %if.then24, label %cleanup

if.then24:                                        ; preds = %lor.lhs.false, %if.then20
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !24
  %cmp26 = icmp eq i8* %4, null
  br i1 %cmp26, label %land.lhs.true27, label %cleanup.thread87

land.lhs.true27:                                  ; preds = %if.then24
  %call29 = tail call i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef nonnull %call, i32 noundef %0) #14
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %cleanup.thread87, label %done

cleanup.thread87:                                 ; preds = %if.then24, %land.lhs.true27
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1672, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EVP_PKEY_dup, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 224, i8* noundef null) #12
  br label %err

cleanup:                                          ; preds = %lor.lhs.false
  %call35 = tail call i32 %3(%struct.evp_pkey_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %pkey) #12
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %done

done:                                             ; preds = %land.lhs.true27, %cleanup, %if.then10, %land.lhs.true
  %ex_data = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call, i64 0, i32 12
  %ex_data40 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 12
  %call41 = tail call i32 @CRYPTO_dup_ex_data(i32 noundef 17, %struct.crypto_ex_data_st* noundef nonnull %ex_data, %struct.crypto_ex_data_st* noundef nonnull %ex_data40) #12
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %if.end44

if.end44:                                         ; preds = %done
  %attributes = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 9
  %5 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !42
  %cmp45.not = icmp eq %struct.stack_st_X509_ATTRIBUTE* %5, null
  br i1 %cmp45.not, label %cleanup54, label %if.then46

if.then46:                                        ; preds = %if.end44
  %call48 = tail call %struct.stack_st_X509_ATTRIBUTE* @ossl_x509at_dup(%struct.stack_st_X509_ATTRIBUTE* noundef nonnull %5) #12
  %attributes49 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call, i64 0, i32 9
  store %struct.stack_st_X509_ATTRIBUTE* %call48, %struct.stack_st_X509_ATTRIBUTE** %attributes49, align 8, !tbaa !42
  %cmp50 = icmp eq %struct.stack_st_X509_ATTRIBUTE* %call48, null
  br i1 %cmp50, label %err, label %cleanup54

err:                                              ; preds = %cleanup.thread87, %cleanup, %if.then46, %done, %if.then10
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #14
  br label %cleanup54

cleanup54:                                        ; preds = %if.end44, %if.then46, %if.end, %err, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ null, %err ], [ null, %if.end ], [ %call, %if.then46 ], [ %call, %if.end44 ]
  ret %struct.evp_pkey_st* %retval.0
}

declare i32 @CRYPTO_dup_ex_data(i32 noundef, %struct.crypto_ex_data_st* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #3

declare %struct.stack_st_X509_ATTRIBUTE* @ossl_x509at_dup(%struct.stack_st_X509_ATTRIBUTE* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @evp_pkey_free_legacy(%struct.evp_pkey_st* noundef %x) local_unnamed_addr #0 {
entry:
  %tmpe = alloca %struct.engine_st*, align 8
  %ameth1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth1, align 8, !tbaa !13
  %1 = bitcast %struct.engine_st** %tmpe to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store %struct.engine_st* null, %struct.engine_st** %tmpe, align 8, !tbaa !20
  %cmp = icmp eq %struct.evp_pkey_asn1_method_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.then4

land.lhs.true:                                    ; preds = %entry
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 6, i32 0
  %2 = load i8*, i8** %ptr, align 8, !tbaa !24
  %cmp2.not = icmp eq i8* %2, null
  br i1 %cmp2.not, label %if.end19, label %if.end

if.end:                                           ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 0
  %3 = load i32, i32* %type, align 8, !tbaa !18
  %call = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find(%struct.engine_st** noundef nonnull %tmpe, i32 noundef %3) #12
  %cmp3.not = icmp eq %struct.evp_pkey_asn1_method_st* %call, null
  br i1 %cmp3.not, label %if.end19, label %if.then4

if.then4:                                         ; preds = %entry, %if.end
  %ameth.047 = phi %struct.evp_pkey_asn1_method_st* [ %call, %if.end ], [ %0, %entry ]
  %ptr6 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 6, i32 0
  %4 = load i8*, i8** %ptr6, align 8, !tbaa !24
  %cmp7.not = icmp eq i8* %4, null
  br i1 %cmp7.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.then4
  %5 = ptrtoint i8* %4 to i64
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 5
  %6 = bitcast %union.legacy_pkey_st* %pkey to i64*
  store i64 %5, i64* %6, align 8
  store i8* null, i8** %ptr6, align 8, !tbaa !24
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then4
  %pkey_free = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth.047, i64 0, i32 22
  %7 = load void (%struct.evp_pkey_st*)*, void (%struct.evp_pkey_st*)** %pkey_free, align 8, !tbaa !74
  %cmp13.not = icmp eq void (%struct.evp_pkey_st*)* %7, null
  br i1 %cmp13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void %7(%struct.evp_pkey_st* noundef nonnull %x) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %ptr18 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 5, i32 0
  store i8* null, i8** %ptr18, align 8, !tbaa !24
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.end16, %if.end
  %8 = load %struct.engine_st*, %struct.engine_st** %tmpe, align 8, !tbaa !20
  %call20 = call i32 @ENGINE_finish(%struct.engine_st* noundef %8) #12
  %engine = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 3
  %9 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !56
  %call21 = call i32 @ENGINE_finish(%struct.engine_st* noundef %9) #12
  store %struct.engine_st* null, %struct.engine_st** %engine, align 8, !tbaa !56
  %pmeth_engine = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 4
  %10 = load %struct.engine_st*, %struct.engine_st** %pmeth_engine, align 8, !tbaa !57
  %call23 = call i32 @ENGINE_finish(%struct.engine_st* noundef %10) #12
  store %struct.engine_st* null, %struct.engine_st** %pmeth_engine, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #8 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !41
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @evp_pkey_free_it(%struct.evp_pkey_st* noundef %x) unnamed_addr #0 {
entry:
  %call = tail call i32 @evp_keymgmt_util_clear_operation_cache(%struct.evp_pkey_st* noundef %x, i32 noundef 1) #12
  tail call void @evp_pkey_free_legacy(%struct.evp_pkey_st* noundef %x) #14
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 14
  %1 = load i8*, i8** %keydata, align 8, !tbaa !22
  tail call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef nonnull %0, i8* noundef %1) #12
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %2) #12
  store %struct.evp_keymgmt_st* null, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  store i8* null, i8** %keydata, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !18
  ret void
}

declare void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #3

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef readnone %sk) unnamed_addr #10 {
entry:
  %0 = bitcast %struct.stack_st_X509_ATTRIBUTE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_ATTRIBUTE_free(%struct.x509_attributes_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp.not, label %if.end10.thread, label %if.then

if.then:                                          ; preds = %entry
  %size1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 18, i32 2
  %0 = load i32, i32* %size1, align 8, !tbaa !75
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp2.not = icmp eq %struct.evp_pkey_asn1_method_st* %1, null
  br i1 %cmp2.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %pkey_size = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 12
  %pkey_size4 = bitcast {}** %pkey_size to i32 (%struct.evp_pkey_st*)**
  %2 = load i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)** %pkey_size4, align 8, !tbaa !76
  %cmp5.not = icmp eq i32 (%struct.evp_pkey_st*)* %2, null
  br i1 %cmp5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %call = tail call i32 %2(%struct.evp_pkey_st* noundef nonnull %pkey) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then, %land.lhs.true, %if.then6
  %size.0 = phi i32 [ %call, %if.then6 ], [ %0, %land.lhs.true ], [ %0, %if.then ]
  %3 = icmp sgt i32 %size.0, 0
  %spec.select = select i1 %3, i32 %size.0, i32 0
  br label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end10, %entry
  %4 = phi i32 [ 0, %entry ], [ %spec.select, %if.end10 ]
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_PKEY_get0_description(%struct.evp_pkey_st* nocapture noundef readonly %pkey) local_unnamed_addr #4 {
entry:
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5, i32 0
  %0 = load i8*, i8** %ptr, align 8, !tbaa !24
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %entry
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 14
  %1 = load i8*, i8** %keydata, align 8, !tbaa !22
  %cmp2.not = icmp eq i8* %1, null
  br i1 %cmp2.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp3.not = icmp eq %struct.evp_keymgmt_st* %2, null
  br i1 %cmp3.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %description = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %2, i64 0, i32 3
  %3 = load i8*, i8** %description, align 8, !tbaa !77
  %cmp5.not = icmp eq i8* %3, null
  br i1 %cmp5.not, label %if.end9, label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp10.not = icmp eq %struct.evp_pkey_asn1_method_st* %4, null
  br i1 %cmp10.not, label %return, label %if.then11

if.then11:                                        ; preds = %if.end9
  %info = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 4
  %5 = load i8*, i8** %info, align 8, !tbaa !78
  br label %return

return:                                           ; preds = %if.end9, %land.lhs.true, %lor.lhs.false, %if.then11
  %retval.0 = phi i8* [ %5, %if.then11 ], [ null, %lor.lhs.false ], [ %3, %land.lhs.true ], [ null, %if.end9 ]
  ret i8* %retval.0
}

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #3

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #3

declare %struct.OP_CACHE_ELEM* @evp_keymgmt_util_find_operation_cache(%struct.evp_pkey_st* noundef, %struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #3

declare i8* @evp_keymgmt_newdata(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #3

declare i32 @evp_keymgmt_util_clear_operation_cache(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare i32 @evp_keymgmt_util_cache_keydata(%struct.evp_pkey_st* noundef, %struct.evp_keymgmt_st* noundef, i8* noundef) local_unnamed_addr #3

declare i8* @evp_keymgmt_util_export_to_provider(%struct.evp_pkey_st* noundef, %struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare i32 @evp_keymgmt_export(%struct.evp_keymgmt_st* noundef, i8* noundef, i32 noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %pkey, i8* noundef %key_name, %struct.bignum_st** noundef %bn) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %buffer = alloca [2048 x i8], align 16
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %1 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %1) #13
  %cmp = icmp eq i8* %key_name, null
  %cmp1 = icmp eq %struct.bignum_st** %bn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 2048) #12
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params51 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_BN(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params51, i8* noundef nonnull %key_name, i8* noundef nonnull %1, i64 noundef 2048) #12
  %arrayidx3 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %2 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4) #12
  %3 = bitcast %struct.ossl_param_st* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #13
  %call6 = call i32 @EVP_PKEY_get_params(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.end29

if.then7:                                         ; preds = %if.end
  %call9 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx) #12
  %tobool10 = icmp eq i32 %call9, 0
  %return_size = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 4
  %4 = load i64, i64* %return_size, align 16
  %cmp13 = icmp eq i64 %4, 0
  %or.cond41 = select i1 %tobool10, i1 true, i1 %cmp13
  br i1 %or.cond41, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then7
  %call18 = call i8* @CRYPTO_zalloc(i64 noundef %4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2128) #12
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end15
  %data = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 2
  store i8* %call18, i8** %data, align 16, !tbaa !79
  %data_size = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 3
  store i64 %4, i64* %data_size, align 8, !tbaa !80
  %call25 = call i32 @EVP_PKEY_get_params(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %if.end29

if.end29:                                         ; preds = %if.end21, %if.end
  %buf.0 = phi i8* [ null, %if.end ], [ %call18, %if.end21 ]
  %call31 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx) #12
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %if.end29
  %call36 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %arrayidx, %struct.bignum_st** noundef nonnull %bn) #12
  br label %err

err:                                              ; preds = %if.end29, %if.end21, %if.end34
  %ret.0 = phi i32 [ %call36, %if.end34 ], [ 0, %if.end29 ], [ 0, %if.end21 ]
  %buf.1 = phi i8* [ %buf.0, %if.end34 ], [ %buf.0, %if.end29 ], [ %call18, %if.end21 ]
  call void @CRYPTO_free(i8* noundef %buf.1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2142) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then7, %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ], [ 0, %if.then7 ], [ 0, %if.end15 ]
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

declare void @OSSL_PARAM_construct_BN(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_params(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp1.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 14
  %1 = load i8*, i8** %keydata, align 8, !tbaa !22
  %call = tail call i32 @evp_keymgmt_get_params(%struct.evp_keymgmt_st* noundef nonnull %0, i8* noundef %1, %struct.ossl_param_st* noundef %params) #12
  br label %return

if.else:                                          ; preds = %if.then
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !18
  %cmp4.not = icmp eq i32 %2, 0
  br i1 %cmp4.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.else
  %call8 = tail call i32 @evp_pkey_get_params_to_ctrl(%struct.evp_pkey_st* noundef nonnull %pkey, %struct.ossl_param_st* noundef %params) #12
  br label %return

if.end10:                                         ; preds = %if.else, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2344, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_PKEY_get_params, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 163, i8* noundef null) #12
  br label %return

return:                                           ; preds = %if.end10, %if.then7, %if.then2
  %retval.0 = phi i32 [ %call, %if.then2 ], [ %call8, %if.then7 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

declare i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %pkey, i8* noundef %key_name, i32* noundef %out) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %cmp = icmp eq i8* %key_name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params7 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params7, i8* noundef nonnull %key_name, i32* noundef %out) #12
  %arrayidx1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %1 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #12
  %2 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #13
  %call = call i32 @EVP_PKEY_get_params(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %call4 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx) #12
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.rhs, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_size_t_param(%struct.evp_pkey_st* noundef %pkey, i8* noundef %key_name, i64* noundef %out) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %cmp = icmp eq i8* %key_name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params7 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params7, i8* noundef nonnull %key_name, i64* noundef %out) #12
  %arrayidx1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %1 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #12
  %2 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #13
  %call = call i32 @EVP_PKEY_get_params(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %call4 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx) #12
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.rhs, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set_int_param(%struct.evp_pkey_st* noundef %pkey, i8* noundef %key_name, i32 noundef %in) local_unnamed_addr #0 {
entry:
  %in.addr = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  store i32 %in, i32* %in.addr, align 4, !tbaa !41
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %cmp = icmp eq i8* %key_name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params4 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params4, i8* noundef nonnull %key_name, i32* noundef nonnull %in.addr) #12
  %arrayidx1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %1 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #12
  %2 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #13
  %call = call i32 @EVP_PKEY_set_params(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set_params(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp1.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.then
  %dirty_cnt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 15
  %1 = load i64, i64* %dirty_cnt, align 8, !tbaa !81
  %inc = add i64 %1, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !81
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 14
  %2 = load i8*, i8** %keydata, align 8, !tbaa !22
  %call = tail call i32 @evp_keymgmt_set_params(%struct.evp_keymgmt_st* noundef nonnull %0, i8* noundef %2, %struct.ossl_param_st* noundef %params) #12
  br label %return

if.end4:                                          ; preds = %if.then, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2323, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_PKEY_set_params, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 163, i8* noundef null) #12
  br label %return

return:                                           ; preds = %if.end4, %if.then2
  %retval.0 = phi i32 [ %call, %if.then2 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set_size_t_param(%struct.evp_pkey_st* noundef %pkey, i8* noundef %key_name, i64 noundef %in) local_unnamed_addr #0 {
entry:
  %in.addr = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  store i64 %in, i64* %in.addr, align 8, !tbaa !54
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %cmp = icmp eq i8* %key_name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params4 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params4, i8* noundef nonnull %key_name, i64* noundef nonnull %in.addr) #12
  %arrayidx1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %1 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #12
  %2 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #13
  %call = call i32 @EVP_PKEY_set_params(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set_bn_param(%struct.evp_pkey_st* noundef %pkey, i8* noundef %key_name, %struct.bignum_st* noundef %bn) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %buffer = alloca [2048 x i8], align 16
  %tmp22 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %1 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %1) #13
  %cmp = icmp eq i8* %key_name, null
  %cmp1 = icmp eq %struct.bignum_st* %bn, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct.evp_pkey_st* %pkey, null
  %or.cond27 = or i1 %cmp3, %or.cond
  br i1 %or.cond27, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5, i32 0
  %2 = load i8*, i8** %ptr, align 8, !tbaa !24
  %cmp6.not = icmp eq i8* %2, null
  br i1 %cmp6.not, label %lor.lhs.false7, label %if.end

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 14
  %3 = load i8*, i8** %keydata, align 8, !tbaa !22
  %cmp8.not = icmp eq i8* %3, null
  br i1 %cmp8.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false7, %lor.lhs.false4
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %bn) #12
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %cmp9 = icmp slt i32 %call, 16385
  br i1 %cmp9, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = call i32 @BN_bn2nativepad(%struct.bignum_st* noundef nonnull %bn, i8* noundef nonnull %1, i32 noundef %div) #12
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end13
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %conv20 = sext i32 %div to i64
  %params37 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_BN(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params37, i8* noundef nonnull %key_name, i8* noundef nonnull %1, i64 noundef %conv20) #12
  %arrayidx21 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %4 = bitcast %struct.ossl_param_st* %tmp22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp22) #12
  %5 = bitcast %struct.ossl_param_st* %arrayidx21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #13
  %call24 = call i32 @EVP_PKEY_set_params(%struct.evp_pkey_st* noundef nonnull %pkey, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end, %entry, %lor.lhs.false7, %if.end18
  %retval.0 = phi i32 [ %call24, %if.end18 ], [ 0, %lor.lhs.false7 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @BN_bn2nativepad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set_utf8_string_param(%struct.evp_pkey_st* noundef %pkey, i8* noundef %key_name, i8* noundef %str) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %cmp = icmp eq i8* %key_name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params4 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params4, i8* noundef nonnull %key_name, i8* noundef %str, i64 noundef 0) #12
  %arrayidx1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %1 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #12
  %2 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #13
  %call = call i32 @EVP_PKEY_set_params(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef nonnull %arrayidx) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_PKEY_settable_params(%struct.evp_pkey_st* noundef readonly %pkey) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp1.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %call = tail call %struct.ossl_param_st* @EVP_KEYMGMT_settable_params(%struct.evp_keymgmt_st* noundef nonnull %0) #12
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %cond.true
  %cond = phi %struct.ossl_param_st* [ %call, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.ossl_param_st* %cond
}

declare %struct.ossl_param_st* @EVP_KEYMGMT_settable_params(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare i32 @evp_keymgmt_set_params(%struct.evp_keymgmt_st* noundef, i8* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_PKEY_gettable_params(%struct.evp_pkey_st* noundef readonly %pkey) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp1.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %call = tail call %struct.ossl_param_st* @EVP_KEYMGMT_gettable_params(%struct.evp_keymgmt_st* noundef nonnull %0) #12
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %cond.true
  %cond = phi %struct.ossl_param_st* [ %call, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.ossl_param_st* %cond
}

declare %struct.ossl_param_st* @EVP_KEYMGMT_gettable_params(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare i32 @evp_keymgmt_get_params(%struct.evp_keymgmt_st* noundef, i8* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare i32 @evp_pkey_get_params_to_ctrl(%struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_ec_point_conv_form(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %name = alloca [80 x i8], align 16
  %name_len = alloca i64, align 8
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %1 = bitcast i64* %name_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %cmp = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp, label %cleanup27, label %if.end

if.end:                                           ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp1 = icmp eq %struct.evp_keymgmt_st* %2, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 14
  %3 = load i8*, i8** %keydata, align 8, !tbaa !22
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %call = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef nonnull %pkey) #12
  %cmp4 = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp4, label %cleanup27, label %if.end6

if.end6:                                          ; preds = %if.then3
  %call7 = tail call i32 @EC_KEY_get_conv_form(%struct.ec_key_st* noundef nonnull %call) #12
  br label %cleanup27

if.end8:                                          ; preds = %lor.lhs.false
  %call9 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef nonnull %pkey, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 80, i64* noundef nonnull %name_len) #14
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cleanup27, label %if.end11

if.end11:                                         ; preds = %if.end8
  %call13 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #15
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %cleanup27, label %if.end16

if.end16:                                         ; preds = %if.end11
  %call18 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0)) #15
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %cleanup27, label %if.end21

if.end21:                                         ; preds = %if.end16
  %call23 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #15
  %cmp24 = icmp eq i32 %call23, 0
  %. = select i1 %cmp24, i32 6, i32 0
  br label %cleanup27

cleanup27:                                        ; preds = %if.end21, %if.end16, %if.end11, %if.end8, %if.end6, %if.then3, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ %call7, %if.end6 ], [ 0, %if.then3 ], [ 0, %if.end8 ], [ 4, %if.end11 ], [ 2, %if.end16 ], [ %., %if.end21 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.1
}

declare %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @EC_KEY_get_conv_form(%struct.ec_key_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_field_type(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %fstr = alloca [80 x i8], align 16
  %fstrlen = alloca i64, align 8
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %fstr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %1 = bitcast i64* %fstrlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %cmp = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp, label %cleanup27, label %if.end

if.end:                                           ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp1 = icmp eq %struct.evp_keymgmt_st* %2, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 14
  %3 = load i8*, i8** %keydata, align 8, !tbaa !22
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then3, label %if.end13

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %call = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef nonnull %pkey) #12
  %cmp4 = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp4, label %cleanup27, label %if.end6

if.end6:                                          ; preds = %if.then3
  %call7 = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef nonnull %call) #12
  %cmp8 = icmp eq %struct.ec_group_st* %call7, null
  br i1 %cmp8, label %cleanup27, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef nonnull %call7) #12
  br label %cleanup27

if.end13:                                         ; preds = %lor.lhs.false
  %call14 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef nonnull %pkey, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 80, i64* noundef nonnull %fstrlen) #14
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup27, label %if.end16

if.end16:                                         ; preds = %if.end13
  %call18 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)) #15
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %cleanup27, label %if.else

if.else:                                          ; preds = %if.end16
  %call22 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0)) #15
  %tobool23.not = icmp eq i32 %call22, 0
  %. = select i1 %tobool23.not, i32 0, i32 407
  br label %cleanup27

cleanup27:                                        ; preds = %if.else, %if.end16, %if.end13, %if.end10, %if.then3, %if.end6, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ %call11, %if.end10 ], [ 0, %if.then3 ], [ 0, %if.end6 ], [ 0, %if.end13 ], [ 406, %if.end16 ], [ %., %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.1
}

declare i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef) local_unnamed_addr #3

declare i32 @evp_keymgmt_util_match(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @evp_keymgmt_match(%struct.evp_keymgmt_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare i32 @ERR_clear_last_mark() local_unnamed_addr #3

declare i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef, i32 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef, i8** noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

declare i8* @ENGINE_get_id(%struct.engine_st* noundef) local_unnamed_addr #3

declare i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare i32 @ossl_rsa_is_foreign(%struct.rsa_st* noundef) local_unnamed_addr #3

declare i32 @ossl_ec_key_is_foreign(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare i32 @ossl_dsa_is_foreign(%struct.dsa_st* noundef) local_unnamed_addr #3

declare i32 @ossl_dh_is_foreign(%struct.dh_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ecx_key_st* @evp_pkey_get0_ECX_KEY(%struct.evp_pkey_st* noundef %pkey, i32 noundef %type) unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %pkey) #14
  %cmp.not = icmp eq i32 %call, %type
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 872, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_pkey_get0_ECX_KEY, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 219, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef %pkey) #14
  %0 = bitcast i8* %call1 to %struct.ecx_key_st*
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ecx_key_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.ecx_key_st* %retval.0
}

declare i32 @ossl_ecx_key_up_ref(%struct.ecx_key_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @print_set_indent(%struct.bio_st** nocapture noundef %out, i32* nocapture noundef %pop_f_prefix, i64* nocapture noundef %saved_indent, i64 noundef %indent) unnamed_addr #0 {
entry:
  store i32 0, i32* %pop_f_prefix, align 4, !tbaa !41
  store i64 0, i64* %saved_indent, align 8, !tbaa !54
  %cmp = icmp sgt i64 %indent, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !20
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %0, i32 noundef 81, i64 noundef 0, i8* noundef null) #12
  %1 = icmp sgt i64 %call, 0
  %cond = select i1 %1, i64 %call, i64 0
  store i64 %cond, i64* %saved_indent, align 8, !tbaa !54
  %2 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !20
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %2, i32 noundef 80, i64 noundef %indent, i8* noundef null) #12
  %cmp3 = icmp slt i64 %call2, 1
  br i1 %cmp3, label %if.then4, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  %.pre = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !20
  br label %if.end10

if.then4:                                         ; preds = %if.then
  %call5 = tail call %struct.bio_method_st* @BIO_f_prefix() #12
  %call6 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call5) #12
  %3 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !20
  %call7 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call6, %struct.bio_st* noundef %3) #12
  store %struct.bio_st* %call7, %struct.bio_st** %out, align 8, !tbaa !20
  %cmp8 = icmp eq %struct.bio_st* %call7, null
  br i1 %cmp8, label %return, label %if.end

if.end:                                           ; preds = %if.then4
  store i32 1, i32* %pop_f_prefix, align 4, !tbaa !41
  br label %if.end10

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %if.end
  %4 = phi %struct.bio_st* [ %.pre, %if.then.if.end10_crit_edge ], [ %call7, %if.end ]
  %call11 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %4, i32 noundef 80, i64 noundef %indent, i8* noundef null) #12
  %cmp12 = icmp slt i64 %call11, 1
  br i1 %cmp12, label %if.then13, label %return

if.then13:                                        ; preds = %if.end10
  %5 = load i32, i32* %pop_f_prefix, align 4, !tbaa !41
  %6 = load i64, i64* %saved_indent, align 8, !tbaa !54
  tail call fastcc void @print_reset_indent(%struct.bio_st** noundef nonnull %out, i32 noundef %5, i64 noundef %6) #14
  br label %return

return:                                           ; preds = %if.then4, %if.then13, %entry, %if.end10
  %retval.1 = phi i32 [ 1, %if.end10 ], [ 1, %entry ], [ 0, %if.then13 ], [ 0, %if.then4 ]
  ret i32 %retval.1
}

declare %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #3

declare i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @unsup_alg(%struct.bio_st* noundef %out, %struct.evp_pkey_st* nocapture noundef readonly %pkey) unnamed_addr #0 {
entry:
  %call = tail call i32 @BIO_indent(%struct.bio_st* noundef %out, i32 noundef 0, i32 noundef 128) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  %call1 = tail call i8* @OBJ_nid2ln(i32 noundef %0) #12
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* noundef %call1) #12
  %cmp = icmp sgt i32 %call2, 0
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_reset_indent(%struct.bio_st** nocapture noundef %out, i32 noundef %pop_f_prefix, i64 noundef %saved_indent) unnamed_addr #0 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !20
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %0, i32 noundef 80, i64 noundef %saved_indent, i8* noundef null) #12
  %tobool.not = icmp eq i32 %pop_f_prefix, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !20
  %call1 = tail call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %1) #12
  %2 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !20
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef %2) #12
  store %struct.bio_st* %call1, %struct.bio_st** %out, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare %struct.bio_method_st* @BIO_f_prefix() local_unnamed_addr #3

declare i32 @BIO_indent(%struct.bio_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

declare i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #3

declare %struct.bio_st* @BIO_pop(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @legacy_asn1_ctrl_to_param(%struct.evp_pkey_st* noundef %pkey, i32 noundef %op, i8* nocapture noundef writeonly %arg2) unnamed_addr #0 {
entry:
  %mdname = alloca [80 x i8], align 16
  %nid = alloca i32, align 4
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %cmp = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cond = icmp eq i32 %op, 3
  br i1 %cond, label %sw.bb, label %return

sw.bb:                                            ; preds = %if.end
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %mdname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %call = call i32 @EVP_PKEY_get_default_digest_name(%struct.evp_pkey_st* noundef nonnull %pkey, i8* noundef nonnull %1, i64 noundef 80) #14
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %cleanup23

if.then2:                                         ; preds = %sw.bb
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !21
  %prov = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %2, i64 0, i32 4
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !26
  %call4 = call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %3) #12
  %4 = bitcast i32* %nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13
  store i32 0, i32* %nid, align 4, !tbaa !41
  %call5 = call i32 @ERR_set_mark() #12
  %call7 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call4, i8* noundef nonnull %1, i8* noundef null) #12
  %call8 = call i32 @ERR_pop_to_mark() #12
  %call9 = call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %call4) #12
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call7) #12
  %call11 = call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %call9, i8* noundef nonnull %1) #12
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.then2
  %call15 = call i32 @ossl_namemap_doall_names(%struct.ossl_namemap_st* noundef %call9, i32 noundef %call11, void (i8*, i8*)* noundef nonnull @mdname2nid, i8* noundef nonnull %4) #12
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end14
  %5 = load i32, i32* %nid, align 4, !tbaa !41
  %6 = bitcast i8* %arg2 to i32*
  store i32 %5, i32* %6, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  br label %cleanup23

cleanup:                                          ; preds = %if.end14, %if.then2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  br label %cleanup23

cleanup23:                                        ; preds = %sw.bb, %if.end17, %cleanup
  %retval.1 = phi i32 [ 0, %cleanup ], [ %call, %if.end17 ], [ %call, %sw.bb ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #13
  br label %return

return:                                           ; preds = %if.end, %entry, %cleanup23
  %retval.2 = phi i32 [ %retval.1, %cleanup23 ], [ 0, %entry ], [ -2, %if.end ]
  ret i32 %retval.2
}

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @ossl_namemap_doall_names(%struct.ossl_namemap_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @mdname2nid(i8* noundef %mdname, i8* nocapture noundef %data) #0 {
entry:
  %0 = bitcast i8* %data to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !41
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @OBJ_sn2nid(i8* noundef %mdname) #12
  store i32 %call, i32* %0, align 4, !tbaa !41
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @OBJ_ln2nid(i8* noundef %mdname) #12
  store i32 %call3, i32* %0, align 4, !tbaa !41
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 136}
!5 = !{!"evp_pkey_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !6, i64 76, !10, i64 80, !9, i64 96, !9, i64 104, !11, i64 112, !9, i64 120, !11, i64 128, !12, i64 136}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!13 = !{!5, !9, i64 8}
!14 = !{!15, !9, i64 96}
!15 = !{!"evp_pkey_asn1_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312}
!16 = !{!5, !6, i64 140}
!17 = !{!15, !9, i64 104}
!18 = !{!5, !6, i64 0}
!19 = !{!5, !6, i64 72}
!20 = !{!9, !9, i64 0}
!21 = !{!5, !9, i64 96}
!22 = !{!5, !9, i64 104}
!23 = !{!15, !9, i64 136}
!24 = !{!7, !7, i64 0}
!25 = !{!15, !9, i64 296}
!26 = !{!27, !9, i64 24}
!27 = !{!"evp_keymgmt_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!28 = !{!15, !9, i64 280}
!29 = !{!5, !11, i64 128}
!30 = !{!15, !9, i64 128}
!31 = !{!15, !9, i64 144}
!32 = !{!15, !9, i64 288}
!33 = !{!34, !9, i64 32}
!34 = !{!"evp_pkey_ctx_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !7, i64 40, !35, i64 56, !9, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !6, i64 160, !9, i64 168}
!35 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !6, i64 24}
!36 = !{!5, !9, i64 56}
!37 = !{!38, !9, i64 0}
!38 = !{!"", !9, i64 0, !9, i64 8}
!39 = !{!38, !9, i64 8}
!40 = !{!27, !9, i64 184}
!41 = !{!6, !6, i64 0}
!42 = !{!5, !9, i64 64}
!43 = !{!27, !9, i64 176}
!44 = !{!15, !9, i64 48}
!45 = !{!15, !9, i64 248}
!46 = !{!15, !9, i64 256}
!47 = !{!48, !9, i64 0}
!48 = !{!"raw_key_details_st", !9, i64 0, !9, i64 8, !6, i64 16}
!49 = !{!48, !9, i64 8}
!50 = !{!48, !6, i64 16}
!51 = !{!15, !9, i64 264}
!52 = !{!15, !9, i64 272}
!53 = !{i64 0, i64 8, !20, i64 8, i64 4, !41, i64 16, i64 8, !20, i64 24, i64 8, !54, i64 32, i64 8, !54}
!54 = !{!11, !11, i64 0}
!55 = !{!5, !6, i64 4}
!56 = !{!5, !9, i64 16}
!57 = !{!5, !9, i64 24}
!58 = !{!15, !6, i64 0}
!59 = !{!60, !6, i64 0}
!60 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !11, i64 16}
!61 = !{!60, !9, i64 8}
!62 = !{!63, !6, i64 0}
!63 = !{!"ossl_item_st", !6, i64 0, !9, i64 8}
!64 = !{!63, !9, i64 8}
!65 = !{!27, !9, i64 152}
!66 = !{!15, !9, i64 56}
!67 = !{!15, !9, i64 80}
!68 = !{!15, !9, i64 152}
!69 = !{!15, !9, i64 176}
!70 = !{!71, !11, i64 32}
!71 = !{!"ossl_param_st", !9, i64 0, !6, i64 8, !9, i64 16, !11, i64 24, !11, i64 32}
!72 = !{!5, !7, i64 48}
!73 = !{!15, !9, i64 304}
!74 = !{!15, !9, i64 168}
!75 = !{!5, !6, i64 144}
!76 = !{!15, !9, i64 88}
!77 = !{!27, !9, i64 16}
!78 = !{!15, !9, i64 24}
!79 = !{!71, !9, i64 16}
!80 = !{!71, !11, i64 24}
!81 = !{!5, !11, i64 112}
