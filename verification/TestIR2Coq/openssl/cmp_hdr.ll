; ModuleID = 'crypto/cmp/cmp_hdr.c'
source_filename = "crypto/cmp/cmp_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_name_entry_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32, i32 }
%struct.stack_st = type opaque
%struct.ossl_cmp_itav_st = type { %struct.asn1_object_st*, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.ossl_cmp_ctx_st = type { %struct.ossl_lib_ctx_st*, i8*, i32 (i8*, i8*, i32, i32, i8*)*, i32, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, i8*, %struct.ossl_http_req_ctx_st*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i64, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_name_st*, %struct.x509_store_st*, %struct.stack_st_X509*, i32, i32, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.evp_pkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, %struct.evp_md_st*, i32, i32, %struct.X509_name_st*, %struct.evp_md_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_OSSL_CMP_ITAV*, i32, i32, %struct.stack_st_X509*, %struct.evp_pkey_st*, i32, %struct.X509_name_st*, i32, %struct.X509_name_st*, %struct.stack_st_GENERAL_NAME*, i32, i32, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_POLICYINFO*, i32, i32, %struct.x509_st*, %struct.X509_req_st*, i32, %struct.stack_st_OSSL_CMP_ITAV*, i32, %struct.stack_st_ASN1_UTF8STRING*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.ossl_http_req_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.x509_store_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_ATTRIBUTE = type opaque
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

@.str = private unnamed_addr constant [21 x i8] c"crypto/cmp/cmp_hdr.c\00", align 1
@__func__.OSSL_CMP_HDR_get0_transactionID = private unnamed_addr constant [32 x i8] c"OSSL_CMP_HDR_get0_transactionID\00", align 1
@__func__.OSSL_CMP_HDR_get0_recipNonce = private unnamed_addr constant [29 x i8] c"OSSL_CMP_HDR_get0_recipNonce\00", align 1
@__func__.ossl_cmp_hdr_set_transactionID = private unnamed_addr constant [31 x i8] c"ossl_cmp_hdr_set_transactionID\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Starting new transaction with ID=%s\00", align 1
@__func__.set_random = private unnamed_addr constant [11 x i8] c"set_random\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_set_pvno(%struct.ossl_cmp_pkiheader_st* noundef readonly %hdr, i32 noundef %pvno) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkiheader_st* %hdr, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %pvno3 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pvno3, align 8, !tbaa !4
  %conv4 = sext i32 %pvno to i64
  %call = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %0, i64 noundef %conv4) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_get_pvno(%struct.ossl_cmp_pkiheader_st* noundef readonly %hdr) local_unnamed_addr #0 {
entry:
  %pvno = alloca i64, align 8
  %0 = bitcast i64* %pvno to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %cmp.not = icmp eq %struct.ossl_cmp_pkiheader_st* %hdr, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pvno3 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pvno3, align 8, !tbaa !4
  %call = call i32 @ASN1_INTEGER_get_int64(i64* noundef nonnull %pvno, %struct.asn1_string_st* noundef %1) #6
  %tobool = icmp eq i32 %call, 0
  %2 = load i64, i64* %pvno, align 8
  %cmp4 = icmp slt i64 %2, 0
  %or.cond = select i1 %tobool, i1 true, i1 %cmp4
  %cmp7 = icmp sgt i64 %2, 2147483647
  %or.cond12 = select i1 %or.cond, i1 true, i1 %cmp7
  %conv11 = trunc i64 %2 to i32
  %spec.select = select i1 %or.cond12, i32 -1, i32 %conv11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @ASN1_INTEGER_get_int64(i64* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_get_protection_nid(%struct.ossl_cmp_pkiheader_st* noundef readonly %hdr) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkiheader_st* %hdr, null
  br i1 %cmp.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %protectionAlg = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 4
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %protectionAlg, align 8, !tbaa !9
  %cmp3 = icmp eq %struct.X509_algor_st* %0, null
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !10
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #6
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @OSSL_CMP_HDR_get0_transactionID(%struct.ossl_cmp_pkiheader_st* noundef readonly %hdr) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_pkiheader_st* %hdr, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.OSSL_CMP_HDR_get0_transactionID, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %transactionID = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 7
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID, align 8, !tbaa !12
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.asn1_string_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @ossl_cmp_hdr_get0_senderNonce(%struct.ossl_cmp_pkiheader_st* noundef readonly %hdr) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkiheader_st* %hdr, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %senderNonce = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 8
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderNonce, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.asn1_string_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @OSSL_CMP_HDR_get0_recipNonce(%struct.ossl_cmp_pkiheader_st* noundef readonly %hdr) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_pkiheader_st* %hdr, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_CMP_HDR_get0_recipNonce, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %recipNonce = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 9
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %recipNonce, align 8, !tbaa !14
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_general_name_is_NULL_DN(%struct.GENERAL_NAME_st* noundef readonly %name) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.GENERAL_NAME_st* %name, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %name, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !15
  %cmp1 = icmp eq i32 %0, 4
  br i1 %cmp1, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %name, i64 0, i32 1
  %directoryName = bitcast %union.anon* %d to %struct.X509_name_st**
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !18
  %call = tail call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef %1, i32 noundef 0) #6
  %cmp2 = icmp eq %struct.X509_name_entry_st* %call, null
  %phi.cast = zext i1 %cmp2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ 0, %lor.rhs ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

declare %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_set1_sender(%struct.ossl_cmp_pkiheader_st* noundef %hdr, %struct.X509_name_st* noundef %nm) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkiheader_st* %hdr, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sender = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 1
  %call = tail call fastcc i32 @set1_general_name(%struct.GENERAL_NAME_st** noundef nonnull %sender, %struct.X509_name_st* noundef %nm) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set1_general_name(%struct.GENERAL_NAME_st** noundef %tgt, %struct.X509_name_st* noundef %src) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.GENERAL_NAME_st** %tgt, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.GENERAL_NAME_st* @GENERAL_NAME_new() #6
  %cmp3 = icmp eq %struct.GENERAL_NAME_st* %call, null
  br i1 %cmp3, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call, i64 0, i32 0
  store i32 4, i32* %type, align 8, !tbaa !15
  %cmp7 = icmp eq %struct.X509_name_st* %src, null
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %call10 = tail call %struct.X509_name_st* @X509_NAME_new() #6
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call, i64 0, i32 1
  %directoryName = bitcast %union.anon* %d to %struct.X509_name_st**
  store %struct.X509_name_st* %call10, %struct.X509_name_st** %directoryName, align 8, !tbaa !18
  %cmp11 = icmp eq %struct.X509_name_st* %call10, null
  br i1 %cmp11, label %err, label %if.end20

if.else:                                          ; preds = %if.end6
  %d15 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call, i64 0, i32 1
  %directoryName16 = bitcast %union.anon* %d15 to %struct.X509_name_st**
  %call17 = tail call i32 @X509_NAME_set(%struct.X509_name_st** noundef nonnull %directoryName16, %struct.X509_name_st* noundef nonnull %src) #6
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.else, %if.then9
  %0 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %tgt, align 8, !tbaa !19
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %0) #6
  store %struct.GENERAL_NAME_st* %call, %struct.GENERAL_NAME_st** %tgt, align 8, !tbaa !19
  br label %cleanup

err:                                              ; preds = %if.else, %if.then9, %if.end
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end20
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end20 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_set1_recipient(%struct.ossl_cmp_pkiheader_st* noundef %hdr, %struct.X509_name_st* noundef %nm) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkiheader_st* %hdr, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %recipient = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 2
  %call = tail call fastcc i32 @set1_general_name(%struct.GENERAL_NAME_st** noundef nonnull %recipient, %struct.X509_name_st* noundef %nm) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_update_messageTime(%struct.ossl_cmp_pkiheader_st* noundef %hdr) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkiheader_st* %hdr, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %messageTime = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 3
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %messageTime, align 8, !tbaa !20
  %cmp3 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %call = tail call %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_new() #6
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %messageTime, align 8, !tbaa !20
  %cmp6 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp6, label %return, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %1 = phi %struct.asn1_string_st* [ %call, %land.lhs.true ], [ %0, %if.end ]
  %call11 = tail call i64 @time(i64* noundef null) #6
  %call12 = tail call %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_set(%struct.asn1_string_st* noundef nonnull %1, i64 noundef %call11) #6
  %cmp13 = icmp ne %struct.asn1_string_st* %call12, null
  %conv14 = zext i1 %cmp13 to i32
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %if.end9
  %retval.0 = phi i32 [ %conv14, %if.end9 ], [ 0, %entry ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_new() local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_set1_senderKID(%struct.ossl_cmp_pkiheader_st* noundef %hdr, %struct.asn1_string_st* noundef %senderKID) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkiheader_st* %hdr, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %senderKID3 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 5
  %call = tail call i32 @ossl_cmp_asn1_octet_string_set1(%struct.asn1_string_st** noundef nonnull %senderKID3, %struct.asn1_string_st* noundef %senderKID) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ossl_cmp_asn1_octet_string_set1(%struct.asn1_string_st** noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_push0_freeText(%struct.ossl_cmp_pkiheader_st* noundef %hdr, %struct.asn1_string_st* noundef %text) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_pkiheader_st* %hdr, null
  %cmp1 = icmp ne %struct.asn1_string_st* %text, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %return

if.end:                                           ; preds = %entry
  %freeText = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 10
  %1 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %freeText, align 8, !tbaa !21
  %cmp3 = icmp eq %struct.stack_st_ASN1_UTF8STRING* %1, null
  br i1 %cmp3, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %2 = bitcast %struct.stack_st_ASN1_UTF8STRING** %freeText to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %2, align 8, !tbaa !21
  %cmp5 = icmp eq %struct.stack_st* %call, null
  %3 = bitcast %struct.stack_st* %call to %struct.stack_st_ASN1_UTF8STRING*
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %4 = phi %struct.stack_st_ASN1_UTF8STRING* [ %3, %land.lhs.true ], [ %1, %if.end ]
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %4) #8
  %5 = bitcast %struct.asn1_string_st* %text to i8*
  %call11 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call9, i8* noundef nonnull %5) #6
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %if.end7
  %retval.0 = phi i32 [ %call11, %if.end7 ], [ 0, %entry ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_push1_freeText(%struct.ossl_cmp_pkiheader_st* noundef %hdr, %struct.asn1_string_st* noundef readonly %text) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_pkiheader_st* %hdr, null
  %cmp1 = icmp ne %struct.asn1_string_st* %text, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %return

if.end:                                           ; preds = %entry
  %freeText = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 10
  %1 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %freeText, align 8, !tbaa !21
  %cmp3 = icmp eq %struct.stack_st_ASN1_UTF8STRING* %1, null
  br i1 %cmp3, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %2 = bitcast %struct.stack_st_ASN1_UTF8STRING** %freeText to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %2, align 8, !tbaa !21
  %cmp5 = icmp eq %struct.stack_st* %call, null
  %3 = bitcast %struct.stack_st* %call to %struct.stack_st_ASN1_UTF8STRING*
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %4 = phi %struct.stack_st_ASN1_UTF8STRING* [ %3, %land.lhs.true ], [ %1, %if.end ]
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %text, i64 0, i32 2
  %5 = load i8*, i8** %data, align 8, !tbaa !22
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %text, i64 0, i32 0
  %6 = load i32, i32* %length, align 8, !tbaa !25
  %call9 = tail call i32 @ossl_cmp_sk_ASN1_UTF8STRING_push_str(%struct.stack_st_ASN1_UTF8STRING* noundef %4, i8* noundef %5, i32 noundef %6) #6
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %if.end7
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ 0, %entry ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare i32 @ossl_cmp_sk_ASN1_UTF8STRING_push_str(%struct.stack_st_ASN1_UTF8STRING* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_generalInfo_push0_item(%struct.ossl_cmp_pkiheader_st* noundef %hdr, %struct.ossl_cmp_itav_st* noundef %itav) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_pkiheader_st* %hdr, null
  %cmp1 = icmp ne %struct.ossl_cmp_itav_st* %itav, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %return

if.end:                                           ; preds = %entry
  %generalInfo = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 11
  %call = tail call i32 @OSSL_CMP_ITAV_push0_stack_item(%struct.stack_st_OSSL_CMP_ITAV** noundef nonnull %generalInfo, %struct.ossl_cmp_itav_st* noundef nonnull %itav) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @OSSL_CMP_ITAV_push0_stack_item(%struct.stack_st_OSSL_CMP_ITAV** noundef, %struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_generalInfo_push1_items(%struct.ossl_cmp_pkiheader_st* noundef %hdr, %struct.stack_st_OSSL_CMP_ITAV* noundef %itavs) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkiheader_st* %hdr, null
  br i1 %cmp.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %itavs) #8
  %call325 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp426 = icmp sgt i32 %call325, 0
  br i1 %cmp426, label %for.body, label %cleanup

for.cond:                                         ; preds = %if.end12
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp4 = icmp slt i32 %inc, %call3
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !26

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.027 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.027) #6
  %0 = bitcast i8* %call7 to %struct.ossl_cmp_itav_st*
  %call8 = tail call %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_dup(%struct.ossl_cmp_itav_st* noundef %0) #6
  %cmp9 = icmp eq %struct.ossl_cmp_itav_st* %call8, null
  br i1 %cmp9, label %cleanup, label %if.end12

if.end12:                                         ; preds = %for.body
  %call13 = tail call i32 @ossl_cmp_hdr_generalInfo_push0_item(%struct.ossl_cmp_pkiheader_st* noundef nonnull %hdr, %struct.ossl_cmp_itav_st* noundef nonnull %call8) #8
  %tobool.not = icmp eq i32 %call13, 0
  %inc = add nuw nsw i32 %i.027, 1
  br i1 %tobool.not, label %if.then14, label %for.cond

if.then14:                                        ; preds = %if.end12
  tail call void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef nonnull %call8) #6
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.cond, %for.cond.preheader, %entry, %if.then14
  %retval.0 = phi i32 [ 0, %if.then14 ], [ 0, %entry ], [ 1, %for.cond.preheader ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_ITAV* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_dup(%struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_set_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef %hdr) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkiheader_st* %hdr, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32* @ASN1_NULL_new() #6
  %0 = bitcast i32* %call to %struct.asn1_type_st*
  %cmp3 = icmp eq i32* %call, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 310) #6
  %call8 = tail call %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_create(%struct.asn1_object_st* noundef %call7, %struct.asn1_type_st* noundef nonnull %0) #6
  %cmp9 = icmp eq %struct.ossl_cmp_itav_st* %call8, null
  br i1 %cmp9, label %err, label %if.end12

if.end12:                                         ; preds = %if.end6
  %call13 = tail call i32 @ossl_cmp_hdr_generalInfo_push0_item(%struct.ossl_cmp_pkiheader_st* noundef nonnull %hdr, %struct.ossl_cmp_itav_st* noundef nonnull %call8) #8
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end12, %if.end6
  tail call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef nonnull %0) #6
  tail call void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef %call8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end12 ]
  ret i32 %retval.0
}

declare i32* @ASN1_NULL_new() local_unnamed_addr #1

declare %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_create(%struct.asn1_object_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_has_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef readonly %hdr) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkiheader_st* %hdr, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %generalInfo = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 11
  %0 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %generalInfo, align 8, !tbaa !28
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %0) #8
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp426 = icmp sgt i32 %call3, 0
  br i1 %cmp426, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end, %for.inc
  %i.027 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  %1 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %generalInfo, align 8, !tbaa !28
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %1) #8
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call7, i32 noundef %i.027) #6
  %cmp9.not = icmp eq i8* %call8, null
  br i1 %cmp9.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %infoType = bitcast i8* %call8 to %struct.asn1_object_st**
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %infoType, align 8, !tbaa !29
  %call11 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #6
  %cmp12 = icmp eq i32 %call11, 310
  br i1 %cmp12, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %call3
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !31

cleanup:                                          ; preds = %land.lhs.true, %for.inc, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %land.lhs.true ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_set_transactionID(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_pkiheader_st* noundef %hdr) local_unnamed_addr #0 {
entry:
  %transactionID = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 38
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID, align 8, !tbaa !32
  %cmp = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @set_random(%struct.asn1_string_st** noundef nonnull %transactionID, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID, align 8, !tbaa !32
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !22
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !25
  %conv = sext i32 %3 to i64
  %call5 = tail call i8* @OPENSSL_buf2hexstr(i8* noundef %2, i64 noundef %conv) #6
  %cmp6.not = icmp eq i8* %call5, null
  br i1 %cmp6.not, label %cleanup.thread, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_cmp_hdr_set_transactionID, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %call5) #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end, %if.then8
  tail call void @CRYPTO_free(i8* noundef %call5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 284) #6
  %.pre = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID, align 8, !tbaa !32
  br label %if.end11

if.end11:                                         ; preds = %cleanup.thread, %entry
  %4 = phi %struct.asn1_string_st* [ %.pre, %cleanup.thread ], [ %0, %entry ]
  %transactionID12 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 7
  %call14 = tail call i32 @ossl_cmp_asn1_octet_string_set1(%struct.asn1_string_st** noundef nonnull %transactionID12, %struct.asn1_string_st* noundef %4) #6
  br label %return

return:                                           ; preds = %if.then, %if.end11
  %retval.1 = phi i32 [ %call14, %if.end11 ], [ 0, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_random(%struct.asn1_string_st** noundef %tgt, %struct.ossl_cmp_ctx_st* nocapture noundef readonly %ctx) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 142) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !34
  %call1 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef nonnull %call, i64 noundef 16, i32 noundef 0) #6
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.set_random, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 110, i8* noundef null) #6
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %call3 = tail call i32 @ossl_cmp_asn1_octet_string_set1_bytes(%struct.asn1_string_st** noundef %tgt, i8* noundef nonnull %call, i32 noundef 16) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %res.0 = phi i32 [ 0, %if.then ], [ %call3, %if.else ]
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 149) #6
  ret i32 %res.0
}

declare i8* @OPENSSL_buf2hexstr(i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_print_log(i32 noundef, %struct.ossl_cmp_ctx_st* noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_hdr_init(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_pkiheader_st* noundef %hdr) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp ne %struct.ossl_cmp_pkiheader_st* %hdr, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ossl_cmp_hdr_set_pvno(%struct.ossl_cmp_pkiheader_st* noundef nonnull %hdr, i32 noundef 2) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %cert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 27
  %1 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !35
  %cmp5.not = icmp eq %struct.x509_st* %1, null
  br i1 %cmp5.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end4
  %call7 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %1) #6
  br label %cond.end13

cond.false:                                       ; preds = %if.end4
  %oldCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 58
  %2 = load %struct.x509_st*, %struct.x509_st** %oldCert, align 8, !tbaa !36
  %cmp8.not = icmp eq %struct.x509_st* %2, null
  br i1 %cmp8.not, label %cond.false12, label %cond.true9

cond.true9:                                       ; preds = %cond.false
  %call11 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %2) #6
  br label %cond.end13

cond.false12:                                     ; preds = %cond.false
  %subjectName = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 50
  %3 = load %struct.X509_name_st*, %struct.X509_name_st** %subjectName, align 8, !tbaa !37
  br label %cond.end13

cond.end13:                                       ; preds = %cond.true9, %cond.false12, %cond.true
  %cond14 = phi %struct.X509_name_st* [ %call7, %cond.true ], [ %call11, %cond.true9 ], [ %3, %cond.false12 ]
  %call15 = tail call i32 @ossl_cmp_hdr_set1_sender(%struct.ossl_cmp_pkiheader_st* noundef nonnull %hdr, %struct.X509_name_st* noundef %cond14) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %cond.end13
  %recipient = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 36
  %4 = load %struct.X509_name_st*, %struct.X509_name_st** %recipient, align 8, !tbaa !38
  %cmp19.not = icmp eq %struct.X509_name_st* %4, null
  br i1 %cmp19.not, label %if.else, label %if.end46

if.else:                                          ; preds = %if.end18
  %srvCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 19
  %5 = load %struct.x509_st*, %struct.x509_st** %srvCert, align 8, !tbaa !39
  %cmp22.not = icmp eq %struct.x509_st* %5, null
  br i1 %cmp22.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %if.else
  %call25 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %5) #6
  br label %if.end46

if.else26:                                        ; preds = %if.else
  %issuer = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 48
  %6 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !40
  %cmp27.not = icmp eq %struct.X509_name_st* %6, null
  br i1 %cmp27.not, label %if.else30, label %if.end46

if.else30:                                        ; preds = %if.else26
  %oldCert31 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 58
  %7 = load %struct.x509_st*, %struct.x509_st** %oldCert31, align 8, !tbaa !36
  %cmp32.not = icmp eq %struct.x509_st* %7, null
  br i1 %cmp32.not, label %if.else36, label %if.then33

if.then33:                                        ; preds = %if.else30
  %call35 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef nonnull %7) #6
  br label %if.end46

if.else36:                                        ; preds = %if.else30
  %8 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !35
  %cmp38.not = icmp eq %struct.x509_st* %8, null
  br i1 %cmp38.not, label %if.end46, label %if.then39

if.then39:                                        ; preds = %if.else36
  %call41 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef nonnull %8) #6
  br label %if.end46

if.end46:                                         ; preds = %if.else26, %if.end18, %if.then23, %if.then33, %if.then39, %if.else36
  %rcp.0 = phi %struct.X509_name_st* [ %call25, %if.then23 ], [ %call35, %if.then33 ], [ %call41, %if.then39 ], [ null, %if.else36 ], [ %4, %if.end18 ], [ %6, %if.else26 ]
  %call47 = tail call i32 @ossl_cmp_hdr_set1_recipient(%struct.ossl_cmp_pkiheader_st* noundef nonnull %hdr, %struct.X509_name_st* noundef %rcp.0) #8
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %cleanup, label %if.end50

if.end50:                                         ; preds = %if.end46
  %call51 = tail call i32 @ossl_cmp_hdr_update_messageTime(%struct.ossl_cmp_pkiheader_st* noundef nonnull %hdr) #8
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %cleanup, label %if.end54

if.end54:                                         ; preds = %if.end50
  %recipNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 40
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %recipNonce, align 8, !tbaa !41
  %cmp55.not = icmp eq %struct.asn1_string_st* %9, null
  br i1 %cmp55.not, label %if.end61, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end54
  %recipNonce56 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 9
  %call58 = tail call i32 @ossl_cmp_asn1_octet_string_set1(%struct.asn1_string_st** noundef nonnull %recipNonce56, %struct.asn1_string_st* noundef nonnull %9) #6
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup, label %if.end61

if.end61:                                         ; preds = %land.lhs.true, %if.end54
  %call62 = tail call i32 @ossl_cmp_hdr_set_transactionID(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_pkiheader_st* noundef nonnull %hdr) #8
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %cleanup, label %if.end65

if.end65:                                         ; preds = %if.end61
  %senderNonce = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %hdr, i64 0, i32 8
  %call66 = tail call fastcc i32 @set_random(%struct.asn1_string_st** noundef nonnull %senderNonce, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #8
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup, label %if.end69

if.end69:                                         ; preds = %if.end65
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderNonce, align 8, !tbaa !13
  %call71 = tail call i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.asn1_string_st* noundef %10) #6
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %cleanup, label %if.end74

if.end74:                                         ; preds = %if.end69
  %freeText = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 41
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %freeText, align 8, !tbaa !42
  %cmp75.not = icmp eq %struct.asn1_string_st* %11, null
  br i1 %cmp75.not, label %if.end81, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %if.end74
  %call78 = tail call i32 @ossl_cmp_hdr_push1_freeText(%struct.ossl_cmp_pkiheader_st* noundef nonnull %hdr, %struct.asn1_string_st* noundef nonnull %11) #8
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %cleanup, label %if.end81

if.end81:                                         ; preds = %land.lhs.true76, %if.end74
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true76, %if.end69, %if.end65, %if.end61, %land.lhs.true, %if.end50, %if.end46, %cond.end13, %if.end, %entry, %if.end81
  %retval.0 = phi i32 [ 1, %if.end81 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %cond.end13 ], [ 0, %if.end46 ], [ 0, %if.end50 ], [ 0, %land.lhs.true ], [ 0, %if.end61 ], [ 0, %if.end65 ], [ 0, %if.end69 ], [ 0, %land.lhs.true76 ]
  ret i32 %retval.0
}

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #1

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.ossl_cmp_ctx_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.GENERAL_NAME_st* @GENERAL_NAME_new() local_unnamed_addr #1

declare %struct.X509_name_st* @X509_NAME_new() local_unnamed_addr #1

declare i32 @X509_NAME_set(%struct.X509_name_st** noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cmp_asn1_octet_string_set1_bytes(%struct.asn1_string_st** noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_cmp_pkiheader_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 32}
!10 = !{!11, !6, i64 0}
!11 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!12 = !{!5, !6, i64 56}
!13 = !{!5, !6, i64 64}
!14 = !{!5, !6, i64 72}
!15 = !{!16, !17, i64 0}
!16 = !{!"GENERAL_NAME_st", !17, i64 0, !7, i64 8}
!17 = !{!"int", !7, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!5, !6, i64 24}
!21 = !{!5, !6, i64 80}
!22 = !{!23, !6, i64 8}
!23 = !{!"asn1_string_st", !17, i64 0, !17, i64 4, !6, i64 8, !24, i64 16}
!24 = !{!"long", !7, i64 0}
!25 = !{!23, !17, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!5, !6, i64 88}
!29 = !{!30, !6, i64 0}
!30 = !{!"ossl_cmp_itav_st", !6, i64 0, !7, i64 8}
!31 = distinct !{!31, !27}
!32 = !{!33, !6, i64 280}
!33 = !{!"ossl_cmp_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !17, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !17, i64 72, !6, i64 80, !6, i64 88, !17, i64 96, !17, i64 100, !17, i64 104, !24, i64 112, !6, i64 120, !6, i64 128, !17, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !17, i64 184, !17, i64 188, !17, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !24, i64 240, !6, i64 248, !17, i64 256, !17, i64 260, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !17, i64 320, !17, i64 324, !6, i64 328, !6, i64 336, !17, i64 344, !6, i64 352, !17, i64 360, !6, i64 368, !6, i64 376, !17, i64 384, !17, i64 388, !6, i64 392, !6, i64 400, !17, i64 408, !17, i64 412, !6, i64 416, !6, i64 424, !17, i64 432, !6, i64 440, !17, i64 448, !6, i64 456, !17, i64 464, !6, i64 472, !6, i64 480, !6, i64 488, !6, i64 496, !6, i64 504, !6, i64 512}
!34 = !{!33, !6, i64 0}
!35 = !{!33, !6, i64 200}
!36 = !{!33, !6, i64 416}
!37 = !{!33, !6, i64 368}
!38 = !{!33, !6, i64 264}
!39 = !{!33, !6, i64 144}
!40 = !{!33, !6, i64 352}
!41 = !{!33, !6, i64 296}
!42 = !{!33, !6, i64 304}
