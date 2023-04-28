; ModuleID = 'test/asynctest.c'
source_filename = "test/asynctest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [59 x i8] c"OpenSSL build is not ASYNC capable - skipping async tests\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"test_ASYNC_init_thread() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"test_ASYNC_callback_status() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"callback test pass\0A\00", align 1
@ctr = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"test_ASYNC_start_job() failed\0A\00", align 1
@currjob = internal unnamed_addr global %struct.async_job_st* null, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"test_ASYNC_get_current_job() failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"test_ASYNC_get_wait_fd() failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"test_ASYNC_block_pause() failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"test_ASYNC_start_job_ex() failed to create libctx\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"test_ASYNC_start_job_ex() failed to start job\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"test_ASYNC_start_job_ex() failed - unexpected libctx\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"test_ASYNC_start_job_ex() - restarting job failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"test_ASYNC_start_job_ex() - finishing job failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"test_ASYNC_start_job_ex() failed - global libctx check failed\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ASYNC_is_capable() #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0)) #3
  br label %if.end22

if.else:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @test_ASYNC_init_thread() #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call4 = tail call fastcc i32 @test_ASYNC_callback_status() #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call fastcc i32 @test_ASYNC_start_job() #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call fastcc i32 @test_ASYNC_get_current_job() #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %return, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call fastcc i32 @test_ASYNC_WAIT_CTX_get_all_fds() #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call fastcc i32 @test_ASYNC_block_pause() #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %return, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call fastcc i32 @test_ASYNC_start_job_ex() #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %return, label %if.end22

if.end22:                                         ; preds = %lor.lhs.false18, %if.then
  %call23 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #3
  br label %return

return:                                           ; preds = %if.else, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false9, %lor.lhs.false12, %lor.lhs.false15, %lor.lhs.false18, %if.end22
  %retval.0 = phi i32 [ 0, %if.end22 ], [ 1, %lor.lhs.false18 ], [ 1, %lor.lhs.false15 ], [ 1, %lor.lhs.false12 ], [ 1, %lor.lhs.false9 ], [ 1, %lor.lhs.false6 ], [ 1, %lor.lhs.false ], [ 1, %if.else ]
  ret i32 %retval.0
}

declare dso_local i32 @ASYNC_is_capable() local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_ASYNC_init_thread() unnamed_addr #0 {
entry:
  %job1 = alloca %struct.async_job_st*, align 8
  %job2 = alloca %struct.async_job_st*, align 8
  %job3 = alloca %struct.async_job_st*, align 8
  %funcret1 = alloca i32, align 4
  %funcret2 = alloca i32, align 4
  %funcret3 = alloca i32, align 4
  %0 = bitcast %struct.async_job_st** %job1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.async_job_st* null, %struct.async_job_st** %job1, align 8, !tbaa !3
  %1 = bitcast %struct.async_job_st** %job2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.async_job_st* null, %struct.async_job_st** %job2, align 8, !tbaa !3
  %2 = bitcast %struct.async_job_st** %job3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store %struct.async_job_st* null, %struct.async_job_st** %job3, align 8, !tbaa !3
  %3 = bitcast i32* %funcret1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5
  %4 = bitcast i32* %funcret2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5
  %5 = bitcast i32* %funcret3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #5
  %call = tail call i32 @ASYNC_init_thread(i64 noundef 2, i64 noundef 0) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.async_wait_ctx_st* @ASYNC_WAIT_CTX_new() #3
  %cmp = icmp eq %struct.async_wait_ctx_st* %call1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job1, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret1, i32 (i8*)* noundef nonnull @only_pause, i8* noundef null, i64 noundef 0) #3
  %cmp4.not = icmp eq i32 %call3, 2
  br i1 %cmp4.not, label %lor.lhs.false5, label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %call6 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job2, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret2, i32 (i8*)* noundef nonnull @only_pause, i8* noundef null, i64 noundef 0) #3
  %cmp7.not = icmp eq i32 %call6, 2
  br i1 %cmp7.not, label %lor.lhs.false8, label %if.then

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %call9 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job3, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret3, i32 (i8*)* noundef nonnull @only_pause, i8* noundef null, i64 noundef 0) #3
  %cmp10.not = icmp eq i32 %call9, 1
  br i1 %cmp10.not, label %lor.lhs.false11, label %if.then

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job1, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret1, i32 (i8*)* noundef nonnull @only_pause, i8* noundef null, i64 noundef 0) #3
  %cmp13.not = icmp eq i32 %call12, 3
  br i1 %cmp13.not, label %lor.lhs.false14, label %if.then

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %call15 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job3, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret3, i32 (i8*)* noundef nonnull @only_pause, i8* noundef null, i64 noundef 0) #3
  %cmp16.not = icmp eq i32 %call15, 2
  br i1 %cmp16.not, label %lor.lhs.false17, label %if.then

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %call18 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job2, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret2, i32 (i8*)* noundef nonnull @only_pause, i8* noundef null, i64 noundef 0) #3
  %cmp19.not = icmp eq i32 %call18, 3
  br i1 %cmp19.not, label %lor.lhs.false20, label %if.then

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %call21 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job3, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret3, i32 (i8*)* noundef nonnull @only_pause, i8* noundef null, i64 noundef 0) #3
  %cmp22 = icmp ne i32 %call21, 3
  %6 = load i32, i32* %funcret1, align 4
  %cmp24 = icmp ne i32 %6, 1
  %or.cond = select i1 %cmp22, i1 true, i1 %cmp24
  %7 = load i32, i32* %funcret2, align 4
  %cmp26 = icmp ne i32 %7, 1
  %or.cond36 = select i1 %or.cond, i1 true, i1 %cmp26
  %8 = load i32, i32* %funcret3, align 4
  %cmp28 = icmp ne i32 %8, 1
  %or.cond37 = select i1 %or.cond36, i1 true, i1 %cmp28
  br i1 %or.cond37, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false20, %lor.lhs.false17, %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  %waitctx.0 = phi %struct.async_wait_ctx_st* [ null, %lor.lhs.false ], [ %call1, %lor.lhs.false2 ], [ %call1, %lor.lhs.false5 ], [ %call1, %lor.lhs.false8 ], [ %call1, %lor.lhs.false11 ], [ %call1, %lor.lhs.false14 ], [ %call1, %lor.lhs.false17 ], [ %call1, %lor.lhs.false20 ], [ null, %entry ]
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #3
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef %waitctx.0) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false20
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef nonnull %call1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  call void @ASYNC_cleanup_thread() #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_ASYNC_callback_status() unnamed_addr #0 {
entry:
  %set_arg = alloca i32, align 4
  %get_callback = alloca i32 (i8*)*, align 8
  %get_arg = alloca i8*, align 8
  %0 = bitcast i32* %set_arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 100, i32* %set_arg, align 4, !tbaa !7
  %1 = bitcast i32 (i8*)** %get_callback to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast i8** %get_arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %call = tail call i32 @ASYNC_init_thread(i64 noundef 1, i64 noundef 0) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.async_wait_ctx_st* @ASYNC_WAIT_CTX_new() #3
  %cmp = icmp eq %struct.async_wait_ctx_st* %call1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = call i32 @ASYNC_WAIT_CTX_set_callback(%struct.async_wait_ctx_st* noundef nonnull %call1, i32 (i8*)* noundef nonnull @test_callback, i8* noundef nonnull %0) #3
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %lor.lhs.false5, label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %call6 = call i32 @ASYNC_WAIT_CTX_get_callback(%struct.async_wait_ctx_st* noundef nonnull %call1, i32 (i8*)** noundef nonnull %get_callback, i8** noundef nonnull %get_arg) #3
  %cmp7 = icmp ne i32 %call6, 1
  %3 = load i32 (i8*)*, i32 (i8*)** %get_callback, align 8
  %cmp9 = icmp ne i32 (i8*)* %3, @test_callback
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp9
  %4 = load i8*, i8** %get_arg, align 8
  %cmp11 = icmp ne i8* %4, %0
  %or.cond27 = select i1 %or.cond, i1 true, i1 %cmp11
  br i1 %or.cond27, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false5
  %call13 = call i32 @test_callback(i8* noundef nonnull %0) #4
  %cmp14.not = icmp eq i32 %call13, 1
  br i1 %cmp14.not, label %lor.lhs.false15, label %if.then

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = call i32 @ASYNC_WAIT_CTX_set_status(%struct.async_wait_ctx_st* noundef nonnull %call1, i32 noundef 1) #3
  %cmp17.not = icmp eq i32 %call16, 1
  br i1 %cmp17.not, label %lor.lhs.false18, label %if.then

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = call i32 @ASYNC_WAIT_CTX_get_status(%struct.async_wait_ctx_st* noundef nonnull %call1) #3
  %cmp20.not = icmp eq i32 %call19, 1
  br i1 %cmp20.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  %waitctx.0 = phi %struct.async_wait_ctx_st* [ null, %lor.lhs.false ], [ %call1, %lor.lhs.false2 ], [ %call1, %lor.lhs.false5 ], [ %call1, %lor.lhs.false12 ], [ %call1, %lor.lhs.false15 ], [ %call1, %lor.lhs.false18 ], [ null, %entry ]
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #3
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef %waitctx.0) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false18
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef nonnull %call1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  call void @ASYNC_cleanup_thread() #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_ASYNC_start_job() unnamed_addr #0 {
entry:
  %job = alloca %struct.async_job_st*, align 8
  %funcret = alloca i32, align 4
  %0 = bitcast %struct.async_job_st** %job to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.async_job_st* null, %struct.async_job_st** %job, align 8, !tbaa !3
  %1 = bitcast i32* %funcret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  store i32 0, i32* @ctr, align 4, !tbaa !7
  %call = tail call i32 @ASYNC_init_thread(i64 noundef 1, i64 noundef 0) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.async_wait_ctx_st* @ASYNC_WAIT_CTX_new() #3
  %cmp = icmp eq %struct.async_wait_ctx_st* %call1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret, i32 (i8*)* noundef nonnull @add_two, i8* noundef null, i64 noundef 0) #3
  %cmp4 = icmp ne i32 %call3, 2
  %2 = load i32, i32* @ctr, align 4
  %cmp6 = icmp ne i32 %2, 1
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %call8 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret, i32 (i8*)* noundef nonnull @add_two, i8* noundef null, i64 noundef 0) #3
  %cmp9 = icmp ne i32 %call8, 3
  %3 = load i32, i32* @ctr, align 4
  %cmp11 = icmp ne i32 %3, 2
  %or.cond17 = select i1 %cmp9, i1 true, i1 %cmp11
  %4 = load i32, i32* %funcret, align 4
  %cmp13 = icmp ne i32 %4, 2
  %or.cond18 = select i1 %or.cond17, i1 true, i1 %cmp13
  br i1 %or.cond18, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %lor.lhs.false, %entry
  %waitctx.0 = phi %struct.async_wait_ctx_st* [ null, %lor.lhs.false ], [ %call1, %lor.lhs.false2 ], [ %call1, %lor.lhs.false7 ], [ null, %entry ]
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0)) #3
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef %waitctx.0) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef nonnull %call1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  call void @ASYNC_cleanup_thread() #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_ASYNC_get_current_job() unnamed_addr #0 {
entry:
  %job = alloca %struct.async_job_st*, align 8
  %funcret = alloca i32, align 4
  %0 = bitcast %struct.async_job_st** %job to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.async_job_st* null, %struct.async_job_st** %job, align 8, !tbaa !3
  %1 = bitcast i32* %funcret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  store %struct.async_job_st* null, %struct.async_job_st** @currjob, align 8, !tbaa !3
  %call = tail call i32 @ASYNC_init_thread(i64 noundef 1, i64 noundef 0) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.async_wait_ctx_st* @ASYNC_WAIT_CTX_new() #3
  %cmp = icmp eq %struct.async_wait_ctx_st* %call1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret, i32 (i8*)* noundef nonnull @save_current, i8* noundef null, i64 noundef 0) #3
  %cmp4.not = icmp eq i32 %call3, 2
  br i1 %cmp4.not, label %lor.lhs.false5, label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %2 = load %struct.async_job_st*, %struct.async_job_st** @currjob, align 8, !tbaa !3
  %3 = load %struct.async_job_st*, %struct.async_job_st** %job, align 8, !tbaa !3
  %cmp6.not = icmp eq %struct.async_job_st* %2, %3
  br i1 %cmp6.not, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %call8 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret, i32 (i8*)* noundef nonnull @save_current, i8* noundef null, i64 noundef 0) #3
  %cmp9 = icmp ne i32 %call8, 3
  %4 = load i32, i32* %funcret, align 4
  %cmp11 = icmp ne i32 %4, 1
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  %waitctx.0 = phi %struct.async_wait_ctx_st* [ null, %lor.lhs.false ], [ %call1, %lor.lhs.false2 ], [ %call1, %lor.lhs.false5 ], [ %call1, %lor.lhs.false7 ], [ null, %entry ]
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0)) #3
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef %waitctx.0) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef nonnull %call1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  call void @ASYNC_cleanup_thread() #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_ASYNC_WAIT_CTX_get_all_fds() unnamed_addr #0 {
entry:
  %job = alloca %struct.async_job_st*, align 8
  %funcret = alloca i32, align 4
  %fd = alloca i32, align 4
  %delfd = alloca i32, align 4
  %numfds = alloca i64, align 8
  %numdelfds = alloca i64, align 8
  %0 = bitcast %struct.async_job_st** %job to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.async_job_st* null, %struct.async_job_st** %job, align 8, !tbaa !3
  %1 = bitcast i32* %funcret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  store i32 -1, i32* %fd, align 4, !tbaa !7
  %3 = bitcast i32* %delfd to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5
  store i32 -1, i32* %delfd, align 4, !tbaa !7
  %4 = bitcast i64* %numfds to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  %5 = bitcast i64* %numdelfds to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  %call = tail call i32 @ASYNC_init_thread(i64 noundef 1, i64 noundef 0) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.async_wait_ctx_st* @ASYNC_WAIT_CTX_new() #3
  %cmp = icmp eq %struct.async_wait_ctx_st* %call1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret, i32 (i8*)* noundef nonnull @waitfd, i8* noundef null, i64 noundef 0) #3
  %cmp4.not = icmp eq i32 %call3, 2
  br i1 %cmp4.not, label %lor.lhs.false5, label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %call6 = call i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef null, i64* noundef nonnull %numfds) #3
  %tobool7 = icmp eq i32 %call6, 0
  %6 = load i64, i64* %numfds, align 8
  %cmp9 = icmp ne i64 %6, 0
  %or.cond = select i1 %tobool7, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %call11 = call i32 @ASYNC_WAIT_CTX_get_changed_fds(%struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef null, i64* noundef nonnull %numfds, i32* noundef null, i64* noundef nonnull %numdelfds) #3
  %tobool12 = icmp eq i32 %call11, 0
  %7 = load i64, i64* %numfds, align 8
  %cmp14 = icmp ne i64 %7, 0
  %or.cond87 = select i1 %tobool12, i1 true, i1 %cmp14
  %8 = load i64, i64* %numdelfds, align 8
  %cmp16 = icmp ne i64 %8, 0
  %or.cond88 = select i1 %or.cond87, i1 true, i1 %cmp16
  br i1 %or.cond88, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false10
  %call18 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret, i32 (i8*)* noundef nonnull @waitfd, i8* noundef null, i64 noundef 0) #3
  %cmp19.not = icmp eq i32 %call18, 2
  br i1 %cmp19.not, label %lor.lhs.false20, label %if.then

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %call21 = call i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef null, i64* noundef nonnull %numfds) #3
  %tobool22 = icmp eq i32 %call21, 0
  %9 = load i64, i64* %numfds, align 8
  %cmp24 = icmp ne i64 %9, 1
  %or.cond89 = select i1 %tobool22, i1 true, i1 %cmp24
  br i1 %or.cond89, label %if.then, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false20
  %call26 = call i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %fd, i64* noundef nonnull %numfds) #3
  %tobool27 = icmp eq i32 %call26, 0
  %10 = load i32, i32* %fd, align 4
  %cmp29 = icmp ne i32 %10, 99
  %or.cond90 = select i1 %tobool27, i1 true, i1 %cmp29
  br i1 %or.cond90, label %if.then, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  store i32 -1, i32* %fd, align 4, !tbaa !7
  %call32 = call i32 @ASYNC_WAIT_CTX_get_changed_fds(%struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef null, i64* noundef nonnull %numfds, i32* noundef null, i64* noundef nonnull %numdelfds) #3
  %tobool33 = icmp eq i32 %call32, 0
  %11 = load i64, i64* %numfds, align 8
  %cmp35 = icmp ne i64 %11, 1
  %or.cond91 = select i1 %tobool33, i1 true, i1 %cmp35
  %12 = load i64, i64* %numdelfds, align 8
  %cmp37 = icmp ne i64 %12, 0
  %or.cond92 = select i1 %or.cond91, i1 true, i1 %cmp37
  br i1 %or.cond92, label %if.then, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false30
  %call39 = call i32 @ASYNC_WAIT_CTX_get_changed_fds(%struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %fd, i64* noundef nonnull %numfds, i32* noundef null, i64* noundef nonnull %numdelfds) #3
  %tobool40 = icmp eq i32 %call39, 0
  %13 = load i32, i32* %fd, align 4
  %cmp42 = icmp ne i32 %13, 99
  %or.cond93 = select i1 %tobool40, i1 true, i1 %cmp42
  br i1 %or.cond93, label %if.then, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false38
  %call44 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret, i32 (i8*)* noundef nonnull @waitfd, i8* noundef null, i64 noundef 0) #3
  %cmp45.not = icmp eq i32 %call44, 2
  br i1 %cmp45.not, label %lor.lhs.false46, label %if.then

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %call47 = call i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef null, i64* noundef nonnull %numfds) #3
  %tobool48 = icmp eq i32 %call47, 0
  %14 = load i64, i64* %numfds, align 8
  %cmp50 = icmp ne i64 %14, 0
  %or.cond94 = select i1 %tobool48, i1 true, i1 %cmp50
  br i1 %or.cond94, label %if.then, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false46
  %call52 = call i32 @ASYNC_WAIT_CTX_get_changed_fds(%struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef null, i64* noundef nonnull %numfds, i32* noundef null, i64* noundef nonnull %numdelfds) #3
  %tobool53 = icmp eq i32 %call52, 0
  %15 = load i64, i64* %numfds, align 8
  %cmp55 = icmp ne i64 %15, 0
  %or.cond95 = select i1 %tobool53, i1 true, i1 %cmp55
  %16 = load i64, i64* %numdelfds, align 8
  %cmp57 = icmp ne i64 %16, 1
  %or.cond96 = select i1 %or.cond95, i1 true, i1 %cmp57
  br i1 %or.cond96, label %if.then, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false51
  %call59 = call i32 @ASYNC_WAIT_CTX_get_changed_fds(%struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef null, i64* noundef nonnull %numfds, i32* noundef nonnull %delfd, i64* noundef nonnull %numdelfds) #3
  %tobool60 = icmp eq i32 %call59, 0
  %17 = load i32, i32* %delfd, align 4
  %cmp62 = icmp ne i32 %17, 99
  %or.cond97 = select i1 %tobool60, i1 true, i1 %cmp62
  br i1 %or.cond97, label %if.then, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false58
  %call64 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret, i32 (i8*)* noundef nonnull @waitfd, i8* noundef null, i64 noundef 0) #3
  %cmp65.not = icmp eq i32 %call64, 3
  br i1 %cmp65.not, label %lor.lhs.false66, label %if.then

lor.lhs.false66:                                  ; preds = %lor.lhs.false63
  %call67 = call i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef null, i64* noundef nonnull %numfds) #3
  %tobool68 = icmp eq i32 %call67, 0
  %18 = load i64, i64* %numfds, align 8
  %cmp70 = icmp ne i64 %18, 0
  %or.cond98 = select i1 %tobool68, i1 true, i1 %cmp70
  br i1 %or.cond98, label %if.then, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false66
  %call72 = call i32 @ASYNC_WAIT_CTX_get_changed_fds(%struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef null, i64* noundef nonnull %numfds, i32* noundef null, i64* noundef nonnull %numdelfds) #3
  %tobool73 = icmp eq i32 %call72, 0
  %19 = load i64, i64* %numfds, align 8
  %cmp75 = icmp ne i64 %19, 0
  %or.cond99 = select i1 %tobool73, i1 true, i1 %cmp75
  %20 = load i64, i64* %numdelfds, align 8
  %cmp77 = icmp ne i64 %20, 0
  %or.cond100 = select i1 %or.cond99, i1 true, i1 %cmp77
  %21 = load i32, i32* %funcret, align 4
  %cmp79 = icmp ne i32 %21, 1
  %or.cond101 = select i1 %or.cond100, i1 true, i1 %cmp79
  br i1 %or.cond101, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false71, %lor.lhs.false66, %lor.lhs.false63, %lor.lhs.false58, %lor.lhs.false51, %lor.lhs.false46, %lor.lhs.false43, %lor.lhs.false38, %lor.lhs.false30, %lor.lhs.false25, %lor.lhs.false20, %lor.lhs.false17, %lor.lhs.false10, %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  %waitctx.0 = phi %struct.async_wait_ctx_st* [ null, %lor.lhs.false ], [ %call1, %lor.lhs.false2 ], [ %call1, %lor.lhs.false5 ], [ %call1, %lor.lhs.false10 ], [ %call1, %lor.lhs.false17 ], [ %call1, %lor.lhs.false20 ], [ %call1, %lor.lhs.false25 ], [ %call1, %lor.lhs.false30 ], [ %call1, %lor.lhs.false38 ], [ %call1, %lor.lhs.false43 ], [ %call1, %lor.lhs.false46 ], [ %call1, %lor.lhs.false51 ], [ %call1, %lor.lhs.false58 ], [ %call1, %lor.lhs.false63 ], [ %call1, %lor.lhs.false66 ], [ %call1, %lor.lhs.false71 ], [ null, %entry ]
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0)) #3
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef %waitctx.0) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false71
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef nonnull %call1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  call void @ASYNC_cleanup_thread() #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_ASYNC_block_pause() unnamed_addr #0 {
entry:
  %job = alloca %struct.async_job_st*, align 8
  %funcret = alloca i32, align 4
  %0 = bitcast %struct.async_job_st** %job to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.async_job_st* null, %struct.async_job_st** %job, align 8, !tbaa !3
  %1 = bitcast i32* %funcret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %call = tail call i32 @ASYNC_init_thread(i64 noundef 1, i64 noundef 0) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.async_wait_ctx_st* @ASYNC_WAIT_CTX_new() #3
  %cmp = icmp eq %struct.async_wait_ctx_st* %call1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret, i32 (i8*)* noundef nonnull @blockpause, i8* noundef null, i64 noundef 0) #3
  %cmp4.not = icmp eq i32 %call3, 2
  br i1 %cmp4.not, label %lor.lhs.false5, label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %call6 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef nonnull %call1, i32* noundef nonnull %funcret, i32 (i8*)* noundef nonnull @blockpause, i8* noundef null, i64 noundef 0) #3
  %cmp7 = icmp ne i32 %call6, 3
  %2 = load i32, i32* %funcret, align 4
  %cmp9 = icmp ne i32 %2, 1
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  %waitctx.0 = phi %struct.async_wait_ctx_st* [ null, %lor.lhs.false ], [ %call1, %lor.lhs.false2 ], [ %call1, %lor.lhs.false5 ], [ null, %entry ]
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0)) #3
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef %waitctx.0) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef nonnull %call1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  call void @ASYNC_cleanup_thread() #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_ASYNC_start_job_ex() unnamed_addr #0 {
entry:
  %job = alloca %struct.async_job_st*, align 8
  %funcret = alloca i32, align 4
  %0 = bitcast %struct.async_job_st** %job to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.async_job_st* null, %struct.async_job_st** %job, align 8, !tbaa !3
  %1 = bitcast i32* %funcret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #3
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0)) #3
  br label %err

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef nonnull %call) #3
  %call3 = tail call %struct.async_wait_ctx_st* @ASYNC_WAIT_CTX_new() #3
  %cmp4 = icmp eq %struct.async_wait_ctx_st* %call3, null
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef nonnull %call3, i32* noundef nonnull %funcret, i32 (i8*)* noundef nonnull @change_deflt_libctx, i8* noundef null, i64 noundef 0) #3
  %cmp6.not = icmp eq i32 %call5, 2
  br i1 %cmp6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0)) #3
  br label %err

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %call2) #3
  %call11 = call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %call10) #3
  %cmp12.not = icmp eq %struct.ossl_lib_ctx_st* %call10, %call
  br i1 %cmp12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0)) #3
  br label %err

if.end15:                                         ; preds = %if.end9
  %call16 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef nonnull %call3, i32* noundef nonnull %funcret, i32 (i8*)* noundef nonnull @change_deflt_libctx, i8* noundef null, i64 noundef 0) #3
  %cmp17.not = icmp eq i32 %call16, 2
  br i1 %cmp17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end15
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0)) #3
  br label %err

if.end20:                                         ; preds = %if.end15
  %call21 = call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %call11) #3
  %cmp22.not = icmp eq %struct.ossl_lib_ctx_st* %call21, %call
  br i1 %cmp22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end20
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0)) #3
  br label %err

if.end25:                                         ; preds = %if.end20
  %call26 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef nonnull %call3, i32* noundef nonnull %funcret, i32 (i8*)* noundef nonnull @change_deflt_libctx, i8* noundef null, i64 noundef 0) #3
  %cmp27 = icmp ne i32 %call26, 3
  %7 = load i32, i32* %funcret, align 4
  %cmp29 = icmp ne i32 %7, 1
  %or.cond = select i1 %cmp27, i1 true, i1 %cmp29
  br i1 %or.cond, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end25
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0)) #3
  br label %err

if.end32:                                         ; preds = %if.end25
  %call33 = call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef nonnull %call) #3
  %call34 = call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %call33) #3
  %cmp35.not = icmp eq %struct.ossl_lib_ctx_st* %call33, %call2
  br i1 %cmp35.not, label %err, label %if.then36

if.then36:                                        ; preds = %if.end32
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i64 0, i64 0)) #3
  br label %err

err:                                              ; preds = %if.end32, %if.then36, %if.then30, %if.then23, %if.then18, %if.then13, %if.then7, %if.then
  %waitctx.0 = phi %struct.async_wait_ctx_st* [ null, %if.then ], [ %call3, %if.then7 ], [ %call3, %if.then13 ], [ %call3, %if.then18 ], [ %call3, %if.then23 ], [ %call3, %if.then30 ], [ %call3, %if.then36 ], [ %call3, %if.end32 ]
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then7 ], [ 0, %if.then13 ], [ 0, %if.then18 ], [ 0, %if.then23 ], [ 0, %if.then30 ], [ 0, %if.then36 ], [ 1, %if.end32 ]
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef %waitctx.0) #3
  call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @ASYNC_init_thread(i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.async_wait_ctx_st* @ASYNC_WAIT_CTX_new() local_unnamed_addr #1

declare dso_local i32 @ASYNC_start_job(%struct.async_job_st** noundef, %struct.async_wait_ctx_st* noundef, i32* noundef, i32 (i8*)* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @only_pause(i8* nocapture noundef readnone %args) #0 {
entry:
  %call = tail call i32 @ASYNC_pause_job() #3
  ret i32 1
}

declare dso_local void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @ASYNC_cleanup_thread() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @ASYNC_pause_job() local_unnamed_addr #1

declare dso_local i32 @ASYNC_WAIT_CTX_set_callback(%struct.async_wait_ctx_st* noundef, i32 (i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_callback(i8* nocapture noundef readnone %arg) #0 {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)) #3
  ret i32 1
}

declare dso_local i32 @ASYNC_WAIT_CTX_get_callback(%struct.async_wait_ctx_st* noundef, i32 (i8*)** noundef, i8** noundef) local_unnamed_addr #1

declare dso_local i32 @ASYNC_WAIT_CTX_set_status(%struct.async_wait_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ASYNC_WAIT_CTX_get_status(%struct.async_wait_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @add_two(i8* nocapture noundef readnone %args) #0 {
entry:
  %0 = load i32, i32* @ctr, align 4, !tbaa !7
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @ctr, align 4, !tbaa !7
  %call = tail call i32 @ASYNC_pause_job() #3
  %1 = load i32, i32* @ctr, align 4, !tbaa !7
  %inc1 = add nsw i32 %1, 1
  store i32 %inc1, i32* @ctr, align 4, !tbaa !7
  ret i32 2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @save_current(i8* nocapture noundef readnone %args) #0 {
entry:
  %call = tail call %struct.async_job_st* @ASYNC_get_current_job() #3
  store %struct.async_job_st* %call, %struct.async_job_st** @currjob, align 8, !tbaa !3
  %call1 = tail call i32 @ASYNC_pause_job() #3
  ret i32 1
}

declare dso_local %struct.async_job_st* @ASYNC_get_current_job() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @waitfd(i8* nocapture noundef readnone %args) #0 {
entry:
  %call = tail call %struct.async_job_st* @ASYNC_get_current_job() #3
  %cmp = icmp eq %struct.async_job_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.async_wait_ctx_st* @ASYNC_get_wait_ctx(%struct.async_job_st* noundef nonnull %call) #3
  %cmp2 = icmp eq %struct.async_wait_ctx_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @ASYNC_pause_job() #3
  %0 = bitcast %struct.async_wait_ctx_st* %call1 to i8*
  %call6 = tail call i32 @ASYNC_WAIT_CTX_set_wait_fd(%struct.async_wait_ctx_st* noundef nonnull %call1, i8* noundef nonnull %0, i32 noundef 99, i8* noundef null, void (%struct.async_wait_ctx_st*, i8*, i32, i8*)* noundef null) #3
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @ASYNC_pause_job() #3
  %call10 = tail call i32 @ASYNC_WAIT_CTX_clear_fd(%struct.async_wait_ctx_st* noundef nonnull %call1, i8* noundef nonnull %0) #3
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end8
  %call14 = tail call i32 @ASYNC_pause_job() #3
  %call15 = tail call i32 @ASYNC_WAIT_CTX_set_wait_fd(%struct.async_wait_ctx_st* noundef nonnull %call1, i8* noundef nonnull %0, i32 noundef 99, i8* noundef null, void (%struct.async_wait_ctx_st*, i8*, i32, i8*)* noundef null) #3
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end13
  %call19 = tail call i32 @ASYNC_WAIT_CTX_clear_fd(%struct.async_wait_ctx_st* noundef nonnull %call1, i8* noundef nonnull %0) #3
  %tobool20.not = icmp ne i32 %call19, 0
  %. = zext i1 %tobool20.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end13, %if.end8, %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], [ 0, %if.end8 ], [ 0, %if.end13 ], [ %., %if.end18 ]
  ret i32 %retval.0
}

declare dso_local i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* noundef, i32* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @ASYNC_WAIT_CTX_get_changed_fds(%struct.async_wait_ctx_st* noundef, i32* noundef, i64* noundef, i32* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local %struct.async_wait_ctx_st* @ASYNC_get_wait_ctx(%struct.async_job_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ASYNC_WAIT_CTX_set_wait_fd(%struct.async_wait_ctx_st* noundef, i8* noundef, i32 noundef, i8* noundef, void (%struct.async_wait_ctx_st*, i8*, i32, i8*)* noundef) local_unnamed_addr #1

declare dso_local i32 @ASYNC_WAIT_CTX_clear_fd(%struct.async_wait_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @blockpause(i8* nocapture noundef readnone %args) #0 {
entry:
  tail call void @ASYNC_block_pause() #3
  %call = tail call i32 @ASYNC_pause_job() #3
  tail call void @ASYNC_unblock_pause() #3
  %call1 = tail call i32 @ASYNC_pause_job() #3
  ret i32 1
}

declare dso_local void @ASYNC_block_pause() local_unnamed_addr #1

declare dso_local void @ASYNC_unblock_pause() local_unnamed_addr #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @change_deflt_libctx(i8* nocapture noundef readnone %args) #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #3
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef nonnull %call) #3
  %call2 = tail call i32 @ASYNC_pause_job() #3
  %call3 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %call1) #3
  %cmp4.not = icmp eq %struct.ossl_lib_ctx_st* %call3, %call
  br i1 %cmp4.not, label %if.end6, label %err

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef nonnull %call) #3
  %call8 = tail call i32 @ASYNC_pause_job() #3
  %call9 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %call7) #3
  %cmp10.not = icmp eq %struct.ossl_lib_ctx_st* %call9, %call
  %spec.select = zext i1 %cmp10.not to i32
  br label %err

err:                                              ; preds = %if.end6, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ %spec.select, %if.end6 ]
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
