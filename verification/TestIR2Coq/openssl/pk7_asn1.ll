; ModuleID = 'crypto/pkcs7/pk7_asn1.c'
source_filename = "crypto/pkcs7/pk7_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ADB_st = type { i64, i64, i32 (i64*)*, %struct.ASN1_ADB_TABLE_st*, i64, %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st* }
%struct.ASN1_ADB_TABLE_st = type { i64, %struct.ASN1_TEMPLATE_st }
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.pkcs7_signed_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ALGOR = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.stack_st_PKCS7_SIGNER_INFO = type opaque
%struct.pkcs7_signer_info_st = type { %struct.asn1_string_st*, %struct.pkcs7_issuer_and_serial_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.evp_pkey_st*, %struct.PKCS7_CTX_st* }
%struct.pkcs7_issuer_and_serial_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.evp_pkey_st = type opaque
%struct.pkcs7_enveloped_st = type { %struct.asn1_string_st*, %struct.stack_st_PKCS7_RECIP_INFO*, %struct.pkcs7_enc_content_st* }
%struct.stack_st_PKCS7_RECIP_INFO = type opaque
%struct.pkcs7_enc_content_st = type { %struct.asn1_object_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_cipher_st*, %struct.PKCS7_CTX_st* }
%struct.evp_cipher_st = type opaque
%struct.pkcs7_recip_info_st = type { %struct.asn1_string_st*, %struct.pkcs7_issuer_and_serial_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.x509_st*, %struct.PKCS7_CTX_st* }
%struct.x509_st = type opaque
%struct.pkcs7_signedandenveloped_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_enc_content_st*, %struct.stack_st_PKCS7_RECIP_INFO* }
%struct.pkcs7_encrypted_st = type { %struct.asn1_string_st*, %struct.pkcs7_enc_content_st* }
%struct.pkcs7_digest_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.pkcs7_st*, %struct.asn1_string_st* }
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type opaque

@PKCS7_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS7_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* bitcast (%struct.ASN1_AUX_st* @PKCS7_aux to i8*), i64 56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0) }, align 8
@PKCS7_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @pk7_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"PKCS7\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"crypto/pkcs7/pk7_asn1.c\00", align 1
@__func__.PKCS7_new_ex = private unnamed_addr constant [13 x i8] c"PKCS7_new_ex\00", align 1
@PKCS7_SIGNED_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([6 x %struct.ASN1_TEMPLATE_st], [6 x %struct.ASN1_TEMPLATE_st]* bitcast ([6 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS7_SIGNED_seq_tt to [6 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 6, i8* null, i64 48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"PKCS7_SIGNED\00", align 1
@PKCS7_SIGNER_INFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([7 x %struct.ASN1_TEMPLATE_st], [7 x %struct.ASN1_TEMPLATE_st]* bitcast ([7 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS7_SIGNER_INFO_seq_tt to [7 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 7, i8* bitcast (%struct.ASN1_AUX_st* @PKCS7_SIGNER_INFO_aux to i8*), i64 72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0) }, align 8
@PKCS7_SIGNER_INFO_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @si_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"PKCS7_SIGNER_INFO\00", align 1
@PKCS7_ISSUER_AND_SERIAL_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS7_ISSUER_AND_SERIAL_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"PKCS7_ISSUER_AND_SERIAL\00", align 1
@PKCS7_ENVELOPE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS7_ENVELOPE_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"PKCS7_ENVELOPE\00", align 1
@PKCS7_RECIP_INFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS7_RECIP_INFO_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* bitcast (%struct.ASN1_AUX_st* @PKCS7_RECIP_INFO_aux to i8*), i64 48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0) }, align 8
@PKCS7_RECIP_INFO_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @ri_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"PKCS7_RECIP_INFO\00", align 1
@PKCS7_ENC_CONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS7_ENC_CONTENT_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0) }, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"PKCS7_ENC_CONTENT\00", align 1
@PKCS7_SIGN_ENVELOPE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([7 x %struct.ASN1_TEMPLATE_st], [7 x %struct.ASN1_TEMPLATE_st]* bitcast ([7 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS7_SIGN_ENVELOPE_seq_tt to [7 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 7, i8* null, i64 56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0) }, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"PKCS7_SIGN_ENVELOPE\00", align 1
@PKCS7_ENCRYPT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS7_ENCRYPT_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0) }, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"PKCS7_ENCRYPT\00", align 1
@PKCS7_DIGEST_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 6, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS7_DIGEST_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0) }, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"PKCS7_DIGEST\00", align 1
@PKCS7_ATTR_SIGN_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @PKCS7_ATTR_SIGN_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0) }, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"PKCS7_ATTR_SIGN\00", align 1
@PKCS7_ATTR_VERIFY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @PKCS7_ATTR_VERIFY_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0) }, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"PKCS7_ATTR_VERIFY\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@PKCS7_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 256, i64 -1, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_adb }], align 16
@PKCS7_adb.internal_adb = internal constant %struct.ASN1_ADB_st { i64 0, i64 24, i32 (i64*)* null, %struct.ASN1_ADB_TABLE_st* getelementptr inbounds ([6 x %struct.ASN1_ADB_TABLE_st], [6 x %struct.ASN1_ADB_TABLE_st]* bitcast ([6 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }]* @PKCS7_adbtbl to [6 x %struct.ASN1_ADB_TABLE_st]*), i32 0, i32 0), i64 6, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @p7default_tt to %struct.ASN1_TEMPLATE_st*), %struct.ASN1_TEMPLATE_st* null }, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"d.data\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"d.sign\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"d.enveloped\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"d.signed_and_enveloped\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"d.digest\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"d.encrypted\00", align 1
@PKCS7_adbtbl = internal constant [6 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }] [{ i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 21, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2193, i64 0, i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_NDEF_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 22, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2193, i64 0, i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_SIGNED_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 23, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2193, i64 0, i64 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_ENVELOPE_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 24, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2193, i64 0, i64 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_SIGN_ENVELOPE_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 25, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2193, i64 0, i64 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_DIGEST_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 26, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2193, i64 0, i64 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_ENCRYPT_it } }], align 16
@.str.22 = private unnamed_addr constant [8 x i8] c"d.other\00", align 1
@p7default_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, align 8
@.str.24 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"md_algs\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"contents\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"crl\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"signer_info\00", align 1
@PKCS7_SIGNED_seq_tt = internal constant [6 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 141, i64 0, i64 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 1, i64 24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_CRL_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_SIGNER_INFO_it }], align 16
@.str.31 = private unnamed_addr constant [18 x i8] c"issuer_and_serial\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"digest_alg\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"auth_attr\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"digest_enc_alg\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"enc_digest\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"unauth_attr\00", align 1
@PKCS7_SIGNER_INFO_seq_tt = internal constant [7 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_ISSUER_AND_SERIAL_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 141, i64 0, i64 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 1, i64 48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }], align 16
@.str.38 = private unnamed_addr constant [7 x i8] c"issuer\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@PKCS7_ISSUER_AND_SERIAL_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str.41 = private unnamed_addr constant [14 x i8] c"recipientinfo\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"enc_data\00", align 1
@PKCS7_ENVELOPE_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_RECIP_INFO_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_ENC_CONTENT_it }], align 16
@.str.44 = private unnamed_addr constant [14 x i8] c"key_enc_algor\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"enc_key\00", align 1
@PKCS7_RECIP_INFO_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_ISSUER_AND_SERIAL_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@.str.47 = private unnamed_addr constant [13 x i8] c"content_type\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@PKCS7_ENC_CONTENT_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 0, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_NDEF_it }], align 16
@PKCS7_SIGN_ENVELOPE_seq_tt = internal constant [7 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_RECIP_INFO_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_ENC_CONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 0, i64 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 1, i64 24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_CRL_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_SIGNER_INFO_it }], align 16
@PKCS7_ENCRYPT_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_ENC_CONTENT_it }], align 16
@.str.52 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@PKCS7_DIGEST_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@.str.55 = private unnamed_addr constant [17 x i8] c"PKCS7_ATTRIBUTES\00", align 1
@PKCS7_ATTR_SIGN_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 6, i64 0, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }, align 8
@PKCS7_ATTR_VERIFY_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 12, i64 17, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS7_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS7_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @d2i_PKCS7(%struct.pkcs7_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.pkcs7_st** %a, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.pkcs7_st*, %struct.pkcs7_st** %a, align 8, !tbaa !4
  %cmp1.not = icmp eq %struct.pkcs7_st* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %libctx2 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %0, i64 0, i32 6, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx2, align 8, !tbaa !8
  %propq4 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %0, i64 0, i32 6, i32 1
  %2 = load i8*, i8** %propq4, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %libctx.0 = phi %struct.ossl_lib_ctx_st* [ %1, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %propq.0 = phi i8* [ %2, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %3 = bitcast %struct.pkcs7_st** %a to %struct.ASN1_VALUE_st**
  %call5 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef %3, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_it.local_it, %struct.ossl_lib_ctx_st* noundef %libctx.0, i8* noundef %propq.0) #3
  %4 = bitcast %struct.ASN1_VALUE_st* %call5 to %struct.pkcs7_st*
  %cmp6.not = icmp eq %struct.ASN1_VALUE_st* %call5, null
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  tail call void @ossl_pkcs7_resolve_libctx(%struct.pkcs7_st* noundef nonnull %4) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  ret %struct.pkcs7_st* %4
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @ossl_pkcs7_resolve_libctx(%struct.pkcs7_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7(%struct.pkcs7_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_it.local_it) #3
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @PKCS7_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS7_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_st*
  ret %struct.pkcs7_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @PKCS7_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new_ex(%struct.ASN1_ITEM_st* noundef nonnull @PKCS7_it.local_it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_st*
  %cmp.not = icmp eq %struct.ASN1_VALUE_st* %call1, null
  br i1 %cmp.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %libctx2 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %0, i64 0, i32 6, i32 0
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx2, align 8, !tbaa !8
  %propq4 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %0, i64 0, i32 6, i32 1
  store i8* null, i8** %propq4, align 8, !tbaa !13
  %cmp5.not = icmp eq i8* %propq, null
  br i1 %cmp5.not, label %if.end15, label %if.then6

if.then6:                                         ; preds = %if.then
  %call7 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 103) #3
  store i8* %call7, i8** %propq4, align 8, !tbaa !13
  %cmp12 = icmp eq i8* %call7, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then6
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef nonnull %0) #4
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_new_ex, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 57, i32 noundef 786688, i8* noundef null) #3
  br label %if.end15

if.end15:                                         ; preds = %if.then, %if.then13, %if.then6, %entry
  %pkcs7.0 = phi %struct.pkcs7_st* [ null, %if.then13 ], [ %0, %if.then6 ], [ %0, %if.then ], [ null, %entry ]
  ret %struct.pkcs7_st* %pkcs7.0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new_ex(%struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @PKCS7_free(%struct.pkcs7_st* noundef %p7) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.pkcs7_st* %p7, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %propq = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 6, i32 1
  %0 = load i8*, i8** %propq, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 117) #3
  %1 = bitcast %struct.pkcs7_st* %p7 to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef nonnull %1, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_it.local_it) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7_NDEF(%struct.pkcs7_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_ndef_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_it.local_it) #3
  ret i32 %call1
}

declare i32 @ASN1_item_ndef_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @PKCS7_dup(%struct.pkcs7_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @PKCS7_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.pkcs7_st*
  ret %struct.pkcs7_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS7_SIGNED_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS7_SIGNED_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_signed_st* @d2i_PKCS7_SIGNED(%struct.pkcs7_signed_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_signed_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_SIGNED_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_signed_st*
  ret %struct.pkcs7_signed_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7_SIGNED(%struct.pkcs7_signed_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_signed_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_SIGNED_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_signed_st* @PKCS7_SIGNED_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS7_SIGNED_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_signed_st*
  ret %struct.pkcs7_signed_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PKCS7_SIGNED_free(%struct.pkcs7_signed_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_signed_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_SIGNED_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS7_SIGNER_INFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS7_SIGNER_INFO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_signer_info_st* @d2i_PKCS7_SIGNER_INFO(%struct.pkcs7_signer_info_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_signer_info_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_SIGNER_INFO_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_signer_info_st*
  ret %struct.pkcs7_signer_info_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7_SIGNER_INFO(%struct.pkcs7_signer_info_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_signer_info_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_SIGNER_INFO_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_signer_info_st* @PKCS7_SIGNER_INFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS7_SIGNER_INFO_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_signer_info_st*
  ret %struct.pkcs7_signer_info_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PKCS7_SIGNER_INFO_free(%struct.pkcs7_signer_info_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_signer_info_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_SIGNER_INFO_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS7_ISSUER_AND_SERIAL_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS7_ISSUER_AND_SERIAL_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_issuer_and_serial_st* @d2i_PKCS7_ISSUER_AND_SERIAL(%struct.pkcs7_issuer_and_serial_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_issuer_and_serial_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ISSUER_AND_SERIAL_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_issuer_and_serial_st*
  ret %struct.pkcs7_issuer_and_serial_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7_ISSUER_AND_SERIAL(%struct.pkcs7_issuer_and_serial_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_issuer_and_serial_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ISSUER_AND_SERIAL_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_issuer_and_serial_st* @PKCS7_ISSUER_AND_SERIAL_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ISSUER_AND_SERIAL_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_issuer_and_serial_st*
  ret %struct.pkcs7_issuer_and_serial_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PKCS7_ISSUER_AND_SERIAL_free(%struct.pkcs7_issuer_and_serial_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_issuer_and_serial_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ISSUER_AND_SERIAL_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS7_ENVELOPE_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS7_ENVELOPE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_enveloped_st* @d2i_PKCS7_ENVELOPE(%struct.pkcs7_enveloped_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_enveloped_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ENVELOPE_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_enveloped_st*
  ret %struct.pkcs7_enveloped_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7_ENVELOPE(%struct.pkcs7_enveloped_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_enveloped_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ENVELOPE_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_enveloped_st* @PKCS7_ENVELOPE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ENVELOPE_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_enveloped_st*
  ret %struct.pkcs7_enveloped_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PKCS7_ENVELOPE_free(%struct.pkcs7_enveloped_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_enveloped_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ENVELOPE_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS7_RECIP_INFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS7_RECIP_INFO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_recip_info_st* @d2i_PKCS7_RECIP_INFO(%struct.pkcs7_recip_info_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_recip_info_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_RECIP_INFO_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_recip_info_st*
  ret %struct.pkcs7_recip_info_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7_RECIP_INFO(%struct.pkcs7_recip_info_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_recip_info_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_RECIP_INFO_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_recip_info_st* @PKCS7_RECIP_INFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS7_RECIP_INFO_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_recip_info_st*
  ret %struct.pkcs7_recip_info_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PKCS7_RECIP_INFO_free(%struct.pkcs7_recip_info_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_recip_info_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_RECIP_INFO_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS7_ENC_CONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS7_ENC_CONTENT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_enc_content_st* @d2i_PKCS7_ENC_CONTENT(%struct.pkcs7_enc_content_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_enc_content_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ENC_CONTENT_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_enc_content_st*
  ret %struct.pkcs7_enc_content_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7_ENC_CONTENT(%struct.pkcs7_enc_content_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_enc_content_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ENC_CONTENT_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_enc_content_st* @PKCS7_ENC_CONTENT_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ENC_CONTENT_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_enc_content_st*
  ret %struct.pkcs7_enc_content_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PKCS7_ENC_CONTENT_free(%struct.pkcs7_enc_content_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_enc_content_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ENC_CONTENT_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS7_SIGN_ENVELOPE_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS7_SIGN_ENVELOPE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_signedandenveloped_st* @d2i_PKCS7_SIGN_ENVELOPE(%struct.pkcs7_signedandenveloped_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_signedandenveloped_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_SIGN_ENVELOPE_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_signedandenveloped_st*
  ret %struct.pkcs7_signedandenveloped_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7_SIGN_ENVELOPE(%struct.pkcs7_signedandenveloped_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_signedandenveloped_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_SIGN_ENVELOPE_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_signedandenveloped_st* @PKCS7_SIGN_ENVELOPE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS7_SIGN_ENVELOPE_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_signedandenveloped_st*
  ret %struct.pkcs7_signedandenveloped_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PKCS7_SIGN_ENVELOPE_free(%struct.pkcs7_signedandenveloped_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_signedandenveloped_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_SIGN_ENVELOPE_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS7_ENCRYPT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS7_ENCRYPT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_encrypted_st* @d2i_PKCS7_ENCRYPT(%struct.pkcs7_encrypted_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_encrypted_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ENCRYPT_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_encrypted_st*
  ret %struct.pkcs7_encrypted_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7_ENCRYPT(%struct.pkcs7_encrypted_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_encrypted_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ENCRYPT_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_encrypted_st* @PKCS7_ENCRYPT_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ENCRYPT_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_encrypted_st*
  ret %struct.pkcs7_encrypted_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PKCS7_ENCRYPT_free(%struct.pkcs7_encrypted_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_encrypted_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_ENCRYPT_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS7_DIGEST_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS7_DIGEST_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_digest_st* @d2i_PKCS7_DIGEST(%struct.pkcs7_digest_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_digest_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_DIGEST_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_digest_st*
  ret %struct.pkcs7_digest_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7_DIGEST(%struct.pkcs7_digest_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_digest_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_DIGEST_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_digest_st* @PKCS7_DIGEST_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS7_DIGEST_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs7_digest_st*
  ret %struct.pkcs7_digest_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PKCS7_DIGEST_free(%struct.pkcs7_digest_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_digest_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_DIGEST_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS7_ATTR_SIGN_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS7_ATTR_SIGN_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS7_ATTR_VERIFY_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS7_ATTR_VERIFY_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_print_ctx(%struct.bio_st* noundef %out, %struct.pkcs7_st* noundef %x, i32 noundef %indent, %struct.asn1_pctx_st* noundef %pctx) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs7_st* %x to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_print(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %0, i32 noundef %indent, %struct.ASN1_ITEM_st* noundef nonnull @PKCS7_it.local_it, %struct.asn1_pctx_st* noundef %pctx) #3
  ret i32 %call1
}

declare i32 @ASN1_item_print(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ASN1_ITEM_st* @PKCS7_adb() #0 {
entry:
  ret %struct.ASN1_ITEM_st* bitcast (%struct.ASN1_ADB_st* @PKCS7_adb.internal_adb to %struct.ASN1_ITEM_st*)
}

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_NDEF_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_ANY_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @pk7_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* noundef %exarg) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.pkcs7_st**
  switch i32 %operation, label %sw.epilog [
    i32 10, label %sw.bb
    i32 12, label %sw.bb1
    i32 11, label %sw.bb6
    i32 13, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %boundary = getelementptr inbounds i8, i8* %exarg, i64 16
  %1 = bitcast i8* %boundary to i8***
  %2 = load %struct.pkcs7_st*, %struct.pkcs7_st** %0, align 8, !tbaa !4
  %call = tail call i32 @PKCS7_stream(i8*** noundef nonnull %1, %struct.pkcs7_st* noundef %2) #3
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry
  %3 = load %struct.pkcs7_st*, %struct.pkcs7_st** %0, align 8, !tbaa !4
  %out = bitcast i8* %exarg to %struct.bio_st**
  %4 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !14
  %call2 = tail call %struct.bio_st* @PKCS7_dataInit(%struct.pkcs7_st* noundef %3, %struct.bio_st* noundef %4) #3
  %ndef_bio = getelementptr inbounds i8, i8* %exarg, i64 8
  %5 = bitcast i8* %ndef_bio to %struct.bio_st**
  store %struct.bio_st* %call2, %struct.bio_st** %5, align 8, !tbaa !16
  %tobool.not = icmp eq %struct.bio_st* %call2, null
  br i1 %tobool.not, label %cleanup, label %sw.epilog

sw.bb6:                                           ; preds = %entry, %entry
  %6 = load %struct.pkcs7_st*, %struct.pkcs7_st** %0, align 8, !tbaa !4
  %ndef_bio7 = getelementptr inbounds i8, i8* %exarg, i64 8
  %7 = bitcast i8* %ndef_bio7 to %struct.bio_st**
  %8 = load %struct.bio_st*, %struct.bio_st** %7, align 8, !tbaa !16
  %call8 = tail call i32 @PKCS7_dataFinal(%struct.pkcs7_st* noundef %6, %struct.bio_st* noundef %8) #3
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %cleanup, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb1, %entry
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb1, %sw.bb, %sw.epilog
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %sw.bb ], [ 0, %sw.bb1 ], [ 0, %sw.bb6 ]
  ret i32 %retval.0
}

declare i32 @PKCS7_stream(i8*** noundef, %struct.pkcs7_st* noundef) local_unnamed_addr #2

declare %struct.bio_st* @PKCS7_dataInit(%struct.pkcs7_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @PKCS7_dataFinal(%struct.pkcs7_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @X509_it() #2

declare %struct.ASN1_ITEM_st* @X509_CRL_it() #2

declare %struct.ASN1_ITEM_st* @X509_ATTRIBUTE_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @si_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  %cmp = icmp eq i32 %operation, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.pkcs7_signer_info_st**
  %1 = load %struct.pkcs7_signer_info_st*, %struct.pkcs7_signer_info_st** %0, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %1, i64 0, i32 7
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !17
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @X509_NAME_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ri_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  %cmp = icmp eq i32 %operation, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.pkcs7_recip_info_st**
  %1 = load %struct.pkcs7_recip_info_st*, %struct.pkcs7_recip_info_st** %0, align 8, !tbaa !4
  %cert = getelementptr inbounds %struct.pkcs7_recip_info_st, %struct.pkcs7_recip_info_st* %1, i64 0, i32 4
  %2 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !19
  tail call void @X509_free(%struct.x509_st* noundef %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 40}
!9 = !{!"pkcs7_st", !5, i64 0, !10, i64 8, !11, i64 16, !11, i64 20, !5, i64 24, !6, i64 32, !12, i64 40}
!10 = !{!"long", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!"PKCS7_CTX_st", !5, i64 0, !5, i64 8}
!13 = !{!9, !5, i64 48}
!14 = !{!15, !5, i64 0}
!15 = !{!"ASN1_STREAM_ARG_st", !5, i64 0, !5, i64 8, !5, i64 16}
!16 = !{!15, !5, i64 8}
!17 = !{!18, !5, i64 56}
!18 = !{!"pkcs7_signer_info_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64}
!19 = !{!20, !5, i64 32}
!20 = !{!"pkcs7_recip_info_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
