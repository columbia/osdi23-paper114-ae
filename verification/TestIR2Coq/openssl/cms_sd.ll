; ModuleID = 'crypto/cms/cms_sd.c'
source_filename = "crypto/cms/cms_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMS_ContentInfo_st = type { %struct.asn1_object_st*, %union.anon, %struct.CMS_CTX_st }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%union.anon = type { %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.CMS_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.CMS_SignedData_st = type { i32, %struct.stack_st_X509_ALGOR*, %struct.CMS_EncapsulatedContentInfo_st*, %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_SignerInfo* }
%struct.stack_st_X509_ALGOR = type opaque
%struct.CMS_EncapsulatedContentInfo_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32 }
%struct.stack_st_CMS_CertificateChoices = type opaque
%struct.stack_st_CMS_RevocationInfoChoice = type opaque
%struct.stack_st_CMS_SignerInfo = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_VALUE_st = type opaque
%struct.CMS_SignerIdentifier_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.CMS_IssuerAndSerialNumber_st* }
%struct.CMS_IssuerAndSerialNumber_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.CMS_SignerInfo_st = type { i32, %struct.CMS_SignerIdentifier_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_md_ctx_st*, %struct.evp_pkey_ctx_st*, %struct.CMS_CTX_st* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.3, %struct.anon.9, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.evp_keymgmt_st = type opaque
%union.anon.3 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.9 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.engine_st = type opaque
%struct.bignum_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.stack_st = type opaque
%struct.ESS_signing_cert = type { %struct.stack_st_ESS_CERT_ID*, %struct.stack_st_POLICYINFO* }
%struct.stack_st_ESS_CERT_ID = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.stack_st_X509 = type opaque
%struct.ESS_signing_cert_v2_st = type { %struct.stack_st_ESS_CERT_ID_V2*, %struct.stack_st_POLICYINFO* }
%struct.stack_st_ESS_CERT_ID_V2 = type opaque
%struct.CMS_CertificateChoices = type { i32, %union.anon.10 }
%union.anon.10 = type { %struct.x509_st* }
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/cms/cms_sd.c\00", align 1
@__func__.ossl_cms_set1_SignerIdentifier = private unnamed_addr constant [31 x i8] c"ossl_cms_set1_SignerIdentifier\00", align 1
@__func__.CMS_add1_signer = private unnamed_addr constant [16 x i8] c"CMS_add1_signer\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@__func__.CMS_SignerInfo_verify = private unnamed_addr constant [22 x i8] c"CMS_SignerInfo_verify\00", align 1
@__func__.CMS_SignerInfo_verify_content = private unnamed_addr constant [30 x i8] c"CMS_SignerInfo_verify_content\00", align 1
@__func__.cms_signed_data_init = private unnamed_addr constant [21 x i8] c"cms_signed_data_init\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@__func__.cms_sd_asn1_ctrl = private unnamed_addr constant [17 x i8] c"cms_sd_asn1_ctrl\00", align 1
@__func__.cms_copy_messageDigest = private unnamed_addr constant [23 x i8] c"cms_copy_messageDigest\00", align 1
@__func__.cms_get0_signed = private unnamed_addr constant [16 x i8] c"cms_get0_signed\00", align 1
@__func__.cms_SignerInfo_content_sign = private unnamed_addr constant [28 x i8] c"cms_SignerInfo_content_sign\00", align 1
@__func__.cms_add1_signingTime = private unnamed_addr constant [21 x i8] c"cms_add1_signingTime\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_SignedData_init(%struct.CMS_ContentInfo_st* nocapture noundef %cms) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.CMS_SignedData_st* @cms_signed_data_init(%struct.CMS_ContentInfo_st* noundef %cms) #7
  %tobool.not = icmp ne %struct.CMS_SignedData_st* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.CMS_SignedData_st* @cms_signed_data_init(%struct.CMS_ContentInfo_st* nocapture noundef %cms) unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %other = bitcast %union.anon* %d to %struct.asn1_type_st**
  %0 = load %struct.asn1_type_st*, %struct.asn1_type_st** %other, align 8, !tbaa !4
  %cmp = icmp eq %struct.asn1_type_st* %0, null
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %call = tail call %struct.ASN1_ITEM_st* @CMS_SignedData_it() #8
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call) #8
  %signedData = bitcast %union.anon* %d to %struct.CMS_SignedData_st**
  %1 = bitcast %union.anon* %d to %struct.ASN1_VALUE_st**
  store %struct.ASN1_VALUE_st* %call1, %struct.ASN1_VALUE_st** %1, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.ASN1_VALUE_st* %call1, null
  br i1 %tobool.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cms_signed_data_init, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %if.then
  %version = bitcast %struct.ASN1_VALUE_st* %call1 to i32*
  store i32 1, i32* %version, align 8, !tbaa !7
  %call8 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 21) #8
  %2 = load %struct.CMS_SignedData_st*, %struct.CMS_SignedData_st** %signedData, align 8, !tbaa !4
  %encapContentInfo = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %2, i64 0, i32 2
  %3 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo, align 8, !tbaa !11
  %eContentType = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %3, i64 0, i32 0
  store %struct.asn1_object_st* %call8, %struct.asn1_object_st** %eContentType, align 8, !tbaa !12
  %4 = load %struct.CMS_SignedData_st*, %struct.CMS_SignedData_st** %signedData, align 8, !tbaa !4
  %encapContentInfo13 = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %4, i64 0, i32 2
  %5 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo13, align 8, !tbaa !11
  %partial = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %5, i64 0, i32 2
  store i32 1, i32* %partial, align 8, !tbaa !14
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %6 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType, align 8, !tbaa !15
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %6) #8
  %call14 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 22) #8
  store %struct.asn1_object_st* %call14, %struct.asn1_object_st** %contentType, align 8, !tbaa !15
  %7 = load %struct.CMS_SignedData_st*, %struct.CMS_SignedData_st** %signedData, align 8, !tbaa !4
  br label %return

if.end18:                                         ; preds = %entry
  %call19 = tail call fastcc %struct.CMS_SignedData_st* @cms_get0_signed(%struct.CMS_ContentInfo_st* noundef nonnull %cms) #7
  br label %return

return:                                           ; preds = %if.end18, %if.end, %if.then5
  %retval.0 = phi %struct.CMS_SignedData_st* [ %7, %if.end ], [ null, %if.then5 ], [ %call19, %if.end18 ]
  ret %struct.CMS_SignedData_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_set1_SignerIdentifier(%struct.CMS_SignerIdentifier_st* noundef %sid, %struct.x509_st* noundef %cert, i32 noundef %type, %struct.CMS_CTX_st* nocapture readnone %ctx) local_unnamed_addr #0 {
entry:
  switch i32 %type, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %issuerAndSerialNumber = getelementptr inbounds %struct.CMS_SignerIdentifier_st, %struct.CMS_SignerIdentifier_st* %sid, i64 0, i32 1, i32 0
  %call = tail call i32 @ossl_cms_set1_ias(%struct.CMS_IssuerAndSerialNumber_st** noundef nonnull %issuerAndSerialNumber, %struct.x509_st* noundef %cert) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %d2 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, %struct.CMS_SignerIdentifier_st* %sid, i64 0, i32 1
  %subjectKeyIdentifier = bitcast %union.anon.1* %d2 to %struct.asn1_string_st**
  %call3 = tail call i32 @ossl_cms_set1_keyid(%struct.asn1_string_st** noundef nonnull %subjectKeyIdentifier, %struct.x509_st* noundef %cert) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %return, label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_cms_set1_SignerIdentifier, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 150, i8* noundef null) #8
  br label %return

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %type7 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, %struct.CMS_SignerIdentifier_st* %sid, i64 0, i32 0
  store i32 %type, i32* %type7, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %sw.epilog, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %sw.epilog ], [ 0, %sw.bb ], [ 0, %sw.bb1 ]
  ret i32 %retval.0
}

declare i32 @ossl_cms_set1_ias(%struct.CMS_IssuerAndSerialNumber_st** noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @ossl_cms_set1_keyid(%struct.asn1_string_st** noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ossl_cms_SignerIdentifier_get0_signer_id(%struct.CMS_SignerIdentifier_st* nocapture noundef readonly %sid, %struct.asn1_string_st** noundef writeonly %keyid, %struct.X509_name_st** noundef writeonly %issuer, %struct.asn1_string_st** noundef writeonly %sno) local_unnamed_addr #2 {
entry:
  %type = getelementptr inbounds %struct.CMS_SignerIdentifier_st, %struct.CMS_SignerIdentifier_st* %sid, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  switch i32 %0, label %return [
    i32 0, label %if.then
    i32 1, label %if.then10
  ]

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq %struct.X509_name_st** %issuer, null
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %issuerAndSerialNumber = getelementptr inbounds %struct.CMS_SignerIdentifier_st, %struct.CMS_SignerIdentifier_st* %sid, i64 0, i32 1, i32 0
  %1 = load %struct.CMS_IssuerAndSerialNumber_st*, %struct.CMS_IssuerAndSerialNumber_st** %issuerAndSerialNumber, align 8, !tbaa !4
  %issuer2 = getelementptr inbounds %struct.CMS_IssuerAndSerialNumber_st, %struct.CMS_IssuerAndSerialNumber_st* %1, i64 0, i32 0
  %2 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer2, align 8, !tbaa !20
  store %struct.X509_name_st* %2, %struct.X509_name_st** %issuer, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %tobool3.not = icmp eq %struct.asn1_string_st** %sno, null
  br i1 %tobool3.not, label %return, label %if.then4

if.then4:                                         ; preds = %if.end
  %issuerAndSerialNumber6 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, %struct.CMS_SignerIdentifier_st* %sid, i64 0, i32 1, i32 0
  %3 = load %struct.CMS_IssuerAndSerialNumber_st*, %struct.CMS_IssuerAndSerialNumber_st** %issuerAndSerialNumber6, align 8, !tbaa !4
  %serialNumber = getelementptr inbounds %struct.CMS_IssuerAndSerialNumber_st, %struct.CMS_IssuerAndSerialNumber_st* %3, i64 0, i32 1
  br label %return.sink.split

if.then10:                                        ; preds = %entry
  %tobool11.not = icmp eq %struct.asn1_string_st** %keyid, null
  br i1 %tobool11.not, label %return, label %if.then12

if.then12:                                        ; preds = %if.then10
  %d13 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, %struct.CMS_SignerIdentifier_st* %sid, i64 0, i32 1
  %subjectKeyIdentifier = bitcast %union.anon.1* %d13 to %struct.asn1_string_st**
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then12, %if.then4
  %serialNumber.sink = phi %struct.asn1_string_st** [ %serialNumber, %if.then4 ], [ %subjectKeyIdentifier, %if.then12 ]
  %sno.sink = phi %struct.asn1_string_st** [ %sno, %if.then4 ], [ %keyid, %if.then12 ]
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serialNumber.sink, align 8, !tbaa !4
  store %struct.asn1_string_st* %4, %struct.asn1_string_st** %sno.sink, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %return.sink.split, %if.end, %if.then10, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then10 ], [ 1, %if.end ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_SignerIdentifier_cert_cmp(%struct.CMS_SignerIdentifier_st* nocapture noundef readonly %sid, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_SignerIdentifier_st, %struct.CMS_SignerIdentifier_st* %sid, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  switch i32 %0, label %return [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

if.then:                                          ; preds = %entry
  %issuerAndSerialNumber = getelementptr inbounds %struct.CMS_SignerIdentifier_st, %struct.CMS_SignerIdentifier_st* %sid, i64 0, i32 1, i32 0
  %1 = load %struct.CMS_IssuerAndSerialNumber_st*, %struct.CMS_IssuerAndSerialNumber_st** %issuerAndSerialNumber, align 8, !tbaa !4
  %call = tail call i32 @ossl_cms_ias_cert_cmp(%struct.CMS_IssuerAndSerialNumber_st* noundef %1, %struct.x509_st* noundef %cert) #8
  br label %return

if.then3:                                         ; preds = %entry
  %d4 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, %struct.CMS_SignerIdentifier_st* %sid, i64 0, i32 1
  %subjectKeyIdentifier = bitcast %union.anon.1* %d4 to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %subjectKeyIdentifier, align 8, !tbaa !4
  %call5 = tail call i32 @ossl_cms_keyid_cert_cmp(%struct.asn1_string_st* noundef %2, %struct.x509_st* noundef %cert) #8
  br label %return

return:                                           ; preds = %entry, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.then3 ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i32 @ossl_cms_ias_cert_cmp(%struct.CMS_IssuerAndSerialNumber_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @ossl_cms_keyid_cert_cmp(%struct.asn1_string_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_SignerInfo_st* @CMS_add1_signer(%struct.CMS_ContentInfo_st* noundef %cms, %struct.x509_st* noundef %signer, %struct.evp_pkey_st* noundef %pk, %struct.evp_md_st* noundef %md, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %def_nid = alloca i32, align 4
  %aoid = alloca %struct.asn1_object_st*, align 8
  %name = alloca [50 x i8], align 16
  %smcap = alloca %struct.stack_st_X509_ALGOR*, align 8
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #8
  %call1 = tail call i32 @X509_check_private_key(%struct.x509_st* noundef %signer, %struct.evp_pkey_st* noundef %pk) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.CMS_add1_signer, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 136, i8* noundef null) #8
  br label %cleanup227

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %struct.CMS_SignedData_st* @cms_signed_data_init(%struct.CMS_ContentInfo_st* noundef %cms) #7
  %tobool3.not = icmp eq %struct.CMS_SignedData_st* %call2, null
  br i1 %tobool3.not, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.ASN1_ITEM_st* @CMS_SignerInfo_it() #8
  %call7 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call6) #8
  %0 = bitcast %struct.ASN1_VALUE_st* %call7 to %struct.CMS_SignerInfo_st*
  %tobool8.not = icmp eq %struct.ASN1_VALUE_st* %call7, null
  br i1 %tobool8.not, label %merr, label %if.end10

if.end10:                                         ; preds = %if.end5
  %call11 = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %signer, i32 noundef -1, i32 noundef -1) #8
  %call12 = tail call i32 @X509_up_ref(%struct.x509_st* noundef %signer) #8
  %call13 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %pk) #8
  %cms_ctx = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %0, i64 0, i32 11
  store %struct.CMS_CTX_st* %call, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !23
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %0, i64 0, i32 8
  store %struct.evp_pkey_st* %pk, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  %signer14 = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %0, i64 0, i32 7
  store %struct.x509_st* %signer, %struct.x509_st** %signer14, align 8, !tbaa !26
  %call15 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %mctx = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %0, i64 0, i32 9
  store %struct.evp_md_ctx_st* %call15, %struct.evp_md_ctx_st** %mctx, align 8, !tbaa !27
  %pctx = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %0, i64 0, i32 10
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !28
  %cmp = icmp eq %struct.evp_md_ctx_st* %call15, null
  br i1 %cmp, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end10
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.CMS_add1_signer, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end18:                                         ; preds = %if.end10
  %and = and i32 %flags, 65536
  %tobool19.not = icmp eq i32 %and, 0
  %version26 = bitcast %struct.ASN1_VALUE_st* %call7 to i32*
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  store i32 3, i32* %version26, align 8, !tbaa !29
  %version21 = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %call2, i64 0, i32 0
  %1 = load i32, i32* %version21, align 8, !tbaa !7
  %cmp22 = icmp slt i32 %1, 3
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.then20
  store i32 3, i32* %version21, align 8, !tbaa !7
  br label %if.end27

if.else:                                          ; preds = %if.end18
  store i32 1, i32* %version26, align 8, !tbaa !29
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.then23, %if.else
  %type.0 = phi i32 [ 0, %if.else ], [ 1, %if.then23 ], [ 1, %if.then20 ]
  %sid = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %0, i64 0, i32 1
  %2 = load %struct.CMS_SignerIdentifier_st*, %struct.CMS_SignerIdentifier_st** %sid, align 8, !tbaa !30
  %call28 = tail call i32 @ossl_cms_set1_SignerIdentifier(%struct.CMS_SignerIdentifier_st* noundef %2, %struct.x509_st* noundef %signer, i32 noundef %type.0, %struct.CMS_CTX_st* undef) #7
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %if.end31

if.end31:                                         ; preds = %if.end27
  %cmp32 = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp32, label %if.then33, label %if.end49

if.then33:                                        ; preds = %if.end31
  %3 = bitcast i32* %def_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  %call34 = call i32 @EVP_PKEY_get_default_digest_nid(%struct.evp_pkey_st* noundef %pk, i32* noundef nonnull %def_nid) #8
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %cleanup.thread, label %if.end37

if.end37:                                         ; preds = %if.then33
  %4 = load i32, i32* %def_nid, align 4, !tbaa !31
  %call38 = call i8* @OBJ_nid2sn(i32 noundef %4) #8
  %call39 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call38) #8
  %cmp40 = icmp eq %struct.evp_md_st* %call39, null
  br i1 %cmp40, label %if.then41, label %cleanup

if.then41:                                        ; preds = %if.end37
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 361, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.CMS_add1_signer, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 128, i8* noundef null) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then41, %if.then33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %err

cleanup:                                          ; preds = %if.end37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %if.end49

if.end49:                                         ; preds = %if.end31, %cleanup
  %md.addr.1 = phi %struct.evp_md_st* [ %call39, %cleanup ], [ %md, %if.end31 ]
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %0, i64 0, i32 2
  %5 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digestAlgorithm, align 8, !tbaa !32
  call void @X509_ALGOR_set_md(%struct.X509_algor_st* noundef %5, %struct.evp_md_st* noundef nonnull %md.addr.1) #8
  %6 = bitcast %struct.asn1_object_st** %aoid to i8*
  %digestAlgorithms = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %call2, i64 0, i32 1
  %7 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %digestAlgorithms, align 8, !tbaa !33
  %call50348 = call fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %7) #7
  %call51349 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call50348) #8
  %cmp52350 = icmp sgt i32 %call51349, 0
  br i1 %cmp52350, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end49
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0351 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %8) #9
  %9 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %digestAlgorithms, align 8, !tbaa !33
  %call54 = call fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %9) #7
  %call55 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call54, i32 noundef %i.0351) #8
  %10 = bitcast i8* %call55 to %struct.X509_algor_st*
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %aoid, i32* noundef null, i8** noundef null, %struct.X509_algor_st* noundef %10) #8
  %11 = load %struct.asn1_object_st*, %struct.asn1_object_st** %aoid, align 8, !tbaa !22
  %call56 = call i32 @OBJ_obj2txt(i8* noundef nonnull %8, i32 noundef 50, %struct.asn1_object_st* noundef %11, i32 noundef 0) #8
  %call58 = call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef nonnull %md.addr.1, i8* noundef nonnull %8) #8
  %tobool59.not = icmp eq i32 %call58, 0
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  br i1 %tobool59.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0351, 1
  %12 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %digestAlgorithms, align 8, !tbaa !33
  %call50 = call fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %12) #7
  %call51 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call50) #8
  %cmp52 = icmp slt i32 %inc, %call51
  br i1 %cmp52, label %for.body, label %for.end, !llvm.loop !34

for.end:                                          ; preds = %for.inc, %for.body, %if.end49
  %i.0.lcssa = phi i32 [ 0, %if.end49 ], [ %i.0351, %for.body ], [ %inc, %for.inc ]
  %13 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %digestAlgorithms, align 8, !tbaa !33
  %call67 = call fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %13) #7
  %call68 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call67) #8
  %cmp69 = icmp eq i32 %i.0.lcssa, %call68
  br i1 %cmp69, label %if.then70, label %if.end82

if.then70:                                        ; preds = %for.end
  %call71 = call %struct.X509_algor_st* @X509_ALGOR_new() #8
  %cmp72 = icmp eq %struct.X509_algor_st* %call71, null
  br i1 %cmp72, label %merr, label %if.end74

if.end74:                                         ; preds = %if.then70
  call void @X509_ALGOR_set_md(%struct.X509_algor_st* noundef nonnull %call71, %struct.evp_md_st* noundef nonnull %md.addr.1) #8
  %14 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %digestAlgorithms, align 8, !tbaa !33
  %call76 = call fastcc %struct.stack_st* @ossl_check_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %14) #7
  %15 = bitcast %struct.X509_algor_st* %call71 to i8*
  %call78 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call76, i8* noundef nonnull %15) #8
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.end74
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef nonnull %call71) #8
  br label %merr

if.end82:                                         ; preds = %if.end74, %for.end
  %and83 = and i32 %flags, 262144
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %land.lhs.true, label %if.end88

land.lhs.true:                                    ; preds = %if.end82
  %call85 = call fastcc i32 @cms_sd_asn1_ctrl(%struct.CMS_SignerInfo_st* noundef nonnull %0, i32 noundef 0) #7
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %if.end88

if.end88:                                         ; preds = %land.lhs.true, %if.end82
  %and89 = and i32 %flags, 256
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.then91, label %if.end165

if.then91:                                        ; preds = %if.end88
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %0, i64 0, i32 3
  %16 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %signedAttrs, align 8, !tbaa !36
  %tobool92.not = icmp eq %struct.stack_st_X509_ATTRIBUTE* %16, null
  br i1 %tobool92.not, label %if.then93, label %if.end100

if.then93:                                        ; preds = %if.then91
  %call94 = call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %17 = bitcast %struct.stack_st_X509_ATTRIBUTE** %signedAttrs to %struct.stack_st**
  store %struct.stack_st* %call94, %struct.stack_st** %17, align 8, !tbaa !36
  %tobool97.not = icmp eq %struct.stack_st* %call94, null
  br i1 %tobool97.not, label %merr, label %if.end100

if.end100:                                        ; preds = %if.then93, %if.then91
  %and101 = and i32 %flags, 512
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.then103, label %if.end117

if.then103:                                       ; preds = %if.end100
  %18 = bitcast %struct.stack_st_X509_ALGOR** %smcap to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9
  store %struct.stack_st_X509_ALGOR* null, %struct.stack_st_X509_ALGOR** %smcap, align 8, !tbaa !22
  %call104 = call i32 @CMS_add_standard_smimecap(%struct.stack_st_X509_ALGOR** noundef nonnull %smcap) #7
  %tobool105.not = icmp eq i32 %call104, 0
  %19 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %smcap, align 8, !tbaa !22
  br i1 %tobool105.not, label %merr.critedge, label %if.then106

if.then106:                                       ; preds = %if.then103
  %call107 = call i32 @CMS_add_smimecap(%struct.CMS_SignerInfo_st* noundef nonnull %0, %struct.stack_st_X509_ALGOR* noundef %19) #7
  %phi.cmp = icmp eq i32 %call107, 0
  %call109 = call fastcc %struct.stack_st* @ossl_check_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %19) #7
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call109, void (i8*)* noundef bitcast (void (%struct.X509_algor_st*)* @X509_ALGOR_free to void (i8*)*)) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9
  br i1 %phi.cmp, label %merr, label %if.end117

if.end117:                                        ; preds = %if.then106, %if.end100
  %and118 = and i32 %flags, 1048576
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end145, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end117
  %call122 = call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef nonnull %md.addr.1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #8
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.else130, label %if.then124

if.then124:                                       ; preds = %lor.lhs.false
  %call125 = call %struct.ESS_signing_cert* @OSSL_ESS_signing_cert_new_init(%struct.x509_st* noundef %signer, %struct.stack_st_X509* noundef null, i32 noundef 1) #8
  %cmp126 = icmp eq %struct.ESS_signing_cert* %call125, null
  br i1 %cmp126, label %err, label %if.end128

if.end128:                                        ; preds = %if.then124
  %call129 = call fastcc i32 @ossl_cms_add1_signing_cert(%struct.CMS_SignerInfo_st* noundef nonnull %0, %struct.ESS_signing_cert* noundef nonnull %call125) #7
  call void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef nonnull %call125) #8
  br label %if.end136

if.else130:                                       ; preds = %lor.lhs.false
  %call131 = call %struct.ESS_signing_cert_v2_st* @OSSL_ESS_signing_cert_v2_new_init(%struct.evp_md_st* noundef nonnull %md.addr.1, %struct.x509_st* noundef %signer, %struct.stack_st_X509* noundef null, i32 noundef 1) #8
  %cmp132 = icmp eq %struct.ESS_signing_cert_v2_st* %call131, null
  br i1 %cmp132, label %err, label %if.end134

if.end134:                                        ; preds = %if.else130
  %call135 = call fastcc i32 @ossl_cms_add1_signing_cert_v2(%struct.CMS_SignerInfo_st* noundef nonnull %0, %struct.ESS_signing_cert_v2_st* noundef nonnull %call131) #7
  call void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef nonnull %call131) #8
  br label %if.end136

if.end136:                                        ; preds = %if.end134, %if.end128
  %add_sc.0 = phi i32 [ %call129, %if.end128 ], [ %call135, %if.end134 ]
  %tobool137.not = icmp eq i32 %add_sc.0, 0
  br i1 %tobool137.not, label %err, label %if.end145

if.end145:                                        ; preds = %if.end136, %if.end117
  %and146 = and i32 %flags, 32768
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end165, label %if.then148

if.then148:                                       ; preds = %if.end145
  %call149 = call fastcc i32 @cms_copy_messageDigest(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_SignerInfo_st* noundef nonnull %0) #7
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %err, label %if.end152

if.end152:                                        ; preds = %if.then148
  %call153 = call fastcc i32 @cms_set_si_contentType_attr(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_SignerInfo_st* noundef nonnull %0) #7
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %err, label %if.end156

if.end156:                                        ; preds = %if.end152
  %and157 = and i32 %flags, 278528
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %land.lhs.true159, label %if.end165

land.lhs.true159:                                 ; preds = %if.end156
  %call160 = call i32 @CMS_SignerInfo_sign(%struct.CMS_SignerInfo_st* noundef nonnull %0) #7
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %err, label %if.end165

if.end165:                                        ; preds = %if.end145, %land.lhs.true159, %if.end156, %if.end88
  %and166 = and i32 %flags, 2
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.then168, label %if.end173

if.then168:                                       ; preds = %if.end165
  %call169 = call i32 @CMS_add1_cert(%struct.CMS_ContentInfo_st* noundef %cms, %struct.x509_st* noundef %signer) #8
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %merr, label %if.end173

if.end173:                                        ; preds = %if.then168, %if.end165
  br i1 %tobool84.not, label %if.end210, label %if.then176

if.then176:                                       ; preds = %if.end173
  br i1 %tobool90.not, label %if.else199, label %if.then179

if.then179:                                       ; preds = %if.then176
  %call180 = call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %call) #8
  %20 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  %call182 = call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %call) #8
  %call183 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %call180, %struct.evp_pkey_st* noundef %20, i8* noundef %call182) #8
  store %struct.evp_pkey_ctx_st* %call183, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !28
  %cmp186 = icmp eq %struct.evp_pkey_ctx_st* %call183, null
  br i1 %cmp186, label %err, label %if.end188

if.end188:                                        ; preds = %if.then179
  %call190 = call i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef nonnull %call183) #8
  %cmp191 = icmp slt i32 %call190, 1
  br i1 %cmp191, label %err, label %if.end193

if.end193:                                        ; preds = %if.end188
  %21 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !28
  %call195 = call i32 @EVP_PKEY_CTX_set_signature_md(%struct.evp_pkey_ctx_st* noundef %21, %struct.evp_md_st* noundef nonnull %md.addr.1) #8
  %cmp196 = icmp slt i32 %call195, 1
  br i1 %cmp196, label %err, label %if.end210

if.else199:                                       ; preds = %if.then176
  %22 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mctx, align 8, !tbaa !27
  %call202 = call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %md.addr.1) #8
  %call203 = call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %call) #8
  %call204 = call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %call) #8
  %call205 = call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef %22, %struct.evp_pkey_ctx_st** noundef nonnull %pctx, i8* noundef %call202, %struct.ossl_lib_ctx_st* noundef %call203, i8* noundef %call204, %struct.evp_pkey_st* noundef %pk, %struct.ossl_param_st* noundef null) #8
  %cmp206 = icmp slt i32 %call205, 1
  br i1 %cmp206, label %err, label %if.end210

if.end210:                                        ; preds = %if.end193, %if.else199, %if.end173
  %signerInfos = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %call2, i64 0, i32 5
  %23 = load %struct.stack_st_CMS_SignerInfo*, %struct.stack_st_CMS_SignerInfo** %signerInfos, align 8, !tbaa !37
  %tobool211.not = icmp eq %struct.stack_st_CMS_SignerInfo* %23, null
  br i1 %tobool211.not, label %if.end215, label %lor.lhs.false218

if.end215:                                        ; preds = %if.end210
  %call213 = call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %24 = bitcast %struct.stack_st_CMS_SignerInfo** %signerInfos to %struct.stack_st**
  store %struct.stack_st* %call213, %struct.stack_st** %24, align 8, !tbaa !37
  %25 = bitcast %struct.stack_st* %call213 to %struct.stack_st_CMS_SignerInfo*
  %tobool217.not = icmp eq %struct.stack_st* %call213, null
  br i1 %tobool217.not, label %merr, label %lor.lhs.false218

lor.lhs.false218:                                 ; preds = %if.end210, %if.end215
  %26 = phi %struct.stack_st_CMS_SignerInfo* [ %25, %if.end215 ], [ %23, %if.end210 ]
  %call220 = call fastcc %struct.stack_st* @ossl_check_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef nonnull %26) #7
  %27 = bitcast %struct.ASN1_VALUE_st* %call7 to i8*
  %call222 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call220, i8* noundef nonnull %27) #8
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %merr, label %cleanup227

merr.critedge:                                    ; preds = %if.then103
  %call109.c = call fastcc %struct.stack_st* @ossl_check_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %19) #7
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call109.c, void (i8*)* noundef bitcast (void (%struct.X509_algor_st*)* @X509_ALGOR_free to void (i8*)*)) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9
  br label %merr

merr:                                             ; preds = %merr.critedge, %if.then106, %if.end215, %lor.lhs.false218, %if.then168, %if.then93, %if.then70, %if.end5, %if.then80
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.CMS_add1_signer, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #8
  br label %err

err:                                              ; preds = %if.end136, %if.else130, %if.then124, %cleanup.thread, %if.else199, %if.end193, %if.end188, %if.then179, %land.lhs.true159, %if.end152, %if.then148, %land.lhs.true, %if.end27, %if.end, %merr, %if.then17
  %28 = phi %struct.ASN1_VALUE_st* [ %call7, %if.then17 ], [ %call7, %merr ], [ %call7, %if.then179 ], [ %call7, %if.end188 ], [ %call7, %if.end193 ], [ %call7, %if.else199 ], [ %call7, %land.lhs.true159 ], [ %call7, %if.end152 ], [ %call7, %if.then148 ], [ %call7, %land.lhs.true ], [ %call7, %if.end27 ], [ null, %if.end ], [ %call7, %cleanup.thread ], [ %call7, %if.then124 ], [ %call7, %if.else130 ], [ %call7, %if.end136 ]
  %call226 = call %struct.ASN1_ITEM_st* @CMS_SignerInfo_it() #8
  call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %28, %struct.ASN1_ITEM_st* noundef %call226) #8
  br label %cleanup227

cleanup227:                                       ; preds = %lor.lhs.false218, %err, %if.then
  %retval.0 = phi %struct.CMS_SignerInfo_st* [ null, %err ], [ null, %if.then ], [ %0, %lor.lhs.false218 ]
  ret %struct.CMS_SignerInfo_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_SignerInfo_it() local_unnamed_addr #1

declare i32 @X509_check_purpose(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #1

declare i32 @EVP_PKEY_get_default_digest_nid(%struct.evp_pkey_st* noundef, i32* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare void @X509_ALGOR_set_md(%struct.X509_algor_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_ALGOR* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_is_a(%struct.evp_md_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_ALGOR* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_sd_asn1_ctrl(%struct.CMS_SignerInfo_st* noundef %si, i32 noundef %cmd) unnamed_addr #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 8
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !25
  %call = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = tail call i32 @ossl_cms_ecdsa_dsa_sign(%struct.CMS_SignerInfo_st* noundef nonnull %si, i32 noundef %cmd) #8
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %call5 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %if.then10

lor.lhs.false7:                                   ; preds = %if.else
  %call8 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %lor.lhs.false7, %if.else
  %call11 = tail call i32 @ossl_cms_rsa_sign(%struct.CMS_SignerInfo_st* noundef nonnull %si, i32 noundef %cmd) #8
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false7
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %0, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !38
  %cmp = icmp eq %struct.evp_pkey_asn1_method_st* %1, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end12
  %pkey_ctrl = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 23
  %2 = load i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)** %pkey_ctrl, align 8, !tbaa !43
  %cmp15 = icmp eq i32 (%struct.evp_pkey_st*, i32, i64, i8*)* %2, null
  br i1 %cmp15, label %cleanup, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false13
  %3 = zext i32 %cmd to i64
  %4 = bitcast %struct.CMS_SignerInfo_st* %si to i8*
  %call20 = tail call i32 %2(%struct.evp_pkey_st* noundef nonnull %0, i32 noundef 5, i64 noundef %3, i8* noundef %4) #8
  %cmp21 = icmp eq i32 %call20, -2
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end17
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cms_sd_asn1_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 125, i8* noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %cmp25 = icmp slt i32 %call20, 1
  br i1 %cmp25, label %if.then27, label %cleanup

if.then27:                                        ; preds = %if.end24
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cms_sd_asn1_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 111, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end12, %lor.lhs.false13, %if.then27, %if.then23, %if.then10, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call11, %if.then10 ], [ 0, %if.then23 ], [ 0, %if.then27 ], [ 1, %lor.lhs.false13 ], [ 1, %if.end12 ], [ 1, %if.end24 ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_add_standard_smimecap(%struct.stack_st_X509_ALGOR** nocapture noundef %smcap) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @cms_add_cipher_smcap(%struct.stack_st_X509_ALGOR** noundef %smcap, i32 noundef 427, i32 noundef -1) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @cms_add_digest_smcap(%struct.stack_st_X509_ALGOR** noundef %smcap, i32 noundef 982) #7
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call fastcc i32 @cms_add_digest_smcap(%struct.stack_st_X509_ALGOR** noundef %smcap, i32 noundef 983) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call fastcc i32 @cms_add_digest_smcap(%struct.stack_st_X509_ALGOR** noundef %smcap, i32 noundef 809) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call fastcc i32 @cms_add_cipher_smcap(%struct.stack_st_X509_ALGOR** noundef %smcap, i32 noundef 813, i32 noundef -1) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %return, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call fastcc i32 @cms_add_cipher_smcap(%struct.stack_st_X509_ALGOR** noundef %smcap, i32 noundef 423, i32 noundef -1) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call fastcc i32 @cms_add_cipher_smcap(%struct.stack_st_X509_ALGOR** noundef %smcap, i32 noundef 419, i32 noundef -1) #7
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %return, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call fastcc i32 @cms_add_cipher_smcap(%struct.stack_st_X509_ALGOR** noundef %smcap, i32 noundef 44, i32 noundef -1) #7
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %return, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %call22 = tail call fastcc i32 @cms_add_cipher_smcap(%struct.stack_st_X509_ALGOR** noundef %smcap, i32 noundef 37, i32 noundef 128) #7
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %return, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %call25 = tail call fastcc i32 @cms_add_cipher_smcap(%struct.stack_st_X509_ALGOR** noundef %smcap, i32 noundef 37, i32 noundef 64) #7
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %return, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %call28 = tail call fastcc i32 @cms_add_cipher_smcap(%struct.stack_st_X509_ALGOR** noundef %smcap, i32 noundef 31, i32 noundef -1) #7
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %return, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %call31 = tail call fastcc i32 @cms_add_cipher_smcap(%struct.stack_st_X509_ALGOR** noundef %smcap, i32 noundef 37, i32 noundef 40) #7
  %tobool32.not = icmp ne i32 %call31, 0
  %spec.select = zext i1 %tobool32.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false30, %entry, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false6, %lor.lhs.false9, %lor.lhs.false12, %lor.lhs.false15, %lor.lhs.false18, %lor.lhs.false21, %lor.lhs.false24, %lor.lhs.false27
  %retval.0 = phi i32 [ 0, %lor.lhs.false27 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false30 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_add_smimecap(%struct.CMS_SignerInfo_st* noundef %si, %struct.stack_st_X509_ALGOR* noundef %algs) local_unnamed_addr #0 {
entry:
  %smder = alloca i8*, align 8
  %0 = bitcast i8** %smder to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %smder, align 8, !tbaa !22
  %call = call i32 @i2d_X509_ALGORS(%struct.stack_st_X509_ALGOR* noundef %algs, i8** noundef nonnull %smder) #8
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %smder, align 8, !tbaa !22
  %call1 = call i32 @CMS_signed_add1_attr_by_NID(%struct.CMS_SignerInfo_st* noundef %si, i32 noundef 167, i32 noundef 16, i8* noundef %1, i32 noundef %call) #8
  %2 = load i8*, i8** %smder, align 8, !tbaa !22
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1025) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare %struct.ESS_signing_cert* @OSSL_ESS_signing_cert_new_init(%struct.x509_st* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_cms_add1_signing_cert(%struct.CMS_SignerInfo_st* noundef %si, %struct.ESS_signing_cert* noundef %sc) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %call = tail call i32 @i2d_ESS_SIGNING_CERT(%struct.ESS_signing_cert* noundef %sc, i8** noundef null) #8
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv29 = zext i32 %call to i64
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %conv29, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 263) #8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  store i8* %call1, i8** %p, align 8, !tbaa !22
  %call4 = call i32 @i2d_ESS_SIGNING_CERT(%struct.ESS_signing_cert* noundef %sc, i8** noundef nonnull %p) #8
  %call5 = call %struct.asn1_string_st* @ASN1_STRING_new() #8
  %tobool.not = icmp eq %struct.asn1_string_st* %call5, null
  br i1 %tobool.not, label %if.then9, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %call7 = call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call5, i8* noundef nonnull %call1, i32 noundef %call) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false6, %if.end
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %call5) #8
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 270) #8
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 273) #8
  %1 = bitcast %struct.asn1_string_st* %call5 to i8*
  %call11 = call i32 @CMS_signed_add1_attr_by_NID(%struct.CMS_SignerInfo_st* noundef %si, i32 noundef 223, i32 noundef 16, i8* noundef nonnull %1, i32 noundef -1) #8
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef nonnull %call5) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end10, %if.then9
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ 0, %if.then9 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef) local_unnamed_addr #1

declare %struct.ESS_signing_cert_v2_st* @OSSL_ESS_signing_cert_v2_new_init(%struct.evp_md_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_cms_add1_signing_cert_v2(%struct.CMS_SignerInfo_st* noundef %si, %struct.ESS_signing_cert_v2_st* noundef %sc) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %call = tail call i32 @i2d_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st* noundef %sc, i8** noundef null) #8
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv29 = zext i32 %call to i64
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %conv29, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 288) #8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  store i8* %call1, i8** %p, align 8, !tbaa !22
  %call4 = call i32 @i2d_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st* noundef %sc, i8** noundef nonnull %p) #8
  %call5 = call %struct.asn1_string_st* @ASN1_STRING_new() #8
  %tobool.not = icmp eq %struct.asn1_string_st* %call5, null
  br i1 %tobool.not, label %if.then9, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %call7 = call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call5, i8* noundef nonnull %call1, i32 noundef %call) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false6, %if.end
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %call5) #8
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 295) #8
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 298) #8
  %1 = bitcast %struct.asn1_string_st* %call5 to i8*
  %call11 = call i32 @CMS_signed_add1_attr_by_NID(%struct.CMS_SignerInfo_st* noundef %si, i32 noundef 1086, i32 noundef 16, i8* noundef nonnull %1, i32 noundef -1) #8
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef nonnull %call5) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end10, %if.then9
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ 0, %if.then9 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_copy_messageDigest(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms, %struct.CMS_SignerInfo_st* noundef %si) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_CMS_SignerInfo* @CMS_get0_SignerInfos(%struct.CMS_ContentInfo_st* noundef %cms) #7
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef %call) #7
  %call242 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #8
  %cmp43 = icmp sgt i32 %call242, 0
  br i1 %cmp43, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.044) #8
  %0 = bitcast i8* %call4 to %struct.CMS_SignerInfo_st*
  %cmp5 = icmp eq %struct.CMS_SignerInfo_st* %0, %si
  br i1 %cmp5, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call6 = tail call i32 @CMS_signed_get_attr_count(%struct.CMS_SignerInfo_st* noundef %0) #8
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %for.inc, label %if.end9

if.end9:                                          ; preds = %if.end
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digestAlgorithm, align 8, !tbaa !32
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %1, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !45
  %digestAlgorithm10 = getelementptr inbounds i8, i8* %call4, i64 16
  %3 = bitcast i8* %digestAlgorithm10 to %struct.X509_algor_st**
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %3, align 8, !tbaa !32
  %algorithm11 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %4, i64 0, i32 0
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm11, align 8, !tbaa !45
  %call12 = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %2, %struct.asn1_object_st* noundef %5) #8
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %for.inc

if.end14:                                         ; preds = %if.end9
  %6 = bitcast i8* %call4 to %struct.CMS_SignerInfo_st*
  %call15 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 51) #8
  %call16 = tail call i8* @CMS_signed_get0_data_by_OBJ(%struct.CMS_SignerInfo_st* noundef nonnull %6, %struct.asn1_object_st* noundef %call15, i32 noundef -3, i32 noundef 4) #8
  %tobool17.not = icmp eq i8* %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.cms_copy_messageDigest, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 114, i8* noundef null) #8
  br label %cleanup23

if.end19:                                         ; preds = %if.end14
  %call20 = tail call i32 @CMS_signed_add1_attr_by_NID(%struct.CMS_SignerInfo_st* noundef nonnull %si, i32 noundef 51, i32 noundef 4, i8* noundef nonnull %call16, i32 noundef -1) #8
  %tobool21.not = icmp ne i32 %call20, 0
  %. = zext i1 %tobool21.not to i32
  br label %cleanup23

for.inc:                                          ; preds = %for.body, %if.end, %if.end9
  %inc = add nuw nsw i32 %i.044, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #8
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !47

for.end:                                          ; preds = %for.inc, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.cms_copy_messageDigest, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 131, i8* noundef null) #8
  br label %cleanup23

cleanup23:                                        ; preds = %if.then18, %if.end19, %for.end
  %retval.2 = phi i32 [ 0, %for.end ], [ 0, %if.then18 ], [ %., %if.end19 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_set_si_contentType_attr(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms, %struct.CMS_SignerInfo_st* noundef %si) unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %signedData = bitcast %union.anon* %d to %struct.CMS_SignedData_st**
  %0 = load %struct.CMS_SignedData_st*, %struct.CMS_SignedData_st** %signedData, align 8, !tbaa !4
  %encapContentInfo = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %0, i64 0, i32 2
  %1 = bitcast %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo to i8***
  %2 = load i8**, i8*** %1, align 8, !tbaa !11
  %3 = load i8*, i8** %2, align 8, !tbaa !12
  %call = tail call i32 @CMS_signed_add1_attr_by_NID(%struct.CMS_SignerInfo_st* noundef %si, i32 noundef 50, i32 noundef 6, i8* noundef %3, i32 noundef -1) #8
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_SignerInfo_sign(%struct.CMS_SignerInfo_st* noundef %si) local_unnamed_addr #0 {
entry:
  %pctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %abuf = alloca i8*, align 8
  %siglen = alloca i64, align 8
  %md_name = alloca [50 x i8], align 16
  %mctx1 = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 9
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mctx1, align 8, !tbaa !27
  %1 = bitcast %struct.evp_pkey_ctx_st** %pctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !22
  %2 = bitcast i8** %abuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i8* null, i8** %abuf, align 8, !tbaa !22
  %3 = bitcast i64* %siglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  %cms_ctx = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 11
  %4 = load %struct.CMS_CTX_st*, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !23
  %5 = getelementptr inbounds [50 x i8], [50 x i8]* %md_name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %5) #9
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 2
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digestAlgorithm, align 8, !tbaa !32
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %6, i64 0, i32 0
  %7 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !45
  %call = call i32 @OBJ_obj2txt(i8* noundef nonnull %5, i32 noundef 50, %struct.asn1_object_st* noundef %7, i32 noundef 0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @CMS_signed_get_attr_by_NID(%struct.CMS_SignerInfo_st* noundef nonnull %si, i32 noundef 52, i32 noundef -1) #8
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i32 @cms_add1_signingTime(%struct.CMS_SignerInfo_st* noundef nonnull %si) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end
  %call9 = call i32 @ossl_cms_si_check_attributes(%struct.CMS_SignerInfo_st* noundef nonnull %si) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %pctx13 = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 10
  %8 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx13, align 8, !tbaa !28
  %tobool14.not = icmp eq %struct.evp_pkey_ctx_st* %8, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  store %struct.evp_pkey_ctx_st* %8, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !22
  br label %if.end26

if.else:                                          ; preds = %if.end12
  %call17 = call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef %0) #8
  %call19 = call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %4) #8
  %call20 = call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %4) #8
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 8
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  %call21 = call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef %0, %struct.evp_pkey_ctx_st** noundef nonnull %pctx, i8* noundef nonnull %5, %struct.ossl_lib_ctx_st* noundef %call19, i8* noundef %call20, %struct.evp_pkey_st* noundef %9, %struct.ossl_param_st* noundef null) #8
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %err, label %if.end24

if.end24:                                         ; preds = %if.else
  %10 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !22
  store %struct.evp_pkey_ctx_st* %10, %struct.evp_pkey_ctx_st** %pctx13, align 8, !tbaa !28
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.then15
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %11 = bitcast %struct.stack_st_X509_ATTRIBUTE** %signedAttrs to %struct.ASN1_VALUE_st**
  %12 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %11, align 8, !tbaa !36
  %call27 = call %struct.ASN1_ITEM_st* @CMS_Attributes_Sign_it() #8
  %call28 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %12, i8** noundef nonnull %abuf, %struct.ASN1_ITEM_st* noundef %call27) #8
  %13 = load i8*, i8** %abuf, align 8, !tbaa !22
  %tobool29.not = icmp eq i8* %13, null
  br i1 %tobool29.not, label %err, label %if.end31

if.end31:                                         ; preds = %if.end26
  %conv = sext i32 %call28 to i64
  %call32 = call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef %0, i8* noundef nonnull %13, i64 noundef %conv) #8
  %cmp33 = icmp slt i32 %call32, 1
  br i1 %cmp33, label %err, label %if.end36

if.end36:                                         ; preds = %if.end31
  %call37 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %0, i8* noundef null, i64* noundef nonnull %siglen) #8
  %cmp38 = icmp slt i32 %call37, 1
  br i1 %cmp38, label %err, label %if.end41

if.end41:                                         ; preds = %if.end36
  %14 = load i8*, i8** %abuf, align 8, !tbaa !22
  call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 819) #8
  %15 = load i64, i64* %siglen, align 8, !tbaa !48
  %call42 = call i8* @CRYPTO_malloc(i64 noundef %15, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 820) #8
  store i8* %call42, i8** %abuf, align 8, !tbaa !22
  %cmp43 = icmp eq i8* %call42, null
  br i1 %cmp43, label %err, label %if.end46

if.end46:                                         ; preds = %if.end41
  %call47 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %0, i8* noundef nonnull %call42, i64* noundef nonnull %siglen) #8
  %cmp48 = icmp slt i32 %call47, 1
  br i1 %cmp48, label %err, label %if.end51

if.end51:                                         ; preds = %if.end46
  %call52 = call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef %0) #8
  %signature = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 5
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !49
  %17 = load i8*, i8** %abuf, align 8, !tbaa !22
  %18 = load i64, i64* %siglen, align 8, !tbaa !48
  %conv53 = trunc i64 %18 to i32
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %16, i8* noundef %17, i32 noundef %conv53) #8
  br label %cleanup

err:                                              ; preds = %if.end46, %if.end41, %if.end36, %if.end31, %if.end26, %if.else, %if.end8, %if.then3
  %19 = load i8*, i8** %abuf, align 8, !tbaa !22
  call void @CRYPTO_free(i8* noundef %19, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 833) #8
  %call54 = call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef %0) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end51
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end51 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  ret i32 %retval.0
}

declare i32 @CMS_add1_cert(%struct.CMS_ContentInfo_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef) local_unnamed_addr #1

declare i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_signature_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

declare i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_CMS_SignerInfo* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_cms_SignerInfos_set_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #8
  %call1 = tail call i32 @ERR_set_mark() #8
  %call2 = tail call %struct.stack_st_CMS_SignerInfo* @CMS_get0_SignerInfos(%struct.CMS_ContentInfo_st* noundef %cms) #7
  %call3 = tail call i32 @ERR_pop_to_mark() #8
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef %call2) #7
  %call518 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #8
  %cmp19 = icmp sgt i32 %call518, 0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %i.020 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %i.020) #8
  %cmp8.not = icmp eq i8* %call7, null
  br i1 %cmp8.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %cms_ctx = getelementptr inbounds i8, i8* %call7, i64 88
  %0 = bitcast i8* %cms_ctx to %struct.CMS_CTX_st**
  store %struct.CMS_CTX_st* %call, %struct.CMS_CTX_st** %0, align 8, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i32 %i.020, 1
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #8
  %cmp = icmp slt i32 %inc, %call5
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !50

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

declare i32 @ERR_set_mark() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_CMS_SignerInfo* @CMS_get0_SignerInfos(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.CMS_SignedData_st* @cms_get0_signed(%struct.CMS_ContentInfo_st* noundef %cms) #7
  %cmp.not = icmp eq %struct.CMS_SignedData_st* %call, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %signerInfos = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %call, i64 0, i32 5
  %0 = load %struct.stack_st_CMS_SignerInfo*, %struct.stack_st_CMS_SignerInfo** %signerInfos, align 8, !tbaa !37
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.stack_st_CMS_SignerInfo* [ %0, %cond.true ], [ null, %entry ]
  ret %struct.stack_st_CMS_SignerInfo* %cond
}

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_CMS_SignerInfo* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_ctx_st* @CMS_SignerInfo_get0_pkey_ctx(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si) local_unnamed_addr #5 {
entry:
  %pctx = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 10
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !28
  ret %struct.evp_pkey_ctx_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_md_ctx_st* @CMS_SignerInfo_get0_md_ctx(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si) local_unnamed_addr #5 {
entry:
  %mctx = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 9
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mctx, align 8, !tbaa !27
  ret %struct.evp_md_ctx_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.CMS_SignedData_st* @cms_get0_signed(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) unnamed_addr #0 {
entry:
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType, align 8, !tbaa !15
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #8
  %cmp.not = icmp eq i32 %call, 22
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cms_get0_signed, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 108, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %signedData = bitcast %union.anon* %d to %struct.CMS_SignedData_st**
  %1 = load %struct.CMS_SignedData_st*, %struct.CMS_SignedData_st** %signedData, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.CMS_SignedData_st* [ null, %if.then ], [ %1, %if.end ]
  ret %struct.CMS_SignedData_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @CMS_get0_signers(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) local_unnamed_addr #0 {
entry:
  %signers = alloca %struct.stack_st_X509*, align 8
  %0 = bitcast %struct.stack_st_X509** %signers to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %signers, align 8, !tbaa !22
  %call = tail call %struct.stack_st_CMS_SignerInfo* @CMS_get0_SignerInfos(%struct.CMS_ContentInfo_st* noundef %cms) #7
  %call1 = call fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef %call) #7
  %call221 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #8
  %cmp22 = icmp sgt i32 %call221, 0
  br i1 %cmp22, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %for.inc
  %i.023 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %call4 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.023) #8
  %signer = getelementptr inbounds i8, i8* %call4, i64 56
  %1 = bitcast i8* %signer to %struct.x509_st**
  %2 = load %struct.x509_st*, %struct.x509_st** %1, align 8, !tbaa !26
  %cmp5.not = icmp eq %struct.x509_st* %2, null
  br i1 %cmp5.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %call7 = call i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef nonnull %signers, %struct.x509_st* noundef nonnull %2, i32 noundef 0) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %for.inc

if.then8:                                         ; preds = %if.then
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %signers, align 8, !tbaa !22
  %call9 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %3) #7
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call9) #8
  br label %cleanup

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i32 %i.023, 1
  %call2 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #8
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !51

for.end.loopexit:                                 ; preds = %for.inc
  %.pre = load %struct.stack_st_X509*, %struct.stack_st_X509** %signers, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end.loopexit, %if.then8
  %retval.0 = phi %struct.stack_st_X509* [ null, %if.then8 ], [ %.pre, %for.end.loopexit ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret %struct.stack_st_X509* %retval.0
}

declare i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @CMS_SignerInfo_set1_signer_cert(%struct.CMS_SignerInfo_st* nocapture noundef %si, %struct.x509_st* noundef %signer) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.x509_st* %signer, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %signer) #8
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 8
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %0) #8
  %call1 = tail call %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* noundef nonnull %signer) #8
  store %struct.evp_pkey_st* %call1, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %signer3 = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 7
  %1 = load %struct.x509_st*, %struct.x509_st** %signer3, align 8, !tbaa !26
  tail call void @X509_free(%struct.x509_st* noundef %1) #8
  store %struct.x509_st* %signer, %struct.x509_st** %signer3, align 8, !tbaa !26
  ret void
}

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* noundef) local_unnamed_addr #1

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @CMS_SignerInfo_get0_signer_id(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, %struct.asn1_string_st** noundef %keyid, %struct.X509_name_st** noundef %issuer, %struct.asn1_string_st** noundef %sno) local_unnamed_addr #2 {
entry:
  %sid = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 1
  %0 = load %struct.CMS_SignerIdentifier_st*, %struct.CMS_SignerIdentifier_st** %sid, align 8, !tbaa !30
  %call = tail call i32 @ossl_cms_SignerIdentifier_get0_signer_id(%struct.CMS_SignerIdentifier_st* noundef %0, %struct.asn1_string_st** noundef %keyid, %struct.X509_name_st** noundef %issuer, %struct.asn1_string_st** noundef %sno) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_SignerInfo_cert_cmp(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %sid = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 1
  %0 = load %struct.CMS_SignerIdentifier_st*, %struct.CMS_SignerIdentifier_st** %sid, align 8, !tbaa !30
  %call = tail call i32 @ossl_cms_SignerIdentifier_cert_cmp(%struct.CMS_SignerIdentifier_st* noundef %0, %struct.x509_st* noundef %cert) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_set1_signers_certs(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms, %struct.stack_st_X509* noundef %scerts, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.CMS_SignedData_st* @cms_get0_signed(%struct.CMS_ContentInfo_st* noundef %cms) #7
  %cmp = icmp eq %struct.CMS_SignedData_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %certificates = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %call, i64 0, i32 3
  %0 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %certificates, align 8, !tbaa !52
  %signerInfos = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %call, i64 0, i32 5
  %1 = load %struct.stack_st_CMS_SignerInfo*, %struct.stack_st_CMS_SignerInfo** %signerInfos, align 8, !tbaa !37
  %call190 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef %1) #7
  %call291 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call190) #8
  %cmp392 = icmp sgt i32 %call291, 0
  br i1 %cmp392, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %and = and i32 %flags, 16
  %tobool.not = icmp eq i32 %and, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc42
  %ret.094 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2, %for.inc42 ]
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc43, %for.inc42 ]
  %2 = load %struct.stack_st_CMS_SignerInfo*, %struct.stack_st_CMS_SignerInfo** %signerInfos, align 8, !tbaa !37
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef %2) #7
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call5, i32 noundef %i.093) #8
  %3 = bitcast i8* %call6 to %struct.CMS_SignerInfo_st*
  %signer = getelementptr inbounds i8, i8* %call6, i64 56
  %4 = bitcast i8* %signer to %struct.x509_st**
  %5 = load %struct.x509_st*, %struct.x509_st** %4, align 8, !tbaa !26
  %cmp7.not = icmp eq %struct.x509_st* %5, null
  br i1 %cmp7.not, label %for.cond10.preheader, label %for.inc42

for.cond10.preheader:                             ; preds = %for.body
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %scerts) #7
  %call1284 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call11) #8
  %cmp1385 = icmp sgt i32 %call1284, 0
  br i1 %cmp1385, label %for.body14, label %for.end

for.cond10:                                       ; preds = %for.body14
  %call12 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call11) #8
  %cmp13 = icmp slt i32 %inc21, %call12
  br i1 %cmp13, label %for.body14, label %for.end, !llvm.loop !53

for.body14:                                       ; preds = %for.cond10.preheader, %for.cond10
  %j.086 = phi i32 [ %inc21, %for.cond10 ], [ 0, %for.cond10.preheader ]
  %call16 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call11, i32 noundef %j.086) #8
  %6 = bitcast i8* %call16 to %struct.x509_st*
  %call17 = tail call i32 @CMS_SignerInfo_cert_cmp(%struct.CMS_SignerInfo_st* noundef %3, %struct.x509_st* noundef %6) #7
  %cmp18 = icmp eq i32 %call17, 0
  %inc21 = add nuw nsw i32 %j.086, 1
  br i1 %cmp18, label %if.then19, label %for.cond10

if.then19:                                        ; preds = %for.body14
  %7 = bitcast i8* %call16 to %struct.x509_st*
  tail call void @CMS_SignerInfo_set1_signer_cert(%struct.CMS_SignerInfo_st* noundef %3, %struct.x509_st* noundef %7) #7
  %inc = add nsw i32 %ret.094, 1
  br label %for.end

for.end:                                          ; preds = %for.cond10, %for.cond10.preheader, %if.then19
  %ret.1 = phi i32 [ %inc, %if.then19 ], [ %ret.094, %for.cond10.preheader ], [ %ret.094, %for.cond10 ]
  %8 = load %struct.x509_st*, %struct.x509_st** %4, align 8, !tbaa !26
  %cmp23.not = icmp eq %struct.x509_st* %8, null
  %or.cond = and i1 %tobool.not, %cmp23.not
  br i1 %or.cond, label %for.cond26.preheader, label %for.inc42

for.cond26.preheader:                             ; preds = %for.end
  %call2787 = tail call fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %0) #7
  %cmp2888 = icmp sgt i32 %call2787, 0
  br i1 %cmp2888, label %for.body29, label %for.inc42

for.body29:                                       ; preds = %for.cond26.preheader, %for.inc39
  %j.189 = phi i32 [ %inc40, %for.inc39 ], [ 0, %for.cond26.preheader ]
  %call30 = tail call fastcc %struct.CMS_CertificateChoices* @sk_CMS_CertificateChoices_value(%struct.stack_st_CMS_CertificateChoices* noundef %0, i32 noundef %j.189) #7
  %type = getelementptr inbounds %struct.CMS_CertificateChoices, %struct.CMS_CertificateChoices* %call30, i64 0, i32 0
  %9 = load i32, i32* %type, align 8, !tbaa !54
  %cmp31.not = icmp eq i32 %9, 0
  br i1 %cmp31.not, label %if.end33, label %for.inc39

if.end33:                                         ; preds = %for.body29
  %certificate = getelementptr inbounds %struct.CMS_CertificateChoices, %struct.CMS_CertificateChoices* %call30, i64 0, i32 1, i32 0
  %10 = load %struct.x509_st*, %struct.x509_st** %certificate, align 8, !tbaa !4
  %call34 = tail call i32 @CMS_SignerInfo_cert_cmp(%struct.CMS_SignerInfo_st* noundef %3, %struct.x509_st* noundef %10) #7
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %for.inc39

if.then36:                                        ; preds = %if.end33
  tail call void @CMS_SignerInfo_set1_signer_cert(%struct.CMS_SignerInfo_st* noundef %3, %struct.x509_st* noundef %10) #7
  %inc37 = add nsw i32 %ret.1, 1
  br label %for.inc42

for.inc39:                                        ; preds = %if.end33, %for.body29
  %inc40 = add nuw nsw i32 %j.189, 1
  %call27 = tail call fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %0) #7
  %cmp28 = icmp slt i32 %inc40, %call27
  br i1 %cmp28, label %for.body29, label %for.inc42, !llvm.loop !56

for.inc42:                                        ; preds = %for.inc39, %for.cond26.preheader, %if.then36, %for.end, %for.body
  %ret.2 = phi i32 [ %ret.094, %for.body ], [ %ret.1, %for.end ], [ %inc37, %if.then36 ], [ %ret.1, %for.cond26.preheader ], [ %ret.1, %for.inc39 ]
  %inc43 = add nuw nsw i32 %i.093, 1
  %11 = load %struct.stack_st_CMS_SignerInfo*, %struct.stack_st_CMS_SignerInfo** %signerInfos, align 8, !tbaa !37
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef %11) #7
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #8
  %cmp3 = icmp slt i32 %inc43, %call2
  br i1 %cmp3, label %for.body, label %cleanup, !llvm.loop !57

cleanup:                                          ; preds = %for.inc42, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.end ], [ %ret.2, %for.inc42 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CMS_CertificateChoices* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.CMS_CertificateChoices* @sk_CMS_CertificateChoices_value(%struct.stack_st_CMS_CertificateChoices* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CMS_CertificateChoices* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.CMS_CertificateChoices*
  ret %struct.CMS_CertificateChoices* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @CMS_SignerInfo_get0_algs(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, %struct.evp_pkey_st** noundef writeonly %pk, %struct.x509_st** noundef writeonly %signer, %struct.X509_algor_st** noundef writeonly %pdig, %struct.X509_algor_st** noundef writeonly %psig) local_unnamed_addr #2 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st** %pk, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 8
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  store %struct.evp_pkey_st* %0, %struct.evp_pkey_st** %pk, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq %struct.x509_st** %signer, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %signer3 = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 7
  %1 = load %struct.x509_st*, %struct.x509_st** %signer3, align 8, !tbaa !26
  store %struct.x509_st* %1, %struct.x509_st** %signer, align 8, !tbaa !22
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %cmp5.not = icmp eq %struct.X509_algor_st** %pdig, null
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 2
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digestAlgorithm, align 8, !tbaa !32
  store %struct.X509_algor_st* %2, %struct.X509_algor_st** %pdig, align 8, !tbaa !22
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %cmp8.not = icmp eq %struct.X509_algor_st** %psig, null
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  %signatureAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 4
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %signatureAlgorithm, align 8, !tbaa !58
  store %struct.X509_algor_st* %3, %struct.X509_algor_st** %psig, align 8, !tbaa !22
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @CMS_SignerInfo_get0_signature(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si) local_unnamed_addr #5 {
entry:
  %signature = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 5
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !49
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_SignedData_final(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %chain) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_CMS_SignerInfo* @CMS_get0_SignerInfos(%struct.CMS_ContentInfo_st* noundef %cms) #7
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef %call) #7
  %call216 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #8
  %cmp17 = icmp sgt i32 %call216, 0
  br i1 %cmp17, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #8
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !59

for.body:                                         ; preds = %entry, %for.cond
  %i.018 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.018) #8
  %0 = bitcast i8* %call4 to %struct.CMS_SignerInfo_st*
  %call5 = tail call fastcc i32 @cms_SignerInfo_content_sign(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_SignerInfo_st* noundef %0, %struct.bio_st* noundef %chain) #7
  %tobool.not = icmp eq i32 %call5, 0
  %inc = add nuw nsw i32 %i.018, 1
  br i1 %tobool.not, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond, %entry
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %signedData = bitcast %union.anon* %d to %struct.CMS_SignedData_st**
  %1 = load %struct.CMS_SignedData_st*, %struct.CMS_SignedData_st** %signedData, align 8, !tbaa !4
  %encapContentInfo = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %1, i64 0, i32 2
  %2 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo, align 8, !tbaa !11
  %partial = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %2, i64 0, i32 2
  store i32 0, i32* %partial, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_SignerInfo_content_sign(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_SignerInfo_st* noundef %si, %struct.bio_st* noundef %chain) unnamed_addr #0 {
entry:
  %md = alloca [64 x i8], align 16
  %mdlen = alloca i32, align 4
  %siglen = alloca i64, align 8
  %md38 = alloca [64 x i8], align 16
  %mdlen39 = alloca i32, align 4
  %siglen69 = alloca i32, align 4
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %call1 = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #8
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 679, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.cms_SignerInfo_content_sign, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup92

if.end:                                           ; preds = %entry
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 8
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  %cmp2 = icmp eq %struct.evp_pkey_st* %0, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 684, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.cms_SignerInfo_content_sign, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 133, i8* noundef null) #8
  br label %err

if.end4:                                          ; preds = %if.end
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 2
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digestAlgorithm, align 8, !tbaa !32
  %call5 = tail call i32 @ossl_cms_DigestAlgorithm_find_ctx(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.bio_st* noundef %chain, %struct.X509_algor_st* noundef %1) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end4
  %pctx8 = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 10
  %2 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx8, align 8, !tbaa !28
  %tobool9.not = icmp eq %struct.evp_pkey_ctx_st* %2, null
  br i1 %tobool9.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %call10 = tail call fastcc i32 @cms_sd_asn1_ctrl(%struct.CMS_SignerInfo_st* noundef nonnull %si, i32 noundef 0) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  %call14 = tail call i32 @CMS_signed_get_attr_count(%struct.CMS_SignerInfo_st* noundef nonnull %si) #8
  %cmp15 = icmp sgt i32 %call14, -1
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #9
  %4 = bitcast i32* %mdlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  %call17 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %3, i32* noundef nonnull %mdlen) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup.thread, label %if.end20

if.end20:                                         ; preds = %if.then16
  %5 = load i32, i32* %mdlen, align 4, !tbaa !31
  %call22 = call i32 @CMS_signed_add1_attr_by_NID(%struct.CMS_SignerInfo_st* noundef nonnull %si, i32 noundef 51, i32 noundef 4, i8* noundef nonnull %3, i32 noundef %5) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup.thread, label %if.end25

if.end25:                                         ; preds = %if.end20
  %call26 = call fastcc i32 @cms_set_si_contentType_attr(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_SignerInfo_st* noundef nonnull %si) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup.thread, label %if.end29

if.end29:                                         ; preds = %if.end25
  %call30 = call i32 @CMS_SignerInfo_sign(%struct.CMS_SignerInfo_st* noundef nonnull %si) #7
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then16, %if.end20, %if.end25, %if.end29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #9
  br label %err

cleanup:                                          ; preds = %if.end29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #9
  br label %err

if.else:                                          ; preds = %if.end13
  %6 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx8, align 8, !tbaa !28
  %tobool36.not = icmp eq %struct.evp_pkey_ctx_st* %6, null
  br i1 %tobool36.not, label %if.else67, label %if.then37

if.then37:                                        ; preds = %if.else
  %7 = bitcast i64* %siglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %md38, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #9
  %9 = bitcast i32* %mdlen39 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #9
  %call42 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %8, i32* noundef nonnull %mdlen39) #8
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup61.thread, label %if.end45

if.end45:                                         ; preds = %if.then37
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  %call47 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %10) #8
  %conv = sext i32 %call47 to i64
  store i64 %conv, i64* %siglen, align 8, !tbaa !48
  %call48 = call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 723) #8
  %cmp49 = icmp eq i8* %call48, null
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end45
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 725, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.cms_SignerInfo_content_sign, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup61.thread

if.end52:                                         ; preds = %if.end45
  %11 = load i32, i32* %mdlen39, align 4, !tbaa !31
  %conv54 = zext i32 %11 to i64
  %call55 = call i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef nonnull %6, i8* noundef nonnull %call48, i64* noundef nonnull %siglen, i8* noundef nonnull %8, i64 noundef %conv54) #8
  %cmp56 = icmp slt i32 %call55, 1
  br i1 %cmp56, label %if.then58, label %cleanup61

if.then58:                                        ; preds = %if.end52
  call void @CRYPTO_free(i8* noundef nonnull %call48, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 729) #8
  br label %cleanup61.thread

cleanup61.thread:                                 ; preds = %if.then51, %if.then58, %if.then37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  br label %err

cleanup61:                                        ; preds = %if.end52
  %signature = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 5
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !49
  %13 = load i64, i64* %siglen, align 8, !tbaa !48
  %conv60 = trunc i64 %13 to i32
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %12, i8* noundef nonnull %call48, i32 noundef %conv60) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  br label %err

if.else67:                                        ; preds = %if.else
  %14 = bitcast i32* %siglen69 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #9
  %15 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  %call71 = tail call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %15) #8
  %conv72 = sext i32 %call71 to i64
  %call73 = tail call i8* @CRYPTO_malloc(i64 noundef %conv72, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 737) #8
  %cmp74 = icmp eq i8* %call73, null
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.else67
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.cms_SignerInfo_content_sign, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup86.thread

if.end77:                                         ; preds = %if.else67
  %16 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  %call79 = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %call1) #8
  %call80 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %call1) #8
  %call81 = call i32 @EVP_SignFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %call73, i32* noundef nonnull %siglen69, %struct.evp_pkey_st* noundef %16, %struct.ossl_lib_ctx_st* noundef %call79, i8* noundef %call80) #8
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then83, label %cleanup86

if.then83:                                        ; preds = %if.end77
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 745, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.cms_SignerInfo_content_sign, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 139, i8* noundef null) #8
  call void @CRYPTO_free(i8* noundef nonnull %call73, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 746) #8
  br label %cleanup86.thread

cleanup86.thread:                                 ; preds = %if.then76, %if.then83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #9
  br label %err

cleanup86:                                        ; preds = %if.end77
  %signature85 = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 5
  %17 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature85, align 8, !tbaa !49
  %18 = load i32, i32* %siglen69, align 4, !tbaa !31
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %17, i8* noundef nonnull %call73, i32 noundef %18) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #9
  br label %err

err:                                              ; preds = %cleanup, %cleanup61, %cleanup86, %cleanup86.thread, %cleanup61.thread, %cleanup.thread, %land.lhs.true, %if.end4, %if.then3
  %pctx.1 = phi %struct.evp_pkey_ctx_st* [ null, %if.then3 ], [ null, %land.lhs.true ], [ null, %if.end4 ], [ null, %cleanup.thread ], [ %6, %cleanup61.thread ], [ null, %cleanup86.thread ], [ null, %cleanup ], [ %6, %cleanup61 ], [ null, %cleanup86 ]
  %r.0 = phi i32 [ 0, %if.then3 ], [ 0, %land.lhs.true ], [ 0, %if.end4 ], [ 0, %cleanup.thread ], [ 0, %cleanup61.thread ], [ 0, %cleanup86.thread ], [ 1, %cleanup ], [ 1, %cleanup61 ], [ 1, %cleanup86 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.1) #8
  br label %cleanup92

cleanup92:                                        ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %r.0, %err ]
  ret i32 %retval.0
}

declare i32 @CMS_signed_get_attr_by_NID(%struct.CMS_SignerInfo_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_add1_signingTime(%struct.CMS_SignerInfo_st* noundef %si) unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef null, i64 noundef 0) #8
  %cmp1 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp1, label %if.then9.thread, label %if.then9

if.then9.thread:                                  ; preds = %entry
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef null) #8
  br label %if.then11

if.then9:                                         ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !60
  %1 = bitcast %struct.asn1_string_st* %call to i8*
  %call4 = tail call i32 @CMS_signed_add1_attr_by_NID(%struct.CMS_SignerInfo_st* noundef %si, i32 noundef 52, i32 noundef %0, i8* noundef nonnull %1, i32 noundef -1) #8
  %cmp5 = icmp slt i32 %call4, 1
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef nonnull %call) #8
  br i1 %cmp5, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9.thread, %if.then9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 537, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cms_add1_signingTime, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9
  %r.04 = phi i32 [ 0, %if.then11 ], [ 1, %if.then9 ]
  ret i32 %r.04
}

declare i32 @ossl_cms_si_check_attributes(%struct.CMS_SignerInfo_st* noundef) local_unnamed_addr #1

declare i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_Attributes_Sign_it() local_unnamed_addr #1

declare i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_STRING_set0(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_SignerInfo_verify(%struct.CMS_SignerInfo_st* noundef %si) local_unnamed_addr #0 {
entry:
  %abuf = alloca i8*, align 8
  %name = alloca [50 x i8], align 16
  %0 = bitcast i8** %abuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %abuf, align 8, !tbaa !22
  %1 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %1) #9
  %cms_ctx = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 11
  %2 = load %struct.CMS_CTX_st*, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !23
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %2) #8
  %call1 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %2) #8
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 8
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  %cmp = icmp eq %struct.evp_pkey_st* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 851, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.CMS_SignerInfo_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 134, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ossl_cms_si_check_attributes(%struct.CMS_SignerInfo_st* noundef nonnull %si) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 2
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digestAlgorithm, align 8, !tbaa !32
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %4, i64 0, i32 0
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !45
  %call5 = call i32 @OBJ_obj2txt(i8* noundef nonnull %1, i32 noundef 50, %struct.asn1_object_st* noundef %5, i32 noundef 0) #8
  %call6 = call i32 @ERR_set_mark() #8
  %call8 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef nonnull %1, i8* noundef %call1) #8
  %cmp9.not = icmp eq %struct.evp_md_st* %call8, null
  br i1 %cmp9.not, label %if.end16, label %if.end20

if.end16:                                         ; preds = %if.end4
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digestAlgorithm, align 8, !tbaa !32
  %algorithm12 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %6, i64 0, i32 0
  %7 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm12, align 8, !tbaa !45
  %call13 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %7) #8
  %call14 = call i8* @OBJ_nid2sn(i32 noundef %call13) #8
  %call15 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call14) #8
  %cmp17 = icmp eq %struct.evp_md_st* %call15, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %call19 = call i32 @ERR_clear_last_mark() #8
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 869, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.CMS_SignerInfo_verify, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 149, i8* noundef null) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end4, %if.end16
  %md.0103 = phi %struct.evp_md_st* [ %call15, %if.end16 ], [ %call8, %if.end4 ]
  %call21 = call i32 @ERR_pop_to_mark() #8
  %mctx22 = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 9
  %8 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mctx22, align 8, !tbaa !27
  %cmp23 = icmp eq %struct.evp_md_ctx_st* %8, null
  br i1 %cmp23, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.end20
  %call24 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  store %struct.evp_md_ctx_st* %call24, %struct.evp_md_ctx_st** %mctx22, align 8, !tbaa !27
  %cmp26 = icmp eq %struct.evp_md_ctx_st* %call24, null
  br i1 %cmp26, label %err.sink.split, label %if.end28

if.end28:                                         ; preds = %land.lhs.true, %if.end20
  %9 = phi %struct.evp_md_ctx_st* [ %call24, %land.lhs.true ], [ %8, %if.end20 ]
  %pctx = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 10
  %call30 = call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %md.0103) #8
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  %call32 = call i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef nonnull %9, %struct.evp_pkey_ctx_st** noundef nonnull %pctx, i8* noundef %call30, %struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call1, %struct.evp_pkey_st* noundef %10, %struct.ossl_param_st* noundef null) #8
  %cmp33 = icmp slt i32 %call32, 1
  br i1 %cmp33, label %err, label %if.end35

if.end35:                                         ; preds = %if.end28
  %call36 = call fastcc i32 @cms_sd_asn1_ctrl(%struct.CMS_SignerInfo_st* noundef nonnull %si, i32 noundef 1) #7
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %if.end35
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %11 = bitcast %struct.stack_st_X509_ATTRIBUTE** %signedAttrs to %struct.ASN1_VALUE_st**
  %12 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %11, align 8, !tbaa !36
  %call40 = call %struct.ASN1_ITEM_st* @CMS_Attributes_Verify_it() #8
  %call41 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %12, i8** noundef nonnull %abuf, %struct.ASN1_ITEM_st* noundef %call40) #8
  %13 = load i8*, i8** %abuf, align 8, !tbaa !22
  %cmp42 = icmp eq i8* %13, null
  %cmp43 = icmp slt i32 %call41, 0
  %or.cond = select i1 %cmp42, i1 true, i1 %cmp43
  br i1 %or.cond, label %err, label %if.end45

if.end45:                                         ; preds = %if.end39
  %conv104 = zext i32 %call41 to i64
  %call46 = call i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef nonnull %9, i8* noundef nonnull %13, i64 noundef %conv104) #8
  %14 = load i8*, i8** %abuf, align 8, !tbaa !22
  call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 891) #8
  %cmp47 = icmp slt i32 %call46, 1
  br i1 %cmp47, label %err, label %if.end50

if.end50:                                         ; preds = %if.end45
  %signature = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 5
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !49
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %15, i64 0, i32 2
  %16 = load i8*, i8** %data, align 8, !tbaa !62
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %15, i64 0, i32 0
  %17 = load i32, i32* %length, align 8, !tbaa !63
  %conv52 = sext i32 %17 to i64
  %call53 = call i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef nonnull %9, i8* noundef %16, i64 noundef %conv52) #8
  %cmp54 = icmp slt i32 %call53, 1
  br i1 %cmp54, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %if.end50, %land.lhs.true
  %.sink105 = phi i32 [ 875, %land.lhs.true ], [ 899, %if.end50 ]
  %.sink = phi i32 [ 786688, %land.lhs.true ], [ 158, %if.end50 ]
  %r.0.ph = phi i32 [ -1, %land.lhs.true ], [ %call53, %if.end50 ]
  %mctx.0.ph = phi %struct.evp_md_ctx_st* [ null, %land.lhs.true ], [ %9, %if.end50 ]
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink105, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.CMS_SignerInfo_verify, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef %.sink, i8* noundef null) #8
  br label %err

err:                                              ; preds = %err.sink.split, %if.end45, %if.end50, %if.end39, %if.end35, %if.end28
  %r.0 = phi i32 [ -1, %if.end28 ], [ -1, %if.end39 ], [ %call53, %if.end50 ], [ -1, %if.end35 ], [ -1, %if.end45 ], [ %r.0.ph, %err.sink.split ]
  %mctx.0 = phi %struct.evp_md_ctx_st* [ %9, %if.end28 ], [ %9, %if.end39 ], [ %9, %if.end50 ], [ %9, %if.end35 ], [ %9, %if.end45 ], [ %mctx.0.ph, %err.sink.split ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call8) #8
  %call58 = call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef %mctx.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err, %if.then18, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then18 ], [ %r.0, %err ], [ -1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare i32 @ERR_clear_last_mark() local_unnamed_addr #1

declare i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_Attributes_Verify_it() local_unnamed_addr #1

declare i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @ossl_cms_SignedData_init_bio(%struct.CMS_ContentInfo_st* noundef %cms) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.CMS_SignedData_st* @cms_get0_signed(%struct.CMS_ContentInfo_st* noundef %cms) #7
  %cmp = icmp eq %struct.CMS_SignedData_st* %call, null
  br i1 %cmp, label %cleanup19, label %if.end

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %signedData = bitcast %union.anon* %d to %struct.CMS_SignedData_st**
  %0 = load %struct.CMS_SignedData_st*, %struct.CMS_SignedData_st** %signedData, align 8, !tbaa !4
  %encapContentInfo = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %0, i64 0, i32 2
  %1 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo, align 8, !tbaa !11
  %partial = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %1, i64 0, i32 2
  %2 = load i32, i32* %partial, align 8, !tbaa !14
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call fastcc void @cms_sd_set_version(%struct.CMS_SignedData_st* noundef nonnull %call) #7
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %digestAlgorithms = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %call, i64 0, i32 1
  %3 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %digestAlgorithms, align 8, !tbaa !33
  %call343 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %3) #7
  %call444 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call343) #8
  %cmp545 = icmp sgt i32 %call444, 0
  br i1 %cmp545, label %for.body, label %cleanup19

for.body:                                         ; preds = %if.end2, %for.inc
  %i.047 = phi i32 [ %inc, %for.inc ], [ 0, %if.end2 ]
  %chain.046 = phi %struct.bio_st* [ %chain.2.ph, %for.inc ], [ null, %if.end2 ]
  %4 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %digestAlgorithms, align 8, !tbaa !33
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %4) #7
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call7, i32 noundef %i.047) #8
  %5 = bitcast i8* %call8 to %struct.X509_algor_st*
  %call9 = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #8
  %call10 = tail call %struct.bio_st* @ossl_cms_DigestAlgorithm_init_bio(%struct.X509_algor_st* noundef %5, %struct.CMS_CTX_st* noundef %call9) #8
  %cmp11 = icmp eq %struct.bio_st* %call10, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %for.body
  %cmp14.not = icmp eq %struct.bio_st* %chain.046, null
  br i1 %cmp14.not, label %for.inc, label %if.then15

if.then15:                                        ; preds = %if.end13
  %call16 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %chain.046, %struct.bio_st* noundef nonnull %call10) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %if.then15
  %chain.2.ph = phi %struct.bio_st* [ %call10, %if.end13 ], [ %chain.046, %if.then15 ]
  %inc = add nuw nsw i32 %i.047, 1
  %6 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %digestAlgorithms, align 8, !tbaa !33
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %6) #7
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #8
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %cleanup19, !llvm.loop !64

err:                                              ; preds = %for.body
  tail call void @BIO_free_all(%struct.bio_st* noundef %chain.046) #8
  br label %cleanup19

cleanup19:                                        ; preds = %for.inc, %if.end2, %entry, %err
  %retval.0 = phi %struct.bio_st* [ null, %err ], [ null, %entry ], [ null, %if.end2 ], [ %chain.2.ph, %for.inc ]
  ret %struct.bio_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cms_sd_set_version(%struct.CMS_SignedData_st* nocapture noundef %sd) unnamed_addr #0 {
entry:
  %certificates = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %sd, i64 0, i32 3
  %0 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %certificates, align 8, !tbaa !52
  %call128 = tail call fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %0) #7
  %cmp129 = icmp sgt i32 %call128, 0
  br i1 %cmp129, label %for.body.lr.ph, label %for.cond27.preheader

for.body.lr.ph:                                   ; preds = %entry
  %version19 = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %sd, i64 0, i32 0
  br label %for.body

for.cond27.preheader:                             ; preds = %for.inc, %entry
  %crls = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %sd, i64 0, i32 4
  %1 = load %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_RevocationInfoChoice** %crls, align 8, !tbaa !65
  %call28131 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef %1) #7
  %call29132 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call28131) #8
  %cmp30133 = icmp sgt i32 %call29132, 0
  br i1 %cmp30133, label %for.body31.lr.ph, label %for.end46

for.body31.lr.ph:                                 ; preds = %for.cond27.preheader
  %version38 = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %sd, i64 0, i32 0
  br label %for.body31

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %2 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %certificates, align 8, !tbaa !52
  %call2 = tail call fastcc %struct.CMS_CertificateChoices* @sk_CMS_CertificateChoices_value(%struct.stack_st_CMS_CertificateChoices* noundef %2, i32 noundef %i.0130) #7
  %type = getelementptr inbounds %struct.CMS_CertificateChoices, %struct.CMS_CertificateChoices* %call2, i64 0, i32 0
  %3 = load i32, i32* %type, align 8, !tbaa !54
  switch i32 %3, label %for.inc [
    i32 4, label %if.then
    i32 3, label %if.then9
    i32 2, label %if.then18
  ]

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %version19, align 8, !tbaa !7
  %cmp4 = icmp slt i32 %4, 5
  br i1 %cmp4, label %for.inc.sink.split, label %for.inc

if.then9:                                         ; preds = %for.body
  %5 = load i32, i32* %version19, align 8, !tbaa !7
  %cmp11 = icmp slt i32 %5, 4
  br i1 %cmp11, label %for.inc.sink.split, label %for.inc

if.then18:                                        ; preds = %for.body
  %6 = load i32, i32* %version19, align 8, !tbaa !7
  %cmp20 = icmp slt i32 %6, 3
  br i1 %cmp20, label %for.inc.sink.split, label %for.inc

for.inc.sink.split:                               ; preds = %if.then18, %if.then9, %if.then
  %.sink = phi i32 [ 5, %if.then ], [ 4, %if.then9 ], [ 3, %if.then18 ]
  store i32 %.sink, i32* %version19, align 8, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body, %if.then, %if.then18, %if.then9
  %inc = add nuw nsw i32 %i.0130, 1
  %7 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %certificates, align 8, !tbaa !52
  %call = tail call fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %7) #7
  %cmp = icmp slt i32 %inc, %call
  br i1 %cmp, label %for.body, label %for.cond27.preheader, !llvm.loop !66

for.body31:                                       ; preds = %for.body31.lr.ph, %for.inc44
  %i.1134 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc45, %for.inc44 ]
  %8 = load %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_RevocationInfoChoice** %crls, align 8, !tbaa !65
  %call33 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef %8) #7
  %call34 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call33, i32 noundef %i.1134) #8
  %type35 = bitcast i8* %call34 to i32*
  %9 = load i32, i32* %type35, align 8, !tbaa !67
  %cmp36 = icmp eq i32 %9, 1
  br i1 %cmp36, label %if.then37, label %for.inc44

if.then37:                                        ; preds = %for.body31
  %10 = load i32, i32* %version38, align 8, !tbaa !7
  %cmp39 = icmp slt i32 %10, 5
  br i1 %cmp39, label %if.then40, label %for.inc44

if.then40:                                        ; preds = %if.then37
  store i32 5, i32* %version38, align 8, !tbaa !7
  br label %for.inc44

for.inc44:                                        ; preds = %for.body31, %if.then40, %if.then37
  %inc45 = add nuw nsw i32 %i.1134, 1
  %11 = load %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_RevocationInfoChoice** %crls, align 8, !tbaa !65
  %call28 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef %11) #7
  %call29 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call28) #8
  %cmp30 = icmp slt i32 %inc45, %call29
  br i1 %cmp30, label %for.body31, label %for.end46, !llvm.loop !69

for.end46:                                        ; preds = %for.inc44, %for.cond27.preheader
  %encapContentInfo = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %sd, i64 0, i32 2
  %12 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo, align 8, !tbaa !11
  %eContentType = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %12, i64 0, i32 0
  %13 = load %struct.asn1_object_st*, %struct.asn1_object_st** %eContentType, align 8, !tbaa !12
  %call47 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %13) #8
  %cmp48.not = icmp eq i32 %call47, 21
  br i1 %cmp48.not, label %if.end53, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end46
  %version49 = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %sd, i64 0, i32 0
  %14 = load i32, i32* %version49, align 8, !tbaa !7
  %cmp50 = icmp slt i32 %14, 3
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %land.lhs.true
  store i32 3, i32* %version49, align 8, !tbaa !7
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %land.lhs.true, %for.end46
  %signerInfos = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %sd, i64 0, i32 5
  %15 = load %struct.stack_st_CMS_SignerInfo*, %struct.stack_st_CMS_SignerInfo** %signerInfos, align 8, !tbaa !37
  %call55135 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef %15) #7
  %call56136 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call55135) #8
  %cmp57137 = icmp sgt i32 %call56136, 0
  br i1 %cmp57137, label %for.body58.lr.ph, label %for.end84

for.body58.lr.ph:                                 ; preds = %if.end53
  %version70 = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %sd, i64 0, i32 0
  br label %for.body58

for.body58:                                       ; preds = %for.body58.lr.ph, %for.inc82
  %i.2138 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc83, %for.inc82 ]
  %16 = load %struct.stack_st_CMS_SignerInfo*, %struct.stack_st_CMS_SignerInfo** %signerInfos, align 8, !tbaa !37
  %call60 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef %16) #7
  %call61 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call60, i32 noundef %i.2138) #8
  %sid = getelementptr inbounds i8, i8* %call61, i64 8
  %17 = bitcast i8* %sid to %struct.CMS_SignerIdentifier_st**
  %18 = load %struct.CMS_SignerIdentifier_st*, %struct.CMS_SignerIdentifier_st** %17, align 8, !tbaa !30
  %type62 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, %struct.CMS_SignerIdentifier_st* %18, i64 0, i32 0
  %19 = load i32, i32* %type62, align 8, !tbaa !18
  %cmp63 = icmp eq i32 %19, 1
  %version65 = bitcast i8* %call61 to i32*
  %20 = load i32, i32* %version65, align 8, !tbaa !29
  br i1 %cmp63, label %if.then64, label %if.else75

if.then64:                                        ; preds = %for.body58
  %cmp66 = icmp slt i32 %20, 3
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.then64
  store i32 3, i32* %version65, align 8, !tbaa !29
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.then64
  %21 = load i32, i32* %version70, align 8, !tbaa !7
  %cmp71 = icmp slt i32 %21, 3
  br i1 %cmp71, label %if.then72, label %for.inc82

if.then72:                                        ; preds = %if.end69
  store i32 3, i32* %version70, align 8, !tbaa !7
  br label %for.inc82

if.else75:                                        ; preds = %for.body58
  %cmp77 = icmp slt i32 %20, 1
  br i1 %cmp77, label %if.then78, label %for.inc82

if.then78:                                        ; preds = %if.else75
  store i32 1, i32* %version65, align 8, !tbaa !29
  br label %for.inc82

for.inc82:                                        ; preds = %if.then72, %if.end69, %if.then78, %if.else75
  %inc83 = add nuw nsw i32 %i.2138, 1
  %22 = load %struct.stack_st_CMS_SignerInfo*, %struct.stack_st_CMS_SignerInfo** %signerInfos, align 8, !tbaa !37
  %call55 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef %22) #7
  %call56 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call55) #8
  %cmp57 = icmp slt i32 %inc83, %call56
  br i1 %cmp57, label %for.body58, label %for.end84, !llvm.loop !70

for.end84:                                        ; preds = %for.inc82, %if.end53
  %version85 = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %sd, i64 0, i32 0
  %23 = load i32, i32* %version85, align 8, !tbaa !7
  %cmp86 = icmp slt i32 %23, 1
  br i1 %cmp86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %for.end84
  store i32 1, i32* %version85, align 8, !tbaa !7
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %for.end84
  ret void
}

declare %struct.bio_st* @ossl_cms_DigestAlgorithm_init_bio(%struct.X509_algor_st* noundef, %struct.CMS_CTX_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_SignerInfo_verify_content(%struct.CMS_SignerInfo_st* noundef %si, %struct.bio_st* noundef %chain) local_unnamed_addr #0 {
entry:
  %mval = alloca [64 x i8], align 16
  %mlen = alloca i32, align 4
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %mval, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #9
  %1 = bitcast i32* %mlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 949, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.CMS_SignerInfo_verify_content, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @CMS_signed_get_attr_count(%struct.CMS_SignerInfo_st* noundef %si) #8
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  %call4 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 51) #8
  %call5 = tail call i8* @CMS_signed_get0_data_by_OBJ(%struct.CMS_SignerInfo_st* noundef %si, %struct.asn1_object_st* noundef %call4, i32 noundef -3, i32 noundef 4) #8
  %2 = bitcast i8* %call5 to %struct.asn1_string_st*
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then3
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 958, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.CMS_SignerInfo_verify_content, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 114, i8* noundef null) #8
  br label %err

if.end9:                                          ; preds = %if.then3, %if.end
  %os.0 = phi %struct.asn1_string_st* [ %2, %if.then3 ], [ null, %if.end ]
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 2
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digestAlgorithm, align 8, !tbaa !32
  %call10 = tail call i32 @ossl_cms_DigestAlgorithm_find_ctx(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.bio_st* noundef %chain, %struct.X509_algor_st* noundef %3) #8
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end9
  %call13 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i32* noundef nonnull %mlen) #8
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 967, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.CMS_SignerInfo_verify_content, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 147, i8* noundef null) #8
  br label %err

if.end16:                                         ; preds = %if.end12
  %cmp17.not = icmp eq %struct.asn1_string_st* %os.0, null
  br i1 %cmp17.not, label %if.else27, label %if.then18

if.then18:                                        ; preds = %if.end16
  %4 = load i32, i32* %mlen, align 4, !tbaa !31
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %os.0, i64 0, i32 0
  %5 = load i32, i32* %length, align 8, !tbaa !63
  %cmp19.not = icmp eq i32 %4, %5
  br i1 %cmp19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then18
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 975, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.CMS_SignerInfo_verify_content, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 120, i8* noundef null) #8
  br label %err

if.end21:                                         ; preds = %if.then18
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %os.0, i64 0, i32 2
  %6 = load i8*, i8** %data, align 8, !tbaa !62
  %conv = zext i32 %4 to i64
  %call23 = call i32 @memcmp(i8* noundef nonnull %0, i8* noundef %6, i64 noundef %conv) #10
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 980, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.CMS_SignerInfo_verify_content, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 158, i8* noundef null) #8
  br label %err

if.else27:                                        ; preds = %if.end16
  %call28 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef nonnull %call) #8
  %cms_ctx = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 11
  %7 = load %struct.CMS_CTX_st*, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !23
  %call29 = call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %7) #8
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 8
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  %call30 = call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %7) #8
  %call31 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %call29, %struct.evp_pkey_st* noundef %8, i8* noundef %call30) #8
  %cmp32 = icmp eq %struct.evp_pkey_ctx_st* %call31, null
  br i1 %cmp32, label %err, label %if.end35

if.end35:                                         ; preds = %if.else27
  %call36 = call i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef nonnull %call31) #8
  %cmp37 = icmp slt i32 %call36, 1
  br i1 %cmp37, label %err, label %if.end40

if.end40:                                         ; preds = %if.end35
  %call41 = call i32 @EVP_PKEY_CTX_set_signature_md(%struct.evp_pkey_ctx_st* noundef nonnull %call31, %struct.evp_md_st* noundef %call28) #8
  %cmp42 = icmp slt i32 %call41, 1
  br i1 %cmp42, label %err, label %if.end45

if.end45:                                         ; preds = %if.end40
  %pctx = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 10
  store %struct.evp_pkey_ctx_st* %call31, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !28
  %call46 = call fastcc i32 @cms_sd_asn1_ctrl(%struct.CMS_SignerInfo_st* noundef nonnull %si, i32 noundef 1) #7
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %if.end49

if.end49:                                         ; preds = %if.end45
  %signature = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 5
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !49
  %data50 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 2
  %10 = load i8*, i8** %data50, align 8, !tbaa !62
  %length52 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 0
  %11 = load i32, i32* %length52, align 8, !tbaa !63
  %conv53 = sext i32 %11 to i64
  %12 = load i32, i32* %mlen, align 4, !tbaa !31
  %conv55 = zext i32 %12 to i64
  %call56 = call i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef nonnull %call31, i8* noundef %10, i64 noundef %conv53, i8* noundef nonnull %0, i64 noundef %conv55) #8
  %cmp57 = icmp slt i32 %call56, 1
  br i1 %cmp57, label %if.then59, label %err

if.then59:                                        ; preds = %if.end49
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1003, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.CMS_SignerInfo_verify_content, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 158, i8* noundef null) #8
  br label %err

err:                                              ; preds = %if.else27, %if.end35, %if.end40, %if.end45, %if.then59, %if.end49, %if.end21, %if.then25, %if.end9, %if.then20, %if.then15, %if.then7, %if.then
  %pkctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %if.then ], [ null, %if.then7 ], [ null, %if.then15 ], [ null, %if.then20 ], [ null, %if.then25 ], [ null, %if.end9 ], [ null, %if.end21 ], [ %call31, %if.end49 ], [ %call31, %if.then59 ], [ %call31, %if.end45 ], [ %call31, %if.end40 ], [ %call31, %if.end35 ], [ null, %if.else27 ]
  %r.2 = phi i32 [ -1, %if.then ], [ -1, %if.then7 ], [ -1, %if.then15 ], [ -1, %if.then20 ], [ 0, %if.then25 ], [ -1, %if.end9 ], [ 1, %if.end21 ], [ %call56, %if.end49 ], [ 0, %if.then59 ], [ -1, %if.end45 ], [ -1, %if.end40 ], [ -1, %if.end35 ], [ -1, %if.else27 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pkctx.0) #8
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #9
  ret i32 %r.2
}

declare i32 @CMS_signed_get_attr_count(%struct.CMS_SignerInfo_st* noundef) local_unnamed_addr #1

declare i8* @CMS_signed_get0_data_by_OBJ(%struct.CMS_SignerInfo_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cms_DigestAlgorithm_find_ctx(%struct.evp_md_ctx_st* noundef, %struct.bio_st* noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #1

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare i32 @i2d_X509_ALGORS(%struct.stack_st_X509_ALGOR* noundef, i8** noundef) local_unnamed_addr #1

declare i32 @CMS_signed_add1_attr_by_NID(%struct.CMS_SignerInfo_st* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_add_simple_smimecap(%struct.stack_st_X509_ALGOR** nocapture noundef %algs, i32 noundef %algnid, i32 noundef %keysize) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %keysize, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #8
  %cmp1 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %conv43 = zext i32 %keysize to i64
  %call2 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call, i64 noundef %conv43) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %call) #8
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false, %entry
  %key.0 = phi %struct.asn1_string_st* [ %call, %lor.lhs.false ], [ null, %entry ]
  %call5 = tail call %struct.X509_algor_st* @X509_ALGOR_new() #8
  %cmp6 = icmp eq %struct.X509_algor_st* %call5, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %key.0) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %algnid) #8
  %tobool11.not = icmp eq %struct.asn1_string_st* %key.0, null
  %cond = select i1 %tobool11.not, i32 -1, i32 2
  %0 = bitcast %struct.asn1_string_st* %key.0 to i8*
  %call12 = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef nonnull %call5, %struct.asn1_object_st* noundef %call10, i32 noundef %cond, i8* noundef %0) #8
  %1 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %algs, align 8, !tbaa !22
  %cmp13 = icmp eq %struct.stack_st_X509_ALGOR* %1, null
  br i1 %cmp13, label %if.end17, label %lor.lhs.false20

if.end17:                                         ; preds = %if.end9
  %call16 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %2 = bitcast %struct.stack_st_X509_ALGOR** %algs to %struct.stack_st**
  store %struct.stack_st* %call16, %struct.stack_st** %2, align 8, !tbaa !22
  %3 = bitcast %struct.stack_st* %call16 to %struct.stack_st_X509_ALGOR*
  %cmp18 = icmp eq %struct.stack_st* %call16, null
  br i1 %cmp18, label %if.then25, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end9, %if.end17
  %4 = phi %struct.stack_st_X509_ALGOR* [ %3, %if.end17 ], [ %1, %if.end9 ]
  %call21 = tail call fastcc %struct.stack_st* @ossl_check_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef nonnull %4) #7
  %5 = bitcast %struct.X509_algor_st* %call5 to i8*
  %call23 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call21, i8* noundef nonnull %5) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %cleanup

if.then25:                                        ; preds = %lor.lhs.false20, %if.end17
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef nonnull %call5) #8
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false20, %if.then25, %if.then8, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then8 ], [ 0, %if.then25 ], [ 1, %lor.lhs.false20 ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #1

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_add_cipher_smcap(%struct.stack_st_X509_ALGOR** nocapture noundef %sk, i32 noundef %nid, i32 noundef %arg) unnamed_addr #0 {
entry:
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %nid) #8
  %call1 = tail call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %call) #8
  %tobool.not = icmp eq %struct.evp_cipher_st* %call1, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @CMS_add_simple_smimecap(%struct.stack_st_X509_ALGOR** noundef %sk, i32 noundef %nid, i32 noundef %arg) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_add_digest_smcap(%struct.stack_st_X509_ALGOR** nocapture noundef %sk, i32 noundef %nid) unnamed_addr #0 {
entry:
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %nid) #8
  %call1 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call) #8
  %tobool.not = icmp eq %struct.evp_md_st* %call1, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @CMS_add_simple_smimecap(%struct.stack_st_X509_ALGOR** noundef %sk, i32 noundef %nid, i32 noundef -1) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.ASN1_ITEM_st* @CMS_SignedData_it() local_unnamed_addr #1

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ossl_cms_ecdsa_dsa_sign(%struct.CMS_SignerInfo_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cms_rsa_sign(%struct.CMS_SignerInfo_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @i2d_ESS_SIGNING_CERT(%struct.ESS_signing_cert* noundef, i8** noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_STRING_new() local_unnamed_addr #1

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @i2d_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st* noundef, i8** noundef) local_unnamed_addr #1

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_SignFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare void @ASN1_TIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_CMS_RevocationInfoChoice* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"CMS_SignedData_st", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!9 = !{!"int", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !10, i64 16}
!12 = !{!13, !10, i64 0}
!13 = !{!"CMS_EncapsulatedContentInfo_st", !10, i64 0, !10, i64 8, !9, i64 16}
!14 = !{!13, !9, i64 16}
!15 = !{!16, !10, i64 0}
!16 = !{!"CMS_ContentInfo_st", !10, i64 0, !5, i64 8, !17, i64 16}
!17 = !{!"CMS_CTX_st", !10, i64 0, !10, i64 8}
!18 = !{!19, !9, i64 0}
!19 = !{!"CMS_SignerIdentifier_st", !9, i64 0, !5, i64 8}
!20 = !{!21, !10, i64 0}
!21 = !{!"CMS_IssuerAndSerialNumber_st", !10, i64 0, !10, i64 8}
!22 = !{!10, !10, i64 0}
!23 = !{!24, !10, i64 88}
!24 = !{!"CMS_SignerInfo_st", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!25 = !{!24, !10, i64 64}
!26 = !{!24, !10, i64 56}
!27 = !{!24, !10, i64 72}
!28 = !{!24, !10, i64 80}
!29 = !{!24, !9, i64 0}
!30 = !{!24, !10, i64 8}
!31 = !{!9, !9, i64 0}
!32 = !{!24, !10, i64 16}
!33 = !{!8, !10, i64 8}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!24, !10, i64 24}
!37 = !{!8, !10, i64 40}
!38 = !{!39, !10, i64 8}
!39 = !{!"evp_pkey_st", !9, i64 0, !9, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !10, i64 56, !10, i64 64, !9, i64 72, !9, i64 76, !40, i64 80, !10, i64 96, !10, i64 104, !41, i64 112, !10, i64 120, !41, i64 128, !42, i64 136}
!40 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!41 = !{!"long", !5, i64 0}
!42 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8}
!43 = !{!44, !10, i64 176}
!44 = !{!"evp_pkey_asn1_method_st", !9, i64 0, !9, i64 4, !41, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312}
!45 = !{!46, !10, i64 0}
!46 = !{!"X509_algor_st", !10, i64 0, !10, i64 8}
!47 = distinct !{!47, !35}
!48 = !{!41, !41, i64 0}
!49 = !{!24, !10, i64 40}
!50 = distinct !{!50, !35}
!51 = distinct !{!51, !35}
!52 = !{!8, !10, i64 24}
!53 = distinct !{!53, !35}
!54 = !{!55, !9, i64 0}
!55 = !{!"CMS_CertificateChoices", !9, i64 0, !5, i64 8}
!56 = distinct !{!56, !35}
!57 = distinct !{!57, !35}
!58 = !{!24, !10, i64 32}
!59 = distinct !{!59, !35}
!60 = !{!61, !9, i64 4}
!61 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !10, i64 8, !41, i64 16}
!62 = !{!61, !10, i64 8}
!63 = !{!61, !9, i64 0}
!64 = distinct !{!64, !35}
!65 = !{!8, !10, i64 32}
!66 = distinct !{!66, !35}
!67 = !{!68, !9, i64 0}
!68 = !{!"CMS_RevocationInfoChoice_st", !9, i64 0, !5, i64 8}
!69 = distinct !{!69, !35}
!70 = distinct !{!70, !35}
