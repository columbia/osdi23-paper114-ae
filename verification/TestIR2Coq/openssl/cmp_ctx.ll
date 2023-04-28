; ModuleID = 'crypto/cmp/cmp_ctx.c'
source_filename = "crypto/cmp/cmp_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_store_st = type opaque
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
%struct.stack_st_X509 = type opaque
%struct.stack_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ossl_cmp_itav_st = type { %struct.asn1_object_st*, %union.anon.3 }
%union.anon.3 = type { i8* }
%struct.X509_extension_st = type opaque
%struct.POLICYINFO_st = type { %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO* }
%struct.stack_st_POLICYQUALINFO = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/cmp/cmp_ctx.c\00", align 1
@__func__.OSSL_CMP_CTX_get0_trustedStore = private unnamed_addr constant [31 x i8] c"OSSL_CMP_CTX_get0_trustedStore\00", align 1
@__func__.OSSL_CMP_CTX_set0_trustedStore = private unnamed_addr constant [31 x i8] c"OSSL_CMP_CTX_set0_trustedStore\00", align 1
@__func__.OSSL_CMP_CTX_get0_untrusted = private unnamed_addr constant [28 x i8] c"OSSL_CMP_CTX_get0_untrusted\00", align 1
@__func__.OSSL_CMP_CTX_set1_untrusted = private unnamed_addr constant [28 x i8] c"OSSL_CMP_CTX_set1_untrusted\00", align 1
@__func__.OSSL_CMP_CTX_new = private unnamed_addr constant [17 x i8] c"OSSL_CMP_CTX_new\00", align 1
@__func__.OSSL_CMP_CTX_reinit = private unnamed_addr constant [20 x i8] c"OSSL_CMP_CTX_reinit\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"disconnected from CMP server\00", align 1
@__func__.OSSL_CMP_CTX_free = private unnamed_addr constant [18 x i8] c"OSSL_CMP_CTX_free\00", align 1
@__func__.OSSL_CMP_CTX_get_status = private unnamed_addr constant [24 x i8] c"OSSL_CMP_CTX_get_status\00", align 1
@__func__.OSSL_CMP_CTX_get0_statusString = private unnamed_addr constant [31 x i8] c"OSSL_CMP_CTX_get0_statusString\00", align 1
@__func__.OSSL_CMP_CTX_set_certConf_cb = private unnamed_addr constant [29 x i8] c"OSSL_CMP_CTX_set_certConf_cb\00", align 1
@__func__.OSSL_CMP_CTX_set_certConf_cb_arg = private unnamed_addr constant [33 x i8] c"OSSL_CMP_CTX_set_certConf_cb_arg\00", align 1
@__func__.OSSL_CMP_CTX_get_certConf_cb_arg = private unnamed_addr constant [33 x i8] c"OSSL_CMP_CTX_get_certConf_cb_arg\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"(unset function name)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"(unset file name)\00", align 1
@__func__.OSSL_CMP_CTX_set_log_cb = private unnamed_addr constant [24 x i8] c"OSSL_CMP_CTX_set_log_cb\00", align 1
@__func__.OSSL_CMP_CTX_set1_referenceValue = private unnamed_addr constant [33 x i8] c"OSSL_CMP_CTX_set1_referenceValue\00", align 1
@__func__.OSSL_CMP_CTX_set1_secretValue = private unnamed_addr constant [30 x i8] c"OSSL_CMP_CTX_set1_secretValue\00", align 1
@__func__.OSSL_CMP_CTX_get1_newChain = private unnamed_addr constant [27 x i8] c"OSSL_CMP_CTX_get1_newChain\00", align 1
@__func__.OSSL_CMP_CTX_get1_extraCertsIn = private unnamed_addr constant [31 x i8] c"OSSL_CMP_CTX_get1_extraCertsIn\00", align 1
@__func__.OSSL_CMP_CTX_set1_extraCertsOut = private unnamed_addr constant [32 x i8] c"OSSL_CMP_CTX_set1_extraCertsOut\00", align 1
@__func__.OSSL_CMP_CTX_push0_policy = private unnamed_addr constant [26 x i8] c"OSSL_CMP_CTX_push0_policy\00", align 1
@__func__.OSSL_CMP_CTX_push0_geninfo_ITAV = private unnamed_addr constant [32 x i8] c"OSSL_CMP_CTX_push0_geninfo_ITAV\00", align 1
@__func__.OSSL_CMP_CTX_push0_genm_ITAV = private unnamed_addr constant [29 x i8] c"OSSL_CMP_CTX_push0_genm_ITAV\00", align 1
@__func__.OSSL_CMP_CTX_get1_caPubs = private unnamed_addr constant [25 x i8] c"OSSL_CMP_CTX_get1_caPubs\00", align 1
@__func__.OSSL_CMP_CTX_set1_srvCert = private unnamed_addr constant [26 x i8] c"OSSL_CMP_CTX_set1_srvCert\00", align 1
@__func__.OSSL_CMP_CTX_set1_recipient = private unnamed_addr constant [28 x i8] c"OSSL_CMP_CTX_set1_recipient\00", align 1
@__func__.OSSL_CMP_CTX_set1_expected_sender = private unnamed_addr constant [34 x i8] c"OSSL_CMP_CTX_set1_expected_sender\00", align 1
@__func__.OSSL_CMP_CTX_set1_issuer = private unnamed_addr constant [25 x i8] c"OSSL_CMP_CTX_set1_issuer\00", align 1
@__func__.OSSL_CMP_CTX_set1_subjectName = private unnamed_addr constant [30 x i8] c"OSSL_CMP_CTX_set1_subjectName\00", align 1
@__func__.OSSL_CMP_CTX_set0_reqExtensions = private unnamed_addr constant [32 x i8] c"OSSL_CMP_CTX_set0_reqExtensions\00", align 1
@__func__.OSSL_CMP_CTX_reqExtensions_have_SAN = private unnamed_addr constant [36 x i8] c"OSSL_CMP_CTX_reqExtensions_have_SAN\00", align 1
@__func__.OSSL_CMP_CTX_push1_subjectAltName = private unnamed_addr constant [34 x i8] c"OSSL_CMP_CTX_push1_subjectAltName\00", align 1
@__func__.OSSL_CMP_CTX_set1_cert = private unnamed_addr constant [23 x i8] c"OSSL_CMP_CTX_set1_cert\00", align 1
@__func__.OSSL_CMP_CTX_build_cert_chain = private unnamed_addr constant [30 x i8] c"OSSL_CMP_CTX_build_cert_chain\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"trying to build chain for own CMP signer cert\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"success building chain for own CMP signer cert\00", align 1
@__func__.OSSL_CMP_CTX_set1_oldCert = private unnamed_addr constant [26 x i8] c"OSSL_CMP_CTX_set1_oldCert\00", align 1
@__func__.OSSL_CMP_CTX_set1_p10CSR = private unnamed_addr constant [25 x i8] c"OSSL_CMP_CTX_set1_p10CSR\00", align 1
@__func__.OSSL_CMP_CTX_get0_newCert = private unnamed_addr constant [26 x i8] c"OSSL_CMP_CTX_get0_newCert\00", align 1
@__func__.OSSL_CMP_CTX_set1_pkey = private unnamed_addr constant [23 x i8] c"OSSL_CMP_CTX_set1_pkey\00", align 1
@__func__.OSSL_CMP_CTX_set0_newPkey = private unnamed_addr constant [26 x i8] c"OSSL_CMP_CTX_set0_newPkey\00", align 1
@__func__.OSSL_CMP_CTX_get0_newPkey = private unnamed_addr constant [26 x i8] c"OSSL_CMP_CTX_get0_newPkey\00", align 1
@__func__.OSSL_CMP_CTX_set1_transactionID = private unnamed_addr constant [32 x i8] c"OSSL_CMP_CTX_set1_transactionID\00", align 1
@__func__.OSSL_CMP_CTX_set1_senderNonce = private unnamed_addr constant [30 x i8] c"OSSL_CMP_CTX_set1_senderNonce\00", align 1
@__func__.OSSL_CMP_CTX_set1_proxy = private unnamed_addr constant [24 x i8] c"OSSL_CMP_CTX_set1_proxy\00", align 1
@__func__.OSSL_CMP_CTX_set1_server = private unnamed_addr constant [25 x i8] c"OSSL_CMP_CTX_set1_server\00", align 1
@__func__.OSSL_CMP_CTX_set1_no_proxy = private unnamed_addr constant [27 x i8] c"OSSL_CMP_CTX_set1_no_proxy\00", align 1
@__func__.OSSL_CMP_CTX_set_http_cb = private unnamed_addr constant [25 x i8] c"OSSL_CMP_CTX_set_http_cb\00", align 1
@__func__.OSSL_CMP_CTX_set_http_cb_arg = private unnamed_addr constant [29 x i8] c"OSSL_CMP_CTX_set_http_cb_arg\00", align 1
@__func__.OSSL_CMP_CTX_get_http_cb_arg = private unnamed_addr constant [29 x i8] c"OSSL_CMP_CTX_get_http_cb_arg\00", align 1
@__func__.OSSL_CMP_CTX_set_transfer_cb = private unnamed_addr constant [29 x i8] c"OSSL_CMP_CTX_set_transfer_cb\00", align 1
@__func__.OSSL_CMP_CTX_set_transfer_cb_arg = private unnamed_addr constant [33 x i8] c"OSSL_CMP_CTX_set_transfer_cb_arg\00", align 1
@__func__.OSSL_CMP_CTX_get_transfer_cb_arg = private unnamed_addr constant [33 x i8] c"OSSL_CMP_CTX_get_transfer_cb_arg\00", align 1
@__func__.OSSL_CMP_CTX_set_serverPort = private unnamed_addr constant [28 x i8] c"OSSL_CMP_CTX_set_serverPort\00", align 1
@__func__.OSSL_CMP_CTX_set1_serverPath = private unnamed_addr constant [29 x i8] c"OSSL_CMP_CTX_set1_serverPath\00", align 1
@__func__.OSSL_CMP_CTX_get_failInfoCode = private unnamed_addr constant [30 x i8] c"OSSL_CMP_CTX_get_failInfoCode\00", align 1
@__func__.OSSL_CMP_CTX_set_option = private unnamed_addr constant [24 x i8] c"OSSL_CMP_CTX_set_option\00", align 1
@__func__.OSSL_CMP_CTX_get_option = private unnamed_addr constant [24 x i8] c"OSSL_CMP_CTX_get_option\00", align 1
@__func__.cmp_ctx_set_md = private unnamed_addr constant [15 x i8] c"cmp_ctx_set_md\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_store_st* @OSSL_CMP_CTX_get0_trustedStore(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_CMP_CTX_get0_trustedStore, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %trusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 22
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %trusted, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.x509_store_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.x509_store_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set0_trustedStore(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_store_st* noundef %store) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_CMP_CTX_set0_trustedStore, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %trusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 22
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %trusted, align 8, !tbaa !4
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %0) #6
  store %struct.x509_store_st* %store, %struct.x509_store_st** %trusted, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @OSSL_CMP_CTX_get0_untrusted(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CMP_CTX_get0_untrusted, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %untrusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 23
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.stack_st_X509* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.stack_st_X509* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_untrusted(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %certs) local_unnamed_addr #0 {
entry:
  %untrusted = alloca %struct.stack_st_X509*, align 8
  %0 = bitcast %struct.stack_st_X509** %untrusted to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %untrusted, align 8, !tbaa !12
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CMP_CTX_set1_untrusted, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @ossl_x509_add_certs_new(%struct.stack_st_X509** noundef nonnull %untrusted, %struct.stack_st_X509* noundef %certs, i32 noundef 5) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end2

if.end2:                                          ; preds = %if.end
  %untrusted3 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 23
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted3, align 8, !tbaa !11
  %call4 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %1) #8
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call4, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !12
  store %struct.stack_st_X509* %2, %struct.stack_st_X509** %untrusted3, align 8, !tbaa !11
  br label %cleanup

err:                                              ; preds = %if.end
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !12
  %call7 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %3) #8
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call7, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @ossl_x509_add_certs_new(%struct.stack_st_X509** noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 520, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 104) #6
  %0 = bitcast i8* %call to %struct.ossl_cmp_ctx_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %libctx1 = bitcast i8* %call to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !13
  %cmp2.not = icmp eq i8* %propq, null
  br i1 %cmp2.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 110) #6
  %propq4 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %propq4 to i8**
  store i8* %call3, i8** %1, align 8, !tbaa !14
  %cmp5 = icmp eq i8* %call3, null
  br i1 %cmp5, label %oom, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %log_verbosity = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %log_verbosity to i32*
  store i32 6, i32* %2, align 8, !tbaa !15
  %status = getelementptr inbounds i8, i8* %call, i64 448
  %3 = bitcast i8* %status to i32*
  store i32 -1, i32* %3, align 8, !tbaa !16
  %failInfoCode = getelementptr inbounds i8, i8* %call, i64 464
  %4 = bitcast i8* %failInfoCode to i32*
  store i32 -1, i32* %4, align 8, !tbaa !17
  %keep_alive = getelementptr inbounds i8, i8* %call, i64 96
  %5 = bitcast i8* %keep_alive to i32*
  store i32 1, i32* %5, align 8, !tbaa !18
  %msg_timeout = getelementptr inbounds i8, i8* %call, i64 100
  %6 = bitcast i8* %msg_timeout to i32*
  store i32 -1, i32* %6, align 4, !tbaa !19
  %call8 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %untrusted = getelementptr inbounds i8, i8* %call, i64 176
  %7 = bitcast i8* %untrusted to %struct.stack_st**
  store %struct.stack_st* %call8, %struct.stack_st** %7, align 8, !tbaa !11
  %cmp9 = icmp eq %struct.stack_st* %call8, null
  br i1 %cmp9, label %oom, label %if.end11

if.end11:                                         ; preds = %if.end7
  %pbm_slen = getelementptr inbounds i8, i8* %call, i64 240
  %8 = bitcast i8* %pbm_slen to i64*
  store i64 16, i64* %8, align 8, !tbaa !20
  %pbm_owf = getelementptr inbounds i8, i8* %call, i64 248
  %9 = bitcast i8* %pbm_owf to %struct.evp_md_st**
  %call12 = tail call fastcc i32 @cmp_ctx_set_md(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.evp_md_st** noundef nonnull %9, i32 noundef 672) #8
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end11
  %pbm_itercnt = getelementptr inbounds i8, i8* %call, i64 256
  %10 = bitcast i8* %pbm_itercnt to i32*
  store i32 500, i32* %10, align 8, !tbaa !21
  %pbm_mac = getelementptr inbounds i8, i8* %call, i64 260
  %11 = bitcast i8* %pbm_mac to i32*
  store i32 781, i32* %11, align 4, !tbaa !22
  %digest = getelementptr inbounds i8, i8* %call, i64 272
  %12 = bitcast i8* %digest to %struct.evp_md_st**
  %call15 = tail call fastcc i32 @cmp_ctx_set_md(%struct.ossl_cmp_ctx_st* noundef nonnull %0, %struct.evp_md_st** noundef nonnull %12, i32 noundef 672) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.end14
  %popoMethod = getelementptr inbounds i8, i8* %call, i64 412
  %13 = bitcast i8* %popoMethod to i32*
  store i32 1, i32* %13, align 4, !tbaa !23
  %revocationReason = getelementptr inbounds i8, i8* %call, i64 432
  %14 = bitcast i8* %revocationReason to i32*
  store i32 -1, i32* %14, align 8, !tbaa !24
  br label %cleanup

oom:                                              ; preds = %if.end7, %land.lhs.true
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.OSSL_CMP_CTX_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #6
  br label %err

err:                                              ; preds = %if.end14, %if.end11, %entry, %oom
  tail call void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef %0) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end18
  %retval.0 = phi %struct.ossl_cmp_ctx_st* [ null, %err ], [ %0, %if.end18 ]
  ret %struct.ossl_cmp_ctx_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cmp_ctx_set_md(%struct.ossl_cmp_ctx_st* nocapture noundef readonly %ctx, %struct.evp_md_st** nocapture noundef %pmd, i32 noundef %nid) unnamed_addr #0 {
entry:
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !13
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %nid) #6
  %propq = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %1 = load i8*, i8** %propq, align 8, !tbaa !14
  %call1 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %call, i8* noundef %1) #6
  %cmp = icmp eq %struct.evp_md_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.cmp_ctx_set_md, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 136, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.evp_md_st*, %struct.evp_md_st** %pmd, align 8, !tbaa !12
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %2) #6
  store %struct.evp_md_st* %call1, %struct.evp_md_st** %pmd, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %http_ctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 6
  %0 = load %struct.ossl_http_req_ctx_st*, %struct.ossl_http_req_ctx_st** %http_ctx, align 8, !tbaa !25
  %cmp1.not = icmp eq %struct.ossl_http_req_ctx_st* %0, null
  br i1 %cmp1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @OSSL_HTTP_close(%struct.ossl_http_req_ctx_st* noundef nonnull %0, i32 noundef 1) #6
  %call4 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.OSSL_CMP_CTX_free, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %propq = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %1 = load i8*, i8** %propq, align 8, !tbaa !14
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 182) #6
  %serverPath = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 7
  %2 = load i8*, i8** %serverPath, align 8, !tbaa !26
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 183) #6
  %server = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 8
  %3 = load i8*, i8** %server, align 8, !tbaa !27
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 184) #6
  %proxy = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 10
  %4 = load i8*, i8** %proxy, align 8, !tbaa !28
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 185) #6
  %no_proxy = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 11
  %5 = load i8*, i8** %no_proxy, align 8, !tbaa !29
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 186) #6
  %srvCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 19
  %6 = load %struct.x509_st*, %struct.x509_st** %srvCert, align 8, !tbaa !30
  tail call void @X509_free(%struct.x509_st* noundef %6) #6
  %validatedSrvCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 20
  %7 = load %struct.x509_st*, %struct.x509_st** %validatedSrvCert, align 8, !tbaa !31
  tail call void @X509_free(%struct.x509_st* noundef %7) #6
  %expected_sender = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 21
  %8 = load %struct.X509_name_st*, %struct.X509_name_st** %expected_sender, align 8, !tbaa !32
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %8) #6
  %trusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 22
  %9 = load %struct.x509_store_st*, %struct.x509_store_st** %trusted, align 8, !tbaa !4
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %9) #6
  %untrusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 23
  %10 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !11
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %10) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call6, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  %cert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 27
  %11 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !33
  tail call void @X509_free(%struct.x509_st* noundef %11) #6
  %chain = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 28
  %12 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !34
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %12) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call8, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  %pkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 29
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !35
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %13) #6
  %referenceValue = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 30
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %referenceValue, align 8, !tbaa !36
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %14) #6
  %secretValue = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 31
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %secretValue, align 8, !tbaa !37
  %cmp10.not = icmp eq %struct.asn1_string_st* %15, null
  br i1 %cmp10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end5
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %15, i64 0, i32 2
  %16 = load i8*, i8** %data, align 8, !tbaa !38
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %15, i64 0, i32 0
  %17 = load i32, i32* %length, align 8, !tbaa !40
  %conv = sext i32 %17 to i64
  tail call void @OPENSSL_cleanse(i8* noundef %16, i64 noundef %conv) #6
  %.pre = load %struct.asn1_string_st*, %struct.asn1_string_st** %secretValue, align 8, !tbaa !37
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end5
  %18 = phi %struct.asn1_string_st* [ %.pre, %if.then11 ], [ null, %if.end5 ]
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %18) #6
  %pbm_owf = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 33
  %19 = load %struct.evp_md_st*, %struct.evp_md_st** %pbm_owf, align 8, !tbaa !41
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %19) #6
  %recipient = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 36
  %20 = load %struct.X509_name_st*, %struct.X509_name_st** %recipient, align 8, !tbaa !42
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %20) #6
  %digest = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 37
  %21 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !43
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %21) #6
  %transactionID = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 38
  %22 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID, align 8, !tbaa !44
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %22) #6
  %senderNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 39
  %23 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderNonce, align 8, !tbaa !45
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %23) #6
  %recipNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 40
  %24 = load %struct.asn1_string_st*, %struct.asn1_string_st** %recipNonce, align 8, !tbaa !46
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %24) #6
  %geninfo_ITAVs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 42
  %25 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %geninfo_ITAVs, align 8, !tbaa !47
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %25) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call16, void (i8*)* noundef bitcast (void (%struct.ossl_cmp_itav_st*)* @OSSL_CMP_ITAV_free to void (i8*)*)) #6
  %extraCertsOut = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 45
  %26 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCertsOut, align 8, !tbaa !48
  %call18 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %26) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call18, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  %newPkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 46
  %27 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %newPkey, align 8, !tbaa !49
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %27) #6
  %issuer = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 48
  %28 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !50
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %28) #6
  %subjectName = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 50
  %29 = load %struct.X509_name_st*, %struct.X509_name_st** %subjectName, align 8, !tbaa !51
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %29) #6
  %subjectAltNames = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 51
  %30 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %subjectAltNames, align 8, !tbaa !52
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %30) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call20, void (i8*)* noundef bitcast (void (%struct.GENERAL_NAME_st*)* @GENERAL_NAME_free to void (i8*)*)) #6
  %reqExtensions = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 54
  %31 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %reqExtensions, align 8, !tbaa !53
  %call22 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %31) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call22, void (i8*)* noundef bitcast (void (%struct.X509_extension_st*)* @X509_EXTENSION_free to void (i8*)*)) #6
  %policies = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 55
  %32 = load %struct.stack_st_POLICYINFO*, %struct.stack_st_POLICYINFO** %policies, align 8, !tbaa !54
  %call24 = tail call fastcc %struct.stack_st* @ossl_check_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef %32) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call24, void (i8*)* noundef bitcast (void (%struct.POLICYINFO_st*)* @POLICYINFO_free to void (i8*)*)) #6
  %oldCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 58
  %33 = load %struct.x509_st*, %struct.x509_st** %oldCert, align 8, !tbaa !55
  tail call void @X509_free(%struct.x509_st* noundef %33) #6
  %p10CSR = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 59
  %34 = load %struct.X509_req_st*, %struct.X509_req_st** %p10CSR, align 8, !tbaa !56
  tail call void @X509_REQ_free(%struct.X509_req_st* noundef %34) #6
  %genm_ITAVs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 61
  %35 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %genm_ITAVs, align 8, !tbaa !57
  %call26 = tail call fastcc %struct.stack_st* @ossl_check_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %35) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call26, void (i8*)* noundef bitcast (void (%struct.ossl_cmp_itav_st*)* @OSSL_CMP_ITAV_free to void (i8*)*)) #6
  %statusString = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 63
  %36 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %statusString, align 8, !tbaa !58
  %call28 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %36) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call28, void (i8*)* noundef bitcast (void (%struct.asn1_string_st*)* @ASN1_UTF8STRING_free to void (i8*)*)) #6
  %newCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 65
  %37 = load %struct.x509_st*, %struct.x509_st** %newCert, align 8, !tbaa !59
  tail call void @X509_free(%struct.x509_st* noundef %37) #6
  %newChain = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 66
  %38 = load %struct.stack_st_X509*, %struct.stack_st_X509** %newChain, align 8, !tbaa !60
  %call30 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %38) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call30, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  %caPubs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 67
  %39 = load %struct.stack_st_X509*, %struct.stack_st_X509** %caPubs, align 8, !tbaa !61
  %call32 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %39) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call32, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  %extraCertsIn = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 68
  %40 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCertsIn, align 8, !tbaa !62
  %call34 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %40) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call34, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  %41 = bitcast %struct.ossl_cmp_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef %41, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 228) #6
  br label %return

return:                                           ; preds = %entry, %if.end14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_reinit(%struct.ossl_cmp_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OSSL_CMP_CTX_reinit, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %http_ctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 6
  %0 = load %struct.ossl_http_req_ctx_st*, %struct.ossl_http_req_ctx_st** %http_ctx, align 8, !tbaa !25
  %cmp1.not = icmp eq %struct.ossl_http_req_ctx_st* %0, null
  br i1 %cmp1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @OSSL_HTTP_close(%struct.ossl_http_req_ctx_st* noundef nonnull %0, i32 noundef 1) #6
  %call4 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OSSL_CMP_CTX_reinit, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #8
  store %struct.ossl_http_req_ctx_st* null, %struct.ossl_http_req_ctx_st** %http_ctx, align 8, !tbaa !25
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %status = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 62
  store i32 -1, i32* %status, align 8, !tbaa !16
  %failInfoCode = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 64
  store i32 -1, i32* %failInfoCode, align 8, !tbaa !17
  %call7 = tail call i32 @ossl_cmp_ctx_set0_statusString(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.stack_st_ASN1_UTF8STRING* noundef null) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %call8 = tail call i32 @ossl_cmp_ctx_set0_newCert(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef null) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %return, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call11 = tail call i32 @ossl_cmp_ctx_set1_newChain(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.stack_st_X509* noundef null) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %return, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %call14 = tail call i32 @ossl_cmp_ctx_set1_caPubs(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.stack_st_X509* noundef null) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %return, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %call17 = tail call i32 @ossl_cmp_ctx_set1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.stack_st_X509* noundef null) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %return, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call i32 @ossl_cmp_ctx_set0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef null) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %return, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %call23 = tail call i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.asn1_string_st* noundef null) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %return, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %call26 = tail call i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.asn1_string_st* noundef null) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true25
  %call28 = tail call i32 @ossl_cmp_ctx_set1_recipNonce(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.asn1_string_st* noundef null) #8
  %tobool29 = icmp ne i32 %call28, 0
  %phi.cast = zext i1 %tobool29 to i32
  br label %return

return:                                           ; preds = %if.end6, %land.lhs.true, %land.lhs.true10, %land.lhs.true13, %land.lhs.true16, %land.lhs.true19, %land.lhs.true22, %land.lhs.true25, %land.rhs, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true22 ], [ 0, %land.lhs.true19 ], [ 0, %land.lhs.true16 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true10 ], [ 0, %land.lhs.true ], [ 0, %if.end6 ], [ %phi.cast, %land.rhs ]
  ret i32 %retval.0
}

declare i32 @OSSL_HTTP_close(%struct.ossl_http_req_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_print_log(i32 noundef %level, %struct.ossl_cmp_ctx_st* noundef readonly %ctx, i8* noundef %func, i8* noundef %file, i32 noundef %line, i8* nocapture noundef readnone %level_str, i8* noundef %format, ...) local_unnamed_addr #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %hugebuf = alloca [2048 x i8], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7
  %1 = getelementptr inbounds [2048 x i8], [2048 x i8]* %hugebuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %1) #7
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %log_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 2
  %2 = load i32 (i8*, i8*, i32, i32, i8*)*, i32 (i8*, i8*, i32, i32, i8*)** %log_cb, align 8, !tbaa !63
  %cmp1 = icmp eq i32 (i8*, i8*, i32, i32, i8*)* %2, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %log_verbosity = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 3
  %3 = load i32, i32* %log_verbosity, align 8, !tbaa !15
  %cmp2 = icmp slt i32 %3, %level
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i8* %format, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %0)
  %call = call i32 @BIO_vsnprintf(i8* noundef nonnull %1, i64 noundef 2048, i8* noundef nonnull %format, %struct.__va_list_tag* noundef nonnull %arraydecay) #6
  %cmp20 = icmp sgt i32 %call, 0
  br i1 %cmp20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end7
  %cmp12 = icmp eq i8* %file, null
  %spec.store.select31 = select i1 %cmp12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %file
  %cmp9 = icmp eq i8* %func, null
  %spec.store.select = select i1 %cmp9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %func
  %4 = load i32 (i8*, i8*, i32, i32, i8*)*, i32 (i8*, i8*, i32, i32, i8*)** %log_cb, align 8, !tbaa !63
  %call24 = call i32 %4(i8* noundef %spec.store.select, i8* noundef %spec.store.select31, i32 noundef %line, i32 noundef %level, i8* noundef nonnull %1) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end7
  %res.0 = phi i32 [ %call24, %if.then21 ], [ 0, %if.end7 ]
  call void @llvm.va_end(i8* nonnull %0)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %lor.lhs.false, %if.end25
  %retval.0 = phi i32 [ %res.0, %if.end25 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %if.end ], [ 0, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_ctx_set0_statusString(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_ASN1_UTF8STRING* noundef %text) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %statusString = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 63
  %0 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %statusString, align 8, !tbaa !58
  %call = tail call fastcc %struct.stack_st* @ossl_check_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %0) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.asn1_string_st*)* @ASN1_UTF8STRING_free to void (i8*)*)) #6
  store %struct.stack_st_ASN1_UTF8STRING* %text, %struct.stack_st_ASN1_UTF8STRING** %statusString, align 8, !tbaa !58
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_ctx_set0_newCert(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %newCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 65
  %0 = load %struct.x509_st*, %struct.x509_st** %newCert, align 8, !tbaa !59
  tail call void @X509_free(%struct.x509_st* noundef %0) #6
  store %struct.x509_st* %cert, %struct.x509_st** %newCert, align 8, !tbaa !59
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_ctx_set1_newChain(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %newChain) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %newChain3 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 66
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %newChain3, align 8, !tbaa !60
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %0) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %newChain3, align 8, !tbaa !60
  %cmp6 = icmp eq %struct.stack_st_X509* %newChain, null
  br i1 %cmp6, label %return, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %call8 = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %newChain) #6
  store %struct.stack_st_X509* %call8, %struct.stack_st_X509** %newChain3, align 8, !tbaa !60
  %cmp10 = icmp ne %struct.stack_st_X509* %call8, null
  %phi.cast = zext i1 %cmp10 to i32
  br label %return

return:                                           ; preds = %if.end, %lor.rhs, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_ctx_set1_caPubs(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %caPubs) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %caPubs3 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 67
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %caPubs3, align 8, !tbaa !61
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %0) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %caPubs3, align 8, !tbaa !61
  %cmp6 = icmp eq %struct.stack_st_X509* %caPubs, null
  br i1 %cmp6, label %return, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %call8 = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %caPubs) #6
  store %struct.stack_st_X509* %call8, %struct.stack_st_X509** %caPubs3, align 8, !tbaa !61
  %cmp10 = icmp ne %struct.stack_st_X509* %call8, null
  %phi.cast = zext i1 %cmp10 to i32
  br label %return

return:                                           ; preds = %if.end, %lor.rhs, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_ctx_set1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %extraCertsIn) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %extraCertsIn3 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 68
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCertsIn3, align 8, !tbaa !62
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %0) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %extraCertsIn3, align 8, !tbaa !62
  %cmp6 = icmp eq %struct.stack_st_X509* %extraCertsIn, null
  br i1 %cmp6, label %return, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %call8 = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %extraCertsIn) #6
  store %struct.stack_st_X509* %call8, %struct.stack_st_X509** %extraCertsIn3, align 8, !tbaa !62
  %cmp10 = icmp ne %struct.stack_st_X509* %call8, null
  %phi.cast = zext i1 %cmp10 to i32
  br label %return

return:                                           ; preds = %if.end, %lor.rhs, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_ctx_set0_validatedSrvCert(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %validatedSrvCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.x509_st*, %struct.x509_st** %validatedSrvCert, align 8, !tbaa !31
  tail call void @X509_free(%struct.x509_st* noundef %0) #6
  store %struct.x509_st* %cert, %struct.x509_st** %validatedSrvCert, align 8, !tbaa !31
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.asn1_string_st* noundef %id) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 835, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.OSSL_CMP_CTX_set1_transactionID, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %transactionID = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 38
  %call = tail call i32 @ossl_cmp_asn1_octet_string_set1(%struct.asn1_string_st** noundef nonnull %transactionID, %struct.asn1_string_st* noundef %id) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.asn1_string_st* noundef %nonce) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 855, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_CMP_CTX_set1_senderNonce, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %senderNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 39
  %call = tail call i32 @ossl_cmp_asn1_octet_string_set1(%struct.asn1_string_st** noundef nonnull %senderNonce, %struct.asn1_string_st* noundef %nonce) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_ctx_set1_recipNonce(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.asn1_string_st* noundef %nonce) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %recipNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 40
  %call = tail call i32 @ossl_cmp_asn1_octet_string_set1(%struct.asn1_string_st** noundef nonnull %recipNonce, %struct.asn1_string_st* noundef %nonce) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_ITAV* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_POLICYINFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @POLICYINFO_free(%struct.POLICYINFO_st* noundef) #1

declare void @X509_REQ_free(%struct.X509_req_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ossl_cmp_ctx_set_status(%struct.ossl_cmp_ctx_st* noundef writeonly %ctx, i32 noundef %status) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %status3 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 62
  store i32 %status, i32* %status3, align 8, !tbaa !16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_get_status(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CMP_CTX_get_status, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 62
  %0 = load i32, i32* %status, align 8, !tbaa !16
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_ASN1_UTF8STRING* @OSSL_CMP_CTX_get0_statusString(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_CMP_CTX_get0_statusString, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %statusString = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 63
  %0 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %statusString, align 8, !tbaa !58
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.stack_st_ASN1_UTF8STRING* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.stack_st_ASN1_UTF8STRING* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set_certConf_cb(%struct.ossl_cmp_ctx_st* noundef writeonly %ctx, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* noundef %cb) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_CTX_set_certConf_cb, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %certConf_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 69
  store i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* %cb, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)** %certConf_cb, align 8, !tbaa !64
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef writeonly %ctx, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.OSSL_CMP_CTX_set_certConf_cb_arg, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %certConf_cb_arg = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 70
  store i8* %arg, i8** %certConf_cb_arg, align 8, !tbaa !65
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @OSSL_CMP_CTX_get_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.OSSL_CMP_CTX_get_certConf_cb_arg, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %certConf_cb_arg = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 70
  %0 = load i8*, i8** %certConf_cb_arg, align 8, !tbaa !65
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %0, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

declare i32 @BIO_vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef writeonly %ctx, i32 (i8*, i8*, i32, i32, i8*)* noundef %cb) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 411, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CMP_CTX_set_log_cb, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %log_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 2
  store i32 (i8*, i8*, i32, i32, i8*)* %cb, i32 (i8*, i8*, i32, i32, i8*)** %log_cb, align 8, !tbaa !63
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cond6 = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cond6, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %log_verbosity = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 3
  %0 = load i32, i32* %log_verbosity, align 8, !tbaa !15
  %cmp1 = icmp slt i32 %0, 3
  br i1 %cmp1, label %return, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  %log_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 2
  %1 = load i32 (i8*, i8*, i32, i32, i8*)*, i32 (i8*, i8*, i32, i32, i8*)** %log_cb, align 8, !tbaa !63
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 (i8*, i8*, i32, i32, i8*)* [ %1, %cond.false ], [ null, %entry ]
  tail call void @OSSL_CMP_print_errors_cb(i32 (i8*, i8*, i32, i32, i8*)* noundef %cond) #6
  br label %return

return:                                           ; preds = %land.lhs.true, %cond.end
  ret void
}

declare void @OSSL_CMP_print_errors_cb(i32 (i8*, i8*, i32, i32, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_referenceValue(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef %ref, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 442, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.OSSL_CMP_CTX_set1_referenceValue, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %referenceValue = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 30
  %call = tail call i32 @ossl_cmp_asn1_octet_string_set1_bytes(%struct.asn1_string_st** noundef nonnull %referenceValue, i8* noundef %ref, i32 noundef %len) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_cmp_asn1_octet_string_set1_bytes(%struct.asn1_string_st** noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef %sec, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %secretValue = alloca %struct.asn1_string_st*, align 8
  %0 = bitcast %struct.asn1_string_st** %secretValue to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %secretValue, align 8, !tbaa !12
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 455, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_CMP_CTX_set1_secretValue, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @ossl_cmp_asn1_octet_string_set1_bytes(%struct.asn1_string_st** noundef nonnull %secretValue, i8* noundef %sec, i32 noundef %len) #6
  %cmp1.not = icmp eq i32 %call, 1
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %secretValue4 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 31
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %secretValue4, align 8, !tbaa !37
  %cmp5.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end3
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !38
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !40
  %conv = sext i32 %3 to i64
  call void @OPENSSL_cleanse(i8* noundef %2, i64 noundef %conv) #6
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %secretValue4, align 8, !tbaa !37
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %4) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end3
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %secretValue, align 8, !tbaa !12
  store %struct.asn1_string_st* %5, %struct.asn1_string_st** %secretValue4, align 8, !tbaa !37
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end10, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end10 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @OSSL_CMP_CTX_get1_newChain(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_CMP_CTX_get1_newChain, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %newChain = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 66
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %newChain, align 8, !tbaa !60
  %call = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef %0) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.stack_st_X509* [ null, %if.then ], [ %call, %if.end ]
  ret %struct.stack_st_X509* %retval.0
}

declare %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @OSSL_CMP_CTX_get1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 497, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_CMP_CTX_get1_extraCertsIn, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %extraCertsIn = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 68
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCertsIn, align 8, !tbaa !62
  %call = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef %0) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.stack_st_X509* [ null, %if.then ], [ %call, %if.end ]
  ret %struct.stack_st_X509* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_extraCertsOut(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %extraCertsOut) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 527, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.OSSL_CMP_CTX_set1_extraCertsOut, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %extraCertsOut1 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 45
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCertsOut1, align 8, !tbaa !48
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %0) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %extraCertsOut1, align 8, !tbaa !48
  %cmp4 = icmp eq %struct.stack_st_X509* %extraCertsOut, null
  br i1 %cmp4, label %return, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %call5 = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %extraCertsOut) #6
  store %struct.stack_st_X509* %call5, %struct.stack_st_X509** %extraCertsOut1, align 8, !tbaa !48
  %cmp7 = icmp ne %struct.stack_st_X509* %call5, null
  %phi.cast = zext i1 %cmp7 to i32
  br label %return

return:                                           ; preds = %if.end, %lor.rhs, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_push0_policy(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.POLICYINFO_st* noundef %pinfo) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp eq %struct.POLICYINFO_st* %pinfo, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 544, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_CTX_push0_policy, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %policies = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 55
  %0 = load %struct.stack_st_POLICYINFO*, %struct.stack_st_POLICYINFO** %policies, align 8, !tbaa !54
  %cmp2 = icmp eq %struct.stack_st_POLICYINFO* %0, null
  br i1 %cmp2, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %call = tail call %struct.stack_st_POLICYINFO* @CERTIFICATEPOLICIES_new() #6
  store %struct.stack_st_POLICYINFO* %call, %struct.stack_st_POLICYINFO** %policies, align 8, !tbaa !54
  %cmp4 = icmp eq %struct.stack_st_POLICYINFO* %call, null
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %1 = phi %struct.stack_st_POLICYINFO* [ %call, %land.lhs.true ], [ %0, %if.end ]
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef nonnull %1) #8
  %2 = bitcast %struct.POLICYINFO_st* %pinfo to i8*
  %call10 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call8, i8* noundef %2) #6
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call10, %if.end6 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare %struct.stack_st_POLICYINFO* @CERTIFICATEPOLICIES_new() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_push0_geninfo_ITAV(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_itav_st* noundef %itav) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 559, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.OSSL_CMP_CTX_push0_geninfo_ITAV, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %geninfo_ITAVs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 42
  %call = tail call i32 @OSSL_CMP_ITAV_push0_stack_item(%struct.stack_st_OSSL_CMP_ITAV** noundef nonnull %geninfo_ITAVs, %struct.ossl_cmp_itav_st* noundef %itav) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

declare i32 @OSSL_CMP_ITAV_push0_stack_item(%struct.stack_st_OSSL_CMP_ITAV** noundef, %struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_push0_genm_ITAV(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_itav_st* noundef %itav) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_CTX_push0_genm_ITAV, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %genm_ITAVs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 61
  %call = tail call i32 @OSSL_CMP_ITAV_push0_stack_item(%struct.stack_st_OSSL_CMP_ITAV** noundef nonnull %genm_ITAVs, %struct.ossl_cmp_itav_st* noundef %itav) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @OSSL_CMP_CTX_get1_caPubs(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 583, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OSSL_CMP_CTX_get1_caPubs, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %caPubs = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 67
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %caPubs, align 8, !tbaa !61
  %call = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef %0) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.stack_st_X509* [ null, %if.then ], [ %call, %if.end ]
  ret %struct.stack_st_X509* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_srvCert(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_st* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 649, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_CTX_set1_srvCert, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.x509_st* %val, null
  br i1 %cmp1.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @ossl_x509v3_cache_extensions(%struct.x509_st* noundef nonnull %val) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %land.lhs.true5

if.then2:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 649, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_CTX_set1_srvCert, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 147, i8* noundef null) #6
  br label %return

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %val) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %return, label %if.end9

if.end9:                                          ; preds = %if.end, %land.lhs.true5
  %srvCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 19
  %0 = load %struct.x509_st*, %struct.x509_st** %srvCert, align 8, !tbaa !30
  tail call void @X509_free(%struct.x509_st* noundef %0) #6
  store %struct.x509_st* %val, %struct.x509_st** %srvCert, align 8, !tbaa !30
  br label %return

return:                                           ; preds = %land.lhs.true5, %if.end9, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end9 ], [ 0, %if.then2 ], [ 0, %land.lhs.true5 ]
  ret i32 %retval.0
}

declare i32 @ossl_x509v3_cache_extensions(%struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_recipient(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.X509_name_st* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 652, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CMP_CTX_set1_recipient, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.X509_name_st* %val, null
  br i1 %cmp1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef nonnull %val) #6
  %cmp2 = icmp eq %struct.X509_name_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %val_dup.0 = phi %struct.X509_name_st* [ %call, %land.lhs.true ], [ null, %if.end ]
  %recipient = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 36
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %recipient, align 8, !tbaa !42
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %0) #6
  store %struct.X509_name_st* %val_dup.0, %struct.X509_name_st** %recipient, align 8, !tbaa !42
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end4 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_expected_sender(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.X509_name_st* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 655, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.OSSL_CMP_CTX_set1_expected_sender, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.X509_name_st* %val, null
  br i1 %cmp1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef nonnull %val) #6
  %cmp2 = icmp eq %struct.X509_name_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %val_dup.0 = phi %struct.X509_name_st* [ %call, %land.lhs.true ], [ null, %if.end ]
  %expected_sender = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 21
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %expected_sender, align 8, !tbaa !32
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %0) #6
  store %struct.X509_name_st* %val_dup.0, %struct.X509_name_st** %expected_sender, align 8, !tbaa !32
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end4 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_issuer(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.X509_name_st* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 658, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OSSL_CMP_CTX_set1_issuer, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.X509_name_st* %val, null
  br i1 %cmp1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef nonnull %val) #6
  %cmp2 = icmp eq %struct.X509_name_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %val_dup.0 = phi %struct.X509_name_st* [ %call, %land.lhs.true ], [ null, %if.end ]
  %issuer = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 48
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !50
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %0) #6
  store %struct.X509_name_st* %val_dup.0, %struct.X509_name_st** %issuer, align 8, !tbaa !50
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end4 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_subjectName(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.X509_name_st* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 664, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_CMP_CTX_set1_subjectName, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.X509_name_st* %val, null
  br i1 %cmp1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef nonnull %val) #6
  %cmp2 = icmp eq %struct.X509_name_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %val_dup.0 = phi %struct.X509_name_st* [ %call, %land.lhs.true ], [ null, %if.end ]
  %subjectName = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 50
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %subjectName, align 8, !tbaa !51
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %0) #6
  store %struct.X509_name_st* %val_dup.0, %struct.X509_name_st** %subjectName, align 8, !tbaa !51
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end4 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set0_reqExtensions(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.stack_st_X509_EXTENSION* noundef %exts) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 670, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.OSSL_CMP_CTX_set0_reqExtensions, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %subjectAltNames = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 51
  %0 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %subjectAltNames, align 8, !tbaa !52
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %0) #8
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp2 = icmp sgt i32 %call1, 0
  %cmp3 = icmp ne %struct.stack_st_X509_EXTENSION* %exts, null
  %or.cond = and i1 %cmp3, %cmp2
  br i1 %or.cond, label %land.lhs.true4, label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %call5 = tail call i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef nonnull %exts, i32 noundef 85, i32 noundef -1) #6
  %cmp6 = icmp sgt i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true4
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 676, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.OSSL_CMP_CTX_set0_reqExtensions, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 102, i8* noundef null) #6
  br label %return

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  %reqExtensions = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 54
  %1 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %reqExtensions, align 8, !tbaa !53
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %1) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call9, void (i8*)* noundef bitcast (void (%struct.X509_extension_st*)* @X509_EXTENSION_free to void (i8*)*)) #6
  store %struct.stack_st_X509_EXTENSION* %exts, %struct.stack_st_X509_EXTENSION** %reqExtensions, align 8, !tbaa !53
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then7 ], [ 1, %if.end8 ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 688, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.OSSL_CMP_CTX_reqExtensions_have_SAN, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %reqExtensions = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 54
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %reqExtensions, align 8, !tbaa !53
  %cmp1.not = icmp eq %struct.stack_st_X509_EXTENSION* %0, null
  br i1 %cmp1.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %call = tail call i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef nonnull %0, i32 noundef 85, i32 noundef -1) #6
  %1 = xor i32 %call, -1
  %call.lobit.not = lshr i32 %1, 31
  br label %return

return:                                           ; preds = %if.end, %land.rhs, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ], [ %call.lobit.not, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_push1_subjectAltName(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.GENERAL_NAME_st* noundef %name) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp eq %struct.GENERAL_NAME_st* %name, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 707, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.OSSL_CMP_CTX_push1_subjectAltName, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #8
  %cmp2 = icmp eq i32 %call, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 712, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.OSSL_CMP_CTX_push1_subjectAltName, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 102, i8* noundef null) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %subjectAltNames = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 51
  %0 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %subjectAltNames, align 8, !tbaa !52
  %cmp5 = icmp eq %struct.stack_st_GENERAL_NAME* %0, null
  br i1 %cmp5, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end4
  %call6 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %1 = bitcast %struct.stack_st_GENERAL_NAME** %subjectAltNames to %struct.stack_st**
  store %struct.stack_st* %call6, %struct.stack_st** %1, align 8, !tbaa !52
  %cmp8 = icmp eq %struct.stack_st* %call6, null
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %if.end4
  %call11 = tail call %struct.GENERAL_NAME_st* @GENERAL_NAME_dup(%struct.GENERAL_NAME_st* noundef nonnull %name) #6
  %cmp12 = icmp eq %struct.GENERAL_NAME_st* %call11, null
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end10
  %2 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %subjectAltNames, align 8, !tbaa !52
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %2) #8
  %3 = bitcast %struct.GENERAL_NAME_st* %call11 to i8*
  %call18 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call16, i8* noundef nonnull %3) #6
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.end14
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef nonnull %call11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10, %land.lhs.true, %if.then19, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.then19 ], [ 0, %land.lhs.true ], [ 0, %if.end10 ], [ 1, %if.end14 ]
  ret i32 %retval.0
}

declare %struct.GENERAL_NAME_st* @GENERAL_NAME_dup(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_cert(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_st* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_CMP_CTX_set1_cert, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.x509_st* %val, null
  br i1 %cmp1.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @ossl_x509v3_cache_extensions(%struct.x509_st* noundef nonnull %val) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %land.lhs.true5

if.then2:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_CMP_CTX_set1_cert, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 147, i8* noundef null) #6
  br label %return

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %val) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %return, label %if.end9

if.end9:                                          ; preds = %if.end, %land.lhs.true5
  %cert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 27
  %0 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !33
  tail call void @X509_free(%struct.x509_st* noundef %0) #6
  store %struct.x509_st* %val, %struct.x509_st** %cert, align 8, !tbaa !33
  br label %return

return:                                           ; preds = %land.lhs.true5, %if.end9, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end9 ], [ 0, %if.then2 ], [ 0, %land.lhs.true5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_build_cert_chain(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_store_st* noundef %own_trusted, %struct.stack_st_X509* noundef %candidates) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 740, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_CMP_CTX_build_cert_chain, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %untrusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 23
  %call = tail call i32 @ossl_x509_add_certs_new(%struct.stack_st_X509** noundef nonnull %untrusted, %struct.stack_st_X509* noundef %candidates, i32 noundef 5) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_CMP_CTX_build_cert_chain, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 748, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0)) #8
  %cert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 27
  %0 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !33
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !11
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !13
  %propq = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %3 = load i8*, i8** %propq, align 8, !tbaa !14
  %call5 = tail call %struct.stack_st_X509* @X509_build_chain(%struct.x509_st* noundef %0, %struct.stack_st_X509* noundef %1, %struct.x509_store_st* noundef %own_trusted, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %2, i8* noundef %3) #6
  %cmp6 = icmp eq %struct.stack_st_X509* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end2
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_CMP_CTX_build_cert_chain, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 164, i8* noundef null) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  %call9 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_CMP_CTX_build_cert_chain, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 755, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0)) #8
  %chain10 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 28
  store %struct.stack_st_X509* %call5, %struct.stack_st_X509** %chain10, align 8, !tbaa !34
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end8, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then7 ], [ 1, %if.end8 ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare %struct.stack_st_X509* @X509_build_chain(%struct.x509_st* noundef, %struct.stack_st_X509* noundef, %struct.x509_store_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_oldCert(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_st* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 766, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_CTX_set1_oldCert, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.x509_st* %val, null
  br i1 %cmp1.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @ossl_x509v3_cache_extensions(%struct.x509_st* noundef nonnull %val) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %land.lhs.true5

if.then2:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 766, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_CTX_set1_oldCert, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 147, i8* noundef null) #6
  br label %return

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %val) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %return, label %if.end9

if.end9:                                          ; preds = %if.end, %land.lhs.true5
  %oldCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 58
  %0 = load %struct.x509_st*, %struct.x509_st** %oldCert, align 8, !tbaa !55
  tail call void @X509_free(%struct.x509_st* noundef %0) #6
  store %struct.x509_st* %val, %struct.x509_st** %oldCert, align 8, !tbaa !55
  br label %return

return:                                           ; preds = %land.lhs.true5, %if.end9, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end9 ], [ 0, %if.then2 ], [ 0, %land.lhs.true5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_p10CSR(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.X509_req_st* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OSSL_CMP_CTX_set1_p10CSR, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.X509_req_st* %val, null
  br i1 %cmp1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call %struct.X509_req_st* @X509_REQ_dup(%struct.X509_req_st* noundef nonnull %val) #6
  %cmp2 = icmp eq %struct.X509_req_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %val_dup.0 = phi %struct.X509_req_st* [ %call, %land.lhs.true ], [ null, %if.end ]
  %p10CSR = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 59
  %0 = load %struct.X509_req_st*, %struct.X509_req_st** %p10CSR, align 8, !tbaa !56
  tail call void @X509_REQ_free(%struct.X509_req_st* noundef %0) #6
  store %struct.X509_req_st* %val_dup.0, %struct.X509_req_st** %p10CSR, align 8, !tbaa !56
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end4 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare %struct.X509_req_st* @X509_REQ_dup(%struct.X509_req_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @OSSL_CMP_CTX_get0_newCert(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 792, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_CTX_get0_newCert, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %newCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 65
  %0 = load %struct.x509_st*, %struct.x509_st** %newCert, align 8, !tbaa !59
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.x509_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.x509_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_pkey(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 799, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_CMP_CTX_set1_pkey, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %cmp4.not = icmp eq %struct.evp_pkey_st* %val, null
  br i1 %cmp4.not, label %if.end7, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end
  %call = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %val) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end7

if.end7:                                          ; preds = %land.lhs.true5, %if.end
  %pkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 29
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !35
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %0) #6
  store %struct.evp_pkey_st* %val, %struct.evp_pkey_st** %pkey, align 8, !tbaa !35
  br label %return

return:                                           ; preds = %land.lhs.true5, %if.end7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end7 ], [ 0, %land.lhs.true5 ]
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set0_newPkey(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %priv, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 805, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_CTX_set0_newPkey, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %newPkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 46
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %newPkey, align 8, !tbaa !49
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %0) #6
  store %struct.evp_pkey_st* %pkey, %struct.evp_pkey_st** %newPkey, align 8, !tbaa !49
  %newPkey_priv = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 47
  store i32 %priv, i32* %newPkey_priv, align 8, !tbaa !66
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef readonly %ctx, i32 noundef %priv) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 819, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_CTX_get0_newPkey, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %newPkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 46
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %newPkey, align 8, !tbaa !49
  %cmp1.not = icmp eq %struct.evp_pkey_st* %0, null
  br i1 %cmp1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %tobool.not = icmp eq i32 %priv, 0
  br i1 %tobool.not, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then2
  %newPkey_priv = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 47
  %1 = load i32, i32* %newPkey_priv, align 8, !tbaa !66
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %return, label %cond.false

cond.false:                                       ; preds = %land.lhs.true, %if.then2
  br label %return

if.end5:                                          ; preds = %if.end
  %p10CSR = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 59
  %2 = load %struct.X509_req_st*, %struct.X509_req_st** %p10CSR, align 8, !tbaa !56
  %cmp6.not = icmp eq %struct.X509_req_st* %2, null
  br i1 %cmp6.not, label %if.end14, label %if.then7

if.then7:                                         ; preds = %if.end5
  %tobool8.not = icmp eq i32 %priv, 0
  br i1 %tobool8.not, label %cond.false10, label %return

cond.false10:                                     ; preds = %if.then7
  %call = tail call %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef nonnull %2) #6
  br label %return

if.end14:                                         ; preds = %if.end5
  %pkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 29
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !35
  br label %return

return:                                           ; preds = %cond.false10, %if.then7, %cond.false, %land.lhs.true, %if.end14, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ %3, %if.end14 ], [ %0, %cond.false ], [ null, %land.lhs.true ], [ %call, %cond.false10 ], [ null, %if.then7 ]
  ret %struct.evp_pkey_st* %retval.0
}

declare %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_asn1_octet_string_set1(%struct.asn1_string_st** noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_proxy(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 862, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CMP_CTX_set1_proxy, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8* %val, null
  br i1 %cmp1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %val, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 862) #6
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %val_dup.0 = phi i8* [ %call, %land.lhs.true ], [ null, %if.end ]
  %proxy = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 10
  %0 = load i8*, i8** %proxy, align 8, !tbaa !28
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 862) #6
  store i8* %val_dup.0, i8** %proxy, align 8, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end4 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_server(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 865, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OSSL_CMP_CTX_set1_server, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8* %val, null
  br i1 %cmp1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %val, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 865) #6
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %val_dup.0 = phi i8* [ %call, %land.lhs.true ], [ null, %if.end ]
  %server = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 8
  %0 = load i8*, i8** %server, align 8, !tbaa !27
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 865) #6
  store i8* %val_dup.0, i8** %server, align 8, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end4 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_no_proxy(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 868, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_CMP_CTX_set1_no_proxy, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8* %val, null
  br i1 %cmp1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %val, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 868) #6
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %val_dup.0 = phi i8* [ %call, %land.lhs.true ], [ null, %if.end ]
  %no_proxy = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 11
  %0 = load i8*, i8** %no_proxy, align 8, !tbaa !29
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 868) #6
  store i8* %val_dup.0, i8** %no_proxy, align 8, !tbaa !29
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end4 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set_http_cb(%struct.ossl_cmp_ctx_st* noundef writeonly %ctx, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef %cb) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 874, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OSSL_CMP_CTX_set_http_cb, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %http_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 16
  store %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* %cb, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)** %http_cb, align 8, !tbaa !67
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef writeonly %ctx, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 885, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_CTX_set_http_cb_arg, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %http_cb_arg = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 17
  store i8* %arg, i8** %http_cb_arg, align 8, !tbaa !68
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @OSSL_CMP_CTX_get_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 899, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_CTX_get_http_cb_arg, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %http_cb_arg = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 17
  %0 = load i8*, i8** %http_cb_arg, align 8, !tbaa !68
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %0, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set_transfer_cb(%struct.ossl_cmp_ctx_st* noundef writeonly %ctx, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* noundef %cb) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 909, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_CTX_set_transfer_cb, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %transfer_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 4
  store %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* %cb, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)** %transfer_cb, align 8, !tbaa !69
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef writeonly %ctx, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 920, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.OSSL_CMP_CTX_set_transfer_cb_arg, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %transfer_cb_arg = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 5
  store i8* %arg, i8** %transfer_cb_arg, align 8, !tbaa !70
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @OSSL_CMP_CTX_get_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 934, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.OSSL_CMP_CTX_get_transfer_cb_arg, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %transfer_cb_arg = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 5
  %0 = load i8*, i8** %transfer_cb_arg, align 8, !tbaa !70
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %0, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set_serverPort(%struct.ossl_cmp_ctx_st* noundef writeonly %ctx, i32 noundef %port) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 944, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CMP_CTX_set_serverPort, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %serverPort = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 9
  store i32 %port, i32* %serverPort, align 8, !tbaa !71
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set1_serverPath(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 952, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_CTX_set1_serverPath, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8* %val, null
  br i1 %cmp1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %val, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 952) #6
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %val_dup.0 = phi i8* [ %call, %land.lhs.true ], [ null, %if.end ]
  %serverPath = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 7
  %0 = load i8*, i8** %serverPath, align 8, !tbaa !26
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 952) #6
  store i8* %val_dup.0, i8** %serverPath, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end4 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ossl_cmp_ctx_set_failInfoCode(%struct.ossl_cmp_ctx_st* noundef writeonly %ctx, i32 noundef %fail_info) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %failInfoCode = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 64
  store i32 %fail_info, i32* %failInfoCode, align 8, !tbaa !17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_get_failInfoCode(%struct.ossl_cmp_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 970, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_CMP_CTX_get_failInfoCode, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %failInfoCode = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 64
  %0 = load i32, i32* %failInfoCode, align 8, !tbaa !17
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %opt, i32 noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 982, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CMP_CTX_set_option, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.selectcmp.case1 = icmp eq i32 %opt, 27
  %switch.selectcmp.case2 = icmp eq i32 %opt, 24
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %0 = sext i1 %switch.selectcmp to i32
  %cmp2 = icmp sgt i32 %0, %val
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 998, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CMP_CTX_set_option, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 177, i8* noundef null) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  switch i32 %opt, label %sw.default39 [
    i32 0, label %sw.bb5
    i32 25, label %sw.bb9
    i32 26, label %sw.bb10
    i32 30, label %sw.bb11
    i32 31, label %sw.bb12
    i32 20, label %sw.bb13
    i32 21, label %sw.bb14
    i32 22, label %sw.bb15
    i32 23, label %sw.bb16
    i32 35, label %sw.bb17
    i32 24, label %sw.bb18
    i32 34, label %sw.bb22
    i32 32, label %sw.bb25
    i32 33, label %sw.bb30
    i32 10, label %sw.bb31
    i32 11, label %sw.bb32
    i32 12, label %sw.bb33
    i32 36, label %sw.bb34
    i32 27, label %sw.bb35
  ]

sw.bb5:                                           ; preds = %if.end4
  %cmp6 = icmp sgt i32 %val, 8
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %sw.bb5
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1005, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CMP_CTX_set_option, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 175, i8* noundef null) #6
  br label %cleanup

if.end8:                                          ; preds = %sw.bb5
  %log_verbosity = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 3
  store i32 %val, i32* %log_verbosity, align 8, !tbaa !15
  br label %sw.epilog40

sw.bb9:                                           ; preds = %if.end4
  %implicitConfirm = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 43
  store i32 %val, i32* %implicitConfirm, align 8, !tbaa !72
  br label %sw.epilog40

sw.bb10:                                          ; preds = %if.end4
  %disableConfirm = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 44
  store i32 %val, i32* %disableConfirm, align 4, !tbaa !73
  br label %sw.epilog40

sw.bb11:                                          ; preds = %if.end4
  %unprotectedSend = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 26
  store i32 %val, i32* %unprotectedSend, align 8, !tbaa !74
  br label %sw.epilog40

sw.bb12:                                          ; preds = %if.end4
  %unprotectedErrors = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 18
  store i32 %val, i32* %unprotectedErrors, align 8, !tbaa !75
  br label %sw.epilog40

sw.bb13:                                          ; preds = %if.end4
  %days = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 49
  store i32 %val, i32* %days, align 8, !tbaa !76
  br label %sw.epilog40

sw.bb14:                                          ; preds = %if.end4
  %SubjectAltName_nodefault = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 52
  store i32 %val, i32* %SubjectAltName_nodefault, align 8, !tbaa !77
  br label %sw.epilog40

sw.bb15:                                          ; preds = %if.end4
  %setSubjectAltNameCritical = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 53
  store i32 %val, i32* %setSubjectAltNameCritical, align 4, !tbaa !78
  br label %sw.epilog40

sw.bb16:                                          ; preds = %if.end4
  %setPoliciesCritical = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 56
  store i32 %val, i32* %setPoliciesCritical, align 8, !tbaa !79
  br label %sw.epilog40

sw.bb17:                                          ; preds = %if.end4
  %ignore_keyusage = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 24
  store i32 %val, i32* %ignore_keyusage, align 8, !tbaa !80
  br label %sw.epilog40

sw.bb18:                                          ; preds = %if.end4
  %cmp19 = icmp sgt i32 %val, 3
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %sw.bb18
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1039, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CMP_CTX_set_option, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 175, i8* noundef null) #6
  br label %cleanup

if.end21:                                         ; preds = %sw.bb18
  %popoMethod = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 57
  store i32 %val, i32* %popoMethod, align 4, !tbaa !23
  br label %sw.epilog40

sw.bb22:                                          ; preds = %if.end4
  %digest = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 37
  %call = tail call fastcc i32 @cmp_ctx_set_md(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.evp_md_st** noundef nonnull %digest, i32 noundef %val) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %sw.epilog40

sw.bb25:                                          ; preds = %if.end4
  %pbm_owf = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 33
  %call26 = tail call fastcc i32 @cmp_ctx_set_md(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.evp_md_st** noundef nonnull %pbm_owf, i32 noundef %val) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %sw.epilog40

sw.bb30:                                          ; preds = %if.end4
  %pbm_mac = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 35
  store i32 %val, i32* %pbm_mac, align 4, !tbaa !22
  br label %sw.epilog40

sw.bb31:                                          ; preds = %if.end4
  %keep_alive = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 12
  store i32 %val, i32* %keep_alive, align 8, !tbaa !18
  br label %sw.epilog40

sw.bb32:                                          ; preds = %if.end4
  %msg_timeout = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 13
  store i32 %val, i32* %msg_timeout, align 4, !tbaa !19
  br label %sw.epilog40

sw.bb33:                                          ; preds = %if.end4
  %total_timeout = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 14
  store i32 %val, i32* %total_timeout, align 8, !tbaa !81
  br label %sw.epilog40

sw.bb34:                                          ; preds = %if.end4
  %permitTAInExtraCertsForIR = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 25
  store i32 %val, i32* %permitTAInExtraCertsForIR, align 4, !tbaa !82
  br label %sw.epilog40

sw.bb35:                                          ; preds = %if.end4
  %cmp36 = icmp sgt i32 %val, 10
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %sw.bb35
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1069, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CMP_CTX_set_option, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 175, i8* noundef null) #6
  br label %cleanup

if.end38:                                         ; preds = %sw.bb35
  %revocationReason = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 60
  store i32 %val, i32* %revocationReason, align 8, !tbaa !24
  br label %sw.epilog40

sw.default39:                                     ; preds = %if.end4
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1075, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CMP_CTX_set_option, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 174, i8* noundef null) #6
  br label %cleanup

sw.epilog40:                                      ; preds = %sw.bb25, %sw.bb22, %if.end38, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %if.end21, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %if.end8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb25, %sw.bb22, %sw.epilog40, %sw.default39, %if.then37, %if.then20, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %sw.default39 ], [ 0, %if.then37 ], [ 1, %sw.epilog40 ], [ 0, %if.then20 ], [ 0, %if.then7 ], [ 0, %sw.bb22 ], [ 0, %sw.bb25 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_CTX_get_option(%struct.ossl_cmp_ctx_st* noundef readonly %ctx, i32 noundef %opt) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1089, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CMP_CTX_get_option, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  switch i32 %opt, label %sw.default [
    i32 0, label %sw.bb
    i32 25, label %sw.bb1
    i32 26, label %sw.bb2
    i32 30, label %sw.bb3
    i32 31, label %sw.bb4
    i32 20, label %sw.bb5
    i32 21, label %sw.bb6
    i32 22, label %sw.bb7
    i32 23, label %sw.bb8
    i32 35, label %sw.bb9
    i32 24, label %sw.bb10
    i32 34, label %sw.bb11
    i32 32, label %sw.bb12
    i32 33, label %sw.bb14
    i32 10, label %sw.bb15
    i32 11, label %sw.bb16
    i32 12, label %sw.bb17
    i32 36, label %sw.bb18
    i32 27, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end
  %log_verbosity = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 3
  %0 = load i32, i32* %log_verbosity, align 8, !tbaa !15
  br label %return

sw.bb1:                                           ; preds = %if.end
  %implicitConfirm = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 43
  %1 = load i32, i32* %implicitConfirm, align 8, !tbaa !72
  br label %return

sw.bb2:                                           ; preds = %if.end
  %disableConfirm = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 44
  %2 = load i32, i32* %disableConfirm, align 4, !tbaa !73
  br label %return

sw.bb3:                                           ; preds = %if.end
  %unprotectedSend = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 26
  %3 = load i32, i32* %unprotectedSend, align 8, !tbaa !74
  br label %return

sw.bb4:                                           ; preds = %if.end
  %unprotectedErrors = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 18
  %4 = load i32, i32* %unprotectedErrors, align 8, !tbaa !75
  br label %return

sw.bb5:                                           ; preds = %if.end
  %days = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 49
  %5 = load i32, i32* %days, align 8, !tbaa !76
  br label %return

sw.bb6:                                           ; preds = %if.end
  %SubjectAltName_nodefault = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 52
  %6 = load i32, i32* %SubjectAltName_nodefault, align 8, !tbaa !77
  br label %return

sw.bb7:                                           ; preds = %if.end
  %setSubjectAltNameCritical = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 53
  %7 = load i32, i32* %setSubjectAltNameCritical, align 4, !tbaa !78
  br label %return

sw.bb8:                                           ; preds = %if.end
  %setPoliciesCritical = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 56
  %8 = load i32, i32* %setPoliciesCritical, align 8, !tbaa !79
  br label %return

sw.bb9:                                           ; preds = %if.end
  %ignore_keyusage = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 24
  %9 = load i32, i32* %ignore_keyusage, align 8, !tbaa !80
  br label %return

sw.bb10:                                          ; preds = %if.end
  %popoMethod = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 57
  %10 = load i32, i32* %popoMethod, align 4, !tbaa !23
  br label %return

sw.bb11:                                          ; preds = %if.end
  %digest = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 37
  %11 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !43
  %call = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %11) #6
  br label %return

sw.bb12:                                          ; preds = %if.end
  %pbm_owf = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 33
  %12 = load %struct.evp_md_st*, %struct.evp_md_st** %pbm_owf, align 8, !tbaa !41
  %call13 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %12) #6
  br label %return

sw.bb14:                                          ; preds = %if.end
  %pbm_mac = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 35
  %13 = load i32, i32* %pbm_mac, align 4, !tbaa !22
  br label %return

sw.bb15:                                          ; preds = %if.end
  %keep_alive = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 12
  %14 = load i32, i32* %keep_alive, align 8, !tbaa !18
  br label %return

sw.bb16:                                          ; preds = %if.end
  %msg_timeout = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 13
  %15 = load i32, i32* %msg_timeout, align 4, !tbaa !19
  br label %return

sw.bb17:                                          ; preds = %if.end
  %total_timeout = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 14
  %16 = load i32, i32* %total_timeout, align 8, !tbaa !81
  br label %return

sw.bb18:                                          ; preds = %if.end
  %permitTAInExtraCertsForIR = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 25
  %17 = load i32, i32* %permitTAInExtraCertsForIR, align 4, !tbaa !82
  br label %return

sw.bb19:                                          ; preds = %if.end
  %revocationReason = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 60
  %18 = load i32, i32* %revocationReason, align 8, !tbaa !24
  br label %return

sw.default:                                       ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1133, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CMP_CTX_get_option, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 174, i8* noundef null) #6
  br label %return

return:                                           ; preds = %sw.default, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %sw.default ], [ %18, %sw.bb19 ], [ %17, %sw.bb18 ], [ %16, %sw.bb17 ], [ %15, %sw.bb16 ], [ %14, %sw.bb15 ], [ %13, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %call, %sw.bb11 ], [ %10, %sw.bb10 ], [ %9, %sw.bb9 ], [ %8, %sw.bb8 ], [ %7, %sw.bb7 ], [ %6, %sw.bb6 ], [ %5, %sw.bb5 ], [ %4, %sw.bb4 ], [ %3, %sw.bb3 ], [ %2, %sw.bb2 ], [ %1, %sw.bb1 ], [ %0, %sw.bb ]
  ret i32 %retval.0
}

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 168}
!5 = !{!"ossl_cmp_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !9, i64 72, !6, i64 80, !6, i64 88, !9, i64 96, !9, i64 100, !9, i64 104, !10, i64 112, !6, i64 120, !6, i64 128, !9, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !9, i64 184, !9, i64 188, !9, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !10, i64 240, !6, i64 248, !9, i64 256, !9, i64 260, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !9, i64 320, !9, i64 324, !6, i64 328, !6, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !6, i64 368, !6, i64 376, !9, i64 384, !9, i64 388, !6, i64 392, !6, i64 400, !9, i64 408, !9, i64 412, !6, i64 416, !6, i64 424, !9, i64 432, !6, i64 440, !9, i64 448, !6, i64 456, !9, i64 464, !6, i64 472, !6, i64 480, !6, i64 488, !6, i64 496, !6, i64 504, !6, i64 512}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 176}
!12 = !{!6, !6, i64 0}
!13 = !{!5, !6, i64 0}
!14 = !{!5, !6, i64 8}
!15 = !{!5, !9, i64 24}
!16 = !{!5, !9, i64 448}
!17 = !{!5, !9, i64 464}
!18 = !{!5, !9, i64 96}
!19 = !{!5, !9, i64 100}
!20 = !{!5, !10, i64 240}
!21 = !{!5, !9, i64 256}
!22 = !{!5, !9, i64 260}
!23 = !{!5, !9, i64 412}
!24 = !{!5, !9, i64 432}
!25 = !{!5, !6, i64 48}
!26 = !{!5, !6, i64 56}
!27 = !{!5, !6, i64 64}
!28 = !{!5, !6, i64 80}
!29 = !{!5, !6, i64 88}
!30 = !{!5, !6, i64 144}
!31 = !{!5, !6, i64 152}
!32 = !{!5, !6, i64 160}
!33 = !{!5, !6, i64 200}
!34 = !{!5, !6, i64 208}
!35 = !{!5, !6, i64 216}
!36 = !{!5, !6, i64 224}
!37 = !{!5, !6, i64 232}
!38 = !{!39, !6, i64 8}
!39 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !6, i64 8, !10, i64 16}
!40 = !{!39, !9, i64 0}
!41 = !{!5, !6, i64 248}
!42 = !{!5, !6, i64 264}
!43 = !{!5, !6, i64 272}
!44 = !{!5, !6, i64 280}
!45 = !{!5, !6, i64 288}
!46 = !{!5, !6, i64 296}
!47 = !{!5, !6, i64 312}
!48 = !{!5, !6, i64 328}
!49 = !{!5, !6, i64 336}
!50 = !{!5, !6, i64 352}
!51 = !{!5, !6, i64 368}
!52 = !{!5, !6, i64 376}
!53 = !{!5, !6, i64 392}
!54 = !{!5, !6, i64 400}
!55 = !{!5, !6, i64 416}
!56 = !{!5, !6, i64 424}
!57 = !{!5, !6, i64 440}
!58 = !{!5, !6, i64 456}
!59 = !{!5, !6, i64 472}
!60 = !{!5, !6, i64 480}
!61 = !{!5, !6, i64 488}
!62 = !{!5, !6, i64 496}
!63 = !{!5, !6, i64 16}
!64 = !{!5, !6, i64 504}
!65 = !{!5, !6, i64 512}
!66 = !{!5, !9, i64 344}
!67 = !{!5, !6, i64 120}
!68 = !{!5, !6, i64 128}
!69 = !{!5, !6, i64 32}
!70 = !{!5, !6, i64 40}
!71 = !{!5, !9, i64 72}
!72 = !{!5, !9, i64 320}
!73 = !{!5, !9, i64 324}
!74 = !{!5, !9, i64 192}
!75 = !{!5, !9, i64 136}
!76 = !{!5, !9, i64 360}
!77 = !{!5, !9, i64 384}
!78 = !{!5, !9, i64 388}
!79 = !{!5, !9, i64 408}
!80 = !{!5, !9, i64 184}
!81 = !{!5, !9, i64 104}
!82 = !{!5, !9, i64 188}
