; ModuleID = 'crypto/cmp/cmp_asn.c'
source_filename = "crypto/cmp/cmp_asn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ADB_st = type { i64, i64, i32 (i64*)*, %struct.ASN1_ADB_TABLE_st*, i64, %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st* }
%struct.ASN1_ADB_TABLE_st = type { i64, %struct.ASN1_TEMPLATE_st }
%struct.ossl_cmp_revanncontent_st = type { %struct.asn1_string_st*, %struct.ossl_crmf_certid_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION* }
%struct.ossl_crmf_certid_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ossl_cmp_challenge_st = type { %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_cmp_cakeyupdanncontent_st = type { %struct.x509_st*, %struct.x509_st*, %struct.x509_st* }
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
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
%struct.ASIdentifierChoice_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_cmp_errormsgcontent_st = type { %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING* }
%struct.ossl_cmp_pkisi_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.ossl_cmp_itav_st = type { %struct.asn1_object_st*, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.stack_st = type opaque
%struct.ossl_cmp_certorenccert_st = type { i32, %union.anon.3 }
%union.anon.3 = type { %struct.x509_st* }
%struct.ossl_cmp_certifiedkeypair_st = type { %struct.ossl_cmp_certorenccert_st*, %struct.ossl_crmf_encryptedvalue_st*, %struct.ossl_crmf_pkipublicationinfo_st* }
%struct.ossl_crmf_encryptedvalue_st = type opaque
%struct.ossl_crmf_pkipublicationinfo_st = type opaque
%struct.ossl_cmp_revdetails_st = type { %struct.ossl_crmf_certtemplate_st*, %struct.stack_st_X509_EXTENSION* }
%struct.ossl_crmf_certtemplate_st = type opaque
%struct.ossl_cmp_revrepcontent_st = type { %struct.stack_st_OSSL_CMP_PKISI*, %struct.stack_st_OSSL_CRMF_CERTID*, %struct.stack_st_X509_CRL* }
%struct.stack_st_OSSL_CMP_PKISI = type opaque
%struct.stack_st_OSSL_CRMF_CERTID = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.ossl_cmp_keyrecrepcontent_st = type { %struct.ossl_cmp_pkisi_st*, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_OSSL_CMP_CERTIFIEDKEYPAIR* }
%struct.stack_st_X509 = type opaque
%struct.stack_st_OSSL_CMP_CERTIFIEDKEYPAIR = type opaque
%struct.ossl_cmp_certstatus_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st* }
%struct.ossl_cmp_certresponse_st = type { %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_certifiedkeypair_st*, %struct.asn1_string_st* }
%struct.ossl_cmp_pollreq_st = type { %struct.asn1_string_st* }
%struct.ossl_cmp_pollrep_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING* }
%struct.ossl_cmp_certrepmessage_st = type { %struct.stack_st_X509*, %struct.stack_st_OSSL_CMP_CERTRESPONSE* }
%struct.stack_st_OSSL_CMP_CERTRESPONSE = type opaque
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.5 }
%union.anon.5 = type { i8* }
%struct.ossl_cmp_protectedpart_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st* }
%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }

@OSSL_CMP_REVANNCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([5 x %struct.ASN1_TEMPLATE_st], [5 x %struct.ASN1_TEMPLATE_st]* bitcast ([5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_REVANNCONTENT_seq_tt to [5 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 5, i8* null, i64 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [23 x i8] c"OSSL_CMP_REVANNCONTENT\00", align 1
@OSSL_CMP_CHALLENGE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_CHALLENGE_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"OSSL_CMP_CHALLENGE\00", align 1
@OSSL_CMP_POPODECKEYCHALLCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @OSSL_CMP_POPODECKEYCHALLCONTENT_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"OSSL_CMP_POPODECKEYCHALLCONTENT\00", align 1
@OSSL_CMP_POPODECKEYRESPCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @OSSL_CMP_POPODECKEYRESPCONTENT_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"OSSL_CMP_POPODECKEYRESPCONTENT\00", align 1
@OSSL_CMP_CAKEYUPDANNCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_CAKEYUPDANNCONTENT_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"OSSL_CMP_CAKEYUPDANNCONTENT\00", align 1
@OSSL_CMP_ERRORMSGCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_ERRORMSGCONTENT_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0) }, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"OSSL_CMP_ERRORMSGCONTENT\00", align 1
@OSSL_CMP_ITAV_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_ITAV_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0) }, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"OSSL_CMP_ITAV\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"crypto/cmp/cmp_asn.c\00", align 1
@__func__.OSSL_CMP_ITAV_push0_stack_item = private unnamed_addr constant [31 x i8] c"OSSL_CMP_ITAV_push0_stack_item\00", align 1
@__func__.ossl_cmp_asn1_get_int = private unnamed_addr constant [22 x i8] c"ossl_cmp_asn1_get_int\00", align 1
@OSSL_CMP_CERTORENCCERT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_CERTORENCCERT_ch_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0) }, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"OSSL_CMP_CERTORENCCERT\00", align 1
@OSSL_CMP_CERTIFIEDKEYPAIR_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_CERTIFIEDKEYPAIR_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0) }, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"OSSL_CMP_CERTIFIEDKEYPAIR\00", align 1
@OSSL_CMP_REVDETAILS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_REVDETAILS_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0) }, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"OSSL_CMP_REVDETAILS\00", align 1
@OSSL_CMP_REVREQCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @OSSL_CMP_REVREQCONTENT_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0) }, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"OSSL_CMP_REVREQCONTENT\00", align 1
@OSSL_CMP_REVREPCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_REVREPCONTENT_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0) }, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"OSSL_CMP_REVREPCONTENT\00", align 1
@OSSL_CMP_KEYRECREPCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_KEYRECREPCONTENT_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0) }, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"OSSL_CMP_KEYRECREPCONTENT\00", align 1
@OSSL_CMP_PKISTATUS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @OSSL_CMP_PKISTATUS_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0) }, align 8
@.str.14 = private unnamed_addr constant [19 x i8] c"OSSL_CMP_PKISTATUS\00", align 1
@OSSL_CMP_PKISI_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_PKISI_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0) }, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"OSSL_CMP_PKISI\00", align 1
@OSSL_CMP_CERTSTATUS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_CERTSTATUS_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0) }, align 8
@.str.16 = private unnamed_addr constant [20 x i8] c"OSSL_CMP_CERTSTATUS\00", align 1
@OSSL_CMP_CERTCONFIRMCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @OSSL_CMP_CERTCONFIRMCONTENT_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0) }, align 8
@.str.17 = private unnamed_addr constant [28 x i8] c"OSSL_CMP_CERTCONFIRMCONTENT\00", align 1
@OSSL_CMP_CERTRESPONSE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_CERTRESPONSE_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0) }, align 8
@.str.18 = private unnamed_addr constant [22 x i8] c"OSSL_CMP_CERTRESPONSE\00", align 1
@OSSL_CMP_POLLREQ_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([1 x %struct.ASN1_TEMPLATE_st], [1 x %struct.ASN1_TEMPLATE_st]* bitcast ([1 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_POLLREQ_seq_tt to [1 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 1, i8* null, i64 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0) }, align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"OSSL_CMP_POLLREQ\00", align 1
@OSSL_CMP_POLLREQCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @OSSL_CMP_POLLREQCONTENT_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0) }, align 8
@.str.20 = private unnamed_addr constant [24 x i8] c"OSSL_CMP_POLLREQCONTENT\00", align 1
@OSSL_CMP_POLLREP_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_POLLREP_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0) }, align 8
@.str.21 = private unnamed_addr constant [17 x i8] c"OSSL_CMP_POLLREP\00", align 1
@OSSL_CMP_POLLREPCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @OSSL_CMP_POLLREPCONTENT_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0) }, align 8
@.str.22 = private unnamed_addr constant [24 x i8] c"OSSL_CMP_POLLREPCONTENT\00", align 1
@OSSL_CMP_CERTREPMESSAGE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_CERTREPMESSAGE_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0) }, align 8
@.str.23 = private unnamed_addr constant [24 x i8] c"OSSL_CMP_CERTREPMESSAGE\00", align 1
@OSSL_CMP_GENMSGCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @OSSL_CMP_GENMSGCONTENT_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0) }, align 8
@.str.24 = private unnamed_addr constant [23 x i8] c"OSSL_CMP_GENMSGCONTENT\00", align 1
@OSSL_CMP_GENREPCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @OSSL_CMP_GENREPCONTENT_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0) }, align 8
@.str.25 = private unnamed_addr constant [23 x i8] c"OSSL_CMP_GENREPCONTENT\00", align 1
@OSSL_CMP_CRLANNCONTENT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @OSSL_CMP_CRLANNCONTENT_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0) }, align 8
@.str.26 = private unnamed_addr constant [23 x i8] c"OSSL_CMP_CRLANNCONTENT\00", align 1
@OSSL_CMP_PKIBODY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([27 x %struct.ASN1_TEMPLATE_st], [27 x %struct.ASN1_TEMPLATE_st]* bitcast ([27 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_PKIBODY_ch_tt to [27 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 27, i8* null, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0) }, align 8
@.str.27 = private unnamed_addr constant [17 x i8] c"OSSL_CMP_PKIBODY\00", align 1
@OSSL_CMP_PKIHEADER_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([12 x %struct.ASN1_TEMPLATE_st], [12 x %struct.ASN1_TEMPLATE_st]* bitcast ([12 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_PKIHEADER_seq_tt to [12 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 12, i8* null, i64 96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0) }, align 8
@.str.28 = private unnamed_addr constant [19 x i8] c"OSSL_CMP_PKIHEADER\00", align 1
@OSSL_CMP_PROTECTEDPART_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_PROTECTEDPART_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0) }, align 8
@.str.29 = private unnamed_addr constant [23 x i8] c"OSSL_CMP_PROTECTEDPART\00", align 1
@OSSL_CMP_MSG_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OSSL_CMP_MSG_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* bitcast (%struct.ASN1_AUX_st* @OSSL_CMP_MSG_aux to i8*), i64 48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0) }, align 8
@OSSL_CMP_MSG_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @ossl_cmp_msg_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.30 = private unnamed_addr constant [13 x i8] c"OSSL_CMP_MSG\00", align 1
@OSSL_CMP_MSGS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @OSSL_CMP_MSGS_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0) }, align 8
@.str.31 = private unnamed_addr constant [14 x i8] c"OSSL_CMP_MSGS\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"certId\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"willBeRevokedAt\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"badSinceDate\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"crlDetails\00", align 1
@OSSL_CMP_REVANNCONTENT_seq_tt = internal constant [5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_CERTID_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_EXTENSIONS_it }], align 16
@.str.38 = private unnamed_addr constant [4 x i8] c"owf\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"witness\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"challenge\00", align 1
@OSSL_CMP_CHALLENGE_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@OSSL_CMP_POPODECKEYCHALLCONTENT_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CHALLENGE_it }, align 8
@OSSL_CMP_POPODECKEYRESPCONTENT_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, align 8
@.str.44 = private unnamed_addr constant [11 x i8] c"oldWithNew\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"newWithOld\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"newWithNew\00", align 1
@OSSL_CMP_CAKEYUPDANNCONTENT_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }], align 16
@.str.48 = private unnamed_addr constant [14 x i8] c"pKIStatusInfo\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"errorCode\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"errorDetails\00", align 1
@OSSL_CMP_ERRORMSGCONTENT_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_PKISI_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it }], align 16
@.str.52 = private unnamed_addr constant [9 x i8] c"infoType\00", align 1
@OSSL_CMP_ITAV_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 256, i64 -1, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_ITAV_adb }], align 16
@OSSL_CMP_ITAV_adb.internal_adb = internal constant %struct.ASN1_ADB_st { i64 0, i64 0, i32 (i64*)* null, %struct.ASN1_ADB_TABLE_st* getelementptr inbounds ([14 x %struct.ASN1_ADB_TABLE_st], [14 x %struct.ASN1_ADB_TABLE_st]* bitcast ([14 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }]* @OSSL_CMP_ITAV_adbtbl to [14 x %struct.ASN1_ADB_TABLE_st]*), i32 0, i32 0), i64 14, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @infotypeandvalue_default_tt to %struct.ASN1_TEMPLATE_st*), %struct.ASN1_TEMPLATE_st* null }, align 8
@.str.54 = private unnamed_addr constant [24 x i8] c"infoValue.caProtEncCert\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"infoValue.signKeyPairTypes\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"infoValue.encKeyPairTypes\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"infoValue.preferredSymmAlg\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"infoValue.caKeyUpdateInfo\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"infoValue.currentCRL\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"infoValue.unsupportedOIDs\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"infoValue.keyPairParamReq\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"infoValue.keyPairParamRep\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"infoValue.revPassphrase\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"infoValue.implicitConfirm\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"infoValue.confirmWaitTime\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"infoValue.origPKIMessage\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"infoValue.suppLangTagsValue\00", align 1
@OSSL_CMP_ITAV_adbtbl = internal constant [14 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }] [{ i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 298, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 299, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 300, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 301, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 302, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CAKEYUPDANNCONTENT_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 303, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_CRL_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 304, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 307, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 308, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.62, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 309, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_ENCRYPTEDVALUE_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 310, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_NULL_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 311, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 312, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_MSGS_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 784, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it } }], align 16
@.str.69 = private unnamed_addr constant [16 x i8] c"infoValue.other\00", align 1
@infotypeandvalue_default_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, align 8
@.str.71 = private unnamed_addr constant [18 x i8] c"value.certificate\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"value.encryptedCert\00", align 1
@OSSL_CMP_CERTORENCCERT_ch_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 1, i64 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.72, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_ENCRYPTEDVALUE_it }], align 16
@.str.74 = private unnamed_addr constant [14 x i8] c"certOrEncCert\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"privateKey\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"publicationInfo\00", align 1
@OSSL_CMP_CERTIFIEDKEYPAIR_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CERTORENCCERT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_ENCRYPTEDVALUE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 1, i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_PKIPUBLICATIONINFO_it }], align 16
@.str.78 = private unnamed_addr constant [12 x i8] c"certDetails\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"crlEntryDetails\00", align 1
@OSSL_CMP_REVDETAILS_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_CERTTEMPLATE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_EXTENSIONS_it }], align 16
@OSSL_CMP_REVREQCONTENT_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_REVDETAILS_it }, align 8
@.str.82 = private unnamed_addr constant [9 x i8] c"revCerts\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"crls\00", align 1
@OSSL_CMP_REVREPCONTENT_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_PKISI_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_CERTID_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 1, i64 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_CRL_it }], align 16
@.str.85 = private unnamed_addr constant [11 x i8] c"newSigCert\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"caCerts\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"keyPairHist\00", align 1
@OSSL_CMP_KEYRECREPCONTENT_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_PKISI_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 1, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 2, i64 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CERTIFIEDKEYPAIR_it }], align 16
@OSSL_CMP_PKISTATUS_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, align 8
@.str.90 = private unnamed_addr constant [13 x i8] c"statusString\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"failInfo\00", align 1
@OSSL_CMP_PKISI_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_PKISTATUS_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16
@.str.93 = private unnamed_addr constant [9 x i8] c"certHash\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"certReqId\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"statusInfo\00", align 1
@OSSL_CMP_CERTSTATUS_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_PKISI_it }], align 16
@OSSL_CMP_CERTCONFIRMCONTENT_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CERTSTATUS_it }, align 8
@.str.98 = private unnamed_addr constant [17 x i8] c"certifiedKeyPair\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"rspInfo\00", align 1
@OSSL_CMP_CERTRESPONSE_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_PKISI_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CERTIFIEDKEYPAIR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@OSSL_CMP_POLLREQ_seq_tt = internal constant [1 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@OSSL_CMP_POLLREQCONTENT_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_POLLREQ_it }, align 8
@.str.103 = private unnamed_addr constant [11 x i8] c"checkAfter\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@OSSL_CMP_POLLREP_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it }], align 16
@OSSL_CMP_POLLREPCONTENT_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_POLLREP_it }, align 8
@.str.107 = private unnamed_addr constant [7 x i8] c"caPubs\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@OSSL_CMP_CERTREPMESSAGE_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 1, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CERTRESPONSE_it }], align 16
@OSSL_CMP_GENMSGCONTENT_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_ITAV_it }, align 8
@OSSL_CMP_GENREPCONTENT_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_ITAV_it }, align 8
@OSSL_CMP_CRLANNCONTENT_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_CRL_it }, align 8
@.str.113 = private unnamed_addr constant [9 x i8] c"value.ir\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"value.ip\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"value.cr\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"value.cp\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"value.p10cr\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"value.popdecc\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"value.popdecr\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"value.kur\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"value.kup\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"value.krr\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"value.krp\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"value.rr\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"value.rp\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"value.ccr\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"value.ccp\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"value.ckuann\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"value.cann\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"value.rann\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"value.crlann\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"value.pkiconf\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"value.nested\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"value.genm\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"value.genp\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"value.error\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"value.certConf\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"value.pollReq\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"value.pollRep\00", align 1
@OSSL_CMP_PKIBODY_ch_tt = internal constant [27 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_MSGS_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 1, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CERTREPMESSAGE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 2, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_MSGS_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 3, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CERTREPMESSAGE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 4, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_REQ_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 5, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_POPODECKEYCHALLCONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 6, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_POPODECKEYRESPCONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 7, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_MSGS_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 8, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CERTREPMESSAGE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 9, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_MSGS_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 10, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_KEYRECREPCONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 11, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.124, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_REVREQCONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 12, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_REVREPCONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 13, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CRMF_MSGS_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 14, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CERTREPMESSAGE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 15, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.128, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CAKEYUPDANNCONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 16, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.129, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 17, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_REVANNCONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 18, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.131, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CRLANNCONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 19, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.132, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 20, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_MSGS_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 21, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_GENMSGCONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 22, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.135, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_GENREPCONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 23, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.136, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_ERRORMSGCONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 24, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.137, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_CERTCONFIRMCONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 25, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.138, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_POLLREQCONTENT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 26, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_POLLREPCONTENT_it }], align 16
@.str.141 = private unnamed_addr constant [5 x i8] c"pvno\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"sender\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"recipient\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"messageTime\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"protectionAlg\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"senderKID\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"recipKID\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c"transactionID\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"senderNonce\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"recipNonce\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"freeText\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"generalInfo\00", align 1
@OSSL_CMP_PKIHEADER_seq_tt = internal constant [12 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.144, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 1, i64 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.145, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 2, i64 40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.146, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 3, i64 48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.147, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 4, i64 56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.148, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 5, i64 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 6, i64 72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.150, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 7, i64 80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.151, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 8, i64 88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_ITAV_it }], align 16
@.str.154 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@OSSL_CMP_PROTECTEDPART_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.154, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_PKIHEADER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_PKIBODY_it }], align 16
@.str.157 = private unnamed_addr constant [11 x i8] c"protection\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"extraCerts\00", align 1
@OSSL_CMP_MSG_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.154, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_PKIHEADER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_PKIBODY_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.157, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 1, i64 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.158, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }], align 16
@OSSL_CMP_MSGS_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OSSL_CMP_MSG_it }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_REVANNCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_REVANNCONTENT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_revanncontent_st* @d2i_OSSL_CMP_REVANNCONTENT(%struct.ossl_cmp_revanncontent_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_revanncontent_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_REVANNCONTENT_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_revanncontent_st*
  ret %struct.ossl_cmp_revanncontent_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_REVANNCONTENT(%struct.ossl_cmp_revanncontent_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_revanncontent_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_REVANNCONTENT_it.local_it) #6
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_revanncontent_st* @OSSL_CMP_REVANNCONTENT_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_REVANNCONTENT_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_revanncontent_st*
  ret %struct.ossl_cmp_revanncontent_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_REVANNCONTENT_free(%struct.ossl_cmp_revanncontent_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_revanncontent_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_REVANNCONTENT_it.local_it) #6
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_CHALLENGE_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_CHALLENGE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_challenge_st* @d2i_OSSL_CMP_CHALLENGE(%struct.ossl_cmp_challenge_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_challenge_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CHALLENGE_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_challenge_st*
  ret %struct.ossl_cmp_challenge_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_CHALLENGE(%struct.ossl_cmp_challenge_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_challenge_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CHALLENGE_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_challenge_st* @OSSL_CMP_CHALLENGE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CHALLENGE_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_challenge_st*
  ret %struct.ossl_cmp_challenge_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_CHALLENGE_free(%struct.ossl_cmp_challenge_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_challenge_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CHALLENGE_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_POPODECKEYCHALLCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_POPODECKEYCHALLCONTENT_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_POPODECKEYRESPCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_POPODECKEYRESPCONTENT_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_CAKEYUPDANNCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_CAKEYUPDANNCONTENT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_cakeyupdanncontent_st* @d2i_OSSL_CMP_CAKEYUPDANNCONTENT(%struct.ossl_cmp_cakeyupdanncontent_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_cakeyupdanncontent_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CAKEYUPDANNCONTENT_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_cakeyupdanncontent_st*
  ret %struct.ossl_cmp_cakeyupdanncontent_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_CAKEYUPDANNCONTENT(%struct.ossl_cmp_cakeyupdanncontent_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_cakeyupdanncontent_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CAKEYUPDANNCONTENT_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_cakeyupdanncontent_st* @OSSL_CMP_CAKEYUPDANNCONTENT_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CAKEYUPDANNCONTENT_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_cakeyupdanncontent_st*
  ret %struct.ossl_cmp_cakeyupdanncontent_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_CAKEYUPDANNCONTENT_free(%struct.ossl_cmp_cakeyupdanncontent_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_cakeyupdanncontent_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CAKEYUPDANNCONTENT_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_ERRORMSGCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_ERRORMSGCONTENT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_errormsgcontent_st* @d2i_OSSL_CMP_ERRORMSGCONTENT(%struct.ossl_cmp_errormsgcontent_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_errormsgcontent_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_ERRORMSGCONTENT_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_errormsgcontent_st*
  ret %struct.ossl_cmp_errormsgcontent_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_ERRORMSGCONTENT(%struct.ossl_cmp_errormsgcontent_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_errormsgcontent_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_ERRORMSGCONTENT_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_errormsgcontent_st* @OSSL_CMP_ERRORMSGCONTENT_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_ERRORMSGCONTENT_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_errormsgcontent_st*
  ret %struct.ossl_cmp_errormsgcontent_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_ERRORMSGCONTENT_free(%struct.ossl_cmp_errormsgcontent_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_errormsgcontent_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_ERRORMSGCONTENT_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_ITAV_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_ITAV_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_itav_st* @d2i_OSSL_CMP_ITAV(%struct.ossl_cmp_itav_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_itav_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_ITAV_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_itav_st*
  ret %struct.ossl_cmp_itav_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_ITAV(%struct.ossl_cmp_itav_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_itav_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_ITAV_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_ITAV_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_itav_st*
  ret %struct.ossl_cmp_itav_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_itav_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_ITAV_it.local_it) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_dup(%struct.ossl_cmp_itav_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_itav_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_ITAV_it.local_it, i8* noundef %0) #6
  %1 = bitcast i8* %call1 to %struct.ossl_cmp_itav_st*
  ret %struct.ossl_cmp_itav_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_create(%struct.asn1_object_st* noundef %type, %struct.asn1_type_st* noundef %value) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.asn1_object_st* %type, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_new() #7
  %cmp1 = icmp eq %struct.ossl_cmp_itav_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @OSSL_CMP_ITAV_set0(%struct.ossl_cmp_itav_st* noundef nonnull %call, %struct.asn1_object_st* noundef nonnull %type, %struct.asn1_type_st* noundef %value) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.ossl_cmp_itav_st* [ %call, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.ossl_cmp_itav_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_CMP_ITAV_set0(%struct.ossl_cmp_itav_st* nocapture noundef writeonly %itav, %struct.asn1_object_st* noundef %type, %struct.asn1_type_st* noundef %value) local_unnamed_addr #4 {
entry:
  %infoType = getelementptr inbounds %struct.ossl_cmp_itav_st, %struct.ossl_cmp_itav_st* %itav, i64 0, i32 0
  store %struct.asn1_object_st* %type, %struct.asn1_object_st** %infoType, align 8, !tbaa !4
  %infoValue = getelementptr inbounds %struct.ossl_cmp_itav_st, %struct.ossl_cmp_itav_st* %itav, i64 0, i32 1
  %other = bitcast %union.anon.1* %infoValue to %struct.asn1_type_st**
  store %struct.asn1_type_st* %value, %struct.asn1_type_st** %other, align 8, !tbaa !9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_object_st* @OSSL_CMP_ITAV_get0_type(%struct.ossl_cmp_itav_st* noundef readonly %itav) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_itav_st* %itav, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %infoType = getelementptr inbounds %struct.ossl_cmp_itav_st, %struct.ossl_cmp_itav_st* %itav, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %infoType, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.asn1_object_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.asn1_object_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_type_st* @OSSL_CMP_ITAV_get0_value(%struct.ossl_cmp_itav_st* noundef readonly %itav) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_itav_st* %itav, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %infoValue = getelementptr inbounds %struct.ossl_cmp_itav_st, %struct.ossl_cmp_itav_st* %itav, i64 0, i32 1
  %other = bitcast %union.anon.1* %infoValue to %struct.asn1_type_st**
  %0 = load %struct.asn1_type_st*, %struct.asn1_type_st** %other, align 8, !tbaa !9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.asn1_type_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.asn1_type_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_ITAV_push0_stack_item(%struct.stack_st_OSSL_CMP_ITAV** noundef %itav_sk_p, %struct.ossl_cmp_itav_st* noundef %itav) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st_OSSL_CMP_ITAV** %itav_sk_p, null
  %cmp1 = icmp eq %struct.ossl_cmp_itav_st* %itav, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_CMP_ITAV_push0_stack_item, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %itav_sk_p, align 8, !tbaa !10
  %cmp2 = icmp eq %struct.stack_st_OSSL_CMP_ITAV* %0, null
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %1 = bitcast %struct.stack_st_OSSL_CMP_ITAV** %itav_sk_p to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !10
  %cmp4 = icmp eq %struct.stack_st* %call, null
  %2 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_CMP_ITAV*
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  %3 = phi %struct.stack_st_OSSL_CMP_ITAV* [ %2, %if.then3 ], [ %0, %if.end ]
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %3) #7
  %4 = bitcast %struct.ossl_cmp_itav_st* %itav to i8*
  %call10 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call8, i8* noundef %4) #6
  %tobool.not = icmp ne i32 %call10, 0
  %cmp2.not = xor i1 %cmp2, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp2.not
  %.mux = zext i1 %tobool.not to i32
  br i1 %brmerge, label %cleanup, label %if.then14

if.then14:                                        ; preds = %if.end7
  %5 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %itav_sk_p, align 8, !tbaa !10
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %5) #7
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call15) #6
  store %struct.stack_st_OSSL_CMP_ITAV* null, %struct.stack_st_OSSL_CMP_ITAV** %itav_sk_p, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3, %if.then, %if.then14
  %retval.0 = phi i32 [ %.mux, %if.end7 ], [ 0, %if.then14 ], [ 0, %if.then ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_ITAV* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_asn1_get_int(%struct.asn1_string_st* noundef %a) local_unnamed_addr #1 {
entry:
  %res = alloca i64, align 8
  %0 = bitcast i64* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = call i32 @ASN1_INTEGER_get_int64(i64* noundef nonnull %res, %struct.asn1_string_st* noundef %a) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_cmp_asn1_get_int, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 187, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %res, align 8, !tbaa !11
  %cmp = icmp slt i64 %1, -2147483648
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_cmp_asn1_get_int, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 224, i8* noundef null) #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %cmp3 = icmp sgt i64 %1, 2147483647
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_cmp_asn1_get_int, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 223, i8* noundef null) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %conv = trunc i64 %1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then1, %if.then
  %retval.0 = phi i32 [ -1, %if.then1 ], [ -1, %if.then4 ], [ %conv, %if.end5 ], [ -1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare i32 @ASN1_INTEGER_get_int64(i64* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_CERTORENCCERT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_CERTORENCCERT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_certorenccert_st* @d2i_OSSL_CMP_CERTORENCCERT(%struct.ossl_cmp_certorenccert_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certorenccert_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTORENCCERT_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_certorenccert_st*
  ret %struct.ossl_cmp_certorenccert_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_CERTORENCCERT(%struct.ossl_cmp_certorenccert_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certorenccert_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTORENCCERT_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_certorenccert_st* @OSSL_CMP_CERTORENCCERT_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTORENCCERT_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_certorenccert_st*
  ret %struct.ossl_cmp_certorenccert_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_CERTORENCCERT_free(%struct.ossl_cmp_certorenccert_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certorenccert_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTORENCCERT_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_CERTIFIEDKEYPAIR_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_CERTIFIEDKEYPAIR_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_certifiedkeypair_st* @d2i_OSSL_CMP_CERTIFIEDKEYPAIR(%struct.ossl_cmp_certifiedkeypair_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certifiedkeypair_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTIFIEDKEYPAIR_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_certifiedkeypair_st*
  ret %struct.ossl_cmp_certifiedkeypair_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_CERTIFIEDKEYPAIR(%struct.ossl_cmp_certifiedkeypair_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certifiedkeypair_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTIFIEDKEYPAIR_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_certifiedkeypair_st* @OSSL_CMP_CERTIFIEDKEYPAIR_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTIFIEDKEYPAIR_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_certifiedkeypair_st*
  ret %struct.ossl_cmp_certifiedkeypair_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_CERTIFIEDKEYPAIR_free(%struct.ossl_cmp_certifiedkeypair_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certifiedkeypair_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTIFIEDKEYPAIR_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_REVDETAILS_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_REVDETAILS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_revdetails_st* @d2i_OSSL_CMP_REVDETAILS(%struct.ossl_cmp_revdetails_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_revdetails_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_REVDETAILS_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_revdetails_st*
  ret %struct.ossl_cmp_revdetails_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_REVDETAILS(%struct.ossl_cmp_revdetails_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_revdetails_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_REVDETAILS_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_revdetails_st* @OSSL_CMP_REVDETAILS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_REVDETAILS_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_revdetails_st*
  ret %struct.ossl_cmp_revdetails_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_REVDETAILS_free(%struct.ossl_cmp_revdetails_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_revdetails_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_REVDETAILS_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_REVREQCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_REVREQCONTENT_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_REVREPCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_REVREPCONTENT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_revrepcontent_st* @d2i_OSSL_CMP_REVREPCONTENT(%struct.ossl_cmp_revrepcontent_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_revrepcontent_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_REVREPCONTENT_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_revrepcontent_st*
  ret %struct.ossl_cmp_revrepcontent_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_REVREPCONTENT(%struct.ossl_cmp_revrepcontent_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_revrepcontent_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_REVREPCONTENT_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_revrepcontent_st* @OSSL_CMP_REVREPCONTENT_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_REVREPCONTENT_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_revrepcontent_st*
  ret %struct.ossl_cmp_revrepcontent_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_REVREPCONTENT_free(%struct.ossl_cmp_revrepcontent_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_revrepcontent_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_REVREPCONTENT_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_KEYRECREPCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_KEYRECREPCONTENT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_keyrecrepcontent_st* @d2i_OSSL_CMP_KEYRECREPCONTENT(%struct.ossl_cmp_keyrecrepcontent_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_keyrecrepcontent_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_KEYRECREPCONTENT_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_keyrecrepcontent_st*
  ret %struct.ossl_cmp_keyrecrepcontent_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_KEYRECREPCONTENT(%struct.ossl_cmp_keyrecrepcontent_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_keyrecrepcontent_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_KEYRECREPCONTENT_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_keyrecrepcontent_st* @OSSL_CMP_KEYRECREPCONTENT_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_KEYRECREPCONTENT_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_keyrecrepcontent_st*
  ret %struct.ossl_cmp_keyrecrepcontent_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_KEYRECREPCONTENT_free(%struct.ossl_cmp_keyrecrepcontent_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_keyrecrepcontent_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_KEYRECREPCONTENT_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_PKISTATUS_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_PKISTATUS_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_PKISI_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_PKISI_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pkisi_st* @d2i_OSSL_CMP_PKISI(%struct.ossl_cmp_pkisi_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pkisi_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PKISI_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_pkisi_st*
  ret %struct.ossl_cmp_pkisi_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_PKISI(%struct.ossl_cmp_pkisi_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pkisi_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PKISI_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PKISI_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_pkisi_st*
  ret %struct.ossl_cmp_pkisi_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pkisi_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PKISI_it.local_it) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_dup(%struct.ossl_cmp_pkisi_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pkisi_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PKISI_it.local_it, i8* noundef %0) #6
  %1 = bitcast i8* %call1 to %struct.ossl_cmp_pkisi_st*
  ret %struct.ossl_cmp_pkisi_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_CERTSTATUS_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_CERTSTATUS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_certstatus_st* @d2i_OSSL_CMP_CERTSTATUS(%struct.ossl_cmp_certstatus_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certstatus_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTSTATUS_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_certstatus_st*
  ret %struct.ossl_cmp_certstatus_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_CERTSTATUS(%struct.ossl_cmp_certstatus_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certstatus_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTSTATUS_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_certstatus_st* @OSSL_CMP_CERTSTATUS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTSTATUS_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_certstatus_st*
  ret %struct.ossl_cmp_certstatus_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_CERTSTATUS_free(%struct.ossl_cmp_certstatus_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certstatus_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTSTATUS_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_CERTCONFIRMCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_CERTCONFIRMCONTENT_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_CERTRESPONSE_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_CERTRESPONSE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_certresponse_st* @d2i_OSSL_CMP_CERTRESPONSE(%struct.ossl_cmp_certresponse_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certresponse_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTRESPONSE_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_certresponse_st*
  ret %struct.ossl_cmp_certresponse_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_CERTRESPONSE(%struct.ossl_cmp_certresponse_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certresponse_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTRESPONSE_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_certresponse_st* @OSSL_CMP_CERTRESPONSE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTRESPONSE_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_certresponse_st*
  ret %struct.ossl_cmp_certresponse_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_CERTRESPONSE_free(%struct.ossl_cmp_certresponse_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certresponse_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTRESPONSE_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_POLLREQ_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_POLLREQ_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pollreq_st* @d2i_OSSL_CMP_POLLREQ(%struct.ossl_cmp_pollreq_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pollreq_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_POLLREQ_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_pollreq_st*
  ret %struct.ossl_cmp_pollreq_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_POLLREQ(%struct.ossl_cmp_pollreq_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pollreq_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_POLLREQ_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pollreq_st* @OSSL_CMP_POLLREQ_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_POLLREQ_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_pollreq_st*
  ret %struct.ossl_cmp_pollreq_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_POLLREQ_free(%struct.ossl_cmp_pollreq_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pollreq_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_POLLREQ_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_POLLREQCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_POLLREQCONTENT_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_POLLREP_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_POLLREP_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pollrep_st* @d2i_OSSL_CMP_POLLREP(%struct.ossl_cmp_pollrep_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pollrep_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_POLLREP_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_pollrep_st*
  ret %struct.ossl_cmp_pollrep_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_POLLREP(%struct.ossl_cmp_pollrep_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pollrep_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_POLLREP_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pollrep_st* @OSSL_CMP_POLLREP_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_POLLREP_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_pollrep_st*
  ret %struct.ossl_cmp_pollrep_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_POLLREP_free(%struct.ossl_cmp_pollrep_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pollrep_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_POLLREP_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_POLLREPCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_POLLREPCONTENT_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_CERTREPMESSAGE_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_CERTREPMESSAGE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_certrepmessage_st* @d2i_OSSL_CMP_CERTREPMESSAGE(%struct.ossl_cmp_certrepmessage_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certrepmessage_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTREPMESSAGE_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_certrepmessage_st*
  ret %struct.ossl_cmp_certrepmessage_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_CERTREPMESSAGE(%struct.ossl_cmp_certrepmessage_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certrepmessage_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTREPMESSAGE_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_certrepmessage_st* @OSSL_CMP_CERTREPMESSAGE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTREPMESSAGE_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_certrepmessage_st*
  ret %struct.ossl_cmp_certrepmessage_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_CERTREPMESSAGE_free(%struct.ossl_cmp_certrepmessage_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_certrepmessage_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_CERTREPMESSAGE_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_GENMSGCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_GENMSGCONTENT_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_GENREPCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_GENREPCONTENT_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_CRLANNCONTENT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_CRLANNCONTENT_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_PKIBODY_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_PKIBODY_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pkibody_st* @d2i_OSSL_CMP_PKIBODY(%struct.ossl_cmp_pkibody_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pkibody_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PKIBODY_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_pkibody_st*
  ret %struct.ossl_cmp_pkibody_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_PKIBODY(%struct.ossl_cmp_pkibody_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pkibody_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PKIBODY_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pkibody_st* @OSSL_CMP_PKIBODY_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PKIBODY_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_pkibody_st*
  ret %struct.ossl_cmp_pkibody_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_PKIBODY_free(%struct.ossl_cmp_pkibody_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pkibody_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PKIBODY_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_PKIHEADER_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_PKIHEADER_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pkiheader_st* @d2i_OSSL_CMP_PKIHEADER(%struct.ossl_cmp_pkiheader_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pkiheader_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PKIHEADER_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_pkiheader_st*
  ret %struct.ossl_cmp_pkiheader_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_PKIHEADER(%struct.ossl_cmp_pkiheader_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pkiheader_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PKIHEADER_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pkiheader_st* @OSSL_CMP_PKIHEADER_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PKIHEADER_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_pkiheader_st*
  ret %struct.ossl_cmp_pkiheader_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_PKIHEADER_free(%struct.ossl_cmp_pkiheader_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_pkiheader_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PKIHEADER_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_PROTECTEDPART_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_PROTECTEDPART_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_protectedpart_st* @d2i_OSSL_CMP_PROTECTEDPART(%struct.ossl_cmp_protectedpart_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_protectedpart_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PROTECTEDPART_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_protectedpart_st*
  ret %struct.ossl_cmp_protectedpart_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OSSL_CMP_PROTECTEDPART(%struct.ossl_cmp_protectedpart_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_protectedpart_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PROTECTEDPART_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_protectedpart_st* @OSSL_CMP_PROTECTEDPART_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PROTECTEDPART_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ossl_cmp_protectedpart_st*
  ret %struct.ossl_cmp_protectedpart_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_PROTECTEDPART_free(%struct.ossl_cmp_protectedpart_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_protectedpart_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_PROTECTEDPART_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_MSG_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_MSG_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ossl_cmp_msg_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @OSSL_CMP_MSG_it.local_it, i8* noundef %0) #6
  %1 = bitcast i8* %call1 to %struct.ossl_cmp_msg_st*
  ret %struct.ossl_cmp_msg_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OSSL_CMP_MSGS_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OSSL_CMP_MSGS_it.local_it
}

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare %struct.ASN1_ITEM_st* @OSSL_CRMF_CERTID_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_GENERALIZEDTIME_it() #2

declare %struct.ASN1_ITEM_st* @X509_EXTENSIONS_it() #2

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare %struct.ASN1_ITEM_st* @X509_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_UTF8STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ASN1_ITEM_st* @OSSL_CMP_ITAV_adb() #0 {
entry:
  ret %struct.ASN1_ITEM_st* bitcast (%struct.ASN1_ADB_st* @OSSL_CMP_ITAV_adb.internal_adb to %struct.ASN1_ITEM_st*)
}

declare %struct.ASN1_ITEM_st* @X509_CRL_it() #2

declare %struct.ASN1_ITEM_st* @OSSL_CRMF_ENCRYPTEDVALUE_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_NULL_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_ANY_it() #2

declare %struct.ASN1_ITEM_st* @OSSL_CRMF_PKIPUBLICATIONINFO_it() #2

declare %struct.ASN1_ITEM_st* @OSSL_CRMF_CERTTEMPLATE_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #2

declare %struct.ASN1_ITEM_st* @OSSL_CRMF_MSGS_it() #2

declare %struct.ASN1_ITEM_st* @X509_REQ_it() #2

declare %struct.ASN1_ITEM_st* @GENERAL_NAME_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ossl_cmp_msg_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef %exarg) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.ossl_cmp_msg_st**
  %1 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %0, align 8, !tbaa !10
  switch i32 %operation, label %sw.epilog [
    i32 3, label %sw.bb
    i32 15, label %sw.bb1
    i32 16, label %sw.bb3
    i32 17, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %propq = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %1, i64 0, i32 5
  %2 = load i8*, i8** %propq, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 noundef 218) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %libctx = getelementptr inbounds i8, i8* %exarg, i64 32
  %3 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %3, align 8, !tbaa !15
  %propq2 = getelementptr inbounds i8, i8* %exarg, i64 40
  %5 = bitcast i8* %propq2 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !13
  %call = tail call i32 @ossl_cmp_msg_set0_libctx(%struct.ossl_cmp_msg_st* noundef %1, %struct.ossl_lib_ctx_st* noundef %4, i8* noundef %6) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup9, label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %7 = bitcast i8* %exarg to %struct.ossl_lib_ctx_st**
  %libctx5 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %1, i64 0, i32 4
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx5, align 8, !tbaa !15
  store %struct.ossl_lib_ctx_st* %8, %struct.ossl_lib_ctx_st** %7, align 8, !tbaa !10
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %9 = bitcast i8* %exarg to i8**
  %propq8 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %1, i64 0, i32 5
  %10 = load i8*, i8** %propq8, align 8, !tbaa !13
  store i8* %10, i8** %9, align 8, !tbaa !10
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb1, %sw.bb6, %sw.bb3, %sw.bb
  br label %cleanup9

cleanup9:                                         ; preds = %sw.bb1, %sw.epilog
  %retval.1 = phi i32 [ 1, %sw.epilog ], [ 0, %sw.bb1 ]
  ret i32 %retval.1
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_msg_set0_libctx(%struct.ossl_cmp_msg_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_cmp_itav_st", !6, i64 0, !7, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !6, i64 40}
!14 = !{!"ossl_cmp_msg_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!15 = !{!14, !6, i64 32}
