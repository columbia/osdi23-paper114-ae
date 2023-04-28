; ModuleID = 'crypto/async/async.c'
source_filename = "crypto/async/async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_ctx_st = type { %struct.async_fibre_st, %struct.async_job_st*, i32 }
%struct.async_fibre_st = type { %struct.ucontext_t, [1 x %struct.__jmp_buf_tag], i32 }
%struct.ucontext_t = type { i64, %struct.ucontext_t*, %struct.stack_t, %struct.mcontext_t, %struct.__sigset_t, %struct._libc_fpstate, [4 x i64] }
%struct.stack_t = type { i8*, i32, i64 }
%struct.mcontext_t = type { [23 x i64], %struct._libc_fpstate*, [8 x i64] }
%struct.__sigset_t = type { [16 x i64] }
%struct._libc_fpstate = type { i16, i16, i16, i16, i64, i64, i32, i32, [8 x %struct._libc_fpxreg], [16 x %struct._libc_xmmreg], [24 x i32] }
%struct._libc_fpxreg = type { [4 x i16], i16, [3 x i16] }
%struct._libc_xmmreg = type { [4 x i32] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.async_job_st = type { %struct.async_fibre_st, i32 (i8*)*, i8*, i32, i32, %struct.async_wait_ctx_st*, %struct.ossl_lib_ctx_st* }
%struct.async_wait_ctx_st = type { %struct.fd_lookup_st*, i64, i64, i32 (i8*)*, i8*, i32 }
%struct.fd_lookup_st = type { i8*, i32, i8*, void (%struct.async_wait_ctx_st*, i8*, i32, i8*)*, i32, i32, %struct.fd_lookup_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_init_settings_st = type opaque
%struct.stack_st_ASYNC_JOB = type opaque
%struct.async_pool_st = type { %struct.stack_st_ASYNC_JOB*, i64, i64 }
%struct.stack_st = type opaque

@ctxkey = internal global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"crypto/async/async.c\00", align 1
@__func__.ASYNC_start_job = private unnamed_addr constant [16 x i8] c"ASYNC_start_job\00", align 1
@poolkey = internal global i32 0, align 4
@__func__.ASYNC_init_thread = private unnamed_addr constant [18 x i8] c"ASYNC_init_thread\00", align 1
@__func__.async_ctx_new = private unnamed_addr constant [14 x i8] c"async_ctx_new\00", align 1
@__func__.async_job_new = private unnamed_addr constant [14 x i8] c"async_job_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.async_ctx_st* @async_get_ctx() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @ctxkey) #6
  %0 = bitcast i8* %call to %struct.async_ctx_st*
  ret %struct.async_ctx_st* %0
}

declare i8* @CRYPTO_THREAD_get_local(i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define void @async_start_func() local_unnamed_addr #2 {
entry:
  %call = tail call %struct.async_ctx_st* @async_get_ctx() #7
  %currjob = getelementptr inbounds %struct.async_ctx_st, %struct.async_ctx_st* %call, i64 0, i32 1
  %dispatcher = getelementptr inbounds %struct.async_ctx_st, %struct.async_ctx_st* %call, i64 0, i32 0
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %0 = load %struct.async_job_st*, %struct.async_job_st** %currjob, align 8, !tbaa !4
  %func = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %0, i64 0, i32 1
  %1 = load i32 (i8*)*, i32 (i8*)** %func, align 8, !tbaa !18
  %funcargs = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %0, i64 0, i32 2
  %2 = load i8*, i8** %funcargs, align 8, !tbaa !20
  %call1 = tail call i32 %1(i8* noundef %2) #6
  %ret = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %0, i64 0, i32 3
  store i32 %call1, i32* %ret, align 8, !tbaa !21
  %status = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %0, i64 0, i32 4
  store i32 3, i32* %status, align 4, !tbaa !22
  %fibrectx = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %0, i64 0, i32 0
  tail call fastcc void @async_fibre_swapcontext(%struct.async_fibre_st* noundef %fibrectx, %struct.async_fibre_st* noundef %dispatcher) #7
  br label %while.cond
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @async_fibre_swapcontext(%struct.async_fibre_st* noundef %o, %struct.async_fibre_st* noundef %n) unnamed_addr #0 {
entry:
  %env_init = getelementptr inbounds %struct.async_fibre_st, %struct.async_fibre_st* %o, i64 0, i32 2
  store i32 1, i32* %env_init, align 8, !tbaa !23
  %arraydecay = getelementptr inbounds %struct.async_fibre_st, %struct.async_fibre_st* %o, i64 0, i32 1, i64 0
  %call = tail call i32 @_setjmp(%struct.__jmp_buf_tag* noundef nonnull %arraydecay) #6
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %env_init2 = getelementptr inbounds %struct.async_fibre_st, %struct.async_fibre_st* %n, i64 0, i32 2
  %0 = load i32, i32* %env_init2, align 8, !tbaa !23
  %tobool3.not = icmp eq i32 %0, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %arraydecay6 = getelementptr inbounds %struct.async_fibre_st, %struct.async_fibre_st* %n, i64 0, i32 1, i64 0
  tail call void @_longjmp(%struct.__jmp_buf_tag* noundef nonnull %arraydecay6, i32 noundef 1) #8
  unreachable

if.else:                                          ; preds = %if.then
  %fibre = getelementptr inbounds %struct.async_fibre_st, %struct.async_fibre_st* %n, i64 0, i32 0
  %call7 = tail call i32 @setcontext(%struct.ucontext_t* noundef %fibre) #6
  br label %if.end8

if.end8:                                          ; preds = %if.else, %entry
  ret void
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASYNC_start_job(%struct.async_job_st** nocapture noundef %job, %struct.async_wait_ctx_st* noundef %wctx, i32* nocapture noundef writeonly %ret, i32 (i8*)* noundef %func, i8* noundef %args, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 256, %struct.ossl_init_settings_st* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.async_ctx_st* @async_get_ctx() #7
  %cmp = icmp eq %struct.async_ctx_st* %call1, null
  br i1 %cmp, label %if.end4, label %if.end7

if.end4:                                          ; preds = %if.end
  %call3 = tail call fastcc %struct.async_ctx_st* @async_ctx_new() #7
  %cmp5 = icmp eq %struct.async_ctx_st* %call3, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end, %if.end4
  %ctx.0156 = phi %struct.async_ctx_st* [ %call3, %if.end4 ], [ %call1, %if.end ]
  %0 = load %struct.async_job_st*, %struct.async_job_st** %job, align 8, !tbaa !24
  %cmp8.not = icmp eq %struct.async_job_st* %0, null
  %currjob11.phi.trans.insert = getelementptr inbounds %struct.async_ctx_st, %struct.async_ctx_st* %ctx.0156, i64 0, i32 1
  br i1 %cmp8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  %.pre.pre = load %struct.async_job_st*, %struct.async_job_st** %currjob11.phi.trans.insert, align 8, !tbaa !4
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  store %struct.async_job_st* %0, %struct.async_job_st** %currjob11.phi.trans.insert, align 8, !tbaa !4
  br label %if.end10

if.end10:                                         ; preds = %if.end7.if.end10_crit_edge, %if.then9
  %.pre = phi %struct.async_job_st* [ %.pre.pre, %if.end7.if.end10_crit_edge ], [ %0, %if.then9 ]
  %currjob11 = getelementptr inbounds %struct.async_ctx_st, %struct.async_ctx_st* %ctx.0156, i64 0, i32 1
  %dispatcher = getelementptr inbounds %struct.async_ctx_st, %struct.async_ctx_st* %ctx.0156, i64 0, i32 0
  %cmp66.not = icmp eq i8* %args, null
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end10
  %1 = phi %struct.async_job_st* [ %9, %for.cond.backedge ], [ %.pre, %if.end10 ]
  %cmp12.not = icmp eq %struct.async_job_st* %1, null
  br i1 %cmp12.not, label %if.end60, label %if.then13

if.then13:                                        ; preds = %for.cond
  %status = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %1, i64 0, i32 4
  %2 = load i32, i32* %status, align 4, !tbaa !22
  switch i32 %2, label %if.end57 [
    i32 3, label %if.then16
    i32 1, label %if.then26
    i32 2, label %if.then35
  ]

if.then16:                                        ; preds = %if.then13
  %ret18 = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %1, i64 0, i32 3
  %3 = load i32, i32* %ret18, align 8, !tbaa !21
  store i32 %3, i32* %ret, align 4, !tbaa !25
  %waitctx = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %1, i64 0, i32 5
  store %struct.async_wait_ctx_st* null, %struct.async_wait_ctx_st** %waitctx, align 8, !tbaa !26
  tail call fastcc void @async_release_job(%struct.async_job_st* noundef nonnull %1) #7
  store %struct.async_job_st* null, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  br label %cleanup.sink.split

if.then26:                                        ; preds = %if.then13
  store %struct.async_job_st* %1, %struct.async_job_st** %job, align 8, !tbaa !24
  %4 = load %struct.async_job_st*, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  %status29 = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %4, i64 0, i32 4
  store i32 2, i32* %status29, align 4, !tbaa !22
  br label %cleanup.sink.split

if.then35:                                        ; preds = %if.then13
  %5 = load %struct.async_job_st*, %struct.async_job_st** %job, align 8, !tbaa !24
  %cmp36 = icmp eq %struct.async_job_st* %5, null
  br i1 %cmp36, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.then35
  store %struct.async_job_st* %5, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  %libctx41 = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %5, i64 0, i32 6
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx41, align 8, !tbaa !27
  %call42 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %6) #6
  %cmp43 = icmp eq %struct.ossl_lib_ctx_st* %call42, null
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end38
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ASYNC_start_job, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 51, i32 noundef 786691, i8* noundef null) #6
  %7 = load %struct.async_job_st*, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  tail call fastcc void @async_release_job(%struct.async_job_st* noundef %7) #7
  store %struct.async_job_st* null, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  br label %cleanup.sink.split

if.end45:                                         ; preds = %if.end38
  %8 = load %struct.async_job_st*, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  %fibrectx = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %8, i64 0, i32 0
  tail call fastcc void @async_fibre_swapcontext(%struct.async_fibre_st* noundef nonnull %dispatcher, %struct.async_fibre_st* noundef %fibrectx) #7
  %call54 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef nonnull %call42) #6
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end45, %if.end82
  %call54.sink = phi %struct.ossl_lib_ctx_st* [ %call54, %if.end45 ], [ %call95, %if.end82 ]
  %9 = load %struct.async_job_st*, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  %libctx56 = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %9, i64 0, i32 6
  store %struct.ossl_lib_ctx_st* %call54.sink, %struct.ossl_lib_ctx_st** %libctx56, align 8, !tbaa !27
  br label %for.cond

if.end57:                                         ; preds = %if.then13
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ASYNC_start_job, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 51, i32 noundef 786691, i8* noundef null) #6
  %10 = load %struct.async_job_st*, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  tail call fastcc void @async_release_job(%struct.async_job_st* noundef %10) #7
  store %struct.async_job_st* null, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  br label %cleanup.sink.split

if.end60:                                         ; preds = %for.cond
  %call61 = tail call fastcc %struct.async_job_st* @async_get_pool_job() #7
  store %struct.async_job_st* %call61, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  %cmp63 = icmp eq %struct.async_job_st* %call61, null
  br i1 %cmp63, label %cleanup, label %if.end65

if.end65:                                         ; preds = %if.end60
  br i1 %cmp66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.end65
  %call68 = tail call i8* @CRYPTO_malloc(i64 noundef %size, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 249) #6
  %11 = load %struct.async_job_st*, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  %funcargs = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %11, i64 0, i32 2
  store i8* %call68, i8** %funcargs, align 8, !tbaa !20
  %cmp72 = icmp eq i8* %call68, null
  br i1 %cmp72, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.then67
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ASYNC_start_job, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 51, i32 noundef 786688, i8* noundef null) #6
  %12 = load %struct.async_job_st*, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  tail call fastcc void @async_release_job(%struct.async_job_st* noundef %12) #7
  br label %cleanup.sink.split

if.end76:                                         ; preds = %if.then67
  %call79 = tail call i8* @memcpy(i8* noundef nonnull %call68, i8* noundef nonnull %args, i64 noundef %size) #6
  %.pre172 = load %struct.async_job_st*, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  br label %if.end82

if.else:                                          ; preds = %if.end65
  %funcargs81 = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %call61, i64 0, i32 2
  store i8* null, i8** %funcargs81, align 8, !tbaa !20
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.end76
  %13 = phi %struct.async_job_st* [ %call61, %if.else ], [ %.pre172, %if.end76 ]
  %func84 = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %13, i64 0, i32 1
  store i32 (i8*)* %func, i32 (i8*)** %func84, align 8, !tbaa !18
  %waitctx86 = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %13, i64 0, i32 5
  store %struct.async_wait_ctx_st* %wctx, %struct.async_wait_ctx_st** %waitctx86, align 8, !tbaa !26
  %call87 = tail call %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef null) #6
  %14 = load %struct.async_job_st*, %struct.async_job_st** %currjob11, align 8, !tbaa !4
  %fibrectx90 = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %14, i64 0, i32 0
  tail call fastcc void @async_fibre_swapcontext(%struct.async_fibre_st* noundef nonnull %dispatcher, %struct.async_fibre_st* noundef %fibrectx90) #7
  %call95 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %call87) #6
  br label %for.cond.backedge

cleanup.sink.split:                               ; preds = %if.then16, %if.then26, %if.end57, %if.then73, %if.then44
  %job.sink = phi %struct.async_job_st** [ %job, %if.then44 ], [ %currjob11, %if.then73 ], [ %job, %if.end57 ], [ %currjob11, %if.then26 ], [ %job, %if.then16 ]
  %retval.0.ph = phi i32 [ 0, %if.then44 ], [ 0, %if.then73 ], [ 0, %if.end57 ], [ 2, %if.then26 ], [ 3, %if.then16 ]
  store %struct.async_job_st* null, %struct.async_job_st** %job.sink, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then35, %cleanup.sink.split, %if.end4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end4 ], [ %retval.0.ph, %cleanup.sink.split ], [ 1, %if.end60 ], [ 0, %if.then35 ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.async_ctx_st* @async_ctx_new() unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_init_thread_start(i8* noundef null, i8* noundef null, void (i8*)* noundef nonnull @async_delete_thread_state) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 1192, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 42) #6
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.async_ctx_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 51, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end3:                                          ; preds = %if.end
  %0 = bitcast i8* %call1 to %struct.async_ctx_st*
  %currjob = getelementptr inbounds i8, i8* %call1, i64 1176
  %1 = bitcast i8* %currjob to %struct.async_job_st**
  store %struct.async_job_st* null, %struct.async_job_st** %1, align 8, !tbaa !4
  %blocked = getelementptr inbounds i8, i8* %call1, i64 1184
  %2 = bitcast i8* %blocked to i32*
  store i32 0, i32* %2, align 8, !tbaa !28
  %call4 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @ctxkey, i8* noundef nonnull %call1) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %cleanup

err:                                              ; preds = %if.end3, %if.then2
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 56) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry, %err
  %retval.0 = phi %struct.async_ctx_st* [ null, %err ], [ null, %entry ], [ %0, %if.end3 ]
  ret %struct.async_ctx_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @async_release_job(%struct.async_job_st* noundef %job) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @poolkey) #6
  %funcargs = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %job, i64 0, i32 2
  %0 = load i8*, i8** %funcargs, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 141) #6
  store i8* null, i8** %funcargs, align 8, !tbaa !20
  %jobs = bitcast i8* %call to %struct.stack_st_ASYNC_JOB**
  %1 = load %struct.stack_st_ASYNC_JOB*, %struct.stack_st_ASYNC_JOB** %jobs, align 8, !tbaa !29
  tail call fastcc void @sk_ASYNC_JOB_push(%struct.stack_st_ASYNC_JOB* noundef %1, %struct.async_job_st* noundef %job) #7
  ret void
}

declare %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.async_job_st* @async_get_pool_job() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @poolkey) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ASYNC_init_thread(i64 noundef 0, i64 noundef 0) #7
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call4 = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @poolkey) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %pool.0.in = phi i8* [ %call4, %if.end ], [ %call, %entry ]
  %jobs = bitcast i8* %pool.0.in to %struct.stack_st_ASYNC_JOB**
  %0 = load %struct.stack_st_ASYNC_JOB*, %struct.stack_st_ASYNC_JOB** %jobs, align 8, !tbaa !29
  %call6 = tail call fastcc %struct.async_job_st* @sk_ASYNC_JOB_pop(%struct.stack_st_ASYNC_JOB* noundef %0) #7
  %cmp7 = icmp eq %struct.async_job_st* %call6, null
  br i1 %cmp7, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end5
  %max_size = getelementptr inbounds i8, i8* %pool.0.in, i64 16
  %1 = bitcast i8* %max_size to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !31
  %cmp9.not = icmp eq i64 %2, 0
  br i1 %cmp9.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then8
  %curr_size = getelementptr inbounds i8, i8* %pool.0.in, i64 8
  %3 = bitcast i8* %curr_size to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !32
  %cmp11.not = icmp ult i64 %4, %2
  br i1 %cmp11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %land.lhs.true, %if.then8
  %call14 = tail call fastcc %struct.async_job_st* @async_job_new() #7
  %cmp15.not = icmp eq %struct.async_job_st* %call14, null
  br i1 %cmp15.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %if.end13
  %fibrectx = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %call14, i64 0, i32 0
  %call17 = tail call i32 @async_fibre_makecontext(%struct.async_fibre_st* noundef nonnull %fibrectx) #6
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then16
  tail call fastcc void @async_job_free(%struct.async_job_st* noundef nonnull %call14) #7
  br label %cleanup

if.end19:                                         ; preds = %if.then16
  %curr_size20 = getelementptr inbounds i8, i8* %pool.0.in, i64 8
  %5 = bitcast i8* %curr_size20 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !32
  %inc = add i64 %6, 1
  store i64 %inc, i64* %5, align 8, !tbaa !32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end19, %if.end13, %land.lhs.true, %if.then, %if.then18
  %retval.0 = phi %struct.async_job_st* [ null, %if.then18 ], [ null, %if.then ], [ null, %land.lhs.true ], [ %call14, %if.end19 ], [ null, %if.end13 ], [ %call6, %if.end5 ]
  ret %struct.async_job_st* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASYNC_pause_job() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.async_ctx_st* @async_get_ctx() #7
  %cmp = icmp eq %struct.async_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %currjob = getelementptr inbounds %struct.async_ctx_st, %struct.async_ctx_st* %call, i64 0, i32 1
  %0 = load %struct.async_job_st*, %struct.async_job_st** %currjob, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.async_job_st* %0, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %blocked = getelementptr inbounds %struct.async_ctx_st, %struct.async_ctx_st* %call, i64 0, i32 2
  %1 = load i32, i32* %blocked, align 8, !tbaa !28
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %status = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %0, i64 0, i32 4
  store i32 1, i32* %status, align 4, !tbaa !22
  %fibrectx = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %0, i64 0, i32 0
  %dispatcher = getelementptr inbounds %struct.async_ctx_st, %struct.async_ctx_st* %call, i64 0, i32 0
  tail call fastcc void @async_fibre_swapcontext(%struct.async_fibre_st* noundef nonnull %fibrectx, %struct.async_fibre_st* noundef nonnull %dispatcher) #7
  %waitctx = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %0, i64 0, i32 5
  %2 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %waitctx, align 8, !tbaa !26
  tail call void @async_wait_ctx_reset_counts(%struct.async_wait_ctx_st* noundef %2) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %if.end
  ret i32 1
}

declare void @async_wait_ctx_reset_counts(%struct.async_wait_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @async_init() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_init_local(i32* noundef nonnull @ctxkey, void (i8*)* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @CRYPTO_THREAD_init_local(i32* noundef nonnull @poolkey, void (i8*)* noundef null) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %return

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @CRYPTO_THREAD_cleanup_local(i32* noundef nonnull @ctxkey) #6
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_THREAD_init_local(i32* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_cleanup_local(i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @async_deinit() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_cleanup_local(i32* noundef nonnull @ctxkey) #6
  %call1 = tail call i32 @CRYPTO_THREAD_cleanup_local(i32* noundef nonnull @poolkey) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASYNC_init_thread(i64 noundef %max_size, i64 noundef %init_size) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %init_size, %max_size
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ASYNC_init_thread, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 51, i32 noundef 103, i8* noundef null) #6
  br label %cleanup34

if.end:                                           ; preds = %entry
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 256, %struct.ossl_init_settings_st* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup34, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @ossl_init_thread_start(i8* noundef null, i8* noundef null, void (i8*)* noundef nonnull @async_delete_thread_state) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup34, label %if.end6

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 360) #6
  %0 = bitcast i8* %call7 to %struct.async_pool_st*
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ASYNC_init_thread, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 51, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup34

if.end10:                                         ; preds = %if.end6
  %conv = trunc i64 %init_size to i32
  %call11 = tail call fastcc %struct.stack_st_ASYNC_JOB* @sk_ASYNC_JOB_new_reserve(i32 noundef %conv) #7
  %jobs = bitcast i8* %call7 to %struct.stack_st_ASYNC_JOB**
  store %struct.stack_st_ASYNC_JOB* %call11, %struct.stack_st_ASYNC_JOB** %jobs, align 8, !tbaa !29
  %cmp13 = icmp eq %struct.stack_st_ASYNC_JOB* %call11, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ASYNC_init_thread, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 51, i32 noundef 786688, i8* noundef null) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 369) #6
  br label %cleanup34

if.end16:                                         ; preds = %if.end10
  %max_size17 = getelementptr inbounds i8, i8* %call7, i64 16
  %1 = bitcast i8* %max_size17 to i64*
  store i64 %max_size, i64* %1, align 8, !tbaa !31
  %tobool18.not63 = icmp eq i64 %init_size, 0
  br i1 %tobool18.not63, label %while.end, label %while.body

while.body:                                       ; preds = %if.end16, %cleanup
  %dec65.in = phi i64 [ %dec65, %cleanup ], [ %init_size, %if.end16 ]
  %curr_size.064 = phi i64 [ %inc, %cleanup ], [ 0, %if.end16 ]
  %dec65 = add i64 %dec65.in, -1
  %call19 = tail call fastcc %struct.async_job_st* @async_job_new() #7
  %cmp20 = icmp eq %struct.async_job_st* %call19, null
  br i1 %cmp20, label %cleanup.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %fibrectx = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %call19, i64 0, i32 0
  %call22 = tail call i32 @async_fibre_makecontext(%struct.async_fibre_st* noundef nonnull %fibrectx) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body, %lor.lhs.false
  tail call fastcc void @async_job_free(%struct.async_job_st* noundef %call19) #7
  br label %while.end

cleanup:                                          ; preds = %lor.lhs.false
  %funcargs = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %call19, i64 0, i32 2
  store i8* null, i8** %funcargs, align 8, !tbaa !20
  %2 = load %struct.stack_st_ASYNC_JOB*, %struct.stack_st_ASYNC_JOB** %jobs, align 8, !tbaa !29
  tail call fastcc void @sk_ASYNC_JOB_push(%struct.stack_st_ASYNC_JOB* noundef %2, %struct.async_job_st* noundef nonnull %call19) #7
  %inc = add nuw i64 %curr_size.064, 1
  %tobool18.not = icmp eq i64 %dec65, 0
  br i1 %tobool18.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %if.end16, %cleanup.thread
  %curr_size.061 = phi i64 [ %curr_size.064, %cleanup.thread ], [ 0, %if.end16 ], [ %init_size, %cleanup ]
  %curr_size28 = getelementptr inbounds i8, i8* %call7, i64 8
  %3 = bitcast i8* %curr_size28 to i64*
  store i64 %curr_size.061, i64* %3, align 8, !tbaa !32
  %call29 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @poolkey, i8* noundef nonnull %call7) #6
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %cleanup34

if.then31:                                        ; preds = %while.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ASYNC_init_thread, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 51, i32 noundef 101, i8* noundef null) #6
  tail call fastcc void @async_empty_pool(%struct.async_pool_st* noundef nonnull %0) #7
  %4 = load %struct.stack_st_ASYNC_JOB*, %struct.stack_st_ASYNC_JOB** %jobs, align 8, !tbaa !29
  tail call fastcc void @sk_ASYNC_JOB_free(%struct.stack_st_ASYNC_JOB* noundef %4) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 401) #6
  br label %cleanup34

cleanup34:                                        ; preds = %while.end, %if.end2, %if.end, %if.then31, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.then15 ], [ 0, %if.then31 ], [ 0, %if.end ], [ 0, %if.end2 ], [ 1, %while.end ]
  ret i32 %retval.0
}

declare i32 @ossl_init_thread_start(i8* noundef, i8* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @async_delete_thread_state(i8* nocapture noundef readnone %arg) #0 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @poolkey) #6
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %call to %struct.async_pool_st*
  tail call fastcc void @async_empty_pool(%struct.async_pool_st* noundef nonnull %0) #7
  %jobs = bitcast i8* %call to %struct.stack_st_ASYNC_JOB**
  %1 = load %struct.stack_st_ASYNC_JOB*, %struct.stack_st_ASYNC_JOB** %jobs, align 8, !tbaa !29
  tail call fastcc void @sk_ASYNC_JOB_free(%struct.stack_st_ASYNC_JOB* noundef %1) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 412) #6
  %call1 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @poolkey, i8* noundef null) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @async_local_cleanup() #6
  tail call fastcc void @async_ctx_free() #7
  ret void
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_ASYNC_JOB* @sk_ASYNC_JOB_new_reserve(i32 noundef %n) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %n) #6
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_ASYNC_JOB*
  ret %struct.stack_st_ASYNC_JOB* %0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.async_job_st* @async_job_new() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 1216, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 84) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.async_job_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 51, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.async_job_st*
  %status = getelementptr inbounds i8, i8* %call, i64 1196
  %1 = bitcast i8* %status to i32*
  store i32 0, i32* %1, align 4, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.async_job_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.async_job_st* %retval.0
}

declare i32 @async_fibre_makecontext(%struct.async_fibre_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @async_job_free(%struct.async_job_st* noundef %job) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.async_job_st* %job, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %funcargs = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %job, i64 0, i32 2
  %0 = load i8*, i8** %funcargs, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 98) #6
  %fibrectx = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %job, i64 0, i32 0
  tail call void @async_fibre_free(%struct.async_fibre_st* noundef nonnull %fibrectx) #6
  %1 = bitcast %struct.async_job_st* %job to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 100) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_ASYNC_JOB_push(%struct.stack_st_ASYNC_JOB* noundef %sk, %struct.async_job_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASYNC_JOB* %sk to %struct.stack_st*
  %1 = bitcast %struct.async_job_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret void
}

declare i32 @CRYPTO_THREAD_set_local(i32* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @async_empty_pool(%struct.async_pool_st* noundef readonly %pool) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.async_pool_st* %pool, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %jobs = getelementptr inbounds %struct.async_pool_st, %struct.async_pool_st* %pool, i64 0, i32 0
  %0 = load %struct.stack_st_ASYNC_JOB*, %struct.stack_st_ASYNC_JOB** %jobs, align 8, !tbaa !29
  %cmp1 = icmp eq %struct.stack_st_ASYNC_JOB* %0, null
  br i1 %cmp1, label %cleanup, label %do.body.preheader

do.body.preheader:                                ; preds = %lor.lhs.false
  %call7 = tail call fastcc %struct.async_job_st* @sk_ASYNC_JOB_pop(%struct.stack_st_ASYNC_JOB* noundef nonnull %0) #7
  tail call fastcc void @async_job_free(%struct.async_job_st* noundef %call7) #7
  %tobool.not8 = icmp eq %struct.async_job_st* %call7, null
  br i1 %tobool.not8, label %cleanup, label %do.body.do.body_crit_edge, !llvm.loop !33

do.body.do.body_crit_edge:                        ; preds = %do.body.preheader, %do.body.do.body_crit_edge
  %.pre = load %struct.stack_st_ASYNC_JOB*, %struct.stack_st_ASYNC_JOB** %jobs, align 8, !tbaa !29
  %call = tail call fastcc %struct.async_job_st* @sk_ASYNC_JOB_pop(%struct.stack_st_ASYNC_JOB* noundef %.pre) #7
  tail call fastcc void @async_job_free(%struct.async_job_st* noundef %call) #7
  %tobool.not = icmp eq %struct.async_job_st* %call, null
  br i1 %tobool.not, label %cleanup, label %do.body.do.body_crit_edge, !llvm.loop !33

cleanup:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader, %entry, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_ASYNC_JOB_free(%struct.stack_st_ASYNC_JOB* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASYNC_JOB* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ASYNC_cleanup_thread() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 256, %struct.ossl_init_settings_st* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @async_delete_thread_state(i8* noundef null) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.async_job_st* @ASYNC_get_current_job() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 256, %struct.ossl_init_settings_st* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.async_ctx_st* @async_get_ctx() #7
  %cmp = icmp eq %struct.async_ctx_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %currjob = getelementptr inbounds %struct.async_ctx_st, %struct.async_ctx_st* %call1, i64 0, i32 1
  %0 = load %struct.async_job_st*, %struct.async_job_st** %currjob, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi %struct.async_job_st* [ %0, %if.end3 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.async_job_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.async_wait_ctx_st* @ASYNC_get_wait_ctx(%struct.async_job_st* nocapture noundef readonly %job) local_unnamed_addr #4 {
entry:
  %waitctx = getelementptr inbounds %struct.async_job_st, %struct.async_job_st* %job, i64 0, i32 5
  %0 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %waitctx, align 8, !tbaa !26
  ret %struct.async_wait_ctx_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ASYNC_block_pause() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 256, %struct.ossl_init_settings_st* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.async_ctx_st* @async_get_ctx() #7
  %cmp = icmp eq %struct.async_ctx_st* %call1, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %currjob = getelementptr inbounds %struct.async_ctx_st, %struct.async_ctx_st* %call1, i64 0, i32 1
  %0 = load %struct.async_job_st*, %struct.async_job_st** %currjob, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.async_job_st* %0, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %blocked = getelementptr inbounds %struct.async_ctx_st, %struct.async_ctx_st* %call1, i64 0, i32 2
  %1 = load i32, i32* %blocked, align 8, !tbaa !28
  %inc = add i32 %1, 1
  store i32 %inc, i32* %blocked, align 8, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry, %if.end4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ASYNC_unblock_pause() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 256, %struct.ossl_init_settings_st* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.async_ctx_st* @async_get_ctx() #7
  %cmp = icmp eq %struct.async_ctx_st* %call1, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %currjob = getelementptr inbounds %struct.async_ctx_st, %struct.async_ctx_st* %call1, i64 0, i32 1
  %0 = load %struct.async_job_st*, %struct.async_job_st** %currjob, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.async_job_st* %0, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %blocked = getelementptr inbounds %struct.async_ctx_st, %struct.async_ctx_st* %call1, i64 0, i32 2
  %1 = load i32, i32* %blocked, align 8, !tbaa !28
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %blocked, align 8, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then6, %if.end, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @_setjmp(%struct.__jmp_buf_tag* noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @_longjmp(%struct.__jmp_buf_tag* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @setcontext(%struct.ucontext_t* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.async_job_st* @sk_ASYNC_JOB_pop(%struct.stack_st_ASYNC_JOB* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASYNC_JOB* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %0) #6
  %1 = bitcast i8* %call to %struct.async_job_st*
  ret %struct.async_job_st* %1
}

declare i8* @OPENSSL_sk_pop(%struct.stack_st* noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #1

declare void @async_fibre_free(%struct.async_fibre_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

declare void @async_local_cleanup() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @async_ctx_free() unnamed_addr #0 {
entry:
  %call = tail call %struct.async_ctx_st* @async_get_ctx() #7
  %call1 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @ctxkey, i8* noundef null) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.async_ctx_st* %call to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 75) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !11, i64 1176}
!5 = !{!"async_ctx_st", !6, i64 0, !11, i64 1176, !13, i64 1184}
!6 = !{!"async_fibre_st", !7, i64 0, !9, i64 968, !13, i64 1168}
!7 = !{!"ucontext_t", !8, i64 0, !11, i64 8, !12, i64 16, !14, i64 40, !15, i64 296, !16, i64 424, !9, i64 936}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!"", !11, i64 0, !13, i64 8, !8, i64 16}
!13 = !{!"int", !9, i64 0}
!14 = !{!"", !9, i64 0, !11, i64 184, !9, i64 192}
!15 = !{!"", !9, i64 0}
!16 = !{!"_libc_fpstate", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !8, i64 8, !8, i64 16, !13, i64 24, !13, i64 28, !9, i64 32, !9, i64 160, !9, i64 416}
!17 = !{!"short", !9, i64 0}
!18 = !{!19, !11, i64 1176}
!19 = !{!"async_job_st", !6, i64 0, !11, i64 1176, !11, i64 1184, !13, i64 1192, !13, i64 1196, !11, i64 1200, !11, i64 1208}
!20 = !{!19, !11, i64 1184}
!21 = !{!19, !13, i64 1192}
!22 = !{!19, !13, i64 1196}
!23 = !{!6, !13, i64 1168}
!24 = !{!11, !11, i64 0}
!25 = !{!13, !13, i64 0}
!26 = !{!19, !11, i64 1200}
!27 = !{!19, !11, i64 1208}
!28 = !{!5, !13, i64 1184}
!29 = !{!30, !11, i64 0}
!30 = !{!"async_pool_st", !11, i64 0, !8, i64 8, !8, i64 16}
!31 = !{!30, !8, i64 16}
!32 = !{!30, !8, i64 8}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
