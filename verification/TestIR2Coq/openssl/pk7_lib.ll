; ModuleID = 'crypto/pkcs7/pk7_lib.c'
source_filename = "crypto/pkcs7/pk7_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.pkcs7_signed_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ALGOR = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.stack_st_PKCS7_SIGNER_INFO = type opaque
%struct.pkcs7_signedandenveloped_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_enc_content_st*, %struct.stack_st_PKCS7_RECIP_INFO* }
%struct.pkcs7_enc_content_st = type { %struct.asn1_object_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_cipher_st*, %struct.PKCS7_CTX_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.stack_st_PKCS7_RECIP_INFO = type opaque
%struct.pkcs7_enveloped_st = type { %struct.asn1_string_st*, %struct.stack_st_PKCS7_RECIP_INFO*, %struct.pkcs7_enc_content_st* }
%struct.pkcs7_encrypted_st = type { %struct.asn1_string_st*, %struct.pkcs7_enc_content_st* }
%struct.pkcs7_digest_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.pkcs7_st*, %struct.asn1_string_st* }
%struct.pkcs7_signer_info_st = type { %struct.asn1_string_st*, %struct.pkcs7_issuer_and_serial_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.evp_pkey_st*, %struct.PKCS7_CTX_st* }
%struct.pkcs7_issuer_and_serial_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.stack_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.2, %struct.X509_name_st* }
%union.anon.2 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.pkcs7_recip_info_st = type { %struct.asn1_string_st*, %struct.pkcs7_issuer_and_serial_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.x509_st*, %struct.PKCS7_CTX_st* }

@.str = private unnamed_addr constant [23 x i8] c"crypto/pkcs7/pk7_lib.c\00", align 1
@__func__.PKCS7_ctrl = private unnamed_addr constant [11 x i8] c"PKCS7_ctrl\00", align 1
@__func__.PKCS7_set_content = private unnamed_addr constant [18 x i8] c"PKCS7_set_content\00", align 1
@__func__.PKCS7_set_type = private unnamed_addr constant [15 x i8] c"PKCS7_set_type\00", align 1
@__func__.PKCS7_add_signer = private unnamed_addr constant [17 x i8] c"PKCS7_add_signer\00", align 1
@__func__.PKCS7_add_certificate = private unnamed_addr constant [22 x i8] c"PKCS7_add_certificate\00", align 1
@__func__.PKCS7_add_crl = private unnamed_addr constant [14 x i8] c"PKCS7_add_crl\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@__func__.PKCS7_SIGNER_INFO_set = private unnamed_addr constant [22 x i8] c"PKCS7_SIGNER_INFO_set\00", align 1
@__func__.PKCS7_add_signature = private unnamed_addr constant [20 x i8] c"PKCS7_add_signature\00", align 1
@__func__.ossl_pkcs7_set1_propq = private unnamed_addr constant [22 x i8] c"ossl_pkcs7_set1_propq\00", align 1
@__func__.PKCS7_set_digest = private unnamed_addr constant [17 x i8] c"PKCS7_set_digest\00", align 1
@__func__.PKCS7_add_recipient_info = private unnamed_addr constant [25 x i8] c"PKCS7_add_recipient_info\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@__func__.PKCS7_RECIP_INFO_set = private unnamed_addr constant [21 x i8] c"PKCS7_RECIP_INFO_set\00", align 1
@__func__.PKCS7_set_cipher = private unnamed_addr constant [17 x i8] c"PKCS7_set_cipher\00", align 1

; Function Attrs: noinline nounwind uwtable
define i64 @PKCS7_ctrl(%struct.pkcs7_st* nocapture noundef %p7, i32 noundef %cmd, i64 noundef %larg, i8* nocapture noundef readnone %parg) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #7
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  %cmp = icmp eq i32 %call, 22
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %conv = trunc i64 %larg to i32
  %detached = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 3
  store i32 %conv, i32* %detached, align 4, !tbaa !12
  %sext = shl i64 %larg, 32
  %conv1 = ashr exact i64 %sext, 32
  %tobool.not = icmp eq i64 %sext, 0
  br i1 %tobool.not, label %sw.epilog, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %1 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %contents = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %1, i64 0, i32 5
  %2 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents, align 8, !tbaa !14
  %type2 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %2, i64 0, i32 4
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type2, align 8, !tbaa !4
  %call3 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #7
  %cmp4 = icmp eq i32 %call3, 21
  br i1 %cmp4, label %if.then6, label %sw.epilog

if.then6:                                         ; preds = %land.lhs.true
  %4 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %contents9 = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %4, i64 0, i32 5
  %5 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents9, align 8, !tbaa !14
  %d10 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %5, i64 0, i32 5
  %data = bitcast %union.anon* %d10 to %struct.asn1_string_st**
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %data, align 8, !tbaa !13
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %6) #7
  %7 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %contents13 = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %7, i64 0, i32 5
  %8 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents13, align 8, !tbaa !14
  %d14 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %8, i64 0, i32 5
  %data15 = bitcast %union.anon* %d14 to %struct.asn1_string_st**
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %data15, align 8, !tbaa !13
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.PKCS7_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 104, i8* noundef null) #7
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %cmp18 = icmp eq i32 %call, 22
  br i1 %cmp18, label %if.then20, label %if.else36

if.then20:                                        ; preds = %sw.bb17
  %d21 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %sign22 = bitcast %union.anon* %d21 to %struct.pkcs7_signed_st**
  %9 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign22, align 8, !tbaa !13
  %cmp23 = icmp eq %struct.pkcs7_signed_st* %9, null
  br i1 %cmp23, label %if.end33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then20
  %contents27 = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %9, i64 0, i32 5
  %10 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents27, align 8, !tbaa !14
  %ptr = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %10, i64 0, i32 5, i32 0
  %11 = load i8*, i8** %ptr, align 8, !tbaa !13
  %cmp29 = icmp eq i8* %11, null
  %spec.select = zext i1 %cmp29 to i64
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false, %if.then20
  %ret.0 = phi i64 [ 1, %if.then20 ], [ %spec.select, %lor.lhs.false ]
  %conv34 = trunc i64 %ret.0 to i32
  %detached35 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 3
  store i32 %conv34, i32* %detached35, align 4, !tbaa !12
  br label %sw.epilog

if.else36:                                        ; preds = %sw.bb17
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.PKCS7_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 104, i8* noundef null) #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.PKCS7_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 110, i8* noundef null) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end33, %if.else36, %if.else, %if.then6, %land.lhs.true, %if.then, %sw.default
  %ret.1 = phi i64 [ 0, %sw.default ], [ %ret.0, %if.end33 ], [ 0, %if.else36 ], [ %conv1, %if.then6 ], [ %conv1, %land.lhs.true ], [ 0, %if.then ], [ 0, %if.else ]
  ret i64 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_content_new(%struct.pkcs7_st* nocapture noundef readonly %p7, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs7_st* @PKCS7_new() #7
  %cmp = icmp eq %struct.pkcs7_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PKCS7_set_type(%struct.pkcs7_st* noundef nonnull %call, i32 noundef %type) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @PKCS7_set_content(%struct.pkcs7_st* noundef %p7, %struct.pkcs7_st* noundef nonnull %call) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %cleanup

err:                                              ; preds = %if.end3, %if.end, %entry
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end3 ]
  ret i32 %retval.0
}

declare %struct.pkcs7_st* @PKCS7_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_set_type(%struct.pkcs7_st* nocapture noundef %p7, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %type) #7
  switch i32 %type, label %sw.default [
    i32 22, label %sw.bb
    i32 21, label %sw.bb12
    i32 24, label %sw.bb19
    i32 23, label %sw.bb36
    i32 26, label %sw.bb55
    i32 25, label %sw.bb74
  ]

sw.bb:                                            ; preds = %entry
  %type1 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %type1, align 8, !tbaa !4
  %call2 = tail call %struct.pkcs7_signed_st* @PKCS7_SIGNED_new() #7
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  store %struct.pkcs7_signed_st* %call2, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %cmp = icmp eq %struct.pkcs7_signed_st* %call2, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %sw.bb
  %version = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %call2, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !16
  %call5 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %0, i64 noundef 1) #7
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  %1 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  tail call void @PKCS7_SIGNED_free(%struct.pkcs7_signed_st* noundef %1) #7
  store %struct.pkcs7_signed_st* null, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  br label %err

sw.bb12:                                          ; preds = %entry
  %type13 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %type13, align 8, !tbaa !4
  %call14 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #7
  %d15 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %data = bitcast %union.anon* %d15 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call14, %struct.asn1_string_st** %data, align 8, !tbaa !13
  %cmp16 = icmp eq %struct.asn1_string_st* %call14, null
  br i1 %cmp16, label %err, label %cleanup

sw.bb19:                                          ; preds = %entry
  %type20 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %type20, align 8, !tbaa !4
  %call21 = tail call %struct.pkcs7_signedandenveloped_st* @PKCS7_SIGN_ENVELOPE_new() #7
  %d22 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %signed_and_enveloped = bitcast %union.anon* %d22 to %struct.pkcs7_signedandenveloped_st**
  store %struct.pkcs7_signedandenveloped_st* %call21, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !13
  %cmp23 = icmp eq %struct.pkcs7_signedandenveloped_st* %call21, null
  br i1 %cmp23, label %err, label %if.end25

if.end25:                                         ; preds = %sw.bb19
  %version28 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %call21, i64 0, i32 0
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version28, align 8, !tbaa !17
  %call29 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %2, i64 noundef 1) #7
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end32

if.end32:                                         ; preds = %if.end25
  %call33 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 21) #7
  %3 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !13
  %enc_data = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %3, i64 0, i32 5
  %4 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data, align 8, !tbaa !19
  %content_type = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %4, i64 0, i32 0
  store %struct.asn1_object_st* %call33, %struct.asn1_object_st** %content_type, align 8, !tbaa !20
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  %type37 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %type37, align 8, !tbaa !4
  %call38 = tail call %struct.pkcs7_enveloped_st* @PKCS7_ENVELOPE_new() #7
  %d39 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %enveloped = bitcast %union.anon* %d39 to %struct.pkcs7_enveloped_st**
  store %struct.pkcs7_enveloped_st* %call38, %struct.pkcs7_enveloped_st** %enveloped, align 8, !tbaa !13
  %cmp40 = icmp eq %struct.pkcs7_enveloped_st* %call38, null
  br i1 %cmp40, label %err, label %if.end42

if.end42:                                         ; preds = %sw.bb36
  %version45 = getelementptr inbounds %struct.pkcs7_enveloped_st, %struct.pkcs7_enveloped_st* %call38, i64 0, i32 0
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version45, align 8, !tbaa !22
  %call46 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %5, i64 noundef 0) #7
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %if.end49

if.end49:                                         ; preds = %if.end42
  %call50 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 21) #7
  %6 = load %struct.pkcs7_enveloped_st*, %struct.pkcs7_enveloped_st** %enveloped, align 8, !tbaa !13
  %enc_data53 = getelementptr inbounds %struct.pkcs7_enveloped_st, %struct.pkcs7_enveloped_st* %6, i64 0, i32 2
  %7 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data53, align 8, !tbaa !24
  %content_type54 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %7, i64 0, i32 0
  store %struct.asn1_object_st* %call50, %struct.asn1_object_st** %content_type54, align 8, !tbaa !20
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  %type56 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %type56, align 8, !tbaa !4
  %call57 = tail call %struct.pkcs7_encrypted_st* @PKCS7_ENCRYPT_new() #7
  %d58 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %encrypted = bitcast %union.anon* %d58 to %struct.pkcs7_encrypted_st**
  store %struct.pkcs7_encrypted_st* %call57, %struct.pkcs7_encrypted_st** %encrypted, align 8, !tbaa !13
  %cmp59 = icmp eq %struct.pkcs7_encrypted_st* %call57, null
  br i1 %cmp59, label %err, label %if.end61

if.end61:                                         ; preds = %sw.bb55
  %version64 = getelementptr inbounds %struct.pkcs7_encrypted_st, %struct.pkcs7_encrypted_st* %call57, i64 0, i32 0
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version64, align 8, !tbaa !25
  %call65 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %8, i64 noundef 0) #7
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %if.end68

if.end68:                                         ; preds = %if.end61
  %call69 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 21) #7
  %9 = load %struct.pkcs7_encrypted_st*, %struct.pkcs7_encrypted_st** %encrypted, align 8, !tbaa !13
  %enc_data72 = getelementptr inbounds %struct.pkcs7_encrypted_st, %struct.pkcs7_encrypted_st* %9, i64 0, i32 1
  %10 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data72, align 8, !tbaa !27
  %content_type73 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %10, i64 0, i32 0
  store %struct.asn1_object_st* %call69, %struct.asn1_object_st** %content_type73, align 8, !tbaa !20
  br label %cleanup

sw.bb74:                                          ; preds = %entry
  %type75 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %type75, align 8, !tbaa !4
  %call76 = tail call %struct.pkcs7_digest_st* @PKCS7_DIGEST_new() #7
  %d77 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %digest = bitcast %union.anon* %d77 to %struct.pkcs7_digest_st**
  store %struct.pkcs7_digest_st* %call76, %struct.pkcs7_digest_st** %digest, align 8, !tbaa !13
  %cmp78 = icmp eq %struct.pkcs7_digest_st* %call76, null
  br i1 %cmp78, label %err, label %if.end80

if.end80:                                         ; preds = %sw.bb74
  %version83 = getelementptr inbounds %struct.pkcs7_digest_st, %struct.pkcs7_digest_st* %call76, i64 0, i32 0
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version83, align 8, !tbaa !28
  %call84 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %11, i64 noundef 0) #7
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %cleanup

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PKCS7_set_type, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 112, i8* noundef null) #7
  br label %err

err:                                              ; preds = %if.end80, %sw.bb74, %if.end61, %sw.bb55, %if.end42, %sw.bb36, %if.end25, %sw.bb19, %sw.bb12, %sw.bb, %sw.default, %if.then6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end49, %if.end68, %if.end, %sw.bb12, %if.end80, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end80 ], [ 1, %sw.bb12 ], [ 1, %if.end ], [ 1, %if.end68 ], [ 1, %if.end49 ], [ 1, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_set_content(%struct.pkcs7_st* nocapture noundef readonly %p7, %struct.pkcs7_st* noundef %p7_data) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #7
  switch i32 %call, label %sw.default [
    i32 22, label %sw.bb
    i32 25, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %1 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %contents = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %1, i64 0, i32 5
  %2 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents, align 8, !tbaa !14
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef %2) #7
  %3 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %contents3 = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %3, i64 0, i32 5
  store %struct.pkcs7_st* %p7_data, %struct.pkcs7_st** %contents3, align 8, !tbaa !14
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %d5 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %digest = bitcast %union.anon* %d5 to %struct.pkcs7_digest_st**
  %4 = load %struct.pkcs7_digest_st*, %struct.pkcs7_digest_st** %digest, align 8, !tbaa !13
  %contents6 = getelementptr inbounds %struct.pkcs7_digest_st, %struct.pkcs7_digest_st* %4, i64 0, i32 2
  %5 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents6, align 8, !tbaa !30
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef %5) #7
  %6 = load %struct.pkcs7_digest_st*, %struct.pkcs7_digest_st** %digest, align 8, !tbaa !13
  %contents9 = getelementptr inbounds %struct.pkcs7_digest_st, %struct.pkcs7_digest_st* %6, i64 0, i32 2
  store %struct.pkcs7_st* %p7_data, %struct.pkcs7_st** %contents9, align 8, !tbaa !30
  br label %cleanup

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.PKCS7_set_content, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 112, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb4, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %sw.bb4 ], [ 1, %sw.bb ]
  ret i32 %retval.0
}

declare void @PKCS7_free(%struct.pkcs7_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare %struct.pkcs7_signed_st* @PKCS7_SIGNED_new() local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @PKCS7_SIGNED_free(%struct.pkcs7_signed_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare %struct.pkcs7_signedandenveloped_st* @PKCS7_SIGN_ENVELOPE_new() local_unnamed_addr #2

declare %struct.pkcs7_enveloped_st* @PKCS7_ENVELOPE_new() local_unnamed_addr #2

declare %struct.pkcs7_encrypted_st* @PKCS7_ENCRYPT_new() local_unnamed_addr #2

declare %struct.pkcs7_digest_st* @PKCS7_DIGEST_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_set0_type_other(%struct.pkcs7_st* nocapture noundef writeonly %p7, i32 noundef %type, %struct.asn1_type_st* noundef %other) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %type) #7
  %type1 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %type1, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %other2 = bitcast %union.anon* %d to %struct.asn1_type_st**
  store %struct.asn1_type_st* %other, %struct.asn1_type_st** %other2, align 8, !tbaa !13
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_add_signer(%struct.pkcs7_st* noundef %p7, %struct.pkcs7_signer_info_st* noundef %psi) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #7
  switch i32 %call, label %sw.default [
    i32 22, label %sw.bb
    i32 24, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %1 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %signer_info = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %1, i64 0, i32 4
  %md_algs = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %1, i64 0, i32 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %d4 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %signed_and_enveloped = bitcast %union.anon* %d4 to %struct.pkcs7_signedandenveloped_st**
  %2 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !13
  %signer_info5 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %2, i64 0, i32 4
  %md_algs8 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %2, i64 0, i32 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_add_signer, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 113, i8* noundef null) #7
  br label %cleanup50

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %signer_sk.0.in = phi %struct.stack_st_PKCS7_SIGNER_INFO** [ %signer_info5, %sw.bb3 ], [ %signer_info, %sw.bb ]
  %md_sk.0.in = phi %struct.stack_st_X509_ALGOR** [ %md_algs8, %sw.bb3 ], [ %md_algs, %sw.bb ]
  %md_sk.0 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %md_sk.0.in, align 8, !tbaa !31
  %signer_sk.0 = load %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.stack_st_PKCS7_SIGNER_INFO** %signer_sk.0.in, align 8, !tbaa !31
  %digest_alg = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %psi, i64 0, i32 2
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digest_alg, align 8, !tbaa !32
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %3, i64 0, i32 0
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !34
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %md_sk.0) #8
  %call1086 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #7
  %cmp87 = icmp sgt i32 %call1086, 0
  br i1 %cmp87, label %for.body, label %if.then16

for.cond:                                         ; preds = %for.body
  %call10 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #7
  %cmp = icmp slt i32 %inc, %call10
  br i1 %cmp, label %for.body, label %if.then16, !llvm.loop !36

for.body:                                         ; preds = %sw.epilog, %for.cond
  %i.088 = phi i32 [ %inc, %for.cond ], [ 0, %sw.epilog ]
  %call12 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call9, i32 noundef %i.088) #7
  %algorithm13 = bitcast i8* %call12 to %struct.asn1_object_st**
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm13, align 8, !tbaa !34
  %call14 = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %4, %struct.asn1_object_st* noundef %5) #7
  %cmp15 = icmp eq i32 %call14, 0
  %inc = add nuw nsw i32 %i.088, 1
  br i1 %cmp15, label %if.end42, label %for.cond

if.then16:                                        ; preds = %for.cond, %sw.epilog
  %call17 = tail call %struct.X509_algor_st* @X509_ALGOR_new() #7
  %cmp18 = icmp eq %struct.X509_algor_st* %call17, null
  br i1 %cmp18, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then16
  %call19 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #7
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call17, i64 0, i32 1
  store %struct.asn1_type_st* %call19, %struct.asn1_type_st** %parameter, align 8, !tbaa !38
  %cmp20 = icmp eq %struct.asn1_type_st* %call19, null
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false, %if.then16
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %call17) #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_add_signer, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup50

if.end22:                                         ; preds = %lor.lhs.false
  %call23 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %4) #7
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end22
  %call26 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call23) #7
  br label %if.end30

if.else:                                          ; preds = %if.end22
  %call28 = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef %4) #7
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then25
  %call26.sink = phi %struct.asn1_object_st* [ %call28, %if.else ], [ %call26, %if.then25 ]
  %6 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call17, i64 0, i32 0
  store %struct.asn1_object_st* %call26.sink, %struct.asn1_object_st** %6, align 8
  %7 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !38
  %type32 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %7, i64 0, i32 0
  store i32 5, i32* %type32, align 8, !tbaa !39
  %cmp34 = icmp eq %struct.asn1_object_st* %call26.sink, null
  br i1 %cmp34, label %if.then40, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end30
  %call36 = tail call fastcc %struct.stack_st* @ossl_check_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %md_sk.0) #8
  %8 = bitcast %struct.X509_algor_st* %call17 to i8*
  %call38 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call36, i8* noundef nonnull %8) #7
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end42

if.then40:                                        ; preds = %lor.lhs.false35, %if.end30
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef nonnull %call17) #7
  br label %cleanup50

if.end42:                                         ; preds = %for.body, %lor.lhs.false35
  %call43 = tail call %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef %p7) #8
  %ctx = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %psi, i64 0, i32 8
  store %struct.PKCS7_CTX_st* %call43, %struct.PKCS7_CTX_st** %ctx, align 8, !tbaa !41
  %call44 = tail call fastcc %struct.stack_st* @ossl_check_PKCS7_SIGNER_INFO_sk_type(%struct.stack_st_PKCS7_SIGNER_INFO* noundef %signer_sk.0) #8
  %9 = bitcast %struct.pkcs7_signer_info_st* %psi to i8*
  %call46 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call44, i8* noundef %9) #7
  %tobool47.not = icmp ne i32 %call46, 0
  %. = zext i1 %tobool47.not to i32
  br label %cleanup50

cleanup50:                                        ; preds = %if.end42, %if.then21, %if.then40, %sw.default
  %retval.1 = phi i32 [ 0, %sw.default ], [ 0, %if.then40 ], [ 0, %if.then21 ], [ %., %if.end42 ]
  ret i32 %retval.1
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_ALGOR* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_ALGOR* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef readnone %p7) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.pkcs7_st* %p7, null
  %ctx = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 6
  %cond = select i1 %cmp.not, %struct.PKCS7_CTX_st* null, %struct.PKCS7_CTX_st* %ctx
  ret %struct.PKCS7_CTX_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_PKCS7_SIGNER_INFO_sk_type(%struct.stack_st_PKCS7_SIGNER_INFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7_SIGNER_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_add_certificate(%struct.pkcs7_st* nocapture noundef readonly %p7, %struct.x509_st* noundef %x509) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #7
  switch i32 %call, label %sw.default [
    i32 22, label %sw.bb
    i32 24, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %1 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %cert = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %1, i64 0, i32 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %d2 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %signed_and_enveloped = bitcast %union.anon* %d2 to %struct.pkcs7_signedandenveloped_st**
  %2 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !13
  %cert3 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %2, i64 0, i32 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_add_certificate, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 113, i8* noundef null) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %sk.0 = phi %struct.stack_st_X509** [ %cert3, %sw.bb1 ], [ %cert, %sw.bb ]
  %call4 = tail call i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef nonnull %sk.0, %struct.x509_st* noundef %x509, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call4, %sw.epilog ]
  ret i32 %retval.0
}

declare i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_add_crl(%struct.pkcs7_st* nocapture noundef readonly %p7, %struct.X509_crl_st* noundef %crl) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #7
  switch i32 %call, label %sw.default [
    i32 22, label %sw.bb
    i32 24, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %1 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %crl1 = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %1, i64 0, i32 3
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %d3 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %signed_and_enveloped = bitcast %union.anon* %d3 to %struct.pkcs7_signedandenveloped_st**
  %2 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !13
  %crl4 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %2, i64 0, i32 3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PKCS7_add_crl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 113, i8* noundef null) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %sk.0 = phi %struct.stack_st_X509_CRL** [ %crl4, %sw.bb2 ], [ %crl1, %sw.bb ]
  %3 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %sk.0, align 8, !tbaa !31
  %cmp = icmp eq %struct.stack_st_X509_CRL* %3, null
  br i1 %cmp, label %if.end, label %if.end8

if.end:                                           ; preds = %sw.epilog
  %call5 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %4 = bitcast %struct.stack_st_X509_CRL** %sk.0 to %struct.stack_st**
  store %struct.stack_st* %call5, %struct.stack_st** %4, align 8, !tbaa !31
  %cmp6 = icmp eq %struct.stack_st* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PKCS7_add_crl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end8:                                          ; preds = %sw.epilog, %if.end
  %call9 = tail call i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef %crl) #7
  %5 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %sk.0, align 8, !tbaa !31
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %5) #8
  %6 = bitcast %struct.X509_crl_st* %crl to i8*
  %call12 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call10, i8* noundef %6) #7
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %cleanup

if.then13:                                        ; preds = %if.end8
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef %crl) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then13, %if.then7, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %if.then7 ], [ 0, %if.then13 ], [ 1, %if.end8 ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_CRL_free(%struct.X509_crl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_SIGNER_INFO_set(%struct.pkcs7_signer_info_st* noundef %p7i, %struct.x509_st* noundef %x509, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %dgst) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %p7i, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !42
  %call = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %0, i64 noundef 1) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %issuer_and_serial = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %p7i, i64 0, i32 1
  %1 = load %struct.pkcs7_issuer_and_serial_st*, %struct.pkcs7_issuer_and_serial_st** %issuer_and_serial, align 8, !tbaa !43
  %issuer = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %1, i64 0, i32 0
  %call1 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %x509) #7
  %call2 = tail call i32 @X509_NAME_set(%struct.X509_name_st** noundef %issuer, %struct.X509_name_st* noundef %call1) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %2 = load %struct.pkcs7_issuer_and_serial_st*, %struct.pkcs7_issuer_and_serial_st** %issuer_and_serial, align 8, !tbaa !43
  %serial = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %2, i64 0, i32 1
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !44
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %3) #7
  %call7 = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %x509) #7
  %call8 = tail call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef %call7) #7
  %4 = load %struct.pkcs7_issuer_and_serial_st*, %struct.pkcs7_issuer_and_serial_st** %issuer_and_serial, align 8, !tbaa !43
  %serial10 = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %4, i64 0, i32 1
  store %struct.asn1_string_st* %call8, %struct.asn1_string_st** %serial10, align 8, !tbaa !44
  %tobool11.not = icmp eq %struct.asn1_string_st* %call8, null
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end5
  %call14 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %pkey) #7
  %pkey15 = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %p7i, i64 0, i32 7
  store %struct.evp_pkey_st* %pkey, %struct.evp_pkey_st** %pkey15, align 8, !tbaa !46
  %digest_alg = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %p7i, i64 0, i32 2
  %5 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digest_alg, align 8, !tbaa !32
  %call16 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %dgst) #7
  %call17 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call16) #7
  %call18 = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %5, %struct.asn1_object_st* noundef %call17, i32 noundef 5, i8* noundef null) #7
  %call19 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pkey, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %if.then23

lor.lhs.false:                                    ; preds = %if.end13
  %call21 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pkey, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %lor.lhs.false, %if.end13
  %call24 = tail call fastcc i32 @pkcs7_ecdsa_or_dsa_sign_verify_setup(%struct.pkcs7_signer_info_st* noundef nonnull %p7i) #8
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false
  %call26 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pkey, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  tail call fastcc void @pkcs7_rsa_sign_verify_setup(%struct.pkcs7_signer_info_st* noundef nonnull %p7i) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %6 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !47
  %cmp.not = icmp eq %struct.evp_pkey_asn1_method_st* %6, null
  br i1 %cmp.not, label %if.end43, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end30
  %pkey_ctrl = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %6, i64 0, i32 23
  %7 = load i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)** %pkey_ctrl, align 8, !tbaa !51
  %cmp32.not = icmp eq i32 (%struct.evp_pkey_st*, i32, i64, i8*)* %7, null
  br i1 %cmp32.not, label %if.end43, label %if.then33

if.then33:                                        ; preds = %land.lhs.true
  %8 = bitcast %struct.pkcs7_signer_info_st* %p7i to i8*
  %call36 = tail call i32 %7(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef 1, i64 noundef 0, i8* noundef %8) #7
  %cmp37 = icmp sgt i32 %call36, 0
  br i1 %cmp37, label %cleanup, label %if.end39

if.end39:                                         ; preds = %if.then33
  %cmp40.not = icmp eq i32 %call36, -2
  br i1 %cmp40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end39
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_SIGNER_INFO_set, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 147, i8* noundef null) #7
  br label %cleanup

if.end43:                                         ; preds = %if.end39, %land.lhs.true, %if.end30
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_SIGNER_INFO_set, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 148, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %entry, %if.end, %if.end5, %if.then33, %if.then41, %if.then28, %if.then23
  %retval.0 = phi i32 [ %call24, %if.then23 ], [ 1, %if.then28 ], [ 0, %if.then41 ], [ 1, %if.then33 ], [ 0, %if.end5 ], [ 0, %if.end ], [ 0, %entry ], [ 0, %if.end43 ]
  ret i32 %retval.0
}

declare i32 @X509_NAME_set(%struct.X509_name_st** noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkcs7_ecdsa_or_dsa_sign_verify_setup(%struct.pkcs7_signer_info_st* nocapture noundef readonly %si) unnamed_addr #0 {
entry:
  %snid = alloca i32, align 4
  %alg1 = alloca %struct.X509_algor_st*, align 8
  %alg2 = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast i32* %snid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast %struct.X509_algor_st** %alg1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast %struct.X509_algor_st** %alg2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %pkey1 = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 7
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !46
  call void @PKCS7_SIGNER_INFO_get0_algs(%struct.pkcs7_signer_info_st* noundef %si, %struct.evp_pkey_st** noundef null, %struct.X509_algor_st** noundef nonnull %alg1, %struct.X509_algor_st** noundef nonnull %alg2) #8
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg1, align 8, !tbaa !31
  %cmp2 = icmp eq %struct.X509_algor_st* %4, null
  br i1 %cmp2, label %cleanup.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %4, i64 0, i32 0
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !34
  %cmp3 = icmp eq %struct.asn1_object_st* %5, null
  br i1 %cmp3, label %cleanup.thread, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef nonnull %5) #7
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %cleanup.thread, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %3) #7
  %call10 = call i32 @OBJ_find_sigid_by_algs(i32* noundef nonnull %snid, i32 noundef %call, i32 noundef %call9) #7
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %cleanup.thread, label %6

cleanup.thread:                                   ; preds = %lor.lhs.false, %entry, %if.end, %if.end8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  br label %9

6:                                                ; preds = %if.end8
  %7 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg2, align 8, !tbaa !31
  %8 = load i32, i32* %snid, align 4, !tbaa !53
  %call13 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %8) #7
  %call14 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %7, %struct.asn1_object_st* noundef %call13, i32 noundef -1, i8* noundef null) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  br label %9

9:                                                ; preds = %cleanup.thread, %6
  %10 = phi i32 [ 1, %6 ], [ -1, %cleanup.thread ]
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @pkcs7_rsa_sign_verify_setup(%struct.pkcs7_signer_info_st* nocapture noundef readonly %si) unnamed_addr #0 {
entry:
  %alg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast %struct.X509_algor_st** %alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %alg, align 8, !tbaa !31
  call void @PKCS7_SIGNER_INFO_get0_algs(%struct.pkcs7_signer_info_st* noundef %si, %struct.evp_pkey_st** noundef null, %struct.X509_algor_st** noundef null, %struct.X509_algor_st** noundef nonnull %alg) #8
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !31
  %cmp1.not = icmp eq %struct.X509_algor_st* %1, null
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %entry
  %call = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 6) #7
  %call3 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef nonnull %1, %struct.asn1_object_st* noundef %call, i32 noundef 5, i8* noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then2, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_signer_info_st* @PKCS7_add_signature(%struct.pkcs7_st* noundef %p7, %struct.x509_st* noundef %x509, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %dgst) local_unnamed_addr #0 {
entry:
  %def_nid = alloca i32, align 4
  %cmp = icmp eq %struct.evp_md_st* %dgst, null
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %0 = bitcast i32* %def_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %call = call i32 @EVP_PKEY_get_default_digest_nid(%struct.evp_pkey_st* noundef %pkey, i32* noundef nonnull %def_nid) #7
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %cleanup.thread, label %if.end

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %def_nid, align 4, !tbaa !53
  %call3 = call i8* @OBJ_nid2sn(i32 noundef %1) #7
  %call4 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call3) #7
  %cmp5 = icmp eq %struct.evp_md_st* %call4, null
  br i1 %cmp5, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.PKCS7_add_signature, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 151, i8* noundef null) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then6, %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  br label %err

cleanup:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  br label %if.end8

if.end8:                                          ; preds = %cleanup, %entry
  %dgst.addr.1 = phi %struct.evp_md_st* [ %call4, %cleanup ], [ %dgst, %entry ]
  %call9 = call %struct.pkcs7_signer_info_st* @PKCS7_SIGNER_INFO_new() #7
  %cmp10 = icmp eq %struct.pkcs7_signer_info_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @PKCS7_SIGNER_INFO_set(%struct.pkcs7_signer_info_st* noundef nonnull %call9, %struct.x509_st* noundef %x509, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef nonnull %dgst.addr.1) #8
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %if.end15

if.end15:                                         ; preds = %if.end12
  %call16 = call i32 @PKCS7_add_signer(%struct.pkcs7_st* noundef %p7, %struct.pkcs7_signer_info_st* noundef nonnull %call9) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %cleanup20

err:                                              ; preds = %cleanup.thread, %if.end15, %if.end12, %if.end8
  %si.0 = phi %struct.pkcs7_signer_info_st* [ null, %if.end8 ], [ %call9, %if.end15 ], [ %call9, %if.end12 ], [ null, %cleanup.thread ]
  call void @PKCS7_SIGNER_INFO_free(%struct.pkcs7_signer_info_st* noundef %si.0) #7
  br label %cleanup20

cleanup20:                                        ; preds = %if.end15, %err
  %retval.0 = phi %struct.pkcs7_signer_info_st* [ null, %err ], [ %call9, %if.end15 ]
  ret %struct.pkcs7_signer_info_st* %retval.0
}

declare i32 @EVP_PKEY_get_default_digest_nid(%struct.evp_pkey_st* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare %struct.pkcs7_signer_info_st* @PKCS7_SIGNER_INFO_new() local_unnamed_addr #2

declare void @PKCS7_SIGNER_INFO_free(%struct.pkcs7_signer_info_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ossl_pkcs7_resolve_libctx(%struct.pkcs7_st* noundef %p7) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef %p7) #8
  %call1 = tail call %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef %call) #8
  %call2 = tail call i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef %call) #8
  %call3 = tail call fastcc %struct.stack_st_PKCS7_RECIP_INFO* @pkcs7_get_recipient_info(%struct.pkcs7_st* noundef %p7) #8
  %call4 = tail call %struct.stack_st_PKCS7_SIGNER_INFO* @PKCS7_get_signer_info(%struct.pkcs7_st* noundef %p7) #8
  %call5 = tail call fastcc %struct.stack_st_X509* @pkcs7_get_signer_certs(%struct.pkcs7_st* noundef %p7) #8
  %cmp = icmp eq %struct.PKCS7_CTX_st* %call, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %call5) #8
  %call772 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #7
  %cmp873 = icmp sgt i32 %call772, 0
  br i1 %cmp873, label %for.body, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.body, %for.cond.preheader
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS7_RECIP_INFO_sk_type(%struct.stack_st_PKCS7_RECIP_INFO* noundef %call3) #8
  %call1475 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #7
  %cmp1576 = icmp sgt i32 %call1475, 0
  br i1 %cmp1576, label %for.body16, label %for.cond23.preheader

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.074 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %call10 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %i.074) #7
  %0 = bitcast i8* %call10 to %struct.x509_st*
  %call11 = tail call i32 @ossl_x509_set0_libctx(%struct.x509_st* noundef %0, %struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2) #7
  %inc = add nuw nsw i32 %i.074, 1
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #7
  %cmp8 = icmp slt i32 %inc, %call7
  br i1 %cmp8, label %for.body, label %for.cond12.preheader, !llvm.loop !54

for.cond23.preheader:                             ; preds = %for.body16, %for.cond12.preheader
  %call24 = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS7_SIGNER_INFO_sk_type(%struct.stack_st_PKCS7_SIGNER_INFO* noundef %call4) #8
  %call2578 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call24) #7
  %cmp2679 = icmp sgt i32 %call2578, 0
  br i1 %cmp2679, label %for.body27, label %cleanup

for.body16:                                       ; preds = %for.cond12.preheader, %for.body16
  %i.177 = phi i32 [ %inc21, %for.body16 ], [ 0, %for.cond12.preheader ]
  %call18 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call13, i32 noundef %i.177) #7
  %cert = getelementptr inbounds i8, i8* %call18, i64 32
  %1 = bitcast i8* %cert to %struct.x509_st**
  %2 = load %struct.x509_st*, %struct.x509_st** %1, align 8, !tbaa !55
  %call19 = tail call i32 @ossl_x509_set0_libctx(%struct.x509_st* noundef %2, %struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2) #7
  %inc21 = add nuw nsw i32 %i.177, 1
  %call14 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #7
  %cmp15 = icmp slt i32 %inc21, %call14
  br i1 %cmp15, label %for.body16, label %for.cond23.preheader, !llvm.loop !57

for.body27:                                       ; preds = %for.cond23.preheader, %if.end33
  %i.280 = phi i32 [ %inc35, %if.end33 ], [ 0, %for.cond23.preheader ]
  %call29 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call24, i32 noundef %i.280) #7
  %cmp30.not = icmp eq i8* %call29, null
  br i1 %cmp30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %for.body27
  %ctx32 = getelementptr inbounds i8, i8* %call29, i64 64
  %3 = bitcast i8* %ctx32 to %struct.PKCS7_CTX_st**
  store %struct.PKCS7_CTX_st* %call, %struct.PKCS7_CTX_st** %3, align 8, !tbaa !41
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %for.body27
  %inc35 = add nuw nsw i32 %i.280, 1
  %call25 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call24) #7
  %cmp26 = icmp slt i32 %inc35, %call25
  br i1 %cmp26, label %for.body27, label %cleanup, !llvm.loop !58

cleanup:                                          ; preds = %if.end33, %for.cond23.preheader, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.PKCS7_CTX_st* %ctx, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %libctx = getelementptr inbounds %struct.PKCS7_CTX_st, %struct.PKCS7_CTX_st* %ctx, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !59
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.ossl_lib_ctx_st* [ %0, %cond.true ], [ null, %entry ]
  ret %struct.ossl_lib_ctx_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.PKCS7_CTX_st* %ctx, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %propq = getelementptr inbounds %struct.PKCS7_CTX_st, %struct.PKCS7_CTX_st* %ctx, i64 0, i32 1
  %0 = load i8*, i8** %propq, align 8, !tbaa !60
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %0, %cond.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_PKCS7_RECIP_INFO* @pkcs7_get_recipient_info(%struct.pkcs7_st* nocapture noundef readonly %p7) unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #7
  %cmp = icmp eq i32 %call, 24
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %signed_and_enveloped = bitcast %union.anon* %d to %struct.pkcs7_signedandenveloped_st**
  %1 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !13
  %recipientinfo = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %1, i64 0, i32 6
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call2 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #7
  %cmp3 = icmp eq i32 %call2, 23
  br i1 %cmp3, label %if.then4, label %return

if.then4:                                         ; preds = %if.end
  %d5 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %enveloped = bitcast %union.anon* %d5 to %struct.pkcs7_enveloped_st**
  %3 = load %struct.pkcs7_enveloped_st*, %struct.pkcs7_enveloped_st** %enveloped, align 8, !tbaa !13
  %recipientinfo6 = getelementptr inbounds %struct.pkcs7_enveloped_st, %struct.pkcs7_enveloped_st* %3, i64 0, i32 1
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then, %if.then4
  %recipientinfo6.sink = phi %struct.stack_st_PKCS7_RECIP_INFO** [ %recipientinfo6, %if.then4 ], [ %recipientinfo, %if.then ]
  %4 = load %struct.stack_st_PKCS7_RECIP_INFO*, %struct.stack_st_PKCS7_RECIP_INFO** %recipientinfo6.sink, align 8, !tbaa !31
  br label %return

return:                                           ; preds = %return.sink.split, %if.end
  %retval.0 = phi %struct.stack_st_PKCS7_RECIP_INFO* [ null, %if.end ], [ %4, %return.sink.split ]
  ret %struct.stack_st_PKCS7_RECIP_INFO* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_PKCS7_SIGNER_INFO* @PKCS7_get_signer_info(%struct.pkcs7_st* noundef readonly %p7) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.pkcs7_st* %p7, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %ptr = getelementptr %union.anon, %union.anon* %d, i64 0, i32 0
  %0 = load i8*, i8** %ptr, align 8, !tbaa !13
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #7
  %cmp2 = icmp eq i32 %call, 22
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %2 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %signer_info = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %2, i64 0, i32 4
  br label %return.sink.split

if.else:                                          ; preds = %if.end
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call6 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #7
  %cmp7 = icmp eq i32 %call6, 24
  br i1 %cmp7, label %if.then8, label %return

if.then8:                                         ; preds = %if.else
  %signed_and_enveloped = bitcast %union.anon* %d to %struct.pkcs7_signedandenveloped_st**
  %4 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !13
  %signer_info10 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %4, i64 0, i32 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then3, %if.then8
  %signer_info10.sink = phi %struct.stack_st_PKCS7_SIGNER_INFO** [ %signer_info10, %if.then8 ], [ %signer_info, %if.then3 ]
  %5 = load %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.stack_st_PKCS7_SIGNER_INFO** %signer_info10.sink, align 8, !tbaa !31
  br label %return

return:                                           ; preds = %return.sink.split, %if.else, %entry, %lor.lhs.false
  %retval.0 = phi %struct.stack_st_PKCS7_SIGNER_INFO* [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.else ], [ %5, %return.sink.split ]
  ret %struct.stack_st_PKCS7_SIGNER_INFO* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_X509* @pkcs7_get_signer_certs(%struct.pkcs7_st* nocapture noundef readonly %p7) unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #7
  %cmp = icmp eq i32 %call, 22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %1 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %cert = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %1, i64 0, i32 2
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call2 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #7
  %cmp3 = icmp eq i32 %call2, 24
  br i1 %cmp3, label %if.then4, label %return

if.then4:                                         ; preds = %if.end
  %d5 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %signed_and_enveloped = bitcast %union.anon* %d5 to %struct.pkcs7_signedandenveloped_st**
  %3 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !13
  %cert6 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %3, i64 0, i32 2
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then, %if.then4
  %cert6.sink = phi %struct.stack_st_X509** [ %cert6, %if.then4 ], [ %cert, %if.then ]
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %cert6.sink, align 8, !tbaa !31
  br label %return

return:                                           ; preds = %return.sink.split, %if.end
  %retval.0 = phi %struct.stack_st_X509* [ null, %if.end ], [ %4, %return.sink.split ]
  ret %struct.stack_st_X509* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @ossl_x509_set0_libctx(%struct.x509_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PKCS7_RECIP_INFO_sk_type(%struct.stack_st_PKCS7_RECIP_INFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7_RECIP_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PKCS7_SIGNER_INFO_sk_type(%struct.stack_st_PKCS7_SIGNER_INFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7_SIGNER_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_pkcs7_set0_libctx(%struct.pkcs7_st* nocapture noundef writeonly %p7, %struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #5 {
entry:
  %libctx = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 6, i32 0
  store %struct.ossl_lib_ctx_st* %ctx, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_pkcs7_set1_propq(%struct.pkcs7_st* nocapture noundef %p7, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %propq1 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 6, i32 1
  %0 = load i8*, i8** %propq1, align 8, !tbaa !62
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 480) #7
  store i8* null, i8** %propq1, align 8, !tbaa !62
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp6.not = icmp eq i8* %propq, null
  br i1 %cmp6.not, label %return, label %if.then7

if.then7:                                         ; preds = %if.end
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 484) #7
  store i8* %call, i8** %propq1, align 8, !tbaa !62
  %cmp12 = icmp eq i8* %call, null
  br i1 %cmp12, label %if.then13, label %return

if.then13:                                        ; preds = %if.then7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 486, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_pkcs7_set1_propq, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 57, i32 noundef 786688, i8* noundef null) #7
  br label %return

return:                                           ; preds = %if.end, %if.then7, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 1, %if.then7 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_pkcs7_ctx_propagate(%struct.pkcs7_st* nocapture noundef readonly %from, %struct.pkcs7_st* noundef %to) local_unnamed_addr #0 {
entry:
  %libctx = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %from, i64 0, i32 6, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !61
  tail call void @ossl_pkcs7_set0_libctx(%struct.pkcs7_st* noundef %to, %struct.ossl_lib_ctx_st* noundef %0) #8
  %propq = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %from, i64 0, i32 6, i32 1
  %1 = load i8*, i8** %propq, align 8, !tbaa !62
  %call = tail call i32 @ossl_pkcs7_set1_propq(%struct.pkcs7_st* noundef %to, i8* noundef %1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @ossl_pkcs7_resolve_libctx(%struct.pkcs7_st* noundef %to) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_set_digest(%struct.pkcs7_st* nocapture noundef readonly %p7, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #7
  %cmp = icmp eq i32 %call, 25
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #7
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %digest = bitcast %union.anon* %d to %struct.pkcs7_digest_st**
  %1 = load %struct.pkcs7_digest_st*, %struct.pkcs7_digest_st** %digest, align 8, !tbaa !13
  %md2 = getelementptr inbounds %struct.pkcs7_digest_st, %struct.pkcs7_digest_st* %1, i64 0, i32 1
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %md2, align 8, !tbaa !63
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %2, i64 0, i32 1
  store %struct.asn1_type_st* %call1, %struct.asn1_type_st** %parameter, align 8, !tbaa !38
  %cmp3 = icmp eq %struct.asn1_type_st* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 516, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_set_digest, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.pkcs7_digest_st*, %struct.pkcs7_digest_st** %digest, align 8, !tbaa !13
  %md7 = getelementptr inbounds %struct.pkcs7_digest_st, %struct.pkcs7_digest_st* %3, i64 0, i32 1
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %md7, align 8, !tbaa !63
  %parameter8 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %4, i64 0, i32 1
  %5 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter8, align 8, !tbaa !38
  %type9 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %5, i64 0, i32 0
  store i32 5, i32* %type9, align 8, !tbaa !39
  %call10 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %md) #7
  %call11 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call10) #7
  %6 = load %struct.pkcs7_digest_st*, %struct.pkcs7_digest_st** %digest, align 8, !tbaa !13
  %md14 = getelementptr inbounds %struct.pkcs7_digest_st, %struct.pkcs7_digest_st* %6, i64 0, i32 1
  %7 = load %struct.X509_algor_st*, %struct.X509_algor_st** %md14, align 8, !tbaa !63
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %7, i64 0, i32 0
  store %struct.asn1_object_st* %call11, %struct.asn1_object_st** %algorithm, align 8, !tbaa !34
  br label %return

if.end15:                                         ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 524, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_set_digest, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 113, i8* noundef null) #7
  br label %return

return:                                           ; preds = %if.end15, %if.end, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.end ], [ 1, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @PKCS7_SIGNER_INFO_get0_algs(%struct.pkcs7_signer_info_st* nocapture noundef readonly %si, %struct.evp_pkey_st** noundef writeonly %pk, %struct.X509_algor_st** noundef writeonly %pdig, %struct.X509_algor_st** noundef writeonly %psig) local_unnamed_addr #6 {
entry:
  %tobool.not = icmp eq %struct.evp_pkey_st** %pk, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pkey = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 7
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !46
  store %struct.evp_pkey_st* %0, %struct.evp_pkey_st** %pk, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq %struct.X509_algor_st** %pdig, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %digest_alg = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 2
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digest_alg, align 8, !tbaa !32
  store %struct.X509_algor_st* %1, %struct.X509_algor_st** %pdig, align 8, !tbaa !31
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %tobool4.not = icmp eq %struct.X509_algor_st** %psig, null
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  %digest_enc_alg = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 4
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digest_enc_alg, align 8, !tbaa !64
  store %struct.X509_algor_st* %2, %struct.X509_algor_st** %psig, align 8, !tbaa !31
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @PKCS7_RECIP_INFO_get0_alg(%struct.pkcs7_recip_info_st* nocapture noundef readonly %ri, %struct.X509_algor_st** noundef writeonly %penc) local_unnamed_addr #6 {
entry:
  %tobool.not = icmp eq %struct.X509_algor_st** %penc, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %key_enc_algor = getelementptr inbounds %struct.pkcs7_recip_info_st, %struct.pkcs7_recip_info_st* %ri, i64 0, i32 2
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %key_enc_algor, align 8, !tbaa !65
  store %struct.X509_algor_st* %0, %struct.X509_algor_st** %penc, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_recip_info_st* @PKCS7_add_recipient(%struct.pkcs7_st* noundef %p7, %struct.x509_st* noundef %x509) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs7_recip_info_st* @PKCS7_RECIP_INFO_new() #7
  %cmp = icmp eq %struct.pkcs7_recip_info_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PKCS7_RECIP_INFO_set(%struct.pkcs7_recip_info_st* noundef nonnull %call, %struct.x509_st* noundef %x509) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @PKCS7_add_recipient_info(%struct.pkcs7_st* noundef %p7, %struct.pkcs7_recip_info_st* noundef nonnull %call) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = tail call %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef %p7) #8
  %ctx = getelementptr inbounds %struct.pkcs7_recip_info_st, %struct.pkcs7_recip_info_st* %call, i64 0, i32 5
  store %struct.PKCS7_CTX_st* %call8, %struct.PKCS7_CTX_st** %ctx, align 8, !tbaa !66
  br label %cleanup

err:                                              ; preds = %if.end3, %if.end, %entry
  tail call void @PKCS7_RECIP_INFO_free(%struct.pkcs7_recip_info_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end7
  %retval.0 = phi %struct.pkcs7_recip_info_st* [ null, %err ], [ %call, %if.end7 ]
  ret %struct.pkcs7_recip_info_st* %retval.0
}

declare %struct.pkcs7_recip_info_st* @PKCS7_RECIP_INFO_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_RECIP_INFO_set(%struct.pkcs7_recip_info_st* noundef %p7i, %struct.x509_st* noundef %x509) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.pkcs7_recip_info_st, %struct.pkcs7_recip_info_st* %p7i, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !67
  %call = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %0, i64 noundef 0) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %issuer_and_serial = getelementptr inbounds %struct.pkcs7_recip_info_st, %struct.pkcs7_recip_info_st* %p7i, i64 0, i32 1
  %1 = load %struct.pkcs7_issuer_and_serial_st*, %struct.pkcs7_issuer_and_serial_st** %issuer_and_serial, align 8, !tbaa !68
  %issuer = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %1, i64 0, i32 0
  %call1 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %x509) #7
  %call2 = tail call i32 @X509_NAME_set(%struct.X509_name_st** noundef %issuer, %struct.X509_name_st* noundef %call1) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %2 = load %struct.pkcs7_issuer_and_serial_st*, %struct.pkcs7_issuer_and_serial_st** %issuer_and_serial, align 8, !tbaa !68
  %serial = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %2, i64 0, i32 1
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !44
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %3) #7
  %call7 = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %x509) #7
  %call8 = tail call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef %call7) #7
  %4 = load %struct.pkcs7_issuer_and_serial_st*, %struct.pkcs7_issuer_and_serial_st** %issuer_and_serial, align 8, !tbaa !68
  %serial10 = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %4, i64 0, i32 1
  store %struct.asn1_string_st* %call8, %struct.asn1_string_st** %serial10, align 8, !tbaa !44
  %tobool11.not = icmp eq %struct.asn1_string_st* %call8, null
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end5
  %call14 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %x509) #7
  %cmp = icmp eq %struct.evp_pkey_st* %call14, null
  br i1 %cmp, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end13
  %call17 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %call14, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %call14, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %if.then23

if.then23:                                        ; preds = %if.end20
  tail call fastcc void @pkcs7_rsa_encrypt_decrypt_setup(%struct.pkcs7_recip_info_st* noundef nonnull %p7i) #8
  br label %finished

if.end28:                                         ; preds = %if.end20
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call14, i64 0, i32 2
  %5 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !47
  %cmp29 = icmp eq %struct.evp_pkey_asn1_method_st* %5, null
  br i1 %cmp29, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end28
  %pkey_ctrl = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %5, i64 0, i32 23
  %6 = load i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)** %pkey_ctrl, align 8, !tbaa !51
  %cmp31 = icmp eq i32 (%struct.evp_pkey_st*, i32, i64, i8*)* %6, null
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %lor.lhs.false, %if.end28
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 638, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.PKCS7_RECIP_INFO_set, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 150, i8* noundef null) #7
  br label %cleanup

if.end33:                                         ; preds = %lor.lhs.false
  %7 = bitcast %struct.pkcs7_recip_info_st* %p7i to i8*
  %call36 = tail call i32 %6(%struct.evp_pkey_st* noundef nonnull %call14, i32 noundef 2, i64 noundef 0, i8* noundef %7) #7
  %cmp37 = icmp eq i32 %call36, -2
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end33
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 645, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.PKCS7_RECIP_INFO_set, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 150, i8* noundef null) #7
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %cmp40 = icmp slt i32 %call36, 1
  br i1 %cmp40, label %if.then41, label %finished

if.then41:                                        ; preds = %if.end39
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 649, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.PKCS7_RECIP_INFO_set, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 149, i8* noundef null) #7
  br label %cleanup

finished:                                         ; preds = %if.then23, %if.end39
  %call43 = tail call i32 @X509_up_ref(%struct.x509_st* noundef %x509) #7
  %cert = getelementptr inbounds %struct.pkcs7_recip_info_st, %struct.pkcs7_recip_info_st* %p7i, i64 0, i32 4
  store %struct.x509_st* %x509, %struct.x509_st** %cert, align 8, !tbaa !55
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.then38, %if.then41, %if.end16, %if.end13, %if.end5, %if.end, %entry, %finished
  %retval.0 = phi i32 [ 1, %finished ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end5 ], [ 0, %if.end13 ], [ -2, %if.end16 ], [ 0, %if.then41 ], [ 0, %if.then38 ], [ 0, %if.then32 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_add_recipient_info(%struct.pkcs7_st* nocapture noundef readonly %p7, %struct.pkcs7_recip_info_st* noundef %ri) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #7
  switch i32 %call, label %sw.default [
    i32 24, label %sw.bb
    i32 23, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %signed_and_enveloped = bitcast %union.anon* %d to %struct.pkcs7_signedandenveloped_st**
  %1 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !13
  %recipientinfo = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %1, i64 0, i32 6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %d2 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %enveloped = bitcast %union.anon* %d2 to %struct.pkcs7_enveloped_st**
  %2 = load %struct.pkcs7_enveloped_st*, %struct.pkcs7_enveloped_st** %enveloped, align 8, !tbaa !13
  %recipientinfo3 = getelementptr inbounds %struct.pkcs7_enveloped_st, %struct.pkcs7_enveloped_st* %2, i64 0, i32 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 588, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.PKCS7_add_recipient_info, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 113, i8* noundef null) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %sk.0.in = phi %struct.stack_st_PKCS7_RECIP_INFO** [ %recipientinfo3, %sw.bb1 ], [ %recipientinfo, %sw.bb ]
  %sk.0 = load %struct.stack_st_PKCS7_RECIP_INFO*, %struct.stack_st_PKCS7_RECIP_INFO** %sk.0.in, align 8, !tbaa !31
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_PKCS7_RECIP_INFO_sk_type(%struct.stack_st_PKCS7_RECIP_INFO* noundef %sk.0) #8
  %3 = bitcast %struct.pkcs7_recip_info_st* %ri to i8*
  %call6 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call4, i8* noundef %3) #7
  %tobool.not = icmp ne i32 %call6, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ %., %sw.epilog ]
  ret i32 %retval.0
}

declare void @PKCS7_RECIP_INFO_free(%struct.pkcs7_recip_info_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_PKCS7_RECIP_INFO_sk_type(%struct.stack_st_PKCS7_RECIP_INFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7_RECIP_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @pkcs7_rsa_encrypt_decrypt_setup(%struct.pkcs7_recip_info_st* nocapture noundef readonly %ri) unnamed_addr #0 {
entry:
  %alg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast %struct.X509_algor_st** %alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %alg, align 8, !tbaa !31
  call void @PKCS7_RECIP_INFO_get0_alg(%struct.pkcs7_recip_info_st* noundef %ri, %struct.X509_algor_st** noundef nonnull %alg) #8
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !31
  %cmp1.not = icmp eq %struct.X509_algor_st* %1, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %entry
  %call = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 6) #7
  %call3 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef nonnull %1, %struct.asn1_object_st* noundef %call, i32 noundef 5, i8* noundef null) #7
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.then2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret void
}

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @PKCS7_cert_from_signer_info(%struct.pkcs7_st* nocapture noundef readonly %p7, %struct.pkcs7_signer_info_st* nocapture noundef readonly %si) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #7
  %cmp = icmp eq i32 %call, 22
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %1 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %cert = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %1, i64 0, i32 2
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %cert, align 8, !tbaa !69
  %issuer_and_serial = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 1
  %3 = load %struct.pkcs7_issuer_and_serial_st*, %struct.pkcs7_issuer_and_serial_st** %issuer_and_serial, align 8, !tbaa !43
  %issuer = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %3, i64 0, i32 0
  %4 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !70
  %serial = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %3, i64 0, i32 1
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !44
  %call2 = tail call %struct.x509_st* @X509_find_by_issuer_and_serial(%struct.stack_st_X509* noundef %2, %struct.X509_name_st* noundef %4, %struct.asn1_string_st* noundef %5) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.x509_st* [ %call2, %if.then ], [ null, %entry ]
  ret %struct.x509_st* %retval.0
}

declare %struct.x509_st* @X509_find_by_issuer_and_serial(%struct.stack_st_X509* noundef, %struct.X509_name_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_set_cipher(%struct.pkcs7_st* noundef %p7, %struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #7
  switch i32 %call, label %sw.default [
    i32 24, label %sw.bb
    i32 23, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %signed_and_enveloped = bitcast %union.anon* %d to %struct.pkcs7_signedandenveloped_st**
  %1 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !13
  %enc_data = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %1, i64 0, i32 5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %d2 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %enveloped = bitcast %union.anon* %d2 to %struct.pkcs7_enveloped_st**
  %2 = load %struct.pkcs7_enveloped_st*, %struct.pkcs7_enveloped_st** %enveloped, align 8, !tbaa !13
  %enc_data3 = getelementptr inbounds %struct.pkcs7_enveloped_st, %struct.pkcs7_enveloped_st* %2, i64 0, i32 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 687, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_set_cipher, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 113, i8* noundef null) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %ec.0.in = phi %struct.pkcs7_enc_content_st** [ %enc_data3, %sw.bb1 ], [ %enc_data, %sw.bb ]
  %ec.0 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %ec.0.in, align 8, !tbaa !31
  %call4 = tail call i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef %cipher) #7
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 694, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_set_cipher, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 144, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %cipher5 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %ec.0, i64 0, i32 3
  store %struct.evp_cipher_st* %cipher, %struct.evp_cipher_st** %cipher5, align 8, !tbaa !71
  %call6 = tail call %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef nonnull %p7) #8
  %ctx = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %ec.0, i64 0, i32 4
  store %struct.PKCS7_CTX_st* %call6, %struct.PKCS7_CTX_st** %ctx, align 8, !tbaa !72
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_stream(i8*** nocapture noundef writeonly %boundary, %struct.pkcs7_st* nocapture noundef readonly %p7) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #7
  switch i32 %call, label %cleanup [
    i32 21, label %sw.bb
    i32 24, label %sw.bb1
    i32 23, label %sw.bb9
    i32 22, label %sw.bb21
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %data = bitcast %union.anon* %d to %struct.asn1_string_st**
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %data, align 8, !tbaa !13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %d2 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %signed_and_enveloped = bitcast %union.anon* %d2 to %struct.pkcs7_signedandenveloped_st**
  %2 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !13
  %enc_data = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %2, i64 0, i32 5
  %3 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data, align 8, !tbaa !19
  %enc_data3 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %3, i64 0, i32 2
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_data3, align 8, !tbaa !73
  %cmp = icmp eq %struct.asn1_string_st* %4, null
  br i1 %cmp, label %if.then, label %if.end27

if.then:                                          ; preds = %sw.bb1
  %call4 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #7
  %5 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !13
  %enc_data7 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %5, i64 0, i32 5
  %6 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data7, align 8, !tbaa !19
  %enc_data8 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %6, i64 0, i32 2
  store %struct.asn1_string_st* %call4, %struct.asn1_string_st** %enc_data8, align 8, !tbaa !73
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %d10 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %enveloped = bitcast %union.anon* %d10 to %struct.pkcs7_enveloped_st**
  %7 = load %struct.pkcs7_enveloped_st*, %struct.pkcs7_enveloped_st** %enveloped, align 8, !tbaa !13
  %enc_data11 = getelementptr inbounds %struct.pkcs7_enveloped_st, %struct.pkcs7_enveloped_st* %7, i64 0, i32 2
  %8 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data11, align 8, !tbaa !24
  %enc_data12 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %8, i64 0, i32 2
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_data12, align 8, !tbaa !73
  %cmp13 = icmp eq %struct.asn1_string_st* %9, null
  br i1 %cmp13, label %if.then14, label %if.end27

if.then14:                                        ; preds = %sw.bb9
  %call15 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #7
  %10 = load %struct.pkcs7_enveloped_st*, %struct.pkcs7_enveloped_st** %enveloped, align 8, !tbaa !13
  %enc_data18 = getelementptr inbounds %struct.pkcs7_enveloped_st, %struct.pkcs7_enveloped_st* %10, i64 0, i32 2
  %11 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data18, align 8, !tbaa !24
  %enc_data19 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %11, i64 0, i32 2
  store %struct.asn1_string_st* %call15, %struct.asn1_string_st** %enc_data19, align 8, !tbaa !73
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %d22 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %sign = bitcast %union.anon* %d22 to %struct.pkcs7_signed_st**
  %12 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %contents = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %12, i64 0, i32 5
  %13 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents, align 8, !tbaa !14
  %d23 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %13, i64 0, i32 5
  %data24 = bitcast %union.anon* %d23 to %struct.asn1_string_st**
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %data24, align 8, !tbaa !13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then14, %if.then, %sw.bb21, %sw.bb
  %os.0 = phi %struct.asn1_string_st* [ %14, %sw.bb21 ], [ %call15, %if.then14 ], [ %call4, %if.then ], [ %1, %sw.bb ]
  %cmp25 = icmp eq %struct.asn1_string_st* %os.0, null
  br i1 %cmp25, label %cleanup, label %if.end27

if.end27:                                         ; preds = %sw.bb1, %sw.bb9, %sw.epilog
  %os.045 = phi %struct.asn1_string_st* [ %os.0, %sw.epilog ], [ %4, %sw.bb1 ], [ %9, %sw.bb9 ]
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %os.045, i64 0, i32 3
  %15 = load i64, i64* %flags, align 8, !tbaa !74
  %or = or i64 %15, 16
  store i64 %or, i64* %flags, align 8, !tbaa !74
  %data28 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %os.045, i64 0, i32 2
  store i8** %data28, i8*** %boundary, align 8, !tbaa !31
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog, %if.end27
  %retval.0 = phi i32 [ 1, %if.end27 ], [ 0, %sw.epilog ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @OBJ_find_sigid_by_algs(i32* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 24}
!5 = !{!"pkcs7_st", !6, i64 0, !9, i64 8, !10, i64 16, !10, i64 20, !6, i64 24, !7, i64 32, !11, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!"PKCS7_CTX_st", !6, i64 0, !6, i64 8}
!12 = !{!5, !10, i64 20}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !6, i64 40}
!15 = !{!"pkcs7_signed_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!16 = !{!15, !6, i64 0}
!17 = !{!18, !6, i64 0}
!18 = !{!"pkcs7_signedandenveloped_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!19 = !{!18, !6, i64 40}
!20 = !{!21, !6, i64 0}
!21 = !{!"pkcs7_enc_content_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!22 = !{!23, !6, i64 0}
!23 = !{!"pkcs7_enveloped_st", !6, i64 0, !6, i64 8, !6, i64 16}
!24 = !{!23, !6, i64 16}
!25 = !{!26, !6, i64 0}
!26 = !{!"pkcs7_encrypted_st", !6, i64 0, !6, i64 8}
!27 = !{!26, !6, i64 8}
!28 = !{!29, !6, i64 0}
!29 = !{!"pkcs7_digest_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!30 = !{!29, !6, i64 16}
!31 = !{!6, !6, i64 0}
!32 = !{!33, !6, i64 16}
!33 = !{!"pkcs7_signer_info_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64}
!34 = !{!35, !6, i64 0}
!35 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!35, !6, i64 8}
!39 = !{!40, !10, i64 0}
!40 = !{!"asn1_type_st", !10, i64 0, !7, i64 8}
!41 = !{!33, !6, i64 64}
!42 = !{!33, !6, i64 0}
!43 = !{!33, !6, i64 8}
!44 = !{!45, !6, i64 8}
!45 = !{!"pkcs7_issuer_and_serial_st", !6, i64 0, !6, i64 8}
!46 = !{!33, !6, i64 56}
!47 = !{!48, !6, i64 8}
!48 = !{!"evp_pkey_st", !10, i64 0, !10, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !6, i64 56, !6, i64 64, !10, i64 72, !10, i64 76, !49, i64 80, !6, i64 96, !6, i64 104, !9, i64 112, !6, i64 120, !9, i64 128, !50, i64 136}
!49 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!50 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8}
!51 = !{!52, !6, i64 176}
!52 = !{!"evp_pkey_asn1_method_st", !10, i64 0, !10, i64 4, !9, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312}
!53 = !{!10, !10, i64 0}
!54 = distinct !{!54, !37}
!55 = !{!56, !6, i64 32}
!56 = !{!"pkcs7_recip_info_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !37}
!59 = !{!11, !6, i64 0}
!60 = !{!11, !6, i64 8}
!61 = !{!5, !6, i64 40}
!62 = !{!5, !6, i64 48}
!63 = !{!29, !6, i64 8}
!64 = !{!33, !6, i64 32}
!65 = !{!56, !6, i64 16}
!66 = !{!56, !6, i64 40}
!67 = !{!56, !6, i64 0}
!68 = !{!56, !6, i64 8}
!69 = !{!15, !6, i64 16}
!70 = !{!45, !6, i64 0}
!71 = !{!21, !6, i64 24}
!72 = !{!21, !6, i64 32}
!73 = !{!21, !6, i64 16}
!74 = !{!75, !9, i64 16}
!75 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !6, i64 8, !9, i64 16}
