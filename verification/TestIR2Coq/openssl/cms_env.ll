; ModuleID = 'crypto/cms/cms_env.c'
source_filename = "crypto/cms/cms_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMS_EnvelopedData_st = type { i32, %struct.CMS_OriginatorInfo_st*, %struct.stack_st_CMS_RecipientInfo*, %struct.CMS_EncryptedContentInfo_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.CMS_OriginatorInfo_st = type { %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_RevocationInfoChoice* }
%struct.stack_st_CMS_CertificateChoices = type opaque
%struct.stack_st_CMS_RevocationInfoChoice = type opaque
%struct.stack_st_CMS_RecipientInfo = type opaque
%struct.CMS_EncryptedContentInfo_st = type { %struct.asn1_object_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_cipher_st*, i8*, i64, i8*, i64, i32, i32 }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.CMS_ContentInfo_st = type { %struct.asn1_object_st*, %union.anon.0, %struct.CMS_CTX_st }
%union.anon.0 = type { %struct.asn1_string_st* }
%struct.CMS_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.CMS_AuthEnvelopedData_st = type { i32, %struct.CMS_OriginatorInfo_st*, %struct.stack_st_CMS_RecipientInfo*, %struct.CMS_EncryptedContentInfo_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.CMS_RecipientInfo_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.CMS_KeyTransRecipientInfo_st* }
%struct.CMS_KeyTransRecipientInfo_st = type { i32, %struct.CMS_SignerIdentifier_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_pkey_ctx_st*, %struct.CMS_CTX_st* }
%struct.CMS_SignerIdentifier_st = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.CMS_IssuerAndSerialNumber_st* }
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
%struct.ASIdentifierChoice_st = type { i32, %union.anon.3 }
%union.anon.3 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.4, %struct.anon.10, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%union.anon.4 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.10 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.bignum_st = type opaque
%struct.CMS_KeyAgreeRecipientInfo_st = type { i32, %struct.CMS_OriginatorIdentifierOrKey_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.stack_st_CMS_RecipientEncryptedKey*, %struct.evp_pkey_ctx_st*, %struct.evp_cipher_ctx_st*, %struct.CMS_CTX_st* }
%struct.CMS_OriginatorIdentifierOrKey_st = type { i32, %union.anon.11 }
%union.anon.11 = type { %struct.CMS_IssuerAndSerialNumber_st* }
%struct.stack_st_CMS_RecipientEncryptedKey = type opaque
%struct.stack_st = type opaque
%struct.CMS_KEKRecipientInfo_st = type { i32, %struct.CMS_KEKIdentifier_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i8*, i64, %struct.CMS_CTX_st* }
%struct.CMS_KEKIdentifier_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.CMS_OtherKeyAttribute_st* }
%struct.CMS_OtherKeyAttribute_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.CMS_PasswordRecipientInfo_st = type { i32, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i8*, i64, %struct.CMS_CTX_st* }
%struct.ASN1_VALUE_st = type opaque
%struct.CMS_CertificateChoices = type { i32, %union.anon.12 }
%union.anon.12 = type { %struct.x509_st* }

@.str = private unnamed_addr constant [21 x i8] c"crypto/cms/cms_env.c\00", align 1
@__func__.ossl_cms_get0_enveloped = private unnamed_addr constant [24 x i8] c"ossl_cms_get0_enveloped\00", align 1
@__func__.ossl_cms_get0_auth_enveloped = private unnamed_addr constant [29 x i8] c"ossl_cms_get0_auth_enveloped\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DHX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@__func__.ossl_cms_env_asn1_ctrl = private unnamed_addr constant [23 x i8] c"ossl_cms_env_asn1_ctrl\00", align 1
@__func__.CMS_EnvelopedData_create_ex = private unnamed_addr constant [28 x i8] c"CMS_EnvelopedData_create_ex\00", align 1
@__func__.CMS_AuthEnvelopedData_create_ex = private unnamed_addr constant [32 x i8] c"CMS_AuthEnvelopedData_create_ex\00", align 1
@__func__.CMS_add1_recipient = private unnamed_addr constant [19 x i8] c"CMS_add1_recipient\00", align 1
@__func__.CMS_RecipientInfo_ktri_get0_algs = private unnamed_addr constant [33 x i8] c"CMS_RecipientInfo_ktri_get0_algs\00", align 1
@__func__.CMS_RecipientInfo_ktri_get0_signer_id = private unnamed_addr constant [38 x i8] c"CMS_RecipientInfo_ktri_get0_signer_id\00", align 1
@__func__.CMS_RecipientInfo_ktri_cert_cmp = private unnamed_addr constant [32 x i8] c"CMS_RecipientInfo_ktri_cert_cmp\00", align 1
@__func__.CMS_RecipientInfo_set0_pkey = private unnamed_addr constant [28 x i8] c"CMS_RecipientInfo_set0_pkey\00", align 1
@__func__.CMS_RecipientInfo_kekri_id_cmp = private unnamed_addr constant [31 x i8] c"CMS_RecipientInfo_kekri_id_cmp\00", align 1
@__func__.CMS_add0_recipient_key = private unnamed_addr constant [23 x i8] c"CMS_add0_recipient_key\00", align 1
@__func__.CMS_RecipientInfo_kekri_get0_id = private unnamed_addr constant [32 x i8] c"CMS_RecipientInfo_kekri_get0_id\00", align 1
@__func__.CMS_RecipientInfo_set0_key = private unnamed_addr constant [27 x i8] c"CMS_RecipientInfo_set0_key\00", align 1
@__func__.CMS_RecipientInfo_decrypt = private unnamed_addr constant [26 x i8] c"CMS_RecipientInfo_decrypt\00", align 1
@__func__.CMS_RecipientInfo_encrypt = private unnamed_addr constant [26 x i8] c"CMS_RecipientInfo_encrypt\00", align 1
@__func__.ossl_cms_AuthEnvelopedData_init_bio = private unnamed_addr constant [36 x i8] c"ossl_cms_AuthEnvelopedData_init_bio\00", align 1
@__func__.ossl_cms_EnvelopedData_final = private unnamed_addr constant [29 x i8] c"ossl_cms_EnvelopedData_final\00", align 1
@__func__.ossl_cms_AuthEnvelopedData_final = private unnamed_addr constant [33 x i8] c"ossl_cms_AuthEnvelopedData_final\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@__func__.cms_get_enveloped_type = private unnamed_addr constant [23 x i8] c"cms_get_enveloped_type\00", align 1
@__func__.cms_enveloped_data_init = private unnamed_addr constant [24 x i8] c"cms_enveloped_data_init\00", align 1
@__func__.cms_auth_enveloped_data_init = private unnamed_addr constant [29 x i8] c"cms_auth_enveloped_data_init\00", align 1
@__func__.cms_RecipientInfo_ktri_decrypt = private unnamed_addr constant [31 x i8] c"cms_RecipientInfo_ktri_decrypt\00", align 1
@__func__.cms_RecipientInfo_kekri_decrypt = private unnamed_addr constant [32 x i8] c"cms_RecipientInfo_kekri_decrypt\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"AES-128-WRAP\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"AES-192-WRAP\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"AES-256-WRAP\00", align 1
@__func__.cms_RecipientInfo_ktri_encrypt = private unnamed_addr constant [31 x i8] c"cms_RecipientInfo_ktri_encrypt\00", align 1
@__func__.cms_RecipientInfo_kekri_encrypt = private unnamed_addr constant [32 x i8] c"cms_RecipientInfo_kekri_encrypt\00", align 1
@__func__.cms_EnvelopedData_Encryption_init_bio = private unnamed_addr constant [38 x i8] c"cms_EnvelopedData_Encryption_init_bio\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_EnvelopedData_st* @ossl_cms_get0_enveloped(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) local_unnamed_addr #0 {
entry:
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  %cmp.not = icmp eq i32 %call, 23
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_cms_get0_enveloped, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 107, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %envelopedData = bitcast %union.anon.0* %d to %struct.CMS_EnvelopedData_st**
  %1 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.CMS_EnvelopedData_st* [ null, %if.then ], [ %1, %if.end ]
  ret %struct.CMS_EnvelopedData_st* %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_AuthEnvelopedData_st* @ossl_cms_get0_auth_enveloped(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) local_unnamed_addr #0 {
entry:
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  %cmp.not = icmp eq i32 %call, 1059
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_cms_get0_auth_enveloped, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 107, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %authEnvelopedData = bitcast %union.anon.0* %d to %struct.CMS_AuthEnvelopedData_st**
  %1 = load %struct.CMS_AuthEnvelopedData_st*, %struct.CMS_AuthEnvelopedData_st** %authEnvelopedData, align 8, !tbaa !10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.CMS_AuthEnvelopedData_st* [ null, %if.then ], [ %1, %if.end ]
  ret %struct.CMS_AuthEnvelopedData_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_env_asn1_ctrl(%struct.CMS_RecipientInfo_st* noundef %ri, i32 noundef %cmd) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !11
  switch i32 %0, label %cleanup50 [
    i32 0, label %if.then
    i32 1, label %if.then4
  ]

if.then:                                          ; preds = %entry
  %ktri = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1, i32 0
  %1 = load %struct.CMS_KeyTransRecipientInfo_st*, %struct.CMS_KeyTransRecipientInfo_st** %ktri, align 8, !tbaa !10
  %pkey1 = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %1, i64 0, i32 5
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !14
  br label %if.end14

if.then4:                                         ; preds = %entry
  %d5 = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kari = bitcast %union.anon.1* %d5 to %struct.CMS_KeyAgreeRecipientInfo_st**
  %3 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %kari, align 8, !tbaa !10
  %pctx6 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %3, i64 0, i32 5
  %4 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx6, align 8, !tbaa !16
  %cmp7 = icmp eq %struct.evp_pkey_ctx_st* %4, null
  br i1 %cmp7, label %cleanup50, label %cleanup

cleanup:                                          ; preds = %if.then4
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef nonnull %4) #5
  %cmp9.not = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp9.not, label %cleanup50, label %if.end14

if.end14:                                         ; preds = %cleanup, %if.then
  %pkey.1 = phi %struct.evp_pkey_st* [ %2, %if.then ], [ %call, %cleanup ]
  %call15 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pkey.1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #5
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then18

lor.lhs.false:                                    ; preds = %if.end14
  %call16 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pkey.1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else20, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false, %if.end14
  %call19 = tail call i32 @ossl_cms_dh_envelope(%struct.CMS_RecipientInfo_st* noundef nonnull %ri, i32 noundef %cmd) #5
  br label %cleanup50

if.else20:                                        ; preds = %lor.lhs.false
  %call21 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pkey.1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %if.else20
  %call24 = tail call i32 @ossl_cms_ecdh_envelope(%struct.CMS_RecipientInfo_st* noundef nonnull %ri, i32 noundef %cmd) #5
  br label %cleanup50

if.else25:                                        ; preds = %if.else20
  %call26 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pkey.1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end32, label %if.then28

if.then28:                                        ; preds = %if.else25
  %call29 = tail call i32 @ossl_cms_rsa_envelope(%struct.CMS_RecipientInfo_st* noundef nonnull %ri, i32 noundef %cmd) #5
  br label %cleanup50

if.end32:                                         ; preds = %if.else25
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey.1, i64 0, i32 2
  %5 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !18
  %cmp33 = icmp eq %struct.evp_pkey_asn1_method_st* %5, null
  br i1 %cmp33, label %cleanup50, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end32
  %pkey_ctrl = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %5, i64 0, i32 23
  %6 = load i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)** %pkey_ctrl, align 8, !tbaa !23
  %cmp36 = icmp eq i32 (%struct.evp_pkey_st*, i32, i64, i8*)* %6, null
  br i1 %cmp36, label %cleanup50, label %if.end38

if.end38:                                         ; preds = %lor.lhs.false34
  %conv = sext i32 %cmd to i64
  %7 = bitcast %struct.CMS_RecipientInfo_st* %ri to i8*
  %call41 = tail call i32 %6(%struct.evp_pkey_st* noundef nonnull %pkey.1, i32 noundef 7, i64 noundef %conv, i8* noundef %7) #5
  %cmp42 = icmp eq i32 %call41, -2
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end38
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_cms_env_asn1_ctrl, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 125, i8* noundef null) #5
  br label %cleanup50

if.end45:                                         ; preds = %if.end38
  %cmp46 = icmp slt i32 %call41, 1
  br i1 %cmp46, label %if.then48, label %cleanup50

if.then48:                                        ; preds = %if.end45
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_cms_env_asn1_ctrl, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 111, i8* noundef null) #5
  br label %cleanup50

cleanup50:                                        ; preds = %if.then4, %if.end45, %if.end32, %lor.lhs.false34, %entry, %cleanup, %if.then48, %if.then44, %if.then28, %if.then23, %if.then18
  %retval.1 = phi i32 [ %call19, %if.then18 ], [ %call24, %if.then23 ], [ %call29, %if.then28 ], [ 0, %if.then44 ], [ 0, %if.then48 ], [ 0, %cleanup ], [ 0, %entry ], [ 1, %lor.lhs.false34 ], [ 1, %if.end32 ], [ 1, %if.end45 ], [ 0, %if.then4 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ossl_cms_dh_envelope(%struct.CMS_RecipientInfo_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cms_ecdh_envelope(%struct.CMS_RecipientInfo_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cms_rsa_envelope(%struct.CMS_RecipientInfo_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @cms_get_enveloped_type(%struct.CMS_ContentInfo_st* noundef %cms) #6
  switch i32 %call, label %return [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %envelopedData = bitcast %union.anon.0* %d to %struct.CMS_EnvelopedData_st**
  %0 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !10
  %encryptedContentInfo = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %0, i64 0, i32 3
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %d2 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %authEnvelopedData = bitcast %union.anon.0* %d2 to %struct.CMS_AuthEnvelopedData_st**
  %1 = load %struct.CMS_AuthEnvelopedData_st*, %struct.CMS_AuthEnvelopedData_st** %authEnvelopedData, align 8, !tbaa !10
  %authEncryptedContentInfo = getelementptr inbounds %struct.CMS_AuthEnvelopedData_st, %struct.CMS_AuthEnvelopedData_st* %1, i64 0, i32 3
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb, %sw.bb1
  %authEncryptedContentInfo.sink = phi %struct.CMS_EncryptedContentInfo_st** [ %authEncryptedContentInfo, %sw.bb1 ], [ %encryptedContentInfo, %sw.bb ]
  %2 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %authEncryptedContentInfo.sink, align 8, !tbaa !25
  br label %return

return:                                           ; preds = %return.sink.split, %entry
  %retval.0 = phi %struct.CMS_EncryptedContentInfo_st* [ null, %entry ], [ %2, %return.sink.split ]
  ret %struct.CMS_EncryptedContentInfo_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_get_enveloped_type(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) unnamed_addr #0 {
entry:
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  switch i32 %call, label %sw.default [
    i32 23, label %cleanup
    i32 1059, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %entry
  br label %cleanup

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.cms_get_enveloped_type, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 107, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.default, %sw.bb1
  %retval.0 = phi i32 [ 0, %sw.default ], [ 2, %sw.bb1 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_CMS_RecipientInfo* @CMS_get0_RecipientInfos(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @cms_get_enveloped_type(%struct.CMS_ContentInfo_st* noundef %cms) #6
  switch i32 %call, label %return [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %envelopedData = bitcast %union.anon.0* %d to %struct.CMS_EnvelopedData_st**
  %0 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !10
  %recipientInfos = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %0, i64 0, i32 2
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %d2 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %authEnvelopedData = bitcast %union.anon.0* %d2 to %struct.CMS_AuthEnvelopedData_st**
  %1 = load %struct.CMS_AuthEnvelopedData_st*, %struct.CMS_AuthEnvelopedData_st** %authEnvelopedData, align 8, !tbaa !10
  %recipientInfos3 = getelementptr inbounds %struct.CMS_AuthEnvelopedData_st, %struct.CMS_AuthEnvelopedData_st* %1, i64 0, i32 2
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb, %sw.bb1
  %recipientInfos3.sink = phi %struct.stack_st_CMS_RecipientInfo** [ %recipientInfos3, %sw.bb1 ], [ %recipientInfos, %sw.bb ]
  %2 = load %struct.stack_st_CMS_RecipientInfo*, %struct.stack_st_CMS_RecipientInfo** %recipientInfos3.sink, align 8, !tbaa !25
  br label %return

return:                                           ; preds = %return.sink.split, %entry
  %retval.0 = phi %struct.stack_st_CMS_RecipientInfo* [ null, %entry ], [ %2, %return.sink.split ]
  ret %struct.stack_st_CMS_RecipientInfo* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_cms_RecipientInfos_set_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #5
  %call1 = tail call %struct.stack_st_CMS_RecipientInfo* @CMS_get0_RecipientInfos(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef %call1) #6
  %call340 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp41 = icmp sgt i32 %call340, 0
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %i.042 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.042) #5
  %cmp6.not = icmp eq i8* %call5, null
  br i1 %cmp6.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %type = bitcast i8* %call5 to i32*
  %0 = load i32, i32* %type, align 8, !tbaa !11
  switch i32 %0, label %for.inc [
    i32 1, label %sw.bb
    i32 0, label %sw.bb7
    i32 2, label %sw.bb15
    i32 3, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.then
  %d = getelementptr inbounds i8, i8* %call5, i64 8
  %kari = bitcast i8* %d to %struct.CMS_KeyAgreeRecipientInfo_st**
  %1 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %kari, align 8, !tbaa !10
  %cms_ctx = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 7
  store %struct.CMS_CTX_st* %call, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !26
  br label %for.inc

sw.bb7:                                           ; preds = %if.then
  %d8 = getelementptr inbounds i8, i8* %call5, i64 8
  %ktri = bitcast i8* %d8 to %struct.CMS_KeyTransRecipientInfo_st**
  %2 = load %struct.CMS_KeyTransRecipientInfo_st*, %struct.CMS_KeyTransRecipientInfo_st** %ktri, align 8, !tbaa !10
  %cms_ctx9 = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %2, i64 0, i32 7
  store %struct.CMS_CTX_st* %call, %struct.CMS_CTX_st** %cms_ctx9, align 8, !tbaa !27
  %3 = load %struct.CMS_KeyTransRecipientInfo_st*, %struct.CMS_KeyTransRecipientInfo_st** %ktri, align 8, !tbaa !10
  %recip = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %3, i64 0, i32 4
  %4 = load %struct.x509_st*, %struct.x509_st** %recip, align 8, !tbaa !28
  %call12 = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %call) #5
  %call13 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %call) #5
  %call14 = tail call i32 @ossl_x509_set0_libctx(%struct.x509_st* noundef %4, %struct.ossl_lib_ctx_st* noundef %call12, i8* noundef %call13) #5
  br label %for.inc

sw.bb15:                                          ; preds = %if.then
  %d16 = getelementptr inbounds i8, i8* %call5, i64 8
  %kekri = bitcast i8* %d16 to %struct.CMS_KEKRecipientInfo_st**
  %5 = load %struct.CMS_KEKRecipientInfo_st*, %struct.CMS_KEKRecipientInfo_st** %kekri, align 8, !tbaa !10
  %cms_ctx17 = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %5, i64 0, i32 6
  store %struct.CMS_CTX_st* %call, %struct.CMS_CTX_st** %cms_ctx17, align 8, !tbaa !29
  br label %for.inc

sw.bb18:                                          ; preds = %if.then
  %d19 = getelementptr inbounds i8, i8* %call5, i64 8
  %pwri = bitcast i8* %d19 to %struct.CMS_PasswordRecipientInfo_st**
  %6 = load %struct.CMS_PasswordRecipientInfo_st*, %struct.CMS_PasswordRecipientInfo_st** %pwri, align 8, !tbaa !10
  %cms_ctx20 = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %6, i64 0, i32 6
  store %struct.CMS_CTX_st* %call, %struct.CMS_CTX_st** %cms_ctx20, align 8, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then, %sw.bb18, %sw.bb15, %sw.bb7, %sw.bb
  %inc = add nuw nsw i32 %i.042, 1
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp = icmp slt i32 %inc, %call3
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !33

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

declare %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CMS_RecipientInfo* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_x509_set0_libctx(%struct.x509_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef) local_unnamed_addr #1

declare i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @CMS_RecipientInfo_type(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri) local_unnamed_addr #4 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !11
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_ctx_st* @CMS_RecipientInfo_get0_pkey_ctx(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri) local_unnamed_addr #4 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !11
  switch i32 %0, label %return [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

if.then:                                          ; preds = %entry
  %ktri = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1, i32 0
  %1 = load %struct.CMS_KeyTransRecipientInfo_st*, %struct.CMS_KeyTransRecipientInfo_st** %ktri, align 8, !tbaa !10
  %pctx = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %1, i64 0, i32 6
  br label %return.sink.split

if.then3:                                         ; preds = %entry
  %d4 = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kari = bitcast %union.anon.1* %d4 to %struct.CMS_KeyAgreeRecipientInfo_st**
  %2 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %kari, align 8, !tbaa !10
  %pctx5 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %2, i64 0, i32 5
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then, %if.then3
  %pctx5.sink = phi %struct.evp_pkey_ctx_st** [ %pctx5, %if.then3 ], [ %pctx, %if.then ]
  %3 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx5.sink, align 8, !tbaa !25
  br label %return

return:                                           ; preds = %return.sink.split, %entry
  %retval.0 = phi %struct.evp_pkey_ctx_st* [ null, %entry ], [ %3, %return.sink.split ]
  ret %struct.evp_pkey_ctx_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_EnvelopedData_create_ex(%struct.evp_cipher_st* noundef %cipher, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_ContentInfo_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %cmp = icmp eq %struct.CMS_ContentInfo_st* %call, null
  br i1 %cmp, label %merr, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.CMS_EnvelopedData_st* @cms_enveloped_data_init(%struct.CMS_ContentInfo_st* noundef nonnull %call) #6
  %cmp2 = icmp eq %struct.CMS_EnvelopedData_st* %call1, null
  br i1 %cmp2, label %merr, label %if.end4

if.end4:                                          ; preds = %if.end
  %encryptedContentInfo = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %call1, i64 0, i32 3
  %0 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %encryptedContentInfo, align 8, !tbaa !35
  %call5 = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef nonnull %call) #5
  %call6 = tail call i32 @ossl_cms_EncryptedContent_init(%struct.CMS_EncryptedContentInfo_st* noundef %0, %struct.evp_cipher_st* noundef %cipher, i8* noundef null, i64 noundef 0, %struct.CMS_CTX_st* noundef %call5) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %merr, label %cleanup

merr:                                             ; preds = %if.end4, %if.end, %entry
  tail call void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef %call) #5
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.CMS_EnvelopedData_create_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %merr
  %retval.0 = phi %struct.CMS_ContentInfo_st* [ null, %merr ], [ %call, %if.end4 ]
  ret %struct.CMS_ContentInfo_st* %retval.0
}

declare %struct.CMS_ContentInfo_st* @CMS_ContentInfo_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.CMS_EnvelopedData_st* @cms_enveloped_data_init(%struct.CMS_ContentInfo_st* nocapture noundef %cms) unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %other = bitcast %union.anon.0* %d to %struct.asn1_type_st**
  %0 = load %struct.asn1_type_st*, %struct.asn1_type_st** %other, align 8, !tbaa !10
  %cmp = icmp eq %struct.asn1_type_st* %0, null
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %call = tail call %struct.ASN1_ITEM_st* @CMS_EnvelopedData_it() #5
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call) #5
  %envelopedData = bitcast %union.anon.0* %d to %struct.CMS_EnvelopedData_st**
  %1 = bitcast %union.anon.0* %d to %struct.ASN1_VALUE_st**
  store %struct.ASN1_VALUE_st* %call1, %struct.ASN1_VALUE_st** %1, align 8, !tbaa !10
  %cmp5 = icmp eq %struct.ASN1_VALUE_st* %call1, null
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.cms_enveloped_data_init, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %if.then
  %version = bitcast %struct.ASN1_VALUE_st* %call1 to i32*
  store i32 0, i32* %version, align 8, !tbaa !37
  %call9 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 21) #5
  %2 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !10
  %encryptedContentInfo = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %2, i64 0, i32 3
  %3 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %encryptedContentInfo, align 8, !tbaa !35
  %contentType = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %3, i64 0, i32 0
  store %struct.asn1_object_st* %call9, %struct.asn1_object_st** %contentType, align 8, !tbaa !38
  %contentType12 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType12, align 8, !tbaa !4
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %4) #5
  %call13 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 23) #5
  store %struct.asn1_object_st* %call13, %struct.asn1_object_st** %contentType12, align 8, !tbaa !4
  %5 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !10
  br label %return

if.end17:                                         ; preds = %entry
  %call18 = tail call %struct.CMS_EnvelopedData_st* @ossl_cms_get0_enveloped(%struct.CMS_ContentInfo_st* noundef nonnull %cms) #6
  br label %return

return:                                           ; preds = %if.end17, %if.end, %if.then6
  %retval.0 = phi %struct.CMS_EnvelopedData_st* [ null, %if.then6 ], [ %5, %if.end ], [ %call18, %if.end17 ]
  ret %struct.CMS_EnvelopedData_st* %retval.0
}

declare i32 @ossl_cms_EncryptedContent_init(%struct.CMS_EncryptedContentInfo_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i64 noundef, %struct.CMS_CTX_st* noundef) local_unnamed_addr #1

declare void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_EnvelopedData_create(%struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_EnvelopedData_create_ex(%struct.evp_cipher_st* noundef %cipher, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.CMS_ContentInfo_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_AuthEnvelopedData_create_ex(%struct.evp_cipher_st* noundef %cipher, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_ContentInfo_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %cmp = icmp eq %struct.CMS_ContentInfo_st* %call, null
  br i1 %cmp, label %merr, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.CMS_AuthEnvelopedData_st* @cms_auth_enveloped_data_init(%struct.CMS_ContentInfo_st* noundef nonnull %call) #6
  %cmp2 = icmp eq %struct.CMS_AuthEnvelopedData_st* %call1, null
  br i1 %cmp2, label %merr, label %if.end4

if.end4:                                          ; preds = %if.end
  %authEncryptedContentInfo = getelementptr inbounds %struct.CMS_AuthEnvelopedData_st, %struct.CMS_AuthEnvelopedData_st* %call1, i64 0, i32 3
  %0 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %authEncryptedContentInfo, align 8, !tbaa !40
  %call5 = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef nonnull %call) #5
  %call6 = tail call i32 @ossl_cms_EncryptedContent_init(%struct.CMS_EncryptedContentInfo_st* noundef %0, %struct.evp_cipher_st* noundef %cipher, i8* noundef null, i64 noundef 0, %struct.CMS_CTX_st* noundef %call5) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %merr, label %cleanup

merr:                                             ; preds = %if.end4, %if.end, %entry
  tail call void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef %call) #5
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.CMS_AuthEnvelopedData_create_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %merr
  %retval.0 = phi %struct.CMS_ContentInfo_st* [ null, %merr ], [ %call, %if.end4 ]
  ret %struct.CMS_ContentInfo_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.CMS_AuthEnvelopedData_st* @cms_auth_enveloped_data_init(%struct.CMS_ContentInfo_st* nocapture noundef %cms) unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %other = bitcast %union.anon.0* %d to %struct.asn1_type_st**
  %0 = load %struct.asn1_type_st*, %struct.asn1_type_st** %other, align 8, !tbaa !10
  %cmp = icmp eq %struct.asn1_type_st* %0, null
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %call = tail call %struct.ASN1_ITEM_st* @CMS_AuthEnvelopedData_it() #5
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call) #5
  %authEnvelopedData = bitcast %union.anon.0* %d to %struct.CMS_AuthEnvelopedData_st**
  %1 = bitcast %union.anon.0* %d to %struct.ASN1_VALUE_st**
  store %struct.ASN1_VALUE_st* %call1, %struct.ASN1_VALUE_st** %1, align 8, !tbaa !10
  %cmp5 = icmp eq %struct.ASN1_VALUE_st* %call1, null
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.cms_auth_enveloped_data_init, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %if.then
  %version = bitcast %struct.ASN1_VALUE_st* %call1 to i32*
  store i32 0, i32* %version, align 8, !tbaa !42
  %call9 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 21) #5
  %2 = load %struct.CMS_AuthEnvelopedData_st*, %struct.CMS_AuthEnvelopedData_st** %authEnvelopedData, align 8, !tbaa !10
  %authEncryptedContentInfo = getelementptr inbounds %struct.CMS_AuthEnvelopedData_st, %struct.CMS_AuthEnvelopedData_st* %2, i64 0, i32 3
  %3 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %authEncryptedContentInfo, align 8, !tbaa !40
  %contentType = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %3, i64 0, i32 0
  store %struct.asn1_object_st* %call9, %struct.asn1_object_st** %contentType, align 8, !tbaa !38
  %contentType12 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType12, align 8, !tbaa !4
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %4) #5
  %call13 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 1059) #5
  store %struct.asn1_object_st* %call13, %struct.asn1_object_st** %contentType12, align 8, !tbaa !4
  %5 = load %struct.CMS_AuthEnvelopedData_st*, %struct.CMS_AuthEnvelopedData_st** %authEnvelopedData, align 8, !tbaa !10
  br label %return

if.end17:                                         ; preds = %entry
  %call18 = tail call %struct.CMS_AuthEnvelopedData_st* @ossl_cms_get0_auth_enveloped(%struct.CMS_ContentInfo_st* noundef nonnull %cms) #6
  br label %return

return:                                           ; preds = %if.end17, %if.end, %if.then6
  %retval.0 = phi %struct.CMS_AuthEnvelopedData_st* [ null, %if.then6 ], [ %5, %if.end ], [ %call18, %if.end17 ]
  ret %struct.CMS_AuthEnvelopedData_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_AuthEnvelopedData_create(%struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_AuthEnvelopedData_create_ex(%struct.evp_cipher_st* noundef %cipher, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.CMS_ContentInfo_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_RecipientInfo_st* @CMS_add1_recipient(%struct.CMS_ContentInfo_st* noundef %cms, %struct.x509_st* noundef %recip, %struct.evp_pkey_st* noundef %originatorPrivKey, %struct.x509_st* noundef %originator, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #5
  %call1 = tail call %struct.stack_st_CMS_RecipientInfo* @CMS_get0_RecipientInfos(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.stack_st_CMS_RecipientInfo* %call1, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ASN1_ITEM_st* @CMS_RecipientInfo_it() #5
  %call3 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call2) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call3 to %struct.CMS_RecipientInfo_st*
  %cmp4 = icmp eq %struct.ASN1_VALUE_st* %call3, null
  br i1 %cmp4, label %err.sink.split, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %recip) #5
  %cmp8 = icmp eq %struct.evp_pkey_st* %call7, null
  br i1 %cmp8, label %err.sink.split, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @ossl_cms_pkey_get_ri_type(%struct.evp_pkey_st* noundef nonnull %call7) #6
  switch i32 %call11, label %err.sink.split [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end10
  %call12 = tail call fastcc i32 @cms_RecipientInfo_ktri_init(%struct.CMS_RecipientInfo_st* noundef nonnull %0, %struct.x509_st* noundef %recip, %struct.evp_pkey_st* noundef nonnull %call7, i32 noundef %flags, %struct.CMS_CTX_st* noundef %call) #6
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %sw.epilog

sw.bb15:                                          ; preds = %if.end10
  %call16 = tail call i32 @ossl_cms_RecipientInfo_kari_init(%struct.CMS_RecipientInfo_st* noundef nonnull %0, %struct.x509_st* noundef %recip, %struct.evp_pkey_st* noundef nonnull %call7, %struct.x509_st* noundef %originator, %struct.evp_pkey_st* noundef %originatorPrivKey, i32 noundef %flags, %struct.CMS_CTX_st* noundef %call) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef nonnull %call1) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call3 to i8*
  %call22 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call20, i8* noundef nonnull %1) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err.sink.split, label %cleanup

err.sink.split:                                   ; preds = %if.end, %sw.epilog, %if.end10, %if.end6
  %.sink48 = phi i32 [ 353, %if.end6 ], [ 371, %if.end10 ], [ 382, %sw.epilog ], [ 382, %if.end ]
  %.sink = phi i32 [ 113, %if.end6 ], [ 125, %if.end10 ], [ 786688, %sw.epilog ], [ 786688, %if.end ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink48, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.CMS_add1_recipient, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef %.sink, i8* noundef null) #5
  br label %err

err:                                              ; preds = %err.sink.split, %sw.bb15, %sw.bb, %entry
  %2 = phi %struct.ASN1_VALUE_st* [ null, %entry ], [ %call3, %sw.bb15 ], [ %call3, %sw.bb ], [ %call3, %err.sink.split ]
  %call26 = tail call %struct.ASN1_ITEM_st* @CMS_RecipientInfo_it() #5
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %2, %struct.ASN1_ITEM_st* noundef %call26) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %err
  %retval.0 = phi %struct.CMS_RecipientInfo_st* [ null, %err ], [ %0, %sw.epilog ]
  ret %struct.CMS_RecipientInfo_st* %retval.0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_RecipientInfo_it() local_unnamed_addr #1

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_pkey_get_ri_type(%struct.evp_pkey_st* noundef %pk) local_unnamed_addr #0 {
entry:
  %r = alloca i32, align 4
  %call = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pk, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %return

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pk, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #5
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else4, label %return

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pk, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else8, label %return

if.else8:                                         ; preds = %if.else4
  %call9 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pk, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else12, label %return

if.else12:                                        ; preds = %if.else8
  %call13 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pk, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end19, label %return

if.end19:                                         ; preds = %if.else12
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !18
  %tobool20.not = icmp eq %struct.evp_pkey_asn1_method_st* %0, null
  br i1 %tobool20.not, label %if.end30, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end19
  %pkey_ctrl = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 23
  %1 = load i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)** %pkey_ctrl, align 8, !tbaa !23
  %tobool22.not = icmp eq i32 (%struct.evp_pkey_st*, i32, i64, i8*)* %1, null
  br i1 %tobool22.not, label %if.end30, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  %2 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  %call26 = call i32 %1(%struct.evp_pkey_st* noundef nonnull %pk, i32 noundef 8, i64 noundef 0, i8* noundef nonnull %2) #5
  %cmp = icmp slt i32 %call26, 1
  %3 = load i32, i32* %r, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  br i1 %cmp, label %if.end30, label %return

if.end30:                                         ; preds = %if.then23, %land.lhs.true, %if.end19
  br label %return

return:                                           ; preds = %if.then23, %if.else12, %if.else8, %if.else4, %if.else, %entry, %if.end30
  %retval.1 = phi i32 [ %3, %if.then23 ], [ 0, %if.end30 ], [ 1, %entry ], [ 1, %if.else ], [ -1, %if.else4 ], [ 1, %if.else8 ], [ 0, %if.else12 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_RecipientInfo_ktri_init(%struct.CMS_RecipientInfo_st* noundef %ri, %struct.x509_st* noundef %recip, %struct.evp_pkey_st* noundef %pk, i32 noundef %flags, %struct.CMS_CTX_st* noundef %ctx) unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @CMS_KeyTransRecipientInfo_it() #5
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call) #5
  %ktri2 = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1, i32 0
  %0 = bitcast %struct.CMS_KeyTransRecipientInfo_st** %ktri2 to %struct.ASN1_VALUE_st**
  store %struct.ASN1_VALUE_st* %call1, %struct.ASN1_VALUE_st** %0, align 8, !tbaa !10
  %tobool.not = icmp eq %struct.ASN1_VALUE_st* %call1, null
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.CMS_KeyTransRecipientInfo_st*
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !11
  %cms_ctx = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %1, i64 0, i32 7
  store %struct.CMS_CTX_st* %ctx, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !27
  %and = and i32 %flags, 65536
  %2 = lshr exact i32 %and, 15
  %and.lobit = lshr exact i32 %and, 16
  %3 = bitcast %struct.ASN1_VALUE_st* %call1 to i32*
  store i32 %2, i32* %3, align 8
  %rid = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %1, i64 0, i32 1
  %4 = load %struct.CMS_SignerIdentifier_st*, %struct.CMS_SignerIdentifier_st** %rid, align 8, !tbaa !43
  %call11 = tail call i32 @ossl_cms_set1_SignerIdentifier(%struct.CMS_SignerIdentifier_st* noundef %4, %struct.x509_st* noundef %recip, i32 noundef %and.lobit, %struct.CMS_CTX_st* noundef %ctx) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @X509_up_ref(%struct.x509_st* noundef %recip) #5
  %call16 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %pk) #5
  %pkey = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %1, i64 0, i32 5
  store %struct.evp_pkey_st* %pk, %struct.evp_pkey_st** %pkey, align 8, !tbaa !14
  %recip17 = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %1, i64 0, i32 4
  store %struct.x509_st* %recip, %struct.x509_st** %recip17, align 8, !tbaa !28
  %and18 = and i32 %flags, 262144
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else33, label %if.then20

if.then20:                                        ; preds = %if.end14
  %call21 = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %ctx) #5
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !14
  %call23 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %ctx) #5
  %call24 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %call21, %struct.evp_pkey_st* noundef %5, i8* noundef %call23) #5
  %pctx = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %1, i64 0, i32 6
  store %struct.evp_pkey_ctx_st* %call24, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !44
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call24, null
  br i1 %cmp, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.then20
  %call29 = tail call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call24) #5
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %cleanup, label %if.end38

if.else33:                                        ; preds = %if.end14
  %call34 = tail call i32 @ossl_cms_env_asn1_ctrl(%struct.CMS_RecipientInfo_st* noundef nonnull %ri, i32 noundef 0) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.else33, %if.end27
  br label %cleanup

cleanup:                                          ; preds = %if.else33, %if.end27, %if.then20, %if.end, %entry, %if.end38
  %retval.0 = phi i32 [ 1, %if.end38 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then20 ], [ 0, %if.end27 ], [ 0, %if.else33 ]
  ret i32 %retval.0
}

declare i32 @ossl_cms_RecipientInfo_kari_init(%struct.CMS_RecipientInfo_st* noundef, %struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.x509_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.CMS_CTX_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CMS_RecipientInfo* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_RecipientInfo_st* @CMS_add1_recipient_cert(%struct.CMS_ContentInfo_st* noundef %cms, %struct.x509_st* noundef %recip, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_RecipientInfo_st* @CMS_add1_recipient(%struct.CMS_ContentInfo_st* noundef %cms, %struct.x509_st* noundef %recip, %struct.evp_pkey_st* noundef null, %struct.x509_st* noundef null, i32 noundef %flags) #6
  ret %struct.CMS_RecipientInfo_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_ktri_get0_algs(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, %struct.evp_pkey_st** noundef writeonly %pk, %struct.x509_st** noundef writeonly %recip, %struct.X509_algor_st** noundef writeonly %palg) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 401, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.CMS_RecipientInfo_ktri_get0_algs, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 124, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %ktri1 = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1, i32 0
  %1 = load %struct.CMS_KeyTransRecipientInfo_st*, %struct.CMS_KeyTransRecipientInfo_st** %ktri1, align 8, !tbaa !10
  %tobool.not = icmp eq %struct.evp_pkey_st** %pk, null
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %pkey = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %1, i64 0, i32 5
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !14
  store %struct.evp_pkey_st* %2, %struct.evp_pkey_st** %pk, align 8, !tbaa !25
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %tobool4.not = icmp eq %struct.x509_st** %recip, null
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  %recip6 = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %1, i64 0, i32 4
  %3 = load %struct.x509_st*, %struct.x509_st** %recip6, align 8, !tbaa !28
  store %struct.x509_st* %3, %struct.x509_st** %recip, align 8, !tbaa !25
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3
  %tobool8.not = icmp eq %struct.X509_algor_st** %palg, null
  br i1 %tobool8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end7
  %keyEncryptionAlgorithm = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %1, i64 0, i32 2
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyEncryptionAlgorithm, align 8, !tbaa !45
  store %struct.X509_algor_st* %4, %struct.X509_algor_st** %palg, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then9 ], [ 1, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_ktri_get0_signer_id(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, %struct.asn1_string_st** noundef %keyid, %struct.X509_name_st** noundef %issuer, %struct.asn1_string_st** noundef %sno) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 423, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.CMS_RecipientInfo_ktri_get0_signer_id, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 124, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %ktri1 = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1, i32 0
  %1 = load %struct.CMS_KeyTransRecipientInfo_st*, %struct.CMS_KeyTransRecipientInfo_st** %ktri1, align 8, !tbaa !10
  %rid = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %1, i64 0, i32 1
  %2 = load %struct.CMS_SignerIdentifier_st*, %struct.CMS_SignerIdentifier_st** %rid, align 8, !tbaa !43
  %call = tail call i32 @ossl_cms_SignerIdentifier_get0_signer_id(%struct.CMS_SignerIdentifier_st* noundef %2, %struct.asn1_string_st** noundef %keyid, %struct.X509_name_st** noundef %issuer, %struct.asn1_string_st** noundef %sno) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_cms_SignerIdentifier_get0_signer_id(%struct.CMS_SignerIdentifier_st* noundef, %struct.asn1_string_st** noundef, %struct.X509_name_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_ktri_cert_cmp(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 435, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.CMS_RecipientInfo_ktri_cert_cmp, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 124, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %ktri = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1, i32 0
  %1 = load %struct.CMS_KeyTransRecipientInfo_st*, %struct.CMS_KeyTransRecipientInfo_st** %ktri, align 8, !tbaa !10
  %rid = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %1, i64 0, i32 1
  %2 = load %struct.CMS_SignerIdentifier_st*, %struct.CMS_SignerIdentifier_st** %rid, align 8, !tbaa !43
  %call = tail call i32 @ossl_cms_SignerIdentifier_cert_cmp(%struct.CMS_SignerIdentifier_st* noundef %2, %struct.x509_st* noundef %cert) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_cms_SignerIdentifier_cert_cmp(%struct.CMS_SignerIdentifier_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_set0_pkey(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 444, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.CMS_RecipientInfo_set0_pkey, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 124, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %ktri = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1, i32 0
  %1 = load %struct.CMS_KeyTransRecipientInfo_st*, %struct.CMS_KeyTransRecipientInfo_st** %ktri, align 8, !tbaa !10
  %pkey1 = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %1, i64 0, i32 5
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !14
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %2) #5
  %3 = load %struct.CMS_KeyTransRecipientInfo_st*, %struct.CMS_KeyTransRecipientInfo_st** %ktri, align 8, !tbaa !10
  %pkey4 = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %3, i64 0, i32 5
  store %struct.evp_pkey_st* %pkey, %struct.evp_pkey_st** %pkey4, align 8, !tbaa !14
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_kekri_id_cmp(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, i8* noundef %id, i64 noundef %idlen) local_unnamed_addr #0 {
entry:
  %tmp_os = alloca %struct.asn1_string_st, align 8
  %0 = bitcast %struct.asn1_string_st* %tmp_os to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 617, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.CMS_RecipientInfo_kekri_id_cmp, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 123, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kekri1 = bitcast %union.anon.1* %d to %struct.CMS_KEKRecipientInfo_st**
  %2 = load %struct.CMS_KEKRecipientInfo_st*, %struct.CMS_KEKRecipientInfo_st** %kekri1, align 8, !tbaa !10
  %type2 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %tmp_os, i64 0, i32 1
  store i32 4, i32* %type2, align 4, !tbaa !46
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %tmp_os, i64 0, i32 3
  store i64 0, i64* %flags, align 8, !tbaa !48
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %tmp_os, i64 0, i32 2
  store i8* %id, i8** %data, align 8, !tbaa !49
  %conv = trunc i64 %idlen to i32
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %tmp_os, i64 0, i32 0
  store i32 %conv, i32* %length, align 8, !tbaa !50
  %kekid = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %2, i64 0, i32 1
  %3 = load %struct.CMS_KEKIdentifier_st*, %struct.CMS_KEKIdentifier_st** %kekid, align 8, !tbaa !51
  %keyIdentifier = getelementptr inbounds %struct.CMS_KEKIdentifier_st, %struct.CMS_KEKIdentifier_st* %3, i64 0, i32 0
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %keyIdentifier, align 8, !tbaa !52
  %call = call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef nonnull %tmp_os, %struct.asn1_string_st* noundef %4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_RecipientInfo_st* @CMS_add0_recipient_key(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms, i32 noundef %nid, i8* noundef %key, i64 noundef %keylen, i8* noundef %id, i64 noundef %idlen, %struct.asn1_string_st* noundef %date, %struct.asn1_object_st* noundef %otherTypeId, %struct.asn1_type_st* noundef %otherType) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_CMS_RecipientInfo* @CMS_get0_RecipientInfos(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.stack_st_CMS_RecipientInfo* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %nid, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  switch i64 %keylen, label %err.sink.split [
    i64 16, label %if.end11
    i64 24, label %sw.bb3
    i64 32, label %sw.bb4
  ]

sw.bb3:                                           ; preds = %if.then2
  br label %if.end11

sw.bb4:                                           ; preds = %if.then2
  br label %if.end11

if.else:                                          ; preds = %if.end
  %call5 = tail call fastcc i64 @aes_wrap_keylen(i32 noundef %nid) #6
  %tobool.not = icmp eq i64 %call5, 0
  br i1 %tobool.not, label %err.sink.split, label %if.end7

if.end7:                                          ; preds = %if.else
  %cmp8.not = icmp eq i64 %call5, %keylen
  br i1 %cmp8.not, label %if.end11, label %err.sink.split

if.end11:                                         ; preds = %if.end7, %if.then2, %sw.bb3, %sw.bb4
  %nid.addr.0 = phi i32 [ 790, %sw.bb4 ], [ 789, %sw.bb3 ], [ 788, %if.then2 ], [ %nid, %if.end7 ]
  %call12 = tail call %struct.ASN1_ITEM_st* @CMS_RecipientInfo_it() #5
  %call13 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call12) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call13 to %struct.CMS_RecipientInfo_st*
  %tobool14.not = icmp eq %struct.ASN1_VALUE_st* %call13, null
  br i1 %tobool14.not, label %err.sink.split, label %if.end16

if.end16:                                         ; preds = %if.end11
  %call17 = tail call %struct.ASN1_ITEM_st* @CMS_KEKRecipientInfo_it() #5
  %call18 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call17) #5
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %0, i64 0, i32 1
  %1 = bitcast %union.anon.1* %d to %struct.ASN1_VALUE_st**
  store %struct.ASN1_VALUE_st* %call18, %struct.ASN1_VALUE_st** %1, align 8, !tbaa !10
  %tobool22.not = icmp eq %struct.ASN1_VALUE_st* %call18, null
  %2 = bitcast %struct.ASN1_VALUE_st* %call18 to %struct.CMS_KEKRecipientInfo_st*
  br i1 %tobool22.not, label %err.sink.split, label %if.end24

if.end24:                                         ; preds = %if.end16
  %type = bitcast %struct.ASN1_VALUE_st* %call13 to i32*
  store i32 2, i32* %type, align 8, !tbaa !11
  %tobool27.not = icmp eq %struct.asn1_object_st* %otherTypeId, null
  br i1 %tobool27.not, label %if.end36, label %if.then28

if.then28:                                        ; preds = %if.end24
  %call29 = tail call %struct.ASN1_ITEM_st* @CMS_OtherKeyAttribute_it() #5
  %call30 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call29) #5
  %kekid = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %2, i64 0, i32 1
  %3 = load %struct.CMS_KEKIdentifier_st*, %struct.CMS_KEKIdentifier_st** %kekid, align 8, !tbaa !51
  %other = getelementptr inbounds %struct.CMS_KEKIdentifier_st, %struct.CMS_KEKIdentifier_st* %3, i64 0, i32 2
  %4 = bitcast %struct.CMS_OtherKeyAttribute_st** %other to %struct.ASN1_VALUE_st**
  store %struct.ASN1_VALUE_st* %call30, %struct.ASN1_VALUE_st** %4, align 8, !tbaa !54
  %cmp33 = icmp eq %struct.ASN1_VALUE_st* %call30, null
  br i1 %cmp33, label %err.sink.split, label %if.end36

if.end36:                                         ; preds = %if.then28, %if.end24
  %call37 = tail call fastcc %struct.stack_st* @ossl_check_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef nonnull %call) #6
  %5 = bitcast %struct.ASN1_VALUE_st* %call13 to i8*
  %call39 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call37, i8* noundef nonnull %5) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err.sink.split, label %if.end42

if.end42:                                         ; preds = %if.end36
  %version = bitcast %struct.ASN1_VALUE_st* %call18 to i32*
  store i32 4, i32* %version, align 8, !tbaa !55
  %key43 = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %2, i64 0, i32 4
  store i8* %key, i8** %key43, align 8, !tbaa !56
  %keylen44 = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %2, i64 0, i32 5
  store i64 %keylen, i64* %keylen44, align 8, !tbaa !57
  %kekid45 = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %2, i64 0, i32 1
  %6 = load %struct.CMS_KEKIdentifier_st*, %struct.CMS_KEKIdentifier_st** %kekid45, align 8, !tbaa !51
  %keyIdentifier = getelementptr inbounds %struct.CMS_KEKIdentifier_st, %struct.CMS_KEKIdentifier_st* %6, i64 0, i32 0
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %keyIdentifier, align 8, !tbaa !52
  %conv = trunc i64 %idlen to i32
  tail call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %7, i8* noundef %id, i32 noundef %conv) #5
  %8 = load %struct.CMS_KEKIdentifier_st*, %struct.CMS_KEKIdentifier_st** %kekid45, align 8, !tbaa !51
  %date47 = getelementptr inbounds %struct.CMS_KEKIdentifier_st, %struct.CMS_KEKIdentifier_st* %8, i64 0, i32 1
  store %struct.asn1_string_st* %date, %struct.asn1_string_st** %date47, align 8, !tbaa !58
  %other49 = getelementptr inbounds %struct.CMS_KEKIdentifier_st, %struct.CMS_KEKIdentifier_st* %8, i64 0, i32 2
  %9 = load %struct.CMS_OtherKeyAttribute_st*, %struct.CMS_OtherKeyAttribute_st** %other49, align 8, !tbaa !54
  %tobool50.not = icmp eq %struct.CMS_OtherKeyAttribute_st* %9, null
  br i1 %tobool50.not, label %if.end56, label %if.then51

if.then51:                                        ; preds = %if.end42
  %keyAttrId = getelementptr inbounds %struct.CMS_OtherKeyAttribute_st, %struct.CMS_OtherKeyAttribute_st* %9, i64 0, i32 0
  store %struct.asn1_object_st* %otherTypeId, %struct.asn1_object_st** %keyAttrId, align 8, !tbaa !59
  %keyAttr = getelementptr inbounds %struct.CMS_OtherKeyAttribute_st, %struct.CMS_OtherKeyAttribute_st* %9, i64 0, i32 1
  store %struct.asn1_type_st* %otherType, %struct.asn1_type_st** %keyAttr, align 8, !tbaa !61
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.end42
  %keyEncryptionAlgorithm = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %2, i64 0, i32 2
  %10 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyEncryptionAlgorithm, align 8, !tbaa !62
  %call57 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid.addr.0) #5
  %call58 = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %10, %struct.asn1_object_st* noundef %call57, i32 noundef -1, i8* noundef null) #5
  br label %cleanup60

err.sink.split:                                   ; preds = %if.end11, %if.end16, %if.then28, %if.end36, %if.end7, %if.else, %if.then2
  %.sink95 = phi i32 [ 676, %if.then2 ], [ 685, %if.else ], [ 690, %if.end7 ], [ 739, %if.end36 ], [ 739, %if.then28 ], [ 739, %if.end16 ], [ 739, %if.end11 ]
  %.sink = phi i32 [ 118, %if.then2 ], [ 153, %if.else ], [ 118, %if.end7 ], [ 786688, %if.end36 ], [ 786688, %if.then28 ], [ 786688, %if.end16 ], [ 786688, %if.end11 ]
  %.ph = phi %struct.ASN1_VALUE_st* [ null, %if.then2 ], [ null, %if.else ], [ null, %if.end7 ], [ %call13, %if.end36 ], [ %call13, %if.then28 ], [ %call13, %if.end16 ], [ %call13, %if.end11 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink95, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.CMS_add0_recipient_key, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef %.sink, i8* noundef null) #5
  br label %err

err:                                              ; preds = %err.sink.split, %entry
  %11 = phi %struct.ASN1_VALUE_st* [ null, %entry ], [ %.ph, %err.sink.split ]
  %call59 = tail call %struct.ASN1_ITEM_st* @CMS_RecipientInfo_it() #5
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %11, %struct.ASN1_ITEM_st* noundef %call59) #5
  br label %cleanup60

cleanup60:                                        ; preds = %err, %if.end56
  %retval.0 = phi %struct.CMS_RecipientInfo_st* [ null, %err ], [ %0, %if.end56 ]
  ret %struct.CMS_RecipientInfo_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @aes_wrap_keylen(i32 noundef %nid) unnamed_addr #3 {
entry:
  %switch.tableidx = add i32 %nid, -788
  %0 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.cast = zext i32 %switch.tableidx to i64
  %switch.idx.mult = shl nuw nsw i64 %switch.idx.cast, 3
  %switch.offset = add nuw nsw i64 %switch.idx.mult, 16
  %retval.0 = select i1 %0, i64 %switch.offset, i64 0
  ret i64 %retval.0
}

declare %struct.ASN1_ITEM_st* @CMS_KEKRecipientInfo_it() local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_OtherKeyAttribute_it() local_unnamed_addr #1

declare void @ASN1_STRING_set0(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_kekri_get0_id(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, %struct.X509_algor_st** noundef writeonly %palg, %struct.asn1_string_st** noundef writeonly %pid, %struct.asn1_string_st** noundef writeonly %pdate, %struct.asn1_object_st** noundef writeonly %potherid, %struct.asn1_type_st** noundef writeonly %pothertype) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %0, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.CMS_RecipientInfo_kekri_get0_id, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 123, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kekri = bitcast %union.anon.1* %d to %struct.CMS_KEKRecipientInfo_st**
  %1 = load %struct.CMS_KEKRecipientInfo_st*, %struct.CMS_KEKRecipientInfo_st** %kekri, align 8, !tbaa !10
  %kekid = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %1, i64 0, i32 1
  %2 = load %struct.CMS_KEKIdentifier_st*, %struct.CMS_KEKIdentifier_st** %kekid, align 8, !tbaa !51
  %tobool.not = icmp eq %struct.X509_algor_st** %palg, null
  br i1 %tobool.not, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  %keyEncryptionAlgorithm = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %1, i64 0, i32 2
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyEncryptionAlgorithm, align 8, !tbaa !62
  store %struct.X509_algor_st* %3, %struct.X509_algor_st** %palg, align 8, !tbaa !25
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %tobool5.not = icmp eq %struct.asn1_string_st** %pid, null
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  %keyIdentifier = getelementptr inbounds %struct.CMS_KEKIdentifier_st, %struct.CMS_KEKIdentifier_st* %2, i64 0, i32 0
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %keyIdentifier, align 8, !tbaa !52
  store %struct.asn1_string_st* %4, %struct.asn1_string_st** %pid, align 8, !tbaa !25
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %tobool8.not = icmp eq %struct.asn1_string_st** %pdate, null
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  %date = getelementptr inbounds %struct.CMS_KEKIdentifier_st, %struct.CMS_KEKIdentifier_st* %2, i64 0, i32 1
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %date, align 8, !tbaa !58
  store %struct.asn1_string_st* %5, %struct.asn1_string_st** %pdate, align 8, !tbaa !25
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %tobool11.not = icmp eq %struct.asn1_object_st** %potherid, null
  br i1 %tobool11.not, label %if.end17, label %if.then12

if.then12:                                        ; preds = %if.end10
  %other = getelementptr inbounds %struct.CMS_KEKIdentifier_st, %struct.CMS_KEKIdentifier_st* %2, i64 0, i32 2
  %6 = load %struct.CMS_OtherKeyAttribute_st*, %struct.CMS_OtherKeyAttribute_st** %other, align 8, !tbaa !54
  %tobool13.not = icmp eq %struct.CMS_OtherKeyAttribute_st* %6, null
  br i1 %tobool13.not, label %if.end17.sink.split, label %if.then14

if.then14:                                        ; preds = %if.then12
  %keyAttrId = getelementptr inbounds %struct.CMS_OtherKeyAttribute_st, %struct.CMS_OtherKeyAttribute_st* %6, i64 0, i32 0
  %7 = load %struct.asn1_object_st*, %struct.asn1_object_st** %keyAttrId, align 8, !tbaa !59
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.then12, %if.then14
  %.sink = phi %struct.asn1_object_st* [ %7, %if.then14 ], [ null, %if.then12 ]
  store %struct.asn1_object_st* %.sink, %struct.asn1_object_st** %potherid, align 8, !tbaa !25
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.end10
  %tobool18.not = icmp eq %struct.asn1_type_st** %pothertype, null
  br i1 %tobool18.not, label %cleanup, label %if.then19

if.then19:                                        ; preds = %if.end17
  %other20 = getelementptr inbounds %struct.CMS_KEKIdentifier_st, %struct.CMS_KEKIdentifier_st* %2, i64 0, i32 2
  %8 = load %struct.CMS_OtherKeyAttribute_st*, %struct.CMS_OtherKeyAttribute_st** %other20, align 8, !tbaa !54
  %tobool21.not = icmp eq %struct.CMS_OtherKeyAttribute_st* %8, null
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.then19
  %keyAttr = getelementptr inbounds %struct.CMS_OtherKeyAttribute_st, %struct.CMS_OtherKeyAttribute_st* %8, i64 0, i32 1
  %9 = load %struct.asn1_type_st*, %struct.asn1_type_st** %keyAttr, align 8, !tbaa !61
  store %struct.asn1_type_st* %9, %struct.asn1_type_st** %pothertype, align 8, !tbaa !25
  br label %cleanup

if.else24:                                        ; preds = %if.then19
  store %struct.asn1_type_st* null, %struct.asn1_type_st** %pothertype, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.else24, %if.then22, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then22 ], [ 1, %if.else24 ], [ 1, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_set0_key(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, i8* noundef %key, i64 noundef %keylen) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %0, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.CMS_RecipientInfo_set0_key, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 123, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kekri1 = bitcast %union.anon.1* %d to %struct.CMS_KEKRecipientInfo_st**
  %1 = load %struct.CMS_KEKRecipientInfo_st*, %struct.CMS_KEKRecipientInfo_st** %kekri1, align 8, !tbaa !10
  %key2 = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %1, i64 0, i32 4
  store i8* %key, i8** %key2, align 8, !tbaa !56
  %keylen3 = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %1, i64 0, i32 5
  store i64 %keylen, i64* %keylen3, align 8, !tbaa !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_decrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef %ri) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !11
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @cms_RecipientInfo_ktri_decrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef nonnull %ri) #6
  br label %return

sw.bb1:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @cms_RecipientInfo_kekri_decrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef nonnull %ri) #6
  br label %return

sw.bb3:                                           ; preds = %entry
  %call4 = tail call i32 @ossl_cms_RecipientInfo_pwri_crypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef nonnull %ri, i32 noundef 0) #5
  br label %return

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 982, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.CMS_RecipientInfo_decrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 155, i8* noundef null) #5
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_RecipientInfo_ktri_decrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef %ri) unnamed_addr #0 {
entry:
  %eklen = alloca i64, align 8
  %name = alloca [50 x i8], align 16
  %ktri1 = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1, i32 0
  %0 = load %struct.CMS_KeyTransRecipientInfo_st*, %struct.CMS_KeyTransRecipientInfo_st** %ktri1, align 8, !tbaa !10
  %pkey2 = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %0, i64 0, i32 5
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey2, align 8, !tbaa !14
  %2 = bitcast i64* %eklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #5
  %call3 = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %call) #5
  %call4 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %call) #5
  %call5 = tail call %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey2, align 8, !tbaa !14
  %cmp = icmp eq %struct.evp_pkey_st* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 535, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.cms_RecipientInfo_ktri_decrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 133, i8* noundef null) #5
  br label %cleanup87

if.end:                                           ; preds = %entry
  %d7 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %envelopedData = bitcast %union.anon.0* %d7 to %struct.CMS_EnvelopedData_st**
  %4 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !10
  %encryptedContentInfo = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %4, i64 0, i32 3
  %5 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %encryptedContentInfo, align 8, !tbaa !35
  %havenocert = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %5, i64 0, i32 9
  %6 = load i32, i32* %havenocert, align 4, !tbaa !63
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %debug = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %5, i64 0, i32 8
  %7 = load i32, i32* %debug, align 8, !tbaa !64
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.then12, label %if.end31

if.then12:                                        ; preds = %land.lhs.true
  %contentEncryptionAlgorithm = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call5, i64 0, i32 1
  %8 = load %struct.X509_algor_st*, %struct.X509_algor_st** %contentEncryptionAlgorithm, align 8, !tbaa !65
  %9 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %9) #7
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %8, i64 0, i32 0
  %10 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !66
  %call13 = call i32 @OBJ_obj2txt(i8* noundef nonnull %9, i32 noundef 50, %struct.asn1_object_st* noundef %10, i32 noundef 0) #5
  %call14 = call i32 @ERR_set_mark() #5
  %call16 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %call3, i8* noundef nonnull %9, i8* noundef %call4) #5
  %cmp17.not = icmp eq %struct.evp_cipher_st* %call16, null
  br i1 %cmp17.not, label %if.end23, label %cleanup

if.end23:                                         ; preds = %if.then12
  %11 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !66
  %call20 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %11) #5
  %call21 = call i8* @OBJ_nid2sn(i32 noundef %call20) #5
  %call22 = call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %call21) #5
  %cmp24 = icmp eq %struct.evp_cipher_st* %call22, null
  br i1 %cmp24, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end23
  %call26 = call i32 @ERR_clear_last_mark() #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 555, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.cms_RecipientInfo_ktri_decrypt, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 148, i8* noundef null) #5
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %9) #7
  br label %cleanup87

cleanup:                                          ; preds = %if.then12, %if.end23
  %cipher.0146 = phi %struct.evp_cipher_st* [ %call22, %if.end23 ], [ %call16, %if.then12 ]
  %call28 = call i32 @ERR_pop_to_mark() #5
  %call29 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef nonnull %cipher.0146) #5
  %conv = sext i32 %call29 to i64
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call16) #5
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %9) #7
  br label %if.end31

if.end31:                                         ; preds = %cleanup, %land.lhs.true, %if.end
  %fixlen.1 = phi i64 [ 0, %land.lhs.true ], [ %conv, %cleanup ], [ 0, %if.end ]
  %call32 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %call3, %struct.evp_pkey_st* noundef %1, i8* noundef %call4) #5
  %pctx = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %0, i64 0, i32 6
  store %struct.evp_pkey_ctx_st* %call32, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !44
  %cmp34 = icmp eq %struct.evp_pkey_ctx_st* %call32, null
  br i1 %cmp34, label %if.then85, label %if.end37

if.end37:                                         ; preds = %if.end31
  %call39 = call i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call32) #5
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %if.then85, label %if.end43

if.end43:                                         ; preds = %if.end37
  %call44 = call i32 @ossl_cms_env_asn1_ctrl(%struct.CMS_RecipientInfo_st* noundef nonnull %ri, i32 noundef 1) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then85, label %if.end47

if.end47:                                         ; preds = %if.end43
  %12 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !44
  %encryptedKey = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %0, i64 0, i32 3
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encryptedKey, align 8, !tbaa !68
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 2
  %14 = load i8*, i8** %data, align 8, !tbaa !49
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 0
  %15 = load i32, i32* %length, align 8, !tbaa !50
  %conv50 = sext i32 %15 to i64
  %call51 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef %12, i8* noundef null, i64* noundef nonnull %eklen, i8* noundef %14, i64 noundef %conv50) #5
  %cmp52 = icmp slt i32 %call51, 1
  br i1 %cmp52, label %if.then85, label %if.end55

if.end55:                                         ; preds = %if.end47
  %16 = load i64, i64* %eklen, align 8, !tbaa !69
  %call56 = call i8* @CRYPTO_malloc(i64 noundef %16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 579) #5
  %cmp57 = icmp eq i8* %call56, null
  br i1 %cmp57, label %if.then85.sink.split, label %if.end60

if.end60:                                         ; preds = %if.end55
  %17 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !44
  %18 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encryptedKey, align 8, !tbaa !68
  %data63 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %18, i64 0, i32 2
  %19 = load i8*, i8** %data63, align 8, !tbaa !49
  %length65 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %18, i64 0, i32 0
  %20 = load i32, i32* %length65, align 8, !tbaa !50
  %conv66 = sext i32 %20 to i64
  %call67 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef %17, i8* noundef nonnull %call56, i64* noundef nonnull %eklen, i8* noundef %19, i64 noundef %conv66) #5
  %cmp68 = icmp slt i32 %call67, 1
  %21 = load i64, i64* %eklen, align 8
  %cmp70 = icmp eq i64 %21, 0
  %or.cond = select i1 %cmp68, i1 true, i1 %cmp70
  br i1 %or.cond, label %if.then85.sink.split, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.end60
  %cmp73.not = icmp eq i64 %fixlen.1, 0
  %cmp76.not = icmp eq i64 %21, %fixlen.1
  %or.cond143 = select i1 %cmp73.not, i1 true, i1 %cmp76.not
  br i1 %or.cond143, label %err, label %if.then85.sink.split

err:                                              ; preds = %lor.lhs.false72
  %key = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call5, i64 0, i32 4
  %22 = load i8*, i8** %key, align 8, !tbaa !70
  %keylen = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call5, i64 0, i32 5
  %23 = load i64, i64* %keylen, align 8, !tbaa !71
  call void @CRYPTO_clear_free(i8* noundef %22, i64 noundef %23, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 596) #5
  store i8* %call56, i8** %key, align 8, !tbaa !70
  %24 = load i64, i64* %eklen, align 8, !tbaa !69
  store i64 %24, i64* %keylen, align 8, !tbaa !71
  %25 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !44
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %25) #5
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !44
  br label %cleanup87

if.then85.sink.split:                             ; preds = %if.end60, %lor.lhs.false72, %if.end55
  %.sink156 = phi i32 [ 581, %if.end55 ], [ 590, %lor.lhs.false72 ], [ 590, %if.end60 ]
  %.sink = phi i32 [ 786688, %if.end55 ], [ 104, %lor.lhs.false72 ], [ 104, %if.end60 ]
  %ek.0.ph.ph = phi i8* [ null, %if.end55 ], [ %call56, %lor.lhs.false72 ], [ %call56, %if.end60 ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink156, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.cms_RecipientInfo_ktri_decrypt, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef %.sink, i8* noundef null) #5
  br label %if.then85

if.then85:                                        ; preds = %if.then85.sink.split, %if.end47, %if.end43, %if.end37, %if.end31
  %ek.0.ph = phi i8* [ null, %if.end31 ], [ null, %if.end37 ], [ null, %if.end43 ], [ null, %if.end47 ], [ %ek.0.ph.ph, %if.then85.sink.split ]
  %26 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !44
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %26) #5
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !44
  call void @CRYPTO_free(i8* noundef %ek.0.ph, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 604) #5
  br label %cleanup87

cleanup87:                                        ; preds = %err, %cleanup.thread, %if.then85, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then85 ], [ 1, %err ], [ 0, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_RecipientInfo_kekri_decrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri) unnamed_addr #0 {
entry:
  %ukeylen = alloca i32, align 4
  %outlen = alloca i32, align 4
  %0 = bitcast i32* %ukeylen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %1 = bitcast i32* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 0, i32* %outlen, align 4, !tbaa !72
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #5
  %call1 = tail call %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.CMS_EncryptedContentInfo_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kekri2 = bitcast %union.anon.1* %d to %struct.CMS_KEKRecipientInfo_st**
  %2 = load %struct.CMS_KEKRecipientInfo_st*, %struct.CMS_KEKRecipientInfo_st** %kekri2, align 8, !tbaa !10
  %key = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %2, i64 0, i32 4
  %3 = load i8*, i8** %key, align 8, !tbaa !56
  %tobool.not = icmp eq i8* %3, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 909, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.cms_RecipientInfo_kekri_decrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 130, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %keyEncryptionAlgorithm = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %2, i64 0, i32 2
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyEncryptionAlgorithm, align 8, !tbaa !62
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %4, i64 0, i32 0
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !66
  %call5 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %5) #5
  %call6 = tail call fastcc i64 @aes_wrap_keylen(i32 noundef %call5) #6
  %keylen = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %2, i64 0, i32 5
  %6 = load i64, i64* %keylen, align 8, !tbaa !57
  %cmp7.not = icmp eq i64 %call6, %6
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end4
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 915, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.cms_RecipientInfo_kekri_decrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 118, i8* noundef null) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %encryptedKey = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %2, i64 0, i32 3
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encryptedKey, align 8, !tbaa !73
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 0
  %8 = load i32, i32* %length, align 8, !tbaa !50
  %cmp10 = icmp slt i32 %8, 16
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 922, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.cms_RecipientInfo_kekri_decrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 117, i8* noundef null) #5
  br label %if.then49

if.end12:                                         ; preds = %if.end9
  %call14 = tail call fastcc %struct.evp_cipher_st* @cms_get_key_wrap_cipher(i64 noundef %call6, %struct.CMS_CTX_st* noundef %call) #6
  %cmp15 = icmp eq %struct.evp_cipher_st* %call14, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 928, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.cms_RecipientInfo_kekri_decrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 118, i8* noundef null) #5
  br label %if.then49

if.end17:                                         ; preds = %if.end12
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encryptedKey, align 8, !tbaa !73
  %length19 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 0
  %10 = load i32, i32* %length19, align 8, !tbaa !50
  %sub = add nsw i32 %10, -8
  %conv = sext i32 %sub to i64
  %call20 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 932) #5
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end17
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 934, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.cms_RecipientInfo_kekri_decrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %if.then49

if.end24:                                         ; preds = %if.end17
  %call25 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #5
  %cmp26 = icmp eq %struct.evp_cipher_ctx_st* %call25, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 940, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.cms_RecipientInfo_kekri_decrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %if.then49

if.end29:                                         ; preds = %if.end24
  %11 = load i8*, i8** %key, align 8, !tbaa !56
  %call31 = tail call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call25, %struct.evp_cipher_st* noundef nonnull %call14, %struct.engine_st* noundef null, i8* noundef %11, i8* noundef null) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end29
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encryptedKey, align 8, !tbaa !73
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %12, i64 0, i32 2
  %13 = load i8*, i8** %data, align 8, !tbaa !49
  %length35 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %12, i64 0, i32 0
  %14 = load i32, i32* %length35, align 8, !tbaa !50
  %call36 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %call25, i8* noundef nonnull %call20, i32* noundef nonnull %ukeylen, i8* noundef %13, i32 noundef %14) #5
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then41, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false
  %15 = load i32, i32* %ukeylen, align 4, !tbaa !72
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call20, i64 %idx.ext
  %call39 = call i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call25, i8* noundef nonnull %add.ptr, i32* noundef nonnull %outlen) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %err

if.then41:                                        ; preds = %lor.lhs.false38, %lor.lhs.false, %if.end29
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 949, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.cms_RecipientInfo_kekri_decrypt, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 157, i8* noundef null) #5
  br label %if.then49

err:                                              ; preds = %lor.lhs.false38
  %16 = load i32, i32* %outlen, align 4, !tbaa !72
  %17 = load i32, i32* %ukeylen, align 4, !tbaa !72
  %add = add nsw i32 %17, %16
  store i32 %add, i32* %ukeylen, align 4, !tbaa !72
  %key43 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call1, i64 0, i32 4
  %18 = load i8*, i8** %key43, align 8, !tbaa !70
  %keylen44 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call1, i64 0, i32 5
  %19 = load i64, i64* %keylen44, align 8, !tbaa !71
  call void @CRYPTO_clear_free(i8* noundef %18, i64 noundef %19, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 954) #5
  store i8* %call20, i8** %key43, align 8, !tbaa !70
  %20 = load i32, i32* %ukeylen, align 4, !tbaa !72
  %conv46 = sext i32 %20 to i64
  store i64 %conv46, i64* %keylen44, align 8, !tbaa !71
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %call14) #5
  br label %if.end50

if.then49:                                        ; preds = %if.then41, %if.then28, %if.then23, %if.then16, %if.then11
  %ukey.0.ph = phi i8* [ null, %if.then11 ], [ null, %if.then16 ], [ null, %if.then23 ], [ %call20, %if.then28 ], [ %call20, %if.then41 ]
  %cipher.0.ph = phi %struct.evp_cipher_st* [ null, %if.then11 ], [ null, %if.then16 ], [ %call14, %if.then23 ], [ %call14, %if.then28 ], [ %call14, %if.then41 ]
  %ctx.0.ph = phi %struct.evp_cipher_ctx_st* [ null, %if.then11 ], [ null, %if.then16 ], [ null, %if.then23 ], [ null, %if.then28 ], [ %call25, %if.then41 ]
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %cipher.0.ph) #5
  call void @CRYPTO_free(i8* noundef %ukey.0.ph, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 963) #5
  br label %if.end50

if.end50:                                         ; preds = %err, %if.then49
  %ctx.0100 = phi %struct.evp_cipher_ctx_st* [ %ctx.0.ph, %if.then49 ], [ %call25, %err ]
  %r.097 = phi i32 [ 0, %if.then49 ], [ 1, %err ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.0100) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end50, %if.then8, %if.then3
  %retval.0 = phi i32 [ 0, %if.then8 ], [ %r.097, %if.end50 ], [ 0, %if.then3 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @ossl_cms_RecipientInfo_pwri_crypt(%struct.CMS_ContentInfo_st* noundef, %struct.CMS_RecipientInfo_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_encrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef %ri) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !11
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @cms_RecipientInfo_ktri_encrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef nonnull %ri) #6
  br label %return

sw.bb1:                                           ; preds = %entry
  %call2 = tail call i32 @ossl_cms_RecipientInfo_kari_encrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef nonnull %ri) #5
  br label %return

sw.bb3:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @cms_RecipientInfo_kekri_encrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef nonnull %ri) #6
  br label %return

sw.bb5:                                           ; preds = %entry
  %call6 = tail call i32 @ossl_cms_RecipientInfo_pwri_crypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef nonnull %ri, i32 noundef 1) #5
  br label %return

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1003, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.CMS_RecipientInfo_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 154, i8* noundef null) #5
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_RecipientInfo_ktri_encrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef %ri) unnamed_addr #0 {
entry:
  %eklen = alloca i64, align 8
  %0 = bitcast i64* %eklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #5
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !11
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 467, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.cms_RecipientInfo_ktri_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 124, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %ktri1 = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1, i32 0
  %2 = load %struct.CMS_KeyTransRecipientInfo_st*, %struct.CMS_KeyTransRecipientInfo_st** %ktri1, align 8, !tbaa !10
  %call2 = tail call %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %pctx3 = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %2, i64 0, i32 6
  %3 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx3, align 8, !tbaa !44
  %tobool.not = icmp eq %struct.evp_pkey_ctx_st* %3, null
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @ossl_cms_env_asn1_ctrl(%struct.CMS_RecipientInfo_st* noundef nonnull %ri, i32 noundef 0) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %if.end19

if.else:                                          ; preds = %if.end
  %call9 = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %call) #5
  %pkey = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %2, i64 0, i32 5
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !14
  %call10 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %call) #5
  %call11 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %call9, %struct.evp_pkey_st* noundef %4, i8* noundef %call10) #5
  %cmp12 = icmp eq %struct.evp_pkey_ctx_st* %call11, null
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.else
  %call15 = tail call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call11) #5
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %err, label %if.end19

if.end19:                                         ; preds = %if.end14, %if.then4
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ %3, %if.then4 ], [ %call11, %if.end14 ]
  %key = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call2, i64 0, i32 4
  %5 = load i8*, i8** %key, align 8, !tbaa !70
  %keylen = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call2, i64 0, i32 5
  %6 = load i64, i64* %keylen, align 8, !tbaa !71
  %call20 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef nonnull %pctx.0, i8* noundef null, i64* noundef nonnull %eklen, i8* noundef %5, i64 noundef %6) #5
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %err, label %if.end23

if.end23:                                         ; preds = %if.end19
  %7 = load i64, i64* %eklen, align 8, !tbaa !69
  %call24 = call i8* @CRYPTO_malloc(i64 noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 492) #5
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 495, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.cms_RecipientInfo_ktri_encrypt, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end27:                                         ; preds = %if.end23
  %8 = load i8*, i8** %key, align 8, !tbaa !70
  %9 = load i64, i64* %keylen, align 8, !tbaa !71
  %call30 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef nonnull %pctx.0, i8* noundef nonnull %call24, i64* noundef nonnull %eklen, i8* noundef %8, i64 noundef %9) #5
  %cmp31 = icmp slt i32 %call30, 1
  br i1 %cmp31, label %err, label %if.end33

if.end33:                                         ; preds = %if.end27
  %encryptedKey = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %2, i64 0, i32 3
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encryptedKey, align 8, !tbaa !68
  %11 = load i64, i64* %eklen, align 8, !tbaa !69
  %conv = trunc i64 %11 to i32
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %10, i8* noundef nonnull %call24, i32 noundef %conv) #5
  br label %err

err:                                              ; preds = %if.end27, %if.end19, %if.end14, %if.then4, %if.end33, %if.then26
  %pctx.1 = phi %struct.evp_pkey_ctx_st* [ %pctx.0, %if.end19 ], [ %pctx.0, %if.then26 ], [ %pctx.0, %if.end27 ], [ %pctx.0, %if.end33 ], [ %3, %if.then4 ], [ %call11, %if.end14 ]
  %ek.0 = phi i8* [ null, %if.end19 ], [ null, %if.then26 ], [ %call24, %if.end27 ], [ null, %if.end33 ], [ null, %if.then4 ], [ null, %if.end14 ]
  %ret.0 = phi i32 [ 0, %if.end19 ], [ 0, %if.then26 ], [ 0, %if.end27 ], [ 1, %if.end33 ], [ 0, %if.then4 ], [ 0, %if.end14 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %pctx.1) #5
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx3, align 8, !tbaa !44
  call void @CRYPTO_free(i8* noundef %ek.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 510) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @ossl_cms_RecipientInfo_kari_encrypt(%struct.CMS_ContentInfo_st* noundef, %struct.CMS_RecipientInfo_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_RecipientInfo_kekri_encrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri) unnamed_addr #0 {
entry:
  %wkeylen = alloca i32, align 4
  %outlen = alloca i32, align 4
  %0 = bitcast i32* %wkeylen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %1 = bitcast i32* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 0, i32* %outlen, align 4, !tbaa !72
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #5
  %call1 = tail call %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.CMS_EncryptedContentInfo_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kekri2 = bitcast %union.anon.1* %d to %struct.CMS_KEKRecipientInfo_st**
  %2 = load %struct.CMS_KEKRecipientInfo_st*, %struct.CMS_KEKRecipientInfo_st** %kekri2, align 8, !tbaa !10
  %key = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %2, i64 0, i32 4
  %3 = load i8*, i8** %key, align 8, !tbaa !56
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 838, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.cms_RecipientInfo_kekri_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 130, i8* noundef null) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %keylen = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %2, i64 0, i32 5
  %4 = load i64, i64* %keylen, align 8, !tbaa !57
  %call6 = tail call fastcc %struct.evp_cipher_st* @cms_get_key_wrap_cipher(i64 noundef %4, %struct.CMS_CTX_st* noundef %call) #6
  %cmp7 = icmp eq %struct.evp_cipher_st* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 844, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.cms_RecipientInfo_kekri_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 118, i8* noundef null) #5
  br label %if.then41

if.end9:                                          ; preds = %if.end5
  %keylen10 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call1, i64 0, i32 5
  %5 = load i64, i64* %keylen10, align 8, !tbaa !71
  %add = add i64 %5, 8
  %call11 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 849) #5
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 851, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.cms_RecipientInfo_kekri_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %if.then41

if.end14:                                         ; preds = %if.end9
  %call15 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #5
  %cmp16 = icmp eq %struct.evp_cipher_ctx_st* %call15, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 857, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.cms_RecipientInfo_kekri_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %if.then41

if.end18:                                         ; preds = %if.end14
  tail call void @EVP_CIPHER_CTX_set_flags(%struct.evp_cipher_ctx_st* noundef nonnull %call15, i32 noundef 1) #5
  %6 = load i8*, i8** %key, align 8, !tbaa !56
  %call20 = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call15, %struct.evp_cipher_st* noundef nonnull %call6, %struct.engine_st* noundef null, i8* noundef %6, i8* noundef null) #5
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %key21 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call1, i64 0, i32 4
  %7 = load i8*, i8** %key21, align 8, !tbaa !70
  %8 = load i64, i64* %keylen10, align 8, !tbaa !71
  %conv = trunc i64 %8 to i32
  %call23 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %call15, i8* noundef nonnull %call11, i32* noundef nonnull %wkeylen, i8* noundef %7, i32 noundef %conv) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then28, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %9 = load i32, i32* %wkeylen, align 4, !tbaa !72
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call11, i64 %idx.ext
  %call26 = call i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call15, i8* noundef nonnull %add.ptr, i32* noundef nonnull %outlen) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %lor.lhs.false25, %lor.lhs.false, %if.end18
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 865, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.cms_RecipientInfo_kekri_encrypt, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 159, i8* noundef null) #5
  br label %if.then41

if.end29:                                         ; preds = %lor.lhs.false25
  %10 = load i32, i32* %outlen, align 4, !tbaa !72
  %11 = load i32, i32* %wkeylen, align 4, !tbaa !72
  %add30 = add nsw i32 %11, %10
  store i32 %add30, i32* %wkeylen, align 4, !tbaa !72
  %conv31 = sext i32 %add30 to i64
  %12 = load i64, i64* %keylen10, align 8, !tbaa !71
  %add33 = add i64 %12, 8
  %cmp34 = icmp eq i64 %add33, %conv31
  br i1 %cmp34, label %err, label %if.then38

if.then38:                                        ; preds = %if.end29
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 870, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.cms_RecipientInfo_kekri_encrypt, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 159, i8* noundef null) #5
  br label %if.then41

err:                                              ; preds = %if.end29
  %encryptedKey = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %2, i64 0, i32 3
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encryptedKey, align 8, !tbaa !73
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %13, i8* noundef nonnull %call11, i32 noundef %add30) #5
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %call6) #5
  br label %if.end42

if.then41:                                        ; preds = %if.then8, %if.then13, %if.then17, %if.then38, %if.then28
  %wkey.0.ph = phi i8* [ %call11, %if.then28 ], [ %call11, %if.then38 ], [ %call11, %if.then17 ], [ null, %if.then13 ], [ null, %if.then8 ]
  %ctx.0.ph = phi %struct.evp_cipher_ctx_st* [ %call15, %if.then28 ], [ %call15, %if.then38 ], [ null, %if.then17 ], [ null, %if.then13 ], [ null, %if.then8 ]
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call6) #5
  call void @CRYPTO_free(i8* noundef %wkey.0.ph, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 881) #5
  br label %if.end42

if.end42:                                         ; preds = %err, %if.then41
  %ctx.085 = phi %struct.evp_cipher_ctx_st* [ %ctx.0.ph, %if.then41 ], [ %call15, %err ]
  %r.083 = phi i32 [ 0, %if.then41 ], [ 1, %err ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.085) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end42, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %r.083, %if.end42 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @ossl_cms_EnvelopedData_init_bio(%struct.CMS_ContentInfo_st* noundef %cms) local_unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %envelopedData = bitcast %union.anon.0* %d to %struct.CMS_EnvelopedData_st**
  %0 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !10
  %encryptedContentInfo = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %0, i64 0, i32 3
  %1 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %encryptedContentInfo, align 8, !tbaa !35
  %cipher = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %1, i64 0, i32 3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !74
  %cmp.not = icmp eq %struct.evp_cipher_st* %2, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.bio_st* @cms_EnvelopedData_Encryption_init_bio(%struct.CMS_ContentInfo_st* noundef nonnull %cms) #6
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.bio_st* @cms_EnvelopedData_Decryption_init_bio(%struct.CMS_ContentInfo_st* noundef nonnull %cms) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bio_st* [ %call, %if.then ], [ %call1, %if.end ]
  ret %struct.bio_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_st* @cms_EnvelopedData_Encryption_init_bio(%struct.CMS_ContentInfo_st* noundef %cms) unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %envelopedData = bitcast %union.anon.0* %d to %struct.CMS_EnvelopedData_st**
  %0 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !10
  %encryptedContentInfo = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %0, i64 0, i32 3
  %1 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %encryptedContentInfo, align 8, !tbaa !35
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #5
  %call1 = tail call %struct.bio_st* @ossl_cms_EncryptedContent_init_bio(%struct.CMS_EncryptedContentInfo_st* noundef %1, %struct.CMS_CTX_st* noundef %call) #5
  %tobool.not = icmp eq %struct.bio_st* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %recipientInfos = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %0, i64 0, i32 2
  %2 = load %struct.stack_st_CMS_RecipientInfo*, %struct.stack_st_CMS_RecipientInfo** %recipientInfos, align 8, !tbaa !75
  %call2 = tail call fastcc i32 @cms_env_encrypt_content_key(%struct.CMS_ContentInfo_st* noundef nonnull %cms, %struct.stack_st_CMS_RecipientInfo* noundef %2) #6
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end7, label %err

err:                                              ; preds = %if.end
  tail call fastcc void @cms_env_set_version(%struct.CMS_EnvelopedData_st* noundef nonnull %0) #6
  tail call fastcc void @cms_env_clear_ec(%struct.CMS_EncryptedContentInfo_st* noundef %1) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1142, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.cms_EnvelopedData_Encryption_init_bio, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 116, i8* noundef null) #5
  tail call fastcc void @cms_env_clear_ec(%struct.CMS_EncryptedContentInfo_st* noundef %1) #6
  %call8 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %entry, %if.end7
  %retval.0 = phi %struct.bio_st* [ null, %if.end7 ], [ null, %entry ], [ %call1, %err ]
  ret %struct.bio_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_st* @cms_EnvelopedData_Decryption_init_bio(%struct.CMS_ContentInfo_st* noundef %cms) unnamed_addr #0 {
entry:
  %ctx = alloca %struct.evp_cipher_ctx_st*, align 8
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %envelopedData = bitcast %union.anon.0* %d to %struct.CMS_EnvelopedData_st**
  %0 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !10
  %encryptedContentInfo = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %0, i64 0, i32 3
  %1 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %encryptedContentInfo, align 8, !tbaa !35
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #5
  %call1 = tail call %struct.bio_st* @ossl_cms_EncryptedContent_init_bio(%struct.CMS_EncryptedContentInfo_st* noundef %1, %struct.CMS_CTX_st* noundef %call) #5
  %2 = bitcast %struct.evp_cipher_ctx_st** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store %struct.evp_cipher_ctx_st* null, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !25
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 129, i64 noundef 0, i8* noundef nonnull %2) #5
  %3 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !25
  %cmp3 = icmp eq %struct.evp_cipher_ctx_st* %3, null
  br i1 %cmp3, label %cleanup.sink.split, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %3) #5
  %call8 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call7) #5
  %and = and i64 %call8, 33554432
  %cmp9.not = icmp eq i64 %and, 0
  br i1 %cmp9.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %4 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !25
  %5 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !10
  %unprotectedAttrs = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %5, i64 0, i32 4
  %6 = bitcast %struct.stack_st_X509_ATTRIBUTE** %unprotectedAttrs to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !76
  %call12 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %4, i32 noundef 40, i32 noundef 0, i8* noundef %7) #5
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true, %if.end
  %call15 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6, %land.lhs.true, %entry
  %retval.0 = phi %struct.bio_st* [ null, %entry ], [ %call1, %land.lhs.true ], [ %call1, %if.end6 ], [ null, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  ret %struct.bio_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @ossl_cms_AuthEnvelopedData_init_bio(%struct.CMS_ContentInfo_st* noundef %cms) local_unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %authEnvelopedData = bitcast %union.anon.0* %d to %struct.CMS_AuthEnvelopedData_st**
  %0 = load %struct.CMS_AuthEnvelopedData_st*, %struct.CMS_AuthEnvelopedData_st** %authEnvelopedData, align 8, !tbaa !10
  %authEncryptedContentInfo = getelementptr inbounds %struct.CMS_AuthEnvelopedData_st, %struct.CMS_AuthEnvelopedData_st* %0, i64 0, i32 3
  %1 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %authEncryptedContentInfo, align 8, !tbaa !40
  %cipher = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %1, i64 0, i32 3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !74
  %cmp = icmp eq %struct.evp_cipher_st* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mac = getelementptr inbounds %struct.CMS_AuthEnvelopedData_st, %struct.CMS_AuthEnvelopedData_st* %0, i64 0, i32 5
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %mac, align 8, !tbaa !77
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !49
  %tag = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %1, i64 0, i32 6
  store i8* %4, i8** %tag, align 8, !tbaa !78
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 0
  %5 = load i32, i32* %length, align 8, !tbaa !50
  %conv = sext i32 %5 to i64
  %taglen = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %1, i64 0, i32 7
  store i64 %conv, i64* %taglen, align 8, !tbaa !79
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef nonnull %cms) #5
  %call2 = tail call %struct.bio_st* @ossl_cms_EncryptedContent_init_bio(%struct.CMS_EncryptedContentInfo_st* noundef nonnull %1, %struct.CMS_CTX_st* noundef %call) #5
  %cmp3 = icmp eq %struct.bio_st* %call2, null
  br i1 %cmp3, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !74
  %cmp6 = icmp eq %struct.evp_cipher_st* %6, null
  br i1 %cmp6, label %cleanup, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false
  %recipientInfos = getelementptr inbounds %struct.CMS_AuthEnvelopedData_st, %struct.CMS_AuthEnvelopedData_st* %0, i64 0, i32 2
  %7 = load %struct.stack_st_CMS_RecipientInfo*, %struct.stack_st_CMS_RecipientInfo** %recipientInfos, align 8, !tbaa !80
  %call10 = tail call fastcc i32 @cms_env_encrypt_content_key(%struct.CMS_ContentInfo_st* noundef nonnull %cms, %struct.stack_st_CMS_RecipientInfo* noundef %7) #6
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end16, label %err

err:                                              ; preds = %if.end9
  %version = getelementptr inbounds %struct.CMS_AuthEnvelopedData_st, %struct.CMS_AuthEnvelopedData_st* %0, i64 0, i32 0
  store i32 0, i32* %version, align 8, !tbaa !42
  tail call fastcc void @cms_env_clear_ec(%struct.CMS_EncryptedContentInfo_st* noundef nonnull %1) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1194, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.ossl_cms_AuthEnvelopedData_init_bio, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 116, i8* noundef null) #5
  tail call fastcc void @cms_env_clear_ec(%struct.CMS_EncryptedContentInfo_st* noundef nonnull %1) #6
  %call17 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end, %lor.lhs.false, %if.end16
  %retval.0 = phi %struct.bio_st* [ null, %if.end16 ], [ %call2, %lor.lhs.false ], [ null, %if.end ], [ %call2, %err ]
  ret %struct.bio_st* %retval.0
}

declare %struct.bio_st* @ossl_cms_EncryptedContent_init_bio(%struct.CMS_EncryptedContentInfo_st* noundef, %struct.CMS_CTX_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_env_encrypt_content_key(%struct.CMS_ContentInfo_st* noundef %cms, %struct.stack_st_CMS_RecipientInfo* noundef %ris) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef %ris) #6
  %call112 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp13 = icmp sgt i32 %call112, 0
  br i1 %cmp13, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !81

for.body:                                         ; preds = %entry, %for.cond
  %i.014 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.014) #5
  %0 = bitcast i8* %call3 to %struct.CMS_RecipientInfo_st*
  %call4 = tail call i32 @CMS_RecipientInfo_encrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef %0) #6
  %cmp5 = icmp slt i32 %call4, 1
  %inc = add nuw nsw i32 %i.014, 1
  br i1 %cmp5, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %for.cond ], [ -1, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cms_env_clear_ec(%struct.CMS_EncryptedContentInfo_st* nocapture noundef %ec) unnamed_addr #0 {
entry:
  %cipher = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 3
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !74
  %key = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 4
  %0 = load i8*, i8** %key, align 8, !tbaa !70
  %keylen = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 5
  %1 = load i64, i64* %keylen, align 8, !tbaa !71
  tail call void @CRYPTO_clear_free(i8* noundef %0, i64 noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1088) #5
  store i8* null, i8** %key, align 8, !tbaa !70
  store i64 0, i64* %keylen, align 8, !tbaa !71
  ret void
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_EnvelopedData_final(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms, %struct.bio_st* noundef %chain) local_unnamed_addr #0 {
entry:
  %ctx = alloca %struct.evp_cipher_ctx_st*, align 8
  %0 = bitcast %struct.evp_cipher_ctx_st** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.evp_cipher_ctx_st* null, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !25
  %call = tail call %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef %chain, i32 noundef 522) #5
  %call1 = tail call %struct.CMS_EnvelopedData_st* @ossl_cms_get0_enveloped(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.CMS_EnvelopedData_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.bio_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1222, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_cms_EnvelopedData_final, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 105, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 129, i64 noundef 0, i8* noundef nonnull %0) #5
  %1 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !25
  %call6 = call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %1) #5
  %call7 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call6) #5
  %and = and i64 %call7, 33554432
  %cmp8.not = icmp eq i64 %and, 0
  br i1 %cmp8.not, label %if.end24, label %if.then9

if.then9:                                         ; preds = %if.end4
  %unprotectedAttrs = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %call1, i64 0, i32 4
  %2 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %unprotectedAttrs, align 8, !tbaa !76
  %cmp10 = icmp eq %struct.stack_st_X509_ATTRIBUTE* %2, null
  br i1 %cmp10, label %if.end14, label %if.end18

if.end14:                                         ; preds = %if.then9
  %call12 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %3 = bitcast %struct.stack_st_X509_ATTRIBUTE** %unprotectedAttrs to %struct.stack_st**
  store %struct.stack_st* %call12, %struct.stack_st** %3, align 8, !tbaa !76
  %4 = bitcast %struct.stack_st* %call12 to %struct.stack_st_X509_ATTRIBUTE*
  %cmp16 = icmp eq %struct.stack_st* %call12, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1238, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_cms_EnvelopedData_final, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end18:                                         ; preds = %if.then9, %if.end14
  %5 = phi %struct.stack_st_X509_ATTRIBUTE* [ %4, %if.end14 ], [ %2, %if.then9 ]
  %6 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !25
  %7 = bitcast %struct.stack_st_X509_ATTRIBUTE* %5 to i8*
  %call20 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %6, i32 noundef 40, i32 noundef 1, i8* noundef nonnull %7) #5
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1244, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_cms_EnvelopedData_final, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 111, i8* noundef null) #5
  br label %cleanup

if.end24:                                         ; preds = %if.end18, %if.end4
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %envelopedData = bitcast %union.anon.0* %d to %struct.CMS_EnvelopedData_st**
  %8 = load %struct.CMS_EnvelopedData_st*, %struct.CMS_EnvelopedData_st** %envelopedData, align 8, !tbaa !10
  call fastcc void @cms_env_set_version(%struct.CMS_EnvelopedData_st* noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end24, %if.then22, %if.then17, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then17 ], [ 0, %if.then22 ], [ 1, %if.end24 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cms_env_set_version(%struct.CMS_EnvelopedData_st* nocapture noundef %env) unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %env, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !37
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @cms_env_set_originfo_version(%struct.CMS_EnvelopedData_st* noundef nonnull %env) #6
  %1 = load i32, i32* %version, align 8, !tbaa !37
  %cmp2 = icmp sgt i32 %1, 2
  br i1 %cmp2, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %recipientInfos = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %env, i64 0, i32 2
  %2 = load %struct.stack_st_CMS_RecipientInfo*, %struct.stack_st_CMS_RecipientInfo** %recipientInfos, align 8, !tbaa !75
  %call54 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef %2) #6
  %call555 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call54) #5
  %cmp656 = icmp sgt i32 %call555, 0
  br i1 %cmp656, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.057 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %3 = load %struct.stack_st_CMS_RecipientInfo*, %struct.stack_st_CMS_RecipientInfo** %recipientInfos, align 8, !tbaa !75
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef %3) #6
  %call9 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef %i.057) #5
  %type = bitcast i8* %call9 to i32*
  %4 = load i32, i32* %type, align 8, !tbaa !11
  switch i32 %4, label %if.then20 [
    i32 3, label %cleanup.sink.split
    i32 4, label %cleanup.sink.split
    i32 0, label %lor.lhs.false17
  ]

lor.lhs.false17:                                  ; preds = %for.body
  %d = getelementptr inbounds i8, i8* %call9, i64 8
  %ktri = bitcast i8* %d to %struct.CMS_KeyTransRecipientInfo_st**
  %5 = load %struct.CMS_KeyTransRecipientInfo_st*, %struct.CMS_KeyTransRecipientInfo_st** %ktri, align 8, !tbaa !10
  %version18 = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %5, i64 0, i32 0
  %6 = load i32, i32* %version18, align 8, !tbaa !82
  %cmp19.not = icmp eq i32 %6, 0
  br i1 %cmp19.not, label %for.inc, label %if.then20

if.then20:                                        ; preds = %for.body, %lor.lhs.false17
  store i32 2, i32* %version, align 8, !tbaa !37
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %lor.lhs.false17
  %inc = add nuw nsw i32 %i.057, 1
  %7 = load %struct.stack_st_CMS_RecipientInfo*, %struct.stack_st_CMS_RecipientInfo** %recipientInfos, align 8, !tbaa !75
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef %7) #6
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp6 = icmp slt i32 %inc, %call5
  br i1 %cmp6, label %for.body, label %for.end, !llvm.loop !83

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %originatorInfo = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %env, i64 0, i32 1
  %8 = load %struct.CMS_OriginatorInfo_st*, %struct.CMS_OriginatorInfo_st** %originatorInfo, align 8, !tbaa !84
  %tobool.not = icmp eq %struct.CMS_OriginatorInfo_st* %8, null
  br i1 %tobool.not, label %lor.lhs.false24, label %cleanup.sink.split

lor.lhs.false24:                                  ; preds = %for.end
  %unprotectedAttrs = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %env, i64 0, i32 4
  %9 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %unprotectedAttrs, align 8, !tbaa !76
  %tobool25.not = icmp eq %struct.stack_st_X509_ATTRIBUTE* %9, null
  br i1 %tobool25.not, label %if.end28, label %cleanup.sink.split

if.end28:                                         ; preds = %lor.lhs.false24
  %.pr = load i32, i32* %version, align 8, !tbaa !37
  %cmp30 = icmp eq i32 %.pr, 2
  br i1 %cmp30, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body, %for.body, %if.end28, %lor.lhs.false24, %for.end
  %.sink = phi i32 [ 2, %for.end ], [ 2, %lor.lhs.false24 ], [ 0, %if.end28 ], [ 3, %for.body ], [ 3, %for.body ]
  store i32 %.sink, i32* %version, align 8, !tbaa !37
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end28, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_AuthEnvelopedData_final(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms, %struct.bio_st* noundef %cmsbio) local_unnamed_addr #0 {
entry:
  %ctx = alloca %struct.evp_cipher_ctx_st*, align 8
  %0 = bitcast %struct.evp_cipher_ctx_st** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %cmsbio, i32 noundef 129, i64 noundef 0, i8* noundef nonnull %0) #5
  %1 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !25
  %call1 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %1) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !25
  %call2 = call i32 @EVP_CIPHER_CTX_get_tag_length(%struct.evp_cipher_ctx_st* noundef %2) #5
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %conv27 = zext i32 %call2 to i64
  %call3 = call i8* @CRYPTO_malloc(i64 noundef %conv27, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1270) #5
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %3 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !25
  %call7 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %3, i32 noundef 16, i32 noundef %call2, i8* noundef nonnull %call3) #5
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end
  %tag.0 = phi i8* [ null, %if.end ], [ null, %lor.lhs.false ], [ %call3, %lor.lhs.false6 ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1273, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_cms_AuthEnvelopedData_final, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 185, i8* noundef null) #5
  br label %err

if.end11:                                         ; preds = %lor.lhs.false6
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %authEnvelopedData = bitcast %union.anon.0* %d to %struct.CMS_AuthEnvelopedData_st**
  %4 = load %struct.CMS_AuthEnvelopedData_st*, %struct.CMS_AuthEnvelopedData_st** %authEnvelopedData, align 8, !tbaa !10
  %mac = getelementptr inbounds %struct.CMS_AuthEnvelopedData_st, %struct.CMS_AuthEnvelopedData_st* %4, i64 0, i32 5
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %mac, align 8, !tbaa !77
  %call12 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %5, i8* noundef nonnull %call3, i32 noundef %call2) #5
  %tobool13.not = icmp ne i32 %call12, 0
  %spec.select = zext i1 %tobool13.not to i32
  br label %err

err:                                              ; preds = %if.end11, %if.then10
  %tag.1 = phi i8* [ %tag.0, %if.then10 ], [ %call3, %if.end11 ]
  %ok.0 = phi i32 [ 0, %if.then10 ], [ %spec.select, %if.end11 ]
  call void @CRYPTO_free(i8* noundef %tag.1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1282) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ok.0, %err ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_get_tag_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_pkey_is_ri_type_supported(%struct.evp_pkey_st* noundef %pk, i32 noundef %ri_type) local_unnamed_addr #0 {
entry:
  %r = alloca i32, align 4
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !18
  %cmp.not = icmp eq %struct.evp_pkey_asn1_method_st* %0, null
  br i1 %cmp.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %pkey_ctrl = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 23
  %1 = load i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)** %pkey_ctrl, align 8, !tbaa !23
  %cmp2.not = icmp eq i32 (%struct.evp_pkey_st*, i32, i64, i8*)* %1, null
  br i1 %cmp2.not, label %if.end9, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  %conv = sext i32 %ri_type to i64
  %call = call i32 %1(%struct.evp_pkey_st* noundef nonnull %pk, i32 noundef 11, i64 noundef %conv, i8* noundef nonnull %2) #5
  %cmp5 = icmp sgt i32 %call, 0
  %3 = load i32, i32* %r, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  br i1 %cmp5, label %cleanup17, label %if.end9

if.end9:                                          ; preds = %if.then, %land.lhs.true, %entry
  %call10 = call i32 @ossl_cms_pkey_get_ri_type(%struct.evp_pkey_st* noundef nonnull %pk) #6
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %cleanup17, label %if.end14

if.end14:                                         ; preds = %if.end9
  %cmp15 = icmp eq i32 %call10, %ri_type
  %conv16 = zext i1 %cmp15 to i32
  br label %cleanup17

cleanup17:                                        ; preds = %if.end9, %if.then, %if.end14
  %retval.1 = phi i32 [ %conv16, %if.end14 ], [ %3, %if.then ], [ 0, %if.end9 ]
  ret i32 %retval.1
}

declare %struct.ASN1_ITEM_st* @CMS_EnvelopedData_it() local_unnamed_addr #1

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_AuthEnvelopedData_it() local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_KeyTransRecipientInfo_it() local_unnamed_addr #1

declare i32 @ossl_cms_set1_SignerIdentifier(%struct.CMS_SignerIdentifier_st* noundef, %struct.x509_st* noundef, i32 noundef, %struct.CMS_CTX_st* noundef) local_unnamed_addr #1

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare i32 @ERR_clear_last_mark() local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @cms_get_key_wrap_cipher(i64 noundef %keylen, %struct.CMS_CTX_st* noundef %ctx) unnamed_addr #0 {
entry:
  switch i64 %keylen, label %cleanup [
    i64 16, label %sw.epilog
    i64 24, label %sw.bb1
    i64 32, label %sw.bb2
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb1
  %alg.0 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %entry ]
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %ctx) #5
  %call3 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %ctx) #5
  %call4 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef nonnull %alg.0, i8* noundef %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog
  %retval.0 = phi %struct.evp_cipher_st* [ %call4, %sw.epilog ], [ null, %entry ]
  ret %struct.evp_cipher_st* %retval.0
}

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #1

declare i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare void @EVP_CIPHER_CTX_set_flags(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cms_env_set_originfo_version(%struct.CMS_EnvelopedData_st* nocapture noundef %env) unnamed_addr #0 {
entry:
  %originatorInfo = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %env, i64 0, i32 1
  %0 = load %struct.CMS_OriginatorInfo_st*, %struct.CMS_OriginatorInfo_st** %originatorInfo, align 8, !tbaa !84
  %cmp = icmp eq %struct.CMS_OriginatorInfo_st* %0, null
  br i1 %cmp, label %cleanup35, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %certificates = getelementptr inbounds %struct.CMS_OriginatorInfo_st, %struct.CMS_OriginatorInfo_st* %0, i64 0, i32 0
  %1 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %certificates, align 8, !tbaa !85
  %call60 = tail call fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %1) #6
  %cmp161 = icmp sgt i32 %call60, 0
  br i1 %cmp161, label %for.body.lr.ph, label %for.cond16.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %version9 = getelementptr inbounds %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %env, i64 0, i32 0
  br label %for.body

for.cond16.preheader:                             ; preds = %for.inc, %for.cond.preheader
  %crls = getelementptr inbounds %struct.CMS_OriginatorInfo_st, %struct.CMS_OriginatorInfo_st* %0, i64 0, i32 1
  %2 = load %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_RevocationInfoChoice** %crls, align 8, !tbaa !87
  %call1763 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef %2) #6
  %call1864 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1763) #5
  %cmp1965 = icmp sgt i32 %call1864, 0
  br i1 %cmp1965, label %for.body20, label %cleanup35

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %3 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %certificates, align 8, !tbaa !85
  %call3 = tail call fastcc %struct.CMS_CertificateChoices* @sk_CMS_CertificateChoices_value(%struct.stack_st_CMS_CertificateChoices* noundef %3, i32 noundef %i.062) #6
  %type = getelementptr inbounds %struct.CMS_CertificateChoices, %struct.CMS_CertificateChoices* %call3, i64 0, i32 0
  %4 = load i32, i32* %type, align 8, !tbaa !88
  switch i32 %4, label %for.inc [
    i32 4, label %cleanup35.sink.split
    i32 3, label %if.then8
  ]

if.then8:                                         ; preds = %for.body
  %5 = load i32, i32* %version9, align 8, !tbaa !37
  %cmp10 = icmp slt i32 %5, 3
  br i1 %cmp10, label %if.then11, label %for.inc

if.then11:                                        ; preds = %if.then8
  store i32 3, i32* %version9, align 8, !tbaa !37
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then8, %if.then11
  %inc = add nuw nsw i32 %i.062, 1
  %6 = load %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_CertificateChoices** %certificates, align 8, !tbaa !85
  %call = tail call fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %6) #6
  %cmp1 = icmp slt i32 %inc, %call
  br i1 %cmp1, label %for.body, label %for.cond16.preheader, !llvm.loop !90

for.cond16:                                       ; preds = %for.body20
  %7 = load %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_RevocationInfoChoice** %crls, align 8, !tbaa !87
  %call17 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef %7) #6
  %call18 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call17) #5
  %cmp19 = icmp slt i32 %inc33, %call18
  br i1 %cmp19, label %for.body20, label %cleanup35, !llvm.loop !91

for.body20:                                       ; preds = %for.cond16.preheader, %for.cond16
  %i.166 = phi i32 [ %inc33, %for.cond16 ], [ 0, %for.cond16.preheader ]
  %8 = load %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_RevocationInfoChoice** %crls, align 8, !tbaa !87
  %call22 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef %8) #6
  %call23 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call22, i32 noundef %i.166) #5
  %type24 = bitcast i8* %call23 to i32*
  %9 = load i32, i32* %type24, align 8, !tbaa !92
  %cmp25 = icmp eq i32 %9, 1
  %inc33 = add nuw nsw i32 %i.166, 1
  br i1 %cmp25, label %cleanup35.sink.split, label %for.cond16

cleanup35.sink.split:                             ; preds = %for.body, %for.body20
  %version9.sink = getelementptr %struct.CMS_EnvelopedData_st, %struct.CMS_EnvelopedData_st* %env, i64 0, i32 0
  store i32 4, i32* %version9.sink, align 8, !tbaa !37
  br label %cleanup35

cleanup35:                                        ; preds = %for.cond16, %cleanup35.sink.split, %for.cond16.preheader, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_CMS_CertificateChoices_num(%struct.stack_st_CMS_CertificateChoices* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CMS_CertificateChoices* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.CMS_CertificateChoices* @sk_CMS_CertificateChoices_value(%struct.stack_st_CMS_CertificateChoices* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CMS_CertificateChoices* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  %1 = bitcast i8* %call to %struct.CMS_CertificateChoices*
  ret %struct.CMS_CertificateChoices* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CMS_RevocationInfoChoice_sk_type(%struct.stack_st_CMS_RevocationInfoChoice* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CMS_RevocationInfoChoice* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"CMS_ContentInfo_st", !6, i64 0, !7, i64 8, !9, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"CMS_CTX_st", !6, i64 0, !6, i64 8}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"CMS_RecipientInfo_st", !13, i64 0, !7, i64 8}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !6, i64 40}
!15 = !{!"CMS_KeyTransRecipientInfo_st", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56}
!16 = !{!17, !6, i64 40}
!17 = !{!"CMS_KeyAgreeRecipientInfo_st", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56}
!18 = !{!19, !6, i64 8}
!19 = !{!"evp_pkey_st", !13, i64 0, !13, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !6, i64 56, !6, i64 64, !13, i64 72, !13, i64 76, !20, i64 80, !6, i64 96, !6, i64 104, !21, i64 112, !6, i64 120, !21, i64 128, !22, i64 136}
!20 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!21 = !{!"long", !7, i64 0}
!22 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8}
!23 = !{!24, !6, i64 176}
!24 = !{!"evp_pkey_asn1_method_st", !13, i64 0, !13, i64 4, !21, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312}
!25 = !{!6, !6, i64 0}
!26 = !{!17, !6, i64 56}
!27 = !{!15, !6, i64 56}
!28 = !{!15, !6, i64 32}
!29 = !{!30, !6, i64 48}
!30 = !{!"CMS_KEKRecipientInfo_st", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !21, i64 40, !6, i64 48}
!31 = !{!32, !6, i64 48}
!32 = !{!"CMS_PasswordRecipientInfo_st", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !21, i64 40, !6, i64 48}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!36, !6, i64 24}
!36 = !{!"CMS_EnvelopedData_st", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!37 = !{!36, !13, i64 0}
!38 = !{!39, !6, i64 0}
!39 = !{!"CMS_EncryptedContentInfo_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !21, i64 40, !6, i64 48, !21, i64 56, !13, i64 64, !13, i64 68}
!40 = !{!41, !6, i64 24}
!41 = !{!"CMS_AuthEnvelopedData_st", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!42 = !{!41, !13, i64 0}
!43 = !{!15, !6, i64 8}
!44 = !{!15, !6, i64 48}
!45 = !{!15, !6, i64 16}
!46 = !{!47, !13, i64 4}
!47 = !{!"asn1_string_st", !13, i64 0, !13, i64 4, !6, i64 8, !21, i64 16}
!48 = !{!47, !21, i64 16}
!49 = !{!47, !6, i64 8}
!50 = !{!47, !13, i64 0}
!51 = !{!30, !6, i64 8}
!52 = !{!53, !6, i64 0}
!53 = !{!"CMS_KEKIdentifier_st", !6, i64 0, !6, i64 8, !6, i64 16}
!54 = !{!53, !6, i64 16}
!55 = !{!30, !13, i64 0}
!56 = !{!30, !6, i64 32}
!57 = !{!30, !21, i64 40}
!58 = !{!53, !6, i64 8}
!59 = !{!60, !6, i64 0}
!60 = !{!"CMS_OtherKeyAttribute_st", !6, i64 0, !6, i64 8}
!61 = !{!60, !6, i64 8}
!62 = !{!30, !6, i64 16}
!63 = !{!39, !13, i64 68}
!64 = !{!39, !13, i64 64}
!65 = !{!39, !6, i64 8}
!66 = !{!67, !6, i64 0}
!67 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!68 = !{!15, !6, i64 24}
!69 = !{!21, !21, i64 0}
!70 = !{!39, !6, i64 32}
!71 = !{!39, !21, i64 40}
!72 = !{!13, !13, i64 0}
!73 = !{!30, !6, i64 24}
!74 = !{!39, !6, i64 24}
!75 = !{!36, !6, i64 16}
!76 = !{!36, !6, i64 32}
!77 = !{!41, !6, i64 40}
!78 = !{!39, !6, i64 48}
!79 = !{!39, !21, i64 56}
!80 = !{!41, !6, i64 16}
!81 = distinct !{!81, !34}
!82 = !{!15, !13, i64 0}
!83 = distinct !{!83, !34}
!84 = !{!36, !6, i64 8}
!85 = !{!86, !6, i64 0}
!86 = !{!"CMS_OriginatorInfo_st", !6, i64 0, !6, i64 8}
!87 = !{!86, !6, i64 8}
!88 = !{!89, !13, i64 0}
!89 = !{!"CMS_CertificateChoices", !13, i64 0, !7, i64 8}
!90 = distinct !{!90, !34}
!91 = distinct !{!91, !34}
!92 = !{!93, !13, i64 0}
!93 = !{!"CMS_RevocationInfoChoice_st", !13, i64 0, !7, i64 8}
