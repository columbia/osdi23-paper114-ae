; ModuleID = 'crypto/ex_data.c'
source_filename = "crypto/ex_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_ex_data_global_st = type { i8*, [18 x %struct.ex_callbacks_st] }
%struct.ex_callbacks_st = type { %struct.stack_st_EX_CALLBACK* }
%struct.stack_st_EX_CALLBACK = type opaque
%struct.stack_st = type opaque
%struct.ex_callback_st = type { i64, i8*, i32, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)*, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)*, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ex_callback_entry = type { %struct.ex_callback_st*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"crypto/ex_data.c\00", align 1
@__func__.ossl_crypto_get_ex_new_index_ex = private unnamed_addr constant [32 x i8] c"ossl_crypto_get_ex_new_index_ex\00", align 1
@__func__.ossl_crypto_new_ex_data_ex = private unnamed_addr constant [27 x i8] c"ossl_crypto_new_ex_data_ex\00", align 1
@__func__.CRYPTO_dup_ex_data = private unnamed_addr constant [19 x i8] c"CRYPTO_dup_ex_data\00", align 1
@__func__.CRYPTO_set_ex_data = private unnamed_addr constant [19 x i8] c"CRYPTO_set_ex_data\00", align 1
@__func__.get_and_lock = private unnamed_addr constant [13 x i8] c"get_and_lock\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_do_ex_data_init(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_ex_data_global_st* @ossl_lib_ctx_get_ex_data_global(%struct.ossl_lib_ctx_st* noundef %ctx) #5
  %cmp = icmp eq %struct.ossl_ex_data_global_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #5
  %ex_data_lock = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 0
  store i8* %call1, i8** %ex_data_lock, align 8, !tbaa !4
  %cmp3 = icmp ne i8* %call1, null
  %conv = zext i1 %cmp3 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ossl_ex_data_global_st* @ossl_lib_ctx_get_ex_data_global(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_crypto_cleanup_all_ex_data_int(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_ex_data_global_st* @ossl_lib_ctx_get_ex_data_global(%struct.ossl_lib_ctx_st* noundef %ctx) #5
  %cmp = icmp eq %struct.ossl_ex_data_global_st* %call, null
  br i1 %cmp, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %meth = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 0, i32 0
  %0 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %0) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %meth.1 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 1, i32 0
  %1 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.1, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %1) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.1, align 8, !tbaa !9
  %meth.2 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 2, i32 0
  %2 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.2, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %2) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.2, align 8, !tbaa !9
  %meth.3 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 3, i32 0
  %3 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.3, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %3) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.3, align 8, !tbaa !9
  %meth.4 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 4, i32 0
  %4 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.4, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %4) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.4, align 8, !tbaa !9
  %meth.5 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 5, i32 0
  %5 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.5, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %5) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.5, align 8, !tbaa !9
  %meth.6 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 6, i32 0
  %6 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.6, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %6) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.6, align 8, !tbaa !9
  %meth.7 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 7, i32 0
  %7 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.7, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %7) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.7, align 8, !tbaa !9
  %meth.8 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 8, i32 0
  %8 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.8, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %8) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.8, align 8, !tbaa !9
  %meth.9 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 9, i32 0
  %9 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.9, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %9) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.9, align 8, !tbaa !9
  %meth.10 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 10, i32 0
  %10 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.10, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %10) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.10, align 8, !tbaa !9
  %meth.11 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 11, i32 0
  %11 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.11, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %11) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.11, align 8, !tbaa !9
  %meth.12 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 12, i32 0
  %12 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.12, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %12) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.12, align 8, !tbaa !9
  %meth.13 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 13, i32 0
  %13 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.13, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %13) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.13, align 8, !tbaa !9
  %meth.14 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 14, i32 0
  %14 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.14, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %14) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.14, align 8, !tbaa !9
  %meth.15 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 15, i32 0
  %15 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.15, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %15) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.15, align 8, !tbaa !9
  %meth.16 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 16, i32 0
  %16 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.16, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %16) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.16, align 8, !tbaa !9
  %meth.17 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 1, i64 17, i32 0
  %17 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth.17, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %17) #6
  store %struct.stack_st_EX_CALLBACK* null, %struct.stack_st_EX_CALLBACK** %meth.17, align 8, !tbaa !9
  %ex_data_lock = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 0
  %18 = load i8*, i8** %ex_data_lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %18) #5
  store i8* null, i8** %ex_data_lock, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.body.preheader
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EX_CALLBACK_pop_free(%struct.stack_st_EX_CALLBACK* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EX_CALLBACK* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ex_callback_st*)* @cleanup_cb to void (i8*)*)) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cleanup_cb(%struct.ex_callback_st* noundef %funcs) #0 {
entry:
  %0 = bitcast %struct.ex_callback_st* %funcs to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 55) #5
  ret void
}

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_crypto_free_ex_index_ex(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %class_index, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_ex_data_global_st* @ossl_lib_ctx_get_ex_data_global(%struct.ossl_lib_ctx_st* noundef %ctx) #5
  %cmp = icmp eq %struct.ossl_ex_data_global_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.ex_callbacks_st* @get_and_lock(%struct.ossl_ex_data_global_st* noundef nonnull %call, i32 noundef %class_index) #6
  %cmp2 = icmp eq %struct.ex_callbacks_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %idx, 0
  br i1 %cmp5, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %meth = getelementptr inbounds %struct.ex_callbacks_st, %struct.ex_callbacks_st* %call1, i64 0, i32 0
  %0 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %call6 = tail call fastcc i32 @sk_EX_CALLBACK_num(%struct.stack_st_EX_CALLBACK* noundef %0) #6
  %cmp7.not = icmp sgt i32 %call6, %idx
  br i1 %cmp7.not, label %if.end9, label %err

if.end9:                                          ; preds = %lor.lhs.false
  %1 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %call11 = tail call fastcc %struct.ex_callback_st* @sk_EX_CALLBACK_value(%struct.stack_st_EX_CALLBACK* noundef %1, i32 noundef %idx) #6
  %cmp12 = icmp eq %struct.ex_callback_st* %call11, null
  br i1 %cmp12, label %err, label %if.end14

if.end14:                                         ; preds = %if.end9
  %new_func = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %call11, i64 0, i32 3
  store void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* @dummy_new, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %new_func, align 8, !tbaa !11
  %dup_func = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %call11, i64 0, i32 5
  store i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* @dummy_dup, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)** %dup_func, align 8, !tbaa !15
  %free_func = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %call11, i64 0, i32 4
  store void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* @dummy_free, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %free_func, align 8, !tbaa !16
  br label %err

err:                                              ; preds = %if.end9, %if.end4, %lor.lhs.false, %if.end14
  %toret.0 = phi i32 [ 0, %if.end4 ], [ 0, %lor.lhs.false ], [ 0, %if.end9 ], [ 1, %if.end14 ]
  %ex_data_lock = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 0
  %2 = load i8*, i8** %ex_data_lock, align 8, !tbaa !4
  %call15 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err
  %retval.0 = phi i32 [ %toret.0, %err ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ex_callbacks_st* @get_and_lock(%struct.ossl_ex_data_global_st* noundef readonly %global, i32 noundef %class_index) unnamed_addr #0 {
entry:
  %0 = icmp ugt i32 %class_index, 17
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.get_and_lock, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %ex_data_lock = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %global, i64 0, i32 0
  %1 = load i8*, i8** %ex_data_lock, align 8, !tbaa !4
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef nonnull %1) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end4
  %idxprom13 = zext i32 %class_index to i64
  %arrayidx = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %global, i64 0, i32 1, i64 %idxprom13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %if.end7, %if.then
  %retval.0 = phi %struct.ex_callbacks_st* [ null, %if.then ], [ %arrayidx, %if.end7 ], [ null, %if.end ], [ null, %if.end4 ]
  ret %struct.ex_callbacks_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EX_CALLBACK_num(%struct.stack_st_EX_CALLBACK* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EX_CALLBACK* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ex_callback_st* @sk_EX_CALLBACK_value(%struct.stack_st_EX_CALLBACK* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EX_CALLBACK* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  %1 = bitcast i8* %call to %struct.ex_callback_st*
  ret %struct.ex_callback_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @dummy_new(i8* nocapture noundef %parent, i8* nocapture noundef %ptr, %struct.crypto_ex_data_st* nocapture noundef %ad, i32 noundef %idx, i64 noundef %argl, i8* nocapture noundef %argp) #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dummy_dup(%struct.crypto_ex_data_st* nocapture noundef readnone %to, %struct.crypto_ex_data_st* nocapture noundef readnone %from, i8** nocapture noundef readnone %from_d, i32 noundef %idx, i64 noundef %argl, i8* nocapture noundef readnone %argp) #3 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @dummy_free(i8* nocapture noundef %parent, i8* nocapture noundef %ptr, %struct.crypto_ex_data_st* nocapture noundef %ad, i32 noundef %idx, i64 noundef %argl, i8* nocapture noundef %argp) #3 {
entry:
  ret void
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_free_ex_index(i32 noundef %class_index, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_crypto_free_ex_index_ex(%struct.ossl_lib_ctx_st* noundef null, i32 noundef %class_index, i32 noundef %idx) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_crypto_get_ex_new_index_ex(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %class_index, i64 noundef %argl, i8* noundef %argp, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef %new_func, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef %dup_func, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef %free_func, i32 noundef %priority) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_ex_data_global_st* @ossl_lib_ctx_get_ex_data_global(%struct.ossl_lib_ctx_st* noundef %ctx) #5
  %cmp = icmp eq %struct.ossl_ex_data_global_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.ex_callbacks_st* @get_and_lock(%struct.ossl_ex_data_global_st* noundef nonnull %call, i32 noundef %class_index) #6
  %cmp2 = icmp eq %struct.ex_callbacks_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %meth = getelementptr inbounds %struct.ex_callbacks_st, %struct.ex_callbacks_st* %call1, i64 0, i32 0
  %0 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %cmp5 = icmp eq %struct.stack_st_EX_CALLBACK* %0, null
  br i1 %cmp5, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.end4
  %call7 = tail call fastcc %struct.stack_st_EX_CALLBACK* @sk_EX_CALLBACK_new_null() #6
  store %struct.stack_st_EX_CALLBACK* %call7, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %cmp10 = icmp eq %struct.stack_st_EX_CALLBACK* %call7, null
  br i1 %cmp10, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then6
  %call12 = tail call fastcc i32 @sk_EX_CALLBACK_push(%struct.stack_st_EX_CALLBACK* noundef nonnull %call7) #6
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %lor.lhs.false, %if.then6
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_crypto_get_ex_new_index_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end15:                                         ; preds = %lor.lhs.false, %if.end4
  %call16 = tail call i8* @CRYPTO_malloc(i64 noundef 48, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 171) #5
  %1 = bitcast i8* %call16 to %struct.ex_callback_st*
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_crypto_get_ex_new_index_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end19:                                         ; preds = %if.end15
  %argl20 = bitcast i8* %call16 to i64*
  store i64 %argl, i64* %argl20, align 8, !tbaa !17
  %argp21 = getelementptr inbounds i8, i8* %call16, i64 8
  %2 = bitcast i8* %argp21 to i8**
  store i8* %argp, i8** %2, align 8, !tbaa !18
  %new_func22 = getelementptr inbounds i8, i8* %call16, i64 24
  %3 = bitcast i8* %new_func22 to void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)**
  store void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* %new_func, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %3, align 8, !tbaa !11
  %dup_func23 = getelementptr inbounds i8, i8* %call16, i64 40
  %4 = bitcast i8* %dup_func23 to i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)**
  store i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* %dup_func, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)** %4, align 8, !tbaa !15
  %free_func24 = getelementptr inbounds i8, i8* %call16, i64 32
  %5 = bitcast i8* %free_func24 to void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)**
  store void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* %free_func, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %5, align 8, !tbaa !16
  %priority25 = getelementptr inbounds i8, i8* %call16, i64 16
  %6 = bitcast i8* %priority25 to i32*
  store i32 %priority, i32* %6, align 8, !tbaa !19
  %7 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %call27 = tail call fastcc i32 @sk_EX_CALLBACK_push(%struct.stack_st_EX_CALLBACK* noundef %7) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end19
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_crypto_get_ex_new_index_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #5
  tail call void @CRYPTO_free(i8* noundef nonnull %call16, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 185) #5
  br label %err

if.end30:                                         ; preds = %if.end19
  %8 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %call32 = tail call fastcc i32 @sk_EX_CALLBACK_num(%struct.stack_st_EX_CALLBACK* noundef %8) #6
  %sub = add nsw i32 %call32, -1
  %9 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  tail call fastcc void @sk_EX_CALLBACK_set(%struct.stack_st_EX_CALLBACK* noundef %9, i32 noundef %sub, %struct.ex_callback_st* noundef nonnull %1) #6
  br label %err

err:                                              ; preds = %if.end30, %if.then29, %if.then18, %if.then13
  %toret.0 = phi i32 [ -1, %if.then13 ], [ -1, %if.then18 ], [ %sub, %if.end30 ], [ -1, %if.then29 ]
  %ex_data_lock = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 0
  %10 = load i8*, i8** %ex_data_lock, align 8, !tbaa !4
  %call35 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err
  %retval.0 = phi i32 [ %toret.0, %err ], [ -1, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EX_CALLBACK* @sk_EX_CALLBACK_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EX_CALLBACK*
  ret %struct.stack_st_EX_CALLBACK* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EX_CALLBACK_push(%struct.stack_st_EX_CALLBACK* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EX_CALLBACK* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef null) #5
  ret i32 %call
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EX_CALLBACK_set(%struct.stack_st_EX_CALLBACK* noundef %sk, i32 noundef %idx, %struct.ex_callback_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EX_CALLBACK* %sk to %struct.stack_st*
  %1 = bitcast %struct.ex_callback_st* %ptr to i8*
  %call = tail call i8* @OPENSSL_sk_set(%struct.stack_st* noundef %0, i32 noundef %idx, i8* noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_get_ex_new_index(i32 noundef %class_index, i64 noundef %argl, i8* noundef %argp, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef %new_func, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef %dup_func, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef %free_func) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_crypto_get_ex_new_index_ex(%struct.ossl_lib_ctx_st* noundef null, i32 noundef %class_index, i64 noundef %argl, i8* noundef %argp, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef %new_func, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef %dup_func, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef %free_func, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_crypto_new_ex_data_ex(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %class_index, i8* noundef %obj, %struct.crypto_ex_data_st* noundef %ad) local_unnamed_addr #0 {
entry:
  %stack = alloca [10 x %struct.ex_callback_st*], align 16
  %0 = bitcast [10 x %struct.ex_callback_st*]* %stack to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #7
  %call = tail call %struct.ossl_ex_data_global_st* @ossl_lib_ctx_get_ex_data_global(%struct.ossl_lib_ctx_st* noundef %ctx) #5
  %cmp = icmp eq %struct.ossl_ex_data_global_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.ex_callbacks_st* @get_and_lock(%struct.ossl_ex_data_global_st* noundef nonnull %call, i32 noundef %class_index) #6
  %cmp2 = icmp eq %struct.ex_callbacks_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %ctx5 = getelementptr inbounds %struct.crypto_ex_data_st, %struct.crypto_ex_data_st* %ad, i64 0, i32 0
  store %struct.ossl_lib_ctx_st* %ctx, %struct.ossl_lib_ctx_st** %ctx5, align 8, !tbaa !20
  %sk = getelementptr inbounds %struct.crypto_ex_data_st, %struct.crypto_ex_data_st* %ad, i64 0, i32 1
  store %struct.stack_st_void* null, %struct.stack_st_void** %sk, align 8, !tbaa !22
  %meth = getelementptr inbounds %struct.ex_callbacks_st, %struct.ex_callbacks_st* %call1, i64 0, i32 0
  %1 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %call6 = tail call fastcc i32 @sk_EX_CALLBACK_num(%struct.stack_st_EX_CALLBACK* noundef %1) #6
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end21

if.then8:                                         ; preds = %if.end4
  %cmp9 = icmp ult i32 %call6, 10
  br i1 %cmp9, label %if.end12.thread, label %if.end12

if.end12.thread:                                  ; preds = %if.then8
  %arraydecay = getelementptr inbounds [10 x %struct.ex_callback_st*], [10 x %struct.ex_callback_st*]* %stack, i64 0, i64 0
  br label %for.body.preheader

if.end12:                                         ; preds = %if.then8
  %conv106 = zext i32 %call6 to i64
  %mul = shl nuw nsw i64 %conv106, 3
  %call11 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 235) #5
  %2 = bitcast i8* %call11 to %struct.ex_callback_st**
  %cmp13.not = icmp eq i8* %call11, null
  br i1 %cmp13.not, label %if.end21, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end12, %if.end12.thread
  %storage.0120 = phi %struct.ex_callback_st** [ %arraydecay, %if.end12.thread ], [ %2, %if.end12 ]
  %wide.trip.count = zext i32 %call6 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %3 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %4 = trunc i64 %indvars.iv to i32
  %call19 = call fastcc %struct.ex_callback_st* @sk_EX_CALLBACK_value(%struct.stack_st_EX_CALLBACK* noundef %3, i32 noundef %4) #6
  %arrayidx = getelementptr inbounds %struct.ex_callback_st*, %struct.ex_callback_st** %storage.0120, i64 %indvars.iv
  store %struct.ex_callback_st* %call19, %struct.ex_callback_st** %arrayidx, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end21, label %for.body, !llvm.loop !24

if.end21:                                         ; preds = %for.body, %if.end12, %if.end4
  %storage.1 = phi %struct.ex_callback_st** [ null, %if.end12 ], [ null, %if.end4 ], [ %storage.0120, %for.body ]
  %ex_data_lock = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 0
  %5 = load i8*, i8** %ex_data_lock, align 8, !tbaa !4
  %call22 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %5) #5
  %cmp25 = icmp eq %struct.ex_callback_st** %storage.1, null
  %or.cond = select i1 %cmp7, i1 %cmp25, i1 false
  br i1 %or.cond, label %if.then27, label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %if.end21
  br i1 %cmp7, label %for.body32.preheader, label %for.end54

for.body32.preheader:                             ; preds = %for.cond29.preheader
  %wide.trip.count116 = zext i32 %call6 to i64
  br label %for.body32

if.then27:                                        ; preds = %if.end21
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_crypto_new_ex_data_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

for.body32:                                       ; preds = %for.body32.preheader, %for.inc52
  %indvars.iv113 = phi i64 [ 0, %for.body32.preheader ], [ %indvars.iv.next114, %for.inc52 ]
  %arrayidx34 = getelementptr inbounds %struct.ex_callback_st*, %struct.ex_callback_st** %storage.1, i64 %indvars.iv113
  %6 = load %struct.ex_callback_st*, %struct.ex_callback_st** %arrayidx34, align 8, !tbaa !23
  %cmp35.not = icmp eq %struct.ex_callback_st* %6, null
  br i1 %cmp35.not, label %for.inc52, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %for.body32
  %new_func = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %6, i64 0, i32 3
  %7 = load void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)*, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %new_func, align 8, !tbaa !11
  %cmp40.not = icmp eq void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* %7, null
  br i1 %cmp40.not, label %for.inc52, label %if.then42

if.then42:                                        ; preds = %land.lhs.true37
  %8 = trunc i64 %indvars.iv113 to i32
  %call43 = call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %ad, i32 noundef %8) #6
  %9 = load %struct.ex_callback_st*, %struct.ex_callback_st** %arrayidx34, align 8, !tbaa !23
  %new_func46 = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %9, i64 0, i32 3
  %10 = load void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)*, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %new_func46, align 8, !tbaa !11
  %argl = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %9, i64 0, i32 0
  %11 = load i64, i64* %argl, align 8, !tbaa !17
  %argp = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %9, i64 0, i32 1
  %12 = load i8*, i8** %argp, align 8, !tbaa !18
  call void %10(i8* noundef %obj, i8* noundef %call43, %struct.crypto_ex_data_st* noundef %ad, i32 noundef %8, i64 noundef %11, i8* noundef %12) #5
  br label %for.inc52

for.inc52:                                        ; preds = %for.body32, %land.lhs.true37, %if.then42
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %for.end54, label %for.body32, !llvm.loop !26

for.end54:                                        ; preds = %for.inc52, %for.cond29.preheader
  %arraydecay55 = getelementptr inbounds [10 x %struct.ex_callback_st*], [10 x %struct.ex_callback_st*]* %stack, i64 0, i64 0
  %cmp56.not = icmp eq %struct.ex_callback_st** %storage.1, %arraydecay55
  br i1 %cmp56.not, label %cleanup, label %if.then58

if.then58:                                        ; preds = %for.end54
  %13 = bitcast %struct.ex_callback_st** %storage.1 to i8*
  call void @CRYPTO_free(i8* noundef %13, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 254) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end54, %if.then58, %if.end, %entry, %if.then27
  %retval.0 = phi i32 [ 0, %if.then27 ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.then58 ], [ 1, %for.end54 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* nocapture noundef readonly %ad, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %sk = getelementptr inbounds %struct.crypto_ex_data_st, %struct.crypto_ex_data_st* %ad, i64 0, i32 1
  %0 = load %struct.stack_st_void*, %struct.stack_st_void** %sk, align 8, !tbaa !22
  %cmp = icmp eq %struct.stack_st_void* %0, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_void_sk_type(%struct.stack_st_void* noundef nonnull %0) #6
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp3.not = icmp sgt i32 %call2, %idx
  br i1 %cmp3.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %1 = load %struct.stack_st_void*, %struct.stack_st_void** %sk, align 8, !tbaa !22
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_void_sk_type(%struct.stack_st_void* noundef %1) #6
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call5, i32 noundef %idx) #5
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i8* [ %call6, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_new_ex_data(i32 noundef %class_index, i8* noundef %obj, %struct.crypto_ex_data_st* noundef %ad) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_crypto_new_ex_data_ex(%struct.ossl_lib_ctx_st* noundef null, i32 noundef %class_index, i8* noundef %obj, %struct.crypto_ex_data_st* noundef %ad) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_dup_ex_data(i32 noundef %class_index, %struct.crypto_ex_data_st* noundef %to, %struct.crypto_ex_data_st* noundef %from) local_unnamed_addr #0 {
entry:
  %ptr = alloca i8*, align 8
  %stack = alloca [10 x %struct.ex_callback_st*], align 16
  %0 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast [10 x %struct.ex_callback_st*]* %stack to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #7
  %ctx = getelementptr inbounds %struct.crypto_ex_data_st, %struct.crypto_ex_data_st* %from, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !20
  %ctx1 = getelementptr inbounds %struct.crypto_ex_data_st, %struct.crypto_ex_data_st* %to, i64 0, i32 0
  store %struct.ossl_lib_ctx_st* %2, %struct.ossl_lib_ctx_st** %ctx1, align 8, !tbaa !20
  %sk = getelementptr inbounds %struct.crypto_ex_data_st, %struct.crypto_ex_data_st* %from, i64 0, i32 1
  %3 = load %struct.stack_st_void*, %struct.stack_st_void** %sk, align 8, !tbaa !22
  %cmp = icmp eq %struct.stack_st_void* %3, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !20
  %call = tail call %struct.ossl_ex_data_global_st* @ossl_lib_ctx_get_ex_data_global(%struct.ossl_lib_ctx_st* noundef %4) #5
  %cmp3 = icmp eq %struct.ossl_ex_data_global_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc %struct.ex_callbacks_st* @get_and_lock(%struct.ossl_ex_data_global_st* noundef nonnull %call, i32 noundef %class_index) #6
  %cmp7 = icmp eq %struct.ex_callbacks_st* %call6, null
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end5
  %meth = getelementptr inbounds %struct.ex_callbacks_st, %struct.ex_callbacks_st* %call6, i64 0, i32 0
  %5 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %call10 = tail call fastcc i32 @sk_EX_CALLBACK_num(%struct.stack_st_EX_CALLBACK* noundef %5) #6
  %6 = load %struct.stack_st_void*, %struct.stack_st_void** %sk, align 8, !tbaa !22
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_const_void_sk_type(%struct.stack_st_void* noundef %6) #6
  %call13 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call12) #5
  %cmp14 = icmp slt i32 %call13, %call10
  %spec.select = select i1 %cmp14, i32 %call13, i32 %call10
  %cmp17 = icmp sgt i32 %spec.select, 0
  br i1 %cmp17, label %if.then18, label %if.end31

if.then18:                                        ; preds = %if.end9
  %cmp19 = icmp ult i32 %spec.select, 10
  br i1 %cmp19, label %if.end22.thread, label %if.end22

if.end22.thread:                                  ; preds = %if.then18
  %arraydecay = getelementptr inbounds [10 x %struct.ex_callback_st*], [10 x %struct.ex_callback_st*]* %stack, i64 0, i64 0
  br label %for.body.preheader

if.end22:                                         ; preds = %if.then18
  %conv148 = zext i32 %spec.select to i64
  %mul = shl nuw nsw i64 %conv148, 3
  %call21 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 299) #5
  %7 = bitcast i8* %call21 to %struct.ex_callback_st**
  %cmp23.not = icmp eq i8* %call21, null
  br i1 %cmp23.not, label %if.end36.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end22, %if.end22.thread
  %storage.0163 = phi %struct.ex_callback_st** [ %arraydecay, %if.end22.thread ], [ %7, %if.end22 ]
  %wide.trip.count = zext i32 %spec.select to i64
  br label %for.body

if.end36.thread:                                  ; preds = %if.end22
  %ex_data_lock142 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 0
  %8 = load i8*, i8** %ex_data_lock142, align 8, !tbaa !4
  %call32143 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %8) #5
  br label %if.then39

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %9 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %10 = trunc i64 %indvars.iv to i32
  %call29 = call fastcc %struct.ex_callback_st* @sk_EX_CALLBACK_value(%struct.stack_st_EX_CALLBACK* noundef %9, i32 noundef %10) #6
  %arrayidx = getelementptr inbounds %struct.ex_callback_st*, %struct.ex_callback_st** %storage.0163, i64 %indvars.iv
  store %struct.ex_callback_st* %call29, %struct.ex_callback_st** %arrayidx, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end31, label %for.body, !llvm.loop !27

if.end31:                                         ; preds = %for.body, %if.end9
  %storage.1 = phi %struct.ex_callback_st** [ null, %if.end9 ], [ %storage.0163, %for.body ]
  %ex_data_lock = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 0
  %11 = load i8*, i8** %ex_data_lock, align 8, !tbaa !4
  %call32 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %11) #5
  %cmp33 = icmp eq i32 %spec.select, 0
  br i1 %cmp33, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.end31
  %cmp37 = icmp eq %struct.ex_callback_st** %storage.1, null
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36.thread, %if.end36
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.CRYPTO_dup_ex_data, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %sub = add nsw i32 %spec.select, -1
  %call42 = call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %to, i32 noundef %sub) #6
  %call43 = call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef %to, i32 noundef %sub, i8* noundef %call42) #6
  %tobool.not = icmp eq i32 %call43, 0
  %cmp17.not = xor i1 %cmp17, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp17.not
  %not.tobool.not = xor i1 %tobool.not, true
  %.mux = zext i1 %not.tobool.not to i32
  br i1 %brmerge, label %err, label %for.body49.preheader

for.body49.preheader:                             ; preds = %if.end40
  %wide.trip.count159 = zext i32 %spec.select to i64
  br label %for.body49

for.body49:                                       ; preds = %for.body49.preheader, %if.end71
  %indvars.iv156 = phi i64 [ 0, %for.body49.preheader ], [ %indvars.iv.next157, %if.end71 ]
  %12 = trunc i64 %indvars.iv156 to i32
  %call50 = call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %from, i32 noundef %12) #6
  store i8* %call50, i8** %ptr, align 8, !tbaa !23
  %arrayidx52 = getelementptr inbounds %struct.ex_callback_st*, %struct.ex_callback_st** %storage.1, i64 %indvars.iv156
  %13 = load %struct.ex_callback_st*, %struct.ex_callback_st** %arrayidx52, align 8, !tbaa !23
  %cmp53.not = icmp eq %struct.ex_callback_st* %13, null
  br i1 %cmp53.not, label %if.end71, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body49
  %dup_func = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %13, i64 0, i32 5
  %14 = load i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)*, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)** %dup_func, align 8, !tbaa !15
  %cmp57.not = icmp eq i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* %14, null
  br i1 %cmp57.not, label %if.end71, label %if.then59

if.then59:                                        ; preds = %land.lhs.true
  %argl = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %13, i64 0, i32 0
  %15 = load i64, i64* %argl, align 8, !tbaa !17
  %argp = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %13, i64 0, i32 1
  %16 = load i8*, i8** %argp, align 8, !tbaa !18
  %call67 = call i32 %14(%struct.crypto_ex_data_st* noundef %to, %struct.crypto_ex_data_st* noundef %from, i8** noundef nonnull %ptr, i32 noundef %12, i64 noundef %15, i8* noundef %16) #5
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %if.then59.if.end71_crit_edge

if.then59.if.end71_crit_edge:                     ; preds = %if.then59
  %.pre = load i8*, i8** %ptr, align 8, !tbaa !23
  br label %if.end71

if.end71:                                         ; preds = %if.then59.if.end71_crit_edge, %land.lhs.true, %for.body49
  %17 = phi i8* [ %.pre, %if.then59.if.end71_crit_edge ], [ %call50, %land.lhs.true ], [ %call50, %for.body49 ]
  %call72 = call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef %to, i32 noundef %12, i8* noundef %17) #6
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %err, label %for.body49, !llvm.loop !28

err:                                              ; preds = %if.then59, %if.end71, %if.end40
  %toret.0 = phi i32 [ %.mux, %if.end40 ], [ 0, %if.then59 ], [ 1, %if.end71 ]
  %arraydecay76 = getelementptr inbounds [10 x %struct.ex_callback_st*], [10 x %struct.ex_callback_st*]* %stack, i64 0, i64 0
  %cmp77.not = icmp eq %struct.ex_callback_st** %storage.1, %arraydecay76
  br i1 %cmp77.not, label %cleanup, label %if.then79

if.then79:                                        ; preds = %err
  %18 = bitcast %struct.ex_callback_st** %storage.1 to i8*
  call void @CRYPTO_free(i8* noundef nonnull %18, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 333) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then79, %if.end31, %if.end5, %if.end, %entry, %if.then39
  %retval.0 = phi i32 [ 0, %if.then39 ], [ 1, %entry ], [ 0, %if.end ], [ 0, %if.end5 ], [ 1, %if.end31 ], [ %toret.0, %if.then79 ], [ %toret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_void_sk_type(%struct.stack_st_void* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_void* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* nocapture noundef %ad, i32 noundef %idx, i8* noundef %val) local_unnamed_addr #0 {
entry:
  %sk = getelementptr inbounds %struct.crypto_ex_data_st, %struct.crypto_ex_data_st* %ad, i64 0, i32 1
  %0 = load %struct.stack_st_void*, %struct.stack_st_void** %sk, align 8, !tbaa !22
  %cmp = icmp eq %struct.stack_st_void* %0, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %1 = bitcast %struct.stack_st_void** %sk to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !22
  %cmp2 = icmp eq %struct.stack_st* %call, null
  %2 = bitcast %struct.stack_st* %call to %struct.stack_st_void*
  br i1 %cmp2, label %cleanup.sink.split, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %3 = phi %struct.stack_st_void* [ %2, %if.then ], [ %0, %entry ]
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_void_sk_type(%struct.stack_st_void* noundef %3) #6
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #5
  %cmp8.not30 = icmp sgt i32 %call7, %idx
  br i1 %cmp8.not30, label %for.end, label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.031, 1
  %exitcond.not = icmp eq i32 %i.031, %idx
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !29

for.body:                                         ; preds = %if.end4, %for.cond
  %i.031 = phi i32 [ %inc, %for.cond ], [ %call7, %if.end4 ]
  %4 = load %struct.stack_st_void*, %struct.stack_st_void** %sk, align 8, !tbaa !22
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_void_sk_type(%struct.stack_st_void* noundef %4) #6
  %call12 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call10, i8* noundef null) #5
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %for.cond

for.end:                                          ; preds = %for.cond, %if.end4
  %5 = load %struct.stack_st_void*, %struct.stack_st_void** %sk, align 8, !tbaa !22
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_void_sk_type(%struct.stack_st_void* noundef %5) #6
  %call18 = tail call i8* @OPENSSL_sk_set(%struct.stack_st* noundef %call16, i32 noundef %idx, i8* noundef %val) #5
  %cmp19.not = icmp eq i8* %call18, %val
  br i1 %cmp19.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body, %for.end, %if.then
  %.sink32 = phi i32 [ 471, %if.then ], [ 484, %for.end ], [ 478, %for.body ]
  %.sink = phi i32 [ 786688, %if.then ], [ 524550, %for.end ], [ 786688, %for.body ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink32, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.CRYPTO_set_ex_data, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef %.sink, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_free_ex_data(i32 noundef %class_index, i8* noundef %obj, %struct.crypto_ex_data_st* noundef %ad) local_unnamed_addr #0 {
entry:
  %stack = alloca [10 x %struct.ex_callback_entry], align 16
  %0 = bitcast [10 x %struct.ex_callback_entry]* %stack to i8*
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %0) #7
  %ctx = getelementptr inbounds %struct.crypto_ex_data_st, %struct.crypto_ex_data_st* %ad, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !20
  %call = tail call %struct.ossl_ex_data_global_st* @ossl_lib_ctx_get_ex_data_global(%struct.ossl_lib_ctx_st* noundef %1) #5
  %cmp = icmp eq %struct.ossl_ex_data_global_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.ex_callbacks_st* @get_and_lock(%struct.ossl_ex_data_global_st* noundef nonnull %call, i32 noundef %class_index) #6
  %cmp2 = icmp eq %struct.ex_callbacks_st* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %meth = getelementptr inbounds %struct.ex_callbacks_st, %struct.ex_callbacks_st* %call1, i64 0, i32 0
  %2 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %call5 = tail call fastcc i32 @sk_EX_CALLBACK_num(%struct.stack_st_EX_CALLBACK* noundef %2) #6
  %cmp6 = icmp sgt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end52.thread

if.then7:                                         ; preds = %if.end4
  %cmp8 = icmp ult i32 %call5, 10
  br i1 %cmp8, label %if.end11.thread, label %if.end11

if.end11.thread:                                  ; preds = %if.then7
  %arraydecay = getelementptr inbounds [10 x %struct.ex_callback_entry], [10 x %struct.ex_callback_entry]* %stack, i64 0, i64 0
  br label %for.body.preheader

if.end11:                                         ; preds = %if.then7
  %conv114 = zext i32 %call5 to i64
  %mul = shl nuw nsw i64 %conv114, 4
  %call10 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 385) #5
  %3 = bitcast i8* %call10 to %struct.ex_callback_entry*
  %cmp12.not = icmp eq i8* %call10, null
  br i1 %cmp12.not, label %if.end52.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end11, %if.end11.thread
  %storage.0127 = phi %struct.ex_callback_entry* [ %arraydecay, %if.end11.thread ], [ %3, %if.end11 ]
  %wide.trip.count = zext i32 %call5 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %4 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %5 = trunc i64 %indvars.iv to i32
  %call18 = call fastcc %struct.ex_callback_st* @sk_EX_CALLBACK_value(%struct.stack_st_EX_CALLBACK* noundef %4, i32 noundef %5) #6
  %excb = getelementptr inbounds %struct.ex_callback_entry, %struct.ex_callback_entry* %storage.0127, i64 %indvars.iv, i32 0
  store %struct.ex_callback_st* %call18, %struct.ex_callback_st** %excb, align 8, !tbaa !30
  %index = getelementptr inbounds %struct.ex_callback_entry, %struct.ex_callback_entry* %storage.0127, i64 %indvars.iv, i32 1
  store i32 %5, i32* %index, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body31.preheader, label %for.body, !llvm.loop !33

if.end52.thread:                                  ; preds = %if.end4, %if.end11
  %ex_data_lock106 = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 0
  %6 = load i8*, i8** %ex_data_lock106, align 8, !tbaa !4
  %call23107 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %6) #5
  br label %if.then56

for.body31.preheader:                             ; preds = %for.body
  %ex_data_lock = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 0
  %7 = load i8*, i8** %ex_data_lock, align 8, !tbaa !4
  %call23 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %7) #5
  %8 = bitcast %struct.ex_callback_entry* %storage.0127 to i8*
  %conv27 = sext i32 %call5 to i64
  call void @qsort(i8* noundef nonnull %8, i64 noundef %conv27, i64 noundef 16, i32 (i8*, i8*)* noundef nonnull @ex_callback_compare) #5
  %wide.trip.count123 = zext i32 %call5 to i64
  br label %for.body31

for.body31:                                       ; preds = %for.body31.preheader, %for.inc49
  %indvars.iv120 = phi i64 [ 0, %for.body31.preheader ], [ %indvars.iv.next121, %for.inc49 ]
  %excb34 = getelementptr inbounds %struct.ex_callback_entry, %struct.ex_callback_entry* %storage.0127, i64 %indvars.iv120, i32 0
  %9 = load %struct.ex_callback_st*, %struct.ex_callback_st** %excb34, align 8, !tbaa !30
  %cmp35.not = icmp eq %struct.ex_callback_st* %9, null
  br i1 %cmp35.not, label %for.inc49, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body31
  %free_func = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %9, i64 0, i32 4
  %10 = load void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)*, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %free_func, align 8, !tbaa !16
  %cmp37.not = icmp eq void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* %10, null
  br i1 %cmp37.not, label %for.inc49, label %if.then39

if.then39:                                        ; preds = %land.lhs.true
  %index42 = getelementptr inbounds %struct.ex_callback_entry, %struct.ex_callback_entry* %storage.0127, i64 %indvars.iv120, i32 1
  %11 = load i32, i32* %index42, align 8, !tbaa !32
  %call43 = call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %ad, i32 noundef %11) #6
  %12 = load void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)*, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %free_func, align 8, !tbaa !16
  %13 = load i32, i32* %index42, align 8, !tbaa !32
  %argl = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %9, i64 0, i32 0
  %14 = load i64, i64* %argl, align 8, !tbaa !17
  %argp = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %9, i64 0, i32 1
  %15 = load i8*, i8** %argp, align 8, !tbaa !18
  call void %12(i8* noundef %obj, i8* noundef %call43, %struct.crypto_ex_data_st* noundef %ad, i32 noundef %13, i64 noundef %14, i8* noundef %15) #5
  br label %for.inc49

for.inc49:                                        ; preds = %for.body31, %land.lhs.true, %if.then39
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %if.end52, label %for.body31, !llvm.loop !34

if.end52:                                         ; preds = %for.inc49
  %arraydecay53 = getelementptr inbounds [10 x %struct.ex_callback_entry], [10 x %struct.ex_callback_entry]* %stack, i64 0, i64 0
  %cmp54.not = icmp eq %struct.ex_callback_entry* %storage.0127, %arraydecay53
  br i1 %cmp54.not, label %err, label %if.then56

if.then56:                                        ; preds = %if.end52.thread, %if.end52
  %storage.1109113 = phi %struct.ex_callback_entry* [ null, %if.end52.thread ], [ %storage.0127, %if.end52 ]
  %16 = bitcast %struct.ex_callback_entry* %storage.1109113 to i8*
  call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 408) #5
  br label %err

err:                                              ; preds = %if.end52, %if.then56, %if.end, %entry
  %sk = getelementptr inbounds %struct.crypto_ex_data_st, %struct.crypto_ex_data_st* %ad, i64 0, i32 1
  %17 = load %struct.stack_st_void*, %struct.stack_st_void** %sk, align 8, !tbaa !22
  %call58 = call fastcc %struct.stack_st* @ossl_check_void_sk_type(%struct.stack_st_void* noundef %17) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call58) #5
  store %struct.stack_st_void* null, %struct.stack_st_void** %sk, align 8, !tbaa !22
  store %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %0) #7
  ret void
}

declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @ex_callback_compare(i8* nocapture noundef readonly %a, i8* nocapture noundef readonly %b) #4 {
entry:
  %excb = bitcast i8* %a to %struct.ex_callback_st**
  %0 = load %struct.ex_callback_st*, %struct.ex_callback_st** %excb, align 8, !tbaa !30
  %excb1 = bitcast i8* %b to %struct.ex_callback_st**
  %1 = load %struct.ex_callback_st*, %struct.ex_callback_st** %excb1, align 8, !tbaa !30
  %cmp = icmp eq %struct.ex_callback_st* %0, %1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq %struct.ex_callback_st* %0, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %cmp7 = icmp eq %struct.ex_callback_st* %1, null
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end5
  %priority = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %0, i64 0, i32 2
  %2 = load i32, i32* %priority, align 8, !tbaa !19
  %priority12 = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %1, i64 0, i32 2
  %3 = load i32, i32* %priority12, align 8, !tbaa !19
  %cmp13 = icmp eq i32 %2, %3
  br i1 %cmp13, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end9
  %cmp20 = icmp sgt i32 %2, %3
  %cond = select i1 %cmp20, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5, %if.end, %entry, %if.end15
  %retval.0 = phi i32 [ %cond, %if.end15 ], [ 0, %entry ], [ 1, %if.end ], [ -1, %if.end5 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_void_sk_type(%struct.stack_st_void* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_void* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_alloc_ex_data(i32 noundef %class_index, i8* noundef %obj, %struct.crypto_ex_data_st* noundef %ad, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %ad, i32 noundef %idx) #6
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ossl_crypto_alloc_ex_data_intern(i32 noundef %class_index, i8* noundef %obj, %struct.crypto_ex_data_st* noundef %ad, i32 noundef %idx) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_crypto_alloc_ex_data_intern(i32 noundef %class_index, i8* noundef %obj, %struct.crypto_ex_data_st* noundef %ad, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %ctx = getelementptr inbounds %struct.crypto_ex_data_st, %struct.crypto_ex_data_st* %ad, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !20
  %call = tail call %struct.ossl_ex_data_global_st* @ossl_lib_ctx_get_ex_data_global(%struct.ossl_lib_ctx_st* noundef %0) #5
  %cmp = icmp eq %struct.ossl_ex_data_global_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.ex_callbacks_st* @get_and_lock(%struct.ossl_ex_data_global_st* noundef nonnull %call, i32 noundef %class_index) #6
  %cmp2 = icmp eq %struct.ex_callbacks_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %meth = getelementptr inbounds %struct.ex_callbacks_st, %struct.ex_callbacks_st* %call1, i64 0, i32 0
  %1 = load %struct.stack_st_EX_CALLBACK*, %struct.stack_st_EX_CALLBACK** %meth, align 8, !tbaa !9
  %call5 = tail call fastcc %struct.ex_callback_st* @sk_EX_CALLBACK_value(%struct.stack_st_EX_CALLBACK* noundef %1, i32 noundef %idx) #6
  %ex_data_lock = getelementptr inbounds %struct.ossl_ex_data_global_st, %struct.ossl_ex_data_global_st* %call, i64 0, i32 0
  %2 = load i8*, i8** %ex_data_lock, align 8, !tbaa !4
  %call6 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #5
  %new_func = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %call5, i64 0, i32 3
  %3 = load void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)*, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %new_func, align 8, !tbaa !11
  %cmp7 = icmp eq void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* %3, null
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end4
  %argl = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %call5, i64 0, i32 0
  %4 = load i64, i64* %argl, align 8, !tbaa !17
  %argp = getelementptr inbounds %struct.ex_callback_st, %struct.ex_callback_st* %call5, i64 0, i32 1
  %5 = load i8*, i8** %argp, align 8, !tbaa !18
  tail call void %3(i8* noundef %obj, i8* noundef null, %struct.crypto_ex_data_st* noundef nonnull %ad, i32 noundef %idx, i64 noundef %4, i8* noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end9
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_set(%struct.stack_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_lib_ctx_st* @ossl_crypto_ex_data_get_ossl_lib_ctx(%struct.crypto_ex_data_st* nocapture noundef readonly %ad) local_unnamed_addr #4 {
entry:
  %ctx = getelementptr inbounds %struct.crypto_ex_data_st, %struct.crypto_ex_data_st* %ad, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !20
  ret %struct.ossl_lib_ctx_st* %0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_ex_data_global_st", !6, i64 0, !7, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"ex_callbacks_st", !6, i64 0}
!11 = !{!12, !6, i64 24}
!12 = !{!"ex_callback_st", !13, i64 0, !6, i64 8, !14, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!13 = !{!"long", !7, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!12, !6, i64 40}
!16 = !{!12, !6, i64 32}
!17 = !{!12, !13, i64 0}
!18 = !{!12, !6, i64 8}
!19 = !{!12, !14, i64 16}
!20 = !{!21, !6, i64 0}
!21 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!22 = !{!21, !6, i64 8}
!23 = !{!6, !6, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !25}
!30 = !{!31, !6, i64 0}
!31 = !{!"ex_callback_entry", !6, i64 0, !14, i64 8}
!32 = !{!31, !14, i64 8}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !25}
