; ModuleID = 'crypto/ct/ct_sct.c'
source_filename = "crypto/ct/ct_sct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sct_st = type { i32, i8*, i64, i8*, i64, i64, i8*, i64, i8, i8, i8*, i64, i32, i32, i32 }
%struct.stack_st_SCT = type opaque
%struct.stack_st = type opaque
%struct.ct_policy_eval_ctx_st = type { %struct.x509_st*, %struct.x509_st*, %struct.ctlog_store_st*, i64, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_st = type opaque
%struct.ctlog_store_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.X509_pubkey_st = type opaque
%struct.ctlog_st = type opaque
%struct.sct_ctx_st = type { %struct.evp_pkey_st*, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i64, %struct.ossl_lib_ctx_st*, i8* }
%struct.evp_pkey_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/ct/ct_sct.c\00", align 1
@__func__.SCT_new = private unnamed_addr constant [8 x i8] c"SCT_new\00", align 1
@__func__.SCT_set_version = private unnamed_addr constant [16 x i8] c"SCT_set_version\00", align 1
@__func__.SCT_set_log_entry_type = private unnamed_addr constant [23 x i8] c"SCT_set_log_entry_type\00", align 1
@__func__.SCT_set0_log_id = private unnamed_addr constant [16 x i8] c"SCT_set0_log_id\00", align 1
@__func__.SCT_set1_log_id = private unnamed_addr constant [16 x i8] c"SCT_set1_log_id\00", align 1
@__func__.SCT_set_signature_nid = private unnamed_addr constant [22 x i8] c"SCT_set_signature_nid\00", align 1
@__func__.SCT_set1_extensions = private unnamed_addr constant [20 x i8] c"SCT_set1_extensions\00", align 1
@__func__.SCT_set1_signature = private unnamed_addr constant [19 x i8] c"SCT_set1_signature\00", align 1
@switch.table.SCT_set_source = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 0], align 4

; Function Attrs: noinline nounwind uwtable
define %struct.sct_st* @SCT_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 104, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 24) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.SCT_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.sct_st*
  %entry_type = getelementptr inbounds i8, i8* %call, i64 88
  %1 = bitcast i8* %entry_type to i32*
  store i32 -1, i32* %1, align 8, !tbaa !4
  %version = bitcast i8* %call to i32*
  store i32 -1, i32* %version, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.sct_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.sct_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @SCT_free(%struct.sct_st* noundef %sct) #0 {
entry:
  %cmp = icmp eq %struct.sct_st* %sct, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %log_id = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 3
  %0 = load i8*, i8** %log_id, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 41) #7
  %ext = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 6
  %1 = load i8*, i8** %ext, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 42) #7
  %sig = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 10
  %2 = load i8*, i8** %sig, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 43) #7
  %sct1 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 1
  %3 = load i8*, i8** %sct1, align 8, !tbaa !14
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 44) #7
  %4 = bitcast %struct.sct_st* %sct to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 45) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @SCT_LIST_free(%struct.stack_st_SCT* noundef %a) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_SCT_sk_type(%struct.stack_st_SCT* noundef %a) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.sct_st*)* @SCT_free to void (i8*)*)) #7
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SCT_sk_type(%struct.stack_st_SCT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SCT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_set_version(%struct.sct_st* nocapture noundef writeonly %sct, i32 noundef %version) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %version, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.SCT_set_version, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 103, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  %version1 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 0
  store i32 0, i32* %version1, align 8, !tbaa !10
  %validation_status = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 0, i32* %validation_status, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_set_log_entry_type(%struct.sct_st* nocapture noundef writeonly %sct, i32 noundef %entry_type) local_unnamed_addr #0 {
entry:
  %validation_status = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 0, i32* %validation_status, align 8, !tbaa !15
  %switch = icmp ult i32 %entry_type, 2
  br i1 %switch, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  %entry_type1 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 12
  store i32 %entry_type, i32* %entry_type1, align 8, !tbaa !4
  br label %return

sw.epilog:                                        ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.SCT_set_log_entry_type, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 102, i8* noundef null) #7
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_set0_log_id(%struct.sct_st* nocapture noundef %sct, i8* noundef %log_id, i64 noundef %log_id_len) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !10
  %cmp = icmp eq i32 %0, 0
  %cmp1 = icmp ne i64 %log_id_len, 32
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.SCT_set0_log_id, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 100, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  %log_id2 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 3
  %1 = load i8*, i8** %log_id2, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 87) #7
  store i8* %log_id, i8** %log_id2, align 8, !tbaa !11
  %log_id_len4 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 4
  store i64 %log_id_len, i64* %log_id_len4, align 8, !tbaa !16
  %validation_status = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 0, i32* %validation_status, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_set1_log_id(%struct.sct_st* nocapture noundef %sct, i8* noundef %log_id, i64 noundef %log_id_len) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !10
  %cmp = icmp eq i32 %0, 0
  %cmp1 = icmp ne i64 %log_id_len, 32
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.SCT_set1_log_id, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 100, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  %log_id2 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 3
  %1 = load i8*, i8** %log_id2, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 101) #7
  store i8* null, i8** %log_id2, align 8, !tbaa !11
  %log_id_len4 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 4
  store i64 0, i64* %log_id_len4, align 8, !tbaa !16
  %validation_status = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 0, i32* %validation_status, align 8, !tbaa !15
  %cmp5 = icmp ne i8* %log_id, null
  %cmp7 = icmp ne i64 %log_id_len, 0
  %or.cond16 = and i1 %cmp5, %cmp7
  br i1 %or.cond16, label %if.then8, label %return

if.then8:                                         ; preds = %if.end
  %call = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %log_id, i64 noundef %log_id_len, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 107) #7
  store i8* %call, i8** %log_id2, align 8, !tbaa !11
  %cmp11 = icmp eq i8* %call, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then8
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.SCT_set1_log_id, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #7
  br label %return

if.end13:                                         ; preds = %if.then8
  store i64 %log_id_len, i64* %log_id_len4, align 8, !tbaa !16
  br label %return

return:                                           ; preds = %if.end, %if.end13, %if.then12, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then12 ], [ 1, %if.end13 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SCT_set_timestamp(%struct.sct_st* nocapture noundef writeonly %sct, i64 noundef %timestamp) local_unnamed_addr #4 {
entry:
  %timestamp1 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 5
  store i64 %timestamp, i64* %timestamp1, align 8, !tbaa !17
  %validation_status = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 0, i32* %validation_status, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_set_signature_nid(%struct.sct_st* nocapture noundef writeonly %sct, i32 noundef %nid) local_unnamed_addr #0 {
entry:
  switch i32 %nid, label %sw.default [
    i32 668, label %sw.bb
    i32 794, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %hash_alg = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 8
  store i8 4, i8* %hash_alg, align 8, !tbaa !18
  %sig_alg = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 9
  store i8 1, i8* %sig_alg, align 1, !tbaa !19
  %validation_status = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 0, i32* %validation_status, align 8, !tbaa !15
  br label %return

sw.bb1:                                           ; preds = %entry
  %hash_alg2 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 8
  store i8 4, i8* %hash_alg2, align 8, !tbaa !18
  %sig_alg3 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 9
  store i8 3, i8* %sig_alg3, align 1, !tbaa !19
  %validation_status4 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 0, i32* %validation_status4, align 8, !tbaa !15
  br label %return

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.SCT_set_signature_nid, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 101, i8* noundef null) #7
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %sw.bb1 ], [ 1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @SCT_set0_extensions(%struct.sct_st* nocapture noundef %sct, i8* noundef %ext, i64 noundef %ext_len) local_unnamed_addr #0 {
entry:
  %ext1 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 6
  %0 = load i8*, i8** %ext1, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 145) #7
  store i8* %ext, i8** %ext1, align 8, !tbaa !12
  %ext_len3 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 7
  store i64 %ext_len, i64* %ext_len3, align 8, !tbaa !20
  %validation_status = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 0, i32* %validation_status, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_set1_extensions(%struct.sct_st* nocapture noundef %sct, i8* noundef %ext, i64 noundef %ext_len) local_unnamed_addr #0 {
entry:
  %ext1 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 6
  %0 = load i8*, i8** %ext1, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 153) #7
  store i8* null, i8** %ext1, align 8, !tbaa !12
  %ext_len3 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 7
  store i64 0, i64* %ext_len3, align 8, !tbaa !20
  %validation_status = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 0, i32* %validation_status, align 8, !tbaa !15
  %cmp = icmp ne i8* %ext, null
  %cmp4 = icmp ne i64 %ext_len, 0
  %or.cond = and i1 %cmp, %cmp4
  br i1 %or.cond, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %ext, i64 noundef %ext_len, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 159) #7
  store i8* %call, i8** %ext1, align 8, !tbaa !12
  %cmp7 = icmp eq i8* %call, null
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.SCT_set1_extensions, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %if.then
  store i64 %ext_len, i64* %ext_len3, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %entry, %if.end, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @SCT_set0_signature(%struct.sct_st* nocapture noundef %sct, i8* noundef %sig, i64 noundef %sig_len) local_unnamed_addr #0 {
entry:
  %sig1 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 10
  %0 = load i8*, i8** %sig1, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 171) #7
  store i8* %sig, i8** %sig1, align 8, !tbaa !13
  %sig_len3 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 11
  store i64 %sig_len, i64* %sig_len3, align 8, !tbaa !21
  %validation_status = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 0, i32* %validation_status, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_set1_signature(%struct.sct_st* nocapture noundef %sct, i8* noundef %sig, i64 noundef %sig_len) local_unnamed_addr #0 {
entry:
  %sig1 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 10
  %0 = load i8*, i8** %sig1, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 179) #7
  store i8* null, i8** %sig1, align 8, !tbaa !13
  %sig_len3 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 11
  store i64 0, i64* %sig_len3, align 8, !tbaa !21
  %validation_status = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 0, i32* %validation_status, align 8, !tbaa !15
  %cmp = icmp ne i8* %sig, null
  %cmp4 = icmp ne i64 %sig_len, 0
  %or.cond = and i1 %cmp, %cmp4
  br i1 %or.cond, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %sig, i64 noundef %sig_len, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 185) #7
  store i8* %call, i8** %sig1, align 8, !tbaa !13
  %cmp7 = icmp eq i8* %call, null
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SCT_set1_signature, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %if.then
  store i64 %sig_len, i64* %sig_len3, align 8, !tbaa !21
  br label %return

return:                                           ; preds = %entry, %if.end, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SCT_get_version(%struct.sct_st* nocapture noundef readonly %sct) local_unnamed_addr #5 {
entry:
  %version = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !10
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SCT_get_log_entry_type(%struct.sct_st* nocapture noundef readonly %sct) local_unnamed_addr #5 {
entry:
  %entry_type = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 12
  %0 = load i32, i32* %entry_type, align 8, !tbaa !4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SCT_get0_log_id(%struct.sct_st* nocapture noundef readonly %sct, i8** nocapture noundef writeonly %log_id) local_unnamed_addr #6 {
entry:
  %log_id1 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 3
  %0 = load i8*, i8** %log_id1, align 8, !tbaa !11
  store i8* %0, i8** %log_id, align 8, !tbaa !22
  %log_id_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 4
  %1 = load i64, i64* %log_id_len, align 8, !tbaa !16
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @SCT_get_timestamp(%struct.sct_st* nocapture noundef readonly %sct) local_unnamed_addr #5 {
entry:
  %timestamp = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 5
  %0 = load i64, i64* %timestamp, align 8, !tbaa !17
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SCT_get_signature_nid(%struct.sct_st* nocapture noundef readonly %sct) local_unnamed_addr #5 {
entry:
  %version = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !10
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %hash_alg = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 8
  %1 = load i8, i8* %hash_alg, align 8, !tbaa !18
  %cmp1 = icmp eq i8 %1, 4
  br i1 %cmp1, label %if.then3, label %return

if.then3:                                         ; preds = %if.then
  %sig_alg = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 9
  %2 = load i8, i8* %sig_alg, align 1, !tbaa !19
  %switch.selectcmp = icmp eq i8 %2, 1
  %switch.select = select i1 %switch.selectcmp, i32 668, i32 0
  %switch.selectcmp9 = icmp eq i8 %2, 3
  %switch.select10 = select i1 %switch.selectcmp9, i32 794, i32 %switch.select
  br label %return

return:                                           ; preds = %entry, %if.then, %if.then3
  %retval.0 = phi i32 [ %switch.select10, %if.then3 ], [ 0, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SCT_get0_extensions(%struct.sct_st* nocapture noundef readonly %sct, i8** nocapture noundef writeonly %ext) local_unnamed_addr #6 {
entry:
  %ext1 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 6
  %0 = load i8*, i8** %ext1, align 8, !tbaa !12
  store i8* %0, i8** %ext, align 8, !tbaa !22
  %ext_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 7
  %1 = load i64, i64* %ext_len, align 8, !tbaa !20
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SCT_get0_signature(%struct.sct_st* nocapture noundef readonly %sct, i8** nocapture noundef writeonly %sig) local_unnamed_addr #6 {
entry:
  %sig1 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 10
  %0 = load i8*, i8** %sig1, align 8, !tbaa !13
  store i8* %0, i8** %sig, align 8, !tbaa !22
  %sig_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 11
  %1 = load i64, i64* %sig_len, align 8, !tbaa !21
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SCT_is_complete(%struct.sct_st* nocapture noundef readonly %sct) local_unnamed_addr #5 {
entry:
  %version = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !10
  switch i32 %0, label %sw.default [
    i32 -1, label %return
    i32 0, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %entry
  %log_id = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 3
  %1 = load i8*, i8** %log_id, align 8, !tbaa !11
  %cmp.not = icmp eq i8* %1, null
  br i1 %cmp.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %sw.bb1
  %call = tail call i32 @SCT_signature_is_complete(%struct.sct_st* noundef nonnull %sct) #8
  %tobool = icmp ne i32 %call, 0
  br label %return

sw.default:                                       ; preds = %entry
  %sct2 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 1
  %2 = load i8*, i8** %sct2, align 8, !tbaa !14
  %cmp3 = icmp ne i8* %2, null
  br label %return

return:                                           ; preds = %sw.bb1, %land.rhs, %entry, %sw.default
  %retval.0.shrunk = phi i1 [ %cmp3, %sw.default ], [ false, %entry ], [ false, %sw.bb1 ], [ %tobool, %land.rhs ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SCT_signature_is_complete(%struct.sct_st* nocapture noundef readonly %sct) local_unnamed_addr #5 {
entry:
  %call = tail call i32 @SCT_get_signature_nid(%struct.sct_st* noundef %sct) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sig = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 10
  %0 = load i8*, i8** %sig, align 8, !tbaa !13
  %cmp1.not = icmp eq i8* %0, null
  br i1 %cmp1.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %sig_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 11
  %1 = load i64, i64* %sig_len, align 8, !tbaa !21
  %cmp2 = icmp ne i64 %1, 0
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %2 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SCT_get_source(%struct.sct_st* nocapture noundef readonly %sct) local_unnamed_addr #5 {
entry:
  %source = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 13
  %0 = load i32, i32* %source, align 4, !tbaa !23
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_set_source(%struct.sct_st* nocapture noundef writeonly %sct, i32 noundef %source) local_unnamed_addr #0 {
entry:
  %source1 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 13
  store i32 %source, i32* %source1, align 4, !tbaa !23
  %validation_status = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 0, i32* %validation_status, align 8, !tbaa !15
  %switch.tableidx = add i32 %source, -1
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [3 x i32], [3 x i32]* @switch.table.SCT_set_source, i64 0, i64 %1
  %switch.load = load i32, i32* %switch.gep, align 4
  %call3 = tail call i32 @SCT_set_log_entry_type(%struct.sct_st* noundef nonnull %sct, i32 noundef %switch.load) #8
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi i32 [ 1, %entry ], [ %call3, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SCT_get_validation_status(%struct.sct_st* nocapture noundef readonly %sct) local_unnamed_addr #5 {
entry:
  %validation_status = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  %0 = load i32, i32* %validation_status, align 8, !tbaa !15
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_validate(%struct.sct_st* noundef %sct, %struct.ct_policy_eval_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %pub = alloca %struct.X509_pubkey_st*, align 8
  %log_pkey = alloca %struct.X509_pubkey_st*, align 8
  %0 = bitcast %struct.X509_pubkey_st** %pub to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.X509_pubkey_st* null, %struct.X509_pubkey_st** %pub, align 8, !tbaa !22
  %1 = bitcast %struct.X509_pubkey_st** %log_pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.X509_pubkey_st* null, %struct.X509_pubkey_st** %log_pkey, align 8, !tbaa !22
  %version = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 0
  %2 = load i32, i32* %version, align 8, !tbaa !10
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %validation_status = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 5, i32* %validation_status, align 8, !tbaa !15
  br label %cleanup46

if.end:                                           ; preds = %entry
  %log_store = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 2
  %3 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %log_store, align 8, !tbaa !24
  %log_id = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 3
  %4 = load i8*, i8** %log_id, align 8, !tbaa !11
  %log_id_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 4
  %5 = load i64, i64* %log_id_len, align 8, !tbaa !16
  %call = tail call %struct.ctlog_st* @CTLOG_STORE_get0_log_by_id(%struct.ctlog_store_st* noundef %3, i8* noundef %4, i64 noundef %5) #7
  %cmp1 = icmp eq %struct.ctlog_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %validation_status3 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 1, i32* %validation_status3, align 8, !tbaa !15
  br label %cleanup46

if.end4:                                          ; preds = %if.end
  %libctx = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 4
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !26
  %propq = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 5
  %7 = load i8*, i8** %propq, align 8, !tbaa !27
  %call5 = tail call %struct.sct_ctx_st* @SCT_CTX_new(%struct.ossl_lib_ctx_st* noundef %6, i8* noundef %7) #7
  %cmp6 = icmp eq %struct.sct_ctx_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call %struct.evp_pkey_st* @CTLOG_get0_public_key(%struct.ctlog_st* noundef nonnull %call) #7
  %call10 = call i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef nonnull %log_pkey, %struct.evp_pkey_st* noundef %call9) #7
  %cmp11.not = icmp eq i32 %call10, 1
  br i1 %cmp11.not, label %if.end13, label %err

if.end13:                                         ; preds = %if.end8
  %8 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %log_pkey, align 8, !tbaa !22
  %call14 = call i32 @SCT_CTX_set1_pubkey(%struct.sct_ctx_st* noundef nonnull %call5, %struct.X509_pubkey_st* noundef %8) #7
  %cmp15.not = icmp eq i32 %call14, 1
  br i1 %cmp15.not, label %if.end17, label %err

if.end17:                                         ; preds = %if.end13
  %call18 = call i32 @SCT_get_log_entry_type(%struct.sct_st* noundef nonnull %sct) #8
  %cmp19 = icmp eq i32 %call18, 1
  br i1 %cmp19, label %if.then20, label %if.end35

if.then20:                                        ; preds = %if.end17
  %issuer = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 1
  %9 = load %struct.x509_st*, %struct.x509_st** %issuer, align 8, !tbaa !28
  %cmp21 = icmp eq %struct.x509_st* %9, null
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.then20
  %call26 = call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef nonnull %9) #7
  %call27 = call i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef nonnull %pub, %struct.evp_pkey_st* noundef %call26) #7
  %cmp28.not = icmp eq i32 %call27, 1
  br i1 %cmp28.not, label %if.end30, label %err

if.end30:                                         ; preds = %if.end24
  %10 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %pub, align 8, !tbaa !22
  %call31 = call i32 @SCT_CTX_set1_issuer_pubkey(%struct.sct_ctx_st* noundef nonnull %call5, %struct.X509_pubkey_st* noundef %10) #7
  %cmp32.not = icmp eq i32 %call31, 1
  br i1 %cmp32.not, label %if.end35, label %err

cleanup:                                          ; preds = %if.then20
  %validation_status23 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 4, i32* %validation_status23, align 8, !tbaa !15
  br label %err

if.end35:                                         ; preds = %if.end30, %if.end17
  %epoch_time_in_ms = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 3
  %11 = load i64, i64* %epoch_time_in_ms, align 8, !tbaa !29
  call void @SCT_CTX_set_time(%struct.sct_ctx_st* noundef nonnull %call5, i64 noundef %11) #7
  %cert = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 0
  %12 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !30
  %call36 = call i32 @SCT_CTX_set1_cert(%struct.sct_ctx_st* noundef nonnull %call5, %struct.x509_st* noundef %12, %struct.x509_st* noundef null) #7
  %cmp37.not = icmp eq i32 %call36, 1
  br i1 %cmp37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end35
  %validation_status39 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 4, i32* %validation_status39, align 8, !tbaa !15
  br label %err

if.else:                                          ; preds = %if.end35
  %call40 = call i32 @SCT_CTX_verify(%struct.sct_ctx_st* noundef nonnull %call5, %struct.sct_st* noundef nonnull %sct) #7
  %cmp41 = icmp eq i32 %call40, 1
  %cond = select i1 %cmp41, i32 2, i32 3
  %validation_status42 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 14
  store i32 %cond, i32* %validation_status42, align 8, !tbaa !15
  %phi.cast = zext i1 %cmp41 to i32
  br label %err

err:                                              ; preds = %if.else, %if.then38, %cleanup, %if.end30, %if.end24, %if.end13, %if.end8, %if.end4
  %is_sct_valid.0 = phi i32 [ -1, %if.end4 ], [ -1, %if.end8 ], [ -1, %if.end13 ], [ -1, %if.end24 ], [ -1, %if.end30 ], [ 0, %cleanup ], [ 0, %if.then38 ], [ %phi.cast, %if.else ]
  %13 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %pub, align 8, !tbaa !22
  call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %13) #7
  %14 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %log_pkey, align 8, !tbaa !22
  call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %14) #7
  call void @SCT_CTX_free(%struct.sct_ctx_st* noundef %call5) #7
  br label %cleanup46

cleanup46:                                        ; preds = %err, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ %is_sct_valid.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare %struct.ctlog_st* @CTLOG_STORE_get0_log_by_id(%struct.ctlog_store_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.sct_ctx_st* @SCT_CTX_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @CTLOG_get0_public_key(%struct.ctlog_st* noundef) local_unnamed_addr #2

declare i32 @SCT_CTX_set1_pubkey(%struct.sct_ctx_st* noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @SCT_CTX_set1_issuer_pubkey(%struct.sct_ctx_st* noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #2

declare void @SCT_CTX_set_time(%struct.sct_ctx_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SCT_CTX_set1_cert(%struct.sct_ctx_st* noundef, %struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @SCT_CTX_verify(%struct.sct_ctx_st* noundef, %struct.sct_st* noundef) local_unnamed_addr #2

declare void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef) local_unnamed_addr #2

declare void @SCT_CTX_free(%struct.sct_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_LIST_validate(%struct.stack_st_SCT* noundef %scts, %struct.ct_policy_eval_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.stack_st_SCT* %scts, null
  br i1 %cmp.not, label %cleanup11, label %cond.end

cond.end:                                         ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef nonnull %scts) #8
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp231 = icmp sgt i32 %call1, 0
  br i1 %cmp231, label %for.body.lr.ph, label %cleanup11

for.body.lr.ph:                                   ; preds = %cond.end
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef nonnull %scts) #8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %are_scts_valid.032 = phi i32 [ 1, %for.body.lr.ph ], [ %are_scts_valid.1.ph, %for.inc ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %i.033) #7
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %0 = bitcast i8* %call4 to %struct.sct_st*
  %call6 = tail call i32 @SCT_validate(%struct.sct_st* noundef nonnull %0, %struct.ct_policy_eval_ctx_st* noundef %ctx) #8
  %cmp7 = icmp slt i32 %call6, 0
  %and = and i32 %call6, %are_scts_valid.032
  br i1 %cmp7, label %cleanup11, label %for.inc

for.inc:                                          ; preds = %for.body, %if.end
  %are_scts_valid.1.ph = phi i32 [ %and, %if.end ], [ %are_scts_valid.032, %for.body ]
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %cleanup11, label %for.body, !llvm.loop !31

cleanup11:                                        ; preds = %for.inc, %if.end, %entry, %cond.end
  %retval.2 = phi i32 [ 1, %cond.end ], [ 1, %entry ], [ -1, %if.end ], [ %are_scts_valid.1.ph, %for.inc ]
  ret i32 %retval.2
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SCT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!4 = !{!5, !6, i64 88}
!5 = !{!"sct_st", !6, i64 0, !8, i64 8, !9, i64 16, !8, i64 24, !9, i64 32, !9, i64 40, !8, i64 48, !9, i64 56, !6, i64 64, !6, i64 65, !8, i64 72, !9, i64 80, !6, i64 88, !6, i64 92, !6, i64 96}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!5, !8, i64 24}
!12 = !{!5, !8, i64 48}
!13 = !{!5, !8, i64 72}
!14 = !{!5, !8, i64 8}
!15 = !{!5, !6, i64 96}
!16 = !{!5, !9, i64 32}
!17 = !{!5, !9, i64 40}
!18 = !{!5, !6, i64 64}
!19 = !{!5, !6, i64 65}
!20 = !{!5, !9, i64 56}
!21 = !{!5, !9, i64 80}
!22 = !{!8, !8, i64 0}
!23 = !{!5, !6, i64 92}
!24 = !{!25, !8, i64 16}
!25 = !{!"ct_policy_eval_ctx_st", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !8, i64 32, !8, i64 40}
!26 = !{!25, !8, i64 32}
!27 = !{!25, !8, i64 40}
!28 = !{!25, !8, i64 8}
!29 = !{!25, !9, i64 24}
!30 = !{!25, !8, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
