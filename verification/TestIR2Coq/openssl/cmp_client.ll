; ModuleID = 'crypto/cmp/cmp_client.c'
source_filename = "crypto/cmp/cmp_client.c"
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
%struct.ossl_cmp_errormsgcontent_st = type { %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING* }
%struct.ossl_cmp_pkisi_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.stack_st = type opaque
%struct.ossl_crmf_msg_st = type opaque
%struct.stack_st_OSSL_CMP_POLLREP = type opaque
%struct.ossl_cmp_pollrep_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING* }
%struct.ossl_cmp_certrepmessage_st = type { %struct.stack_st_X509*, %struct.stack_st_OSSL_CMP_CERTRESPONSE* }
%struct.stack_st_OSSL_CMP_CERTRESPONSE = type opaque
%struct.ossl_cmp_certresponse_st = type { %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_certifiedkeypair_st*, %struct.asn1_string_st* }
%struct.ossl_cmp_certifiedkeypair_st = type { %struct.ossl_cmp_certorenccert_st*, %struct.ossl_crmf_encryptedvalue_st*, %struct.ossl_crmf_pkipublicationinfo_st* }
%struct.ossl_cmp_certorenccert_st = type { i32, %union.anon.3 }
%union.anon.3 = type { %struct.x509_st* }
%struct.ossl_crmf_encryptedvalue_st = type opaque
%struct.ossl_crmf_pkipublicationinfo_st = type opaque
%struct.ossl_cmp_revrepcontent_st = type { %struct.stack_st_OSSL_CMP_PKISI*, %struct.stack_st_OSSL_CRMF_CERTID*, %struct.stack_st_X509_CRL* }
%struct.stack_st_OSSL_CMP_PKISI = type opaque
%struct.stack_st_OSSL_CRMF_CERTID = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.stack_st_OSSL_CMP_REVDETAILS = type opaque
%struct.ossl_cmp_revdetails_st = type { %struct.ossl_crmf_certtemplate_st*, %struct.stack_st_X509_EXTENSION* }
%struct.ossl_crmf_certtemplate_st = type opaque
%struct.ossl_crmf_certid_st = type opaque

@__func__.OSSL_CMP_certConf_cb = private unnamed_addr constant [21 x i8] c"OSSL_CMP_certConf_cb\00", align 1
@.str = private unnamed_addr constant [24 x i8] c"crypto/cmp/cmp_client.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"trying to build chain for newly enrolled cert\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"failed building chain for newly enrolled cert\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"succeeded building proper chain for newly enrolled cert\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"WARN\00", align 1
@.str.8 = private unnamed_addr constant [92 x i8] c"could not build approximate chain for newly enrolled cert, resorting to received extraCerts\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"success building approximate chain for newly enrolled cert\00", align 1
@__func__.OSSL_CMP_try_certreq = private unnamed_addr constant [21 x i8] c"OSSL_CMP_try_certreq\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"polling aborted\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"by application\00", align 1
@__func__.OSSL_CMP_exec_certreq = private unnamed_addr constant [22 x i8] c"OSSL_CMP_exec_certreq\00", align 1
@__func__.OSSL_CMP_exec_RR_ses = private unnamed_addr constant [21 x i8] c"OSSL_CMP_exec_RR_ses\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"revocation accepted (PKIStatus=accepted)\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"revocation accepted (PKIStatus=grantedWithMods)\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"revocation accepted (PKIStatus=revocationWarning)\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"revocation accepted (PKIStatus=revocationNotification)\00", align 1
@__func__.OSSL_CMP_exec_GENM_ses = private unnamed_addr constant [23 x i8] c"OSSL_CMP_exec_GENM_ses\00", align 1
@__func__.send_receive_check = private unnamed_addr constant [19 x i8] c"send_receive_check\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"sending %s\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"request sent: %s, expected response: %s\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"received %s\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"message type is '\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"; errorCode: %08lX\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"; errorDetails: \00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"error response\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"revocation response message with rejection status\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"PKI Confirmation message\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"CertRepMessage with rejection status\00", align 1
@__func__.unprotected_exception = private unnamed_addr constant [22 x i8] c"unprotected_exception\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"ignoring %s protection of %s\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"missing\00", align 1
@__func__.poll_for_response = private unnamed_addr constant [18 x i8] c"poll_for_response\00", align 1
@.str.32 = private unnamed_addr constant [60 x i8] c"received 'waiting' PKIStatus, starting to poll for response\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"value = %jd\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c" with reason = '\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"%s'\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"received polling response%s; checkAfter = %ld seconds\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"received ip/cp/kup after polling\00", align 1
@__func__.cert_response = private unnamed_addr constant [14 x i8] c"cert_response\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"; cannot extract certificate from response\00", align 1
@.str.39 = private unnamed_addr constant [64 x i8] c"public key in new certificate does not match our enrollment key\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"CMP client did not accept it\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"rejecting newly enrolled cert with subject: %s\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"rejecting newly enrolled cert with subject: %s; %s\00", align 1
@__func__.get1_cert_status = private unnamed_addr constant [17 x i8] c"get1_cert_status\00", align 1
@.str.43 = private unnamed_addr constant [72 x i8] c"received \22waiting\22 status for cert when actually aiming to extract cert\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"received \22grantedWithMods\22 for certificate\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"received \22rejection\22 status rather than cert\00", align 1
@.str.46 = private unnamed_addr constant [68 x i8] c"received \22revocationWarning\22 - a revocation of the cert is imminent\00", align 1
@.str.47 = private unnamed_addr constant [74 x i8] c"received \22revocationNotification\22 - a revocation of the cert has occurred\00", align 1
@.str.48 = private unnamed_addr constant [50 x i8] c"received unsupported PKIStatus %d for certificate\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_exchange_certConf(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %fail_info, i8* noundef %txt) local_unnamed_addr #0 {
entry:
  %PKIconf = alloca %struct.ossl_cmp_msg_st*, align 8
  %0 = bitcast %struct.ossl_cmp_msg_st** %PKIconf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %PKIconf, align 8, !tbaa !4
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_certConf_new(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %fail_info, i8* noundef %txt) #6
  %cmp = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @send_receive_check(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call, %struct.ossl_cmp_msg_st** noundef nonnull %PKIconf, i32 noundef 19) #7
  %.pre = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %PKIconf, align 8, !tbaa !4
  br label %err

err:                                              ; preds = %entry, %if.end
  %1 = phi %struct.ossl_cmp_msg_st* [ null, %entry ], [ %.pre, %if.end ]
  %res.0 = phi i32 [ 0, %entry ], [ %call1, %if.end ]
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call) #6
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %res.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ossl_cmp_msg_st* @ossl_cmp_certConf_new(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @send_receive_check(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %req, %struct.ossl_cmp_msg_st** nocapture noundef %rep, i32 noundef %expected_type) unnamed_addr #0 {
entry:
  %buf = alloca [1024 x i8], align 16
  %cmp5 = icmp eq i32 %expected_type, 26
  %switch.tableidx = add i32 %expected_type, -1
  %0 = icmp ult i32 %switch.tableidx, 26
  %switch.cast = trunc i32 %switch.tableidx to i26
  %switch.downshift = lshr i26 -33292155, %switch.cast
  %1 = and i26 %switch.downshift, 1
  %switch.masked = icmp ne i26 %1, 0
  %2 = select i1 %0, i1 %switch.masked, i1 false
  %call = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef %req) #6
  %call7 = tail call i8* @ossl_cmp_bodytype_to_string(i32 noundef %call) #6
  %call8 = tail call i8* @ossl_cmp_bodytype_to_string(i32 noundef %expected_type) #6
  %call9 = tail call i64 @time(i64* noundef null) #6
  %transfer_cb10 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 4
  %3 = load %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)** %transfer_cb10, align 8, !tbaa !8
  %cmp11 = icmp eq %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* %3, null
  %spec.store.select = select i1 %cmp11, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* @OSSL_CMP_MSG_http_perform, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* %3
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %rep, align 8, !tbaa !4
  %msg_timeout12 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 13
  %4 = load i32, i32* %msg_timeout12, align 4, !tbaa !12
  br i1 %2, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %entry
  %total_timeout = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 14
  %5 = load i32, i32* %total_timeout, align 8, !tbaa !13
  %cmp13 = icmp sgt i32 %5, 0
  br i1 %cmp13, label %if.then14, label %if.end38

if.then14:                                        ; preds = %land.lhs.true
  %end_time = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 15
  %6 = load i64, i64* %end_time, align 8, !tbaa !14
  %cmp15.not = icmp slt i64 %call9, %6
  br i1 %cmp15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.then14
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.send_receive_check, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 184, i8* noundef null) #6
  br label %cleanup

if.end17:                                         ; preds = %if.then14
  %call19 = tail call i64 @time(i64* noundef null) #6
  %sub = sub nsw i64 %6, %call19
  %cmp20 = icmp slt i64 %sub, 2147483647
  br i1 %cmp20, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end17
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.send_receive_check, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 100, i8* noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %7 = load i64, i64* %end_time, align 8, !tbaa !14
  %sub26 = sub nsw i64 %7, %call9
  %conv27 = trunc i64 %sub26 to i32
  %8 = load i32, i32* %msg_timeout12, align 4, !tbaa !12
  %cmp29 = icmp eq i32 %8, 0
  %cmp33 = icmp sgt i32 %8, %conv27
  %or.cond = select i1 %cmp29, i1 true, i1 %cmp33
  br i1 %or.cond, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end24
  store i32 %conv27, i32* %msg_timeout12, align 4, !tbaa !12
  br label %if.end38

if.end38:                                         ; preds = %if.end24, %if.then35, %land.lhs.true, %entry
  tail call void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #6
  %call39 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.send_receive_check, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call7) #6
  %call40 = tail call %struct.ossl_cmp_msg_st* %spec.store.select(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef %req) #6
  store %struct.ossl_cmp_msg_st* %call40, %struct.ossl_cmp_msg_st** %rep, align 8, !tbaa !4
  store i32 %4, i32* %msg_timeout12, align 4, !tbaa !12
  %cmp42 = icmp eq %struct.ossl_cmp_msg_st* %call40, null
  br i1 %cmp42, label %if.then44, label %if.end52

if.then44:                                        ; preds = %if.end38
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.send_receive_check, i64 0, i64 0)) #6
  %total_timeout45 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 14
  %9 = load i32, i32* %total_timeout45, align 8, !tbaa !13
  %cmp46 = icmp sgt i32 %9, 0
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then44
  %call48 = tail call i64 @time(i64* noundef null) #6
  %end_time49 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 15
  %10 = load i64, i64* %end_time49, align 8, !tbaa !14
  %cmp50.not = icmp slt i64 %call48, %10
  %phi.sel = select i1 %cmp50.not, i32 159, i32 184
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then44
  %11 = phi i32 [ 159, %if.then44 ], [ %phi.sel, %land.rhs ]
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef %11, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call7, i8* noundef %call8) #6
  br label %cleanup

if.end52:                                         ; preds = %if.end38
  %call53 = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef nonnull %call40) #6
  %call54 = tail call i8* @ossl_cmp_bodytype_to_string(i32 noundef %call53) #6
  %call55 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.send_receive_check, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8* noundef %call54) #6
  switch i32 %call53, label %land.lhs.true61 [
    i32 26, label %if.end65
    i32 19, label %if.end65
  ]

land.lhs.true61:                                  ; preds = %if.end52
  %12 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %rep, align 8, !tbaa !4
  %extraCerts = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %12, i64 0, i32 3
  %13 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCerts, align 8, !tbaa !15
  %call62 = tail call i32 @ossl_cmp_ctx_set1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.stack_st_X509* noundef %13) #6
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %cleanup, label %if.end65

if.end65:                                         ; preds = %if.end52, %if.end52, %land.lhs.true61
  %14 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %rep, align 8, !tbaa !4
  %call66 = tail call i32 @ossl_cmp_msg_check_update(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef %14, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef nonnull @unprotected_exception, i32 noundef %expected_type) #6
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup, label %if.end69

if.end69:                                         ; preds = %if.end65
  %cmp70 = icmp eq i32 %call53, %expected_type
  br i1 %cmp70, label %cleanup, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.end69
  %15 = and i32 %call53, -3
  %16 = icmp eq i32 %15, 1
  %cmp79 = icmp eq i32 %call53, 8
  %or.cond150 = or i1 %cmp79, %16
  %or.cond151 = and i1 %cmp5, %or.cond150
  br i1 %or.cond151, label %cleanup, label %if.end85

if.end85:                                         ; preds = %lor.lhs.false72
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.send_receive_check, i64 0, i64 0)) #6
  %cmp86 = icmp eq i32 %call53, 23
  %cond88 = select i1 %cmp86, i32 180, i32 133
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef %cond88, i8* noundef null) #6
  br i1 %cmp86, label %if.else, label %if.then91

if.then91:                                        ; preds = %if.end85
  %call92 = tail call i8* @ossl_cmp_bodytype_to_string(i32 noundef %call53) #6
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 3, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i8* noundef %call92, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #6
  br label %cleanup

if.else:                                          ; preds = %if.end85
  %17 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %rep, align 8, !tbaa !4
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %17, i64 0, i32 1
  %18 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !17
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %18, i64 0, i32 1
  %error = bitcast %union.anon.1* %value to %struct.ossl_cmp_errormsgcontent_st**
  %19 = load %struct.ossl_cmp_errormsgcontent_st*, %struct.ossl_cmp_errormsgcontent_st** %error, align 8, !tbaa !18
  %pKIStatusInfo = getelementptr inbounds %struct.ossl_cmp_errormsgcontent_st, %struct.ossl_cmp_errormsgcontent_st* %19, i64 0, i32 0
  %20 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %pKIStatusInfo, align 8, !tbaa !19
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %21) #5
  %call93 = tail call fastcc i32 @save_statusInfo(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_pkisi_st* noundef %20) #7
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end101, label %land.lhs.true95

land.lhs.true95:                                  ; preds = %if.else
  %call96 = call i8* @OSSL_CMP_CTX_snprint_PKIStatus(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %21, i64 noundef 1024) #6
  %cmp97.not = icmp eq i8* %call96, null
  br i1 %cmp97.not, label %if.end101, label %if.then99

if.then99:                                        ; preds = %land.lhs.true95
  call void (i32, ...) @ERR_add_error_data(i32 noundef 1, i8* noundef nonnull %21) #6
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %land.lhs.true95, %if.else
  %errorCode = getelementptr inbounds %struct.ossl_cmp_errormsgcontent_st, %struct.ossl_cmp_errormsgcontent_st* %19, i64 0, i32 1
  %22 = load %struct.asn1_string_st*, %struct.asn1_string_st** %errorCode, align 8, !tbaa !21
  %cmp102.not = icmp eq %struct.asn1_string_st* %22, null
  br i1 %cmp102.not, label %if.end113, label %land.lhs.true104

land.lhs.true104:                                 ; preds = %if.end101
  %call107 = call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %22) #6
  %call108 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %21, i64 noundef 1024, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i64 noundef %call107) #6
  %cmp109 = icmp sgt i32 %call108, 0
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %land.lhs.true104
  call void (i32, ...) @ERR_add_error_data(i32 noundef 1, i8* noundef nonnull %21) #6
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %land.lhs.true104, %if.end101
  %errorDetails = getelementptr inbounds %struct.ossl_cmp_errormsgcontent_st, %struct.ossl_cmp_errormsgcontent_st* %19, i64 0, i32 2
  %23 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %errorDetails, align 8, !tbaa !22
  %cmp114.not = icmp eq %struct.stack_st_ASN1_UTF8STRING* %23, null
  br i1 %cmp114.not, label %if.end127, label %if.then116

if.then116:                                       ; preds = %if.end113
  %call118 = call i8* @ossl_sk_ASN1_UTF8STRING2text(%struct.stack_st_ASN1_UTF8STRING* noundef nonnull %23, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i64 noundef 1023) #6
  %cmp119.not = icmp eq i8* %call118, null
  br i1 %cmp119.not, label %if.end126, label %land.lhs.true121

land.lhs.true121:                                 ; preds = %if.then116
  %24 = load i8, i8* %call118, align 1, !tbaa !18
  %cmp123.not = icmp eq i8 %24, 0
  br i1 %cmp123.not, label %if.end126, label %if.then125

if.then125:                                       ; preds = %land.lhs.true121
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i8* noundef nonnull %call118) #6
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %land.lhs.true121, %if.then116
  call void @CRYPTO_free(i8* noundef %call118, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 228) #6
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.end113
  %status = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 62
  %25 = load i32, i32* %status, align 8, !tbaa !23
  %cmp128.not = icmp eq i32 %25, 2
  br i1 %cmp128.not, label %if.end137, label %if.then130

if.then130:                                       ; preds = %if.end127
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.send_receive_check, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 185, i8* noundef null) #6
  %26 = load i32, i32* %status, align 8, !tbaa !23
  %cmp132 = icmp eq i32 %26, 3
  br i1 %cmp132, label %if.then134, label %if.end137

if.then134:                                       ; preds = %if.then130
  store i32 2, i32* %status, align 8, !tbaa !23
  br label %if.end137

if.end137:                                        ; preds = %if.then130, %if.then134, %if.end127
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %21) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %if.end137, %if.end69, %lor.lhs.false72, %if.end65, %land.lhs.true61, %land.end, %if.then23, %if.then16
  %retval.0 = phi i32 [ 0, %if.then16 ], [ 0, %land.end ], [ 0, %if.then23 ], [ 0, %land.lhs.true61 ], [ 0, %if.end65 ], [ 1, %lor.lhs.false72 ], [ 1, %if.end69 ], [ 0, %if.end137 ], [ 0, %if.then91 ]
  ret i32 %retval.0
}

declare void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_exchange_error(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %status, i32 noundef %fail_info, i8* noundef %txt, i32 noundef %errorCode, i8* noundef %details) local_unnamed_addr #0 {
entry:
  %PKIconf = alloca %struct.ossl_cmp_msg_st*, align 8
  %0 = bitcast %struct.ossl_cmp_msg_st** %PKIconf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %PKIconf, align 8, !tbaa !4
  %call = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef %status, i32 noundef %fail_info, i8* noundef %txt) #6
  %cmp = icmp eq %struct.ossl_cmp_pkisi_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %errorCode to i64
  %call1 = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_error_new(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_pkisi_st* noundef nonnull %call, i64 noundef %conv, i8* noundef %details, i32 noundef 0) #6
  %cmp2 = icmp eq %struct.ossl_cmp_msg_st* %call1, null
  br i1 %cmp2, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @send_receive_check(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call1, %struct.ossl_cmp_msg_st** noundef nonnull %PKIconf, i32 noundef 19) #7
  %.pre = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %PKIconf, align 8, !tbaa !4
  br label %err

err:                                              ; preds = %if.end, %entry, %if.end5
  %1 = phi %struct.ossl_cmp_msg_st* [ null, %entry ], [ null, %if.end ], [ %.pre, %if.end5 ]
  %error.0 = phi %struct.ossl_cmp_msg_st* [ null, %entry ], [ null, %if.end ], [ %call1, %if.end5 ]
  %res.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %call6, %if.end5 ]
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %error.0) #6
  tail call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef %call) #6
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %res.0
}

declare %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ossl_cmp_msg_st* @ossl_cmp_error_new(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_pkisi_st* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_certConf_cb(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_st* noundef %cert, i32 noundef %fail_info, i8** nocapture readnone %text) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @OSSL_CMP_CTX_get_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef %ctx) #6
  %cmp.not = icmp eq i32 %fail_info, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.x509_store_st*
  %call1 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_certConf_cb, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 496, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0)) #6
  %untrusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 23
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !24
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !25
  %propq = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %3 = load i8*, i8** %propq, align 8, !tbaa !26
  %call2 = tail call %struct.stack_st_X509* @X509_build_chain(%struct.x509_st* noundef %cert, %struct.stack_st_X509* noundef %1, %struct.x509_store_st* noundef %0, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %2, i8* noundef %3) #6
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %call2) #7
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #6
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %call2) #7
  %call8 = tail call i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %call7) #6
  %4 = bitcast i8* %call8 to %struct.x509_st*
  tail call void @X509_free(%struct.x509_st* noundef %4) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %cmp10.not = icmp eq i8* %call, null
  %cmp18 = icmp eq %struct.stack_st_X509* %call2, null
  br i1 %cmp10.not, label %if.else17, label %if.then11

if.then11:                                        ; preds = %if.end9
  br i1 %cmp18, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then11
  %call14 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 3, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_certConf_cb, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 503, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0)) #6
  br label %if.end25

if.else:                                          ; preds = %if.then11
  %call15 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_certConf_cb, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 507, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0)) #6
  br label %if.end25

if.else17:                                        ; preds = %if.end9
  br i1 %cmp18, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.else17
  %call20 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_certConf_cb, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 510, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.8, i64 0, i64 0)) #6
  %call21 = tail call %struct.stack_st_X509* @OSSL_CMP_CTX_get1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #6
  br label %if.end25

if.else22:                                        ; preds = %if.else17
  %call23 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_certConf_cb, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 514, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0)) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.else22, %if.then13, %if.else
  %fail_info.addr.0 = phi i32 [ 128, %if.then13 ], [ 0, %if.else ], [ 0, %if.then19 ], [ 0, %if.else22 ]
  %chain.0 = phi %struct.stack_st_X509* [ null, %if.then13 ], [ %call2, %if.else ], [ %call21, %if.then19 ], [ %call2, %if.else22 ]
  %call26 = tail call i32 @ossl_cmp_ctx_set1_newChain(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.stack_st_X509* noundef %chain.0) #6
  %call27 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %chain.0) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call27, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end25
  %retval.0 = phi i32 [ %fail_info.addr.0, %if.end25 ], [ %fail_info, %entry ]
  ret i32 %retval.0
}

declare i8* @OSSL_CMP_CTX_get_certConf_cb_arg(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_print_log(i32 noundef, %struct.ossl_cmp_ctx_st* noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.stack_st_X509* @X509_build_chain(%struct.x509_st* noundef, %struct.stack_st_X509* noundef, %struct.x509_store_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #2

declare i8* @OPENSSL_sk_shift(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.stack_st_X509* @OSSL_CMP_CTX_get1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_ctx_set1_newChain(%struct.ossl_cmp_ctx_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_try_certreq(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %req_type, %struct.ossl_crmf_msg_st* noundef %crm, i32* noundef %checkAfter) local_unnamed_addr #0 {
entry:
  %rep = alloca %struct.ossl_cmp_msg_st*, align 8
  %0 = bitcast %struct.ossl_cmp_msg_st** %rep to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %rep, align 8, !tbaa !4
  %cmp = icmp eq i32 %req_type, 4
  %cond = sext i1 %cmp to i32
  %add = add nsw i32 %req_type, 1
  %cond2 = select i1 %cmp, i32 3, i32 %add
  %cmp3 = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 672, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_try_certreq, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 62
  %1 = load i32, i32* %status, align 8, !tbaa !23
  %cmp5.not = icmp eq i32 %1, 3
  br i1 %cmp5.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %call = call fastcc i32 @initial_certreq(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef %req_type, %struct.ossl_crmf_msg_st* noundef %crm, %struct.ossl_cmp_msg_st** noundef nonnull %rep, i32 noundef %cond2) #7
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %err, label %if.end21

if.else:                                          ; preds = %if.end
  %cmp11 = icmp slt i32 %req_type, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.else
  %call14 = tail call i32 @ossl_cmp_exchange_error(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 2, i32 noundef 0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #7
  br label %cleanup

if.end15:                                         ; preds = %if.else
  %call16 = call fastcc i32 @poll_for_response(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 0, i32 noundef %cond, %struct.ossl_cmp_msg_st** noundef nonnull %rep, i32* noundef %checkAfter) #7
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end15, %if.then7
  %call22 = call fastcc i32 @cert_response(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 0, i32 noundef %cond, %struct.ossl_cmp_msg_st** noundef nonnull %rep, i32* noundef %checkAfter) #7
  br label %err

err:                                              ; preds = %if.then7, %if.end21
  %res.0 = phi i32 [ %call22, %if.end21 ], [ 0, %if.then7 ]
  %2 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %rep, align 8, !tbaa !4
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %err, %if.then13, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %res.0, %err ], [ %call14, %if.then13 ], [ %call16, %if.end15 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @initial_certreq(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %req_type, %struct.ossl_crmf_msg_st* noundef %crm, %struct.ossl_cmp_msg_st** nocapture noundef %p_rep, i32 noundef %rep_type) unnamed_addr #0 {
entry:
  %status = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 62
  store i32 -1, i32* %status, align 8, !tbaa !23
  %call = tail call i32 @ossl_cmp_ctx_set0_newCert(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.x509_st* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %total_timeout = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 14
  %0 = load i32, i32* %total_timeout, align 8, !tbaa !13
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %call2 = tail call i64 @time(i64* noundef null) #6
  %1 = load i32, i32* %total_timeout, align 8, !tbaa !13
  %conv = sext i32 %1 to i64
  %add = add nsw i64 %call2, %conv
  %end_time = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 15
  store i64 %add, i64* %end_time, align 8, !tbaa !14
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %call5 = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_certreq_new(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef %req_type, %struct.ossl_crmf_msg_st* noundef %crm) #6
  %cmp6 = icmp eq %struct.ossl_cmp_msg_st* %call5, null
  br i1 %cmp6, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end4
  %call10 = tail call fastcc i32 @send_receive_check(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call5, %struct.ossl_cmp_msg_st** noundef %p_rep, i32 noundef %rep_type) #7
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef nonnull %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry, %if.end9
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 0, %entry ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @poll_for_response(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %sleep, i32 noundef %rid, %struct.ossl_cmp_msg_st** nocapture noundef writeonly %rep, i32* noundef writeonly %checkAfter) unnamed_addr #0 {
entry:
  %prep = alloca %struct.ossl_cmp_msg_st*, align 8
  %check_after = alloca i64, align 8
  %str = alloca [1024 x i8], align 16
  %0 = bitcast %struct.ossl_cmp_msg_st** %prep to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %prep, align 8, !tbaa !4
  %call = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.poll_for_response, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.32, i64 0, i64 0)) #6
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %rep, align 8, !tbaa !4
  %call1165 = call %struct.ossl_cmp_msg_st* @ossl_cmp_pollReq_new(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %rid) #6
  %cmp166 = icmp eq %struct.ossl_cmp_msg_st* %call1165, null
  br i1 %cmp166, label %err, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %1 = bitcast i64* %check_after to i8*
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i64 0, i64 0
  %tobool23.not = icmp eq i32 %sleep, 0
  %cond = select i1 %tobool23.not, i64 2147483647, i64 18446744073709551
  %total_timeout = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 14
  %end_time = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 15
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %cleanup82
  %call1167 = phi %struct.ossl_cmp_msg_st* [ %call1165, %if.end.lr.ph ], [ %call1, %cleanup82 ]
  %call2 = call fastcc i32 @send_receive_check(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call1167, %struct.ossl_cmp_msg_st** noundef nonnull %prep, i32 noundef 26) #7
  %tobool.not = icmp eq i32 %call2, 0
  %.pre.pre = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %prep, align 8, !tbaa !4
  br i1 %tobool.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef %.pre.pre) #6
  %cmp6 = icmp eq i32 %call5, 26
  br i1 %cmp6, label %if.then7, label %if.else89

if.then7:                                         ; preds = %if.end4
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %.pre.pre, i64 0, i32 1
  %3 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !17
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %3, i64 0, i32 1
  %pollRep = bitcast %union.anon.1* %value to %struct.stack_st_OSSL_CMP_POLLREP**
  %4 = load %struct.stack_st_OSSL_CMP_POLLREP*, %struct.stack_st_OSSL_CMP_POLLREP** %pollRep, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #5
  %call9 = call fastcc i32 @sk_OSSL_CMP_POLLREP_num(%struct.stack_st_OSSL_CMP_POLLREP* noundef %4) #7
  %cmp10 = icmp sgt i32 %call9, 1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then7
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.poll_for_response, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 170, i8* noundef null) #6
  br label %cleanup82.thread

if.end12:                                         ; preds = %if.then7
  %call13 = call %struct.ossl_cmp_pollrep_st* @ossl_cmp_pollrepcontent_get0_pollrep(%struct.stack_st_OSSL_CMP_POLLREP* noundef %4, i32 noundef %rid) #6
  %cmp14 = icmp eq %struct.ossl_cmp_pollrep_st* %call13, null
  br i1 %cmp14, label %cleanup82.thread, label %if.end16

if.end16:                                         ; preds = %if.end12
  %checkAfter17 = getelementptr inbounds %struct.ossl_cmp_pollrep_st, %struct.ossl_cmp_pollrep_st* %call13, i64 0, i32 1
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %checkAfter17, align 8, !tbaa !27
  %call18 = call i32 @ASN1_INTEGER_get_int64(i64* noundef nonnull %check_after, %struct.asn1_string_st* noundef %5) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.poll_for_response, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 167, i8* noundef null) #6
  br label %cleanup82.thread

if.end21:                                         ; preds = %if.end16
  %6 = load i64, i64* %check_after, align 8, !tbaa !29
  %cmp22 = icmp slt i64 %6, 0
  %cmp24 = icmp ugt i64 %6, %cond
  %or.cond = or i1 %cmp22, %cmp24
  br i1 %or.cond, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.end21
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.poll_for_response, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 181, i8* noundef null) #6
  %7 = load i64, i64* %check_after, align 8, !tbaa !29
  %call26 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %2, i64 noundef 1024, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i64 noundef %7) #6
  %cmp27 = icmp sgt i32 %call26, -1
  br i1 %cmp27, label %if.then28, label %cleanup82.thread

if.then28:                                        ; preds = %if.then25
  call void (i32, ...) @ERR_add_error_data(i32 noundef 1, i8* noundef nonnull %2) #6
  br label %cleanup82.thread

if.end31:                                         ; preds = %if.end21
  %reason = getelementptr inbounds %struct.ossl_cmp_pollrep_st, %struct.ossl_cmp_pollrep_st* %call13, i64 0, i32 2
  %8 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %reason, align 8, !tbaa !30
  %cmp32 = icmp eq %struct.stack_st_ASN1_UTF8STRING* %8, null
  br i1 %cmp32, label %if.then37, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end31
  %call35 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %2, i64 noundef 1024, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0)) #6
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.else

if.then37:                                        ; preds = %lor.lhs.false33, %if.end31
  store i8 0, i8* %2, align 16, !tbaa !18
  br label %if.end54

if.else:                                          ; preds = %lor.lhs.false33
  %9 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %reason, align 8, !tbaa !30
  %conv137 = zext i32 %call35 to i64
  %sub40 = sub nsw i64 1022, %conv137
  %call41 = call i8* @ossl_sk_ASN1_UTF8STRING2text(%struct.stack_st_ASN1_UTF8STRING* noundef %9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i64 noundef %sub40) #6
  %cmp42 = icmp eq i8* %call41, null
  br i1 %cmp42, label %if.then51, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.else
  %sub = sub nsw i64 1024, %conv137
  %add.ptr = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i64 0, i64 %conv137
  %call48 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %sub, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i8* noundef nonnull %call41) #6
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %lor.lhs.false44, %if.else
  store i8 0, i8* %2, align 16, !tbaa !18
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %lor.lhs.false44
  call void @CRYPTO_free(i8* noundef %call41, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 311) #6
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then37
  %10 = load i64, i64* %check_after, align 8, !tbaa !29
  %call56 = call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.poll_for_response, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef %10) #6
  %11 = load i32, i32* %total_timeout, align 8, !tbaa !13
  %cmp57 = icmp sgt i32 %11, 0
  br i1 %cmp57, label %if.then59, label %if.end72

if.then59:                                        ; preds = %if.end54
  %12 = load i64, i64* %end_time, align 8, !tbaa !14
  %sub60 = add nsw i64 %12, -5
  %call61 = call i64 @time(i64* noundef null) #6
  %sub62 = sub i64 %sub60, %call61
  %cmp63 = icmp slt i64 %sub62, 1
  br i1 %cmp63, label %cleanup, label %if.end66

if.end66:                                         ; preds = %if.then59
  %13 = load i64, i64* %check_after, align 8, !tbaa !29
  %cmp67 = icmp slt i64 %sub62, %13
  br i1 %cmp67, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end66
  store i64 %sub62, i64* %check_after, align 8, !tbaa !29
  br label %if.end72

cleanup:                                          ; preds = %if.then59
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 322, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.poll_for_response, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 184, i8* noundef null) #6
  br label %cleanup82.thread

if.end72:                                         ; preds = %if.then69, %if.end66, %if.end54
  call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef nonnull %call1167) #6
  call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef nonnull %.pre.pre) #6
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %prep, align 8, !tbaa !4
  br i1 %tobool23.not, label %if.else75, label %cleanup82

if.else75:                                        ; preds = %if.end72
  %cmp76.not = icmp eq i32* %checkAfter, null
  br i1 %cmp76.not, label %cleanup82.thread134, label %if.then78

if.then78:                                        ; preds = %if.else75
  %14 = load i64, i64* %check_after, align 8, !tbaa !29
  %conv79 = trunc i64 %14 to i32
  store i32 %conv79, i32* %checkAfter, align 4, !tbaa !31
  br label %cleanup82.thread134

cleanup82.thread:                                 ; preds = %if.end12, %if.then11, %cleanup, %if.then20, %if.then28, %if.then25
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  br label %err

cleanup82.thread134:                              ; preds = %if.then78, %if.else75
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  br label %cleanup96

cleanup82:                                        ; preds = %if.end72
  %15 = load i64, i64* %check_after, align 8, !tbaa !29
  %mul = mul nsw i64 %15, 1000
  call fastcc void @ossl_sleep(i64 noundef %mul) #7
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  %call1 = call %struct.ossl_cmp_msg_st* @ossl_cmp_pollReq_new(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef %rid) #6
  %cmp = icmp eq %struct.ossl_cmp_msg_st* %call1, null
  br i1 %cmp, label %err, label %if.end

if.else89:                                        ; preds = %if.end4
  %call90 = call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.poll_for_response, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i64 0, i64 0)) #6
  %cmp92 = icmp eq %struct.ossl_cmp_msg_st* %.pre.pre, null
  br i1 %cmp92, label %err, label %if.end95

if.end95:                                         ; preds = %if.else89
  call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef nonnull %call1167) #6
  store %struct.ossl_cmp_msg_st* %.pre.pre, %struct.ossl_cmp_msg_st** %rep, align 8, !tbaa !4
  br label %cleanup96

err:                                              ; preds = %cleanup82, %if.end, %entry, %cleanup82.thread, %if.else89
  %16 = phi %struct.ossl_cmp_msg_st* [ %.pre.pre, %cleanup82.thread ], [ null, %if.else89 ], [ null, %entry ], [ null, %cleanup82 ], [ %.pre.pre, %if.end ]
  %call1145 = phi %struct.ossl_cmp_msg_st* [ %call1167, %cleanup82.thread ], [ %call1167, %if.else89 ], [ null, %entry ], [ null, %cleanup82 ], [ %call1167, %if.end ]
  call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call1145) #6
  call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %16) #6
  br label %cleanup96

cleanup96:                                        ; preds = %cleanup82.thread134, %err, %if.end95
  %retval.2 = phi i32 [ 0, %err ], [ 1, %if.end95 ], [ -1, %cleanup82.thread134 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cert_response(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %sleep, i32 noundef %rid, %struct.ossl_cmp_msg_st** nocapture noundef %resp, i32* noundef %checkAfter) unnamed_addr #0 {
entry:
  %txt = alloca i8*, align 8
  %call = tail call %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef 0) #6
  %0 = bitcast i8** %txt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %txt, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %cleanup, label %retry

retry:                                            ; preds = %entry, %if.then30
  %rid.addr.0 = phi i32 [ %rid.addr.1, %if.then30 ], [ %rid, %entry ]
  %ret.0 = phi i32 [ %call31, %if.then30 ], [ 1, %entry ]
  %1 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %resp, align 8, !tbaa !4
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %1, i64 0, i32 1
  %2 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !17
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %2, i64 0, i32 1
  %ip = bitcast %union.anon.1* %value to %struct.ossl_cmp_certrepmessage_st**
  %3 = load %struct.ossl_cmp_certrepmessage_st*, %struct.ossl_cmp_certrepmessage_st** %ip, align 8, !tbaa !18
  %response = getelementptr inbounds %struct.ossl_cmp_certrepmessage_st, %struct.ossl_cmp_certrepmessage_st* %3, i64 0, i32 1
  %4 = load %struct.stack_st_OSSL_CMP_CERTRESPONSE*, %struct.stack_st_OSSL_CMP_CERTRESPONSE** %response, align 8, !tbaa !32
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type(%struct.stack_st_OSSL_CMP_CERTRESPONSE* noundef %4) #7
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #6
  %cmp5 = icmp sgt i32 %call4, 1
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %retry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 549, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cert_response, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 170, i8* noundef null) #6
  br label %cleanup

if.end8:                                          ; preds = %retry
  %call9 = tail call %struct.ossl_cmp_certresponse_st* @ossl_cmp_certrepmessage_get0_certresponse(%struct.ossl_cmp_certrepmessage_st* noundef nonnull %3, i32 noundef %rid.addr.0) #6
  %cmp10 = icmp eq %struct.ossl_cmp_certresponse_st* %call9, null
  br i1 %cmp10, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end8
  %status = getelementptr inbounds %struct.ossl_cmp_certresponse_st, %struct.ossl_cmp_certresponse_st* %call9, i64 0, i32 1
  %5 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %status, align 8, !tbaa !34
  %call14 = tail call fastcc i32 @save_statusInfo(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_pkisi_st* noundef %5) #7
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end13
  %cmp17 = icmp eq i32 %rid.addr.0, -1
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end16
  %certReqId = getelementptr inbounds %struct.ossl_cmp_certresponse_st, %struct.ossl_cmp_certresponse_st* %call9, i64 0, i32 0
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %certReqId, align 8, !tbaa !36
  %call20 = tail call i32 @ossl_cmp_asn1_get_int(%struct.asn1_string_st* noundef %6) #6
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then19
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 561, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cert_response, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 108, i8* noundef null) #6
  br label %cleanup

if.end25:                                         ; preds = %if.then19, %if.end16
  %rid.addr.1 = phi i32 [ %call20, %if.then19 ], [ %rid.addr.0, %if.end16 ]
  %7 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %status, align 8, !tbaa !34
  %call27 = tail call i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef %7) #6
  %cmp28 = icmp eq i32 %call27, 3
  %8 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %resp, align 8, !tbaa !4
  br i1 %cmp28, label %if.then30, label %if.end39

if.then30:                                        ; preds = %if.end25
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %8) #6
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %resp, align 8, !tbaa !4
  %call31 = tail call fastcc i32 @poll_for_response(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef %sleep, i32 noundef %rid.addr.1, %struct.ossl_cmp_msg_st** noundef nonnull %resp, i32* noundef %checkAfter) #7
  switch i32 %call31, label %retry [
    i32 0, label %if.else
    i32 -1, label %cleanup
  ]

if.else:                                          ; preds = %if.then30
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 574, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cert_response, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 172, i8* noundef null) #6
  br label %cleanup

if.end39:                                         ; preds = %if.end25
  %body40 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %8, i64 0, i32 1
  %9 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body40, align 8, !tbaa !17
  %type = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %9, i64 0, i32 0
  %10 = load i32, i32* %type, align 8, !tbaa !37
  %call41 = tail call fastcc %struct.x509_st* @get1_cert_status(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef %10, %struct.ossl_cmp_certresponse_st* noundef nonnull %call9) #7
  %cmp42 = icmp eq %struct.x509_st* %call41, null
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end39
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 1, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i64 0, i64 0)) #6
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %call46 = tail call i32 @ossl_cmp_ctx_set0_newCert(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %call41) #6
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup, label %if.end49

if.end49:                                         ; preds = %if.end45
  %caPubs = getelementptr inbounds %struct.ossl_cmp_certrepmessage_st, %struct.ossl_cmp_certrepmessage_st* %3, i64 0, i32 0
  %11 = load %struct.stack_st_X509*, %struct.stack_st_X509** %caPubs, align 8, !tbaa !39
  %cmp50.not = icmp eq %struct.stack_st_X509* %11, null
  br i1 %cmp50.not, label %if.end56, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end49
  %call53 = tail call i32 @ossl_cmp_ctx_set1_caPubs(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.stack_st_X509* noundef nonnull %11) #6
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cleanup, label %if.end56

if.end56:                                         ; preds = %land.lhs.true, %if.end49
  %call57 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %call41) #6
  %call58 = tail call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %call57, i8* noundef null, i32 noundef 0) #6
  %cmp59.not = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp59.not, label %if.end65, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %if.end56
  %newCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 65
  %12 = load %struct.x509_st*, %struct.x509_st** %newCert, align 8, !tbaa !40
  %call62 = tail call i32 @X509_check_private_key(%struct.x509_st* noundef %12, %struct.evp_pkey_st* noundef nonnull %call) #6
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then64, label %if.end65

if.then64:                                        ; preds = %land.lhs.true61
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.39, i64 0, i64 0), i8** %txt, align 8, !tbaa !4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %land.lhs.true61, %if.end56
  %fail_info.0 = phi i32 [ 0, %land.lhs.true61 ], [ 128, %if.then64 ], [ 0, %if.end56 ]
  %certConf_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 69
  %13 = load i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)** %certConf_cb, align 8, !tbaa !41
  %cmp66.not = icmp eq i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* %13, null
  %spec.select = select i1 %cmp66.not, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* @OSSL_CMP_certConf_cb, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)* %13
  %newCert69 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 65
  %14 = load %struct.x509_st*, %struct.x509_st** %newCert69, align 8, !tbaa !40
  %call70 = call i32 %spec.select(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %14, i32 noundef %fail_info.0, i8** noundef nonnull %txt) #6
  %cmp71 = icmp ne i32 %call70, 0
  %15 = load i8*, i8** %txt, align 8
  %cmp74 = icmp eq i8* %15, null
  %or.cond = select i1 %cmp71, i1 %cmp74, i1 false
  br i1 %or.cond, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end65
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0), i8** %txt, align 8, !tbaa !4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end65
  br i1 %cmp71, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.end77
  %call81 = call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 3, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cert_response, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 621, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0), i8* noundef %call58) #6
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end77
  %disableConfirm = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 44
  %16 = load i32, i32* %disableConfirm, align 4, !tbaa !42
  %tobool83.not = icmp eq i32 %16, 0
  br i1 %tobool83.not, label %land.lhs.true84, label %if.end92

land.lhs.true84:                                  ; preds = %if.end82
  %17 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %resp, align 8, !tbaa !4
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %17, i64 0, i32 0
  %18 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !43
  %call85 = call i32 @ossl_cmp_hdr_has_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef %18) #6
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %if.end92

if.then87:                                        ; preds = %land.lhs.true84
  %19 = load i8*, i8** %txt, align 8, !tbaa !4
  %call88 = call i32 @ossl_cmp_exchange_certConf(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef %call70, i8* noundef %19) #7
  %tobool89.not = icmp eq i32 %call88, 0
  %spec.select1 = select i1 %tobool89.not, i32 0, i32 %ret.0
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %land.lhs.true84, %if.end82
  %ret.1 = phi i32 [ %ret.0, %if.end82 ], [ %ret.0, %land.lhs.true84 ], [ %spec.select1, %if.then87 ]
  br i1 %cmp71, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end92
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 630, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cert_response, i64 0, i64 0)) #6
  %20 = load i8*, i8** %txt, align 8, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 169, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i64 0, i64 0), i8* noundef %call58, i8* noundef %20) #6
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end92
  %ret.2 = phi i32 [ 0, %if.then95 ], [ %ret.1, %if.end92 ]
  call void @CRYPTO_free(i8* noundef %call58, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 635) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end13, %if.end8, %land.lhs.true, %if.end45, %entry, %if.end96, %if.then44, %if.else, %if.then23, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.then23 ], [ 0, %if.else ], [ 0, %if.then44 ], [ %ret.2, %if.end96 ], [ 0, %entry ], [ 0, %if.end45 ], [ 0, %land.lhs.true ], [ %call31, %if.then30 ], [ 0, %if.end13 ], [ 0, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @OSSL_CMP_exec_certreq(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %req_type, %struct.ossl_crmf_msg_st* noundef %crm) local_unnamed_addr #0 {
entry:
  %rep = alloca %struct.ossl_cmp_msg_st*, align 8
  %0 = bitcast %struct.ossl_cmp_msg_st** %rep to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %rep, align 8, !tbaa !4
  %cmp = icmp eq i32 %req_type, 4
  %cond = sext i1 %cmp to i32
  %cmp3 = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 714, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_CMP_exec_certreq, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nsw i32 %req_type, 1
  %cond2 = select i1 %cmp, i32 3, i32 %add
  %call = call fastcc i32 @initial_certreq(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef %req_type, %struct.ossl_crmf_msg_st* noundef %crm, %struct.ossl_cmp_msg_st** noundef nonnull %rep, i32 noundef %cond2) #7
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @cert_response(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 1, i32 noundef %cond, %struct.ossl_cmp_msg_st** noundef nonnull %rep, i32* noundef null) #7
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %err, label %if.end12

if.end12:                                         ; preds = %if.end7
  %newCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 65
  %1 = load %struct.x509_st*, %struct.x509_st** %newCert, align 8, !tbaa !40
  br label %err

err:                                              ; preds = %if.end7, %if.end, %if.end12
  %result.0 = phi %struct.x509_st* [ null, %if.end7 ], [ %1, %if.end12 ], [ null, %if.end ]
  %2 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %rep, align 8, !tbaa !4
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %2) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi %struct.x509_st* [ null, %if.then ], [ %result.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.x509_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CMP_exec_RR_ses(%struct.ossl_cmp_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %rp = alloca %struct.ossl_cmp_msg_st*, align 8
  %buf = alloca [1024 x i8], align 16
  %0 = bitcast %struct.ossl_cmp_msg_st** %rp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %rp, align 8, !tbaa !4
  %1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #5
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_exec_RR_ses, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 100, i8* noundef null) #6
  br label %cleanup82

if.end:                                           ; preds = %entry
  %oldCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 58
  %2 = load %struct.x509_st*, %struct.x509_st** %oldCert, align 8, !tbaa !44
  %cmp1 = icmp eq %struct.x509_st* %2, null
  br i1 %cmp1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %p10CSR = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 59
  %3 = load %struct.X509_req_st*, %struct.X509_req_st** %p10CSR, align 8, !tbaa !45
  %cmp2 = icmp eq %struct.X509_req_st* %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_exec_RR_ses, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 168, i8* noundef null) #6
  br label %cleanup82

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %status = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 62
  store i32 -1, i32* %status, align 8, !tbaa !23
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_rr_new(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #6
  %cmp5 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp5, label %end, label %if.end7

if.end7:                                          ; preds = %if.end4
  %call8 = call fastcc i32 @send_receive_check(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call, %struct.ossl_cmp_msg_st** noundef nonnull %rp, i32 noundef 12) #7
  %tobool.not = icmp eq i32 %call8, 0
  %.pre = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %rp, align 8, !tbaa !4
  br i1 %tobool.not, label %end, label %if.end10

if.end10:                                         ; preds = %if.end7
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %.pre, i64 0, i32 1
  %4 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !17
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %4, i64 0, i32 1
  %rp11 = bitcast %union.anon.1* %value to %struct.ossl_cmp_revrepcontent_st**
  %5 = load %struct.ossl_cmp_revrepcontent_st*, %struct.ossl_cmp_revrepcontent_st** %rp11, align 8, !tbaa !18
  %status12 = getelementptr inbounds %struct.ossl_cmp_revrepcontent_st, %struct.ossl_cmp_revrepcontent_st* %5, i64 0, i32 0
  %6 = load %struct.stack_st_OSSL_CMP_PKISI*, %struct.stack_st_OSSL_CMP_PKISI** %status12, align 8, !tbaa !46
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_PKISI_sk_type(%struct.stack_st_OSSL_CMP_PKISI* noundef %6) #7
  %call14 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #6
  %cmp15.not = icmp eq i32 %call14, 1
  br i1 %cmp15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end10
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 762, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_exec_RR_ses, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 188, i8* noundef null) #6
  br label %end

if.end17:                                         ; preds = %if.end10
  %call18 = tail call %struct.ossl_cmp_pkisi_st* @ossl_cmp_revrepcontent_get_pkisi(%struct.ossl_cmp_revrepcontent_st* noundef nonnull %5, i32 noundef 0) #6
  %call19 = tail call fastcc i32 @save_statusInfo(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_pkisi_st* noundef %call18) #7
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true76, label %if.end22

if.end22:                                         ; preds = %if.end17
  %call23 = tail call i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef %call18) #6
  switch i32 %call23, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %land.lhs.true76.sink.split
    i32 4, label %sw.bb28
    i32 5, label %sw.bb30
    i32 3, label %sw.bb32
    i32 6, label %sw.bb32
  ]

sw.bb:                                            ; preds = %if.end22
  %call24 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_exec_RR_ses, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 778, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end22
  %call26 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_exec_RR_ses, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end22
  %call29 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 6, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_exec_RR_ses, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end22
  %call31 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_exec_RR_ses, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 795, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end22, %if.end22
  br label %land.lhs.true76.sink.split

sw.default:                                       ; preds = %if.end22
  br label %land.lhs.true76.sink.split

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb28, %sw.bb25, %sw.bb
  %revCerts = getelementptr inbounds %struct.ossl_cmp_revrepcontent_st, %struct.ossl_cmp_revrepcontent_st* %5, i64 0, i32 1
  %7 = load %struct.stack_st_OSSL_CRMF_CERTID*, %struct.stack_st_OSSL_CRMF_CERTID** %revCerts, align 8, !tbaa !48
  %call33 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CRMF_CERTID_sk_type(%struct.stack_st_OSSL_CRMF_CERTID* noundef %7) #7
  %call34 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call33) #6
  %cmp35 = icmp sgt i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end66

if.then36:                                        ; preds = %sw.epilog
  %body37 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call, i64 0, i32 1
  %8 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body37, align 8, !tbaa !17
  %value38 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %8, i64 0, i32 1
  %rr39 = bitcast %union.anon.1* %value38 to %struct.stack_st_OSSL_CMP_REVDETAILS**
  %9 = load %struct.stack_st_OSSL_CMP_REVDETAILS*, %struct.stack_st_OSSL_CMP_REVDETAILS** %rr39, align 8, !tbaa !18
  %call40 = tail call fastcc %struct.ossl_cmp_revdetails_st* @sk_OSSL_CMP_REVDETAILS_value(%struct.stack_st_OSSL_CMP_REVDETAILS* noundef %9) #7
  %certDetails = getelementptr inbounds %struct.ossl_cmp_revdetails_st, %struct.ossl_cmp_revdetails_st* %call40, i64 0, i32 0
  %10 = load %struct.ossl_crmf_certtemplate_st*, %struct.ossl_crmf_certtemplate_st** %certDetails, align 8, !tbaa !49
  %call41 = tail call %struct.X509_name_st* @OSSL_CRMF_CERTTEMPLATE_get0_issuer(%struct.ossl_crmf_certtemplate_st* noundef %10) #6
  %call42 = tail call %struct.asn1_string_st* @OSSL_CRMF_CERTTEMPLATE_get0_serialNumber(%struct.ossl_crmf_certtemplate_st* noundef %10) #6
  %11 = load %struct.stack_st_OSSL_CRMF_CERTID*, %struct.stack_st_OSSL_CRMF_CERTID** %revCerts, align 8, !tbaa !48
  %call44 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CRMF_CERTID_sk_type(%struct.stack_st_OSSL_CRMF_CERTID* noundef %11) #7
  %call45 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call44) #6
  %cmp46.not = icmp eq i32 %call45, 1
  br i1 %cmp46.not, label %if.end48, label %land.lhs.true76.sink.split

if.end48:                                         ; preds = %if.then36
  %call49 = tail call %struct.ossl_crmf_certid_st* @ossl_cmp_revrepcontent_get_CertId(%struct.ossl_cmp_revrepcontent_st* noundef nonnull %5, i32 noundef 0) #6
  %cmp50 = icmp eq %struct.ossl_crmf_certid_st* %call49, null
  br i1 %cmp50, label %land.lhs.true76.sink.split, label %if.end52

if.end52:                                         ; preds = %if.end48
  %call53 = tail call %struct.X509_name_st* @OSSL_CRMF_CERTID_get0_issuer(%struct.ossl_crmf_certid_st* noundef nonnull %call49) #6
  %call54 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %call41, %struct.X509_name_st* noundef %call53) #6
  %cmp55.not = icmp eq i32 %call54, 0
  br i1 %cmp55.not, label %if.end57, label %land.lhs.true76.sink.split

if.end57:                                         ; preds = %if.end52
  %call58 = tail call %struct.asn1_string_st* @OSSL_CRMF_CERTID_get0_serialNumber(%struct.ossl_crmf_certid_st* noundef nonnull %call49) #6
  %call59 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %call42, %struct.asn1_string_st* noundef %call58) #6
  %cmp60.not = icmp eq i32 %call59, 0
  br i1 %cmp60.not, label %if.end66, label %land.lhs.true76.sink.split

if.end66:                                         ; preds = %if.end57, %sw.epilog
  %crls = getelementptr inbounds %struct.ossl_cmp_revrepcontent_st, %struct.ossl_cmp_revrepcontent_st* %5, i64 0, i32 2
  %12 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %crls, align 8, !tbaa !51
  %cmp67.not = icmp eq %struct.stack_st_X509_CRL* %12, null
  br i1 %cmp67.not, label %end, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.end66
  %call70 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef nonnull %12) #7
  %call71 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call70) #6
  %cmp72.not = icmp eq i32 %call71, 1
  br i1 %cmp72.not, label %end, label %land.lhs.true76.sink.split

land.lhs.true76.sink.split:                       ; preds = %land.lhs.true68, %if.end57, %if.end52, %if.end48, %if.then36, %if.end22, %sw.bb32, %sw.default
  %.sink127 = phi i32 [ 803, %sw.default ], [ 800, %sw.bb32 ], [ 786, %if.end22 ], [ 816, %if.then36 ], [ 821, %if.end48 ], [ 827, %if.end52 ], [ 835, %if.end57 ], [ 844, %land.lhs.true68 ]
  %.sink = phi i32 [ 186, %sw.default ], [ 185, %sw.bb32 ], [ 182, %if.end22 ], [ 188, %if.then36 ], [ 165, %if.end48 ], [ 187, %if.end52 ], [ 173, %if.end57 ], [ 188, %land.lhs.true68 ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink127, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CMP_exec_RR_ses, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef %.sink, i8* noundef null) #6
  br label %land.lhs.true76

land.lhs.true76:                                  ; preds = %land.lhs.true76.sink.split, %if.end17
  %call77 = call i8* @OSSL_CMP_CTX_snprint_PKIStatus(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %1, i64 noundef 1024) #6
  %cmp78.not = icmp eq i8* %call77, null
  br i1 %cmp78.not, label %end, label %if.then79

if.then79:                                        ; preds = %land.lhs.true76
  call void (i32, ...) @ERR_add_error_data(i32 noundef 1, i8* noundef nonnull %1) #6
  br label %end

end:                                              ; preds = %if.end7, %land.lhs.true68, %if.end66, %land.lhs.true76, %if.then79, %if.end4, %if.then16
  %13 = phi %struct.ossl_cmp_msg_st* [ null, %if.end4 ], [ %.pre, %if.then16 ], [ %.pre, %if.then79 ], [ %.pre, %land.lhs.true76 ], [ %.pre, %if.end66 ], [ %.pre, %land.lhs.true68 ], [ %.pre, %if.end7 ]
  %ret.4 = phi i32 [ 0, %if.end4 ], [ 0, %if.then16 ], [ 0, %if.then79 ], [ 0, %land.lhs.true76 ], [ 1, %if.end66 ], [ 1, %land.lhs.true68 ], [ 0, %if.end7 ]
  call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call) #6
  call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %13) #6
  br label %cleanup82

cleanup82:                                        ; preds = %end, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ %ret.4, %end ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare %struct.ossl_cmp_msg_st* @ossl_cmp_rr_new(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_PKISI_sk_type(%struct.stack_st_OSSL_CMP_PKISI* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_PKISI* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.ossl_cmp_pkisi_st* @ossl_cmp_revrepcontent_get_pkisi(%struct.ossl_cmp_revrepcontent_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @save_statusInfo(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_pkisi_st* noundef %si) unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp ne %struct.ossl_cmp_pkisi_st* %si, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %cleanup40

if.end:                                           ; preds = %entry
  %call = tail call i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef nonnull %si) #6
  %status = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 62
  store i32 %call, i32* %status, align 8, !tbaa !23
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %cleanup40, label %if.end5

if.end5:                                          ; preds = %if.end
  %failInfoCode = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 64
  store i32 0, i32* %failInfoCode, align 8, !tbaa !52
  %failInfo = getelementptr inbounds %struct.ossl_cmp_pkisi_st, %struct.ossl_cmp_pkisi_st* %si, i64 0, i32 2
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %failInfo, align 8, !tbaa !53
  %cmp6.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp6.not, label %if.end14, label %for.body

for.body:                                         ; preds = %if.end5, %for.inc.for.body_crit_edge
  %2 = phi %struct.asn1_string_st* [ %.pre, %for.inc.for.body_crit_edge ], [ %1, %if.end5 ]
  %i.062 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end5 ]
  %call10 = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %2, i32 noundef %i.062) #6
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %for.inc, label %if.then11

if.then11:                                        ; preds = %for.body
  %shl = shl nuw nsw i32 1, %i.062
  %3 = load i32, i32* %failInfoCode, align 8, !tbaa !52
  %or = or i32 %3, %shl
  store i32 %or, i32* %failInfoCode, align 8, !tbaa !52
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then11
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 27
  br i1 %exitcond.not, label %if.end14, label %for.inc.for.body_crit_edge, !llvm.loop !55

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load %struct.asn1_string_st*, %struct.asn1_string_st** %failInfo, align 8, !tbaa !53
  br label %for.body

if.end14:                                         ; preds = %for.inc, %if.end5
  %call15 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %4 = bitcast %struct.stack_st* %call15 to %struct.stack_st_ASN1_UTF8STRING*
  %call16 = tail call i32 @ossl_cmp_ctx_set0_statusString(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.stack_st_ASN1_UTF8STRING* noundef %4) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %statusString = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 63
  %5 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %statusString, align 8, !tbaa !57
  %cmp18 = icmp eq %struct.stack_st_ASN1_UTF8STRING* %5, null
  br i1 %cmp18, label %cleanup40, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false
  %statusString21 = getelementptr inbounds %struct.ossl_cmp_pkisi_st, %struct.ossl_cmp_pkisi_st* %si, i64 0, i32 1
  %6 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %statusString21, align 8, !tbaa !58
  %call23 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %6) #7
  %call2464 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call23) #6
  %cmp2565 = icmp sgt i32 %call2464, 0
  br i1 %cmp2565, label %for.body26, label %cleanup40

for.cond22:                                       ; preds = %for.body26
  %call24 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call23) #6
  %cmp25 = icmp slt i32 %inc38, %call24
  br i1 %cmp25, label %for.body26, label %cleanup40, !llvm.loop !59

for.body26:                                       ; preds = %if.end20, %for.cond22
  %i.166 = phi i32 [ %inc38, %for.cond22 ], [ 0, %if.end20 ]
  %call28 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call23, i32 noundef %i.166) #6
  %7 = bitcast i8* %call28 to %struct.asn1_string_st*
  %8 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %statusString, align 8, !tbaa !57
  %call30 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %8) #7
  %call31 = tail call %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef %7) #6
  %9 = bitcast %struct.asn1_string_st* %call31 to i8*
  %call33 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call30, i8* noundef %9) #6
  %tobool34.not = icmp eq i32 %call33, 0
  %inc38 = add nuw nsw i32 %i.166, 1
  br i1 %tobool34.not, label %cleanup40, label %for.cond22

cleanup40:                                        ; preds = %for.body26, %for.cond22, %if.end20, %if.end14, %lor.lhs.false, %if.end, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %if.end14 ], [ 1, %if.end20 ], [ 0, %for.body26 ], [ 1, %for.cond22 ]
  ret i32 %retval.2
}

declare i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CRMF_CERTID_sk_type(%struct.stack_st_OSSL_CRMF_CERTID* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_CERTID* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_cmp_revdetails_st* @sk_OSSL_CMP_REVDETAILS_value(%struct.stack_st_OSSL_CMP_REVDETAILS* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_REVDETAILS* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef 0) #6
  %1 = bitcast i8* %call to %struct.ossl_cmp_revdetails_st*
  ret %struct.ossl_cmp_revdetails_st* %1
}

declare %struct.X509_name_st* @OSSL_CRMF_CERTTEMPLATE_get0_issuer(%struct.ossl_crmf_certtemplate_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @OSSL_CRMF_CERTTEMPLATE_get0_serialNumber(%struct.ossl_crmf_certtemplate_st* noundef) local_unnamed_addr #2

declare %struct.ossl_crmf_certid_st* @ossl_cmp_revrepcontent_get_CertId(%struct.ossl_cmp_revrepcontent_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @OSSL_CRMF_CERTID_get0_issuer(%struct.ossl_crmf_certid_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @OSSL_CRMF_CERTID_get0_serialNumber(%struct.ossl_crmf_certid_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OSSL_CMP_CTX_snprint_PKIStatus(%struct.ossl_cmp_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_OSSL_CMP_ITAV* @OSSL_CMP_exec_GENM_ses(%struct.ossl_cmp_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %genp = alloca %struct.ossl_cmp_msg_st*, align 8
  %0 = bitcast %struct.ossl_cmp_msg_st** %genp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %genp, align 8, !tbaa !4
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 867, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_CMP_exec_GENM_ses, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 100, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 62
  store i32 -1, i32* %status, align 8, !tbaa !23
  %call = tail call %struct.ossl_cmp_msg_st* @ossl_cmp_genm_new(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #6
  %cmp1 = icmp eq %struct.ossl_cmp_msg_st* %call, null
  br i1 %cmp1, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i32 @send_receive_check(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %call, %struct.ossl_cmp_msg_st** noundef nonnull %genp, i32 noundef 22) #7
  %tobool.not = icmp eq i32 %call4, 0
  %.pre = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %genp, align 8, !tbaa !4
  br i1 %tobool.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end3
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %.pre, i64 0, i32 1
  %1 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !17
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %1, i64 0, i32 1
  %genp7 = bitcast %union.anon.1* %value to %struct.stack_st_OSSL_CMP_ITAV**
  %2 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %genp7, align 8, !tbaa !18
  store %struct.stack_st_OSSL_CMP_ITAV* null, %struct.stack_st_OSSL_CMP_ITAV** %genp7, align 8, !tbaa !18
  br label %err

err:                                              ; preds = %if.end3, %if.end, %if.end6
  %3 = phi %struct.ossl_cmp_msg_st* [ null, %if.end ], [ %.pre, %if.end6 ], [ %.pre, %if.end3 ]
  %rcvd_itavs.0 = phi %struct.stack_st_OSSL_CMP_ITAV* [ null, %if.end ], [ %2, %if.end6 ], [ null, %if.end3 ]
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call) #6
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi %struct.stack_st_OSSL_CMP_ITAV* [ null, %if.then ], [ %rcvd_itavs.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.stack_st_OSSL_CMP_ITAV* %retval.0
}

declare %struct.ossl_cmp_msg_st* @ossl_cmp_genm_new(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #2

declare i8* @ossl_cmp_bodytype_to_string(i32 noundef) local_unnamed_addr #2

declare i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #4

declare %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_http_perform(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #2

declare void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_ctx_set1_extraCertsIn(%struct.ossl_cmp_ctx_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_msg_check_update(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @unprotected_exception(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %rep, i32 noundef %invalid_protection, i32 noundef %expected_type) #0 {
entry:
  %call = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef %rep) #6
  %cmp = icmp ne %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp ne %struct.ossl_cmp_msg_st* %rep, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %cleanup44

if.end:                                           ; preds = %entry
  %unprotectedErrors = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 18
  %1 = load i32, i32* %unprotectedErrors, align 8, !tbaa !60
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup44, label %if.end4

if.end4:                                          ; preds = %if.end
  switch i32 %call, label %cleanup44 [
    i32 23, label %if.end41
    i32 12, label %sw.bb5
    i32 19, label %sw.bb14
    i32 8, label %if.then19
    i32 3, label %if.then19
    i32 1, label %if.then19
  ]

sw.bb5:                                           ; preds = %if.end4
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %rep, i64 0, i32 1
  %2 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !17
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %2, i64 0, i32 1
  %rp = bitcast %union.anon.1* %value to %struct.ossl_cmp_revrepcontent_st**
  %3 = load %struct.ossl_cmp_revrepcontent_st*, %struct.ossl_cmp_revrepcontent_st** %rp, align 8, !tbaa !18
  %call6 = tail call %struct.ossl_cmp_pkisi_st* @ossl_cmp_revrepcontent_get_pkisi(%struct.ossl_cmp_revrepcontent_st* noundef %3, i32 noundef 0) #6
  %cmp7 = icmp eq %struct.ossl_cmp_pkisi_st* %call6, null
  br i1 %cmp7, label %cleanup44, label %cleanup

cleanup:                                          ; preds = %sw.bb5
  %call10 = tail call i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef nonnull %call6) #6
  %cmp11 = icmp eq i32 %call10, 2
  br i1 %cmp11, label %if.end41, label %cleanup44

sw.bb14:                                          ; preds = %if.end4
  br label %if.end41

if.then19:                                        ; preds = %if.end4, %if.end4, %if.end4
  %body20 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %rep, i64 0, i32 1
  %4 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body20, align 8, !tbaa !17
  %value21 = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %4, i64 0, i32 1
  %ip = bitcast %union.anon.1* %value21 to %struct.ossl_cmp_certrepmessage_st**
  %5 = load %struct.ossl_cmp_certrepmessage_st*, %struct.ossl_cmp_certrepmessage_st** %ip, align 8, !tbaa !18
  %call22 = tail call %struct.ossl_cmp_certresponse_st* @ossl_cmp_certrepmessage_get0_certresponse(%struct.ossl_cmp_certrepmessage_st* noundef %5, i32 noundef -1) #6
  %response = getelementptr inbounds %struct.ossl_cmp_certrepmessage_st, %struct.ossl_cmp_certrepmessage_st* %5, i64 0, i32 1
  %6 = load %struct.stack_st_OSSL_CMP_CERTRESPONSE*, %struct.stack_st_OSSL_CMP_CERTRESPONSE** %response, align 8, !tbaa !32
  %call23 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type(%struct.stack_st_OSSL_CMP_CERTRESPONSE* noundef %6) #7
  %call24 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call23) #6
  %cmp25 = icmp sgt i32 %call24, 1
  %cmp28 = icmp eq %struct.ossl_cmp_certresponse_st* %call22, null
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp28
  br i1 %or.cond, label %cleanup44, label %sw.epilog

sw.epilog:                                        ; preds = %if.then19
  %status = getelementptr inbounds %struct.ossl_cmp_certresponse_st, %struct.ossl_cmp_certresponse_st* %call22, i64 0, i32 1
  %7 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %status, align 8, !tbaa !34
  %call31 = tail call i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef %7) #6
  %cmp32.not = icmp eq i32 %call31, 2
  br i1 %cmp32.not, label %if.end41, label %cleanup44

if.end41:                                         ; preds = %cleanup, %if.end4, %sw.bb14, %sw.epilog
  %msg_type.473 = phi i8* [ getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), %sw.epilog ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), %if.end4 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), %sw.bb14 ], [ getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0), %cleanup ]
  %tobool42.not = icmp eq i32 %invalid_protection, 0
  %cond = select i1 %tobool42.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)
  %call43 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.unprotected_exception, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0), i8* noundef %cond, i8* noundef nonnull %msg_type.473) #6
  br label %cleanup44

cleanup44:                                        ; preds = %if.end4, %cleanup, %sw.bb5, %if.then19, %sw.epilog, %if.end, %entry, %if.end41
  %retval.2 = phi i32 [ 1, %if.end41 ], [ -1, %entry ], [ 0, %if.end ], [ 0, %sw.epilog ], [ -1, %if.then19 ], [ -1, %sw.bb5 ], [ 0, %cleanup ], [ 0, %if.end4 ]
  ret i32 %retval.2
}

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i8* @ossl_sk_ASN1_UTF8STRING2text(%struct.stack_st_ASN1_UTF8STRING* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ossl_cmp_certresponse_st* @ossl_cmp_certrepmessage_get0_certresponse(%struct.ossl_cmp_certrepmessage_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type(%struct.stack_st_OSSL_CMP_CERTRESPONSE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_CERTRESPONSE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @ossl_cmp_ctx_set0_newCert(%struct.ossl_cmp_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.ossl_cmp_msg_st* @ossl_cmp_certreq_new(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, %struct.ossl_crmf_msg_st* noundef) local_unnamed_addr #2

declare %struct.ossl_cmp_msg_st* @ossl_cmp_pollReq_new(%struct.ossl_cmp_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_CMP_POLLREP_num(%struct.stack_st_OSSL_CMP_POLLREP* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_POLLREP* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #6
  ret i32 %call
}

declare %struct.ossl_cmp_pollrep_st* @ossl_cmp_pollrepcontent_get0_pollrep(%struct.stack_st_OSSL_CMP_POLLREP* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_get_int64(i64* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_sleep(i64 noundef %millis) unnamed_addr #0 {
entry:
  %0 = trunc i64 %millis to i32
  %conv = mul i32 %0, 1000
  %call = tail call i32 @usleep(i32 noundef %conv) #6
  ret void
}

declare i32 @usleep(i32 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_asn1_get_int(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_st* @get1_cert_status(%struct.ossl_cmp_ctx_st* noundef %ctx, i32 noundef %bodytype, %struct.ossl_cmp_certresponse_st* noundef %crep) unnamed_addr #0 {
entry:
  %buf = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #5
  %cmp = icmp ne %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp ne %struct.ossl_cmp_certresponse_st* %crep, null
  %1 = and i1 %cmp, %cmp1
  br i1 %1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @OSSL_CMP_CTX_get0_newPkey(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 1) #6
  %status = getelementptr inbounds %struct.ossl_cmp_certresponse_st, %struct.ossl_cmp_certresponse_st* %crep, i64 0, i32 1
  %2 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %status, align 8, !tbaa !34
  %call3 = tail call i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef %2) #6
  switch i32 %call3, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb5
    i32 0, label %sw.epilog
    i32 2, label %sw.bb7
    i32 4, label %sw.bb9
    i32 5, label %sw.bb11
    i32 6, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  %call4 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 3, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.get1_cert_status, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 423, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.43, i64 0, i64 0)) #6
  br label %err

sw.bb5:                                           ; preds = %if.end
  %call6 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.get1_cert_status, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %call8 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 3, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.get1_cert_status, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.45, i64 0, i64 0)) #6
  br label %err

sw.bb9:                                           ; preds = %if.end
  %call10 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.get1_cert_status, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.46, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %call12 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.get1_cert_status, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 442, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.47, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %cmp14.not = icmp eq i32 %bodytype, 7
  br i1 %cmp14.not, label %sw.epilog, label %err

sw.default:                                       ; preds = %if.end
  %status17 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 62
  %3 = load i32, i32* %status17, align 8, !tbaa !23
  %call18 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 3, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.get1_cert_status, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 453, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.48, i64 0, i64 0), i32 noundef %3) #6
  br label %err

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb11, %sw.bb9, %if.end, %sw.bb5
  %call19 = tail call %struct.x509_st* @ossl_cmp_certresponse_get1_cert(%struct.ossl_cmp_certresponse_st* noundef nonnull %crep, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.evp_pkey_st* noundef %call) #6
  %cmp20 = icmp eq %struct.x509_st* %call19, null
  br i1 %cmp20, label %if.then21, label %cleanup

if.then21:                                        ; preds = %sw.epilog
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 459, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.get1_cert_status, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 112, i8* noundef null) #6
  br label %cleanup

err:                                              ; preds = %sw.bb13, %sw.default, %sw.bb7, %sw.bb
  %.sink45 = phi i32 [ 454, %sw.default ], [ 434, %sw.bb7 ], [ 424, %sw.bb ], [ 446, %sw.bb13 ]
  %.sink = phi i32 [ 186, %sw.default ], [ 182, %sw.bb7 ], [ 162, %sw.bb ], [ 176, %sw.bb13 ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink45, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.get1_cert_status, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef %.sink, i8* noundef null) #6
  %call23 = call i8* @OSSL_CMP_CTX_snprint_PKIStatus(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %0, i64 noundef 1024) #6
  %cmp24.not = icmp eq i8* %call23, null
  br i1 %cmp24.not, label %cleanup, label %if.then25

if.then25:                                        ; preds = %err
  call void (i32, ...) @ERR_add_error_data(i32 noundef 1, i8* noundef nonnull %0) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then25, %sw.epilog, %if.then21, %entry
  %retval.0 = phi %struct.x509_st* [ null, %entry ], [ null, %if.then21 ], [ %call19, %sw.epilog ], [ null, %if.then25 ], [ null, %err ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #5
  ret %struct.x509_st* %retval.0
}

declare i32 @ossl_cmp_ctx_set1_caPubs(%struct.ossl_cmp_ctx_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare i8* @X509_NAME_oneline(%struct.X509_name_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_hdr_has_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

declare %struct.x509_st* @ossl_cmp_certresponse_get1_cert(%struct.ossl_cmp_certresponse_st* noundef, %struct.ossl_cmp_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_ctx_set0_statusString(%struct.ossl_cmp_ctx_st* noundef, %struct.stack_st_ASN1_UTF8STRING* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 32}
!9 = !{!"ossl_cmp_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !10, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !10, i64 72, !5, i64 80, !5, i64 88, !10, i64 96, !10, i64 100, !10, i64 104, !11, i64 112, !5, i64 120, !5, i64 128, !10, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !11, i64 240, !5, i64 248, !10, i64 256, !10, i64 260, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !10, i64 320, !10, i64 324, !5, i64 328, !5, i64 336, !10, i64 344, !5, i64 352, !10, i64 360, !5, i64 368, !5, i64 376, !10, i64 384, !10, i64 388, !5, i64 392, !5, i64 400, !10, i64 408, !10, i64 412, !5, i64 416, !5, i64 424, !10, i64 432, !5, i64 440, !10, i64 448, !5, i64 456, !10, i64 464, !5, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !5, i64 504, !5, i64 512}
!10 = !{!"int", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !10, i64 100}
!13 = !{!9, !10, i64 104}
!14 = !{!9, !11, i64 112}
!15 = !{!16, !5, i64 24}
!16 = !{!"ossl_cmp_msg_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!17 = !{!16, !5, i64 8}
!18 = !{!6, !6, i64 0}
!19 = !{!20, !5, i64 0}
!20 = !{!"ossl_cmp_errormsgcontent_st", !5, i64 0, !5, i64 8, !5, i64 16}
!21 = !{!20, !5, i64 8}
!22 = !{!20, !5, i64 16}
!23 = !{!9, !10, i64 448}
!24 = !{!9, !5, i64 176}
!25 = !{!9, !5, i64 0}
!26 = !{!9, !5, i64 8}
!27 = !{!28, !5, i64 8}
!28 = !{!"ossl_cmp_pollrep_st", !5, i64 0, !5, i64 8, !5, i64 16}
!29 = !{!11, !11, i64 0}
!30 = !{!28, !5, i64 16}
!31 = !{!10, !10, i64 0}
!32 = !{!33, !5, i64 8}
!33 = !{!"ossl_cmp_certrepmessage_st", !5, i64 0, !5, i64 8}
!34 = !{!35, !5, i64 8}
!35 = !{!"ossl_cmp_certresponse_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!36 = !{!35, !5, i64 0}
!37 = !{!38, !10, i64 0}
!38 = !{!"ossl_cmp_pkibody_st", !10, i64 0, !6, i64 8}
!39 = !{!33, !5, i64 0}
!40 = !{!9, !5, i64 472}
!41 = !{!9, !5, i64 504}
!42 = !{!9, !10, i64 324}
!43 = !{!16, !5, i64 0}
!44 = !{!9, !5, i64 416}
!45 = !{!9, !5, i64 424}
!46 = !{!47, !5, i64 0}
!47 = !{!"ossl_cmp_revrepcontent_st", !5, i64 0, !5, i64 8, !5, i64 16}
!48 = !{!47, !5, i64 8}
!49 = !{!50, !5, i64 0}
!50 = !{!"ossl_cmp_revdetails_st", !5, i64 0, !5, i64 8}
!51 = !{!47, !5, i64 16}
!52 = !{!9, !10, i64 464}
!53 = !{!54, !5, i64 16}
!54 = !{!"ossl_cmp_pkisi_st", !5, i64 0, !5, i64 8, !5, i64 16}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!9, !5, i64 456}
!58 = !{!54, !5, i64 8}
!59 = distinct !{!59, !56}
!60 = !{!9, !10, i64 136}
