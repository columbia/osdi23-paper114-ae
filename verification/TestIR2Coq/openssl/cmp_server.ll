; ModuleID = 'crypto/cmp/cmp_server.c'
source_filename = "crypto/cmp/cmp_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_cmp_srv_ctx_st = type { %struct.ossl_cmp_ctx_st*, i8*, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)*, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)*, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)*, void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)*, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)*, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)*, i32, i32, i32, i32 }
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
%struct.x509_store_st = type opaque
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
%struct.ossl_cmp_pkisi_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.ossl_crmf_msg_st = type opaque
%struct.stack_st = type opaque
%struct.stack_st_OSSL_CMP_REVDETAILS = type opaque
%struct.ossl_cmp_revdetails_st = type { %struct.ossl_crmf_certtemplate_st*, %struct.stack_st_X509_EXTENSION* }
%struct.ossl_crmf_certtemplate_st = type opaque
%struct.ossl_crmf_certid_st = type opaque
%struct.ossl_cmp_errormsgcontent_st = type { %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING* }
%struct.stack_st_OSSL_CMP_CERTSTATUS = type opaque
%struct.stack_st_OSSL_CMP_POLLREQ = type opaque
%struct.ossl_cmp_pollreq_st = type { %struct.asn1_string_st* }
%struct.ossl_cmp_itav_st = type { %struct.asn1_object_st*, %union.anon.3 }
%union.anon.3 = type { i8* }

@.str = private unnamed_addr constant [24 x i8] c"crypto/cmp/cmp_server.c\00", align 1
@__func__.OSSL_CMP_SRV_CTX_init = private unnamed_addr constant [22 x i8] c"OSSL_CMP_SRV_CTX_init\00", align 1
@__func__.OSSL_CMP_SRV_CTX_get0_cmp_ctx = private unnamed_addr constant [30 x i8] c"OSSL_CMP_SRV_CTX_get0_cmp_ctx\00", align 1
@__func__.OSSL_CMP_SRV_CTX_get0_custom_ctx = private unnamed_addr constant [33 x i8] c"OSSL_CMP_SRV_CTX_get0_custom_ctx\00", align 1
@__func__.OSSL_CMP_SRV_CTX_set_send_unprotected_errors = private unnamed_addr constant [45 x i8] c"OSSL_CMP_SRV_CTX_set_send_unprotected_errors\00", align 1
@__func__.OSSL_CMP_SRV_CTX_set_accept_unprotected = private unnamed_addr constant [40 x i8] c"OSSL_CMP_SRV_CTX_set_accept_unprotected\00", align 1
@__func__.OSSL_CMP_SRV_CTX_set_accept_raverified = private unnamed_addr constant [39 x i8] c"OSSL_CMP_SRV_CTX_set_accept_raverified\00", align 1
@__func__.OSSL_CMP_SRV_CTX_set_grant_implicit_confirm = private unnamed_addr constant [44 x i8] c"OSSL_CMP_SRV_CTX_set_grant_implicit_confirm\00", align 1
@__func__.OSSL_CMP_SRV_process_request = private unnamed_addr constant [29 x i8] c"OSSL_CMP_SRV_process_request\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"WARN\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Assuming that last transaction with ID=%s got aborted\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"received %s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"sending %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"cannot send proper CMP response\00", align 1
@__func__.OSSL_CMP_CTX_server_perform = private unnamed_addr constant [28 x i8] c"OSSL_CMP_CTX_server_perform\00", align 1
@__func__.unprotected_exception = private unnamed_addr constant [22 x i8] c"unprotected_exception\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"ignoring %s protection of request message\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"missing\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"ignoring missing protection of error message\00", align 1
@__func__.process_cert_request = private unnamed_addr constant [21 x i8] c"process_cert_request\00", align 1
@__func__.process_rr = private unnamed_addr constant [11 x i8] c"process_rr\00", align 1
@__func__.process_error = private unnamed_addr constant [14 x i8] c"process_error\00", align 1
@__func__.process_certConf = private unnamed_addr constant [17 x i8] c"process_certConf\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"certificate rejected by client\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"All CertStatus but the first will be ignored\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"certificate rejected by client %s %s\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"without\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"PKIStatus\00", align 1
@__func__.process_pollReq = private unnamed_addr constant [16 x i8] c"process_pollReq\00", align 1
@switch.table.process_cert_request = private unnamed_addr constant [8 x i32] [i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 8], align 4

; Function Attrs: noinline nounwind uwtable
define void @OSSL_CMP_SRV_CTX_free(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 0
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  tail call void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef %0) #4
  %1 = bitcast %struct.ossl_cmp_srv_ctx_st* %srv_ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 48) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_srv_ctx_st* @OSSL_CMP_SRV_CTX_new(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 80, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 53) #4
  %0 = bitcast i8* %call to %struct.ossl_cmp_srv_ctx_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %ctx2 = bitcast i8* %call to %struct.ossl_cmp_ctx_st**
  store %struct.ossl_cmp_ctx_st* %call1, %struct.ossl_cmp_ctx_st** %ctx2, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.ossl_cmp_ctx_st* %call1, null
  br i1 %cmp3, label %err, label %cleanup

err:                                              ; preds = %if.end, %entry
  tail call void @OSSL_CMP_SRV_CTX_free(%struct.ossl_cmp_srv_ctx_st* noundef %0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err
  %retval.0 = phi %struct.ossl_cmp_srv_ctx_st* [ null, %err ], [ %0, %if.end ]
  ret %struct.ossl_cmp_srv_ctx_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_SRV_CTX_init(%struct.ossl_cmp_srv_ctx_st* noundef writeonly %srv_ctx, i8* noundef %custom_ctx, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)* noundef %process_cert_request, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)* noundef %process_rr, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)* noundef %process_genm, void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)* noundef %process_error, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)* noundef %process_certConf, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)* noundef %process_pollReq) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_CMP_SRV_CTX_init, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %entry
  %custom_ctx1 = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 1
  store i8* %custom_ctx, i8** %custom_ctx1, align 8, !tbaa !10
  %process_cert_request2 = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 2
  store %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)* %process_cert_request, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)** %process_cert_request2, align 8, !tbaa !11
  %process_rr3 = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 3
  store %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)* %process_rr, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)** %process_rr3, align 8, !tbaa !12
  %process_genm4 = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 4
  store i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)* %process_genm, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)** %process_genm4, align 8, !tbaa !13
  %process_error5 = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 5
  store void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)* %process_error, void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)** %process_error5, align 8, !tbaa !14
  %process_certConf6 = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 6
  store i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)* %process_certConf, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)** %process_certConf6, align 8, !tbaa !15
  %process_pollReq7 = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 7
  store i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)* %process_pollReq, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)** %process_pollReq7, align 8, !tbaa !16
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_ctx_st* @OSSL_CMP_SRV_CTX_get0_cmp_ctx(%struct.ossl_cmp_srv_ctx_st* noundef readonly %srv_ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_CMP_SRV_CTX_get0_cmp_ctx, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 0
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_cmp_ctx_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.ossl_cmp_ctx_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef readonly %srv_ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.OSSL_CMP_SRV_CTX_get0_custom_ctx, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %entry
  %custom_ctx = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 1
  %0 = load i8*, i8** %custom_ctx, align 8, !tbaa !10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %0, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_SRV_CTX_set_send_unprotected_errors(%struct.ossl_cmp_srv_ctx_st* noundef writeonly %srv_ctx, i32 noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__func__.OSSL_CMP_SRV_CTX_set_send_unprotected_errors, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp ne i32 %val, 0
  %conv = zext i1 %cmp1 to i32
  %sendUnprotectedErrors = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 8
  store i32 %conv, i32* %sendUnprotectedErrors, align 8, !tbaa !17
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_SRV_CTX_set_accept_unprotected(%struct.ossl_cmp_srv_ctx_st* noundef writeonly %srv_ctx, i32 noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.OSSL_CMP_SRV_CTX_set_accept_unprotected, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp ne i32 %val, 0
  %conv = zext i1 %cmp1 to i32
  %acceptUnprotected = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 9
  store i32 %conv, i32* %acceptUnprotected, align 4, !tbaa !18
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_SRV_CTX_set_accept_raverified(%struct.ossl_cmp_srv_ctx_st* noundef writeonly %srv_ctx, i32 noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.OSSL_CMP_SRV_CTX_set_accept_raverified, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp ne i32 %val, 0
  %conv = zext i1 %cmp1 to i32
  %acceptRAVerified = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 10
  store i32 %conv, i32* %acceptRAVerified, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_SRV_CTX_set_grant_implicit_confirm(%struct.ossl_cmp_srv_ctx_st* noundef writeonly %srv_ctx, i32 noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.OSSL_CMP_SRV_CTX_set_grant_implicit_confirm, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp ne i32 %val, 0
  %conv = zext i1 %cmp1 to i32
  %grantImplicitConfirm = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 11
  store i32 %conv, i32* %grantImplicitConfirm, align 4, !tbaa !20
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @OSSL_CMP_SRV_process_request(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.ossl_cmp_msg_st* noundef %req) local_unnamed_addr #0 {
entry:
  %data105 = alloca i8*, align 8
  %flags = alloca i32, align 4
  %cmp = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %ctx1 = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 0
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.ossl_cmp_ctx_st* %0, null
  %cmp4 = icmp eq %struct.ossl_cmp_msg_st* %req, null
  %or.cond = or i1 %cmp4, %cmp2
  br i1 %or.cond, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %req, i64 0, i32 1
  %1 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !21
  %cmp6 = icmp eq %struct.ossl_cmp_pkibody_st* %1, null
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %call = tail call %struct.ossl_cmp_pkiheader_st* @OSSL_CMP_MSG_get0_header(%struct.ossl_cmp_msg_st* noundef nonnull %req) #4
  %cmp8 = icmp eq %struct.ossl_cmp_pkiheader_st* %call, null
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 455, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_SRV_process_request, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %2 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !4
  %secretValue = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %2, i64 0, i32 31
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %secretValue, align 8, !tbaa !23
  %sender = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %call, i64 0, i32 1
  %4 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %sender, align 8, !tbaa !26
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %4, i64 0, i32 0
  %5 = load i32, i32* %type, align 8, !tbaa !28
  %cmp10.not = icmp eq i32 %5, 4
  br i1 %cmp10.not, label %if.end12, label %if.then104.sink.split

if.end12:                                         ; preds = %if.end
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %4, i64 0, i32 1
  %directoryName = bitcast %union.anon* %d to %struct.X509_name_st**
  %6 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !30
  %call14 = tail call i32 @OSSL_CMP_CTX_set1_recipient(%struct.ossl_cmp_ctx_st* noundef nonnull %2, %struct.X509_name_st* noundef %6) #4
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then104, label %if.end16

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef nonnull %req) #4
  switch i32 %call17, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 7, label %sw.bb
    i32 11, label %sw.bb
    i32 21, label %sw.bb
    i32 23, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end16, %if.end16, %if.end16, %if.end16, %if.end16, %if.end16, %if.end16
  %transactionID = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %2, i64 0, i32 38
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID, align 8, !tbaa !31
  %cmp18.not = icmp eq %struct.asn1_string_st* %7, null
  br i1 %cmp18.not, label %if.end28, label %if.then19

if.then19:                                        ; preds = %sw.bb
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 2
  %8 = load i8*, i8** %data, align 8, !tbaa !32
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 0
  %9 = load i32, i32* %length, align 8, !tbaa !34
  %conv = sext i32 %9 to i64
  %call22 = tail call i8* @OPENSSL_buf2hexstr(i8* noundef %8, i64 noundef %conv) #4
  %cmp23.not = icmp eq i8* %call22, null
  br i1 %cmp23.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.then19
  %call26 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %2, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_SRV_process_request, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %call22) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then19
  tail call void @CRYPTO_free(i8* noundef %call22, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 490) #4
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %sw.bb
  %call29 = tail call i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef nonnull %2, %struct.asn1_string_st* noundef null) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then104, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.end28
  %call32 = tail call i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.ossl_cmp_ctx_st* noundef nonnull %2, %struct.asn1_string_st* noundef null) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then104, label %sw.epilog

sw.default:                                       ; preds = %if.end16
  %transactionID36 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %2, i64 0, i32 38
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID36, align 8, !tbaa !31
  %cmp37 = icmp eq %struct.asn1_string_st* %10, null
  br i1 %cmp37, label %if.then104.sink.split, label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %lor.lhs.false31
  %call41 = tail call i8* @ossl_cmp_bodytype_to_string(i32 noundef %call17) #4
  %call42 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %2, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_SRV_process_request, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 507, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call41) #4
  %acceptUnprotected = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 9
  %11 = load i32, i32* %acceptUnprotected, align 4, !tbaa !18
  %call43 = tail call i32 @ossl_cmp_msg_check_update(%struct.ossl_cmp_ctx_st* noundef nonnull %2, %struct.ossl_cmp_msg_st* noundef nonnull %req, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef nonnull @unprotected_exception, i32 noundef %11) #4
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %secretValue, align 8, !tbaa !23
  %cmp45.not = icmp eq %struct.asn1_string_st* %12, null
  br i1 %cmp45.not, label %if.end55, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog
  %pkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %2, i64 0, i32 29
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !35
  %cmp47.not = icmp eq %struct.evp_pkey_st* %13, null
  br i1 %cmp47.not, label %if.end55, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %land.lhs.true
  %call50 = tail call i32 @ossl_cmp_hdr_get_protection_nid(%struct.ossl_cmp_pkiheader_st* noundef nonnull %call) #4
  %cmp51.not = icmp eq i32 %call50, 782
  br i1 %cmp51.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %land.lhs.true49
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %secretValue, align 8, !tbaa !23
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %land.lhs.true49, %land.lhs.true, %sw.epilog
  %tobool56.not = icmp eq i32 %call43, 0
  br i1 %tobool56.not, label %if.then104, label %if.end58

if.end58:                                         ; preds = %if.end55
  switch i32 %call17, label %if.then104.sink.split [
    i32 0, label %sw.bb59
    i32 2, label %sw.bb59
    i32 4, label %sw.bb59
    i32 7, label %sw.bb59
    i32 11, label %sw.bb65
    i32 21, label %sw.bb72
    i32 23, label %sw.bb79
    i32 24, label %sw.bb86
    i32 25, label %sw.bb93
  ]

sw.bb59:                                          ; preds = %if.end58, %if.end58, %if.end58, %if.end58
  %process_cert_request = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 2
  %14 = load %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)*, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)** %process_cert_request, align 8, !tbaa !11
  %cmp60 = icmp eq %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)* %14, null
  br i1 %cmp60, label %if.then104.sink.split, label %if.else

if.else:                                          ; preds = %sw.bb59
  %call63 = tail call fastcc %struct.ossl_cmp_msg_st* @process_cert_request(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx, %struct.ossl_cmp_msg_st* noundef nonnull %req) #5
  br label %err

sw.bb65:                                          ; preds = %if.end58
  %process_rr = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 3
  %15 = load %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)*, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)** %process_rr, align 8, !tbaa !12
  %cmp66 = icmp eq %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)* %15, null
  br i1 %cmp66, label %if.then104.sink.split, label %if.else69

if.else69:                                        ; preds = %sw.bb65
  %call70 = tail call fastcc %struct.ossl_cmp_msg_st* @process_rr(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx, %struct.ossl_cmp_msg_st* noundef nonnull %req) #5
  br label %err

sw.bb72:                                          ; preds = %if.end58
  %process_genm = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 4
  %16 = load i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)*, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)** %process_genm, align 8, !tbaa !13
  %cmp73 = icmp eq i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)* %16, null
  br i1 %cmp73, label %if.then104.sink.split, label %if.else76

if.else76:                                        ; preds = %sw.bb72
  %call77 = tail call fastcc %struct.ossl_cmp_msg_st* @process_genm(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx, %struct.ossl_cmp_msg_st* noundef nonnull %req) #5
  br label %err

sw.bb79:                                          ; preds = %if.end58
  %process_error = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 5
  %17 = load void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)*, void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)** %process_error, align 8, !tbaa !14
  %cmp80 = icmp eq void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)* %17, null
  br i1 %cmp80, label %if.then104.sink.split, label %if.else83

if.else83:                                        ; preds = %sw.bb79
  %call84 = tail call fastcc %struct.ossl_cmp_msg_st* @process_error(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx, %struct.ossl_cmp_msg_st* noundef nonnull %req) #5
  br label %err

sw.bb86:                                          ; preds = %if.end58
  %process_certConf = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 6
  %18 = load i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)*, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)** %process_certConf, align 8, !tbaa !15
  %cmp87 = icmp eq i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)* %18, null
  br i1 %cmp87, label %if.then104.sink.split, label %if.else90

if.else90:                                        ; preds = %sw.bb86
  %call91 = tail call fastcc %struct.ossl_cmp_msg_st* @process_certConf(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx, %struct.ossl_cmp_msg_st* noundef nonnull %req) #5
  br label %err

sw.bb93:                                          ; preds = %if.end58
  %process_pollReq = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 7
  %19 = load i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)*, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)** %process_pollReq, align 8, !tbaa !16
  %cmp94 = icmp eq i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)* %19, null
  br i1 %cmp94, label %if.then104.sink.split, label %if.else97

if.else97:                                        ; preds = %sw.bb93
  %call98 = tail call fastcc %struct.ossl_cmp_msg_st* @process_pollReq(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx, %struct.ossl_cmp_msg_st* noundef nonnull %req) #5
  br label %err

err:                                              ; preds = %if.else, %if.else69, %if.else76, %if.else83, %if.else90, %if.else97
  %rsp.0 = phi %struct.ossl_cmp_msg_st* [ %call98, %if.else97 ], [ %call91, %if.else90 ], [ %call84, %if.else83 ], [ %call77, %if.else76 ], [ %call70, %if.else69 ], [ %call63, %if.else ]
  %cmp102 = icmp eq %struct.ossl_cmp_msg_st* %rsp.0, null
  br i1 %cmp102, label %if.then104, label %cond.end

if.then104.sink.split:                            ; preds = %if.end58, %sw.bb93, %sw.bb86, %sw.bb79, %sw.bb72, %sw.bb65, %sw.bb59, %sw.default, %if.end
  %.sink271 = phi i32 [ 466, %if.end ], [ 501, %sw.default ], [ 523, %sw.bb59 ], [ 529, %sw.bb65 ], [ 535, %sw.bb72 ], [ 541, %sw.bb79 ], [ 547, %sw.bb86 ], [ 553, %sw.bb93 ], [ 558, %if.end58 ]
  %.sink = phi i32 [ 150, %if.end ], [ 133, %sw.default ], [ 133, %sw.bb59 ], [ 133, %sw.bb65 ], [ 133, %sw.bb72 ], [ 133, %sw.bb79 ], [ 133, %sw.bb86 ], [ 133, %sw.bb93 ], [ 133, %if.end58 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink271, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_SRV_process_request, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef %.sink, i8* noundef null) #4
  br label %if.then104

if.then104:                                       ; preds = %if.then104.sink.split, %if.end12, %if.end28, %lor.lhs.false31, %if.end55, %err
  %20 = bitcast i8** %data105 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #6
  store i8* null, i8** %data105, align 8, !tbaa !36
  %21 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #6
  store i32 0, i32* %flags, align 4, !tbaa !37
  %call107 = call i64 @ERR_peek_error_data(i8** noundef nonnull %data105, i32* noundef nonnull %flags) #4
  %transactionID108 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %2, i64 0, i32 38
  %22 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID108, align 8, !tbaa !31
  %cmp109 = icmp eq %struct.asn1_string_st* %22, null
  br i1 %cmp109, label %if.then111, label %if.end115

if.then111:                                       ; preds = %if.then104
  %transactionID112 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %call, i64 0, i32 7
  %23 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID112, align 8, !tbaa !38
  %call113 = call i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef nonnull %2, %struct.asn1_string_st* noundef %23) #4
  %senderNonce = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %call, i64 0, i32 8
  %24 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderNonce, align 8, !tbaa !39
  %call114 = call i32 @ossl_cmp_ctx_set1_recipNonce(%struct.ossl_cmp_ctx_st* noundef nonnull %2, %struct.asn1_string_st* noundef %24) #4
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %if.then104
  %25 = load i32, i32* %flags, align 4, !tbaa !37
  %and = and i32 %25, 2
  %cmp116 = icmp eq i32 %and, 0
  br i1 %cmp116, label %if.then122, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %if.end115
  %26 = load i8*, i8** %data105, align 8, !tbaa !36
  %27 = load i8, i8* %26, align 1, !tbaa !30
  %cmp120 = icmp eq i8 %27, 0
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %lor.lhs.false118, %if.end115
  store i8* null, i8** %data105, align 8, !tbaa !36
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %lor.lhs.false118
  %call124 = call i8* @ERR_reason_error_string(i64 noundef %call107) #4
  %call125 = call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef 2, i32 noundef 4, i8* noundef %call124) #4
  %cmp126.not = icmp eq %struct.ossl_cmp_pkisi_st* %call125, null
  br i1 %cmp126.not, label %if.end132.thread250, label %if.end132

if.end132.thread250:                              ; preds = %if.end123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #6
  call void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef nonnull %2) #4
  store %struct.asn1_string_st* %3, %struct.asn1_string_st** %secretValue, align 8, !tbaa !23
  br label %if.end144.thread

if.end132:                                        ; preds = %if.end123
  %28 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !4
  %29 = load i8*, i8** %data105, align 8, !tbaa !36
  %sendUnprotectedErrors = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 8
  %30 = load i32, i32* %sendUnprotectedErrors, align 8, !tbaa !17
  %call130 = call %struct.ossl_cmp_msg_st* @ossl_cmp_error_new(%struct.ossl_cmp_ctx_st* noundef %28, %struct.ossl_cmp_pkisi_st* noundef nonnull %call125, i64 noundef %call107, i8* noundef %29, i32 noundef %30) #4
  call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef nonnull %call125) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #6
  call void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef nonnull %2) #4
  store %struct.asn1_string_st* %3, %struct.asn1_string_st** %secretValue, align 8, !tbaa !23
  %cmp134.not = icmp eq %struct.ossl_cmp_msg_st* %call130, null
  br i1 %cmp134.not, label %if.end144.thread, label %cond.end.thread260

cond.end.thread260:                               ; preds = %if.end132
  %call136263 = call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef nonnull %call130) #4
  br label %if.end144

cond.end:                                         ; preds = %err
  tail call void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef nonnull %2) #4
  store %struct.asn1_string_st* %3, %struct.asn1_string_st** %secretValue, align 8, !tbaa !23
  %call136 = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef nonnull %rsp.0) #4
  br label %if.end144

if.end144.thread:                                 ; preds = %if.end132.thread250, %if.end132
  %call143 = call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 3, %struct.ossl_cmp_ctx_st* noundef nonnull %2, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_SRV_process_request, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 596, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0)) #4
  %status268 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %2, i64 0, i32 62
  store i32 -2, i32* %status268, align 8, !tbaa !40
  br label %sw.bb151

if.end144:                                        ; preds = %cond.end.thread260, %cond.end
  %call136265 = phi i32 [ %call136263, %cond.end.thread260 ], [ %call136, %cond.end ]
  %rsp.2246264 = phi %struct.ossl_cmp_msg_st* [ %call130, %cond.end.thread260 ], [ %rsp.0, %cond.end ]
  %call140 = call i8* @ossl_cmp_bodytype_to_string(i32 noundef %call136265) #4
  %call141 = call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %2, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_SRV_process_request, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 594, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* noundef %call140) #4
  %status = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %2, i64 0, i32 62
  store i32 -2, i32* %status, align 8, !tbaa !40
  switch i32 %call136265, label %cleanup [
    i32 1, label %sw.bb145
    i32 3, label %sw.bb145
    i32 8, label %sw.bb145
    i32 12, label %sw.bb151
    i32 19, label %sw.bb151
    i32 22, label %sw.bb151
    i32 23, label %sw.bb151
  ]

sw.bb145:                                         ; preds = %if.end144, %if.end144, %if.end144
  %call146 = call i32 @OSSL_CMP_CTX_get_option(%struct.ossl_cmp_ctx_st* noundef nonnull %2, i32 noundef 25) #4
  %cmp147 = icmp eq i32 %call146, 0
  br i1 %cmp147, label %cleanup, label %sw.bb151

sw.bb151:                                         ; preds = %if.end144.thread, %sw.bb145, %if.end144, %if.end144, %if.end144, %if.end144
  %status270 = phi i32* [ %status268, %if.end144.thread ], [ %status, %sw.bb145 ], [ %status, %if.end144 ], [ %status, %if.end144 ], [ %status, %if.end144 ], [ %status, %if.end144 ]
  %rsp.2247256269 = phi %struct.ossl_cmp_msg_st* [ null, %if.end144.thread ], [ %rsp.2246264, %sw.bb145 ], [ %rsp.2246264, %if.end144 ], [ %rsp.2246264, %if.end144 ], [ %rsp.2246264, %if.end144 ], [ %rsp.2246264, %if.end144 ]
  %call152 = call i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef nonnull %2, %struct.asn1_string_st* noundef null) #4
  %call153 = call i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.ossl_cmp_ctx_st* noundef nonnull %2, %struct.asn1_string_st* noundef null) #4
  store i32 -1, i32* %status270, align 8, !tbaa !40
  br label %cleanup

cleanup:                                          ; preds = %sw.bb145, %if.end144, %sw.bb151, %if.then
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %if.then ], [ %rsp.2247256269, %sw.bb151 ], [ %rsp.2246264, %if.end144 ], [ %rsp.2246264, %sw.bb145 ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

declare %struct.ossl_cmp_pkiheader_st* @OSSL_CMP_MSG_get0_header(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_set1_recipient(%struct.ossl_cmp_ctx_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_buf2hexstr(i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_print_log(i32 noundef, %struct.ossl_cmp_ctx_st* noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_set1_transactionID(%struct.ossl_cmp_ctx_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.ossl_cmp_ctx_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i8* @ossl_cmp_bodytype_to_string(i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_msg_check_update(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @unprotected_exception(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %req, i32 noundef %invalid_protection, i32 noundef %accept_unprotected_requests) #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp ne %struct.ossl_cmp_msg_st* %req, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %accept_unprotected_requests, 0
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %tobool4.not = icmp eq i32 %invalid_protection, 0
  %cond = select i1 %tobool4.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)
  %call = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.unprotected_exception, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8* noundef %cond) #4
  br label %return

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef nonnull %req) #4
  %cmp7 = icmp eq i32 %call6, 23
  br i1 %cmp7, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.end5
  %call8 = tail call i32 @OSSL_CMP_CTX_get_option(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 31) #4
  %cmp9 = icmp eq i32 %call8, 1
  br i1 %cmp9, label %if.then10, label %return

if.then10:                                        ; preds = %land.lhs.true
  %call11 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.unprotected_exception, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0)) #4
  br label %return

return:                                           ; preds = %if.end5, %land.lhs.true, %entry, %if.then10, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 1, %if.then10 ], [ -1, %entry ], [ 0, %land.lhs.true ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

declare i32 @ossl_cmp_hdr_get_protection_nid(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_msg_st* @process_cert_request(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.ossl_cmp_msg_st* noundef %req) unnamed_addr #0 {
entry:
  %certOut = alloca %struct.x509_st*, align 8
  %chainOut = alloca %struct.stack_st_X509*, align 8
  %caPubs = alloca %struct.stack_st_X509*, align 8
  %0 = bitcast %struct.x509_st** %certOut to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.x509_st* null, %struct.x509_st** %certOut, align 8, !tbaa !36
  %1 = bitcast %struct.stack_st_X509** %chainOut to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %chainOut, align 8, !tbaa !36
  %2 = bitcast %struct.stack_st_X509** %caPubs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %caPubs, align 8, !tbaa !36
  %cmp.not = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp.not, label %cleanup65, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ctx = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 0
  %3 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  %cmp1.not = icmp ne %struct.ossl_cmp_ctx_st* %3, null
  %cmp2 = icmp ne %struct.ossl_cmp_msg_st* %req, null
  %spec.select = and i1 %cmp2, %cmp1.not
  br i1 %spec.select, label %if.end, label %cleanup65

if.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef nonnull %req) #4
  %4 = icmp ult i32 %call, 8
  br i1 %4, label %switch.hole_check, label %sw.default

sw.default:                                       ; preds = %switch.hole_check, %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.process_cert_request, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 133, i8* noundef null) #4
  br label %cleanup65

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %call to i8
  %switch.shifted = lshr i8 -107, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %sw.default, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check
  %6 = sext i32 %call to i64
  %switch.gep = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.process_cert_request, i64 0, i64 %6
  %switch.load = load i32, i32* %switch.gep, align 4
  %call6 = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef nonnull %req) #4
  %cmp7 = icmp eq i32 %call6, 4
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %req, i64 0, i32 1
  %7 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !21
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %switch.lookup
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %7, i64 0, i32 1
  %p10cr9 = bitcast %union.anon.1* %value to %struct.X509_req_st**
  %8 = load %struct.X509_req_st*, %struct.X509_req_st** %p10cr9, align 8, !tbaa !30
  br label %if.end23

if.else:                                          ; preds = %switch.lookup
  %ir = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %7, i64 0, i32 1, i32 0
  %9 = load %struct.stack_st_OSSL_CRMF_MSG*, %struct.stack_st_OSSL_CRMF_MSG** %ir, align 8, !tbaa !30
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CRMF_MSG_sk_type(%struct.stack_st_OSSL_CRMF_MSG* noundef %9) #5
  %call13 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call12) #4
  %cmp14.not = icmp eq i32 %call13, 1
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.else
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.process_cert_request, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 161, i8* noundef null) #4
  br label %cleanup65

if.end16:                                         ; preds = %if.else
  %call18 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call12, i32 noundef 0) #4
  %10 = bitcast i8* %call18 to %struct.ossl_crmf_msg_st*
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.end16
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.process_cert_request, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 157, i8* noundef null) #4
  br label %cleanup65

cleanup:                                          ; preds = %if.end16
  %call22 = tail call i32 @OSSL_CRMF_MSG_get_certReqId(%struct.ossl_crmf_msg_st* noundef nonnull %10) #4
  br label %if.end23

if.end23:                                         ; preds = %cleanup, %if.then8
  %crm.1 = phi %struct.ossl_crmf_msg_st* [ null, %if.then8 ], [ %10, %cleanup ]
  %p10cr.0 = phi %struct.X509_req_st* [ %8, %if.then8 ], [ null, %cleanup ]
  %certReqId.1 = phi i32 [ 0, %if.then8 ], [ %call22, %cleanup ]
  %11 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  %acceptRAVerified = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 10
  %12 = load i32, i32* %acceptRAVerified, align 8, !tbaa !19
  %call25 = tail call i32 @ossl_cmp_verify_popo(%struct.ossl_cmp_ctx_st* noundef %11, %struct.ossl_cmp_msg_st* noundef nonnull %req, i32 noundef %12) #4
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %if.then26, label %if.else33

if.then26:                                        ; preds = %if.end23
  %call27 = tail call i64 @ERR_peek_error() #4
  %call28 = tail call i8* @ERR_reason_error_string(i64 noundef %call27) #4
  %call29 = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef 2, i32 noundef 512, i8* noundef %call28) #4
  %cmp30 = icmp eq %struct.ossl_cmp_pkisi_st* %call29, null
  br i1 %cmp30, label %cleanup65, label %if.end55

if.else33:                                        ; preds = %if.end23
  %call34 = tail call %struct.ossl_cmp_pkiheader_st* @OSSL_CMP_MSG_get0_header(%struct.ossl_cmp_msg_st* noundef nonnull %req) #4
  %process_cert_request = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 2
  %13 = load %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)*, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)** %process_cert_request, align 8, !tbaa !11
  %call35 = call %struct.ossl_cmp_pkisi_st* %13(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx, %struct.ossl_cmp_msg_st* noundef nonnull %req, i32 noundef %certReqId.1, %struct.ossl_crmf_msg_st* noundef %crm.1, %struct.X509_req_st* noundef %p10cr.0, %struct.x509_st** noundef nonnull %certOut, %struct.stack_st_X509** noundef nonnull %chainOut, %struct.stack_st_X509** noundef nonnull %caPubs) #4
  %cmp36 = icmp eq %struct.ossl_cmp_pkisi_st* %call35, null
  br i1 %cmp36, label %err, label %if.end38

if.end38:                                         ; preds = %if.else33
  %14 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  %call40 = call i32 @ossl_cmp_hdr_has_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef %call34) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.end46, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %if.end38
  %grantImplicitConfirm = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 11
  %15 = load i32, i32* %grantImplicitConfirm, align 4, !tbaa !20
  %tobool43.not = icmp eq i32 %15, 0
  br i1 %tobool43.not, label %land.end46, label %land.rhs44

land.rhs44:                                       ; preds = %land.lhs.true42
  %16 = load %struct.x509_st*, %struct.x509_st** %certOut, align 8, !tbaa !36
  %cmp45 = icmp ne %struct.x509_st* %16, null
  %phi.cast = zext i1 %cmp45 to i32
  br label %land.end46

land.end46:                                       ; preds = %land.rhs44, %land.lhs.true42, %if.end38
  %17 = phi i32 [ 0, %land.lhs.true42 ], [ 0, %if.end38 ], [ %phi.cast, %land.rhs44 ]
  %call48 = call i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef %14, i32 noundef 25, i32 noundef %17) #4
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %land.end46.if.end55_crit_edge

land.end46.if.end55_crit_edge:                    ; preds = %land.end46
  %.pre = load %struct.x509_st*, %struct.x509_st** %certOut, align 8, !tbaa !36
  %.pre110 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chainOut, align 8, !tbaa !36
  %.pre111 = load %struct.stack_st_X509*, %struct.stack_st_X509** %caPubs, align 8, !tbaa !36
  br label %if.end55

if.end55:                                         ; preds = %land.end46.if.end55_crit_edge, %if.then26
  %18 = phi %struct.stack_st_X509* [ null, %if.then26 ], [ %.pre111, %land.end46.if.end55_crit_edge ]
  %19 = phi %struct.stack_st_X509* [ null, %if.then26 ], [ %.pre110, %land.end46.if.end55_crit_edge ]
  %20 = phi %struct.x509_st* [ null, %if.then26 ], [ %.pre, %land.end46.if.end55_crit_edge ]
  %si.0 = phi %struct.ossl_cmp_pkisi_st* [ %call29, %if.then26 ], [ %call35, %land.end46.if.end55_crit_edge ]
  %21 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  %sendUnprotectedErrors = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 8
  %22 = load i32, i32* %sendUnprotectedErrors, align 8, !tbaa !17
  %call57 = call %struct.ossl_cmp_msg_st* @ossl_cmp_certrep_new(%struct.ossl_cmp_ctx_st* noundef %21, i32 noundef %switch.load, i32 noundef %certReqId.1, %struct.ossl_cmp_pkisi_st* noundef nonnull %si.0, %struct.x509_st* noundef %20, %struct.x509_st* noundef null, %struct.stack_st_X509* noundef %19, %struct.stack_st_X509* noundef %18, i32 noundef %22) #4
  %cmp58 = icmp eq %struct.ossl_cmp_msg_st* %call57, null
  br i1 %cmp58, label %if.then59, label %err

if.then59:                                        ; preds = %if.end55
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.process_cert_request, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 117, i8* noundef null) #4
  br label %err

err:                                              ; preds = %land.end46, %if.else33, %if.end55, %if.then59
  %si.1 = phi %struct.ossl_cmp_pkisi_st* [ %si.0, %if.then59 ], [ %si.0, %if.end55 ], [ null, %if.else33 ], [ %call35, %land.end46 ]
  %msg.0 = phi %struct.ossl_cmp_msg_st* [ null, %if.then59 ], [ %call57, %if.end55 ], [ null, %if.else33 ], [ null, %land.end46 ]
  call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef %si.1) #4
  %23 = load %struct.x509_st*, %struct.x509_st** %certOut, align 8, !tbaa !36
  call void @X509_free(%struct.x509_st* noundef %23) #4
  %24 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chainOut, align 8, !tbaa !36
  %call61 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %24) #5
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call61, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #4
  %25 = load %struct.stack_st_X509*, %struct.stack_st_X509** %caPubs, align 8, !tbaa !36
  %call63 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %25) #5
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call63, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #4
  br label %cleanup65

cleanup65:                                        ; preds = %if.then20, %if.then15, %entry, %if.then26, %land.lhs.true, %err, %sw.default
  %retval.2 = phi %struct.ossl_cmp_msg_st* [ null, %sw.default ], [ %msg.0, %err ], [ null, %land.lhs.true ], [ null, %if.then26 ], [ null, %entry ], [ null, %if.then15 ], [ null, %if.then20 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.ossl_cmp_msg_st* %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_msg_st* @process_rr(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.ossl_cmp_msg_st* noundef %req) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ctx = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 0
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  %cmp1.not = icmp ne %struct.ossl_cmp_ctx_st* %0, null
  %cmp2 = icmp ne %struct.ossl_cmp_msg_st* %req, null
  %spec.select = and i1 %cmp2, %cmp1.not
  br i1 %spec.select, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %req, i64 0, i32 1
  %1 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !21
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %1, i64 0, i32 1
  %rr = bitcast %union.anon.1* %value to %struct.stack_st_OSSL_CMP_REVDETAILS**
  %2 = load %struct.stack_st_OSSL_CMP_REVDETAILS*, %struct.stack_st_OSSL_CMP_REVDETAILS** %rr, align 8, !tbaa !30
  %call = tail call fastcc i32 @sk_OSSL_CMP_REVDETAILS_num(%struct.stack_st_OSSL_CMP_REVDETAILS* noundef %2) #5
  %cmp4.not = icmp eq i32 %call, 1
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.process_rr, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 161, i8* noundef null) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !21
  %value8 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %3, i64 0, i32 1
  %rr9 = bitcast %union.anon.1* %value8 to %struct.stack_st_OSSL_CMP_REVDETAILS**
  %4 = load %struct.stack_st_OSSL_CMP_REVDETAILS*, %struct.stack_st_OSSL_CMP_REVDETAILS** %rr9, align 8, !tbaa !30
  %call10 = tail call fastcc %struct.ossl_cmp_revdetails_st* @sk_OSSL_CMP_REVDETAILS_value(%struct.stack_st_OSSL_CMP_REVDETAILS* noundef %4) #5
  %cmp11 = icmp eq %struct.ossl_cmp_revdetails_st* %call10, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.process_rr, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 158, i8* noundef null) #4
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %certDetails = getelementptr inbounds %struct.ossl_cmp_revdetails_st, %struct.ossl_cmp_revdetails_st* %call10, i64 0, i32 0
  %5 = load %struct.ossl_crmf_certtemplate_st*, %struct.ossl_crmf_certtemplate_st** %certDetails, align 8, !tbaa !41
  %call14 = tail call %struct.X509_name_st* @OSSL_CRMF_CERTTEMPLATE_get0_issuer(%struct.ossl_crmf_certtemplate_st* noundef %5) #4
  %call15 = tail call %struct.asn1_string_st* @OSSL_CRMF_CERTTEMPLATE_get0_serialNumber(%struct.ossl_crmf_certtemplate_st* noundef %5) #4
  %cmp16 = icmp ne %struct.X509_name_st* %call14, null
  %cmp18 = icmp ne %struct.asn1_string_st* %call15, null
  %or.cond = select i1 %cmp16, i1 %cmp18, i1 false
  br i1 %or.cond, label %land.lhs.true19, label %if.end23

land.lhs.true19:                                  ; preds = %if.end13
  %call20 = tail call %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_gen(%struct.X509_name_st* noundef nonnull %call14, %struct.asn1_string_st* noundef nonnull %call15) #4
  %cmp21 = icmp eq %struct.ossl_crmf_certid_st* %call20, null
  br i1 %cmp21, label %cleanup, label %if.end23

if.end23:                                         ; preds = %land.lhs.true19, %if.end13
  %certId.0 = phi %struct.ossl_crmf_certid_st* [ %call20, %land.lhs.true19 ], [ null, %if.end13 ]
  %process_rr = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 3
  %6 = load %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)*, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)** %process_rr, align 8, !tbaa !12
  %call24 = tail call %struct.ossl_cmp_pkisi_st* %6(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx, %struct.ossl_cmp_msg_st* noundef nonnull %req, %struct.X509_name_st* noundef %call14, %struct.asn1_string_st* noundef %call15) #4
  %cmp25 = icmp eq %struct.ossl_cmp_pkisi_st* %call24, null
  br i1 %cmp25, label %err, label %if.end27

if.end27:                                         ; preds = %if.end23
  %7 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  %sendUnprotectedErrors = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 8
  %8 = load i32, i32* %sendUnprotectedErrors, align 8, !tbaa !17
  %call29 = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_rp_new(%struct.ossl_cmp_ctx_st* noundef %7, %struct.ossl_cmp_pkisi_st* noundef nonnull %call24, %struct.ossl_crmf_certid_st* noundef %certId.0, i32 noundef %8) #4
  %cmp30 = icmp eq %struct.ossl_cmp_msg_st* %call29, null
  br i1 %cmp30, label %if.then31, label %err

if.then31:                                        ; preds = %if.end27
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.process_rr, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 126, i8* noundef null) #4
  br label %err

err:                                              ; preds = %if.end27, %if.then31, %if.end23
  %msg.0 = phi %struct.ossl_cmp_msg_st* [ null, %if.end23 ], [ null, %if.then31 ], [ %call29, %if.end27 ]
  tail call void @OSSL_CRMF_CERTID_free(%struct.ossl_crmf_certid_st* noundef %certId.0) #4
  tail call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef %call24) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true19, %land.lhs.true, %err, %if.then12, %if.then5
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %if.then5 ], [ null, %if.then12 ], [ %msg.0, %err ], [ null, %land.lhs.true ], [ null, %land.lhs.true19 ], [ null, %entry ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_msg_st* @process_genm(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.ossl_cmp_msg_st* noundef %req) unnamed_addr #0 {
entry:
  %itavs = alloca %struct.stack_st_OSSL_CMP_ITAV*, align 8
  %0 = bitcast %struct.stack_st_OSSL_CMP_ITAV** %itavs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %cmp.not = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ctx = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 0
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  %cmp1.not = icmp ne %struct.ossl_cmp_ctx_st* %1, null
  %cmp2 = icmp ne %struct.ossl_cmp_msg_st* %req, null
  %spec.select = and i1 %cmp2, %cmp1.not
  br i1 %spec.select, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %process_genm = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 4
  %2 = load i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)*, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)** %process_genm, align 8, !tbaa !13
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %req, i64 0, i32 1
  %3 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !21
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %3, i64 0, i32 1
  %genm = bitcast %union.anon.1* %value to %struct.stack_st_OSSL_CMP_ITAV**
  %4 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %genm, align 8, !tbaa !30
  %call = call i32 %2(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx, %struct.ossl_cmp_msg_st* noundef nonnull %req, %struct.stack_st_OSSL_CMP_ITAV* noundef %4, %struct.stack_st_OSSL_CMP_ITAV** noundef nonnull %itavs) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %5 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  %6 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %itavs, align 8, !tbaa !36
  %call7 = call %struct.ossl_cmp_msg_st* @ossl_cmp_genp_new(%struct.ossl_cmp_ctx_st* noundef %5, %struct.stack_st_OSSL_CMP_ITAV* noundef %6) #4
  %7 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %itavs, align 8, !tbaa !36
  %call8 = call fastcc %struct.stack_st* @ossl_check_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %7) #5
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call8, void (i8*)* noundef bitcast (void (%struct.ossl_cmp_itav_st*)* @OSSL_CMP_ITAV_free to void (i8*)*)) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %land.lhs.true, %if.end5
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ %call7, %if.end5 ], [ null, %land.lhs.true ], [ null, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.ossl_cmp_msg_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_msg_st* @process_error(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.ossl_cmp_msg_st* noundef %req) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ctx = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 0
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  %cmp1.not = icmp ne %struct.ossl_cmp_ctx_st* %0, null
  %cmp2 = icmp ne %struct.ossl_cmp_msg_st* %req, null
  %spec.select = and i1 %cmp2, %cmp1.not
  br i1 %spec.select, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %req, i64 0, i32 1
  %1 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !21
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %1, i64 0, i32 1
  %error = bitcast %union.anon.1* %value to %struct.ossl_cmp_errormsgcontent_st**
  %2 = load %struct.ossl_cmp_errormsgcontent_st*, %struct.ossl_cmp_errormsgcontent_st** %error, align 8, !tbaa !30
  %process_error = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 5
  %3 = load void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)*, void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)** %process_error, align 8, !tbaa !14
  %pKIStatusInfo = getelementptr inbounds %struct.ossl_cmp_errormsgcontent_st, %struct.ossl_cmp_errormsgcontent_st* %2, i64 0, i32 0
  %4 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %pKIStatusInfo, align 8, !tbaa !43
  %errorCode = getelementptr inbounds %struct.ossl_cmp_errormsgcontent_st, %struct.ossl_cmp_errormsgcontent_st* %2, i64 0, i32 1
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %errorCode, align 8, !tbaa !45
  %errorDetails = getelementptr inbounds %struct.ossl_cmp_errormsgcontent_st, %struct.ossl_cmp_errormsgcontent_st* %2, i64 0, i32 2
  %6 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %errorDetails, align 8, !tbaa !46
  tail call void %3(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx, %struct.ossl_cmp_msg_st* noundef nonnull %req, %struct.ossl_cmp_pkisi_st* noundef %4, %struct.asn1_string_st* noundef %5, %struct.stack_st_ASN1_UTF8STRING* noundef %6) #4
  %7 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_pkiconf_new(%struct.ossl_cmp_ctx_st* noundef %7) #4
  %cmp5 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp5, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.process_error, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 122, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then6, %land.lhs.true
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %land.lhs.true ], [ null, %if.then6 ], [ %call, %if.end ], [ null, %entry ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_msg_st* @process_certConf(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.ossl_cmp_msg_st* noundef %req) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp.not, label %cleanup50, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ctx1 = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 0
  %0 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx1, align 8, !tbaa !4
  %cmp2.not = icmp ne %struct.ossl_cmp_ctx_st* %0, null
  %cmp3 = icmp ne %struct.ossl_cmp_msg_st* %req, null
  %spec.select = and i1 %cmp3, %cmp2.not
  br i1 %spec.select, label %if.end, label %cleanup50

if.end:                                           ; preds = %land.lhs.true
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %req, i64 0, i32 1
  %1 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !21
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %1, i64 0, i32 1
  %certConf = bitcast %union.anon.1* %value to %struct.stack_st_OSSL_CMP_CERTSTATUS**
  %2 = load %struct.stack_st_OSSL_CMP_CERTSTATUS*, %struct.stack_st_OSSL_CMP_CERTSTATUS** %certConf, align 8, !tbaa !30
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_CERTSTATUS_sk_type(%struct.stack_st_OSSL_CMP_CERTSTATUS* noundef %2) #5
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  %call7 = tail call i32 @OSSL_CMP_CTX_get_option(%struct.ossl_cmp_ctx_st* noundef nonnull %0, i32 noundef 25) #4
  %cmp8 = icmp eq i32 %call7, 1
  br i1 %cmp8, label %cleanup50.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %status9 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %0, i64 0, i32 62
  %3 = load i32, i32* %status9, align 8, !tbaa !40
  %cmp10.not = icmp eq i32 %3, -2
  br i1 %cmp10.not, label %if.end12, label %cleanup50.sink.split

if.end12:                                         ; preds = %lor.lhs.false
  %cmp13 = icmp eq i32 %call6, 0
  br i1 %cmp13, label %if.end22.thread, label %if.else

if.end22.thread:                                  ; preds = %if.end12
  %call15 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 3, %struct.ossl_cmp_ctx_st* noundef nonnull %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.process_certConf, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0)) #4
  br label %if.end45

if.else:                                          ; preds = %if.end12
  %cmp16 = icmp sgt i32 %call6, 1
  br i1 %cmp16, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.else
  %call18 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.process_certConf, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0)) #4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then17
  %call21 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #4
  %cmp23.not = icmp eq i8* %call21, null
  br i1 %cmp23.not, label %if.end45, label %if.then24

if.then24:                                        ; preds = %if.end22
  %certReqId25 = getelementptr inbounds i8, i8* %call21, i64 8
  %4 = bitcast i8* %certReqId25 to %struct.asn1_string_st**
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %4, align 8, !tbaa !47
  %call26 = tail call i32 @ossl_cmp_asn1_get_int(%struct.asn1_string_st* noundef %5) #4
  %certHash27 = bitcast i8* %call21 to %struct.asn1_string_st**
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %certHash27, align 8, !tbaa !49
  %statusInfo = getelementptr inbounds i8, i8* %call21, i64 16
  %7 = bitcast i8* %statusInfo to %struct.ossl_cmp_pkisi_st**
  %8 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %7, align 8, !tbaa !50
  %process_certConf = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 6
  %9 = load i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)*, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)** %process_certConf, align 8, !tbaa !15
  %call28 = tail call i32 %9(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx, %struct.ossl_cmp_msg_st* noundef nonnull %req, i32 noundef %call26, %struct.asn1_string_st* noundef %6, %struct.ossl_cmp_pkisi_st* noundef %8) #4
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %cleanup50, label %if.end30

if.end30:                                         ; preds = %if.then24
  %cmp31.not = icmp eq %struct.ossl_cmp_pkisi_st* %8, null
  br i1 %cmp31.not, label %if.end45, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.end30
  %call33 = tail call i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef nonnull %8) #4
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.end45, label %if.then35

if.then35:                                        ; preds = %land.lhs.true32
  %call36 = tail call i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef nonnull %8) #4
  %call37 = tail call i8* @ossl_cmp_PKIStatus_to_string(i32 noundef %call36) #4
  %cmp38 = icmp eq i8* %call37, null
  %cond = select i1 %cmp38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)
  %cond40 = select i1 %cmp38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* %call37
  %call41 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.process_certConf, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* noundef %cond, i8* noundef %cond40) #4
  br label %if.end45

if.end45:                                         ; preds = %if.then35, %land.lhs.true32, %if.end30, %if.end22.thread, %if.end22
  %call46 = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_pkiconf_new(%struct.ossl_cmp_ctx_st* noundef nonnull %0) #4
  %cmp47 = icmp eq %struct.ossl_cmp_msg_st* %call46, null
  br i1 %cmp47, label %cleanup50.sink.split, label %cleanup50

cleanup50.sink.split:                             ; preds = %if.end45, %if.end, %lor.lhs.false
  %.sink89 = phi i32 [ 342, %lor.lhs.false ], [ 342, %if.end ], [ 374, %if.end45 ]
  %.sink = phi i32 [ 160, %lor.lhs.false ], [ 160, %if.end ], [ 122, %if.end45 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink89, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.process_certConf, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef %.sink, i8* noundef null) #4
  br label %cleanup50

cleanup50:                                        ; preds = %cleanup50.sink.split, %entry, %if.then24, %if.end45, %land.lhs.true
  %retval.1 = phi %struct.ossl_cmp_msg_st* [ null, %land.lhs.true ], [ %call46, %if.end45 ], [ null, %if.then24 ], [ null, %entry ], [ null, %cleanup50.sink.split ]
  ret %struct.ossl_cmp_msg_st* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_msg_st* @process_pollReq(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.ossl_cmp_msg_st* noundef %req) unnamed_addr #0 {
entry:
  %certReq = alloca %struct.ossl_cmp_msg_st*, align 8
  %check_after = alloca i64, align 8
  %0 = bitcast %struct.ossl_cmp_msg_st** %certReq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast i64* %check_after to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store i64 0, i64* %check_after, align 8, !tbaa !51
  %cmp.not = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ctx = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 0
  %2 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  %cmp1.not = icmp ne %struct.ossl_cmp_ctx_st* %2, null
  %cmp2 = icmp ne %struct.ossl_cmp_msg_st* %req, null
  %spec.select = and i1 %cmp2, %cmp1.not
  br i1 %spec.select, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %req, i64 0, i32 1
  %3 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !21
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %3, i64 0, i32 1
  %pollReq = bitcast %union.anon.1* %value to %struct.stack_st_OSSL_CMP_POLLREQ**
  %4 = load %struct.stack_st_OSSL_CMP_POLLREQ*, %struct.stack_st_OSSL_CMP_POLLREQ** %pollReq, align 8, !tbaa !30
  %call = tail call fastcc i32 @sk_OSSL_CMP_POLLREQ_num(%struct.stack_st_OSSL_CMP_POLLREQ* noundef %4) #5
  %cmp4.not = icmp eq i32 %call, 1
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.process_pollReq, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 161, i8* noundef null) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc %struct.ossl_cmp_pollreq_st* @sk_OSSL_CMP_POLLREQ_value(%struct.stack_st_OSSL_CMP_POLLREQ* noundef %4) #5
  %certReqId8 = getelementptr inbounds %struct.ossl_cmp_pollreq_st, %struct.ossl_cmp_pollreq_st* %call7, i64 0, i32 0
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %certReqId8, align 8, !tbaa !52
  %call9 = tail call i32 @ossl_cmp_asn1_get_int(%struct.asn1_string_st* noundef %5) #4
  %process_pollReq = getelementptr inbounds %struct.ossl_cmp_srv_ctx_st, %struct.ossl_cmp_srv_ctx_st* %srv_ctx, i64 0, i32 7
  %6 = load i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)*, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)** %process_pollReq, align 8, !tbaa !16
  %call10 = call i32 %6(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx, %struct.ossl_cmp_msg_st* noundef nonnull %req, i32 noundef %call9, %struct.ossl_cmp_msg_st** noundef nonnull %certReq, i64* noundef nonnull %check_after) #4
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end6
  %7 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %certReq, align 8, !tbaa !36
  %cmp13.not = icmp eq %struct.ossl_cmp_msg_st* %7, null
  br i1 %cmp13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call15 = call fastcc %struct.ossl_cmp_msg_st* @process_cert_request(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx, %struct.ossl_cmp_msg_st* noundef nonnull %7) #5
  %8 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %certReq, align 8, !tbaa !36
  call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %8) #4
  br label %cleanup

if.else:                                          ; preds = %if.end12
  %9 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %ctx, align 8, !tbaa !4
  %10 = load i64, i64* %check_after, align 8, !tbaa !51
  %call17 = call %struct.ossl_cmp_msg_st* @ossl_cmp_pollRep_new(%struct.ossl_cmp_ctx_st* noundef %9, i32 noundef %call9, i64 noundef %10) #4
  %cmp18 = icmp eq %struct.ossl_cmp_msg_st* %call17, null
  br i1 %cmp18, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.else
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 409, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.process_pollReq, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 123, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then14, %if.then19, %if.else, %if.end6, %land.lhs.true, %if.then5
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %if.then5 ], [ null, %land.lhs.true ], [ null, %if.end6 ], [ %call15, %if.then14 ], [ null, %if.then19 ], [ %call17, %if.else ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.ossl_cmp_msg_st* %retval.0
}

declare i64 @ERR_peek_error_data(i8** noundef, i32* noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_ctx_set1_recipNonce(%struct.ossl_cmp_ctx_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i8* @ERR_reason_error_string(i64 noundef) local_unnamed_addr #1

declare %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ossl_cmp_msg_st* @ossl_cmp_error_new(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_pkisi_st* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #1

declare void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_get_option(%struct.ossl_cmp_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @OSSL_CMP_CTX_server_perform(%struct.ossl_cmp_ctx_st* noundef %client_ctx, %struct.ossl_cmp_msg_st* noundef %req) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %client_ctx, null
  %cmp1 = icmp eq %struct.ossl_cmp_msg_st* %req, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 634, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CMP_CTX_server_perform, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @OSSL_CMP_CTX_get_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef nonnull %client_ctx) #4
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 639, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CMP_CTX_server_perform, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 159, i8* noundef null) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = bitcast i8* %call to %struct.ossl_cmp_srv_ctx_st*
  %call5 = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_SRV_process_request(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %0, %struct.ossl_cmp_msg_st* noundef nonnull %req) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %if.then ], [ null, %if.then3 ], [ %call5, %if.end4 ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

declare i8* @OSSL_CMP_CTX_get_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CRMF_MSG_sk_type(%struct.stack_st_OSSL_CRMF_MSG* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_MSG* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OSSL_CRMF_MSG_get_certReqId(%struct.ossl_crmf_msg_st* noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_verify_popo(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @ERR_peek_error() local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_set_option(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_hdr_has_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #1

declare %struct.ossl_cmp_msg_st* @ossl_cmp_certrep_new(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, i32 noundef, %struct.ossl_cmp_pkisi_st* noundef, %struct.x509_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #1

declare void @X509_free(%struct.x509_st* noundef) #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_CMP_REVDETAILS_num(%struct.stack_st_OSSL_CMP_REVDETAILS* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_REVDETAILS* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_revdetails_st* @sk_OSSL_CMP_REVDETAILS_value(%struct.stack_st_OSSL_CMP_REVDETAILS* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_REVDETAILS* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef 0) #4
  %1 = bitcast i8* %call to %struct.ossl_cmp_revdetails_st*
  ret %struct.ossl_cmp_revdetails_st* %1
}

declare %struct.X509_name_st* @OSSL_CRMF_CERTTEMPLATE_get0_issuer(%struct.ossl_crmf_certtemplate_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @OSSL_CRMF_CERTTEMPLATE_get0_serialNumber(%struct.ossl_crmf_certtemplate_st* noundef) local_unnamed_addr #1

declare %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_gen(%struct.X509_name_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.ossl_cmp_msg_st* @ossl_cmp_rp_new(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_pkisi_st* noundef, %struct.ossl_crmf_certid_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @OSSL_CRMF_CERTID_free(%struct.ossl_crmf_certid_st* noundef) local_unnamed_addr #1

declare %struct.ossl_cmp_msg_st* @ossl_cmp_genp_new(%struct.ossl_cmp_ctx_st* noundef, %struct.stack_st_OSSL_CMP_ITAV* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_ITAV* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef) #1

declare %struct.ossl_cmp_msg_st* @ossl_cmp_pkiconf_new(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_CERTSTATUS_sk_type(%struct.stack_st_OSSL_CMP_CERTSTATUS* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_CERTSTATUS* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @ossl_cmp_asn1_get_int(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #1

declare i8* @ossl_cmp_PKIStatus_to_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_CMP_POLLREQ_num(%struct.stack_st_OSSL_CMP_POLLREQ* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_POLLREQ* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_pollreq_st* @sk_OSSL_CMP_POLLREQ_value(%struct.stack_st_OSSL_CMP_POLLREQ* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_POLLREQ* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef 0) #4
  %1 = bitcast i8* %call to %struct.ossl_cmp_pollreq_st*
  ret %struct.ossl_cmp_pollreq_st* %1
}

declare void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare %struct.ossl_cmp_msg_st* @ossl_cmp_pollRep_new(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
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
!5 = !{!"ossl_cmp_srv_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 8}
!11 = !{!5, !6, i64 16}
!12 = !{!5, !6, i64 24}
!13 = !{!5, !6, i64 32}
!14 = !{!5, !6, i64 40}
!15 = !{!5, !6, i64 48}
!16 = !{!5, !6, i64 56}
!17 = !{!5, !9, i64 64}
!18 = !{!5, !9, i64 68}
!19 = !{!5, !9, i64 72}
!20 = !{!5, !9, i64 76}
!21 = !{!22, !6, i64 8}
!22 = !{!"ossl_cmp_msg_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!23 = !{!24, !6, i64 232}
!24 = !{!"ossl_cmp_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !9, i64 72, !6, i64 80, !6, i64 88, !9, i64 96, !9, i64 100, !9, i64 104, !25, i64 112, !6, i64 120, !6, i64 128, !9, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !9, i64 184, !9, i64 188, !9, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !25, i64 240, !6, i64 248, !9, i64 256, !9, i64 260, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !9, i64 320, !9, i64 324, !6, i64 328, !6, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !6, i64 368, !6, i64 376, !9, i64 384, !9, i64 388, !6, i64 392, !6, i64 400, !9, i64 408, !9, i64 412, !6, i64 416, !6, i64 424, !9, i64 432, !6, i64 440, !9, i64 448, !6, i64 456, !9, i64 464, !6, i64 472, !6, i64 480, !6, i64 488, !6, i64 496, !6, i64 504, !6, i64 512}
!25 = !{!"long", !7, i64 0}
!26 = !{!27, !6, i64 8}
!27 = !{!"ossl_cmp_pkiheader_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!28 = !{!29, !9, i64 0}
!29 = !{!"GENERAL_NAME_st", !9, i64 0, !7, i64 8}
!30 = !{!7, !7, i64 0}
!31 = !{!24, !6, i64 280}
!32 = !{!33, !6, i64 8}
!33 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !6, i64 8, !25, i64 16}
!34 = !{!33, !9, i64 0}
!35 = !{!24, !6, i64 216}
!36 = !{!6, !6, i64 0}
!37 = !{!9, !9, i64 0}
!38 = !{!27, !6, i64 56}
!39 = !{!27, !6, i64 64}
!40 = !{!24, !9, i64 448}
!41 = !{!42, !6, i64 0}
!42 = !{!"ossl_cmp_revdetails_st", !6, i64 0, !6, i64 8}
!43 = !{!44, !6, i64 0}
!44 = !{!"ossl_cmp_errormsgcontent_st", !6, i64 0, !6, i64 8, !6, i64 16}
!45 = !{!44, !6, i64 8}
!46 = !{!44, !6, i64 16}
!47 = !{!48, !6, i64 8}
!48 = !{!"ossl_cmp_certstatus_st", !6, i64 0, !6, i64 8, !6, i64 16}
!49 = !{!48, !6, i64 0}
!50 = !{!48, !6, i64 16}
!51 = !{!25, !25, i64 0}
!52 = !{!53, !6, i64 0}
!53 = !{!"ossl_cmp_pollreq_st", !6, i64 0}
