; ModuleID = 'crypto/engine/eng_list.c'
source_filename = "crypto/engine/eng_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.engine_st = type { i8*, i8*, %struct.rsa_meth_st*, %struct.dsa_method*, %struct.dh_method*, %struct.ec_key_method_st*, %struct.rand_meth_st*, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)*, %struct.ENGINE_CMD_DEFN_st*, i32, i32, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.engine_st* }
%struct.rsa_meth_st = type opaque
%struct.dsa_method = type opaque
%struct.dh_method = type opaque
%struct.ec_key_method_st = type opaque
%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_method_st = type opaque
%struct.evp_pkey_asn1_method_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ui_method_st = type opaque
%struct.ssl_st = type opaque
%struct.stack_st_X509_NAME = type opaque
%struct.x509_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.ENGINE_CMD_DEFN_st = type { i32, i8*, i8*, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque

@engine_lock_init = external global i32, align 4
@do_engine_lock_init_ossl_ret_ = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [25 x i8] c"crypto/engine/eng_list.c\00", align 1
@__func__.ENGINE_get_first = private unnamed_addr constant [17 x i8] c"ENGINE_get_first\00", align 1
@global_engine_lock = external local_unnamed_addr global i8*, align 8
@engine_list_head = internal unnamed_addr global %struct.engine_st* null, align 8
@__func__.ENGINE_get_last = private unnamed_addr constant [16 x i8] c"ENGINE_get_last\00", align 1
@engine_list_tail = internal unnamed_addr global %struct.engine_st* null, align 8
@__func__.ENGINE_get_next = private unnamed_addr constant [16 x i8] c"ENGINE_get_next\00", align 1
@__func__.ENGINE_get_prev = private unnamed_addr constant [16 x i8] c"ENGINE_get_prev\00", align 1
@__func__.ENGINE_add = private unnamed_addr constant [11 x i8] c"ENGINE_add\00", align 1
@__func__.ENGINE_remove = private unnamed_addr constant [14 x i8] c"ENGINE_remove\00", align 1
@__func__.ENGINE_by_id = private unnamed_addr constant [13 x i8] c"ENGINE_by_id\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"OPENSSL_ENGINES\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"/usr/local/lib64/engines-3\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"DIR_LOAD\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"DIR_ADD\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"LIST_ADD\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"id=%s\00", align 1
@__func__.ENGINE_up_ref = private unnamed_addr constant [14 x i8] c"ENGINE_up_ref\00", align 1
@__func__.engine_list_add = private unnamed_addr constant [16 x i8] c"engine_list_add\00", align 1
@__func__.engine_list_remove = private unnamed_addr constant [19 x i8] c"engine_list_remove\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.engine_st* @ENGINE_get_first() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @engine_lock_init, void ()* noundef nonnull @do_engine_lock_init_ossl_) #6
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @do_engine_lock_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ENGINE_get_first, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call2 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %2 = load %struct.engine_st*, %struct.engine_st** @engine_list_head, align 8, !tbaa !4
  %tobool6.not = icmp eq %struct.engine_st* %2, null
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  %struct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %2, i64 0, i32 20
  %3 = atomicrmw add i32* %struct_ref, i32 1 seq_cst, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %4 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call9 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end8, %if.then
  %retval.0 = phi %struct.engine_st* [ %2, %if.end8 ], [ null, %if.then ], [ null, %if.end ]
  ret %struct.engine_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #2

declare void @do_engine_lock_init_ossl_() #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.engine_st* @ENGINE_get_last() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @engine_lock_init, void ()* noundef nonnull @do_engine_lock_init_ossl_) #6
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @do_engine_lock_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ENGINE_get_last, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call2 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %2 = load %struct.engine_st*, %struct.engine_st** @engine_list_tail, align 8, !tbaa !4
  %tobool6.not = icmp eq %struct.engine_st* %2, null
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  %struct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %2, i64 0, i32 20
  %3 = atomicrmw add i32* %struct_ref, i32 1 seq_cst, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %4 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call9 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end8, %if.then
  %retval.0 = phi %struct.engine_st* [ %2, %if.end8 ], [ null, %if.then ], [ null, %if.end ]
  ret %struct.engine_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ENGINE_get_next, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %next = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 24
  %1 = load %struct.engine_st*, %struct.engine_st** %next, align 8, !tbaa !8
  %tobool3.not = icmp eq %struct.engine_st* %1, null
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end2
  %struct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %1, i64 0, i32 20
  %2 = atomicrmw add i32* %struct_ref, i32 1 seq_cst, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end2
  %3 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call6 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %3) #6
  %call7 = tail call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %e) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi %struct.engine_st* [ null, %if.then ], [ %1, %if.end5 ], [ null, %if.end ]
  ret %struct.engine_st* %retval.0
}

declare i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.engine_st* @ENGINE_get_prev(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ENGINE_get_prev, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %prev = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 23
  %1 = load %struct.engine_st*, %struct.engine_st** %prev, align 8, !tbaa !12
  %tobool3.not = icmp eq %struct.engine_st* %1, null
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end2
  %struct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %1, i64 0, i32 20
  %2 = atomicrmw add i32* %struct_ref, i32 1 seq_cst, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end2
  %3 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call6 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %3) #6
  %call7 = tail call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %e) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi %struct.engine_st* [ null, %if.then ], [ %1, %if.end5 ], [ null, %if.end ]
  ret %struct.engine_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_add(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.ENGINE_add, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 0
  %0 = load i8*, i8** %id, align 8, !tbaa !13
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %name = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 1
  %1 = load i8*, i8** %name, align 8, !tbaa !14
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.ENGINE_add, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 108, i8* noundef null) #6
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %2 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %2) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end4
  %call7 = tail call fastcc i32 @engine_list_add(%struct.engine_st* noundef nonnull %e) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.ENGINE_add, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 110, i8* noundef null) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %to_return.0 = phi i32 [ 1, %if.end6 ], [ 0, %if.then9 ]
  %3 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call11 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end10, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ %to_return.0, %if.end10 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @engine_list_add(%struct.engine_st* noundef %e) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %iterator.038 = load %struct.engine_st*, %struct.engine_st** @engine_list_head, align 8, !tbaa !4
  %tobool39.not = icmp eq %struct.engine_st* %iterator.038, null
  br i1 %tobool39.not, label %if.then9, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %id2 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 0
  %0 = load i8*, i8** %id2, align 8, !tbaa !13
  br label %while.body

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.engine_list_add, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %iterator.040 = phi %struct.engine_st* [ %iterator.038, %while.body.lr.ph ], [ %iterator.0, %while.body ]
  %id = getelementptr inbounds %struct.engine_st, %struct.engine_st* %iterator.040, i64 0, i32 0
  %1 = load i8*, i8** %id, align 8, !tbaa !13
  %call = tail call i32 @strcmp(i8* noundef %1, i8* noundef %0) #8
  %cmp3 = icmp ne i32 %call, 0
  %next = getelementptr inbounds %struct.engine_st, %struct.engine_st* %iterator.040, i64 0, i32 24
  %iterator.0 = load %struct.engine_st*, %struct.engine_st** %next, align 8, !tbaa !4
  %tobool = icmp ne %struct.engine_st* %iterator.0, null
  %2 = select i1 %tobool, i1 %cmp3, i1 false
  br i1 %2, label %while.body, label %while.end, !llvm.loop !15

while.end:                                        ; preds = %while.body
  br i1 %cmp3, label %if.end6, label %if.then5

if.then5:                                         ; preds = %while.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.engine_list_add, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end6:                                          ; preds = %while.end
  br i1 %tobool39.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %while.cond.preheader, %if.end6
  %3 = load %struct.engine_st*, %struct.engine_st** @engine_list_tail, align 8, !tbaa !4
  %tobool10.not = icmp eq %struct.engine_st* %3, null
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then9
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.engine_list_add, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 110, i8* noundef null) #6
  br label %cleanup

if.end12:                                         ; preds = %if.then9
  store %struct.engine_st* %e, %struct.engine_st** @engine_list_head, align 8, !tbaa !4
  %prev = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 23
  store %struct.engine_st* null, %struct.engine_st** %prev, align 8, !tbaa !12
  tail call void @engine_cleanup_add_last(void ()* noundef nonnull @engine_list_cleanup) #6
  br label %if.end22

if.else:                                          ; preds = %if.end6
  %4 = load %struct.engine_st*, %struct.engine_st** @engine_list_tail, align 8, !tbaa !4
  %cmp13 = icmp eq %struct.engine_st* %4, null
  br i1 %cmp13, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %next15 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %4, i64 0, i32 24
  %5 = load %struct.engine_st*, %struct.engine_st** %next15, align 8, !tbaa !8
  %cmp16.not = icmp eq %struct.engine_st* %5, null
  br i1 %cmp16.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false, %if.else
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.engine_list_add, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 110, i8* noundef null) #6
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  store %struct.engine_st* %e, %struct.engine_st** %next15, align 8, !tbaa !8
  %prev21 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 23
  store %struct.engine_st* %4, %struct.engine_st** %prev21, align 8, !tbaa !12
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %if.end12
  %struct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 20
  %6 = atomicrmw add i32* %struct_ref, i32 1 seq_cst, align 4
  store %struct.engine_st* %e, %struct.engine_st** @engine_list_tail, align 8, !tbaa !4
  %next23 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 24
  store %struct.engine_st* null, %struct.engine_st** %next23, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then18, %if.then11, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then11 ], [ 1, %if.end22 ], [ 0, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_remove(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ENGINE_remove, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = tail call fastcc i32 @engine_list_remove(%struct.engine_st* noundef nonnull %e) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ENGINE_remove, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 110, i8* noundef null) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2
  %to_return.0 = phi i32 [ 1, %if.end2 ], [ 0, %if.then5 ]
  %1 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call7 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %to_return.0, %if.end6 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @engine_list_remove(%struct.engine_st* noundef %e) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %if.then, label %while.cond

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.engine_list_remove, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

while.cond:                                       ; preds = %entry, %while.cond
  %iterator.0.in = phi %struct.engine_st** [ %next, %while.cond ], [ @engine_list_head, %entry ]
  %iterator.0 = load %struct.engine_st*, %struct.engine_st** %iterator.0.in, align 8, !tbaa !4
  %tobool = icmp ne %struct.engine_st* %iterator.0, null
  %cmp1 = icmp ne %struct.engine_st* %iterator.0, %e
  %0 = and i1 %tobool, %cmp1
  %next = getelementptr inbounds %struct.engine_st, %struct.engine_st* %iterator.0, i64 0, i32 24
  br i1 %0, label %while.cond, label %while.end, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %cmp2 = icmp eq %struct.engine_st* %iterator.0, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.engine_list_remove, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 105, i8* noundef null) #6
  br label %cleanup

if.end4:                                          ; preds = %while.end
  %next5 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 24
  %1 = load %struct.engine_st*, %struct.engine_st** %next5, align 8, !tbaa !8
  %tobool6.not = icmp eq %struct.engine_st* %1, null
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end4
  %prev = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 23
  %2 = load %struct.engine_st*, %struct.engine_st** %prev, align 8, !tbaa !12
  %prev9 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %1, i64 0, i32 23
  store %struct.engine_st* %2, %struct.engine_st** %prev9, align 8, !tbaa !12
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4
  %prev11 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 23
  %3 = load %struct.engine_st*, %struct.engine_st** %prev11, align 8, !tbaa !12
  %tobool12.not = icmp eq %struct.engine_st* %3, null
  br i1 %tobool12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end10
  %next16 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %3, i64 0, i32 24
  store %struct.engine_st* %1, %struct.engine_st** %next16, align 8, !tbaa !8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10
  %4 = load %struct.engine_st*, %struct.engine_st** @engine_list_head, align 8, !tbaa !4
  %cmp18 = icmp eq %struct.engine_st* %4, %e
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %5 = load %struct.engine_st*, %struct.engine_st** %next5, align 8, !tbaa !8
  store %struct.engine_st* %5, %struct.engine_st** @engine_list_head, align 8, !tbaa !4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  %6 = load %struct.engine_st*, %struct.engine_st** @engine_list_tail, align 8, !tbaa !4
  %cmp22 = icmp eq %struct.engine_st* %6, %e
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end21
  store %struct.engine_st* %3, %struct.engine_st** @engine_list_tail, align 8, !tbaa !4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21
  %call = tail call i32 @engine_free_util(%struct.engine_st* noundef nonnull %e, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.engine_st* @ENGINE_by_id(i8* noundef %id) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %id, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ENGINE_by_id, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ENGINE_load_builtin_engines() #6
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @engine_lock_init, void ()* noundef nonnull @do_engine_lock_init_ossl_) #6
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @do_engine_lock_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ENGINE_by_id, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call4 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end3
  %iterator.084 = load %struct.engine_st*, %struct.engine_st** @engine_list_head, align 8, !tbaa !4
  %tobool8.not85 = icmp eq %struct.engine_st* %iterator.084, null
  br i1 %tobool8.not85, label %if.end26, label %land.rhs

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %iterator.086 = phi %struct.engine_st* [ %iterator.0, %while.body ], [ %iterator.084, %while.cond.preheader ]
  %id9 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %iterator.086, i64 0, i32 0
  %2 = load i8*, i8** %id9, align 8, !tbaa !13
  %call10 = tail call i32 @strcmp(i8* noundef nonnull %id, i8* noundef %2) #8
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.then13, label %while.body

while.body:                                       ; preds = %land.rhs
  %next = getelementptr inbounds %struct.engine_st, %struct.engine_st* %iterator.086, i64 0, i32 24
  %iterator.0 = load %struct.engine_st*, %struct.engine_st** %next, align 8, !tbaa !4
  %tobool8.not = icmp eq %struct.engine_st* %iterator.0, null
  br i1 %tobool8.not, label %if.end26, label %land.rhs, !llvm.loop !18

if.then13:                                        ; preds = %land.rhs
  %flags = getelementptr inbounds %struct.engine_st, %struct.engine_st* %iterator.086, i64 0, i32 19
  %3 = load i32, i32* %flags, align 8, !tbaa !19
  %and = and i32 %3, 4
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.else20, label %if.then15

if.then15:                                        ; preds = %if.then13
  %call16 = tail call %struct.engine_st* @ENGINE_new() #6
  %cmp17 = icmp eq %struct.engine_st* %call16, null
  br i1 %cmp17, label %if.end26, label %if.else

if.else:                                          ; preds = %if.then15
  tail call fastcc void @engine_cpy(%struct.engine_st* noundef nonnull %call16, %struct.engine_st* noundef nonnull %iterator.086) #7
  br label %if.end22

if.else20:                                        ; preds = %if.then13
  %struct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %iterator.086, i64 0, i32 20
  %4 = atomicrmw add i32* %struct_ref, i32 1 seq_cst, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.else20
  %iterator.2 = phi %struct.engine_st* [ %iterator.086, %if.else20 ], [ %call16, %if.else ]
  %5 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call23 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %5) #6
  br label %cleanup

if.end26:                                         ; preds = %while.body, %while.cond.preheader, %if.then15
  %6 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call2381 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %6) #6
  %call27 = tail call i32 @strcmp(i8* noundef nonnull %id, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %notfound, label %if.then29

if.then29:                                        ; preds = %if.end26
  %call30 = tail call i8* @ossl_safe_getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #6
  %cmp31 = icmp eq i8* %call30, null
  %spec.store.select = select i1 %cmp31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %call30
  %call34 = tail call %struct.engine_st* @ENGINE_by_id(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #7
  %tobool35.not = icmp eq %struct.engine_st* %call34, null
  br i1 %tobool35.not, label %notfound, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then29
  %call36 = tail call i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef nonnull %call34, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %id, i32 noundef 0) #6
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %notfound, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false
  %call39 = tail call i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef nonnull %call34, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef 0) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %notfound, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  %call42 = tail call i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef nonnull %call34, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* noundef %spec.store.select, i32 noundef 0) #6
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %notfound, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  %call45 = tail call i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef nonnull %call34, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef 0) #6
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %notfound, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %call48 = tail call i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef nonnull %call34, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* noundef null, i32 noundef 0) #6
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %notfound, label %cleanup

notfound:                                         ; preds = %if.end26, %if.then29, %lor.lhs.false, %lor.lhs.false38, %lor.lhs.false41, %lor.lhs.false44, %lor.lhs.false47
  %iterator.3 = phi %struct.engine_st* [ %call34, %lor.lhs.false47 ], [ %call34, %lor.lhs.false44 ], [ %call34, %lor.lhs.false41 ], [ %call34, %lor.lhs.false38 ], [ %call34, %lor.lhs.false ], [ null, %if.then29 ], [ null, %if.end26 ]
  %call53 = tail call i32 @ENGINE_free(%struct.engine_st* noundef %iterator.3) #6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ENGINE_by_id, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 116, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %id) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %lor.lhs.false47, %if.end3, %notfound, %if.then2, %if.then
  %retval.0 = phi %struct.engine_st* [ null, %if.then ], [ null, %notfound ], [ null, %if.then2 ], [ null, %if.end3 ], [ %iterator.2, %if.end22 ], [ %call34, %lor.lhs.false47 ]
  ret %struct.engine_st* %retval.0
}

declare void @ENGINE_load_builtin_engines() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.engine_st* @ENGINE_new() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @engine_cpy(%struct.engine_st* nocapture noundef writeonly %dest, %struct.engine_st* nocapture noundef readonly %src) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.engine_st* %src to <2 x i8*>*
  %1 = load <2 x i8*>, <2 x i8*>* %0, align 8, !tbaa !4
  %2 = bitcast %struct.engine_st* %dest to <2 x i8*>*
  store <2 x i8*> %1, <2 x i8*>* %2, align 8, !tbaa !4
  %rsa_meth = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 2
  %3 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %rsa_meth, align 8, !tbaa !20
  %rsa_meth3 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 2
  store %struct.rsa_meth_st* %3, %struct.rsa_meth_st** %rsa_meth3, align 8, !tbaa !20
  %dsa_meth = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 3
  %4 = load %struct.dsa_method*, %struct.dsa_method** %dsa_meth, align 8, !tbaa !21
  %dsa_meth4 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 3
  store %struct.dsa_method* %4, %struct.dsa_method** %dsa_meth4, align 8, !tbaa !21
  %dh_meth = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 4
  %5 = load %struct.dh_method*, %struct.dh_method** %dh_meth, align 8, !tbaa !22
  %dh_meth5 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 4
  store %struct.dh_method* %5, %struct.dh_method** %dh_meth5, align 8, !tbaa !22
  %ec_meth = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 5
  %6 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %ec_meth, align 8, !tbaa !23
  %ec_meth6 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 5
  store %struct.ec_key_method_st* %6, %struct.ec_key_method_st** %ec_meth6, align 8, !tbaa !23
  %rand_meth = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 6
  %7 = load %struct.rand_meth_st*, %struct.rand_meth_st** %rand_meth, align 8, !tbaa !24
  %rand_meth7 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 6
  store %struct.rand_meth_st* %7, %struct.rand_meth_st** %rand_meth7, align 8, !tbaa !24
  %ciphers = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 7
  %8 = load i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)** %ciphers, align 8, !tbaa !25
  %ciphers8 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 7
  store i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* %8, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)** %ciphers8, align 8, !tbaa !25
  %digests = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 8
  %9 = load i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)** %digests, align 8, !tbaa !26
  %digests9 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 8
  store i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)* %9, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)** %digests9, align 8, !tbaa !26
  %pkey_meths = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 9
  %10 = load i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)** %pkey_meths, align 8, !tbaa !27
  %pkey_meths10 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 9
  store i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* %10, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)** %pkey_meths10, align 8, !tbaa !27
  %destroy = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 11
  %destroy11 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 11
  %11 = bitcast i32 (%struct.engine_st*)** %destroy to <2 x i32 (%struct.engine_st*)*>*
  %12 = load <2 x i32 (%struct.engine_st*)*>, <2 x i32 (%struct.engine_st*)*>* %11, align 8, !tbaa !4
  %13 = bitcast i32 (%struct.engine_st*)** %destroy11 to <2 x i32 (%struct.engine_st*)*>*
  store <2 x i32 (%struct.engine_st*)*> %12, <2 x i32 (%struct.engine_st*)*>* %13, align 8, !tbaa !4
  %finish = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 13
  %14 = load i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)** %finish, align 8, !tbaa !28
  %finish13 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 13
  store i32 (%struct.engine_st*)* %14, i32 (%struct.engine_st*)** %finish13, align 8, !tbaa !28
  %ctrl = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 14
  %15 = load i32 (%struct.engine_st*, i32, i64, i8*, void ()*)*, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)** %ctrl, align 8, !tbaa !29
  %ctrl14 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 14
  store i32 (%struct.engine_st*, i32, i64, i8*, void ()*)* %15, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)** %ctrl14, align 8, !tbaa !29
  %load_privkey = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 15
  %load_privkey15 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 15
  %16 = bitcast %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)** %load_privkey to <2 x %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*>*
  %17 = load <2 x %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*>, <2 x %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*>* %16, align 8, !tbaa !4
  %18 = bitcast %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)** %load_privkey15 to <2 x %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*>*
  store <2 x %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*> %17, <2 x %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*>* %18, align 8, !tbaa !4
  %cmd_defns = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 18
  %19 = load %struct.ENGINE_CMD_DEFN_st*, %struct.ENGINE_CMD_DEFN_st** %cmd_defns, align 8, !tbaa !30
  %cmd_defns17 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 18
  store %struct.ENGINE_CMD_DEFN_st* %19, %struct.ENGINE_CMD_DEFN_st** %cmd_defns17, align 8, !tbaa !30
  %flags = getelementptr inbounds %struct.engine_st, %struct.engine_st* %src, i64 0, i32 19
  %20 = load i32, i32* %flags, align 8, !tbaa !19
  %flags18 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %dest, i64 0, i32 19
  store i32 %20, i32* %flags18, align 8, !tbaa !19
  ret void
}

declare i8* @ossl_safe_getenv(i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_up_ref(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 352, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ENGINE_up_ref, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %struct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 20
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %struct_ref, i32* noundef nonnull %i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #5 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !31
  ret void
}

declare void @engine_cleanup_add_last(void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @engine_list_cleanup() #0 {
entry:
  %iterator.03 = load %struct.engine_st*, %struct.engine_st** @engine_list_head, align 8, !tbaa !4
  %cmp.not4 = icmp eq %struct.engine_st* %iterator.03, null
  br i1 %cmp.not4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %iterator.05 = phi %struct.engine_st* [ %iterator.0, %while.body ], [ %iterator.03, %entry ]
  %call = tail call i32 @ENGINE_remove(%struct.engine_st* noundef nonnull %iterator.05) #7
  %iterator.0 = load %struct.engine_st*, %struct.engine_st** @engine_list_head, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.engine_st* %iterator.0, null
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !32

while.end:                                        ; preds = %while.body, %entry
  ret void
}

declare i32 @engine_free_util(%struct.engine_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nounwind }

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
!8 = !{!9, !5, i64 192}
!9 = !{!"engine_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !10, i64 152, !6, i64 156, !10, i64 160, !11, i64 168, !5, i64 184, !5, i64 192}
!10 = !{!"int", !6, i64 0}
!11 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!12 = !{!9, !5, i64 184}
!13 = !{!9, !5, i64 0}
!14 = !{!9, !5, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = !{!9, !10, i64 152}
!20 = !{!9, !5, i64 16}
!21 = !{!9, !5, i64 24}
!22 = !{!9, !5, i64 32}
!23 = !{!9, !5, i64 40}
!24 = !{!9, !5, i64 48}
!25 = !{!9, !5, i64 56}
!26 = !{!9, !5, i64 64}
!27 = !{!9, !5, i64 72}
!28 = !{!9, !5, i64 104}
!29 = !{!9, !5, i64 112}
!30 = !{!9, !5, i64 144}
!31 = !{!10, !10, i64 0}
!32 = distinct !{!32, !16}
