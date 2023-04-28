; ModuleID = 'crypto/context.c'
source_filename = "crypto/context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type { i8*, %struct.crypto_ex_data_st, %struct.ossl_ex_data_global_st, [19 x i32], [19 x i8*], i8*, [3 x i32], [3 x i32], %struct.ossl_lib_ctx_onfree_list_st*, i8 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ossl_ex_data_global_st = type { i8*, [18 x %struct.ex_callbacks_st] }
%struct.ex_callbacks_st = type { %struct.stack_st_EX_CALLBACK* }
%struct.stack_st_EX_CALLBACK = type opaque
%struct.ossl_lib_ctx_onfree_list_st = type { void (%struct.ossl_lib_ctx_st*)*, %struct.ossl_lib_ctx_onfree_list_st* }
%struct.ossl_core_handle_st = type opaque
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }

@default_context_int = internal global %struct.ossl_lib_ctx_st zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"crypto/context.c\00", align 1
@default_context_init = internal global i32 0, align 4
@default_context_do_init_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Global default library context\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Thread-local default library context\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Non-default library context\00", align 1
@default_context_thread_local = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_lib_ctx_write_lock(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef %ctx) #2
  %lock = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 0
  %0 = load i8*, i8** %lock, align 8, !tbaa !4
  %call1 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #3
  ret i32 %call1
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef readnone %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.ossl_lib_ctx_st* @get_default_context() #2
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.ossl_lib_ctx_st* [ %call, %if.then ], [ %ctx, %entry ]
  ret %struct.ossl_lib_ctx_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_lib_ctx_read_lock(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef %ctx) #2
  %lock = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 0
  %0 = load i8*, i8** %lock, align 8, !tbaa !4
  %call1 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %0) #3
  ret i32 %call1
}

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_lib_ctx_unlock(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef %ctx) #2
  %lock = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 0
  %0 = load i8*, i8** %lock, align 8, !tbaa !4
  %call1 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %0) #3
  ret i32 %call1
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_lib_ctx_is_child(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef %ctx) #2
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %ischild = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 9
  %bf.load = load i8, i8* %ischild, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %bf.cast, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_lib_ctx_default_deinit() local_unnamed_addr #0 {
entry:
  tail call fastcc void @context_deinit(%struct.ossl_lib_ctx_st* noundef nonnull @default_context_int) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @context_deinit(%struct.ossl_lib_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @ossl_ctx_thread_stop(%struct.ossl_lib_ctx_st* noundef nonnull %ctx) #3
  %onfreelist = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 8
  %0 = load %struct.ossl_lib_ctx_onfree_list_st*, %struct.ossl_lib_ctx_onfree_list_st** %onfreelist, align 8, !tbaa !12
  %cmp1.not1 = icmp eq %struct.ossl_lib_ctx_onfree_list_st* %0, null
  br i1 %cmp1.not1, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %while.body
  %onfree.02 = phi %struct.ossl_lib_ctx_onfree_list_st* [ %2, %while.body ], [ %0, %if.end ]
  %fn = getelementptr inbounds %struct.ossl_lib_ctx_onfree_list_st, %struct.ossl_lib_ctx_onfree_list_st* %onfree.02, i64 0, i32 0
  %1 = load void (%struct.ossl_lib_ctx_st*)*, void (%struct.ossl_lib_ctx_st*)** %fn, align 8, !tbaa !13
  tail call void %1(%struct.ossl_lib_ctx_st* noundef nonnull %ctx) #3
  %next = getelementptr inbounds %struct.ossl_lib_ctx_onfree_list_st, %struct.ossl_lib_ctx_onfree_list_st* %onfree.02, i64 0, i32 1
  %2 = load %struct.ossl_lib_ctx_onfree_list_st*, %struct.ossl_lib_ctx_onfree_list_st** %next, align 8, !tbaa !15
  %3 = bitcast %struct.ossl_lib_ctx_onfree_list_st* %onfree.02 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 130) #3
  %cmp1.not = icmp eq %struct.ossl_lib_ctx_onfree_list_st* %2, null
  br i1 %cmp1.not, label %while.end, label %while.body, !llvm.loop !16

while.end:                                        ; preds = %while.body, %if.end
  %data = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 1
  tail call void @CRYPTO_free_ex_data(i32 noundef 16, i8* noundef null, %struct.crypto_ex_data_st* noundef nonnull %data) #3
  tail call void @ossl_crypto_cleanup_all_ex_data_int(%struct.ossl_lib_ctx_st* noundef nonnull %ctx) #3
  %arrayidx = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 0
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %4) #3
  %arrayidx.1 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 1
  %5 = load i8*, i8** %arrayidx.1, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %5) #3
  %arrayidx.2 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 2
  %6 = load i8*, i8** %arrayidx.2, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %6) #3
  %arrayidx.3 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 3
  %7 = load i8*, i8** %arrayidx.3, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %7) #3
  %arrayidx.4 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 4
  %8 = load i8*, i8** %arrayidx.4, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %8) #3
  %arrayidx.5 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 5
  %9 = load i8*, i8** %arrayidx.5, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %9) #3
  %arrayidx.6 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 6
  %10 = load i8*, i8** %arrayidx.6, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %10) #3
  %arrayidx.7 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 7
  %11 = load i8*, i8** %arrayidx.7, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %11) #3
  %arrayidx.8 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 8
  %12 = load i8*, i8** %arrayidx.8, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %12) #3
  %arrayidx.9 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 9
  %13 = load i8*, i8** %arrayidx.9, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %13) #3
  %arrayidx.10 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 10
  %14 = load i8*, i8** %arrayidx.10, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %14) #3
  %arrayidx.11 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 11
  %15 = load i8*, i8** %arrayidx.11, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %15) #3
  %arrayidx.12 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 12
  %16 = load i8*, i8** %arrayidx.12, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %16) #3
  %arrayidx.13 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 13
  %17 = load i8*, i8** %arrayidx.13, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %17) #3
  %arrayidx.14 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 14
  %18 = load i8*, i8** %arrayidx.14, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %18) #3
  %arrayidx.15 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 15
  %19 = load i8*, i8** %arrayidx.15, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %19) #3
  %arrayidx.16 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 16
  %20 = load i8*, i8** %arrayidx.16, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %20) #3
  %arrayidx.17 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 17
  %21 = load i8*, i8** %arrayidx.17, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %21) #3
  %arrayidx.18 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 18
  %22 = load i8*, i8** %arrayidx.18, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %22) #3
  %oncelock = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 5
  %23 = load i8*, i8** %oncelock, align 8, !tbaa !19
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %23) #3
  %lock = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 0
  %24 = load i8*, i8** %lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %24) #3
  store i8* null, i8** %lock, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 456, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 189) #3
  %0 = bitcast i8* %call to %struct.ossl_lib_ctx_st*
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @context_init(%struct.ossl_lib_ctx_st* noundef nonnull %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef nonnull %0) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %ctx.0 = phi %struct.ossl_lib_ctx_st* [ %0, %land.lhs.true ], [ null, %if.then ], [ null, %entry ]
  ret %struct.ossl_lib_ctx_st* %ctx.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @context_init(%struct.ossl_lib_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_lock_new() #3
  %lock = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 0
  store i8* %call, i8** %lock, align 8, !tbaa !4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @CRYPTO_THREAD_lock_new() #3
  %oncelock = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 5
  store i8* %call2, i8** %oncelock, align 8, !tbaa !19
  %cmp4 = icmp eq i8* %call2, null
  br i1 %cmp4, label %if.end28, label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i64 %i.056, 1
  %exitcond.not = icmp eq i64 %inc, 19
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !20

for.body:                                         ; preds = %if.end, %for.cond
  %i.056 = phi i64 [ %inc, %for.cond ], [ 0, %if.end ]
  %call8 = tail call i8* @CRYPTO_THREAD_lock_new() #3
  %arrayidx = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 4, i64 %i.056
  store i8* %call8, i8** %arrayidx, align 8, !tbaa !18
  %arrayidx9 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 3, i64 %i.056
  store i32 -1, i32* %arrayidx9, align 4, !tbaa !21
  %cmp12 = icmp eq i8* %call8, null
  br i1 %cmp12, label %if.end28, label %for.cond

for.end:                                          ; preds = %for.cond
  %call15 = tail call i32 @ossl_do_ex_data_init(%struct.ossl_lib_ctx_st* noundef nonnull %ctx) #3
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end28, label %if.end17

if.end17:                                         ; preds = %for.end
  %data = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 1
  %call18 = tail call i32 @ossl_crypto_new_ex_data_ex(%struct.ossl_lib_ctx_st* noundef nonnull %ctx, i32 noundef 16, i8* noundef null, %struct.crypto_ex_data_st* noundef nonnull %data) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  tail call void @ossl_crypto_cleanup_all_ex_data_int(%struct.ossl_lib_ctx_st* noundef nonnull %ctx) #3
  br label %if.then27

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @ossl_property_parse_init(%struct.ossl_lib_ctx_st* noundef nonnull %ctx) #3
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then27, label %cleanup

if.then27:                                        ; preds = %if.end21, %if.then20
  tail call void @ossl_crypto_cleanup_all_ex_data_int(%struct.ossl_lib_ctx_st* noundef nonnull %ctx) #3
  br label %if.end28

if.end28:                                         ; preds = %for.body, %if.end, %for.end, %if.then27
  %0 = load i8*, i8** %oncelock, align 8, !tbaa !19
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %0) #3
  %1 = load i8*, i8** %lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %1) #3
  store i8* null, i8** %lock, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry, %if.end28
  %retval.0 = phi i32 [ 0, %if.end28 ], [ 0, %entry ], [ 1, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_lib_ctx_is_default(%struct.ossl_lib_ctx_st* noundef %ctx) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  tail call fastcc void @context_deinit(%struct.ossl_lib_ctx_st* noundef %ctx) #2
  %0 = bitcast %struct.ossl_lib_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 244) #3
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new_from_dispatch(%struct.ossl_core_handle_st* nocapture readnone %handle, %struct.ossl_dispatch_st* noundef %in) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #2
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ossl_bio_init_core(%struct.ossl_lib_ctx_st* noundef nonnull %call, %struct.ossl_dispatch_st* noundef %in) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi %struct.ossl_lib_ctx_st* [ null, %if.then2 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct.ossl_lib_ctx_st* %retval.0
}

declare i32 @ossl_bio_init_core(%struct.ossl_lib_ctx_st* noundef, %struct.ossl_dispatch_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new_child(%struct.ossl_core_handle_st* noundef %handle, %struct.ossl_dispatch_st* noundef %in) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new_from_dispatch(%struct.ossl_core_handle_st* undef, %struct.ossl_dispatch_st* noundef %in) #2
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ossl_provider_init_as_child(%struct.ossl_lib_ctx_st* noundef nonnull %call, %struct.ossl_core_handle_st* noundef %handle, %struct.ossl_dispatch_st* noundef %in) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef nonnull %call) #2
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ischild = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 9
  %bf.load = load i8, i8* %ischild, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %ischild, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi %struct.ossl_lib_ctx_st* [ %call, %if.end3 ], [ null, %if.then2 ], [ null, %entry ]
  ret %struct.ossl_lib_ctx_st* %retval.0
}

declare i32 @ossl_provider_init_as_child(%struct.ossl_lib_ctx_st* noundef, %struct.ossl_core_handle_st* noundef, %struct.ossl_dispatch_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_LIB_CTX_load_config(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %config_file) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CONF_modules_load_file_ex(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %config_file, i8* noundef null, i64 noundef 0) #3
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @CONF_modules_load_file_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_lib_ctx_is_default(%struct.ossl_lib_ctx_st* noundef readnone %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.ossl_lib_ctx_st* @get_default_context() #2
  %cmp1 = icmp eq %struct.ossl_lib_ctx_st* %call, %ctx
  %spec.select = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_get0_global_default() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @default_context_init, void ()* noundef nonnull @default_context_do_init_ossl_) #3
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @default_context_do_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  %default_context_int. = select i1 %or.cond, %struct.ossl_lib_ctx_st* @default_context_int, %struct.ossl_lib_ctx_st* null
  ret %struct.ossl_lib_ctx_st* %default_context_int.
}

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @default_context_do_init_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @default_context_do_init() #2
  store i32 %call, i32* @default_context_do_init_ossl_ret_, align 4, !tbaa !21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ossl_lib_ctx_st* @get_default_context() #2
  %cmp.not = icmp eq %struct.ossl_lib_ctx_st* %call, null
  %cmp1.not = icmp eq %struct.ossl_lib_ctx_st* %libctx, null
  %or.cond = or i1 %cmp1.not, %cmp.not
  br i1 %or.cond, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  tail call fastcc void @set_default_context(%struct.ossl_lib_ctx_st* noundef nonnull %libctx) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  ret %struct.ossl_lib_ctx_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_lib_ctx_st* @get_default_context() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ossl_lib_ctx_st* @get_thread_default_context() #2
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %call, null
  %spec.store.select = select i1 %cmp, %struct.ossl_lib_ctx_st* @default_context_int, %struct.ossl_lib_ctx_st* %call
  ret %struct.ossl_lib_ctx_st* %spec.store.select
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @set_default_context(%struct.ossl_lib_ctx_st* noundef %defctx) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %defctx, @default_context_int
  %spec.store.select = select i1 %cmp, %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st* %defctx
  %0 = bitcast %struct.ossl_lib_ctx_st* %spec.store.select to i8*
  %call = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @default_context_thread_local, i8* noundef %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_lib_ctx_is_global_default(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef %ctx) #2
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %call, @default_context_int
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %index, %struct.ossl_lib_ctx_method* noundef %meth) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef %ctx) #2
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 0
  %0 = load i8*, i8** %lock, align 8, !tbaa !4
  %call1 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %idxprom = sext i32 %index to i64
  %arrayidx = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 3, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !21
  %2 = load i8*, i8** %lock, align 8, !tbaa !4
  %call5 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #3
  %cmp6.not = icmp eq i32 %1, -1
  %arrayidx34 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 4, i64 %idxprom
  %3 = load i8*, i8** %arrayidx34, align 8, !tbaa !18
  br i1 %cmp6.not, label %if.end31, label %if.then7

if.then7:                                         ; preds = %if.end3
  %call10 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %3) #3
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then7
  %4 = load i8*, i8** %lock, align 8, !tbaa !4
  %call15 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %4) #3
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup.sink.split, label %if.end22

if.end22:                                         ; preds = %if.end13
  %data23 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 1
  %call24 = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %data23, i32 noundef %1) #3
  br label %cleanup.sink.split.sink.split

if.end31:                                         ; preds = %if.end3
  %call35 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %3) #3
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.end31
  %5 = load i8*, i8** %lock, align 8, !tbaa !4
  %call40 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %5) #3
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup.sink.split, label %if.end47

if.end47:                                         ; preds = %if.end38
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !21
  %cmp51.not = icmp eq i32 %6, -1
  br i1 %cmp51.not, label %if.end61, label %if.then52

if.then52:                                        ; preds = %if.end47
  %data53 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 1
  %call54 = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %data53, i32 noundef %6) #3
  br label %cleanup.sink.split.sink.split

if.end61:                                         ; preds = %if.end47
  %call62 = tail call fastcc i32 @ossl_lib_ctx_init_index(%struct.ossl_lib_ctx_st* noundef nonnull %call, i32 noundef %index, %struct.ossl_lib_ctx_method* noundef %meth) #2
  %tobool63.not = icmp eq i32 %call62, 0
  %7 = load i8*, i8** %lock, align 8, !tbaa !4
  %call66 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %7) #3
  br i1 %tobool63.not, label %cleanup.sink.split, label %if.end71

if.end71:                                         ; preds = %if.end61
  %data74 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 1
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !21
  %call78 = tail call i32 @ossl_crypto_alloc_ex_data_intern(i32 noundef 16, i8* noundef null, %struct.crypto_ex_data_st* noundef nonnull %data74, i32 noundef %8) #3
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %cleanup.sink.split, label %if.then80

if.then80:                                        ; preds = %if.end71
  %9 = load i8*, i8** %lock, align 8, !tbaa !4
  %call82 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %9) #3
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %cleanup.sink.split, label %if.end85

if.end85:                                         ; preds = %if.then80
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !21
  %call90 = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %data74, i32 noundef %10) #3
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then52, %if.end22, %if.end85
  %retval.0.ph.ph = phi i8* [ %call90, %if.end85 ], [ %call24, %if.end22 ], [ %call54, %if.then52 ]
  %11 = load i8*, i8** %lock, align 8, !tbaa !4
  %call92 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %11) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then80, %if.end71, %if.end61, %if.end38, %if.end13
  %retval.0.ph = phi i8* [ null, %if.end13 ], [ null, %if.end38 ], [ null, %if.end61 ], [ null, %if.then80 ], [ null, %if.end71 ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %12 = load i8*, i8** %arrayidx34, align 8, !tbaa !18
  %call97 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %12) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end31, %if.then7, %if.end, %entry
  %retval.0 = phi i8* [ null, %entry ], [ null, %if.end ], [ null, %if.then7 ], [ null, %if.end31 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i8* %retval.0
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_lib_ctx_init_index(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %static_index, %struct.ossl_lib_ctx_method* noundef %meth) unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef %ctx) #2
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.ossl_lib_ctx_method* %meth to i8*
  %priority = getelementptr inbounds %struct.ossl_lib_ctx_method, %struct.ossl_lib_ctx_method* %meth, i64 0, i32 0
  %1 = load i32, i32* %priority, align 8, !tbaa !22
  %call1 = tail call i32 @ossl_crypto_get_ex_new_index_ex(%struct.ossl_lib_ctx_st* noundef nonnull %call, i32 noundef 16, i64 noundef 0, i8* noundef %0, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef nonnull @ossl_lib_ctx_generic_new, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef null, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef nonnull @ossl_lib_ctx_generic_free, i32 noundef %1) #3
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %static_index to i64
  %arrayidx = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 3, i64 %idxprom
  store i32 %call1, i32* %arrayidx, align 4, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_crypto_alloc_ex_data_intern(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_ex_data_global_st* @ossl_lib_ctx_get_ex_data_global(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef %ctx) #2
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %call, null
  %global = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 2
  %retval.0 = select i1 %cmp, %struct.ossl_ex_data_global_st* null, %struct.ossl_ex_data_global_st* %global
  ret %struct.ossl_ex_data_global_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_lib_ctx_run_once(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %idx, i32 (%struct.ossl_lib_ctx_st*)* nocapture noundef readonly %run_once_fn) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef %ctx) #2
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %oncelock = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 5
  %0 = load i8*, i8** %oncelock, align 8, !tbaa !19
  %call1 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %idxprom = zext i32 %idx to i64
  %arrayidx = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 6, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !21
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %if.end13, label %if.end8

if.end8:                                          ; preds = %if.end3
  %arrayidx7 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 7, i64 %idxprom
  %2 = load i32, i32* %arrayidx7, align 4, !tbaa !21
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end3
  %3 = load i8*, i8** %oncelock, align 8, !tbaa !19
  %call1065 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %3) #3
  %4 = load i8*, i8** %oncelock, align 8, !tbaa !19
  %call15 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %4) #3
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end13
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !21
  %tobool22.not = icmp eq i32 %5, 0
  br i1 %tobool22.not, label %if.end29, label %if.then23

if.then23:                                        ; preds = %if.end18
  %arrayidx26 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 7, i64 %idxprom
  %6 = load i32, i32* %arrayidx26, align 4, !tbaa !21
  br label %cleanup.sink.split

if.end29:                                         ; preds = %if.end18
  %call30 = tail call i32 %run_once_fn(%struct.ossl_lib_ctx_st* noundef nonnull %call) #3
  store i32 1, i32* %arrayidx, align 4, !tbaa !21
  %arrayidx36 = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 7, i64 %idxprom
  store i32 %call30, i32* %arrayidx36, align 4, !tbaa !21
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then23, %if.end29, %if.end8
  %retval.0.ph = phi i32 [ %2, %if.end8 ], [ %call30, %if.end29 ], [ %6, %if.then23 ]
  %7 = load i8*, i8** %oncelock, align 8, !tbaa !19
  %call10 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %7) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end13 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_lib_ctx_onfree(%struct.ossl_lib_ctx_st* nocapture noundef %ctx, void (%struct.ossl_lib_ctx_st*)* noundef %onfreefn) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 466) #3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %fn = bitcast i8* %call to void (%struct.ossl_lib_ctx_st*)**
  store void (%struct.ossl_lib_ctx_st*)* %onfreefn, void (%struct.ossl_lib_ctx_st*)** %fn, align 8, !tbaa !13
  %onfreelist = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %ctx, i64 0, i32 8
  %0 = load %struct.ossl_lib_ctx_onfree_list_st*, %struct.ossl_lib_ctx_onfree_list_st** %onfreelist, align 8, !tbaa !12
  %next = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %next to %struct.ossl_lib_ctx_onfree_list_st**
  store %struct.ossl_lib_ctx_onfree_list_st* %0, %struct.ossl_lib_ctx_onfree_list_st** %1, align 8, !tbaa !15
  %2 = bitcast %struct.ossl_lib_ctx_onfree_list_st** %onfreelist to i8**
  store i8* %call, i8** %2, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_lib_ctx_get_descriptor(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_lib_ctx_is_global_default(%struct.ossl_lib_ctx_st* noundef %libctx) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ossl_lib_ctx_is_default(%struct.ossl_lib_ctx_st* noundef %libctx) #2
  %tobool2.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool2.not, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0)
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i8* [ getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %entry ], [ %., %if.end ]
  ret i8* %retval.0
}

declare void @ossl_ctx_thread_stop(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #1

declare void @ossl_crypto_cleanup_all_ex_data_int(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

declare i32 @ossl_do_ex_data_init(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare i32 @ossl_crypto_new_ex_data_ex(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #1

declare i32 @ossl_property_parse_init(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @default_context_do_init() unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_init_local(i32* noundef nonnull @default_context_thread_local, void (i8*)* noundef null) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @context_init(%struct.ossl_lib_ctx_st* noundef nonnull @default_context_int) #2
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

declare i32 @CRYPTO_THREAD_init_local(i32* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_lib_ctx_st* @get_thread_default_context() unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @default_context_init, void ()* noundef nonnull @default_context_do_init_ossl_) #3
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @default_context_do_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @default_context_thread_local) #3
  %1 = bitcast i8* %call2 to %struct.ossl_lib_ctx_st*
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_lib_ctx_st* [ %1, %if.end ], [ null, %entry ]
  ret %struct.ossl_lib_ctx_st* %retval.0
}

declare i8* @CRYPTO_THREAD_get_local(i32* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_set_local(i32* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ossl_crypto_get_ex_new_index_ex(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_lib_ctx_generic_new(i8* nocapture noundef readnone %parent_ign, i8* nocapture noundef readnone %ptr_ign, %struct.crypto_ex_data_st* noundef %ad, i32 noundef %index, i64 noundef %argl_ign, i8* nocapture noundef readonly %argp) #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_crypto_ex_data_get_ossl_lib_ctx(%struct.crypto_ex_data_st* noundef %ad) #3
  %new_func = getelementptr inbounds i8, i8* %argp, i64 8
  %0 = bitcast i8* %new_func to i8* (%struct.ossl_lib_ctx_st*)**
  %1 = load i8* (%struct.ossl_lib_ctx_st*)*, i8* (%struct.ossl_lib_ctx_st*)** %0, align 8, !tbaa !24
  %call1 = tail call i8* %1(%struct.ossl_lib_ctx_st* noundef %call) #3
  %cmp.not = icmp eq i8* %call1, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.ossl_lib_ctx_st, %struct.ossl_lib_ctx_st* %call, i64 0, i32 0
  %2 = load i8*, i8** %lock, align 8, !tbaa !4
  %call2 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %2) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call4 = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef %ad, i32 noundef %index, i8* noundef nonnull %call1) #3
  %3 = load i8*, i8** %lock, align 8, !tbaa !4
  %call6 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %3) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_lib_ctx_generic_free(i8* nocapture noundef readnone %parent_ign, i8* noundef %ptr, %struct.crypto_ex_data_st* nocapture noundef readnone %ad, i32 noundef %index, i64 noundef %argl_ign, i8* nocapture noundef readonly %argp) #0 {
entry:
  %free_func = getelementptr inbounds i8, i8* %argp, i64 16
  %0 = bitcast i8* %free_func to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !25
  tail call void %1(i8* noundef %ptr) #3
  ret void
}

declare %struct.ossl_lib_ctx_st* @ossl_crypto_ex_data_get_ossl_lib_ctx(%struct.crypto_ex_data_st* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_lib_ctx_st", !6, i64 0, !9, i64 8, !10, i64 24, !7, i64 176, !7, i64 256, !6, i64 408, !7, i64 416, !7, i64 428, !6, i64 440, !11, i64 448}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!10 = !{!"ossl_ex_data_global_st", !6, i64 0, !7, i64 8}
!11 = !{!"int", !7, i64 0}
!12 = !{!5, !6, i64 440}
!13 = !{!14, !6, i64 0}
!14 = !{!"ossl_lib_ctx_onfree_list_st", !6, i64 0, !6, i64 8}
!15 = !{!14, !6, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!6, !6, i64 0}
!19 = !{!5, !6, i64 408}
!20 = distinct !{!20, !17}
!21 = !{!11, !11, i64 0}
!22 = !{!23, !11, i64 0}
!23 = !{!"ossl_lib_ctx_method", !11, i64 0, !6, i64 8, !6, i64 16}
!24 = !{!23, !6, i64 8}
!25 = !{!23, !6, i64 16}
