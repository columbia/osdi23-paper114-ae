; ModuleID = 'crypto/x509/x509_req.c'
source_filename = "crypto/x509/x509_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.stack_st_X509_EXTENSION = type opaque
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
%struct.evp_pkey_st = type opaque
%struct.evp_md_st = type opaque
%struct.x509_attributes_st = type opaque
%struct.stack_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_VALUE_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/x509_req.c\00", align 1
@__func__.X509_to_X509_REQ = private unnamed_addr constant [17 x i8] c"X509_to_X509_REQ\00", align 1
@__func__.X509_REQ_check_private_key = private unnamed_addr constant [27 x i8] c"X509_REQ_check_private_key\00", align 1
@ext_nids = internal unnamed_addr global i32* getelementptr inbounds ([3 x i32], [3 x i32]* @ext_nid_list, i64 0, i64 0), align 8
@ext_nid_list = internal global [3 x i32] [i32 172, i32 171, i32 0], align 4

; Function Attrs: noinline nounwind uwtable
define %struct.X509_req_st* @X509_to_X509_REQ(%struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %libctx = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 25
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %propq = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 26
  %1 = load i8*, i8** %propq, align 8, !tbaa !18
  %call = tail call %struct.X509_req_st* @X509_REQ_new_ex(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %1) #7
  %cmp = icmp eq %struct.X509_req_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_to_X509_REQ, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %call, i64 0, i32 0, i32 1
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !19
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 0
  store i32 1, i32* %length, align 8, !tbaa !21
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 38) #7
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !19
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 2
  store i8* %call1, i8** %data, align 8, !tbaa !22
  %cmp5 = icmp eq i8* %call1, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  store i8 0, i8* %call1, align 1, !tbaa !23
  %call10 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %x) #7
  %call11 = tail call i32 @X509_REQ_set_subject_name(%struct.X509_req_st* noundef nonnull %call, %struct.X509_name_st* noundef %call10) #7
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end7
  %call14 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef nonnull %x) #7
  %cmp15 = icmp eq %struct.evp_pkey_st* %call14, null
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @X509_REQ_set_pubkey(%struct.X509_req_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %call14) #7
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end17
  %cmp22.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %if.end21
  %call24 = tail call i32 @X509_REQ_sign(%struct.X509_req_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %pkey, %struct.evp_md_st* noundef %md) #7
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %cleanup

err:                                              ; preds = %if.then23, %if.end17, %if.end13, %if.end7, %if.end, %if.then
  tail call void @X509_REQ_free(%struct.X509_req_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then23, %err
  %retval.0 = phi %struct.X509_req_st* [ null, %err ], [ %call, %if.then23 ], [ %call, %if.end21 ]
  ret %struct.X509_req_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.X509_req_st* @X509_REQ_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_REQ_set_subject_name(%struct.X509_req_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_REQ_set_pubkey(%struct.X509_req_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @X509_REQ_sign(%struct.X509_req_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @X509_REQ_free(%struct.X509_req_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @X509_REQ_get_pubkey(%struct.X509_req_st* noundef readonly %req) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_req_st* %req, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %pubkey = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 3
  %0 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %pubkey, align 8, !tbaa !24
  %call = tail call %struct.evp_pkey_st* @X509_PUBKEY_get(%struct.X509_pubkey_st* noundef %0) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_pkey_st* [ %call, %if.end ], [ null, %entry ]
  ret %struct.evp_pkey_st* %retval.0
}

declare %struct.evp_pkey_st* @X509_PUBKEY_get(%struct.X509_pubkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef readonly %req) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_req_st* %req, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %pubkey = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 3
  %0 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %pubkey, align 8, !tbaa !24
  %call = tail call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef %0) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_pkey_st* [ %call, %if.end ], [ null, %entry ]
  ret %struct.evp_pkey_st* %retval.0
}

declare %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_pubkey_st* @X509_REQ_get_X509_PUBKEY(%struct.X509_req_st* nocapture noundef readonly %req) local_unnamed_addr #3 {
entry:
  %pubkey = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 3
  %0 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %pubkey, align 8, !tbaa !24
  ret %struct.X509_pubkey_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_check_private_key(%struct.X509_req_st* noundef %x, %struct.evp_pkey_st* noundef %k) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @X509_REQ_get_pubkey(%struct.X509_req_st* noundef %x) #8
  %call1 = tail call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %call, %struct.evp_pkey_st* noundef %k) #7
  switch i32 %call1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
    i32 -1, label %sw.bb3
    i32 -2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.X509_REQ_check_private_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 116, i8* noundef null) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.X509_REQ_check_private_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 115, i8* noundef null) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.X509_REQ_check_private_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 117, i8* noundef null) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %entry, %sw.bb3, %sw.bb2, %sw.bb
  %ok.0 = phi i32 [ 0, %entry ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 1, %sw.bb ]
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #7
  ret i32 %ok.0
}

declare i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @X509_REQ_extension_nid(i32 noundef %req_nid) local_unnamed_addr #4 {
entry:
  %0 = load i32*, i32** @ext_nids, align 8, !tbaa !26
  %1 = load i32, i32* %0, align 4, !tbaa !27
  %cmp9 = icmp eq i32 %1, 0
  br i1 %cmp9, label %cleanup, label %if.else

for.cond:                                         ; preds = %if.else
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !27
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %3 = phi i32 [ %2, %for.cond ], [ %1, %entry ]
  %cmp1 = icmp eq i32 %3, %req_nid
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br i1 %cmp1, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.cond, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32* @X509_REQ_get_extension_nids() local_unnamed_addr #3 {
entry:
  %0 = load i32*, i32** @ext_nids, align 8, !tbaa !26
  ret i32* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_REQ_set_extension_nids(i32* noundef %nids) local_unnamed_addr #5 {
entry:
  store i32* %nids, i32** @ext_nids, align 8, !tbaa !26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_EXTENSION* @X509_REQ_get_extensions(%struct.X509_req_st* noundef readonly %req) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %cmp = icmp ne %struct.X509_req_st* %req, null
  %1 = load i32*, i32** @ext_nids, align 8
  %tobool = icmp ne i32* %1, null
  %or.cond = select i1 %cmp, i1 %tobool, i1 false
  br i1 %or.cond, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = load i32, i32* %1, align 4, !tbaa !27
  %cmp1.not37 = icmp eq i32 %2, 0
  br i1 %cmp1.not37, label %if.then8, label %for.body

for.cond:                                         ; preds = %for.body
  %3 = load i32, i32* %incdec.ptr, align 4, !tbaa !27
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.then8, label %for.body, !llvm.loop !28

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %4 = phi i32 [ %3, %for.cond ], [ %2, %for.cond.preheader ]
  %pnid.038 = phi i32* [ %incdec.ptr, %for.cond ], [ %1, %for.cond.preheader ]
  %call = tail call i32 @X509_REQ_get_attr_by_NID(%struct.X509_req_st* noundef nonnull %req, i32 noundef %4, i32 noundef -1) #8
  %cmp2 = icmp eq i32 %call, -1
  %incdec.ptr = getelementptr inbounds i32, i32* %pnid.038, i64 1
  br i1 %cmp2, label %for.cond, label %for.end

for.end:                                          ; preds = %for.body
  %call5 = tail call %struct.x509_attributes_st* @X509_REQ_get_attr(%struct.X509_req_st* noundef nonnull %req, i32 noundef %call) #8
  %call6 = tail call %struct.asn1_type_st* @X509_ATTRIBUTE_get0_type(%struct.x509_attributes_st* noundef %call5, i32 noundef 0) #7
  %cmp7 = icmp eq %struct.asn1_type_st* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %for.cond, %for.cond.preheader, %for.end
  %call9 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %5 = bitcast %struct.stack_st* %call9 to %struct.stack_st_X509_EXTENSION*
  br label %cleanup

if.end10:                                         ; preds = %for.end
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call6, i64 0, i32 0
  %6 = load i32, i32* %type, align 8, !tbaa !30
  %cmp11.not = icmp eq i32 %6, 16
  br i1 %cmp11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end10
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call6, i64 0, i32 1
  %sequence = bitcast %union.anon* %value to %struct.asn1_string_st**
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sequence, align 8, !tbaa !23
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 2
  %8 = load i8*, i8** %data, align 8, !tbaa !22
  store i8* %8, i8** %p, align 8, !tbaa !26
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 0
  %9 = load i32, i32* %length, align 8, !tbaa !21
  %conv = sext i32 %9 to i64
  %call16 = tail call %struct.ASN1_ITEM_st* @X509_EXTENSIONS_it() #7
  %call17 = call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv, %struct.ASN1_ITEM_st* noundef %call16) #7
  %10 = bitcast %struct.ASN1_VALUE_st* %call17 to %struct.stack_st_X509_EXTENSION*
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry, %if.end13, %if.then8
  %retval.0 = phi %struct.stack_st_X509_EXTENSION* [ %5, %if.then8 ], [ %10, %if.end13 ], [ null, %entry ], [ null, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret %struct.stack_st_X509_EXTENSION* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_get_attr_by_NID(%struct.X509_req_st* nocapture noundef readonly %req, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 4
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !32
  %call = tail call i32 @X509at_get_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %nid, i32 noundef %lastpos) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @X509_REQ_get_attr(%struct.X509_req_st* nocapture noundef readonly %req, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 4
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !32
  %call = tail call %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %loc) #7
  ret %struct.x509_attributes_st* %call
}

declare %struct.asn1_type_st* @X509_ATTRIBUTE_get0_type(%struct.x509_attributes_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @X509_EXTENSIONS_it() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_add_extensions_nid(%struct.X509_req_st* noundef %req, %struct.stack_st_X509_EXTENSION* noundef %exts, i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %ext = alloca i8*, align 8
  %0 = bitcast i8** %ext to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %ext, align 8, !tbaa !26
  %1 = bitcast %struct.stack_st_X509_EXTENSION* %exts to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @X509_EXTENSIONS_it() #7
  %call1 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %1, i8** noundef nonnull %ext, %struct.ASN1_ITEM_st* noundef %call) #7
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %ext, align 8, !tbaa !26
  %call2 = call i32 @X509_REQ_add1_attr_by_NID(%struct.X509_req_st* noundef %req, i32 noundef %nid, i32 noundef 16, i8* noundef %2, i32 noundef %call1) #8
  %3 = load i8*, i8** %ext, align 8, !tbaa !26
  call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 182) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_add1_attr_by_NID(%struct.X509_req_st* noundef %req, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 4
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attributes, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #7
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_add_extensions(%struct.X509_req_st* noundef %req, %struct.stack_st_X509_EXTENSION* noundef %exts) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_REQ_add_extensions_nid(%struct.X509_req_st* noundef %req, %struct.stack_st_X509_EXTENSION* noundef %exts, i32 noundef 172) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_get_attr_count(%struct.X509_req_st* nocapture noundef readonly %req) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 4
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !32
  %call = tail call i32 @X509at_get_attr_count(%struct.stack_st_X509_ATTRIBUTE* noundef %0) #7
  ret i32 %call
}

declare i32 @X509at_get_attr_count(%struct.stack_st_X509_ATTRIBUTE* noundef) local_unnamed_addr #2

declare i32 @X509at_get_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_get_attr_by_OBJ(%struct.X509_req_st* nocapture noundef readonly %req, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 4
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !32
  %call = tail call i32 @X509at_get_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef %0, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #7
  ret i32 %call
}

declare i32 @X509at_get_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @X509_REQ_delete_attr(%struct.X509_req_st* nocapture noundef readonly %req, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 4
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !32
  %call = tail call %struct.x509_attributes_st* @X509at_delete_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %loc) #7
  ret %struct.x509_attributes_st* %call
}

declare %struct.x509_attributes_st* @X509at_delete_attr(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_add1_attr(%struct.X509_req_st* noundef %req, %struct.x509_attributes_st* noundef %attr) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 4
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attributes, %struct.x509_attributes_st* noundef %attr) #7
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef, %struct.x509_attributes_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_add1_attr_by_OBJ(%struct.X509_req_st* noundef %req, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 4
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attributes, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #7
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE** noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_add1_attr_by_txt(%struct.X509_req_st* noundef %req, i8* noundef %attrname, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 4
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_txt(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attributes, i8* noundef %attrname, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #7
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_txt(%struct.stack_st_X509_ATTRIBUTE** noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i64 @X509_REQ_get_version(%struct.X509_req_st* nocapture noundef readonly %req) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !33
  %call = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %0) #7
  ret i64 %call
}

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* nocapture noundef readonly %req) local_unnamed_addr #3 {
entry:
  %subject = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 2
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %subject, align 8, !tbaa !34
  ret %struct.X509_name_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @X509_REQ_get0_signature(%struct.X509_req_st* noundef %req, %struct.asn1_string_st** noundef writeonly %psig, %struct.X509_algor_st** noundef writeonly %palg) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.asn1_string_st** %psig, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %signature = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !35
  store %struct.asn1_string_st* %0, %struct.asn1_string_st** %psig, align 8, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq %struct.X509_algor_st** %palg, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %sig_alg = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 1
  store %struct.X509_algor_st* %sig_alg, %struct.X509_algor_st** %palg, align 8, !tbaa !26
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @X509_REQ_set0_signature(%struct.X509_req_st* nocapture noundef %req, %struct.asn1_string_st* noundef %psig) local_unnamed_addr #0 {
entry:
  %signature = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !35
  %tobool.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef nonnull %0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.asn1_string_st* %psig, %struct.asn1_string_st** %signature, align 8, !tbaa !35
  ret void
}

declare void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_set1_signature_algo(%struct.X509_req_st* noundef %req, %struct.X509_algor_st* noundef %palg) local_unnamed_addr #0 {
entry:
  %sig_alg = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 1
  %call = tail call i32 @X509_ALGOR_copy(%struct.X509_algor_st* noundef nonnull %sig_alg, %struct.X509_algor_st* noundef %palg) #7
  ret i32 %call
}

declare i32 @X509_ALGOR_copy(%struct.X509_algor_st* noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_get_signature_nid(%struct.X509_req_st* nocapture noundef readonly %req) local_unnamed_addr #0 {
entry:
  %algorithm = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 1, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !36
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #7
  ret i32 %call
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_re_X509_REQ_tbs(%struct.X509_req_st* noundef %req, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %req_info = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0
  %modified = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %req, i64 0, i32 0, i32 0, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !37
  %call = tail call i32 @i2d_X509_REQ_INFO(%struct.X509_req_info_st* noundef %req_info, i8** noundef %pp) #7
  ret i32 %call
}

declare i32 @i2d_X509_REQ_INFO(%struct.X509_req_info_st* noundef, i8** noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 368}
!5 = !{!"x509_st", !6, i64 0, !13, i64 136, !10, i64 152, !16, i64 176, !8, i64 192, !17, i64 200, !12, i64 216, !12, i64 224, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !8, i64 312, !7, i64 336, !7, i64 344, !11, i64 352, !7, i64 360, !7, i64 368, !7, i64 376}
!6 = !{!"x509_cinf_st", !7, i64 0, !10, i64 8, !13, i64 32, !7, i64 48, !14, i64 56, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !15, i64 112}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !7, i64 8, !12, i64 16}
!11 = !{!"int", !8, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"X509_algor_st", !7, i64 0, !7, i64 8}
!14 = !{!"X509_val_st", !7, i64 0, !7, i64 8}
!15 = !{!"ASN1_ENCODING_st", !7, i64 0, !12, i64 8, !11, i64 16}
!16 = !{!"x509_sig_info_st", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!17 = !{!"crypto_ex_data_st", !7, i64 0, !7, i64 8}
!18 = !{!5, !7, i64 376}
!19 = !{!20, !7, i64 24}
!20 = !{!"X509_req_info_st", !15, i64 0, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!21 = !{!10, !11, i64 0}
!22 = !{!10, !7, i64 8}
!23 = !{!8, !8, i64 0}
!24 = !{!25, !7, i64 40}
!25 = !{!"X509_req_st", !20, i64 0, !13, i64 56, !7, i64 72, !8, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112}
!26 = !{!7, !7, i64 0}
!27 = !{!11, !11, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!31, !11, i64 0}
!31 = !{!"asn1_type_st", !11, i64 0, !8, i64 8}
!32 = !{!25, !7, i64 48}
!33 = !{!25, !7, i64 24}
!34 = !{!25, !7, i64 32}
!35 = !{!25, !7, i64 72}
!36 = !{!25, !7, i64 56}
!37 = !{!25, !11, i64 16}
