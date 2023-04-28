; ModuleID = 'crypto/cmp/cmp_vfy.c'
source_filename = "crypto/cmp/cmp_vfy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_cmp_ctx_st = type { %struct.ossl_lib_ctx_st*, i8*, i32 (i8*, i8*, i32, i32, i8*)*, i32, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, i8*, %struct.ossl_http_req_ctx_st*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i64, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_name_st*, %struct.x509_store_st*, %struct.stack_st_X509*, i32, i32, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.evp_pkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, %struct.evp_md_st*, i32, i32, %struct.X509_name_st*, %struct.evp_md_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_OSSL_CMP_ITAV*, i32, i32, %struct.stack_st_X509*, %struct.evp_pkey_st*, i32, %struct.X509_name_st*, i32, %struct.X509_name_st*, %struct.stack_st_GENERAL_NAME*, i32, i32, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_POLICYINFO*, i32, i32, %struct.x509_st*, %struct.X509_req_st*, i32, %struct.stack_st_OSSL_CMP_ITAV*, i32, %struct.stack_st_ASN1_UTF8STRING*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.ossl_http_req_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.evp_md_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type opaque
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st_GENERAL_NAME = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.stack_st_X509 = type opaque
%struct.x509_store_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.x509_store_ctx_st = type { %struct.x509_store_st*, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.X509_VERIFY_PARAM_st*, i8*, i32 (%struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32, i32, %struct.stack_st_X509*, %struct.X509_POLICY_TREE_st*, i32, i32, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_crl_st*, i32, i32, %struct.x509_store_ctx_st*, %struct.crypto_ex_data_st, %struct.ssl_dane_st*, i32, %struct.ossl_lib_ctx_st*, i8* }
%struct.stack_st_X509_CRL = type opaque
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.X509_POLICY_TREE_st = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.3, %struct.X509_name_st* }
%union.anon.3 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.ssl_dane_st = type opaque
%struct.ossl_cmp_certrepmessage_st = type { %struct.stack_st_X509*, %struct.stack_st_OSSL_CMP_CERTRESPONSE* }
%struct.stack_st_OSSL_CMP_CERTRESPONSE = type opaque
%struct.ossl_cmp_protectedpart_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st* }
%struct.bio_method_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.stack_st = type opaque
%struct.ossl_cmp_certresponse_st = type { %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_certifiedkeypair_st*, %struct.asn1_string_st* }
%struct.ossl_cmp_pkisi_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.ossl_cmp_certifiedkeypair_st = type { %struct.ossl_cmp_certorenccert_st*, %struct.ossl_crmf_encryptedvalue_st*, %struct.ossl_crmf_pkipublicationinfo_st* }
%struct.ossl_cmp_certorenccert_st = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.x509_st* }
%struct.ossl_crmf_encryptedvalue_st = type opaque
%struct.ossl_crmf_pkipublicationinfo_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/cmp/cmp_vfy.c\00", align 1
@__func__.OSSL_CMP_validate_cert_path = private unnamed_addr constant [28 x i8] c"OSSL_CMP_validate_cert_path\00", align 1
@__func__.OSSL_CMP_validate_msg = private unnamed_addr constant [22 x i8] c"OSSL_CMP_validate_msg\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"validating CMP message\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"WARN\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"no secret available for verifying PBM-based CMP message protection\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"sucessfully validated PBM-based CMP message protection\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"verifying PBM-based CMP message protection failed\00", align 1
@.str.8 = private unnamed_addr constant [101 x i8] c"no trust store nor pinned server cert available for verifying signature-based CMP message protection\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"sucessfully validated signature-based CMP message protection\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"CMP message signature verification failed\00", align 1
@__func__.ossl_cmp_msg_check_update = private unnamed_addr constant [26 x i8] c"ossl_cmp_msg_check_update\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"sender DN field\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"expected sender\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"received CMP message contains more than 10 extraCerts\00", align 1
@__func__.ossl_cmp_verify_popo = private unnamed_addr constant [21 x i8] c"ossl_cmp_verify_popo\00", align 1
@__func__.verify_PBMAC = private unnamed_addr constant [13 x i8] c"verify_PBMAC\00", align 1
@__func__.check_msg_find_cert = private unnamed_addr constant [20 x i8] c"check_msg_find_cert\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"trying to verify msg signature with previously validated cert\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"trying to verify msg signature with a valid cert that..\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"matches msg sender    = %s\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"matches msg senderKID = %s\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"while msg header does not contain senderKID\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"for msg sender name = \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"for msg senderKID = \00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"previously validated\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"sender cert\00", align 1
@__func__.cert_acceptable = private unnamed_addr constant [16 x i8] c"cert_acceptable\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c" considering %s%s %s with..\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"self-issued \00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"  subject = %s\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"  issuer  = %s\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c" cert has already been checked\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"cert has expired\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"cert is not yet valid\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"cert subject\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"sender field\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"cert appears to be invalid\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"msg signature verification failed\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c" cert seems acceptable\00", align 1
@__func__.check_kid = private unnamed_addr constant [10 x i8] c"check_kid\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"missing Subject Key Identifier in certificate\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c" subjectKID matches senderKID: %s\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c" cert Subject Key Identifier = %s\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c" does not match senderKID    = %s\00", align 1
@__func__.check_cert_path = private unnamed_addr constant [16 x i8] c"check_cert_path\00", align 1
@.str.42 = private unnamed_addr constant [56 x i8] c"msg signature validates but cert path validation failed\00", align 1
@__func__.check_cert_path_3gpp = private unnamed_addr constant [21 x i8] c"check_cert_path_3gpp\00", align 1
@.str.43 = private unnamed_addr constant [55 x i8] c"also exceptional 3GPP mode cert path validation failed\00", align 1
@__func__.check_msg_all_certs = private unnamed_addr constant [20 x i8] c"check_msg_all_certs\00", align 1
@.str.44 = private unnamed_addr constant [61 x i8] c"normal mode failed; trying now 3GPP mode trusting extraCerts\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"trying first normal mode using trust store\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"extraCerts\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"untrusted certs\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"no self-issued extraCerts\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"no trusted store\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"self-issued extraCerts\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"certs in trusted store\00", align 1
@__func__.check_msg_with_certs = private unnamed_addr constant [21 x i8] c"check_msg_with_certs\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"no %s\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"cert from\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"no acceptable cert in extraCerts\00", align 1
@__func__.verify_signature = private unnamed_addr constant [17 x i8] c"verify_signature\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.check_name = private unnamed_addr constant [11 x i8] c"check_name\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"missing %s\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c" subject matches %s: %s\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c" actual name in %s = %s\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c" does not match %s = %s\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_validate_cert_path(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_store_st* noundef %trusted_store, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp eq %struct.x509_st* %cert, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CMP_validate_cert_path, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.x509_store_st* %trusted_store, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CMP_validate_cert_path, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 144, i8* noundef null) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %propq = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %1 = load i8*, i8** %propq, align 8, !tbaa !11
  %call = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %1) #4
  %cmp5 = icmp eq %struct.x509_store_ctx_st* %call, null
  br i1 %cmp5, label %err21, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end4
  %untrusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 23
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !12
  %call7 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %call, %struct.x509_store_st* noundef nonnull %trusted_store, %struct.x509_st* noundef nonnull %cert, %struct.stack_st_X509* noundef %2) #4
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err21, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false6
  %call10 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef nonnull %call) #4
  %cmp11 = icmp sgt i32 %call10, 0
  %call12 = tail call i64 @ERR_peek_last_error() #4
  br i1 %cmp11, label %err21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %sext = shl i64 %call12, 32
  %conv15 = ashr exact i64 %sext, 32
  %call16 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %conv15) #5
  %cmp17.not = icmp eq i32 %call16, 147
  br i1 %cmp17.not, label %err21, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CMP_validate_cert_path, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 147, i8* noundef null) #4
  br label %err21

err21:                                            ; preds = %if.end9, %land.lhs.true, %if.then19, %if.end4, %lor.lhs.false6
  %valid.0.shrunk = phi i32 [ 0, %if.end4 ], [ 1, %if.end9 ], [ 0, %if.then19 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false6 ]
  tail call void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #4
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %err21, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ %valid.0.shrunk, %err21 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #3 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #2

declare void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_validate_msg(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %msg) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_CMP_validate_msg, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 552, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #4
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp eq %struct.ossl_cmp_msg_st* %msg, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 0
  %0 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !13
  %cmp3 = icmp eq %struct.ossl_cmp_pkiheader_st* %0, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 1
  %1 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !15
  %cmp5 = icmp eq %struct.ossl_cmp_pkibody_st* %1, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 555, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_CMP_validate_msg, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup59

if.end:                                           ; preds = %lor.lhs.false4
  %protectionAlg = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %0, i64 0, i32 4
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %protectionAlg, align 8, !tbaa !16
  %cmp7 = icmp eq %struct.X509_algor_st* %2, null
  br i1 %cmp7, label %if.then13, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %protection = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 2
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %protection, align 8, !tbaa !18
  %cmp9 = icmp eq %struct.asn1_string_st* %3, null
  br i1 %cmp9, label %if.then13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !19
  %cmp12 = icmp eq i8* %4, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false10, %lor.lhs.false8, %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 561, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_CMP_validate_msg, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 143, i8* noundef null) #4
  br label %cleanup59

if.end14:                                         ; preds = %lor.lhs.false10
  %call16 = tail call i32 @ossl_cmp_hdr_get_protection_nid(%struct.ossl_cmp_pkiheader_st* noundef nonnull %0) #4
  switch i32 %call16, label %sw.default39 [
    i32 782, label %sw.bb
    i32 783, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.end14
  %secretValue = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 31
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %secretValue, align 8, !tbaa !21
  %cmp17 = icmp eq %struct.asn1_string_st* %5, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %sw.bb
  %call19 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_CMP_validate_msg, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0)) #4
  br label %cleanup59

if.end20:                                         ; preds = %sw.bb
  %call21 = tail call fastcc i32 @verify_PBMAC(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg) #5
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end36, label %if.then22

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef nonnull %msg) #4
  switch i32 %call23, label %sw.epilog [
    i32 -1, label %cleanup59
    i32 1, label %sw.bb25
    i32 3, label %sw.bb25
    i32 8, label %sw.bb25
    i32 14, label %sw.bb25
  ]

sw.bb25:                                          ; preds = %if.then22, %if.then22, %if.then22, %if.then22
  %trusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 22
  %6 = load %struct.x509_store_st*, %struct.x509_store_st** %trusted, align 8, !tbaa !22
  %cmp26.not = icmp eq %struct.x509_store_st* %6, null
  br i1 %cmp26.not, label %sw.epilog, label %if.then27

if.then27:                                        ; preds = %sw.bb25
  %7 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !15
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %7, i64 0, i32 1
  %ip = bitcast %union.anon.1* %value to %struct.ossl_cmp_certrepmessage_st**
  %8 = load %struct.ossl_cmp_certrepmessage_st*, %struct.ossl_cmp_certrepmessage_st** %ip, align 8, !tbaa !23
  %caPubs = getelementptr inbounds %struct.ossl_cmp_certrepmessage_st, %struct.ossl_cmp_certrepmessage_st* %8, i64 0, i32 0
  %9 = load %struct.stack_st_X509*, %struct.stack_st_X509** %caPubs, align 8, !tbaa !24
  %call30 = tail call i32 @ossl_cmp_X509_STORE_add1_certs(%struct.x509_store_st* noundef nonnull %6, %struct.stack_st_X509* noundef %9, i32 noundef 0) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup59, label %sw.epilog

sw.epilog:                                        ; preds = %if.then22, %sw.bb25, %if.then27
  %call35 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_CMP_validate_msg, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 599, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0)) #4
  br label %cleanup59

if.end36:                                         ; preds = %if.end20
  %call37 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_CMP_validate_msg, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 602, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0)) #4
  br label %sw.epilog58

sw.bb38:                                          ; preds = %if.end14
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 610, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_CMP_validate_msg, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 154, i8* noundef null) #4
  br label %sw.epilog58

sw.default39:                                     ; preds = %if.end14
  %srvCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 19
  %10 = load %struct.x509_st*, %struct.x509_st** %srvCert, align 8, !tbaa !26
  %cmp40 = icmp eq %struct.x509_st* %10, null
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %sw.default39
  %trusted42 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 22
  %11 = load %struct.x509_store_st*, %struct.x509_store_st** %trusted42, align 8, !tbaa !22
  %cmp43 = icmp eq %struct.x509_store_st* %11, null
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.then41
  %call45 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_CMP_validate_msg, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 620, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.8, i64 0, i64 0)) #4
  br label %cleanup59

if.end46:                                         ; preds = %if.then41
  %call47 = tail call fastcc i32 @check_msg_find_cert(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg) #5
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %sw.epilog58, label %cleanup59

if.else:                                          ; preds = %sw.default39
  %call51 = tail call fastcc i32 @verify_signature(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg, %struct.x509_st* noundef nonnull %10) #5
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.else
  %call54 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_CMP_validate_msg, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 629, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %cleanup59

if.end55:                                         ; preds = %if.else
  %call56 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_CMP_validate_msg, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 633, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0)) #4
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 634, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_CMP_validate_msg, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 151, i8* noundef null) #4
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %if.end55, %if.end46, %sw.bb38, %if.end36
  br label %cleanup59

cleanup59:                                        ; preds = %if.end46, %if.then22, %if.then27, %sw.epilog58, %if.then53, %if.then44, %sw.epilog, %if.then18, %if.then13, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then13 ], [ 1, %if.then44 ], [ 0, %sw.epilog58 ], [ 1, %if.then53 ], [ 1, %if.then18 ], [ 1, %sw.epilog ], [ 0, %if.then27 ], [ 0, %if.then22 ], [ 1, %if.end46 ]
  ret i32 %retval.1
}

declare i32 @ossl_cmp_print_log(i32 noundef, %struct.ossl_cmp_ctx_st* noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ossl_cmp_hdr_get_protection_nid(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_PBMAC(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %msg) unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ossl_cmp_calc_protection(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %msg) #4
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %protection1 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %protection1, align 8, !tbaa !18
  %cmp2.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp2.not, label %land.end.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !27
  %cmp4 = icmp sgt i32 %1, -1
  br i1 %cmp4, label %land.lhs.true5, label %land.end.thread

land.lhs.true5:                                   ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 1
  %2 = load i32, i32* %type, align 4, !tbaa !28
  %type7 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 1
  %3 = load i32, i32* %type7, align 4, !tbaa !28
  %cmp8 = icmp eq i32 %2, %3
  br i1 %cmp8, label %land.lhs.true9, label %land.end.thread

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %length12 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 0
  %4 = load i32, i32* %length12, align 8, !tbaa !27
  %cmp13 = icmp eq i32 %1, %4
  br i1 %cmp13, label %land.end, label %land.end.thread

land.end.thread:                                  ; preds = %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %if.end
  tail call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef nonnull %call) #4
  br label %if.then20

land.end:                                         ; preds = %land.lhs.true9
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 2
  %5 = load i8*, i8** %data, align 8, !tbaa !19
  %data15 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 2
  %6 = load i8*, i8** %data15, align 8, !tbaa !19
  %conv39 = zext i32 %1 to i64
  %call17 = tail call i32 @CRYPTO_memcmp(i8* noundef %5, i8* noundef %6, i64 noundef %conv39) #4
  %cmp18 = icmp eq i32 %call17, 0
  tail call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef nonnull %call) #4
  br i1 %cmp18, label %cleanup, label %if.then20

if.then20:                                        ; preds = %land.end.thread, %land.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.verify_PBMAC, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 155, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then20, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then20 ], [ 1, %land.end ]
  ret i32 %retval.0
}

declare i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_X509_STORE_add1_certs(%struct.x509_store_st* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_msg_find_cert(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %msg) unnamed_addr #0 {
entry:
  %validatedSrvCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.x509_st*, %struct.x509_st** %validatedSrvCert, align 8, !tbaa !29
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 0
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !13
  %sender1 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %1, i64 0, i32 1
  %2 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %sender1, align 8, !tbaa !30
  %senderKID = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %1, i64 0, i32 5
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderKID, align 8, !tbaa !31
  %log_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 2
  %4 = load i32 (i8*, i8*, i32, i32, i8*)*, i32 (i8*, i8*, i32, i32, i8*)** %log_cb, align 8, !tbaa !32
  %cmp = icmp eq %struct.GENERAL_NAME_st* %2, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 1
  %5 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !15
  %cmp3 = icmp eq %struct.ossl_cmp_pkibody_st* %5, null
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %2, i64 0, i32 0
  %6 = load i32, i32* %type, align 8, !tbaa !33
  %cmp4.not = icmp eq i32 %6, 4
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 460, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.check_msg_find_cert, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 150, i8* noundef null) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #4
  %call = tail call i32 @ERR_set_mark() #4
  store i32 (i8*, i8*, i32, i32, i8*)* @no_log_cb, i32 (i8*, i8*, i32, i32, i8*)** %log_cb, align 8, !tbaa !32
  %cmp8.not = icmp eq %struct.x509_st* %0, null
  br i1 %cmp8.not, label %if.end18, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call10 = tail call fastcc i32 @check_msg_given_cert(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %0, %struct.ossl_cmp_msg_st* noundef nonnull %msg) #5
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.then9
  store i32 (i8*, i8*, i32, i32, i8*)* %4, i32 (i8*, i8*, i32, i32, i8*)** %log_cb, align 8, !tbaa !32
  %call13 = tail call i32 @ERR_pop_to_mark() #4
  br label %cleanup

if.end14:                                         ; preds = %if.then9
  %call15 = tail call i32 @ossl_cmp_ctx_set0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef null) #4
  %call16 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.check_msg_find_cert, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 485, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0)) #4
  %call17 = tail call fastcc i32 @check_msg_given_cert(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %0, %struct.ossl_cmp_msg_st* noundef nonnull %msg) #5
  br label %if.end18

if.end18:                                         ; preds = %if.end14, %if.end6
  %call19 = tail call fastcc i32 @check_msg_all_certs(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg, i32 noundef 0) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.end, label %lor.end.thread

lor.end.thread:                                   ; preds = %if.end18
  store i32 (i8*, i8*, i32, i32, i8*)* %4, i32 (i8*, i8*, i32, i32, i8*)** %log_cb, align 8, !tbaa !32
  br label %if.then25

lor.end:                                          ; preds = %if.end18
  %call21 = tail call fastcc i32 @check_msg_all_certs(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg, i32 noundef 1) #5
  %tobool22.not = icmp eq i32 %call21, 0
  store i32 (i8*, i8*, i32, i32, i8*)* %4, i32 (i8*, i8*, i32, i32, i8*)** %log_cb, align 8, !tbaa !32
  br i1 %tobool22.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %lor.end.thread, %lor.end
  %call26 = tail call i32 @ERR_pop_to_mark() #4
  br label %end

if.end27:                                         ; preds = %lor.end
  %call28 = tail call i32 @ERR_clear_last_mark() #4
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %2, i64 0, i32 1
  %directoryName = bitcast %union.anon* %d to %struct.X509_name_st**
  %7 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !23
  %call29 = tail call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %7, i8* noundef null, i32 noundef 0) #4
  %cmp30 = icmp eq %struct.asn1_string_st* %3, null
  br i1 %cmp30, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end27
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 2
  %8 = load i8*, i8** %data, align 8, !tbaa !19
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 0
  %9 = load i32, i32* %length, align 8, !tbaa !27
  %conv = sext i32 %9 to i64
  %call31 = tail call i8* @OPENSSL_buf2hexstr(i8* noundef %8, i64 noundef %conv) #4
  br label %cond.end

cond.end:                                         ; preds = %if.end27, %cond.false
  %cond = phi i8* [ %call31, %cond.false ], [ null, %if.end27 ]
  %10 = load i32 (i8*, i8*, i32, i32, i8*)*, i32 (i8*, i8*, i32, i32, i8*)** %log_cb, align 8, !tbaa !32
  %cmp33.not = icmp eq i32 (i8*, i8*, i32, i32, i8*)* %10, null
  br i1 %cmp33.not, label %if.end50, label %if.then35

if.then35:                                        ; preds = %cond.end
  %call36 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.check_msg_find_cert, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 504, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0)) #4
  %cmp37.not = icmp eq i8* %call29, null
  br i1 %cmp37.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.then35
  %call40 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.check_msg_find_cert, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 506, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %call29) #4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then35
  %cmp42.not = icmp eq i8* %cond, null
  br i1 %cmp42.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end41
  %call45 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.check_msg_find_cert, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 508, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* noundef nonnull %cond) #4
  br label %if.end47

if.else:                                          ; preds = %if.end41
  %call46 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.check_msg_find_cert, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 510, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0)) #4
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then44
  %call48 = tail call fastcc i32 @check_msg_all_certs(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg, i32 noundef 0) #5
  %call49 = tail call fastcc i32 @check_msg_all_certs(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg, i32 noundef 1) #5
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %cond.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 516, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.check_msg_find_cert, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 145, i8* noundef null) #4
  %cmp51.not = icmp eq i8* %call29, null
  br i1 %cmp51.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end50
  tail call void @ERR_add_error_txt(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0)) #4
  tail call void @ERR_add_error_txt(i8* noundef null, i8* noundef nonnull %call29) #4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %cmp55.not = icmp eq i8* %cond, null
  br i1 %cmp55.not, label %end, label %if.then57

if.then57:                                        ; preds = %if.end54
  tail call void @ERR_add_error_txt(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0)) #4
  tail call void @ERR_add_error_txt(i8* noundef null, i8* noundef nonnull %cond) #4
  br label %end

end:                                              ; preds = %if.end54, %if.then57, %if.then25
  %lor.ext117 = phi i32 [ 1, %if.then25 ], [ 0, %if.then57 ], [ 0, %if.end54 ]
  %skid_str.0 = phi i8* [ null, %if.then25 ], [ %cond, %if.then57 ], [ null, %if.end54 ]
  %sname.0 = phi i8* [ null, %if.then25 ], [ %call29, %if.then57 ], [ %call29, %if.end54 ]
  tail call void @CRYPTO_free(i8* noundef %sname.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 527) #4
  tail call void @CRYPTO_free(i8* noundef %skid_str.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 528) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %end, %if.then11, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.then11 ], [ %lor.ext117, %end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_signature(%struct.ossl_cmp_ctx_st* noundef readonly %cmp_ctx, %struct.ossl_cmp_msg_st* noundef readonly %msg, %struct.x509_st* noundef %cert) unnamed_addr #0 {
entry:
  %prot_part = alloca %struct.ossl_cmp_protectedpart_st, align 8
  %0 = bitcast %struct.ossl_cmp_protectedpart_st* %prot_part to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %cmp = icmp ne %struct.ossl_cmp_ctx_st* %cmp_ctx, null
  %cmp2 = icmp ne %struct.ossl_cmp_msg_st* %msg, null
  %or.cond = and i1 %cmp, %cmp2
  %cmp3 = icmp ne %struct.x509_st* %cert, null
  %spec.select = and i1 %or.cond, %cmp3
  br i1 %spec.select, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ignore_keyusage = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %cmp_ctx, i64 0, i32 24
  %1 = load i32, i32* %ignore_keyusage, align 8, !tbaa !35
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true5, label %if.end9

land.lhs.true5:                                   ; preds = %if.end
  %call6 = tail call i32 @X509_get_key_usage(%struct.x509_st* noundef nonnull %cert) #4
  %and = and i32 %call6, 128
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %sig_err.sink.split, label %if.end9

if.end9:                                          ; preds = %land.lhs.true5, %if.end
  %call10 = tail call %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* noundef nonnull %cert) #4
  %cmp11 = icmp eq %struct.evp_pkey_st* %call10, null
  br i1 %cmp11, label %sig_err.sink.split, label %if.end13

if.end13:                                         ; preds = %if.end9
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 0
  %2 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !13
  %header14 = getelementptr inbounds %struct.ossl_cmp_protectedpart_st, %struct.ossl_cmp_protectedpart_st* %prot_part, i64 0, i32 0
  store %struct.ossl_cmp_pkiheader_st* %2, %struct.ossl_cmp_pkiheader_st** %header14, align 8, !tbaa !36
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 1
  %3 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !15
  %body15 = getelementptr inbounds %struct.ossl_cmp_protectedpart_st, %struct.ossl_cmp_protectedpart_st* %prot_part, i64 0, i32 1
  store %struct.ossl_cmp_pkibody_st* %3, %struct.ossl_cmp_pkibody_st** %body15, align 8, !tbaa !38
  %call16 = tail call %struct.ASN1_ITEM_st* @OSSL_CMP_PROTECTEDPART_it() #4
  %4 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !13
  %protectionAlg = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %4, i64 0, i32 4
  %5 = load %struct.X509_algor_st*, %struct.X509_algor_st** %protectionAlg, align 8, !tbaa !16
  %protection = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 2
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %protection, align 8, !tbaa !18
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %cmp_ctx, i64 0, i32 0
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %propq = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %cmp_ctx, i64 0, i32 1
  %8 = load i8*, i8** %propq, align 8, !tbaa !11
  %call18 = call i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef %call16, %struct.X509_algor_st* noundef %5, %struct.asn1_string_st* noundef %6, i8* noundef nonnull %0, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef nonnull %call10, %struct.ossl_lib_ctx_st* noundef %7, i8* noundef %8) #4
  %cmp19 = icmp sgt i32 %call18, 0
  br i1 %cmp19, label %end, label %sig_err

sig_err.sink.split:                               ; preds = %if.end9, %land.lhs.true5
  %.sink48 = phi i32 [ 39, %land.lhs.true5 ], [ 45, %if.end9 ]
  %.sink = phi i32 [ 142, %land.lhs.true5 ], [ 141, %if.end9 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink48, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.verify_signature, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef %.sink, i8* noundef null) #4
  br label %sig_err

sig_err:                                          ; preds = %sig_err.sink.split, %if.end13
  %pubkey.0 = phi %struct.evp_pkey_st* [ %call10, %if.end13 ], [ null, %sig_err.sink.split ]
  %call22 = call i32 @ossl_x509_print_ex_brief(%struct.bio_st* noundef %call1, %struct.x509_st* noundef nonnull %cert, i64 noundef 256) #4
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.verify_signature, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 171, i8* noundef null) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %end, label %if.then24

if.then24:                                        ; preds = %sig_err
  call void @ERR_add_error_mem_bio(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), %struct.bio_st* noundef %call1) #4
  br label %end

end:                                              ; preds = %sig_err, %if.then24, %if.end13
  %pubkey.1 = phi %struct.evp_pkey_st* [ %call10, %if.end13 ], [ %pubkey.0, %if.then24 ], [ %pubkey.0, %sig_err ]
  %res.0 = phi i32 [ 1, %if.end13 ], [ 0, %if.then24 ], [ 0, %sig_err ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pubkey.1) #4
  %call26 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %res.0, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_msg_check_update(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %msg, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef readonly %cb, i32 noundef %cb_arg) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp ne %struct.ossl_cmp_msg_st* %msg, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %land.rhs, label %cleanup109

land.rhs:                                         ; preds = %entry
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 0
  %0 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !13
  %cmp2.not = icmp eq %struct.ossl_cmp_pkiheader_st* %0, null
  br i1 %cmp2.not, label %cleanup109, label %if.end

if.end:                                           ; preds = %land.rhs
  %call = tail call %struct.ossl_cmp_pkiheader_st* @OSSL_CMP_MSG_get0_header(%struct.ossl_cmp_msg_st* noundef nonnull %msg) #4
  %sender = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %call, i64 0, i32 1
  %1 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %sender, align 8, !tbaa !30
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %1, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !33
  %cmp4.not = icmp eq i32 %2, 4
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 674, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_cmp_msg_check_update, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 150, i8* noundef null) #4
  br label %cleanup109

if.end6:                                          ; preds = %if.end
  %expected_sender7 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 21
  %3 = load %struct.X509_name_st*, %struct.X509_name_st** %expected_sender7, align 8, !tbaa !39
  %cmp8 = icmp eq %struct.X509_name_st* %3, null
  br i1 %cmp8, label %land.lhs.true9, label %if.end14

land.lhs.true9:                                   ; preds = %if.end6
  %srvCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 19
  %4 = load %struct.x509_st*, %struct.x509_st** %srvCert, align 8, !tbaa !26
  %cmp10.not = icmp eq %struct.x509_st* %4, null
  br i1 %cmp10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %land.lhs.true9
  %call13 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %4) #4
  %.pre = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %sender, align 8, !tbaa !30
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true9, %if.end6
  %5 = phi %struct.GENERAL_NAME_st* [ %.pre, %if.then11 ], [ %1, %land.lhs.true9 ], [ %1, %if.end6 ]
  %expected_sender.0 = phi %struct.X509_name_st* [ %call13, %if.then11 ], [ null, %land.lhs.true9 ], [ %3, %if.end6 ]
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %5, i64 0, i32 1
  %directoryName = bitcast %union.anon* %d to %struct.X509_name_st**
  %6 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !23
  %call16 = tail call fastcc i32 @check_name(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), %struct.X509_name_st* noundef %6, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), %struct.X509_name_st* noundef %expected_sender.0) #5
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %cleanup109, label %if.end18

if.end18:                                         ; preds = %if.end14
  %extraCerts = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 3
  %7 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCerts, align 8, !tbaa !40
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %7) #5
  %call20 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call19) #4
  %cmp21 = icmp sgt i32 %call20, 10
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end18
  %call23 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_cmp_msg_check_update, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 692, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0)) #4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18
  %untrusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 23
  %8 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !12
  %9 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCerts, align 8, !tbaa !40
  %call26 = tail call i32 @X509_add_certs(%struct.stack_st_X509* noundef %8, %struct.stack_st_X509* noundef %9, i32 noundef 7) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup109, label %if.end29

if.end29:                                         ; preds = %if.end24
  %protectionAlg = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %call, i64 0, i32 4
  %10 = load %struct.X509_algor_st*, %struct.X509_algor_st** %protectionAlg, align 8, !tbaa !16
  %cmp30.not = icmp eq %struct.X509_algor_st* %10, null
  br i1 %cmp30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end29
  %call32 = tail call i32 @OSSL_CMP_validate_msg(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true34, label %if.end46

land.lhs.true34:                                  ; preds = %if.then31
  %cmp35 = icmp eq i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* %cb, null
  br i1 %cmp35, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true34
  %call36 = tail call i32 %cb(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg, i32 noundef 1, i32 noundef %cb_arg) #4
  %cmp37 = icmp slt i32 %call36, 1
  br i1 %cmp37, label %if.then38, label %if.end46

if.then38:                                        ; preds = %lor.lhs.false, %land.lhs.true34
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 713, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_cmp_msg_check_update, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 140, i8* noundef null) #4
  br label %cleanup109

if.else:                                          ; preds = %if.end29
  %cmp40 = icmp eq i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* %cb, null
  br i1 %cmp40, label %if.then44, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.else
  %call42 = tail call i32 %cb(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg, i32 noundef 0, i32 noundef %cb_arg) #4
  %cmp43 = icmp slt i32 %call42, 1
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %lor.lhs.false41, %if.else
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 721, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_cmp_msg_check_update, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 143, i8* noundef null) #4
  br label %cleanup109

if.end46:                                         ; preds = %lor.lhs.false41, %if.then31, %lor.lhs.false
  %call47 = tail call i32 @ossl_cmp_hdr_get_pvno(%struct.ossl_cmp_pkiheader_st* noundef nonnull %call) #4
  %cmp48.not = icmp eq i32 %call47, 2
  br i1 %cmp48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end46
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 730, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_cmp_msg_check_update, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 153, i8* noundef null) #4
  br label %cleanup109

if.end50:                                         ; preds = %if.end46
  %call51 = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef nonnull %msg) #4
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_cmp_msg_check_update, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 146, i8* noundef null) #4
  br label %cleanup109

if.end54:                                         ; preds = %if.end50
  %transactionID = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 38
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID, align 8, !tbaa !41
  %cmp55.not = icmp eq %struct.asn1_string_st* %11, null
  br i1 %cmp55.not, label %if.end65, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end54
  %transactionID57 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %call, i64 0, i32 7
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID57, align 8, !tbaa !42
  %cmp58 = icmp eq %struct.asn1_string_st* %12, null
  br i1 %cmp58, label %if.then64, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %land.lhs.true56
  %call62 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef nonnull %11, %struct.asn1_string_st* noundef nonnull %12) #4
  %cmp63.not = icmp eq i32 %call62, 0
  br i1 %cmp63.not, label %if.end65, label %if.then64

if.then64:                                        ; preds = %lor.lhs.false59, %land.lhs.true56
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 748, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_cmp_msg_check_update, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 152, i8* noundef null) #4
  br label %cleanup109

if.end65:                                         ; preds = %lor.lhs.false59, %if.end54
  %senderNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 39
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderNonce, align 8, !tbaa !43
  %cmp66.not = icmp eq %struct.asn1_string_st* %13, null
  br i1 %cmp66.not, label %if.end76, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %if.end65
  %14 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !13
  %recipNonce = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %14, i64 0, i32 9
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %recipNonce, align 8, !tbaa !44
  %cmp69 = icmp eq %struct.asn1_string_st* %15, null
  br i1 %cmp69, label %if.then75, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %land.lhs.true67
  %recipNonce72 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %call, i64 0, i32 9
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %recipNonce72, align 8, !tbaa !44
  %call73 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef nonnull %13, %struct.asn1_string_st* noundef %16) #4
  %cmp74.not = icmp eq i32 %call73, 0
  br i1 %cmp74.not, label %if.end76, label %if.then75

if.then75:                                        ; preds = %lor.lhs.false70, %land.lhs.true67
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 759, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_cmp_msg_check_update, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 148, i8* noundef null) #4
  br label %cleanup109

if.end76:                                         ; preds = %lor.lhs.false70, %if.end65
  %senderNonce77 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %call, i64 0, i32 8
  %17 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderNonce77, align 8, !tbaa !45
  %call78 = tail call i32 @ossl_cmp_ctx_set1_recipNonce(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.asn1_string_st* noundef %17) #4
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %cleanup109, label %if.end81

if.end81:                                         ; preds = %if.end76
  %18 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID, align 8, !tbaa !41
  %cmp83 = icmp eq %struct.asn1_string_st* %18, null
  br i1 %cmp83, label %land.lhs.true84, label %if.end89

land.lhs.true84:                                  ; preds = %if.end81
  %transactionID85 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %call, i64 0, i32 7
  %19 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID85, align 8, !tbaa !42
  %call86 = tail call i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.asn1_string_st* noundef %19) #4
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %cleanup109, label %if.end89

if.end89:                                         ; preds = %land.lhs.true84, %if.end81
  %20 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !12
  %21 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCerts, align 8, !tbaa !40
  %call92 = tail call i32 @X509_add_certs(%struct.stack_st_X509* noundef %20, %struct.stack_st_X509* noundef %21, i32 noundef 7) #4
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %cleanup109, label %if.end95

if.end95:                                         ; preds = %if.end89
  %call96 = tail call i32 @ossl_cmp_hdr_get_protection_nid(%struct.ossl_cmp_pkiheader_st* noundef nonnull %call) #4
  %cmp97 = icmp eq i32 %call96, 782
  br i1 %cmp97, label %if.then98, label %if.end108

if.then98:                                        ; preds = %if.end95
  %call99 = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef nonnull %msg) #4
  switch i32 %call99, label %if.end108 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 8, label %sw.bb
    i32 14, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then98, %if.then98, %if.then98, %if.then98
  %trusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 22
  %22 = load %struct.x509_store_st*, %struct.x509_store_st** %trusted, align 8, !tbaa !22
  %cmp100.not = icmp eq %struct.x509_store_st* %22, null
  br i1 %cmp100.not, label %if.end108, label %if.then101

if.then101:                                       ; preds = %sw.bb
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 1
  %23 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !15
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %23, i64 0, i32 1
  %ip = bitcast %union.anon.1* %value to %struct.ossl_cmp_certrepmessage_st**
  %24 = load %struct.ossl_cmp_certrepmessage_st*, %struct.ossl_cmp_certrepmessage_st** %ip, align 8, !tbaa !23
  %caPubs = getelementptr inbounds %struct.ossl_cmp_certrepmessage_st, %struct.ossl_cmp_certrepmessage_st* %24, i64 0, i32 0
  %25 = load %struct.stack_st_X509*, %struct.stack_st_X509** %caPubs, align 8, !tbaa !24
  %call103 = tail call i32 @ossl_cmp_X509_STORE_add1_certs(%struct.x509_store_st* noundef nonnull %22, %struct.stack_st_X509* noundef %25, i32 noundef 0) #4
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %cleanup109, label %if.end108

if.end108:                                        ; preds = %if.then101, %sw.bb, %if.then98, %if.end95
  br label %cleanup109

cleanup109:                                       ; preds = %entry, %if.end89, %land.lhs.true84, %if.end76, %if.end24, %if.end14, %land.rhs, %if.then101, %if.end108, %if.then75, %if.then64, %if.then53, %if.then49, %if.then44, %if.then38, %if.then5
  %retval.1 = phi i32 [ 0, %if.then5 ], [ 0, %if.then49 ], [ 0, %if.then53 ], [ 0, %if.then64 ], [ 0, %if.then75 ], [ 1, %if.end108 ], [ 0, %if.then101 ], [ 0, %if.then38 ], [ 0, %if.then44 ], [ 0, %land.rhs ], [ 0, %if.end14 ], [ 0, %if.end24 ], [ 0, %if.end76 ], [ -1, %land.lhs.true84 ], [ -1, %if.end89 ], [ 0, %entry ]
  ret i32 %retval.1
}

declare %struct.ossl_cmp_pkiheader_st* @OSSL_CMP_MSG_get0_header(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_name(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %log_success, i8* noundef %actual_desc, %struct.X509_name_st* noundef %actual_name, i8* noundef %expect_desc, %struct.X509_name_st* noundef %expect_name) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_name_st* %expect_name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.X509_name_st* %actual_name, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %call = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.check_name, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8* noundef %actual_desc) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef nonnull %actual_name, i8* noundef null, i32 noundef 0) #4
  %call5 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef nonnull %actual_name, %struct.X509_name_st* noundef nonnull %expect_name) #4
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end3
  %tobool = icmp ne i32 %log_success, 0
  %cmp8 = icmp ne i8* %call4, null
  %or.cond = select i1 %tobool, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then7
  %call10 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.check_name, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i64 0, i64 0), i8* noundef %expect_desc, i8* noundef nonnull %call4) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then7
  tail call void @CRYPTO_free(i8* noundef %call4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 159) #4
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %cmp13.not = icmp eq i8* %call4, null
  br i1 %cmp13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.check_name, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i64 0, i64 0), i8* noundef %actual_desc, i8* noundef nonnull %call4) #4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  tail call void @CRYPTO_free(i8* noundef %call4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 165) #4
  %call17 = tail call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef nonnull %expect_name, i8* noundef null, i32 noundef 0) #4
  %cmp18.not = icmp eq i8* %call17, null
  br i1 %cmp18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end16
  %call20 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.check_name, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i64 0, i64 0), i8* noundef %expect_desc, i8* noundef nonnull %call17) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16
  tail call void @CRYPTO_free(i8* noundef %call17, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 168) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end21, %if.end11, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end11 ], [ 0, %if.end21 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_add_certs(%struct.stack_st_X509* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_hdr_get_pvno(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_ctx_set1_recipNonce(%struct.ossl_cmp_ctx_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_verify_popo(%struct.ossl_cmp_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_cmp_msg_st* noundef readonly %msg, i32 noundef %acceptRAVerified) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_msg_st* %msg, null
  br i1 %cmp.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %entry
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 1
  %0 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !15
  %cmp1.not = icmp eq %struct.ossl_cmp_pkibody_st* %0, null
  br i1 %cmp1.not, label %return, label %if.end

if.end:                                           ; preds = %land.rhs
  %type = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !46
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb
    i32 0, label %sw.bb9
    i32 2, label %sw.bb9
    i32 7, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %0, i64 0, i32 1
  %p10cr = bitcast %union.anon.1* %value to %struct.X509_req_st**
  %2 = load %struct.X509_req_st*, %struct.X509_req_st** %p10cr, align 8, !tbaa !23
  %call = tail call %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef %2) #4
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %propq = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %4 = load i8*, i8** %propq, align 8, !tbaa !11
  %call5 = tail call i32 @X509_REQ_verify_ex(%struct.X509_req_st* noundef %2, %struct.evp_pkey_st* noundef %call, %struct.ossl_lib_ctx_st* noundef %3, i8* noundef %4) #4
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %cleanup, label %sw.epilog

cleanup:                                          ; preds = %sw.bb
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 830, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cmp_verify_popo, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 149, i8* noundef null) #4
  br label %return

sw.bb9:                                           ; preds = %if.end, %if.end, %if.end
  %ir = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %0, i64 0, i32 1, i32 0
  %5 = load %struct.stack_st_OSSL_CRMF_MSG*, %struct.stack_st_OSSL_CRMF_MSG** %ir, align 8, !tbaa !23
  %libctx12 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx12, align 8, !tbaa !4
  %propq13 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %7 = load i8*, i8** %propq13, align 8, !tbaa !11
  %call14 = tail call i32 @OSSL_CRMF_MSGS_verify_popo(%struct.stack_st_OSSL_CRMF_MSG* noundef %5, i32 noundef 0, i32 noundef %acceptRAVerified, %struct.ossl_lib_ctx_st* noundef %6, i8* noundef %7) #4
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %return, label %sw.epilog

sw.default:                                       ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 848, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cmp_verify_popo, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 146, i8* noundef null) #4
  br label %return

sw.epilog:                                        ; preds = %sw.bb, %sw.bb9
  br label %return

return:                                           ; preds = %cleanup, %entry, %sw.bb9, %land.rhs, %sw.epilog, %sw.default
  %retval.1 = phi i32 [ 0, %sw.default ], [ 1, %sw.epilog ], [ 0, %cleanup ], [ 0, %land.rhs ], [ 0, %sw.bb9 ], [ 0, %entry ]
  ret i32 %retval.1
}

declare i32 @X509_REQ_verify_ex(%struct.X509_req_st* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_CRMF_MSGS_verify_popo(%struct.stack_st_OSSL_CRMF_MSG* noundef, i32 noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ossl_cmp_calc_protection(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @no_log_cb(i8* nocapture noundef readnone %func, i8* nocapture noundef readnone %file, i32 noundef %line, i32 noundef %level, i8* nocapture noundef readnone %msg) #3 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_msg_given_cert(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_st* noundef %cert, %struct.ossl_cmp_msg_st* noundef %msg) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @cert_acceptable(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), %struct.x509_st* noundef %cert, %struct.stack_st_X509* noundef null, %struct.stack_st_X509* noundef null, %struct.ossl_cmp_msg_st* noundef %msg) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %trusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 22
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %trusted, align 8, !tbaa !22
  %call1 = tail call fastcc i32 @check_cert_path(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_store_st* noundef %0, %struct.x509_st* noundef %cert) #5
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.rhs, label %land.end

lor.rhs:                                          ; preds = %land.rhs
  %call3 = tail call fastcc i32 @check_cert_path_3gpp(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef %msg, %struct.x509_st* noundef %cert) #5
  %tobool4 = icmp ne i32 %call3, 0
  %phi.cast = zext i1 %tobool4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ 1, %land.rhs ], [ %phi.cast, %lor.rhs ]
  ret i32 %1
}

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @ossl_cmp_ctx_set0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_msg_all_certs(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %msg, i32 noundef %mode_3gpp) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %mode_3gpp, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %permitTAInExtraCertsForIR = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 25
  %0 = load i32, i32* %permitTAInExtraCertsForIR, align 4, !tbaa !48
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef %msg) #4
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %entry
  %cond = phi i8* [ getelementptr inbounds ([61 x i8], [61 x i8]* @.str.44, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i64 0, i64 0), %entry ]
  %call3 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.check_msg_all_certs, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 414, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %cond) #4
  %extraCerts = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 3
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCerts, align 8, !tbaa !40
  %call4 = tail call fastcc i32 @check_msg_with_certs(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0), %struct.stack_st_X509* noundef null, %struct.stack_st_X509* noundef null, %struct.ossl_cmp_msg_st* noundef %msg, i32 noundef %mode_3gpp) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %untrusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 23
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !12
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCerts, align 8, !tbaa !40
  %call9 = tail call fastcc i32 @check_msg_with_certs(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0), %struct.stack_st_X509* noundef %3, %struct.stack_st_X509* noundef null, %struct.ossl_cmp_msg_st* noundef nonnull %msg, i32 noundef %mode_3gpp) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end7
  %trusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 22
  %4 = load %struct.x509_store_st*, %struct.x509_store_st** %trusted, align 8, !tbaa !22
  %cmp13 = icmp eq %struct.x509_store_st* %4, null
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %cond16 = select i1 %tobool.not, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0)
  %call17 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.check_msg_all_certs, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef %cond16) #4
  br label %cleanup

if.else:                                          ; preds = %if.end12
  %call20 = tail call %struct.stack_st_X509* @X509_STORE_get1_all_certs(%struct.x509_store_st* noundef nonnull %4) #4
  %cond22 = select i1 %tobool.not, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0)
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCerts, align 8, !tbaa !40
  %6 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !12
  %call25 = tail call fastcc i32 @check_msg_with_certs(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.stack_st_X509* noundef %call20, i8* noundef %cond22, %struct.stack_st_X509* noundef %5, %struct.stack_st_X509* noundef %6, %struct.ossl_cmp_msg_st* noundef nonnull %msg, i32 noundef %mode_3gpp) #5
  %call26 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %call20) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call26, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.else, %if.end7, %if.end, %land.lhs.true, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 1, %if.end ], [ 1, %if.end7 ], [ 0, %if.then14 ], [ %call25, %if.else ]
  ret i32 %retval.0
}

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare i8* @X509_NAME_oneline(%struct.X509_name_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OPENSSL_buf2hexstr(i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @ERR_add_error_txt(i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cert_acceptable(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef %desc1, i8* noundef %desc2, %struct.x509_st* noundef %cert, %struct.stack_st_X509* noundef %already_checked1, %struct.stack_st_X509* noundef %already_checked2, %struct.ossl_cmp_msg_st* noundef %msg) unnamed_addr #0 {
entry:
  %trusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 22
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %trusted, align 8, !tbaa !22
  %call = tail call i32 @X509_check_issued(%struct.x509_st* noundef %cert, %struct.x509_st* noundef %cert) #4
  %cmp = icmp eq i32 %call, 0
  %cmp1.not = icmp eq %struct.x509_store_st* %0, null
  br i1 %cmp1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call3 = tail call %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef nonnull %0) #4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.X509_VERIFY_PARAM_st* [ %call3, %cond.true ], [ null, %entry ]
  %cond4 = select i1 %cmp, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0)
  %call5 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cert_acceptable, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8* noundef %cond4, i8* noundef %desc1, i8* noundef %desc2) #4
  %call6 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %cert) #4
  %call7 = tail call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %call6, i8* noundef null, i32 noundef 0) #4
  %cmp8.not = icmp eq i8* %call7, null
  br i1 %cmp8.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %call10 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cert_acceptable, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull %call7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  tail call void @CRYPTO_free(i8* noundef %call7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 239) #4
  br i1 %cmp, label %if.end20, label %if.then12

if.then12:                                        ; preds = %if.end
  %call13 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %cert) #4
  %call14 = tail call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %call13, i8* noundef null, i32 noundef 0) #4
  %cmp15.not = icmp eq i8* %call14, null
  br i1 %cmp15.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.then12
  %call18 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cert_acceptable, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8* noundef nonnull %call14) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then12
  tail call void @CRYPTO_free(i8* noundef %call14, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 244) #4
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  %call21 = tail call fastcc i32 @already_checked(%struct.x509_st* noundef %cert, %struct.stack_st_X509* noundef %already_checked1) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %if.then25

lor.lhs.false:                                    ; preds = %if.end20
  %call23 = tail call fastcc i32 @already_checked(%struct.x509_st* noundef %cert, %struct.stack_st_X509* noundef %already_checked2) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %lor.lhs.false, %if.end20
  %call26 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cert_acceptable, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0)) #4
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false
  %call28 = tail call %struct.asn1_string_st* @X509_get0_notBefore(%struct.x509_st* noundef %cert) #4
  %call29 = tail call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef %cert) #4
  %call30 = tail call i32 @X509_cmp_timeframe(%struct.X509_VERIFY_PARAM_st* noundef %cond, %struct.asn1_string_st* noundef %call28, %struct.asn1_string_st* noundef %call29) #4
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end38, label %if.then33

if.then33:                                        ; preds = %if.end27
  %cmp34 = icmp sgt i32 %call30, 0
  %cond36 = select i1 %cmp34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0)
  %call37 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cert_acceptable, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef %cond36) #4
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  %call39 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %cert) #4
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 0
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !13
  %sender = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %1, i64 0, i32 1
  %2 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %sender, align 8, !tbaa !30
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %2, i64 0, i32 1
  %directoryName = bitcast %union.anon* %d to %struct.X509_name_st**
  %3 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !23
  %call40 = tail call fastcc i32 @check_name(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), %struct.X509_name_st* noundef %call39, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), %struct.X509_name_st* noundef %3) #5
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup, label %if.end43

if.end43:                                         ; preds = %if.end38
  %call44 = tail call %struct.asn1_string_st* @X509_get0_subject_key_id(%struct.x509_st* noundef %cert) #4
  %4 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !13
  %senderKID = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %4, i64 0, i32 5
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderKID, align 8, !tbaa !31
  %call46 = tail call fastcc i32 @check_kid(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.asn1_string_st* noundef %call44, %struct.asn1_string_st* noundef %5) #5
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup, label %if.end49

if.end49:                                         ; preds = %if.end43
  %call50 = tail call i32 @ossl_x509v3_cache_extensions(%struct.x509_st* noundef %cert) #4
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end49
  %call53 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cert_acceptable, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0)) #4
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  %call55 = tail call fastcc i32 @verify_signature(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg, %struct.x509_st* noundef %cert) #5
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end54
  %call58 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cert_acceptable, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0)) #4
  br label %cleanup

if.end59:                                         ; preds = %if.end54
  %call60 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cert_acceptable, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0)) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end38, %if.end59, %if.then57, %if.then52, %if.then33, %if.then25
  %retval.0 = phi i32 [ 0, %if.then25 ], [ 0, %if.then33 ], [ 1, %if.end59 ], [ 0, %if.then57 ], [ 0, %if.then52 ], [ 0, %if.end38 ], [ 0, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_cert_path(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_store_st* noundef %store, %struct.x509_st* noundef %scrt) unnamed_addr #0 {
entry:
  %call = tail call i32 @OSSL_CMP_validate_cert_path(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_store_st* noundef %store, %struct.x509_st* noundef %scrt) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.check_cert_path, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.42, i64 0, i64 0)) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_cert_path_3gpp(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* nocapture noundef readonly %msg, %struct.x509_st* noundef %scrt) unnamed_addr #0 {
entry:
  %permitTAInExtraCertsForIR = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 25
  %0 = load i32, i32* %permitTAInExtraCertsForIR, align 4, !tbaa !48
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.x509_store_st* @X509_STORE_new() #4
  %cmp = icmp eq %struct.x509_store_st* %call, null
  br i1 %cmp, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %extraCerts = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 3
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCerts, align 8, !tbaa !40
  %call1 = tail call i32 @ossl_cmp_X509_STORE_add1_certs(%struct.x509_store_st* noundef nonnull %call, %struct.stack_st_X509* noundef %1, i32 noundef 1) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %err, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %call5 = tail call i32 @OSSL_CMP_validate_cert_path(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.x509_store_st* noundef nonnull %call, %struct.x509_st* noundef %scrt) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %call8 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.check_cert_path_3gpp, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.43, i64 0, i64 0)) #4
  br label %err

if.else:                                          ; preds = %if.end4
  %call9 = tail call %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 1) #4
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 1
  %2 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !15
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %2, i64 0, i32 1
  %ip = bitcast %union.anon.1* %value to %struct.ossl_cmp_certrepmessage_st**
  %3 = load %struct.ossl_cmp_certrepmessage_st*, %struct.ossl_cmp_certrepmessage_st** %ip, align 8, !tbaa !23
  %call10 = tail call %struct.ossl_cmp_certresponse_st* @ossl_cmp_certrepmessage_get0_certresponse(%struct.ossl_cmp_certrepmessage_st* noundef %3, i32 noundef 0) #4
  %call11 = tail call %struct.x509_st* @ossl_cmp_certresponse_get1_cert(%struct.ossl_cmp_certresponse_st* noundef %call10, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.evp_pkey_st* noundef %call9) #4
  %call12 = tail call i32 @OSSL_CMP_validate_cert_path(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.x509_store_st* noundef nonnull %call, %struct.x509_st* noundef %call11) #5
  tail call void @X509_free(%struct.x509_st* noundef %call11) #4
  br label %err

err:                                              ; preds = %if.then7, %if.else, %if.end, %lor.lhs.false
  %valid.0 = phi i32 [ 0, %if.end ], [ %call12, %if.else ], [ 0, %if.then7 ], [ 0, %lor.lhs.false ]
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %valid.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @X509_check_issued(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @already_checked(%struct.x509_st* noundef %cert, %struct.stack_st_X509* noundef %already_checked) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %already_checked) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ %call1, %entry ], [ %sub, %for.body ]
  %cmp = icmp sgt i32 %i.0, 0
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %sub = add nsw i32 %i.0, -1
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %sub) #4
  %0 = bitcast i8* %call3 to %struct.x509_st*
  %call4 = tail call i32 @X509_cmp(%struct.x509_st* noundef %0, %struct.x509_st* noundef %cert) #4
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %cleanup, label %for.cond, !llvm.loop !49

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}

declare i32 @X509_cmp_timeframe(%struct.X509_VERIFY_PARAM_st* noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_notBefore(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_kid(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.asn1_string_st* noundef %ckid, %struct.asn1_string_st* noundef %skid) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %skid, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.asn1_string_st* %ckid, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %call = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.check_kid, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.38, i64 0, i64 0)) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ckid, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !19
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ckid, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !27
  %conv = sext i32 %1 to i64
  %call4 = tail call i8* @OPENSSL_buf2hexstr(i8* noundef %0, i64 noundef %conv) #4
  %call5 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef nonnull %ckid, %struct.asn1_string_st* noundef nonnull %skid) #4
  %cmp6 = icmp eq i32 %call5, 0
  %cmp9.not = icmp eq i8* %call4, null
  br i1 %cmp6, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end3
  br i1 %cmp9.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then8
  %call12 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.check_kid, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0), i8* noundef nonnull %call4) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then8
  tail call void @CRYPTO_free(i8* noundef %call4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 191) #4
  br label %cleanup

if.end14:                                         ; preds = %if.end3
  br i1 %cmp9.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end14
  %call18 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.check_kid, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0), i8* noundef nonnull %call4) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14
  tail call void @CRYPTO_free(i8* noundef %call4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 197) #4
  %data20 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %skid, i64 0, i32 2
  %2 = load i8*, i8** %data20, align 8, !tbaa !19
  %length21 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %skid, i64 0, i32 0
  %3 = load i32, i32* %length21, align 8, !tbaa !27
  %conv22 = sext i32 %3 to i64
  %call23 = tail call i8* @OPENSSL_buf2hexstr(i8* noundef %2, i64 noundef %conv22) #4
  %cmp24.not = icmp eq i8* %call23, null
  br i1 %cmp24.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.end19
  %call27 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.check_kid, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i64 0, i64 0), i8* noundef nonnull %call23) #4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end19
  tail call void @CRYPTO_free(i8* noundef %call23, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 200) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end28, %if.end13, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end13 ], [ 0, %if.end28 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @X509_get0_subject_key_id(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @ossl_x509v3_cache_extensions(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_cmp(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #2

declare %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ossl_cmp_certresponse_st* @ossl_cmp_certrepmessage_get0_certresponse(%struct.ossl_cmp_certrepmessage_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.x509_st* @ossl_cmp_certresponse_get1_cert(%struct.ossl_cmp_certresponse_st* noundef, %struct.ossl_cmp_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @X509_free(%struct.x509_st* noundef) #2

declare void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_msg_with_certs(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %certs, i8* noundef %desc, %struct.stack_st_X509* noundef %already_checked1, %struct.stack_st_X509* noundef %already_checked2, %struct.ossl_cmp_msg_st* noundef %msg, i32 noundef %mode_3gpp) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509* %already_checked1, null
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call675 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  %cmp776 = icmp sgt i32 %call675, 0
  br i1 %cmp776, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool20.not = icmp eq i32 %mode_3gpp, 0
  %trusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 22
  br label %for.body

if.then:                                          ; preds = %entry
  %call4 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.check_msg_with_certs, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8* noundef %desc) #4
  br label %cleanup42

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc35, %for.inc ]
  %n_acceptable_certs.077 = phi i32 [ 0, %for.body.lr.ph ], [ %n_acceptable_certs.1, %for.inc ]
  %call10 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.078) #4
  %0 = bitcast i8* %call10 to %struct.x509_st*
  %cmp11.not = icmp eq i8* %call10, null
  br i1 %cmp11.not, label %cleanup42, label %if.end16

if.end16:                                         ; preds = %for.body
  %call17 = tail call fastcc i32 @cert_acceptable(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0), i8* noundef %desc, %struct.x509_st* noundef nonnull %0, %struct.stack_st_X509* noundef %already_checked1, %struct.stack_st_X509* noundef %already_checked2, %struct.ossl_cmp_msg_st* noundef %msg) #5
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %for.inc, label %if.end19

if.end19:                                         ; preds = %if.end16
  %inc = add nsw i32 %n_acceptable_certs.077, 1
  br i1 %tobool20.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end19
  %call21 = tail call fastcc i32 @check_cert_path_3gpp(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %msg, %struct.x509_st* noundef nonnull %0) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.inc, label %if.then25

cond.false:                                       ; preds = %if.end19
  %1 = load %struct.x509_store_st*, %struct.x509_store_st** %trusted, align 8, !tbaa !22
  %call23 = tail call fastcc i32 @check_cert_path(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_store_st* noundef %1, %struct.x509_st* noundef nonnull %0) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.inc, label %if.then25

if.then25:                                        ; preds = %cond.false, %cond.true
  %2 = bitcast i8* %call10 to %struct.x509_st*
  %call26 = tail call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %2) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup42, label %if.end29

if.end29:                                         ; preds = %if.then25
  %call30 = tail call i32 @ossl_cmp_ctx_set0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_st* noundef nonnull %2) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %cleanup42

if.then32:                                        ; preds = %if.end29
  tail call void @X509_free(%struct.x509_st* noundef nonnull %2) #4
  br label %cleanup42

for.inc:                                          ; preds = %if.end16, %cond.false, %cond.true
  %n_acceptable_certs.1 = phi i32 [ %n_acceptable_certs.077, %if.end16 ], [ %inc, %cond.false ], [ %inc, %cond.true ]
  %inc35 = add nuw nsw i32 %i.078, 1
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  %cmp7 = icmp slt i32 %inc35, %call6
  br i1 %cmp7, label %for.body, label %for.end, !llvm.loop !51

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %n_acceptable_certs.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %n_acceptable_certs.1, %for.inc ]
  %cmp37 = icmp eq i32 %n_acceptable_certs.0.lcssa, 0
  %or.cond = select i1 %cmp, i1 %cmp37, i1 false
  br i1 %or.cond, label %if.then39, label %cleanup42

if.then39:                                        ; preds = %for.end
  %call40 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.check_msg_with_certs, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i64 0, i64 0)) #4
  br label %cleanup42

cleanup42:                                        ; preds = %for.body, %if.end29, %if.then25, %if.then32, %for.end, %if.then39, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %if.then39 ], [ 0, %for.end ], [ 1, %if.end29 ], [ 0, %if.then25 ], [ 0, %if.then32 ], [ 0, %for.body ]
  ret i32 %retval.2
}

declare %struct.stack_st_X509* @X509_STORE_get1_all_certs(%struct.x509_store_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

declare i32 @X509_get_key_usage(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, %struct.asn1_string_st* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @OSSL_CMP_PROTECTEDPART_it() local_unnamed_addr #2

declare i32 @ossl_x509_print_ex_brief(%struct.bio_st* noundef, %struct.x509_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @ERR_add_error_mem_bio(i8* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_cmp_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !9, i64 72, !6, i64 80, !6, i64 88, !9, i64 96, !9, i64 100, !9, i64 104, !10, i64 112, !6, i64 120, !6, i64 128, !9, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !9, i64 184, !9, i64 188, !9, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !10, i64 240, !6, i64 248, !9, i64 256, !9, i64 260, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !9, i64 320, !9, i64 324, !6, i64 328, !6, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !6, i64 368, !6, i64 376, !9, i64 384, !9, i64 388, !6, i64 392, !6, i64 400, !9, i64 408, !9, i64 412, !6, i64 416, !6, i64 424, !9, i64 432, !6, i64 440, !9, i64 448, !6, i64 456, !9, i64 464, !6, i64 472, !6, i64 480, !6, i64 488, !6, i64 496, !6, i64 504, !6, i64 512}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 8}
!12 = !{!5, !6, i64 176}
!13 = !{!14, !6, i64 0}
!14 = !{!"ossl_cmp_msg_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!15 = !{!14, !6, i64 8}
!16 = !{!17, !6, i64 32}
!17 = !{!"ossl_cmp_pkiheader_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!18 = !{!14, !6, i64 16}
!19 = !{!20, !6, i64 8}
!20 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !6, i64 8, !10, i64 16}
!21 = !{!5, !6, i64 232}
!22 = !{!5, !6, i64 168}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !6, i64 0}
!25 = !{!"ossl_cmp_certrepmessage_st", !6, i64 0, !6, i64 8}
!26 = !{!5, !6, i64 144}
!27 = !{!20, !9, i64 0}
!28 = !{!20, !9, i64 4}
!29 = !{!5, !6, i64 152}
!30 = !{!17, !6, i64 8}
!31 = !{!17, !6, i64 40}
!32 = !{!5, !6, i64 16}
!33 = !{!34, !9, i64 0}
!34 = !{!"GENERAL_NAME_st", !9, i64 0, !7, i64 8}
!35 = !{!5, !9, i64 184}
!36 = !{!37, !6, i64 0}
!37 = !{!"ossl_cmp_protectedpart_st", !6, i64 0, !6, i64 8}
!38 = !{!37, !6, i64 8}
!39 = !{!5, !6, i64 160}
!40 = !{!14, !6, i64 24}
!41 = !{!5, !6, i64 280}
!42 = !{!17, !6, i64 56}
!43 = !{!5, !6, i64 288}
!44 = !{!17, !6, i64 72}
!45 = !{!17, !6, i64 64}
!46 = !{!47, !9, i64 0}
!47 = !{!"ossl_cmp_pkibody_st", !9, i64 0, !7, i64 8}
!48 = !{!5, !9, i64 188}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
