; ModuleID = 'crypto/ct/ct_log.c'
source_filename = "crypto/ct/ct_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlog_store_st = type { %struct.ossl_lib_ctx_st*, i8*, %struct.stack_st_CTLOG* }
%struct.stack_st_CTLOG = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st = type opaque
%struct.ctlog_st = type { %struct.ossl_lib_ctx_st*, i8*, i8*, [32 x i8], %struct.evp_pkey_st* }
%struct.evp_pkey_st = type opaque
%struct.ctlog_store_load_ctx_st = type { %struct.ctlog_store_st*, %struct.conf_st*, i64 }
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/ct/ct_log.c\00", align 1
@__func__.CTLOG_STORE_new_ex = private unnamed_addr constant [19 x i8] c"CTLOG_STORE_new_ex\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"CTLOG_FILE\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"/usr/local/ssl/ct_log_list.cnf\00", align 1
@__func__.CTLOG_STORE_load_file = private unnamed_addr constant [22 x i8] c"CTLOG_STORE_load_file\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"enabled_logs\00", align 1
@__func__.CTLOG_new_ex = private unnamed_addr constant [13 x i8] c"CTLOG_new_ex\00", align 1
@__func__.ctlog_store_load_ctx_new = private unnamed_addr constant [25 x i8] c"ctlog_store_load_ctx_new\00", align 1
@__func__.ctlog_store_load_log = private unnamed_addr constant [21 x i8] c"ctlog_store_load_log\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@__func__.ctlog_new_from_conf = private unnamed_addr constant [20 x i8] c"ctlog_new_from_conf\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@__func__.ct_v1_log_id_from_pkey = private unnamed_addr constant [23 x i8] c"ct_v1_log_id_from_pkey\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ctlog_store_st* @CTLOG_STORE_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 105) #7
  %0 = bitcast i8* %call to %struct.ctlog_store_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.CTLOG_STORE_new_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %libctx1 = bitcast i8* %call to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !4
  %cmp2.not = icmp eq i8* %propq, null
  br i1 %cmp2.not, label %if.end10, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 114) #7
  %propq5 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %propq5 to i8**
  store i8* %call4, i8** %1, align 8, !tbaa !9
  %cmp7 = icmp eq i8* %call4, null
  br i1 %cmp7, label %err, label %if.end10

if.end10:                                         ; preds = %if.then3, %if.end
  %call11 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %logs = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %logs to %struct.stack_st**
  store %struct.stack_st* %call11, %struct.stack_st** %2, align 8, !tbaa !10
  %cmp13 = icmp eq %struct.stack_st* %call11, null
  br i1 %cmp13, label %err, label %cleanup

err:                                              ; preds = %if.end10, %if.then3
  %.sink = phi i32 [ 116, %if.then3 ], [ 123, %if.end10 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.CTLOG_STORE_new_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #7
  tail call void @CTLOG_STORE_free(%struct.ctlog_store_st* noundef nonnull %0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %err, %if.then
  %retval.0 = phi %struct.ctlog_store_st* [ null, %if.then ], [ null, %err ], [ %0, %if.end10 ]
  ret %struct.ctlog_store_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @CTLOG_STORE_free(%struct.ctlog_store_st* noundef %store) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ctlog_store_st* %store, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %propq = getelementptr inbounds %struct.ctlog_store_st, %struct.ctlog_store_st* %store, i64 0, i32 1
  %0 = load i8*, i8** %propq, align 8, !tbaa !9
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 141) #7
  %logs = getelementptr inbounds %struct.ctlog_store_st, %struct.ctlog_store_st* %store, i64 0, i32 2
  %1 = load %struct.stack_st_CTLOG*, %struct.stack_st_CTLOG** %logs, align 8, !tbaa !10
  %call = tail call fastcc %struct.stack_st* @ossl_check_CTLOG_sk_type(%struct.stack_st_CTLOG* noundef %1) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.ctlog_st*)* @CTLOG_free to void (i8*)*)) #7
  %2 = bitcast %struct.ctlog_store_st* %store to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 143) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.ctlog_store_st* @CTLOG_STORE_new() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ctlog_store_st* @CTLOG_STORE_new_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  ret %struct.ctlog_store_st* %call
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CTLOG_sk_type(%struct.stack_st_CTLOG* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CTLOG* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @CTLOG_free(%struct.ctlog_st* noundef %log) #0 {
entry:
  %cmp.not = icmp eq %struct.ctlog_st* %log, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.ctlog_st, %struct.ctlog_st* %log, i64 0, i32 2
  %0 = load i8*, i8** %name, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 311) #7
  %public_key = getelementptr inbounds %struct.ctlog_st, %struct.ctlog_st* %log, i64 0, i32 4
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %public_key, align 8, !tbaa !13
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %1) #7
  %propq = getelementptr inbounds %struct.ctlog_st, %struct.ctlog_st* %log, i64 0, i32 1
  %2 = load i8*, i8** %propq, align 8, !tbaa !14
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 313) #7
  %3 = bitcast %struct.ctlog_st* %log to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 314) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @CTLOG_STORE_load_default_file(%struct.ctlog_store_st* noundef %store) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_safe_getenv(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #7
  %cmp = icmp eq i8* %call, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %call
  %call1 = tail call i32 @CTLOG_STORE_load_file(%struct.ctlog_store_st* noundef %store, i8* noundef %spec.store.select) #8
  ret i32 %call1
}

declare i8* @ossl_safe_getenv(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CTLOG_STORE_load_file(%struct.ctlog_store_st* noundef %store, i8* noundef %file) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ctlog_store_load_ctx_st* @ctlog_store_load_ctx_new() #8
  %cmp = icmp eq %struct.ctlog_store_load_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %log_store = getelementptr inbounds %struct.ctlog_store_load_ctx_st, %struct.ctlog_store_load_ctx_st* %call, i64 0, i32 0
  store %struct.ctlog_store_st* %store, %struct.ctlog_store_st** %log_store, align 8, !tbaa !15
  %call1 = tail call %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef null) #7
  %conf = getelementptr inbounds %struct.ctlog_store_load_ctx_st, %struct.ctlog_store_load_ctx_st* %call, i64 0, i32 1
  store %struct.conf_st* %call1, %struct.conf_st** %conf, align 8, !tbaa !18
  %cmp3 = icmp eq %struct.conf_st* %call1, null
  br i1 %cmp3, label %end, label %if.end5

if.end5:                                          ; preds = %if.end
  %call7 = tail call i32 @NCONF_load(%struct.conf_st* noundef nonnull %call1, i8* noundef %file, i64* noundef null) #7
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %end.sink.split, label %if.end10

if.end10:                                         ; preds = %if.end5
  %0 = load %struct.conf_st*, %struct.conf_st** %conf, align 8, !tbaa !18
  %call12 = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %0, i8* noundef null, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #7
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %end.sink.split, label %if.end15

if.end15:                                         ; preds = %if.end10
  %1 = bitcast %struct.ctlog_store_load_ctx_st* %call to i8*
  %call16 = tail call i32 @CONF_parse_list(i8* noundef nonnull %call12, i32 noundef 44, i32 noundef 1, i32 (i8*, i32, i8*)* noundef nonnull @ctlog_store_load_log, i8* noundef nonnull %1) #7
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %end.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %invalid_log_entries = getelementptr inbounds %struct.ctlog_store_load_ctx_st, %struct.ctlog_store_load_ctx_st* %call, i64 0, i32 2
  %2 = load i64, i64* %invalid_log_entries, align 8, !tbaa !19
  %cmp17.not = icmp eq i64 %2, 0
  br i1 %cmp17.not, label %end, label %end.sink.split

end.sink.split:                                   ; preds = %if.end15, %lor.lhs.false, %if.end10, %if.end5
  %.sink = phi i32 [ 239, %if.end5 ], [ 245, %if.end10 ], [ 251, %lor.lhs.false ], [ 251, %if.end15 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.CTLOG_STORE_load_file, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 109, i8* noundef null) #7
  br label %end

end:                                              ; preds = %end.sink.split, %lor.lhs.false, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %lor.lhs.false ], [ 0, %end.sink.split ]
  %3 = load %struct.conf_st*, %struct.conf_st** %conf, align 8, !tbaa !18
  tail call void @NCONF_free(%struct.conf_st* noundef %3) #7
  tail call fastcc void @ctlog_store_load_ctx_free(%struct.ctlog_store_load_ctx_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %ret.0, %end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ctlog_store_load_ctx_st* @ctlog_store_load_ctx_new() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 63) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ctlog_store_load_ctx_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = bitcast i8* %call to %struct.ctlog_store_load_ctx_st*
  ret %struct.ctlog_store_load_ctx_st* %0
}

declare %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef) local_unnamed_addr #2

declare i32 @NCONF_load(%struct.conf_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

declare i8* @NCONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @CONF_parse_list(i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ctlog_store_load_log(i8* noundef %log_name, i32 noundef %log_name_len, i8* nocapture noundef %arg) #0 {
entry:
  %ct_log = alloca %struct.ctlog_st*, align 8
  %0 = bitcast %struct.ctlog_st** %ct_log to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.ctlog_st* null, %struct.ctlog_st** %ct_log, align 8, !tbaa !20
  %cmp = icmp eq i8* %log_name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %log_name_len to i64
  %call = tail call i8* @CRYPTO_strndup(i8* noundef nonnull %log_name, i64 noundef %conv, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 197) #7
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %mem_err, label %if.end4

if.end4:                                          ; preds = %if.end
  %log_store = bitcast i8* %arg to %struct.ctlog_store_st**
  %1 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %log_store, align 8, !tbaa !15
  %conf = getelementptr inbounds i8, i8* %arg, i64 8
  %2 = bitcast i8* %conf to %struct.conf_st**
  %3 = load %struct.conf_st*, %struct.conf_st** %2, align 8, !tbaa !18
  %call5 = call fastcc i32 @ctlog_new_from_conf(%struct.ctlog_store_st* noundef %1, %struct.ctlog_st** noundef nonnull %ct_log, %struct.conf_st* noundef %3, i8* noundef nonnull %call) #8
  call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 202) #7
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end4
  %cmp10 = icmp eq i32 %call5, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %invalid_log_entries = getelementptr inbounds i8, i8* %arg, i64 16
  %4 = bitcast i8* %invalid_log_entries to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !19
  %inc = add i64 %5, 1
  store i64 %inc, i64* %4, align 8, !tbaa !19
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %6 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %log_store, align 8, !tbaa !15
  %logs = getelementptr inbounds %struct.ctlog_store_st, %struct.ctlog_store_st* %6, i64 0, i32 2
  %7 = load %struct.stack_st_CTLOG*, %struct.stack_st_CTLOG** %logs, align 8, !tbaa !10
  %call15 = call fastcc %struct.stack_st* @ossl_check_CTLOG_sk_type(%struct.stack_st_CTLOG* noundef %7) #8
  %8 = bitcast %struct.ctlog_st** %ct_log to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !20
  %call17 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call15, i8* noundef %9) #7
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end13.mem_err_crit_edge, label %cleanup

if.end13.mem_err_crit_edge:                       ; preds = %if.end13
  %.pre = load %struct.ctlog_st*, %struct.ctlog_st** %ct_log, align 8, !tbaa !20
  br label %mem_err

mem_err:                                          ; preds = %if.end13.mem_err_crit_edge, %if.end
  %10 = phi %struct.ctlog_st* [ %.pre, %if.end13.mem_err_crit_edge ], [ null, %if.end ]
  call void @CTLOG_free(%struct.ctlog_st* noundef %10) #8
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ctlog_store_load_log, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end4, %entry, %mem_err, %if.then12
  %retval.0 = phi i32 [ -1, %mem_err ], [ 1, %if.then12 ], [ 1, %entry ], [ %call5, %if.end4 ], [ 1, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ctlog_store_load_ctx_free(%struct.ctlog_store_load_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ctlog_store_load_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 73) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ctlog_st* @CTLOG_new_ex(%struct.evp_pkey_st* noundef %public_key, i8* noundef %name, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 64, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 270) #7
  %0 = bitcast i8* %call to %struct.ctlog_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.CTLOG_new_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %libctx1 = bitcast i8* %call to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !21
  %cmp2.not = icmp eq i8* %propq, null
  br i1 %cmp2.not, label %if.end10, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 279) #7
  %name5 = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %name5 to i8**
  store i8* %call4, i8** %1, align 8, !tbaa !11
  %propq6 = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %propq6 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !14
  %cmp7 = icmp eq i8* %3, null
  br i1 %cmp7, label %err.sink.split, label %if.end10

if.end10:                                         ; preds = %if.end, %if.then3
  %call11 = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 286) #7
  %name12 = getelementptr inbounds i8, i8* %call, i64 16
  %4 = bitcast i8* %name12 to i8**
  store i8* %call11, i8** %4, align 8, !tbaa !11
  %cmp14 = icmp eq i8* %call11, null
  br i1 %cmp14, label %err.sink.split, label %if.end16

if.end16:                                         ; preds = %if.end10
  %call17 = tail call fastcc i32 @ct_v1_log_id_from_pkey(%struct.ctlog_st* noundef nonnull %0, %struct.evp_pkey_st* noundef %public_key) #8
  %cmp18.not = icmp eq i32 %call17, 1
  br i1 %cmp18.not, label %if.end20, label %err

if.end20:                                         ; preds = %if.end16
  %public_key21 = getelementptr inbounds i8, i8* %call, i64 56
  %5 = bitcast i8* %public_key21 to %struct.evp_pkey_st**
  store %struct.evp_pkey_st* %public_key, %struct.evp_pkey_st** %5, align 8, !tbaa !13
  br label %cleanup

err.sink.split:                                   ; preds = %if.end10, %if.then3
  %.sink = phi i32 [ 281, %if.then3 ], [ 288, %if.end10 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.CTLOG_new_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #7
  br label %err

err:                                              ; preds = %err.sink.split, %if.end16
  tail call void @CTLOG_free(%struct.ctlog_st* noundef nonnull %0) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end20, %if.then
  %retval.0 = phi %struct.ctlog_st* [ null, %if.then ], [ null, %err ], [ %0, %if.end20 ]
  ret %struct.ctlog_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ct_v1_log_id_from_pkey(%struct.ctlog_st* noundef %log, %struct.evp_pkey_st* noundef %pkey) unnamed_addr #0 {
entry:
  %pkey_der = alloca i8*, align 8
  %len = alloca i32, align 4
  %0 = bitcast i8** %pkey_der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %pkey_der, align 8, !tbaa !20
  %call = call i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef %pkey, i8** noundef nonnull %pkey_der) #7
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ct_v1_log_id_from_pkey, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 113, i8* noundef null) #7
  br label %err

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.ctlog_st, %struct.ctlog_st* %log, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !21
  %propq = getelementptr inbounds %struct.ctlog_st, %struct.ctlog_st* %log, i64 0, i32 1
  %3 = load i8*, i8** %propq, align 8, !tbaa !14
  %call1 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* noundef %3) #7
  %cmp2 = icmp eq %struct.evp_md_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ct_v1_log_id_from_pkey, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 524294, i8* noundef null) #7
  br label %err

if.end4:                                          ; preds = %if.end
  %4 = load i8*, i8** %pkey_der, align 8, !tbaa !20
  %conv14 = zext i32 %call to i64
  %arraydecay = getelementptr inbounds %struct.ctlog_st, %struct.ctlog_st* %log, i64 0, i32 3, i64 0
  %call5 = call i32 @EVP_Digest(i8* noundef %4, i64 noundef %conv14, i8* noundef nonnull %arraydecay, i32* noundef nonnull %len, %struct.evp_md_st* noundef nonnull %call1, %struct.engine_st* noundef null) #7
  br label %err

err:                                              ; preds = %if.end4, %if.then3, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ %call5, %if.end4 ]
  %sha256.0 = phi %struct.evp_md_st* [ null, %if.then ], [ null, %if.then3 ], [ %call1, %if.end4 ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %sha256.0) #7
  %5 = load i8*, i8** %pkey_der, align 8, !tbaa !20
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 99) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ctlog_st* @CTLOG_new(%struct.evp_pkey_st* noundef %public_key, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ctlog_st* @CTLOG_new_ex(%struct.evp_pkey_st* noundef %public_key, i8* noundef %name, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  ret %struct.ctlog_st* %call
}

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @CTLOG_get0_name(%struct.ctlog_st* nocapture noundef readonly %log) local_unnamed_addr #4 {
entry:
  %name = getelementptr inbounds %struct.ctlog_st, %struct.ctlog_st* %log, i64 0, i32 2
  %0 = load i8*, i8** %name, align 8, !tbaa !11
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @CTLOG_get0_log_id(%struct.ctlog_st* noundef %log, i8** nocapture noundef writeonly %log_id, i64* nocapture noundef writeonly %log_id_len) local_unnamed_addr #5 {
entry:
  %arraydecay = getelementptr inbounds %struct.ctlog_st, %struct.ctlog_st* %log, i64 0, i32 3, i64 0
  store i8* %arraydecay, i8** %log_id, align 8, !tbaa !20
  store i64 32, i64* %log_id_len, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_st* @CTLOG_get0_public_key(%struct.ctlog_st* nocapture noundef readonly %log) local_unnamed_addr #4 {
entry:
  %public_key = getelementptr inbounds %struct.ctlog_st, %struct.ctlog_st* %log, i64 0, i32 4
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %public_key, align 8, !tbaa !13
  ret %struct.evp_pkey_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ctlog_st* @CTLOG_STORE_get0_log_by_id(%struct.ctlog_store_st* nocapture noundef readonly %store, i8* noundef readonly %log_id, i64 noundef %log_id_len) local_unnamed_addr #0 {
entry:
  %logs = getelementptr inbounds %struct.ctlog_store_st, %struct.ctlog_store_st* %store, i64 0, i32 2
  %0 = load %struct.stack_st_CTLOG*, %struct.stack_st_CTLOG** %logs, align 8, !tbaa !10
  %call17 = tail call fastcc %struct.stack_st* @ossl_check_const_CTLOG_sk_type(%struct.stack_st_CTLOG* noundef %0) #8
  %call118 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call17) #7
  %cmp19 = icmp sgt i32 %call118, 0
  br i1 %cmp19, label %for.body, label %cleanup8

for.cond:                                         ; preds = %for.body
  %1 = load %struct.stack_st_CTLOG*, %struct.stack_st_CTLOG** %logs, align 8, !tbaa !10
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CTLOG_sk_type(%struct.stack_st_CTLOG* noundef %1) #8
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup8, !llvm.loop !23

for.body:                                         ; preds = %entry, %for.cond
  %i.020 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %2 = load %struct.stack_st_CTLOG*, %struct.stack_st_CTLOG** %logs, align 8, !tbaa !10
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_CTLOG_sk_type(%struct.stack_st_CTLOG* noundef %2) #8
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %i.020) #7
  %log_id5 = getelementptr inbounds i8, i8* %call4, i64 24
  %call6 = tail call i32 @memcmp(i8* noundef nonnull %log_id5, i8* noundef %log_id, i64 noundef %log_id_len) #10
  %cmp7 = icmp eq i32 %call6, 0
  %inc = add nuw nsw i32 %i.020, 1
  br i1 %cmp7, label %cleanup8.split.loop.exit15, label %for.cond

cleanup8.split.loop.exit15:                       ; preds = %for.body
  %3 = bitcast i8* %call4 to %struct.ctlog_st*
  br label %cleanup8

cleanup8:                                         ; preds = %for.cond, %entry, %cleanup8.split.loop.exit15
  %retval.2 = phi %struct.ctlog_st* [ %3, %cleanup8.split.loop.exit15 ], [ null, %entry ], [ null, %for.cond ]
  ret %struct.ctlog_st* %retval.2
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CTLOG_sk_type(%struct.stack_st_CTLOG* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CTLOG* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ctlog_new_from_conf(%struct.ctlog_store_st* nocapture noundef readonly %store, %struct.ctlog_st** noundef %ct_log, %struct.conf_st* noundef %conf, i8* noundef %section) unnamed_addr #0 {
entry:
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ctlog_new_from_conf, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 111, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #7
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ctlog_new_from_conf, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 112, i8* noundef null) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %libctx = getelementptr inbounds %struct.ctlog_store_st, %struct.ctlog_store_st* %store, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %propq = getelementptr inbounds %struct.ctlog_store_st, %struct.ctlog_store_st* %store, i64 0, i32 1
  %1 = load i8*, i8** %propq, align 8, !tbaa !9
  %call5 = tail call i32 @CTLOG_new_from_base64_ex(%struct.ctlog_st** noundef %ct_log, i8* noundef nonnull %call1, i8* noundef nonnull %call, %struct.ossl_lib_ctx_st* noundef %0, i8* noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ %call5, %if.end4 ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @CTLOG_new_from_base64_ex(%struct.ctlog_st** noundef, i8* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef, i8** noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ctlog_store_st", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!5, !6, i64 16}
!11 = !{!12, !6, i64 16}
!12 = !{!"ctlog_st", !6, i64 0, !6, i64 8, !6, i64 16, !7, i64 24, !6, i64 56}
!13 = !{!12, !6, i64 56}
!14 = !{!12, !6, i64 8}
!15 = !{!16, !6, i64 0}
!16 = !{!"ctlog_store_load_ctx_st", !6, i64 0, !6, i64 8, !17, i64 16}
!17 = !{!"long", !7, i64 0}
!18 = !{!16, !6, i64 8}
!19 = !{!16, !17, i64 16}
!20 = !{!6, !6, i64 0}
!21 = !{!12, !6, i64 0}
!22 = !{!17, !17, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
