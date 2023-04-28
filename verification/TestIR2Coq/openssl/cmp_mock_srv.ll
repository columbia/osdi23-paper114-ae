; ModuleID = 'apps/lib/cmp_mock_srv.c'
source_filename = "apps/lib/cmp_mock_srv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.ossl_cmp_srv_ctx_st = type opaque
%struct.x509_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st = type opaque
%struct.ossl_cmp_pkisi_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.mock_srv_ctx = type { %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.ossl_cmp_pkisi_st*, i32, %struct.ossl_cmp_msg_st*, i32, i32, i32, i32 }
%struct.ossl_cmp_msg_st = type opaque
%struct.ossl_crmf_msg_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_name_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.ossl_crmf_certid_st = type opaque
%struct.evp_md_st = type opaque
%struct.ossl_cmp_itav_st = type opaque

@.str = private unnamed_addr constant [24 x i8] c"apps/lib/cmp_mock_srv.c\00", align 1
@__func__.ossl_cmp_mock_srv_set1_certOut = private unnamed_addr constant [31 x i8] c"ossl_cmp_mock_srv_set1_certOut\00", align 1
@__func__.ossl_cmp_mock_srv_set1_chainOut = private unnamed_addr constant [32 x i8] c"ossl_cmp_mock_srv_set1_chainOut\00", align 1
@__func__.ossl_cmp_mock_srv_set1_caPubsOut = private unnamed_addr constant [33 x i8] c"ossl_cmp_mock_srv_set1_caPubsOut\00", align 1
@__func__.ossl_cmp_mock_srv_set_statusInfo = private unnamed_addr constant [33 x i8] c"ossl_cmp_mock_srv_set_statusInfo\00", align 1
@__func__.ossl_cmp_mock_srv_set_send_error = private unnamed_addr constant [33 x i8] c"ossl_cmp_mock_srv_set_send_error\00", align 1
@__func__.ossl_cmp_mock_srv_set_pollCount = private unnamed_addr constant [32 x i8] c"ossl_cmp_mock_srv_set_pollCount\00", align 1
@__func__.ossl_cmp_mock_srv_set_checkAfterTime = private unnamed_addr constant [37 x i8] c"ossl_cmp_mock_srv_set_checkAfterTime\00", align 1
@__func__.process_cert_request = private unnamed_addr constant [21 x i8] c"process_cert_request\00", align 1
@__func__.process_rr = private unnamed_addr constant [11 x i8] c"process_rr\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"wrong certificate to revoke\00", align 1
@__func__.process_genm = private unnamed_addr constant [13 x i8] c"process_genm\00", align 1
@__func__.process_error = private unnamed_addr constant [14 x i8] c"process_error\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"mock server received error:\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"pkiStatusInfo absent\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"pkiStatusInfo: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"errorCode absent\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"errorCode: %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"errorDetails absent\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"errorDetails: \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.process_certConf = private unnamed_addr constant [17 x i8] c"process_certConf\00", align 1
@__func__.process_pollReq = private unnamed_addr constant [16 x i8] c"process_pollReq\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ossl_cmp_mock_srv_set1_certOut(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_cmp_mock_srv_set1_certOut, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.x509_st* %cert, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %cert) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %certOut = bitcast i8* %call to %struct.x509_st**
  %0 = load %struct.x509_st*, %struct.x509_st** %certOut, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %0) #4
  store %struct.x509_st* %cert, %struct.x509_st** %certOut, align 8, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then3 ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_new() local_unnamed_addr #2

declare dso_local void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_free(%struct.x509_st* noundef) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ossl_cmp_mock_srv_set1_chainOut(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.stack_st_X509* noundef %chain) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_cmp_mock_srv_set1_chainOut, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.stack_st_X509* %chain, null
  br i1 %cmp1.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %chain) #4
  %cmp3 = icmp eq %struct.stack_st_X509* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %chain_copy.0 = phi %struct.stack_st_X509* [ %call2, %land.lhs.true ], [ null, %if.end ]
  %chainOut = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %chainOut to %struct.stack_st_X509**
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %0, align 8, !tbaa !9
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %1) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call6, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #4
  store %struct.stack_st_X509* %chain_copy.0, %struct.stack_st_X509** %0, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end5 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare dso_local %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ossl_cmp_mock_srv_set1_caPubsOut(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.stack_st_X509* noundef %caPubs) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_cmp_mock_srv_set1_caPubsOut, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.stack_st_X509* %caPubs, null
  br i1 %cmp1.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %caPubs) #4
  %cmp3 = icmp eq %struct.stack_st_X509* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %caPubs_copy.0 = phi %struct.stack_st_X509* [ %call2, %land.lhs.true ], [ null, %if.end ]
  %caPubsOut = getelementptr inbounds i8, i8* %call, i64 16
  %0 = bitcast i8* %caPubsOut to %struct.stack_st_X509**
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %0, align 8, !tbaa !10
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %1) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call6, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #4
  store %struct.stack_st_X509* %caPubs_copy.0, %struct.stack_st_X509** %0, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end5 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ossl_cmp_mock_srv_set_statusInfo(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, i32 noundef %status, i32 noundef %fail_info, i8* noundef %text) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_cmp_mock_srv_set_statusInfo, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef %status, i32 noundef %fail_info, i8* noundef %text) #4
  %cmp2 = icmp eq %struct.ossl_cmp_pkisi_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %statusOut = getelementptr inbounds i8, i8* %call, i64 24
  %0 = bitcast i8* %statusOut to %struct.ossl_cmp_pkisi_st**
  %1 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %0, align 8, !tbaa !11
  tail call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef %1) #4
  store %struct.ossl_cmp_pkisi_st* %call1, %struct.ossl_cmp_pkisi_st** %0, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ossl_cmp_mock_srv_set_send_error(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, i32 noundef %val) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_cmp_mock_srv_set_send_error, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp ne i32 %val, 0
  %conv = zext i1 %cmp1 to i32
  %sendError = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %sendError to i32*
  store i32 %conv, i32* %0, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ossl_cmp_mock_srv_set_pollCount(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, i32 noundef %count) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_cmp_mock_srv_set_pollCount, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %count, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_cmp_mock_srv_set_pollCount, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 100, i8* noundef null) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pollCount = getelementptr inbounds i8, i8* %call, i64 52
  %0 = bitcast i8* %pollCount to i32*
  store i32 %count, i32* %0, align 4, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 1, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ossl_cmp_mock_srv_set_checkAfterTime(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, i32 noundef %sec) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.ossl_cmp_mock_srv_set_checkAfterTime, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %checkAfterTime = getelementptr inbounds i8, i8* %call, i64 60
  %0 = bitcast i8* %checkAfterTime to i32*
  store i32 %sec, i32* %0, align 4, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ossl_cmp_srv_ctx_st* @ossl_cmp_mock_srv_new(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_cmp_srv_ctx_st* @OSSL_CMP_SRV_CTX_new(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %call1 = tail call fastcc %struct.mock_srv_ctx* @mock_srv_ctx_new() #5
  %cmp = icmp ne %struct.ossl_cmp_srv_ctx_st* %call, null
  %cmp2 = icmp ne %struct.mock_srv_ctx* %call1, null
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %entry
  %0 = bitcast %struct.mock_srv_ctx* %call1 to i8*
  %call4 = tail call i32 @OSSL_CMP_SRV_CTX_init(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)* noundef nonnull @process_cert_request, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)* noundef nonnull @process_rr, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)* noundef nonnull @process_genm, void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)* noundef nonnull @process_error, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)* noundef nonnull @process_certConf, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)* noundef nonnull @process_pollReq) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true3, %entry
  tail call fastcc void @mock_srv_ctx_free(%struct.mock_srv_ctx* noundef %call1) #5
  tail call void @OSSL_CMP_SRV_CTX_free(%struct.ossl_cmp_srv_ctx_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true3, %if.end
  %retval.0 = phi %struct.ossl_cmp_srv_ctx_st* [ null, %if.end ], [ %call, %land.lhs.true3 ]
  ret %struct.ossl_cmp_srv_ctx_st* %retval.0
}

declare dso_local %struct.ossl_cmp_srv_ctx_st* @OSSL_CMP_SRV_CTX_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.mock_srv_ctx* @mock_srv_ctx_new() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 64, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 49) #4
  %0 = bitcast i8* %call to %struct.mock_srv_ctx*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_new() #4
  %statusOut = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %statusOut to %struct.ossl_cmp_pkisi_st**
  store %struct.ossl_cmp_pkisi_st* %call1, %struct.ossl_cmp_pkisi_st** %1, align 8, !tbaa !11
  %cmp2 = icmp eq %struct.ossl_cmp_pkisi_st* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %certReqId = getelementptr inbounds i8, i8* %call, i64 48
  %2 = bitcast i8* %certReqId to i32*
  store i32 -1, i32* %2, align 8, !tbaa !15
  br label %cleanup

err:                                              ; preds = %if.end, %entry
  tail call fastcc void @mock_srv_ctx_free(%struct.mock_srv_ctx* noundef %0) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end4
  %retval.0 = phi %struct.mock_srv_ctx* [ null, %err ], [ %0, %if.end4 ]
  ret %struct.mock_srv_ctx* %retval.0
}

declare dso_local i32 @OSSL_CMP_SRV_CTX_init(%struct.ossl_cmp_srv_ctx_st* noundef, i8* noundef, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)* noundef, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)* noundef, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)* noundef, void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)* noundef, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)* noundef, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_cmp_pkisi_st* @process_cert_request(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.ossl_cmp_msg_st* noundef %cert_req, i32 noundef %certReqId, %struct.ossl_crmf_msg_st* noundef %crm, %struct.X509_req_st* nocapture noundef readnone %p10cr, %struct.x509_st** noundef %certOut, %struct.stack_st_X509** noundef %chainOut, %struct.stack_st_X509** noundef %caPubs) #0 {
entry:
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  %cmp = icmp eq i8* %call, null
  %cmp1 = icmp eq %struct.ossl_cmp_msg_st* %cert_req, null
  %or.cond = or i1 %cmp1, %cmp
  %cmp3 = icmp eq %struct.x509_st** %certOut, null
  %or.cond99 = or i1 %cmp3, %or.cond
  %cmp5 = icmp eq %struct.stack_st_X509** %chainOut, null
  %or.cond100 = or i1 %cmp5, %or.cond99
  %cmp7 = icmp eq %struct.stack_st_X509** %caPubs, null
  %or.cond101 = or i1 %cmp7, %or.cond100
  br i1 %or.cond101, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.process_cert_request, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup97

if.end:                                           ; preds = %entry
  %sendError = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %sendError to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !12
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.process_cert_request, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 158, i8* noundef null) #4
  br label %cleanup97

if.end9:                                          ; preds = %if.end
  store %struct.x509_st* null, %struct.x509_st** %certOut, align 8, !tbaa !16
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %chainOut, align 8, !tbaa !16
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %caPubs, align 8, !tbaa !16
  %certReqId10 = getelementptr inbounds i8, i8* %call, i64 48
  %2 = bitcast i8* %certReqId10 to i32*
  store i32 %certReqId, i32* %2, align 8, !tbaa !15
  %pollCount = getelementptr inbounds i8, i8* %call, i64 52
  %3 = bitcast i8* %pollCount to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %cmp11 = icmp sgt i32 %4, 0
  %curr_pollCount = getelementptr inbounds i8, i8* %call, i64 56
  %5 = bitcast i8* %curr_pollCount to i32*
  %6 = load i32, i32* %5, align 8, !tbaa !17
  %cmp12 = icmp eq i32 %6, 0
  %or.cond154 = select i1 %cmp11, i1 %cmp12, i1 false
  br i1 %or.cond154, label %if.then13, label %if.end23

if.then13:                                        ; preds = %if.end9
  %certReq = getelementptr inbounds i8, i8* %call, i64 40
  %7 = bitcast i8* %certReq to %struct.ossl_cmp_msg_st**
  %8 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %7, align 8, !tbaa !18
  %cmp14.not = icmp eq %struct.ossl_cmp_msg_st* %8, null
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then13
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.process_cert_request, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 133, i8* noundef null) #4
  br label %cleanup97

if.end16:                                         ; preds = %if.then13
  %call17 = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef nonnull %cert_req) #4
  store %struct.ossl_cmp_msg_st* %call17, %struct.ossl_cmp_msg_st** %7, align 8, !tbaa !18
  %cmp19 = icmp eq %struct.ossl_cmp_msg_st* %call17, null
  br i1 %cmp19, label %cleanup97, label %if.end21

if.end21:                                         ; preds = %if.end16
  %call22 = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef 3, i32 noundef 0, i8* noundef null) #4
  br label %cleanup97

if.end23:                                         ; preds = %if.end9
  %cmp26.not = icmp slt i32 %6, %4
  br i1 %cmp26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end23
  store i32 0, i32* %5, align 8, !tbaa !17
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end23
  %call30 = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef nonnull %cert_req) #4
  %cmp31 = icmp eq i32 %call30, 7
  %cmp33 = icmp ne %struct.ossl_crmf_msg_st* %crm, null
  %or.cond102 = and i1 %cmp33, %cmp31
  br i1 %or.cond102, label %land.lhs.true34, label %if.end62

land.lhs.true34:                                  ; preds = %if.end29
  %certOut35 = bitcast i8* %call to %struct.x509_st**
  %9 = load %struct.x509_st*, %struct.x509_st** %certOut35, align 8, !tbaa !3
  %cmp36.not = icmp eq %struct.x509_st* %9, null
  br i1 %cmp36.not, label %if.end62, label %if.then37

if.then37:                                        ; preds = %land.lhs.true34
  %call38 = tail call %struct.ossl_crmf_certid_st* @OSSL_CRMF_MSG_get0_regCtrl_oldCertID(%struct.ossl_crmf_msg_st* noundef nonnull %crm) #4
  %10 = load %struct.x509_st*, %struct.x509_st** %certOut35, align 8, !tbaa !3
  %call40 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %10) #4
  %11 = load %struct.x509_st*, %struct.x509_st** %certOut35, align 8, !tbaa !3
  %call42 = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %11) #4
  %cmp43 = icmp eq %struct.ossl_crmf_certid_st* %call38, null
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.then37
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.process_cert_request, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 165, i8* noundef null) #4
  br label %cleanup97

if.end45:                                         ; preds = %if.then37
  %cmp46.not = icmp eq %struct.X509_name_st* %call40, null
  br i1 %cmp46.not, label %if.end52, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %if.end45
  %call48 = tail call %struct.X509_name_st* @OSSL_CRMF_CERTID_get0_issuer(%struct.ossl_crmf_certid_st* noundef nonnull %call38) #4
  %call49 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef nonnull %call40, %struct.X509_name_st* noundef %call48) #4
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %land.lhs.true47
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.process_cert_request, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 189, i8* noundef null) #4
  br label %cleanup97

if.end52:                                         ; preds = %land.lhs.true47, %if.end45
  %cmp53.not = icmp eq %struct.asn1_string_st* %call42, null
  br i1 %cmp53.not, label %if.end62, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.end52
  %call55 = tail call %struct.asn1_string_st* @OSSL_CRMF_CERTID_get0_serialNumber(%struct.ossl_crmf_certid_st* noundef nonnull %call38) #4
  %call56 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef nonnull %call42, %struct.asn1_string_st* noundef %call55) #4
  %cmp57.not = icmp eq i32 %call56, 0
  br i1 %cmp57.not, label %if.end62, label %if.then58

if.then58:                                        ; preds = %land.lhs.true54
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.process_cert_request, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 189, i8* noundef null) #4
  br label %cleanup97

if.end62:                                         ; preds = %if.end29, %land.lhs.true54, %if.end52, %land.lhs.true34
  %certOut63.pre-phi = bitcast i8* %call to %struct.x509_st**
  %12 = load %struct.x509_st*, %struct.x509_st** %certOut63.pre-phi, align 8, !tbaa !3
  %cmp64.not = icmp eq %struct.x509_st* %12, null
  br i1 %cmp64.not, label %if.end70, label %land.lhs.true65

land.lhs.true65:                                  ; preds = %if.end62
  %call67 = tail call %struct.x509_st* @X509_dup(%struct.x509_st* noundef nonnull %12) #4
  store %struct.x509_st* %call67, %struct.x509_st** %certOut, align 8, !tbaa !16
  %cmp68 = icmp eq %struct.x509_st* %call67, null
  br i1 %cmp68, label %err, label %if.end70

if.end70:                                         ; preds = %land.lhs.true65, %if.end62
  %chainOut71 = getelementptr inbounds i8, i8* %call, i64 8
  %13 = bitcast i8* %chainOut71 to %struct.stack_st_X509**
  %14 = load %struct.stack_st_X509*, %struct.stack_st_X509** %13, align 8, !tbaa !9
  %cmp72.not = icmp eq %struct.stack_st_X509* %14, null
  br i1 %cmp72.not, label %if.end78, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %if.end70
  %call75 = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %14) #4
  store %struct.stack_st_X509* %call75, %struct.stack_st_X509** %chainOut, align 8, !tbaa !16
  %cmp76 = icmp eq %struct.stack_st_X509* %call75, null
  br i1 %cmp76, label %err, label %if.end78

if.end78:                                         ; preds = %land.lhs.true73, %if.end70
  %caPubsOut = getelementptr inbounds i8, i8* %call, i64 16
  %15 = bitcast i8* %caPubsOut to %struct.stack_st_X509**
  %16 = load %struct.stack_st_X509*, %struct.stack_st_X509** %15, align 8, !tbaa !10
  %cmp79.not = icmp eq %struct.stack_st_X509* %16, null
  br i1 %cmp79.not, label %if.end85, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %if.end78
  %call82 = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %16) #4
  store %struct.stack_st_X509* %call82, %struct.stack_st_X509** %caPubs, align 8, !tbaa !16
  %cmp83 = icmp eq %struct.stack_st_X509* %call82, null
  br i1 %cmp83, label %err, label %if.end85

if.end85:                                         ; preds = %land.lhs.true80, %if.end78
  %statusOut = getelementptr inbounds i8, i8* %call, i64 24
  %17 = bitcast i8* %statusOut to %struct.ossl_cmp_pkisi_st**
  %18 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %17, align 8, !tbaa !11
  %cmp86.not = icmp eq %struct.ossl_cmp_pkisi_st* %18, null
  br i1 %cmp86.not, label %cleanup97, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %if.end85
  %call89 = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_dup(%struct.ossl_cmp_pkisi_st* noundef nonnull %18) #4
  %cmp90 = icmp eq %struct.ossl_cmp_pkisi_st* %call89, null
  br i1 %cmp90, label %err, label %cleanup97

err:                                              ; preds = %land.lhs.true87, %land.lhs.true80, %land.lhs.true73, %land.lhs.true65
  %19 = load %struct.x509_st*, %struct.x509_st** %certOut, align 8, !tbaa !16
  tail call void @X509_free(%struct.x509_st* noundef %19) #4
  store %struct.x509_st* null, %struct.x509_st** %certOut, align 8, !tbaa !16
  %20 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chainOut, align 8, !tbaa !16
  %call93 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %20) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call93, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #4
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %chainOut, align 8, !tbaa !16
  %21 = load %struct.stack_st_X509*, %struct.stack_st_X509** %caPubs, align 8, !tbaa !16
  %call95 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %21) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call95, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #4
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %caPubs, align 8, !tbaa !16
  br label %cleanup97

cleanup97:                                        ; preds = %if.end85, %land.lhs.true87, %if.then44, %if.then51, %if.then58, %if.end16, %err, %if.end21, %if.then15, %if.then8, %if.then
  %retval.1 = phi %struct.ossl_cmp_pkisi_st* [ null, %if.then ], [ null, %if.then8 ], [ null, %if.then15 ], [ %call22, %if.end21 ], [ null, %err ], [ null, %if.end16 ], [ null, %if.then58 ], [ null, %if.then51 ], [ null, %if.then44 ], [ %call89, %land.lhs.true87 ], [ null, %if.end85 ]
  ret %struct.ossl_cmp_pkisi_st* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_cmp_pkisi_st* @process_rr(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.ossl_cmp_msg_st* noundef readnone %rr, %struct.X509_name_st* noundef %issuer, %struct.asn1_string_st* noundef %serial) #0 {
entry:
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  %cmp = icmp eq i8* %call, null
  %cmp1 = icmp eq %struct.ossl_cmp_msg_st* %rr, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.process_rr, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %sendError = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %sendError to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !12
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false2, label %if.then4

lor.lhs.false2:                                   ; preds = %if.end
  %certOut = bitcast i8* %call to %struct.x509_st**
  %2 = load %struct.x509_st*, %struct.x509_st** %certOut, align 8, !tbaa !3
  %cmp3 = icmp eq %struct.x509_st* %2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false2, %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.process_rr, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 158, i8* noundef null) #4
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false2
  %cmp6 = icmp eq %struct.X509_name_st* %issuer, null
  %cmp8 = icmp eq %struct.asn1_string_st* %serial, null
  %or.cond25 = or i1 %cmp6, %cmp8
  br i1 %or.cond25, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  %statusOut = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %statusOut to %struct.ossl_cmp_pkisi_st**
  %4 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %3, align 8, !tbaa !11
  %call10 = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_dup(%struct.ossl_cmp_pkisi_st* noundef %4) #4
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %call13 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef nonnull %2) #4
  %call14 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef nonnull %issuer, %struct.X509_name_st* noundef %call13) #4
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %lor.lhs.false16, label %if.then21

lor.lhs.false16:                                  ; preds = %if.end11
  %5 = load %struct.x509_st*, %struct.x509_st** %certOut, align 8, !tbaa !3
  %call18 = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %5) #4
  %call19 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef nonnull %serial, %struct.asn1_string_st* noundef %call18) #4
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %lor.lhs.false16, %if.end11
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.process_rr, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 149, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false16
  %statusOut23 = getelementptr inbounds i8, i8* %call, i64 24
  %6 = bitcast i8* %statusOut23 to %struct.ossl_cmp_pkisi_st**
  %7 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %6, align 8, !tbaa !11
  %call24 = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_dup(%struct.ossl_cmp_pkisi_st* noundef %7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %if.then9, %if.then4, %if.then
  %retval.0 = phi %struct.ossl_cmp_pkisi_st* [ null, %if.then ], [ null, %if.then4 ], [ %call10, %if.then9 ], [ null, %if.then21 ], [ %call24, %if.end22 ]
  ret %struct.ossl_cmp_pkisi_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process_genm(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.ossl_cmp_msg_st* noundef readnone %genm, %struct.stack_st_OSSL_CMP_ITAV* noundef %in, %struct.stack_st_OSSL_CMP_ITAV** noundef writeonly %out) #0 {
entry:
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  %cmp = icmp eq i8* %call, null
  %cmp1 = icmp eq %struct.ossl_cmp_msg_st* %genm, null
  %or.cond = or i1 %cmp1, %cmp
  %cmp3 = icmp eq %struct.stack_st_OSSL_CMP_ITAV* %in, null
  %or.cond13 = or i1 %cmp3, %or.cond
  %cmp5 = icmp eq %struct.stack_st_OSSL_CMP_ITAV** %out, null
  %or.cond14 = or i1 %cmp5, %or.cond13
  br i1 %or.cond14, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 301, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.process_genm, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %sendError = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %sendError to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !12
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 305, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.process_genm, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 158, i8* noundef null) #4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef nonnull %in) #5
  %call11 = tail call %struct.stack_st* @OPENSSL_sk_deep_copy(%struct.stack_st* noundef %call8, i8* (i8*)* noundef bitcast (%struct.ossl_cmp_itav_st* (%struct.ossl_cmp_itav_st*)* @OSSL_CMP_ITAV_dup to i8* (i8*)*), void (i8*)* noundef bitcast (void (%struct.ossl_cmp_itav_st*)* @OSSL_CMP_ITAV_free to void (i8*)*)) #4
  %2 = bitcast %struct.stack_st_OSSL_CMP_ITAV** %out to %struct.stack_st**
  store %struct.stack_st* %call11, %struct.stack_st** %2, align 8, !tbaa !16
  %cmp12 = icmp ne %struct.stack_st* %call11, null
  %conv = zext i1 %cmp12 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ %conv, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_error(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.ossl_cmp_msg_st* noundef readnone %error, %struct.ossl_cmp_pkisi_st* noundef %statusInfo, %struct.asn1_string_st* noundef %errorCode, %struct.stack_st_ASN1_UTF8STRING* noundef %errorDetails) #0 {
entry:
  %buf = alloca [1024 x i8], align 16
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #6
  %cmp = icmp eq i8* %call, null
  %cmp1 = icmp eq %struct.ossl_cmp_msg_st* %error, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 325, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.process_error, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !16
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #4
  %cmp3 = icmp eq %struct.ossl_cmp_pkisi_st* %statusInfo, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !16
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %call6 = call i8* @OSSL_CMP_snprint_PKIStatusInfo(%struct.ossl_cmp_pkisi_st* noundef nonnull %statusInfo, i8* noundef nonnull %0, i64 noundef 1024) #4
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !16
  %cmp7.not = icmp eq i8* %call6, null
  %cond = select i1 %cmp7.not, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %call6
  %call8 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef %cond) #4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %cmp10 = icmp eq %struct.asn1_string_st* %errorCode, null
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !16
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #4
  br label %if.end16

if.else13:                                        ; preds = %if.end9
  %call14 = call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %errorCode) #4
  %call15 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 noundef %call14) #4
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then11
  %call17 = call fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %errorDetails) #5
  %call18 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call17) #4
  %cmp19 = icmp slt i32 %call18, 1
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !16
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.end16
  %call21 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0)) #4
  br label %cleanup

if.else22:                                        ; preds = %if.end16
  %call23 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0)) #4
  %call2552 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call17) #4
  %cmp2653 = icmp sgt i32 %call2552, 0
  br i1 %cmp2653, label %if.end30.peel, label %for.end

if.end30.peel:                                    ; preds = %if.else22
  %.pre = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !16
  %call31.peel = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %.pre, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #4
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !16
  %call33.peel = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call17, i32 noundef 0) #4
  %7 = bitcast i8* %call33.peel to %struct.asn1_string_st*
  %call34.peel = call i32 @ASN1_STRING_print(%struct.bio_st* noundef %6, %struct.asn1_string_st* noundef %7) #4
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !16
  %call35.peel = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #4
  %call25.peel = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call17) #4
  %cmp26.peel = icmp sgt i32 %call25.peel, 1
  br i1 %cmp26.peel, label %if.end30, label %for.end

if.end30:                                         ; preds = %if.end30.peel, %if.end30
  %i.054 = phi i32 [ %inc, %if.end30 ], [ 1, %if.end30.peel ]
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !16
  %call29 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #4
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !16
  %call31 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #4
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !16
  %call33 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call17, i32 noundef %i.054) #4
  %12 = bitcast i8* %call33 to %struct.asn1_string_st*
  %call34 = call i32 @ASN1_STRING_print(%struct.bio_st* noundef %11, %struct.asn1_string_st* noundef %12) #4
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !16
  %call35 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #4
  %inc = add nuw nsw i32 %i.054, 1
  %call25 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call17) #4
  %cmp26 = icmp slt i32 %inc, %call25
  br i1 %cmp26, label %if.end30, label %for.end, !llvm.loop !19

for.end:                                          ; preds = %if.end30, %if.end30.peel, %if.else22
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !16
  %call36 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %for.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process_certConf(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.ossl_cmp_msg_st* noundef readnone %certConf, i32 noundef %certReqId, %struct.asn1_string_st* noundef %certHash, %struct.ossl_cmp_pkisi_st* nocapture noundef readnone %si) #0 {
entry:
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  %cmp = icmp eq i8* %call, null
  %cmp1 = icmp eq %struct.ossl_cmp_msg_st* %certConf, null
  %or.cond = or i1 %cmp1, %cmp
  %cmp3 = icmp eq %struct.asn1_string_st* %certHash, null
  %or.cond22 = or i1 %cmp3, %or.cond
  br i1 %or.cond22, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %sendError = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %sendError to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !12
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false4, label %cleanup.sink.split

lor.lhs.false4:                                   ; preds = %if.end
  %certOut = bitcast i8* %call to %struct.x509_st**
  %2 = load %struct.x509_st*, %struct.x509_st** %certOut, align 8, !tbaa !3
  %cmp5 = icmp eq %struct.x509_st* %2, null
  br i1 %cmp5, label %cleanup.sink.split, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false4
  %certReqId8 = getelementptr inbounds i8, i8* %call, i64 48
  %3 = bitcast i8* %certReqId8 to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !15
  %cmp9.not = icmp eq i32 %4, %certReqId
  br i1 %cmp9.not, label %if.end11, label %cleanup.sink.split

if.end11:                                         ; preds = %if.end7
  %call13 = tail call %struct.asn1_string_st* @X509_digest_sig(%struct.x509_st* noundef nonnull %2, %struct.evp_md_st** noundef null, i32* noundef null) #4
  %cmp14 = icmp eq %struct.asn1_string_st* %call13, null
  br i1 %cmp14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end11
  %call17 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef nonnull %certHash, %struct.asn1_string_st* noundef nonnull %call13) #4
  %cmp18.not = icmp eq i32 %call17, 0
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call13) #4
  br i1 %cmp18.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end16, %if.end7, %if.end, %lor.lhs.false4, %entry
  %.sink33 = phi i32 [ 369, %entry ], [ 373, %lor.lhs.false4 ], [ 373, %if.end ], [ 379, %if.end7 ], [ 387, %if.end16 ]
  %.sink = phi i32 [ 103, %entry ], [ 158, %lor.lhs.false4 ], [ 158, %if.end ], [ 108, %if.end7 ], [ 156, %if.end16 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink33, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.process_certConf, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef %.sink, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end16, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 1, %if.end16 ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process_pollReq(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx, %struct.ossl_cmp_msg_st* noundef readnone %pollReq, i32 noundef %certReqId, %struct.ossl_cmp_msg_st** noundef writeonly %certReq, i64* noundef writeonly %check_after) #0 {
entry:
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  %cmp = icmp eq i8* %call, null
  %cmp1 = icmp eq %struct.ossl_cmp_msg_st* %pollReq, null
  %or.cond = or i1 %cmp1, %cmp
  %cmp3 = icmp eq %struct.ossl_cmp_msg_st** %certReq, null
  %or.cond17 = or i1 %cmp3, %or.cond
  %cmp5 = icmp eq i64* %check_after, null
  %or.cond18 = or i1 %cmp5, %or.cond17
  br i1 %or.cond18, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 402, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.process_pollReq, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %sendError = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %sendError to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !12
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %certReq, align 8, !tbaa !16
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 407, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.process_pollReq, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 158, i8* noundef null) #4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %certReq8 = getelementptr inbounds i8, i8* %call, i64 40
  %2 = bitcast i8* %certReq8 to %struct.ossl_cmp_msg_st**
  %3 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %2, align 8, !tbaa !18
  %cmp9 = icmp eq %struct.ossl_cmp_msg_st* %3, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %certReq, align 8, !tbaa !16
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.process_pollReq, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 133, i8* noundef null) #4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %curr_pollCount = getelementptr inbounds i8, i8* %call, i64 56
  %4 = bitcast i8* %curr_pollCount to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !17
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %4, align 8, !tbaa !17
  %pollCount = getelementptr inbounds i8, i8* %call, i64 52
  %6 = bitcast i8* %pollCount to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !13
  %cmp12.not = icmp slt i32 %inc, %7
  br i1 %cmp12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  store %struct.ossl_cmp_msg_st* %3, %struct.ossl_cmp_msg_st** %certReq, align 8, !tbaa !16
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %2, align 8, !tbaa !18
  br label %if.end16

if.else:                                          ; preds = %if.end11
  store %struct.ossl_cmp_msg_st* null, %struct.ossl_cmp_msg_st** %certReq, align 8, !tbaa !16
  %checkAfterTime = getelementptr inbounds i8, i8* %call, i64 60
  %8 = bitcast i8* %checkAfterTime to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !14
  %conv = sext i32 %9 to i64
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %storemerge = phi i64 [ %conv, %if.else ], [ 0, %if.then13 ]
  store i64 %storemerge, i64* %check_after, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then10, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then10 ], [ 1, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @mock_srv_ctx_free(%struct.mock_srv_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.mock_srv_ctx* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %statusOut = getelementptr inbounds %struct.mock_srv_ctx, %struct.mock_srv_ctx* %ctx, i64 0, i32 3
  %0 = load %struct.ossl_cmp_pkisi_st*, %struct.ossl_cmp_pkisi_st** %statusOut, align 8, !tbaa !11
  tail call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef %0) #4
  %certOut = getelementptr inbounds %struct.mock_srv_ctx, %struct.mock_srv_ctx* %ctx, i64 0, i32 0
  %1 = load %struct.x509_st*, %struct.x509_st** %certOut, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %1) #4
  %chainOut = getelementptr inbounds %struct.mock_srv_ctx, %struct.mock_srv_ctx* %ctx, i64 0, i32 1
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chainOut, align 8, !tbaa !9
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %2) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #4
  %caPubsOut = getelementptr inbounds %struct.mock_srv_ctx, %struct.mock_srv_ctx* %ctx, i64 0, i32 2
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %caPubsOut, align 8, !tbaa !10
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %3) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call2, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #4
  %certReq = getelementptr inbounds %struct.mock_srv_ctx, %struct.mock_srv_ctx* %ctx, i64 0, i32 5
  %4 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %certReq, align 8, !tbaa !18
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %4) #4
  %5 = bitcast %struct.mock_srv_ctx* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 44) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare dso_local void @OSSL_CMP_SRV_CTX_free(%struct.ossl_cmp_srv_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ossl_cmp_mock_srv_free(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_srv_ctx_st* %srv_ctx, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %srv_ctx) #4
  %0 = bitcast i8* %call to %struct.mock_srv_ctx*
  tail call fastcc void @mock_srv_ctx_free(%struct.mock_srv_ctx* noundef %0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @OSSL_CMP_SRV_CTX_free(%struct.ossl_cmp_srv_ctx_st* noundef %srv_ctx) #4
  ret void
}

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_new() local_unnamed_addr #2

declare dso_local %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_crmf_certid_st* @OSSL_CRMF_MSG_get0_regCtrl_oldCertID(%struct.ossl_crmf_msg_st* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_name_st* @OSSL_CRMF_CERTID_get0_issuer(%struct.ossl_crmf_certid_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @OSSL_CRMF_CERTID_get0_serialNumber(%struct.ossl_crmf_certid_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @X509_dup(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_dup(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st* @OPENSSL_sk_deep_copy(%struct.stack_st* noundef, i8* (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_ITAV* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_dup(%struct.ossl_cmp_itav_st* noundef) #2

declare dso_local void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef) #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i8* @OSSL_CMP_snprint_PKIStatusInfo(%struct.ossl_cmp_pkisi_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @ASN1_STRING_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @X509_digest_sig(%struct.x509_st* noundef, %struct.evp_md_st** noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !8, i64 32, !5, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !5, i64 8}
!10 = !{!4, !5, i64 16}
!11 = !{!4, !5, i64 24}
!12 = !{!4, !8, i64 32}
!13 = !{!4, !8, i64 52}
!14 = !{!4, !8, i64 60}
!15 = !{!4, !8, i64 48}
!16 = !{!5, !5, i64 0}
!17 = !{!4, !8, i64 56}
!18 = !{!4, !5, i64 40}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.peeled.count", i32 1}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !6, i64 0}
