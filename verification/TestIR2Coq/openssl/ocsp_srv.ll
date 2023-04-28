; ModuleID = 'crypto/ocsp/ocsp_srv.c'
source_filename = "crypto/ocsp/ocsp_srv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocsp_request_st = type { %struct.ocsp_req_info_st, %struct.ocsp_signature_st* }
%struct.ocsp_req_info_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.stack_st_OCSP_ONEREQ*, %struct.stack_st_X509_EXTENSION* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.stack_st_OCSP_ONEREQ = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ocsp_signature_st = type { %struct.X509_algor_st, %struct.asn1_string_st*, %struct.stack_st_X509* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st_X509 = type opaque
%struct.stack_st = type opaque
%struct.ocsp_one_request_st = type { %struct.ocsp_cert_id_st*, %struct.stack_st_X509_EXTENSION* }
%struct.ocsp_cert_id_st = type { %struct.X509_algor_st, %struct.asn1_string_st, %struct.asn1_string_st, %struct.asn1_string_st }
%struct.ocsp_response_st = type { %struct.asn1_string_st*, %struct.ocsp_resp_bytes_st* }
%struct.ocsp_resp_bytes_st = type { %struct.asn1_object_st*, %struct.asn1_string_st* }
%struct.ocsp_basic_response_st = type { %struct.ocsp_response_data_st, %struct.X509_algor_st, %struct.asn1_string_st*, %struct.stack_st_X509* }
%struct.ocsp_response_data_st = type { %struct.asn1_string_st*, %struct.ocsp_responder_id_st, %struct.asn1_string_st*, %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_X509_EXTENSION* }
%struct.ocsp_responder_id_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.X509_name_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st_OCSP_SINGLERESP = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.ocsp_single_response_st = type { %struct.ocsp_cert_id_st*, %struct.ocsp_cert_status_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION* }
%struct.ocsp_cert_status_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i32* }
%struct.ocsp_revoked_info_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
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
%struct.ASIdentifierChoice_st = type { i32, %union.anon.3 }
%union.anon.3 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_md_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"crypto/ocsp/ocsp_srv.c\00", align 1
@__func__.OCSP_basic_add1_status = private unnamed_addr constant [23 x i8] c"OCSP_basic_add1_status\00", align 1
@__func__.OCSP_basic_sign_ctx = private unnamed_addr constant [20 x i8] c"OCSP_basic_sign_ctx\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_request_onereq_count(%struct.ocsp_request_st* nocapture noundef readonly %req) local_unnamed_addr #0 {
entry:
  %requestList = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %req, i64 0, i32 0, i32 2
  %0 = load %struct.stack_st_OCSP_ONEREQ*, %struct.stack_st_OCSP_ONEREQ** %requestList, align 8, !tbaa !4
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_ONEREQ_sk_type(%struct.stack_st_OCSP_ONEREQ* noundef %0) #7
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  ret i32 %call1
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OCSP_ONEREQ_sk_type(%struct.stack_st_OCSP_ONEREQ* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_OCSP_ONEREQ* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_one_request_st* @OCSP_request_onereq_get0(%struct.ocsp_request_st* nocapture noundef readonly %req, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %requestList = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %req, i64 0, i32 0, i32 2
  %0 = load %struct.stack_st_OCSP_ONEREQ*, %struct.stack_st_OCSP_ONEREQ** %requestList, align 8, !tbaa !4
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_ONEREQ_sk_type(%struct.stack_st_OCSP_ONEREQ* noundef %0) #7
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i) #8
  %1 = bitcast i8* %call1 to %struct.ocsp_one_request_st*
  ret %struct.ocsp_one_request_st* %1
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ocsp_cert_id_st* @OCSP_onereq_get0_id(%struct.ocsp_one_request_st* nocapture noundef readonly %one) local_unnamed_addr #3 {
entry:
  %reqCert = getelementptr inbounds %struct.ocsp_one_request_st, %struct.ocsp_one_request_st* %one, i64 0, i32 0
  %0 = load %struct.ocsp_cert_id_st*, %struct.ocsp_cert_id_st** %reqCert, align 8, !tbaa !10
  ret %struct.ocsp_cert_id_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @OCSP_id_get0_info(%struct.asn1_string_st** noundef writeonly %piNameHash, %struct.asn1_object_st** noundef writeonly %pmd, %struct.asn1_string_st** noundef writeonly %pikeyHash, %struct.asn1_string_st** noundef writeonly %pserial, %struct.ocsp_cert_id_st* noundef %cid) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.ocsp_cert_id_st* %cid, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.asn1_object_st** %pmd, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %algorithm = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %cid, i64 0, i32 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !12
  store %struct.asn1_object_st* %0, %struct.asn1_object_st** %pmd, align 8, !tbaa !18
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %tobool4.not = icmp eq %struct.asn1_string_st** %piNameHash, null
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  %issuerNameHash = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %cid, i64 0, i32 1
  store %struct.asn1_string_st* %issuerNameHash, %struct.asn1_string_st** %piNameHash, align 8, !tbaa !18
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %tobool7.not = icmp eq %struct.asn1_string_st** %pikeyHash, null
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  %issuerKeyHash = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %cid, i64 0, i32 2
  store %struct.asn1_string_st* %issuerKeyHash, %struct.asn1_string_st** %pikeyHash, align 8, !tbaa !18
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %tobool10.not = icmp eq %struct.asn1_string_st** %pserial, null
  br i1 %tobool10.not, label %return, label %if.then11

if.then11:                                        ; preds = %if.end9
  %serialNumber = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %cid, i64 0, i32 3
  store %struct.asn1_string_st* %serialNumber, %struct.asn1_string_st** %pserial, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %if.end9, %if.then11, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then11 ], [ 1, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @OCSP_request_is_signed(%struct.ocsp_request_st* nocapture noundef readonly %req) local_unnamed_addr #3 {
entry:
  %optionalSignature = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %req, i64 0, i32 1
  %0 = load %struct.ocsp_signature_st*, %struct.ocsp_signature_st** %optionalSignature, align 8, !tbaa !19
  %tobool.not = icmp ne %struct.ocsp_signature_st* %0, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_response_st* @OCSP_response_create(i32 noundef %status, %struct.ocsp_basic_response_st* noundef %bs) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ocsp_response_st* @OCSP_RESPONSE_new() #8
  %cmp = icmp eq %struct.ocsp_response_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %responseStatus = getelementptr inbounds %struct.ocsp_response_st, %struct.ocsp_response_st* %call, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %responseStatus, align 8, !tbaa !20
  %conv = sext i32 %status to i64
  %call1 = tail call i32 @ASN1_ENUMERATED_set(%struct.asn1_string_st* noundef %0, i64 noundef %conv) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq %struct.ocsp_basic_response_st* %bs, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %call7 = tail call %struct.ocsp_resp_bytes_st* @OCSP_RESPBYTES_new() #8
  %responseBytes = getelementptr inbounds %struct.ocsp_response_st, %struct.ocsp_response_st* %call, i64 0, i32 1
  store %struct.ocsp_resp_bytes_st* %call7, %struct.ocsp_resp_bytes_st** %responseBytes, align 8, !tbaa !22
  %cmp8 = icmp eq %struct.ocsp_resp_bytes_st* %call7, null
  br i1 %cmp8, label %err, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 365) #8
  %1 = load %struct.ocsp_resp_bytes_st*, %struct.ocsp_resp_bytes_st** %responseBytes, align 8, !tbaa !22
  %responseType = getelementptr inbounds %struct.ocsp_resp_bytes_st, %struct.ocsp_resp_bytes_st* %1, i64 0, i32 0
  store %struct.asn1_object_st* %call12, %struct.asn1_object_st** %responseType, align 8, !tbaa !23
  %2 = bitcast %struct.ocsp_basic_response_st* %bs to i8*
  %call14 = tail call %struct.ASN1_ITEM_st* @OCSP_BASICRESP_it() #8
  %3 = load %struct.ocsp_resp_bytes_st*, %struct.ocsp_resp_bytes_st** %responseBytes, align 8, !tbaa !22
  %response = getelementptr inbounds %struct.ocsp_resp_bytes_st, %struct.ocsp_resp_bytes_st* %3, i64 0, i32 1
  %call16 = tail call %struct.asn1_string_st* @ASN1_item_pack(i8* noundef nonnull %2, %struct.ASN1_ITEM_st* noundef %call14, %struct.asn1_string_st** noundef nonnull %response) #8
  %tobool17.not = icmp eq %struct.asn1_string_st* %call16, null
  br i1 %tobool17.not, label %err, label %cleanup

err:                                              ; preds = %if.end11, %if.end6, %if.end, %entry
  tail call void @OCSP_RESPONSE_free(%struct.ocsp_response_st* noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end3, %err
  %retval.0 = phi %struct.ocsp_response_st* [ null, %err ], [ %call, %if.end3 ], [ %call, %if.end11 ]
  ret %struct.ocsp_response_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

declare %struct.ocsp_response_st* @OCSP_RESPONSE_new() local_unnamed_addr #1

declare i32 @ASN1_ENUMERATED_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare %struct.ocsp_resp_bytes_st* @OCSP_RESPBYTES_new() local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_item_pack(i8* noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @OCSP_BASICRESP_it() local_unnamed_addr #1

declare void @OCSP_RESPONSE_free(%struct.ocsp_response_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_single_response_st* @OCSP_basic_add1_status(%struct.ocsp_basic_response_st* nocapture noundef %rsp, %struct.ocsp_cert_id_st* noundef %cid, i32 noundef %status, i32 noundef %reason, %struct.asn1_string_st* noundef %revtime, %struct.asn1_string_st* noundef %thisupd, %struct.asn1_string_st* noundef %nextupd) local_unnamed_addr #0 {
entry:
  %responses = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %rsp, i64 0, i32 0, i32 3
  %0 = load %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_OCSP_SINGLERESP** %responses, align 8, !tbaa !25
  %cmp = icmp eq %struct.stack_st_OCSP_SINGLERESP* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %1 = bitcast %struct.stack_st_OCSP_SINGLERESP** %responses to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !25
  %cmp3 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp3, label %err, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call4 = tail call %struct.ocsp_single_response_st* @OCSP_SINGLERESP_new() #8
  %cmp5 = icmp eq %struct.ocsp_single_response_st* %call4, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  %thisUpdate = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %call4, i64 0, i32 2
  %call8 = tail call %struct.asn1_string_st* @ASN1_TIME_to_generalizedtime(%struct.asn1_string_st* noundef %thisupd, %struct.asn1_string_st** noundef nonnull %thisUpdate) #8
  %tobool.not = icmp eq %struct.asn1_string_st* %call8, null
  br i1 %tobool.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end7
  %tobool11.not = icmp eq %struct.asn1_string_st* %nextupd, null
  br i1 %tobool11.not, label %if.end16, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end10
  %nextUpdate = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %call4, i64 0, i32 3
  %call13 = tail call %struct.asn1_string_st* @ASN1_TIME_to_generalizedtime(%struct.asn1_string_st* noundef nonnull %nextupd, %struct.asn1_string_st** noundef nonnull %nextUpdate) #8
  %tobool14.not = icmp eq %struct.asn1_string_st* %call13, null
  br i1 %tobool14.not, label %err, label %if.end16

if.end16:                                         ; preds = %land.lhs.true12, %if.end10
  %certId = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %call4, i64 0, i32 0
  %2 = load %struct.ocsp_cert_id_st*, %struct.ocsp_cert_id_st** %certId, align 8, !tbaa !29
  tail call void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef %2) #8
  %call17 = tail call %struct.ocsp_cert_id_st* @OCSP_CERTID_dup(%struct.ocsp_cert_id_st* noundef %cid) #8
  store %struct.ocsp_cert_id_st* %call17, %struct.ocsp_cert_id_st** %certId, align 8, !tbaa !29
  %cmp19 = icmp eq %struct.ocsp_cert_id_st* %call17, null
  br i1 %cmp19, label %err, label %if.end21

if.end21:                                         ; preds = %if.end16
  %certStatus = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %call4, i64 0, i32 1
  %3 = load %struct.ocsp_cert_status_st*, %struct.ocsp_cert_status_st** %certStatus, align 8, !tbaa !31
  %type = getelementptr inbounds %struct.ocsp_cert_status_st, %struct.ocsp_cert_status_st* %3, i64 0, i32 0
  store i32 %status, i32* %type, align 8, !tbaa !32
  switch i32 %status, label %err [
    i32 1, label %sw.bb
    i32 0, label %sw.bb45
    i32 2, label %sw.bb52
  ]

sw.bb:                                            ; preds = %if.end21
  %tobool22.not = icmp eq %struct.asn1_string_st* %revtime, null
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %sw.bb
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OCSP_basic_add1_status, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 109, i8* noundef null) #8
  br label %err

if.end24:                                         ; preds = %sw.bb
  %call25 = tail call %struct.ocsp_revoked_info_st* @OCSP_REVOKEDINFO_new() #8
  %value = getelementptr inbounds %struct.ocsp_cert_status_st, %struct.ocsp_cert_status_st* %3, i64 0, i32 1
  %revoked = bitcast %union.anon.2* %value to %struct.ocsp_revoked_info_st**
  store %struct.ocsp_revoked_info_st* %call25, %struct.ocsp_revoked_info_st** %revoked, align 8, !tbaa !34
  %cmp26 = icmp eq %struct.ocsp_revoked_info_st* %call25, null
  br i1 %cmp26, label %err, label %if.end28

if.end28:                                         ; preds = %if.end24
  %revocationTime = getelementptr inbounds %struct.ocsp_revoked_info_st, %struct.ocsp_revoked_info_st* %call25, i64 0, i32 0
  %call29 = tail call %struct.asn1_string_st* @ASN1_TIME_to_generalizedtime(%struct.asn1_string_st* noundef nonnull %revtime, %struct.asn1_string_st** noundef nonnull %revocationTime) #8
  %tobool30.not = icmp eq %struct.asn1_string_st* %call29, null
  br i1 %tobool30.not, label %err, label %if.end32

if.end32:                                         ; preds = %if.end28
  %cmp33.not = icmp eq i32 %reason, -1
  br i1 %cmp33.not, label %sw.epilog, label %if.then34

if.then34:                                        ; preds = %if.end32
  %call35 = tail call %struct.asn1_string_st* @ASN1_ENUMERATED_new() #8
  %revocationReason = getelementptr inbounds %struct.ocsp_revoked_info_st, %struct.ocsp_revoked_info_st* %call25, i64 0, i32 1
  store %struct.asn1_string_st* %call35, %struct.asn1_string_st** %revocationReason, align 8, !tbaa !35
  %cmp36 = icmp eq %struct.asn1_string_st* %call35, null
  br i1 %cmp36, label %err, label %if.end38

if.end38:                                         ; preds = %if.then34
  %conv = sext i32 %reason to i64
  %call40 = tail call i32 @ASN1_ENUMERATED_set(%struct.asn1_string_st* noundef nonnull %call35, i64 noundef %conv) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %sw.epilog

sw.bb45:                                          ; preds = %if.end21
  %call46 = tail call i32* @ASN1_NULL_new() #8
  %good = getelementptr inbounds %struct.ocsp_cert_status_st, %struct.ocsp_cert_status_st* %3, i64 0, i32 1, i32 0
  store i32* %call46, i32** %good, align 8, !tbaa !34
  %cmp48 = icmp eq i32* %call46, null
  br i1 %cmp48, label %err, label %sw.epilog

sw.bb52:                                          ; preds = %if.end21
  %call53 = tail call i32* @ASN1_NULL_new() #8
  %unknown = getelementptr inbounds %struct.ocsp_cert_status_st, %struct.ocsp_cert_status_st* %3, i64 0, i32 1, i32 0
  store i32* %call53, i32** %unknown, align 8, !tbaa !34
  %cmp55 = icmp eq i32* %call53, null
  br i1 %cmp55, label %err, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb52, %sw.bb45, %if.end32, %if.end38
  %4 = load %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_OCSP_SINGLERESP** %responses, align 8, !tbaa !25
  %call61 = tail call fastcc %struct.stack_st* @ossl_check_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef %4) #7
  %5 = bitcast %struct.ocsp_single_response_st* %call4 to i8*
  %call63 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call61, i8* noundef nonnull %5) #8
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %cleanup

err:                                              ; preds = %sw.epilog, %if.end21, %sw.bb52, %sw.bb45, %if.end38, %if.then34, %if.end28, %if.end24, %if.end16, %land.lhs.true12, %if.end7, %if.end, %land.lhs.true, %if.then23
  %single.0 = phi %struct.ocsp_single_response_st* [ null, %land.lhs.true ], [ null, %if.end ], [ %call4, %if.end16 ], [ %call4, %if.end21 ], [ %call4, %sw.bb52 ], [ %call4, %sw.epilog ], [ %call4, %sw.bb45 ], [ %call4, %if.end24 ], [ %call4, %if.then34 ], [ %call4, %if.end38 ], [ %call4, %if.end28 ], [ %call4, %if.then23 ], [ %call4, %land.lhs.true12 ], [ %call4, %if.end7 ]
  tail call void @OCSP_SINGLERESP_free(%struct.ocsp_single_response_st* noundef %single.0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %err
  %retval.0 = phi %struct.ocsp_single_response_st* [ null, %err ], [ %call4, %sw.epilog ]
  ret %struct.ocsp_single_response_st* %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare %struct.ocsp_single_response_st* @OCSP_SINGLERESP_new() local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_TIME_to_generalizedtime(%struct.asn1_string_st* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #1

declare void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef) local_unnamed_addr #1

declare %struct.ocsp_cert_id_st* @OCSP_CERTID_dup(%struct.ocsp_cert_id_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.ocsp_revoked_info_st* @OCSP_REVOKEDINFO_new() local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_ENUMERATED_new() local_unnamed_addr #1

declare i32* @ASN1_NULL_new() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_OCSP_SINGLERESP* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OCSP_SINGLERESP_free(%struct.ocsp_single_response_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_basic_add1_cert(%struct.ocsp_basic_response_st* noundef %resp, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %certs = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %resp, i64 0, i32 3
  %call = tail call i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef nonnull %certs, %struct.x509_st* noundef %cert, i32 noundef 1) #8
  ret i32 %call
}

declare i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_basic_sign_ctx(%struct.ocsp_basic_response_st* noundef %brsp, %struct.x509_st* noundef %signer, %struct.evp_md_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %certs, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_ctx_st* %ctx, null
  br i1 %cmp, label %err.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  %cmp1 = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp1, label %err.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  %call3 = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef %call2) #8
  %cmp4 = icmp eq %struct.evp_pkey_st* %call3, null
  br i1 %cmp4, label %err.sink.split, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %call6 = tail call i32 @X509_check_private_key(%struct.x509_st* noundef %signer, %struct.evp_pkey_st* noundef nonnull %call3) #8
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %err.sink.split, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false5
  %and = and i64 %flags, 1
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %if.then10, label %if.end19

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 @OCSP_basic_add1_cert(%struct.ocsp_basic_response_st* noundef %brsp, %struct.x509_st* noundef %signer) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.then10
  %certs14 = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %brsp, i64 0, i32 3
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs14, align 8, !tbaa !37
  %call15 = tail call i32 @X509_add_certs(%struct.stack_st_X509* noundef %0, %struct.stack_st_X509* noundef %certs, i32 noundef 1) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end19

if.end19:                                         ; preds = %lor.lhs.false13, %if.end8
  %responderId = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %brsp, i64 0, i32 0, i32 1
  %and20 = and i64 %flags, 1024
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end19
  %call23 = tail call i32 @OCSP_RESPID_set_by_key(%struct.ocsp_responder_id_st* noundef nonnull %responderId, %struct.x509_st* noundef %signer) #7
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end31

if.else:                                          ; preds = %if.end19
  %call27 = tail call i32 @OCSP_RESPID_set_by_name(%struct.ocsp_responder_id_st* noundef nonnull %responderId, %struct.x509_st* noundef %signer) #7
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end31

if.end31:                                         ; preds = %if.else, %if.then22
  %and32 = and i64 %flags, 2048
  %tobool33.not = icmp eq i64 %and32, 0
  br i1 %tobool33.not, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %if.end31
  %producedAt = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %brsp, i64 0, i32 0, i32 2
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %producedAt, align 8, !tbaa !38
  %call35 = tail call %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef %1, i64 noundef 0) #8
  %tobool36.not = icmp eq %struct.asn1_string_st* %call35, null
  br i1 %tobool36.not, label %err, label %if.end38

if.end38:                                         ; preds = %land.lhs.true, %if.end31
  %call39 = tail call %struct.ASN1_ITEM_st* @OCSP_RESPDATA_it() #8
  %signatureAlgorithm = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %brsp, i64 0, i32 1
  %signature = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %brsp, i64 0, i32 2
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !39
  %3 = bitcast %struct.ocsp_basic_response_st* %brsp to i8*
  %call41 = tail call i32 @ASN1_item_sign_ctx(%struct.ASN1_ITEM_st* noundef %call39, %struct.X509_algor_st* noundef nonnull %signatureAlgorithm, %struct.X509_algor_st* noundef null, %struct.asn1_string_st* noundef %2, i8* noundef %3, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %cleanup

err.sink.split:                                   ; preds = %if.end, %lor.lhs.false5, %entry, %lor.lhs.false
  %.sink64 = phi i32 [ 175, %lor.lhs.false ], [ 175, %entry ], [ 181, %lor.lhs.false5 ], [ 181, %if.end ]
  %.sink = phi i32 [ 130, %lor.lhs.false ], [ 130, %entry ], [ 110, %lor.lhs.false5 ], [ 110, %if.end ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink64, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OCSP_basic_sign_ctx, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef %.sink, i8* noundef null) #8
  br label %err

err:                                              ; preds = %err.sink.split, %if.end38, %land.lhs.true, %if.else, %if.then22, %if.then10, %lor.lhs.false13
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end38 ]
  ret i32 %retval.0
}

declare %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @X509_add_certs(%struct.stack_st_X509* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_RESPID_set_by_key(%struct.ocsp_responder_id_st* nocapture noundef writeonly %respid, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %cert, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 25
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !40
  %propq = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 26
  %1 = load i8*, i8** %propq, align 8, !tbaa !47
  %call = tail call i32 @OCSP_RESPID_set_by_key_ex(%struct.ocsp_responder_id_st* noundef %respid, %struct.x509_st* noundef nonnull %cert, %struct.ossl_lib_ctx_st* noundef %0, i8* noundef %1) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_RESPID_set_by_name(%struct.ocsp_responder_id_st* noundef %respid, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %byName = getelementptr inbounds %struct.ocsp_responder_id_st, %struct.ocsp_responder_id_st* %respid, i64 0, i32 1, i32 0
  %call = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %cert) #8
  %call1 = tail call i32 @X509_NAME_set(%struct.X509_name_st** noundef nonnull %byName, %struct.X509_name_st* noundef %call) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.ocsp_responder_id_st, %struct.ocsp_responder_id_st* %respid, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !48
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ASN1_item_sign_ctx(%struct.ASN1_ITEM_st* noundef, %struct.X509_algor_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @OCSP_RESPDATA_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_basic_sign(%struct.ocsp_basic_response_st* noundef %brsp, %struct.x509_st* noundef %signer, %struct.evp_pkey_st* noundef %key, %struct.evp_md_st* noundef %dgst, %struct.stack_st_X509* noundef %certs, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %pkctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %0 = bitcast %struct.evp_pkey_ctx_st** %pkctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pkctx, align 8, !tbaa !18
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %dgst) #8
  %libctx = getelementptr inbounds %struct.x509_st, %struct.x509_st* %signer, i64 0, i32 25
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !40
  %propq = getelementptr inbounds %struct.x509_st, %struct.x509_st* %signer, i64 0, i32 26
  %2 = load i8*, i8** %propq, align 8, !tbaa !47
  %call2 = call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_pkey_ctx_st** noundef nonnull %pkctx, i8* noundef %call1, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef %2, %struct.evp_pkey_st* noundef %key, %struct.ossl_param_st* noundef null) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @OCSP_basic_sign_ctx(%struct.ocsp_basic_response_st* noundef %brsp, %struct.x509_st* noundef nonnull %signer, %struct.evp_md_ctx_st* noundef nonnull %call, %struct.stack_st_X509* noundef %certs, i64 noundef %flags) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.end4
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ 0, %if.end ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #1

declare i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare i32 @X509_NAME_set(%struct.X509_name_st** noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_RESPID_set_by_key_ex(%struct.ocsp_responder_id_st* nocapture noundef writeonly %respid, %struct.x509_st* noundef %cert, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %md = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #9
  %call = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %propq) #8
  %cmp = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @X509_pubkey_digest(%struct.x509_st* noundef %cert, %struct.evp_md_st* noundef nonnull %call, i8* noundef nonnull %0, i32* noundef null) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #8
  %cmp5 = icmp eq %struct.asn1_string_st* %call4, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call9 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call4, i8* noundef nonnull %0, i32 noundef 20) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call4) #8
  br label %err

if.end12:                                         ; preds = %if.end7
  %type = getelementptr inbounds %struct.ocsp_responder_id_st, %struct.ocsp_responder_id_st* %respid, i64 0, i32 0
  store i32 1, i32* %type, align 8, !tbaa !48
  %value = getelementptr inbounds %struct.ocsp_responder_id_st, %struct.ocsp_responder_id_st* %respid, i64 0, i32 1
  %byKey13 = bitcast %union.anon.1* %value to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call4, %struct.asn1_string_st** %byKey13, align 8, !tbaa !34
  br label %err

err:                                              ; preds = %if.end3, %if.end, %if.end12, %if.then11
  %ret.0 = phi i32 [ 0, %if.end3 ], [ 1, %if.end12 ], [ 0, %if.then11 ], [ 0, %if.end ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @X509_pubkey_digest(%struct.x509_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_RESPID_match_ex(%struct.ocsp_responder_id_st* nocapture noundef readonly %respid, %struct.x509_st* noundef %cert, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %md = alloca [20 x i8], align 16
  %type = getelementptr inbounds %struct.ocsp_responder_id_st, %struct.ocsp_responder_id_st* %respid, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !48
  switch i32 %0, label %err [
    i32 1, label %if.then
    i32 0, label %if.then21
  ]

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds [20 x i8], [20 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %1) #9
  %call = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %propq) #8
  %cmp1 = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %value = getelementptr inbounds %struct.ocsp_responder_id_st, %struct.ocsp_responder_id_st* %respid, i64 0, i32 1
  %byKey = bitcast %union.anon.1* %value to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %byKey, align 8, !tbaa !34
  %cmp3 = icmp eq %struct.asn1_string_st* %2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @X509_pubkey_digest(%struct.x509_st* noundef %cert, %struct.evp_md_st* noundef nonnull %call, i8* noundef nonnull %1, i32* noundef null) #8
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %byKey, align 8, !tbaa !34
  %call11 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %3) #8
  %cmp12 = icmp eq i32 %call11, 20
  br i1 %cmp12, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %if.end8
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %byKey, align 8, !tbaa !34
  %call15 = call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %4) #8
  %call17 = call i32 @memcmp(i8* noundef %call15, i8* noundef nonnull %1, i64 noundef 20) #10
  %cmp18 = icmp eq i32 %call17, 0
  %phi.cast = zext i1 %cmp18 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.rhs, %if.end5, %if.end, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.end ], [ 0, %if.end5 ], [ 0, %if.end8 ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %1) #9
  br label %err

if.then21:                                        ; preds = %entry
  %byName = getelementptr inbounds %struct.ocsp_responder_id_st, %struct.ocsp_responder_id_st* %respid, i64 0, i32 1, i32 0
  %5 = load %struct.X509_name_st*, %struct.X509_name_st** %byName, align 8, !tbaa !34
  %cmp23 = icmp eq %struct.X509_name_st* %5, null
  br i1 %cmp23, label %cleanup33, label %if.end25

if.end25:                                         ; preds = %if.then21
  %call28 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %cert) #8
  %call29 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef nonnull %5, %struct.X509_name_st* noundef %call28) #8
  %cmp30 = icmp eq i32 %call29, 0
  %conv = zext i1 %cmp30 to i32
  br label %cleanup33

err:                                              ; preds = %entry, %cleanup
  %sha1.0 = phi %struct.evp_md_st* [ %call, %cleanup ], [ null, %entry ]
  %ret.1 = phi i32 [ %ret.0, %cleanup ], [ 0, %entry ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %sha1.0) #8
  br label %cleanup33

cleanup33:                                        ; preds = %if.then21, %err, %if.end25
  %retval.0 = phi i32 [ %ret.1, %err ], [ %conv, %if.end25 ], [ 0, %if.then21 ]
  ret i32 %retval.0
}

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_RESPID_match(%struct.ocsp_responder_id_st* nocapture noundef readonly %respid, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %cert, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 25
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !40
  %propq = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 26
  %1 = load i8*, i8** %propq, align 8, !tbaa !47
  %call = tail call i32 @OCSP_RESPID_match_ex(%struct.ocsp_responder_id_st* noundef %respid, %struct.x509_st* noundef nonnull %cert, %struct.ossl_lib_ctx_st* noundef %0, i8* noundef %1) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
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
!4 = !{!5, !7, i64 16}
!5 = !{!"ocsp_request_st", !6, i64 0, !7, i64 32}
!6 = !{!"ocsp_req_info_st", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 0}
!11 = !{!"ocsp_one_request_st", !7, i64 0, !7, i64 8}
!12 = !{!13, !7, i64 0}
!13 = !{!"ocsp_cert_id_st", !14, i64 0, !15, i64 16, !15, i64 40, !15, i64 64}
!14 = !{!"X509_algor_st", !7, i64 0, !7, i64 8}
!15 = !{!"asn1_string_st", !16, i64 0, !16, i64 4, !7, i64 8, !17, i64 16}
!16 = !{!"int", !8, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!5, !7, i64 32}
!20 = !{!21, !7, i64 0}
!21 = !{!"ocsp_response_st", !7, i64 0, !7, i64 8}
!22 = !{!21, !7, i64 8}
!23 = !{!24, !7, i64 0}
!24 = !{!"ocsp_resp_bytes_st", !7, i64 0, !7, i64 8}
!25 = !{!26, !7, i64 32}
!26 = !{!"ocsp_basic_response_st", !27, i64 0, !14, i64 48, !7, i64 64, !7, i64 72}
!27 = !{!"ocsp_response_data_st", !7, i64 0, !28, i64 8, !7, i64 24, !7, i64 32, !7, i64 40}
!28 = !{!"ocsp_responder_id_st", !16, i64 0, !8, i64 8}
!29 = !{!30, !7, i64 0}
!30 = !{!"ocsp_single_response_st", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!31 = !{!30, !7, i64 8}
!32 = !{!33, !16, i64 0}
!33 = !{!"ocsp_cert_status_st", !16, i64 0, !8, i64 8}
!34 = !{!8, !8, i64 0}
!35 = !{!36, !7, i64 8}
!36 = !{!"ocsp_revoked_info_st", !7, i64 0, !7, i64 8}
!37 = !{!26, !7, i64 72}
!38 = !{!26, !7, i64 24}
!39 = !{!26, !7, i64 64}
!40 = !{!41, !7, i64 368}
!41 = !{!"x509_st", !42, i64 0, !14, i64 136, !15, i64 152, !45, i64 176, !8, i64 192, !46, i64 200, !17, i64 216, !17, i64 224, !16, i64 232, !16, i64 236, !16, i64 240, !16, i64 244, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !8, i64 312, !7, i64 336, !7, i64 344, !16, i64 352, !7, i64 360, !7, i64 368, !7, i64 376}
!42 = !{!"x509_cinf_st", !7, i64 0, !15, i64 8, !14, i64 32, !7, i64 48, !43, i64 56, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !44, i64 112}
!43 = !{!"X509_val_st", !7, i64 0, !7, i64 8}
!44 = !{!"ASN1_ENCODING_st", !7, i64 0, !17, i64 8, !16, i64 16}
!45 = !{!"x509_sig_info_st", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!46 = !{!"crypto_ex_data_st", !7, i64 0, !7, i64 8}
!47 = !{!41, !7, i64 376}
!48 = !{!28, !16, i64 0}
