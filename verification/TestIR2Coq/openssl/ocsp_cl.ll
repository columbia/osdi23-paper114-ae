; ModuleID = 'crypto/ocsp/ocsp_cl.c'
source_filename = "crypto/ocsp/ocsp_cl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocsp_one_request_st = type { %struct.ocsp_cert_id_st*, %struct.stack_st_X509_EXTENSION* }
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ocsp_request_st = type { %struct.ocsp_req_info_st, %struct.ocsp_signature_st* }
%struct.ocsp_req_info_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.stack_st_OCSP_ONEREQ*, %struct.stack_st_X509_EXTENSION* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.GENERAL_NAME_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st_OCSP_ONEREQ = type opaque
%struct.ocsp_signature_st = type { %struct.X509_algor_st, %struct.asn1_string_st*, %struct.stack_st_X509* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.stack_st_X509 = type opaque
%struct.ocsp_cert_id_st = type { %struct.X509_algor_st, %struct.asn1_string_st, %struct.asn1_string_st, %struct.asn1_string_st }
%struct.stack_st = type opaque
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
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
%struct.ASIdentifierChoice_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_md_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.ocsp_response_st = type { %struct.asn1_string_st*, %struct.ocsp_resp_bytes_st* }
%struct.ocsp_resp_bytes_st = type { %struct.asn1_object_st*, %struct.asn1_string_st* }
%struct.ocsp_basic_response_st = type { %struct.ocsp_response_data_st, %struct.X509_algor_st, %struct.asn1_string_st*, %struct.stack_st_X509* }
%struct.ocsp_response_data_st = type { %struct.asn1_string_st*, %struct.ocsp_responder_id_st, %struct.asn1_string_st*, %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_X509_EXTENSION* }
%struct.ocsp_responder_id_st = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.X509_name_st* }
%struct.stack_st_OCSP_SINGLERESP = type opaque
%struct.ocsp_single_response_st = type { %struct.ocsp_cert_id_st*, %struct.ocsp_cert_status_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION* }
%struct.ocsp_cert_status_st = type { i32, %union.anon.3 }
%union.anon.3 = type { i32* }
%struct.ocsp_revoked_info_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }

@.str = private unnamed_addr constant [22 x i8] c"crypto/ocsp/ocsp_cl.c\00", align 1
@__func__.OCSP_request_sign = private unnamed_addr constant [18 x i8] c"OCSP_request_sign\00", align 1
@__func__.OCSP_response_get1_basic = private unnamed_addr constant [25 x i8] c"OCSP_response_get1_basic\00", align 1
@__func__.OCSP_check_validity = private unnamed_addr constant [20 x i8] c"OCSP_check_validity\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_one_request_st* @OCSP_request_add0_id(%struct.ocsp_request_st* noundef readonly %req, %struct.ocsp_cert_id_st* noundef %cid) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ocsp_one_request_st* @OCSP_ONEREQ_new() #7
  %cmp = icmp eq %struct.ocsp_one_request_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %reqCert = getelementptr inbounds %struct.ocsp_one_request_st, %struct.ocsp_one_request_st* %call, i64 0, i32 0
  %0 = load %struct.ocsp_cert_id_st*, %struct.ocsp_cert_id_st** %reqCert, align 8, !tbaa !4
  tail call void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef %0) #7
  store %struct.ocsp_cert_id_st* %cid, %struct.ocsp_cert_id_st** %reqCert, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.ocsp_request_st* %req, null
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %requestList = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %req, i64 0, i32 0, i32 2
  %1 = load %struct.stack_st_OCSP_ONEREQ*, %struct.stack_st_OCSP_ONEREQ** %requestList, align 8, !tbaa !9
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_OCSP_ONEREQ_sk_type(%struct.stack_st_OCSP_ONEREQ* noundef %1) #8
  %2 = bitcast %struct.ocsp_one_request_st* %call to i8*
  %call4 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call2, i8* noundef nonnull %2) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  store %struct.ocsp_cert_id_st* null, %struct.ocsp_cert_id_st** %reqCert, align 8, !tbaa !4
  tail call void @OCSP_ONEREQ_free(%struct.ocsp_one_request_st* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %entry, %if.then6
  %retval.0 = phi %struct.ocsp_one_request_st* [ null, %if.then6 ], [ null, %entry ], [ %call, %land.lhs.true ], [ %call, %if.end ]
  ret %struct.ocsp_one_request_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ocsp_one_request_st* @OCSP_ONEREQ_new() local_unnamed_addr #2

declare void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OCSP_ONEREQ_sk_type(%struct.stack_st_OCSP_ONEREQ* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OCSP_ONEREQ* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OCSP_ONEREQ_free(%struct.ocsp_one_request_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_request_set1_name(%struct.ocsp_request_st* nocapture noundef %req, %struct.X509_name_st* noundef %nm) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.GENERAL_NAME_st* @GENERAL_NAME_new() #7
  %cmp = icmp eq %struct.GENERAL_NAME_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call, i64 0, i32 1
  %directoryName = bitcast %union.anon.0* %d to %struct.X509_name_st**
  %call1 = tail call i32 @X509_NAME_set(%struct.X509_name_st** noundef nonnull %directoryName, %struct.X509_name_st* noundef %nm) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef nonnull %call) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call, i64 0, i32 0
  store i32 4, i32* %type, align 8, !tbaa !12
  %requestorName = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %req, i64 0, i32 0, i32 1
  %0 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %requestorName, align 8, !tbaa !15
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %0) #7
  store %struct.GENERAL_NAME_st* %call, %struct.GENERAL_NAME_st** %requestorName, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.GENERAL_NAME_st* @GENERAL_NAME_new() local_unnamed_addr #2

declare i32 @X509_NAME_set(%struct.X509_name_st** noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_request_add1_cert(%struct.ocsp_request_st* nocapture noundef %req, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %optionalSignature = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %req, i64 0, i32 1
  %0 = load %struct.ocsp_signature_st*, %struct.ocsp_signature_st** %optionalSignature, align 8, !tbaa !16
  %cmp = icmp eq %struct.ocsp_signature_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.ocsp_signature_st* @OCSP_SIGNATURE_new() #7
  store %struct.ocsp_signature_st* %call, %struct.ocsp_signature_st** %optionalSignature, align 8, !tbaa !16
  %cmp2 = icmp eq %struct.ocsp_signature_st* %call, null
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = phi %struct.ocsp_signature_st* [ %call, %land.lhs.true ], [ %0, %entry ]
  %cmp3 = icmp eq %struct.x509_st* %cert, null
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %certs = getelementptr inbounds %struct.ocsp_signature_st, %struct.ocsp_signature_st* %1, i64 0, i32 2
  %call7 = tail call i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef nonnull %certs, %struct.x509_st* noundef nonnull %cert, i32 noundef 1) #7
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true, %if.end5
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ 0, %land.lhs.true ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare %struct.ocsp_signature_st* @OCSP_SIGNATURE_new() local_unnamed_addr #2

declare i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_request_sign(%struct.ocsp_request_st* noundef %req, %struct.x509_st* noundef %signer, %struct.evp_pkey_st* noundef %key, %struct.evp_md_st* noundef %dgst, %struct.stack_st_X509* noundef %certs, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %signer) #7
  %call1 = tail call i32 @OCSP_request_set1_name(%struct.ocsp_request_st* noundef %req, %struct.X509_name_st* noundef %call) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ocsp_signature_st* @OCSP_SIGNATURE_new() #7
  %optionalSignature = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %req, i64 0, i32 1
  store %struct.ocsp_signature_st* %call2, %struct.ocsp_signature_st** %optionalSignature, align 8, !tbaa !16
  %cmp = icmp eq %struct.ocsp_signature_st* %call2, null
  br i1 %cmp, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %cmp5.not = icmp eq %struct.evp_pkey_st* %key, null
  br i1 %cmp5.not, label %if.end18, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @X509_check_private_key(%struct.x509_st* noundef %signer, %struct.evp_pkey_st* noundef nonnull %key) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.OCSP_request_sign, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 110, i8* noundef null) #7
  br label %err

if.end10:                                         ; preds = %if.then6
  %call11 = tail call %struct.ASN1_ITEM_st* @OCSP_REQINFO_it() #7
  %0 = load %struct.ocsp_signature_st*, %struct.ocsp_signature_st** %optionalSignature, align 8, !tbaa !16
  %signatureAlgorithm = getelementptr inbounds %struct.ocsp_signature_st, %struct.ocsp_signature_st* %0, i64 0, i32 0
  %signature = getelementptr inbounds %struct.ocsp_signature_st, %struct.ocsp_signature_st* %0, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !17
  %2 = bitcast %struct.ocsp_request_st* %req to i8*
  %libctx = getelementptr inbounds %struct.x509_st, %struct.x509_st* %signer, i64 0, i32 25
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !20
  %propq = getelementptr inbounds %struct.x509_st, %struct.x509_st* %signer, i64 0, i32 26
  %4 = load i8*, i8** %propq, align 8, !tbaa !29
  %call14 = tail call i32 @ASN1_item_sign_ex(%struct.ASN1_ITEM_st* noundef %call11, %struct.X509_algor_st* noundef %signatureAlgorithm, %struct.X509_algor_st* noundef null, %struct.asn1_string_st* noundef %1, i8* noundef %2, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef nonnull %key, %struct.evp_md_st* noundef %dgst, %struct.ossl_lib_ctx_st* noundef %3, i8* noundef %4) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.end10, %if.end4
  %and = and i64 %flags, 1
  %cmp19 = icmp eq i64 %and, 0
  br i1 %cmp19, label %if.then20, label %return

if.then20:                                        ; preds = %if.end18
  %call21 = tail call i32 @OCSP_request_add1_cert(%struct.ocsp_request_st* noundef nonnull %req, %struct.x509_st* noundef %signer) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then20
  %5 = load %struct.ocsp_signature_st*, %struct.ocsp_signature_st** %optionalSignature, align 8, !tbaa !16
  %certs24 = getelementptr inbounds %struct.ocsp_signature_st, %struct.ocsp_signature_st* %5, i64 0, i32 2
  %6 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs24, align 8, !tbaa !30
  %call25 = tail call i32 @X509_add_certs(%struct.stack_st_X509* noundef %6, %struct.stack_st_X509* noundef %certs, i32 noundef 1) #7
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %return

err:                                              ; preds = %if.then20, %lor.lhs.false, %if.end10, %if.end, %entry, %if.then9
  %optionalSignature30 = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %req, i64 0, i32 1
  %7 = load %struct.ocsp_signature_st*, %struct.ocsp_signature_st** %optionalSignature30, align 8, !tbaa !16
  tail call void @OCSP_SIGNATURE_free(%struct.ocsp_signature_st* noundef %7) #7
  store %struct.ocsp_signature_st* null, %struct.ocsp_signature_st** %optionalSignature30, align 8, !tbaa !16
  br label %return

return:                                           ; preds = %if.end18, %lor.lhs.false, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %lor.lhs.false ], [ 1, %if.end18 ]
  ret i32 %retval.0
}

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ASN1_item_sign_ex(%struct.ASN1_ITEM_st* noundef, %struct.X509_algor_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, %struct.asn1_string_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @OCSP_REQINFO_it() local_unnamed_addr #2

declare i32 @X509_add_certs(%struct.stack_st_X509* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

declare void @OCSP_SIGNATURE_free(%struct.ocsp_signature_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_response_status(%struct.ocsp_response_st* nocapture noundef readonly %resp) local_unnamed_addr #0 {
entry:
  %responseStatus = getelementptr inbounds %struct.ocsp_response_st, %struct.ocsp_response_st* %resp, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %responseStatus, align 8, !tbaa !31
  %call = tail call i64 @ASN1_ENUMERATED_get(%struct.asn1_string_st* noundef %0) #7
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i64 @ASN1_ENUMERATED_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_basic_response_st* @OCSP_response_get1_basic(%struct.ocsp_response_st* nocapture noundef readonly %resp) local_unnamed_addr #0 {
entry:
  %responseBytes = getelementptr inbounds %struct.ocsp_response_st, %struct.ocsp_response_st* %resp, i64 0, i32 1
  %0 = load %struct.ocsp_resp_bytes_st*, %struct.ocsp_resp_bytes_st** %responseBytes, align 8, !tbaa !33
  %cmp = icmp eq %struct.ocsp_resp_bytes_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OCSP_response_get1_basic, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 108, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %responseType = getelementptr inbounds %struct.ocsp_resp_bytes_st, %struct.ocsp_resp_bytes_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %responseType, align 8, !tbaa !34
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #7
  %cmp1.not = icmp eq i32 %call, 365
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OCSP_response_get1_basic, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 104, i8* noundef null) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %response = getelementptr inbounds %struct.ocsp_resp_bytes_st, %struct.ocsp_resp_bytes_st* %0, i64 0, i32 1
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %response, align 8, !tbaa !36
  %call4 = tail call %struct.ASN1_ITEM_st* @OCSP_BASICRESP_it() #7
  %call5 = tail call i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef %2, %struct.ASN1_ITEM_st* noundef %call4) #7
  %3 = bitcast i8* %call5 to %struct.ocsp_basic_response_st*
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi %struct.ocsp_basic_response_st* [ null, %if.then ], [ null, %if.then2 ], [ %3, %if.end3 ]
  ret %struct.ocsp_basic_response_st* %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @OCSP_BASICRESP_it() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @OCSP_resp_get0_signature(%struct.ocsp_basic_response_st* nocapture noundef readonly %bs) local_unnamed_addr #4 {
entry:
  %signature = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !37
  ret %struct.asn1_string_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.X509_algor_st* @OCSP_resp_get0_tbs_sigalg(%struct.ocsp_basic_response_st* noundef readnone %bs) local_unnamed_addr #3 {
entry:
  %signatureAlgorithm = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 1
  ret %struct.X509_algor_st* %signatureAlgorithm
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define %struct.ocsp_response_data_st* @OCSP_resp_get0_respdata(%struct.ocsp_basic_response_st* noundef readnone %bs) local_unnamed_addr #3 {
entry:
  %tbsResponseData = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 0
  ret %struct.ocsp_response_data_st* %tbsResponseData
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_resp_count(%struct.ocsp_basic_response_st* noundef readonly %bs) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ocsp_basic_response_st* %bs, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %responses = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 0, i32 3
  %0 = load %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_OCSP_SINGLERESP** %responses, align 8, !tbaa !41
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef %0) #8
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OCSP_SINGLERESP* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_single_response_st* @OCSP_resp_get0(%struct.ocsp_basic_response_st* noundef readonly %bs, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ocsp_basic_response_st* %bs, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %responses = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 0, i32 3
  %0 = load %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_OCSP_SINGLERESP** %responses, align 8, !tbaa !41
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef %0) #8
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %idx) #7
  %1 = bitcast i8* %call1 to %struct.ocsp_single_response_st*
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ocsp_single_response_st* [ %1, %if.end ], [ null, %entry ]
  ret %struct.ocsp_single_response_st* %retval.0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @OCSP_resp_get0_produced_at(%struct.ocsp_basic_response_st* nocapture noundef readonly %bs) local_unnamed_addr #4 {
entry:
  %producedAt = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %producedAt, align 8, !tbaa !42
  ret %struct.asn1_string_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509* @OCSP_resp_get0_certs(%struct.ocsp_basic_response_st* nocapture noundef readonly %bs) local_unnamed_addr #4 {
entry:
  %certs = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 3
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !43
  ret %struct.stack_st_X509* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @OCSP_resp_get0_id(%struct.ocsp_basic_response_st* nocapture noundef readonly %bs, %struct.asn1_string_st** nocapture noundef writeonly %pid, %struct.X509_name_st** nocapture noundef writeonly %pname) local_unnamed_addr #5 {
entry:
  %type = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 0, i32 1, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !44
  switch i32 %0, label %cleanup [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

if.then:                                          ; preds = %entry
  %byName = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 0, i32 1, i32 1, i32 0
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %byName, align 8, !tbaa !45
  store %struct.X509_name_st* %1, %struct.X509_name_st** %pname, align 8, !tbaa !46
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %pid, align 8, !tbaa !46
  br label %cleanup

if.then3:                                         ; preds = %entry
  %value4 = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 0, i32 1, i32 1
  %byKey = bitcast %union.anon.2* %value4 to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %byKey, align 8, !tbaa !45
  store %struct.asn1_string_st* %2, %struct.asn1_string_st** %pid, align 8, !tbaa !46
  store %struct.X509_name_st* null, %struct.X509_name_st** %pname, align 8, !tbaa !46
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then3 ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_resp_get1_id(%struct.ocsp_basic_response_st* nocapture noundef readonly %bs, %struct.asn1_string_st** nocapture noundef %pid, %struct.X509_name_st** nocapture noundef %pname) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 0, i32 1, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !44
  switch i32 %0, label %cleanup [
    i32 0, label %if.end7
    i32 1, label %land.lhs.true
  ]

if.end7:                                          ; preds = %entry
  %byName = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 0, i32 1, i32 1, i32 0
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %byName, align 8, !tbaa !45
  %call = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %1) #7
  store %struct.X509_name_st* %call, %struct.X509_name_st** %pname, align 8, !tbaa !46
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %pid, align 8, !tbaa !46
  %.pr = load %struct.X509_name_st*, %struct.X509_name_st** %pname, align 8, !tbaa !46
  %cmp8 = icmp eq %struct.X509_name_st* %.pr, null
  br i1 %cmp8, label %cleanup, label %if.end11

land.lhs.true:                                    ; preds = %entry
  %value4 = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 0, i32 1, i32 1
  %byKey = bitcast %union.anon.2* %value4 to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %byKey, align 8, !tbaa !45
  %call5 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_dup(%struct.asn1_string_st* noundef %2) #7
  store %struct.asn1_string_st* %call5, %struct.asn1_string_st** %pid, align 8, !tbaa !46
  store %struct.X509_name_st* null, %struct.X509_name_st** %pname, align 8, !tbaa !46
  %.pr21 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pid, align 8, !tbaa !46
  %cmp9 = icmp eq %struct.asn1_string_st* %.pr21, null
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.end7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true, %entry, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

declare %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_resp_find(%struct.ocsp_basic_response_st* noundef readonly %bs, %struct.ocsp_cert_id_st* noundef %id, i32 noundef %last) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ocsp_basic_response_st* %bs, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %last, 0
  %inc = add nsw i32 %last, 1
  %last.addr.0 = select i1 %cmp1, i32 0, i32 %inc
  %responses = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %bs, i64 0, i32 0, i32 3
  %0 = load %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_OCSP_SINGLERESP** %responses, align 8, !tbaa !41
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef %0) #8
  %call424 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp525 = icmp slt i32 %last.addr.0, %call424
  br i1 %cmp525, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end, %for.inc
  %i.026 = phi i32 [ %inc11, %for.inc ], [ %last.addr.0, %if.end ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.026) #7
  %certId = bitcast i8* %call7 to %struct.ocsp_cert_id_st**
  %1 = load %struct.ocsp_cert_id_st*, %struct.ocsp_cert_id_st** %certId, align 8, !tbaa !47
  %call8 = tail call i32 @OCSP_id_cmp(%struct.ocsp_cert_id_st* noundef %id, %struct.ocsp_cert_id_st* noundef %1) #7
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc11 = add nsw i32 %i.026, 1
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp5 = icmp slt i32 %inc11, %call4
  br i1 %cmp5, label %for.body, label %cleanup, !llvm.loop !49

cleanup:                                          ; preds = %for.body, %for.inc, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ %i.026, %for.body ], [ -1, %for.inc ]
  ret i32 %retval.0
}

declare i32 @OCSP_id_cmp(%struct.ocsp_cert_id_st* noundef, %struct.ocsp_cert_id_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_single_get0_status(%struct.ocsp_single_response_st* noundef readonly %single, i32* noundef writeonly %reason, %struct.asn1_string_st** noundef writeonly %revtime, %struct.asn1_string_st** noundef writeonly %thisupd, %struct.asn1_string_st** noundef writeonly %nextupd) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ocsp_single_response_st* %single, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %certStatus = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %single, i64 0, i32 1
  %0 = load %struct.ocsp_cert_status_st*, %struct.ocsp_cert_status_st** %certStatus, align 8, !tbaa !51
  %type = getelementptr inbounds %struct.ocsp_cert_status_st, %struct.ocsp_cert_status_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !52
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  %value = getelementptr inbounds %struct.ocsp_cert_status_st, %struct.ocsp_cert_status_st* %0, i64 0, i32 1
  %revoked = bitcast %union.anon.3* %value to %struct.ocsp_revoked_info_st**
  %2 = load %struct.ocsp_revoked_info_st*, %struct.ocsp_revoked_info_st** %revoked, align 8, !tbaa !45
  %tobool.not = icmp eq %struct.asn1_string_st** %revtime, null
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.then2
  %revocationTime = getelementptr inbounds %struct.ocsp_revoked_info_st, %struct.ocsp_revoked_info_st* %2, i64 0, i32 0
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %revocationTime, align 8, !tbaa !54
  store %struct.asn1_string_st* %3, %struct.asn1_string_st** %revtime, align 8, !tbaa !46
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then2
  %tobool5.not = icmp eq i32* %reason, null
  br i1 %tobool5.not, label %if.end12, label %if.then6

if.then6:                                         ; preds = %if.end4
  %revocationReason = getelementptr inbounds %struct.ocsp_revoked_info_st, %struct.ocsp_revoked_info_st* %2, i64 0, i32 1
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %revocationReason, align 8, !tbaa !56
  %tobool7.not = icmp eq %struct.asn1_string_st* %4, null
  br i1 %tobool7.not, label %if.end12.sink.split, label %if.then8

if.then8:                                         ; preds = %if.then6
  %call = tail call i64 @ASN1_ENUMERATED_get(%struct.asn1_string_st* noundef nonnull %4) #7
  %conv = trunc i64 %call to i32
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then6, %if.then8
  %.sink = phi i32 [ %conv, %if.then8 ], [ -1, %if.then6 ]
  store i32 %.sink, i32* %reason, align 4, !tbaa !57
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.end4, %if.end
  %cmp13.not = icmp eq %struct.asn1_string_st** %thisupd, null
  br i1 %cmp13.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  %thisUpdate = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %single, i64 0, i32 2
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %thisUpdate, align 8, !tbaa !58
  store %struct.asn1_string_st* %5, %struct.asn1_string_st** %thisupd, align 8, !tbaa !46
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  %cmp17.not = icmp eq %struct.asn1_string_st** %nextupd, null
  br i1 %cmp17.not, label %cleanup, label %if.then19

if.then19:                                        ; preds = %if.end16
  %nextUpdate = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %single, i64 0, i32 3
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nextUpdate, align 8, !tbaa !59
  store %struct.asn1_string_st* %6, %struct.asn1_string_st** %nextupd, align 8, !tbaa !46
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then19, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %1, %if.then19 ], [ %1, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_resp_find_status(%struct.ocsp_basic_response_st* noundef %bs, %struct.ocsp_cert_id_st* noundef %id, i32* noundef writeonly %status, i32* noundef %reason, %struct.asn1_string_st** noundef %revtime, %struct.asn1_string_st** noundef %thisupd, %struct.asn1_string_st** noundef %nextupd) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OCSP_resp_find(%struct.ocsp_basic_response_st* noundef %bs, %struct.ocsp_cert_id_st* noundef %id, i32 noundef -1) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ocsp_single_response_st* @OCSP_resp_get0(%struct.ocsp_basic_response_st* noundef %bs, i32 noundef %call) #8
  %call2 = tail call i32 @OCSP_single_get0_status(%struct.ocsp_single_response_st* noundef %call1, i32* noundef %reason, %struct.asn1_string_st** noundef %revtime, %struct.asn1_string_st** noundef %thisupd, %struct.asn1_string_st** noundef %nextupd) #8
  %cmp3.not = icmp eq i32* %status, null
  br i1 %cmp3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  store i32 %call2, i32* %status, align 4, !tbaa !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then4 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_check_validity(%struct.asn1_string_st* noundef %thisupd, %struct.asn1_string_st* noundef %nextupd, i64 noundef %nsec, i64 noundef %maxsec) local_unnamed_addr #0 {
entry:
  %t_now = alloca i64, align 8
  %t_tmp = alloca i64, align 8
  %0 = bitcast i64* %t_now to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i64* %t_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %call = call i64 @time(i64* noundef nonnull %t_now) #7
  %call1 = call i32 @ASN1_GENERALIZEDTIME_check(%struct.asn1_string_st* noundef %thisupd) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end11.sink.split, label %if.else

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %t_now, align 8, !tbaa !60
  %add = add nsw i64 %2, %nsec
  store i64 %add, i64* %t_tmp, align 8, !tbaa !60
  %call2 = call i32 @X509_cmp_time(%struct.asn1_string_st* noundef %thisupd, i64* noundef nonnull %t_tmp) #7
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OCSP_check_validity, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 126, i8* noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  %ret.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.else ]
  %cmp4 = icmp sgt i64 %maxsec, -1
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %3 = load i64, i64* %t_now, align 8, !tbaa !60
  %sub = sub nsw i64 %3, %maxsec
  store i64 %sub, i64* %t_tmp, align 8, !tbaa !60
  %call6 = call i32 @X509_cmp_time(%struct.asn1_string_st* noundef %thisupd, i64* noundef nonnull %t_tmp) #7
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end11.sink.split, label %if.end11

if.end11.sink.split:                              ; preds = %if.then5, %entry
  %.sink41 = phi i32 [ 319, %entry ], [ 335, %if.then5 ]
  %.sink = phi i32 [ 123, %entry ], [ 127, %if.then5 ]
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink41, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OCSP_check_validity, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef %.sink, i8* noundef null) #7
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.end, %if.then5
  %ret.1 = phi i32 [ %ret.0, %if.then5 ], [ %ret.0, %if.end ], [ 0, %if.end11.sink.split ]
  %cmp12 = icmp eq %struct.asn1_string_st* %nextupd, null
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end11
  %call15 = call i32 @ASN1_GENERALIZEDTIME_check(%struct.asn1_string_st* noundef nonnull %nextupd) #7
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end24.sink.split, label %if.else18

if.else18:                                        ; preds = %if.end14
  %4 = load i64, i64* %t_now, align 8, !tbaa !60
  %sub19 = sub nsw i64 %4, %nsec
  store i64 %sub19, i64* %t_tmp, align 8, !tbaa !60
  %call20 = call i32 @X509_cmp_time(%struct.asn1_string_st* noundef nonnull %nextupd, i64* noundef nonnull %t_tmp) #7
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end24.sink.split, label %if.end24

if.end24.sink.split:                              ; preds = %if.else18, %if.end14
  %.sink43 = phi i32 [ 346, %if.end14 ], [ 351, %if.else18 ]
  %.sink42 = phi i32 [ 122, %if.end14 ], [ 125, %if.else18 ]
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink43, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OCSP_check_validity, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef %.sink42, i8* noundef null) #7
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.else18
  %ret.2 = phi i32 [ %ret.1, %if.else18 ], [ 0, %if.end24.sink.split ]
  %call25 = call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef nonnull %nextupd, %struct.asn1_string_st* noundef %thisupd) #7
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %cleanup

if.then27:                                        ; preds = %if.end24
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 358, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OCSP_check_validity, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 124, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then27, %if.end11
  %retval.0 = phi i32 [ %ret.1, %if.end11 ], [ 0, %if.then27 ], [ %ret.2, %if.end24 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #6

declare i32 @ASN1_GENERALIZEDTIME_check(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @X509_cmp_time(%struct.asn1_string_st* noundef, i64* noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ocsp_cert_id_st* @OCSP_SINGLERESP_get0_id(%struct.ocsp_single_response_st* nocapture noundef readonly %single) local_unnamed_addr #4 {
entry:
  %certId = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %single, i64 0, i32 0
  %0 = load %struct.ocsp_cert_id_st*, %struct.ocsp_cert_id_st** %certId, align 8, !tbaa !47
  ret %struct.ocsp_cert_id_st* %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ocsp_one_request_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 16}
!10 = !{!"ocsp_request_st", !11, i64 0, !6, i64 32}
!11 = !{!"ocsp_req_info_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!12 = !{!13, !14, i64 0}
!13 = !{!"GENERAL_NAME_st", !14, i64 0, !7, i64 8}
!14 = !{!"int", !7, i64 0}
!15 = !{!10, !6, i64 8}
!16 = !{!10, !6, i64 32}
!17 = !{!18, !6, i64 16}
!18 = !{!"ocsp_signature_st", !19, i64 0, !6, i64 16, !6, i64 24}
!19 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!20 = !{!21, !6, i64 368}
!21 = !{!"x509_st", !22, i64 0, !19, i64 136, !23, i64 152, !27, i64 176, !7, i64 192, !28, i64 200, !24, i64 216, !24, i64 224, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !7, i64 312, !6, i64 336, !6, i64 344, !14, i64 352, !6, i64 360, !6, i64 368, !6, i64 376}
!22 = !{!"x509_cinf_st", !6, i64 0, !23, i64 8, !19, i64 32, !6, i64 48, !25, i64 56, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !26, i64 112}
!23 = !{!"asn1_string_st", !14, i64 0, !14, i64 4, !6, i64 8, !24, i64 16}
!24 = !{!"long", !7, i64 0}
!25 = !{!"X509_val_st", !6, i64 0, !6, i64 8}
!26 = !{!"ASN1_ENCODING_st", !6, i64 0, !24, i64 8, !14, i64 16}
!27 = !{!"x509_sig_info_st", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!28 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!29 = !{!21, !6, i64 376}
!30 = !{!18, !6, i64 24}
!31 = !{!32, !6, i64 0}
!32 = !{!"ocsp_response_st", !6, i64 0, !6, i64 8}
!33 = !{!32, !6, i64 8}
!34 = !{!35, !6, i64 0}
!35 = !{!"ocsp_resp_bytes_st", !6, i64 0, !6, i64 8}
!36 = !{!35, !6, i64 8}
!37 = !{!38, !6, i64 64}
!38 = !{!"ocsp_basic_response_st", !39, i64 0, !19, i64 48, !6, i64 64, !6, i64 72}
!39 = !{!"ocsp_response_data_st", !6, i64 0, !40, i64 8, !6, i64 24, !6, i64 32, !6, i64 40}
!40 = !{!"ocsp_responder_id_st", !14, i64 0, !7, i64 8}
!41 = !{!38, !6, i64 32}
!42 = !{!38, !6, i64 24}
!43 = !{!38, !6, i64 72}
!44 = !{!40, !14, i64 0}
!45 = !{!7, !7, i64 0}
!46 = !{!6, !6, i64 0}
!47 = !{!48, !6, i64 0}
!48 = !{!"ocsp_single_response_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!48, !6, i64 8}
!52 = !{!53, !14, i64 0}
!53 = !{!"ocsp_cert_status_st", !14, i64 0, !7, i64 8}
!54 = !{!55, !6, i64 0}
!55 = !{!"ocsp_revoked_info_st", !6, i64 0, !6, i64 8}
!56 = !{!55, !6, i64 8}
!57 = !{!14, !14, i64 0}
!58 = !{!48, !6, i64 16}
!59 = !{!48, !6, i64 24}
!60 = !{!24, !24, i64 0}
