; ModuleID = 'crypto/cms/cms_asn1.c'
source_filename = "crypto/cms/cms_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ADB_st = type { i64, i64, i32 (i64*)*, %struct.ASN1_ADB_TABLE_st*, i64, %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st* }
%struct.ASN1_ADB_TABLE_st = type { i64, %struct.ASN1_TEMPLATE_st }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.CMS_SharedInfo = type { %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.CMS_SignerInfo_st = type { i32, %struct.CMS_SignerIdentifier_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_md_ctx_st*, %struct.evp_pkey_ctx_st*, %struct.CMS_CTX_st* }
%struct.CMS_SignerIdentifier_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.CMS_IssuerAndSerialNumber_st* }
%struct.CMS_IssuerAndSerialNumber_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type opaque
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.x509_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.CMS_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.CMS_RecipientEncryptedKey_st = type { %struct.CMS_KeyAgreeRecipientIdentifier_st*, %struct.asn1_string_st*, %struct.evp_pkey_st* }
%struct.CMS_KeyAgreeRecipientIdentifier_st = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.CMS_IssuerAndSerialNumber_st* }
%struct.CMS_KeyAgreeRecipientInfo_st = type { i32, %struct.CMS_OriginatorIdentifierOrKey_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.stack_st_CMS_RecipientEncryptedKey*, %struct.evp_pkey_ctx_st*, %struct.evp_cipher_ctx_st*, %struct.CMS_CTX_st* }
%struct.CMS_OriginatorIdentifierOrKey_st = type { i32, %union.anon.3 }
%union.anon.3 = type { %struct.CMS_IssuerAndSerialNumber_st* }
%struct.stack_st_CMS_RecipientEncryptedKey = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.CMS_RecipientInfo_st = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.CMS_KeyTransRecipientInfo_st* }
%struct.CMS_KeyTransRecipientInfo_st = type { i32, %struct.CMS_SignerIdentifier_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_pkey_ctx_st*, %struct.CMS_CTX_st* }
%struct.CMS_KEKRecipientInfo_st = type { i32, %struct.CMS_KEKIdentifier_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i8*, i64, %struct.CMS_CTX_st* }
%struct.CMS_KEKIdentifier_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.CMS_OtherKeyAttribute_st* }
%struct.CMS_OtherKeyAttribute_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.CMS_PasswordRecipientInfo_st = type { i32, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i8*, i64, %struct.CMS_CTX_st* }
%struct.CMS_ContentInfo_st = type { %struct.asn1_object_st*, %union.anon.5, %struct.CMS_CTX_st }
%union.anon.5 = type { %struct.asn1_string_st* }
%struct.bio_st = type opaque

@CMS_IssuerAndSerialNumber_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_IssuerAndSerialNumber_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [26 x i8] c"CMS_IssuerAndSerialNumber\00", align 1
@CMS_CertificateChoices_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([5 x %struct.ASN1_TEMPLATE_st], [5 x %struct.ASN1_TEMPLATE_st]* bitcast ([5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_CertificateChoices_ch_tt to [5 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 5, i8* null, i64 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"CMS_CertificateChoices\00", align 1
@CMS_SignerInfo_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([7 x %struct.ASN1_TEMPLATE_st], [7 x %struct.ASN1_TEMPLATE_st]* bitcast ([7 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_SignerInfo_seq_tt to [7 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 7, i8* bitcast (%struct.ASN1_AUX_st* @CMS_SignerInfo_aux to i8*), i64 96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0) }, align 8
@CMS_SignerInfo_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @cms_si_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"CMS_SignerInfo\00", align 1
@CMS_RevocationInfoChoice_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_RevocationInfoChoice_ch_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"CMS_RevocationInfoChoice\00", align 1
@CMS_SignedData_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([6 x %struct.ASN1_TEMPLATE_st], [6 x %struct.ASN1_TEMPLATE_st]* bitcast ([6 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_SignedData_seq_tt to [6 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 6, i8* null, i64 48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"CMS_SignedData\00", align 1
@CMS_KeyTransRecipientInfo_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_KeyTransRecipientInfo_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0) }, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"CMS_KeyTransRecipientInfo\00", align 1
@CMS_OtherKeyAttribute_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_OtherKeyAttribute_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0) }, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"CMS_OtherKeyAttribute\00", align 1
@CMS_RecipientKeyIdentifier_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_RecipientKeyIdentifier_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0) }, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"CMS_RecipientKeyIdentifier\00", align 1
@CMS_RecipientEncryptedKey_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_RecipientEncryptedKey_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* bitcast (%struct.ASN1_AUX_st* @CMS_RecipientEncryptedKey_aux to i8*), i64 24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0) }, align 8
@CMS_RecipientEncryptedKey_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @cms_rek_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"CMS_RecipientEncryptedKey\00", align 1
@CMS_OriginatorPublicKey_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_OriginatorPublicKey_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0) }, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"CMS_OriginatorPublicKey\00", align 1
@CMS_KeyAgreeRecipientInfo_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([5 x %struct.ASN1_TEMPLATE_st], [5 x %struct.ASN1_TEMPLATE_st]* bitcast ([5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_KeyAgreeRecipientInfo_seq_tt to [5 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 5, i8* bitcast (%struct.ASN1_AUX_st* @CMS_KeyAgreeRecipientInfo_aux to i8*), i64 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0) }, align 8
@CMS_KeyAgreeRecipientInfo_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @cms_kari_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"CMS_KeyAgreeRecipientInfo\00", align 1
@CMS_KEKRecipientInfo_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_KEKRecipientInfo_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0) }, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"CMS_KEKRecipientInfo\00", align 1
@CMS_PasswordRecipientInfo_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_PasswordRecipientInfo_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0) }, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"CMS_PasswordRecipientInfo\00", align 1
@CMS_RecipientInfo_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([5 x %struct.ASN1_TEMPLATE_st], [5 x %struct.ASN1_TEMPLATE_st]* bitcast ([5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_RecipientInfo_ch_tt to [5 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 5, i8* bitcast (%struct.ASN1_AUX_st* @CMS_RecipientInfo_aux to i8*), i64 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0) }, align 8
@CMS_RecipientInfo_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @cms_ri_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"CMS_RecipientInfo\00", align 1
@CMS_EnvelopedData_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([5 x %struct.ASN1_TEMPLATE_st], [5 x %struct.ASN1_TEMPLATE_st]* bitcast ([5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_EnvelopedData_seq_tt to [5 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 5, i8* null, i64 40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0) }, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"CMS_EnvelopedData\00", align 1
@CMS_DigestedData_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_DigestedData_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0) }, align 8
@.str.15 = private unnamed_addr constant [17 x i8] c"CMS_DigestedData\00", align 1
@CMS_EncryptedData_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_EncryptedData_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0) }, align 8
@.str.16 = private unnamed_addr constant [18 x i8] c"CMS_EncryptedData\00", align 1
@CMS_AuthEnvelopedData_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([7 x %struct.ASN1_TEMPLATE_st], [7 x %struct.ASN1_TEMPLATE_st]* bitcast ([7 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_AuthEnvelopedData_seq_tt to [7 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 7, i8* null, i64 56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"CMS_AuthEnvelopedData\00", align 1
@CMS_CompressedData_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_CompressedData_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0) }, align 8
@.str.18 = private unnamed_addr constant [19 x i8] c"CMS_CompressedData\00", align 1
@CMS_ContentInfo_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_ContentInfo_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* bitcast (%struct.ASN1_AUX_st* @CMS_ContentInfo_aux to i8*), i64 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0) }, align 8
@CMS_ContentInfo_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @cms_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.19 = private unnamed_addr constant [16 x i8] c"CMS_ContentInfo\00", align 1
@CMS_Attributes_Sign_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @CMS_Attributes_Sign_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0) }, align 8
@.str.20 = private unnamed_addr constant [20 x i8] c"CMS_Attributes_Sign\00", align 1
@CMS_Attributes_Verify_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @CMS_Attributes_Verify_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0) }, align 8
@.str.21 = private unnamed_addr constant [22 x i8] c"CMS_Attributes_Verify\00", align 1
@CMS_ReceiptRequest_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_ReceiptRequest_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0) }, align 8
@.str.22 = private unnamed_addr constant [19 x i8] c"CMS_ReceiptRequest\00", align 1
@CMS_Receipt_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_Receipt_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0) }, align 8
@.str.23 = private unnamed_addr constant [12 x i8] c"CMS_Receipt\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"issuer\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"serialNumber\00", align 1
@CMS_IssuerAndSerialNumber_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str.27 = private unnamed_addr constant [14 x i8] c"d.certificate\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"d.extendedCertificate\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"d.v1AttrCert\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"d.v2AttrCert\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"d.other\00", align 1
@CMS_CertificateChoices_ch_tt = internal constant [5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 0, i64 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_SEQUENCE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 1, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_SEQUENCE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 2, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_SEQUENCE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 3, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_OtherCertificateFormat_it }], align 16
@CMS_OtherCertificateFormat_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_OtherCertificateFormat_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0) }, align 8
@.str.33 = private unnamed_addr constant [27 x i8] c"CMS_OtherCertificateFormat\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"otherCertFormat\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"otherCert\00", align 1
@CMS_OtherCertificateFormat_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }], align 16
@.str.37 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"sid\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"digestAlgorithm\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"signedAttrs\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"signatureAlgorithm\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"unsignedAttrs\00", align 1
@CMS_SignerInfo_seq_tt = internal constant [7 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_SignerIdentifier_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 0, i64 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 1, i64 48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }], align 16
@CMS_SignerIdentifier_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_SignerIdentifier_ch_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0) }, align 8
@.str.45 = private unnamed_addr constant [21 x i8] c"CMS_SignerIdentifier\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"d.issuerAndSerialNumber\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"d.subjectKeyIdentifier\00", align 1
@CMS_SignerIdentifier_ch_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_IssuerAndSerialNumber_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 0, i64 8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@.str.49 = private unnamed_addr constant [6 x i8] c"d.crl\00", align 1
@CMS_RevocationInfoChoice_ch_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_CRL_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 1, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_OtherRevocationInfoFormat_it }], align 16
@CMS_OtherRevocationInfoFormat_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_OtherRevocationInfoFormat_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0) }, align 8
@.str.51 = private unnamed_addr constant [30 x i8] c"CMS_OtherRevocationInfoFormat\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"otherRevInfoFormat\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"otherRevInfo\00", align 1
@CMS_OtherRevocationInfoFormat_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }], align 16
@.str.55 = private unnamed_addr constant [17 x i8] c"digestAlgorithms\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"encapContentInfo\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"certificates\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"crls\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"signerInfos\00", align 1
@CMS_SignedData_seq_tt = internal constant [6 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_EncapsulatedContentInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 0, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_CertificateChoices_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 1, i64 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_RevocationInfoChoice_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_SignerInfo_it }], align 16
@CMS_EncapsulatedContentInfo_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_EncapsulatedContentInfo_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i32 0, i32 0) }, align 8
@.str.61 = private unnamed_addr constant [28 x i8] c"CMS_EncapsulatedContentInfo\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"eContentType\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"eContent\00", align 1
@CMS_EncapsulatedContentInfo_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2193, i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_NDEF_it }], align 16
@.str.65 = private unnamed_addr constant [4 x i8] c"rid\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"keyEncryptionAlgorithm\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"encryptedKey\00", align 1
@CMS_KeyTransRecipientInfo_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_SignerIdentifier_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@.str.69 = private unnamed_addr constant [10 x i8] c"keyAttrId\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"keyAttr\00", align 1
@CMS_OtherKeyAttribute_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }], align 16
@.str.72 = private unnamed_addr constant [21 x i8] c"subjectKeyIdentifier\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@CMS_RecipientKeyIdentifier_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.72, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_OtherKeyAttribute_it }], align 16
@CMS_RecipientEncryptedKey_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_KeyAgreeRecipientIdentifier_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@CMS_KeyAgreeRecipientIdentifier_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_KeyAgreeRecipientIdentifier_ch_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.77, i32 0, i32 0) }, align 8
@.str.77 = private unnamed_addr constant [32 x i8] c"CMS_KeyAgreeRecipientIdentifier\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"d.rKeyId\00", align 1
@CMS_KeyAgreeRecipientIdentifier_ch_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_IssuerAndSerialNumber_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_RecipientKeyIdentifier_it }], align 16
@.str.80 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"publicKey\00", align 1
@CMS_OriginatorPublicKey_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16
@.str.83 = private unnamed_addr constant [11 x i8] c"originator\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"ukm\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"recipientEncryptedKeys\00", align 1
@CMS_KeyAgreeRecipientInfo_seq_tt = internal constant [5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_OriginatorIdentifierOrKey_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 1, i64 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.85, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_RecipientEncryptedKey_it }], align 16
@CMS_OriginatorIdentifierOrKey_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_OriginatorIdentifierOrKey_ch_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.87, i32 0, i32 0) }, align 8
@.str.87 = private unnamed_addr constant [30 x i8] c"CMS_OriginatorIdentifierOrKey\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"d.originatorKey\00", align 1
@CMS_OriginatorIdentifierOrKey_ch_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_IssuerAndSerialNumber_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 0, i64 8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 1, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.88, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_OriginatorPublicKey_it }], align 16
@.str.90 = private unnamed_addr constant [6 x i8] c"kekid\00", align 1
@CMS_KEKRecipientInfo_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_KEKIdentifier_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@CMS_KEKIdentifier_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_KEKIdentifier_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i32 0, i32 0) }, align 8
@.str.92 = private unnamed_addr constant [18 x i8] c"CMS_KEKIdentifier\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"keyIdentifier\00", align 1
@CMS_KEKIdentifier_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_OtherKeyAttribute_it }], align 16
@.str.95 = private unnamed_addr constant [23 x i8] c"keyDerivationAlgorithm\00", align 1
@CMS_PasswordRecipientInfo_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 0, i64 8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@.str.97 = private unnamed_addr constant [7 x i8] c"d.ktri\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"d.kari\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"d.kekri\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"d.pwri\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"d.ori\00", align 1
@CMS_RecipientInfo_ch_tt = internal constant [5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_KeyTransRecipientInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 1, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_KeyAgreeRecipientInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 2, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_KEKRecipientInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 3, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_PasswordRecipientInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 4, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_OtherRecipientInfo_it }], align 16
@CMS_OtherRecipientInfo_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_OtherRecipientInfo_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.103, i32 0, i32 0) }, align 8
@.str.103 = private unnamed_addr constant [23 x i8] c"CMS_OtherRecipientInfo\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"oriType\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"oriValue\00", align 1
@CMS_OtherRecipientInfo_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }], align 16
@.str.107 = private unnamed_addr constant [22 x i8] c"crypto/cms/cms_asn1.c\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"originatorInfo\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"recipientInfos\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"encryptedContentInfo\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"unprotectedAttrs\00", align 1
@CMS_EnvelopedData_seq_tt = internal constant [5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 0, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.108, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_OriginatorInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.109, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_RecipientInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.110, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_EncryptedContentInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 1, i64 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }], align 16
@CMS_OriginatorInfo_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_OriginatorInfo_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0) }, align 8
@.str.113 = private unnamed_addr constant [19 x i8] c"CMS_OriginatorInfo\00", align 1
@CMS_OriginatorInfo_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 0, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_CertificateChoices_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 1, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_RevocationInfoChoice_it }], align 16
@CMS_EncryptedContentInfo_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_EncryptedContentInfo_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.115, i32 0, i32 0) }, align 8
@.str.115 = private unnamed_addr constant [25 x i8] c"CMS_EncryptedContentInfo\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"contentType\00", align 1
@.str.117 = private unnamed_addr constant [27 x i8] c"contentEncryptionAlgorithm\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"encryptedContent\00", align 1
@CMS_EncryptedContentInfo_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.117, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 0, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.118, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_NDEF_it }], align 16
@.str.120 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@CMS_DigestedData_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_EncapsulatedContentInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@CMS_EncryptedData_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.110, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_EncryptedContentInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 1, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }], align 16
@.str.123 = private unnamed_addr constant [25 x i8] c"authEncryptedContentInfo\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"authAttrs\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"unauthAttrs\00", align 1
@CMS_AuthEnvelopedData_seq_tt = internal constant [7 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 0, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.108, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_OriginatorInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.109, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_RecipientInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.123, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_EncryptedContentInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 2, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 3, i64 48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.126, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }], align 16
@.str.128 = private unnamed_addr constant [21 x i8] c"compressionAlgorithm\00", align 1
@CMS_CompressedData_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.128, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_EncapsulatedContentInfo_it }], align 16
@CMS_ContentInfo_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 256, i64 -1, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_ContentInfo_adb }], align 16
@CMS_ContentInfo_adb.internal_adb = internal constant %struct.ASN1_ADB_st { i64 0, i64 0, i32 (i64*)* null, %struct.ASN1_ADB_TABLE_st* getelementptr inbounds ([8 x %struct.ASN1_ADB_TABLE_st], [8 x %struct.ASN1_ADB_TABLE_st]* bitcast ([8 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }]* @CMS_ContentInfo_adbtbl to [8 x %struct.ASN1_ADB_TABLE_st]*), i32 0, i32 0), i64 8, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @cms_default_tt to %struct.ASN1_TEMPLATE_st*), %struct.ASN1_TEMPLATE_st* null }, align 8
@.str.131 = private unnamed_addr constant [7 x i8] c"d.data\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"d.signedData\00", align 1
@.str.133 = private unnamed_addr constant [16 x i8] c"d.envelopedData\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"d.digestedData\00", align 1
@.str.135 = private unnamed_addr constant [16 x i8] c"d.encryptedData\00", align 1
@.str.136 = private unnamed_addr constant [20 x i8] c"d.authEnvelopedData\00", align 1
@.str.137 = private unnamed_addr constant [20 x i8] c"d.authenticatedData\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"d.compressedData\00", align 1
@CMS_ContentInfo_adbtbl = internal constant [8 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }] [{ i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 21, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2192, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_NDEF_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 22, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2192, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_SignedData_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 23, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2192, i64 0, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.133, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_EnvelopedData_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 25, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2192, i64 0, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_DigestedData_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 26, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2192, i64 0, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.135, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_EncryptedData_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 1059, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2192, i64 0, i64 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.136, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_AuthEnvelopedData_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 205, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2192, i64 0, i64 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.137, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_AuthenticatedData_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 786, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2192, i64 0, i64 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.138, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_CompressedData_it } }], align 16
@CMS_AuthenticatedData_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([9 x %struct.ASN1_TEMPLATE_st], [9 x %struct.ASN1_TEMPLATE_st]* bitcast ([9 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_AuthenticatedData_seq_tt to [9 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 9, i8* null, i64 72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.140, i32 0, i32 0) }, align 8
@.str.140 = private unnamed_addr constant [22 x i8] c"CMS_AuthenticatedData\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"macAlgorithm\00", align 1
@CMS_AuthenticatedData_seq_tt = internal constant [9 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 0, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.108, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_OriginatorInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.109, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_RecipientInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 1, i64 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_EncapsulatedContentInfo_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 2, i64 48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 3, i64 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.126, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }], align 16
@cms_default_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, align 8
@.str.144 = private unnamed_addr constant [15 x i8] c"CMS_ATTRIBUTES\00", align 1
@CMS_Attributes_Sign_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 6, i64 0, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.144, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }, align 8
@CMS_Attributes_Verify_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 12, i64 17, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.144, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }, align 8
@.str.147 = private unnamed_addr constant [24 x i8] c"signedContentIdentifier\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"receiptsFrom\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"receiptsTo\00", align 1
@CMS_ReceiptRequest_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.147, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @CMS_ReceiptsFrom_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.149, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAMES_it }], align 16
@CMS_ReceiptsFrom_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_ReceiptsFrom_ch_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.151, i32 0, i32 0) }, align 8
@.str.151 = private unnamed_addr constant [17 x i8] c"CMS_ReceiptsFrom\00", align 1
@.str.152 = private unnamed_addr constant [17 x i8] c"d.allOrFirstTier\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"d.receiptList\00", align 1
@CMS_ReceiptsFrom_ch_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4232, i64 0, i64 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.152, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 140, i64 1, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.153, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAMES_it }], align 16
@.str.155 = private unnamed_addr constant [25 x i8] c"originatorSignatureValue\00", align 1
@CMS_Receipt_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.147, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.155, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@CMS_SharedInfo_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @CMS_SharedInfo_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.157, i32 0, i32 0) }, align 8
@.str.157 = private unnamed_addr constant [15 x i8] c"CMS_SharedInfo\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"keyInfo\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"entityUInfo\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"suppPubInfo\00", align 1
@CMS_SharedInfo_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.158, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.159, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 2, i64 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.160, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_IssuerAndSerialNumber_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_IssuerAndSerialNumber_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_CertificateChoices_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_CertificateChoices_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_SignerInfo_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_SignerInfo_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_RevocationInfoChoice_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_RevocationInfoChoice_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_SignedData_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_SignedData_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_KeyTransRecipientInfo_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_KeyTransRecipientInfo_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_OtherKeyAttribute_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_OtherKeyAttribute_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_RecipientKeyIdentifier_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_RecipientKeyIdentifier_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_RecipientEncryptedKey_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_RecipientEncryptedKey_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_OriginatorPublicKey_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_OriginatorPublicKey_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_KeyAgreeRecipientInfo_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_KeyAgreeRecipientInfo_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_KEKRecipientInfo_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_KEKRecipientInfo_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_PasswordRecipientInfo_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_PasswordRecipientInfo_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_RecipientInfo_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_RecipientInfo_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_EnvelopedData_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_EnvelopedData_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_DigestedData_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_DigestedData_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_EncryptedData_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_EncryptedData_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_AuthEnvelopedData_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_AuthEnvelopedData_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_CompressedData_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_CompressedData_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_ContentInfo_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_Attributes_Sign_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_Attributes_Sign_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_Attributes_Verify_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_Attributes_Verify_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_ReceiptRequest_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_ReceiptRequest_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CMS_Receipt_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_Receipt_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_SharedInfo_encode(i8** noundef %pder, %struct.X509_algor_st* noundef %kekalg, %struct.asn1_string_st* noundef %ukm, i32 noundef %keylen) local_unnamed_addr #1 {
entry:
  %oklen = alloca %struct.asn1_string_st, align 8
  %kl = alloca [4 x i8], align 1
  %ecsi = alloca %struct.CMS_SharedInfo, align 8
  %0 = bitcast %struct.asn1_string_st* %oklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #4
  %1 = getelementptr inbounds [4 x i8], [4 x i8]* %kl, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  %2 = bitcast %struct.CMS_SharedInfo* %ecsi to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #4
  %shl = shl i32 %keylen, 3
  %3 = lshr i32 %shl, 24
  %conv = trunc i32 %3 to i8
  store i8 %conv, i8* %1, align 1, !tbaa !4
  %4 = lshr i32 %shl, 16
  %conv3 = trunc i32 %4 to i8
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %kl, i64 0, i64 1
  store i8 %conv3, i8* %arrayidx4, align 1, !tbaa !4
  %5 = lshr i32 %shl, 8
  %conv7 = trunc i32 %5 to i8
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %kl, i64 0, i64 2
  store i8 %conv7, i8* %arrayidx8, align 1, !tbaa !4
  %conv10 = trunc i32 %shl to i8
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %kl, i64 0, i64 3
  store i8 %conv10, i8* %arrayidx11, align 1, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oklen, i64 0, i32 0
  store i32 4, i32* %length, align 8, !tbaa !7
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oklen, i64 0, i32 2
  store i8* %1, i8** %data, align 8, !tbaa !12
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oklen, i64 0, i32 1
  store i32 4, i32* %type, align 4, !tbaa !13
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oklen, i64 0, i32 3
  store i64 0, i64* %flags, align 8, !tbaa !14
  %keyInfo = getelementptr inbounds %struct.CMS_SharedInfo, %struct.CMS_SharedInfo* %ecsi, i64 0, i32 0
  store %struct.X509_algor_st* %kekalg, %struct.X509_algor_st** %keyInfo, align 8, !tbaa !15
  %entityUInfo = getelementptr inbounds %struct.CMS_SharedInfo, %struct.CMS_SharedInfo* %ecsi, i64 0, i32 1
  store %struct.asn1_string_st* %ukm, %struct.asn1_string_st** %entityUInfo, align 8, !tbaa !17
  %suppPubInfo = getelementptr inbounds %struct.CMS_SharedInfo, %struct.CMS_SharedInfo* %ecsi, i64 0, i32 2
  store %struct.asn1_string_st* %oklen, %struct.asn1_string_st** %suppPubInfo, align 8, !tbaa !18
  %6 = bitcast %struct.CMS_SharedInfo* %ecsi to %struct.ASN1_VALUE_st*
  %call12 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef nonnull %6, i8** noundef %pder, %struct.ASN1_ITEM_st* noundef nonnull @CMS_SharedInfo_it.local_it) #5
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #4
  ret i32 %call12
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.ASN1_ITEM_st* @X509_NAME_it() #3

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #3

declare %struct.ASN1_ITEM_st* @X509_it() #3

declare %struct.ASN1_ITEM_st* @ASN1_SEQUENCE_it() #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @CMS_OtherCertificateFormat_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_OtherCertificateFormat_it.local_it
}

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #3

declare %struct.ASN1_ITEM_st* @ASN1_ANY_it() #3

declare %struct.ASN1_ITEM_st* @INT32_it() #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @CMS_SignerIdentifier_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_SignerIdentifier_it.local_it
}

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #3

declare %struct.ASN1_ITEM_st* @X509_ATTRIBUTE_it() #3

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @cms_si_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  %cmp = icmp eq i32 %operation, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.CMS_SignerInfo_st**
  %1 = load %struct.CMS_SignerInfo_st*, %struct.CMS_SignerInfo_st** %0, align 8, !tbaa !19
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %1, i64 0, i32 8
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !20
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %2) #5
  %signer = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %1, i64 0, i32 7
  %3 = load %struct.x509_st*, %struct.x509_st** %signer, align 8, !tbaa !22
  tail call void @X509_free(%struct.x509_st* noundef %3) #5
  %mctx = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %1, i64 0, i32 9
  %4 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mctx, align 8, !tbaa !23
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #3

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare %struct.ASN1_ITEM_st* @X509_CRL_it() #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @CMS_OtherRevocationInfoFormat_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_OtherRevocationInfoFormat_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @CMS_EncapsulatedContentInfo_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_EncapsulatedContentInfo_it.local_it
}

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_NDEF_it() #3

declare %struct.ASN1_ITEM_st* @ASN1_GENERALIZEDTIME_it() #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @CMS_KeyAgreeRecipientIdentifier_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_KeyAgreeRecipientIdentifier_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cms_rek_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  %cmp = icmp eq i32 %operation, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.CMS_RecipientEncryptedKey_st**
  %1 = load %struct.CMS_RecipientEncryptedKey_st*, %struct.CMS_RecipientEncryptedKey_st** %0, align 8, !tbaa !19
  %pkey = getelementptr inbounds %struct.CMS_RecipientEncryptedKey_st, %struct.CMS_RecipientEncryptedKey_st* %1, i64 0, i32 2
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !24
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @CMS_OriginatorIdentifierOrKey_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_OriginatorIdentifierOrKey_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cms_kari_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.CMS_KeyAgreeRecipientInfo_st**
  %1 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %0, align 8, !tbaa !19
  switch i32 %operation, label %cleanup [
    i32 1, label %if.then
    i32 3, label %if.then6
  ]

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #5
  %ctx = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 6
  store %struct.evp_cipher_ctx_st* %call, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !26
  %cmp2 = icmp eq %struct.evp_cipher_ctx_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  tail call void @EVP_CIPHER_CTX_set_flags(%struct.evp_cipher_ctx_st* noundef nonnull %call, i32 noundef 1) #5
  %pctx = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 5
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !28
  br label %cleanup

if.then6:                                         ; preds = %entry
  %pctx7 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 5
  %2 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx7, align 8, !tbaa !28
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %2) #5
  %ctx8 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 6
  %3 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx8, align 8, !tbaa !26
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then6, %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ], [ 1, %if.then6 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #3

declare void @EVP_CIPHER_CTX_set_flags(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @CMS_KEKIdentifier_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_KEKIdentifier_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @CMS_OtherRecipientInfo_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_OtherRecipientInfo_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cms_ri_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  %cmp = icmp eq i32 %operation, 2
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.CMS_RecipientInfo_st**
  %1 = load %struct.CMS_RecipientInfo_st*, %struct.CMS_RecipientInfo_st** %0, align 8, !tbaa !19
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %1, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !29
  switch i32 %2, label %if.end17 [
    i32 0, label %if.then2
    i32 2, label %if.then6
    i32 3, label %if.then12
  ]

if.then2:                                         ; preds = %if.then
  %ktri3 = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %1, i64 0, i32 1, i32 0
  %3 = load %struct.CMS_KeyTransRecipientInfo_st*, %struct.CMS_KeyTransRecipientInfo_st** %ktri3, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %3, i64 0, i32 5
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !31
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %4) #5
  %recip = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %3, i64 0, i32 4
  %5 = load %struct.x509_st*, %struct.x509_st** %recip, align 8, !tbaa !33
  tail call void @X509_free(%struct.x509_st* noundef %5) #5
  %pctx = getelementptr inbounds %struct.CMS_KeyTransRecipientInfo_st, %struct.CMS_KeyTransRecipientInfo_st* %3, i64 0, i32 6
  %6 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !34
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %6) #5
  br label %if.end17

if.then6:                                         ; preds = %if.then
  %d7 = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %1, i64 0, i32 1
  %kekri8 = bitcast %union.anon.4* %d7 to %struct.CMS_KEKRecipientInfo_st**
  %7 = load %struct.CMS_KEKRecipientInfo_st*, %struct.CMS_KEKRecipientInfo_st** %kekri8, align 8, !tbaa !4
  %key = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %7, i64 0, i32 4
  %8 = load i8*, i8** %key, align 8, !tbaa !35
  %keylen = getelementptr inbounds %struct.CMS_KEKRecipientInfo_st, %struct.CMS_KEKRecipientInfo_st* %7, i64 0, i32 5
  %9 = load i64, i64* %keylen, align 8, !tbaa !37
  tail call void @CRYPTO_clear_free(i8* noundef %8, i64 noundef %9, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.107, i64 0, i64 0), i32 noundef 210) #5
  br label %if.end17

if.then12:                                        ; preds = %if.then
  %d13 = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %1, i64 0, i32 1
  %pwri14 = bitcast %union.anon.4* %d13 to %struct.CMS_PasswordRecipientInfo_st**
  %10 = load %struct.CMS_PasswordRecipientInfo_st*, %struct.CMS_PasswordRecipientInfo_st** %pwri14, align 8, !tbaa !4
  %pass = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %10, i64 0, i32 4
  %11 = load i8*, i8** %pass, align 8, !tbaa !38
  %passlen = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %10, i64 0, i32 5
  %12 = load i64, i64* %passlen, align 8, !tbaa !40
  tail call void @CRYPTO_clear_free(i8* noundef %11, i64 noundef %12, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.107, i64 0, i64 0), i32 noundef 213) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then2, %if.then12, %if.then6, %if.then, %entry
  ret i32 1
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @CMS_OriginatorInfo_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_OriginatorInfo_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @CMS_EncryptedContentInfo_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_EncryptedContentInfo_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ASN1_ITEM_st* @CMS_ContentInfo_adb() #0 {
entry:
  ret %struct.ASN1_ITEM_st* bitcast (%struct.ASN1_ADB_st* @CMS_ContentInfo_adb.internal_adb to %struct.ASN1_ITEM_st*)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @CMS_AuthenticatedData_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_AuthenticatedData_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cms_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* noundef %exarg) #1 {
entry:
  %tobool.not = icmp eq %struct.ASN1_VALUE_st** %pval, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.CMS_ContentInfo_st**
  %1 = load %struct.CMS_ContentInfo_st*, %struct.CMS_ContentInfo_st** %0, align 8, !tbaa !19
  switch i32 %operation, label %sw.epilog [
    i32 10, label %sw.bb
    i32 12, label %sw.bb3
    i32 11, label %sw.bb9
    i32 13, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.then
  %boundary = getelementptr inbounds i8, i8* %exarg, i64 16
  %2 = bitcast i8* %boundary to i8***
  %call = tail call i32 @CMS_stream(i8*** noundef nonnull %2, %struct.CMS_ContentInfo_st* noundef %1) #5
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %if.then
  %out = bitcast i8* %exarg to %struct.bio_st**
  %3 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !41
  %call4 = tail call %struct.bio_st* @CMS_dataInit(%struct.CMS_ContentInfo_st* noundef %1, %struct.bio_st* noundef %3) #5
  %ndef_bio = getelementptr inbounds i8, i8* %exarg, i64 8
  %4 = bitcast i8* %ndef_bio to %struct.bio_st**
  store %struct.bio_st* %call4, %struct.bio_st** %4, align 8, !tbaa !43
  %tobool6.not = icmp eq %struct.bio_st* %call4, null
  br i1 %tobool6.not, label %cleanup, label %sw.epilog

sw.bb9:                                           ; preds = %if.then, %if.then
  %ndef_bio10 = getelementptr inbounds i8, i8* %exarg, i64 8
  %5 = bitcast i8* %ndef_bio10 to %struct.bio_st**
  %6 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !tbaa !43
  %call11 = tail call i32 @CMS_dataFinal(%struct.CMS_ContentInfo_st* noundef %1, %struct.bio_st* noundef %6) #5
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %cleanup, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb3, %if.then
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb3, %sw.bb, %entry, %sw.epilog
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 1, %entry ], [ 0, %sw.bb ], [ 0, %sw.bb3 ], [ 0, %sw.bb9 ]
  ret i32 %retval.0
}

declare i32 @CMS_stream(i8*** noundef, %struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #3

declare %struct.bio_st* @CMS_dataInit(%struct.CMS_ContentInfo_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare i32 @CMS_dataFinal(%struct.CMS_ContentInfo_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @CMS_ReceiptsFrom_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CMS_ReceiptsFrom_it.local_it
}

declare %struct.ASN1_ITEM_st* @GENERAL_NAMES_it() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !10, i64 8, !11, i64 16}
!9 = !{!"int", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!8, !10, i64 8}
!13 = !{!8, !9, i64 4}
!14 = !{!8, !11, i64 16}
!15 = !{!16, !10, i64 0}
!16 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!17 = !{!16, !10, i64 8}
!18 = !{!16, !10, i64 16}
!19 = !{!10, !10, i64 0}
!20 = !{!21, !10, i64 64}
!21 = !{!"CMS_SignerInfo_st", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!22 = !{!21, !10, i64 56}
!23 = !{!21, !10, i64 72}
!24 = !{!25, !10, i64 16}
!25 = !{!"CMS_RecipientEncryptedKey_st", !10, i64 0, !10, i64 8, !10, i64 16}
!26 = !{!27, !10, i64 48}
!27 = !{!"CMS_KeyAgreeRecipientInfo_st", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!28 = !{!27, !10, i64 40}
!29 = !{!30, !9, i64 0}
!30 = !{!"CMS_RecipientInfo_st", !9, i64 0, !5, i64 8}
!31 = !{!32, !10, i64 40}
!32 = !{!"CMS_KeyTransRecipientInfo_st", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!33 = !{!32, !10, i64 32}
!34 = !{!32, !10, i64 48}
!35 = !{!36, !10, i64 32}
!36 = !{!"CMS_KEKRecipientInfo_st", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !10, i64 48}
!37 = !{!36, !11, i64 40}
!38 = !{!39, !10, i64 32}
!39 = !{!"CMS_PasswordRecipientInfo_st", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !10, i64 48}
!40 = !{!39, !11, i64 40}
!41 = !{!42, !10, i64 0}
!42 = !{!"ASN1_STREAM_ARG_st", !10, i64 0, !10, i64 8, !10, i64 16}
!43 = !{!42, !10, i64 8}
