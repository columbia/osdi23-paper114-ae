; ModuleID = 'test/sslbuffertest.c'
source_filename = "test/sslbuffertest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ssl_ctx_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ssl_method_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.bio_st = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [42 x i8] c"Usage: %s [options] certfile privkeyfile\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Valid options are:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Display the list of tests available\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Run a single test by id or name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Run a single iteration of a test\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Number of tabs added to output\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Seed value to randomize tests with\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"test/sslbuffertest.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"cert = test_get_argument(0)\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"pkey = test_get_argument(1)\00", align 1
@serverctx = internal global %struct.ssl_ctx_st* null, align 8
@clientctx = internal global %struct.ssl_ctx_st* null, align 8
@.str.18 = private unnamed_addr constant [31 x i8] c"Failed to create SSL_CTX pair\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"test_func\00", align 1
@__const.test_func.testdata = private unnamed_addr constant [10 x i8] c"Test data\00", align 1
@.str.20 = private unnamed_addr constant [77 x i8] c"create_ssl_objects(serverctx, clientctx, &serverssl, &clientssl, NULL, NULL)\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Test %d failed: Create SSL objects failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [60 x i8] c"create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE)\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"Test %d failed: Create SSL connection failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"SSL_free_buffers(clientssl)\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"SSL_alloc_buffers(clientssl)\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"Test %d failed: Failed to write app data\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"sizeof(testdata)\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"SSL_free_buffers(serverssl)\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"SSL_alloc_buffers(serverssl)\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"Test %d failed: Failed to read app data\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"testdata\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #5
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #5
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #5
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call4) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  %call9 = tail call %struct.ssl_method_st* @TLS_server_method() #5
  %call10 = tail call %struct.ssl_method_st* @TLS_client_method() #5
  %call11 = tail call i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef null, %struct.ssl_method_st* noundef %call9, %struct.ssl_method_st* noundef %call10, i32 noundef 769, i32 noundef 0, %struct.ssl_ctx_st** noundef nonnull @serverctx, %struct.ssl_ctx_st** noundef nonnull @clientctx, i8* noundef %call1, i8* noundef %call4) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0)) #5
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 (i32)* noundef nonnull @test_func, i32 noundef 9, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %if.end14, %if.then13, %if.then
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %if.then13 ], [ 0, %if.then ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef, %struct.ssl_method_st* noundef, %struct.ssl_method_st* noundef, i32 noundef, i32 noundef, %struct.ssl_ctx_st** noundef, %struct.ssl_ctx_st** noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_method_st* @TLS_server_method() local_unnamed_addr #3

declare dso_local %struct.ssl_method_st* @TLS_client_method() local_unnamed_addr #3

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_func(i32 noundef %test) #1 {
entry:
  %serverssl = alloca %struct.ssl_st*, align 8
  %clientssl = alloca %struct.ssl_st*, align 8
  %testdata = alloca [10 x i8], align 1
  %buf = alloca [10 x i8], align 1
  %0 = bitcast %struct.ssl_st** %serverssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.ssl_st* null, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %1 = bitcast %struct.ssl_st** %clientssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store %struct.ssl_st* null, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %2 = getelementptr inbounds [10 x i8], [10 x i8]* %testdata, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %2) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %2, i8* noundef nonnull align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_func.testdata, i64 0, i64 0), i64 10, i1 false)
  %3 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %3) #6
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @serverctx, align 8, !tbaa !3
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @clientctx, align 8, !tbaa !3
  %call = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %4, %struct.ssl_ctx_st* noundef %5, %struct.ssl_st** noundef nonnull %serverssl, %struct.ssl_st** noundef nonnull %clientssl, %struct.bio_st* noundef null, %struct.bio_st* noundef null) #5
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i32 noundef %test) #5
  br label %if.then167

if.end:                                           ; preds = %entry
  %6 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %7 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call2 = call i32 @create_ssl_connection(%struct.ssl_st* noundef %6, %struct.ssl_st* noundef %7, i32 noundef 0) #5
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv4) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp18 = icmp sgt i32 %test, 0
  %cmp27 = icmp ugt i32 %test, 1
  %cmp37 = icmp ugt i32 %test, 2
  %cmp47 = icmp ugt i32 %test, 3
  %cmp85 = icmp sgt i32 %test, 4
  %cmp95 = icmp ugt i32 %test, 5
  %cmp105 = icmp ugt i32 %test, 6
  %cmp115 = icmp ugt i32 %test, 7
  br label %for.cond11.preheader

if.then7:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0), i32 noundef %test) #5
  br label %if.then167

for.cond:                                         ; preds = %for.end152
  %exitcond.not = icmp eq i64 %inc164, 2
  br i1 %exitcond.not, label %cleanup169, label %for.cond11.preheader, !llvm.loop !7

for.cond11.preheader:                             ; preds = %for.cond.preheader, %for.cond
  %j.0245 = phi i64 [ 0, %for.cond.preheader ], [ %inc164, %for.cond ]
  br label %for.body17

for.body17:                                       ; preds = %for.cond11.preheader, %for.inc
  %conv12241 = phi i64 [ 0, %for.cond11.preheader ], [ %conv12, %for.inc ]
  %len.0240 = phi i32 [ 0, %for.cond11.preheader ], [ %len.1, %for.inc ]
  %cmp15 = phi i1 [ true, %for.cond11.preheader ], [ false, %for.inc ]
  br i1 %cmp18, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %for.body17
  %8 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call20 = call i32 @SSL_free_buffers(%struct.ssl_st* noundef %8) #5
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv22) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then167, label %if.end26

if.end26:                                         ; preds = %land.lhs.true
  br i1 %cmp27, label %land.lhs.true29, label %if.end56

land.lhs.true29:                                  ; preds = %if.end26
  %9 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call30 = call i32 @SSL_alloc_buffers(%struct.ssl_st* noundef %9) #5
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv32) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then167, label %if.end36

if.end36:                                         ; preds = %land.lhs.true29
  br i1 %cmp37, label %land.lhs.true39, label %if.end56

land.lhs.true39:                                  ; preds = %if.end36
  %10 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call40 = call i32 @SSL_alloc_buffers(%struct.ssl_st* noundef %10) #5
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv42) #5
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then167, label %if.end46

if.end46:                                         ; preds = %land.lhs.true39
  br i1 %cmp47, label %land.lhs.true49, label %if.end56

land.lhs.true49:                                  ; preds = %if.end46
  %11 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call50 = call i32 @SSL_free_buffers(%struct.ssl_st* noundef %11) #5
  %cmp51 = icmp ne i32 %call50, 0
  %conv52 = zext i1 %cmp51 to i32
  %call53 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv52) #5
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then167, label %if.end56

if.end56:                                         ; preds = %for.body17, %if.end26, %if.end36, %land.lhs.true49, %if.end46
  %12 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds [10 x i8], [10 x i8]* %testdata, i64 0, i64 %conv12241
  %sub = sub i32 10, %len.0240
  %call59 = call i32 @SSL_write(%struct.ssl_st* noundef %12, i8* noundef nonnull %add.ptr, i32 noundef %sub) #5
  %cmp60 = icmp sgt i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.end56
  %add = add nsw i32 %call59, %len.0240
  br label %for.inc

if.else:                                          ; preds = %if.end56
  %13 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call63 = call i32 @SSL_get_error(%struct.ssl_st* noundef %13, i32 noundef %call59) #5
  %14 = and i32 %call63, -5
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %if.else
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0), i32 noundef %test) #5
  br label %if.then167

for.inc:                                          ; preds = %if.else, %if.then62
  %len.1 = phi i32 [ %add, %if.then62 ], [ %len.0240, %if.else ]
  %conv12 = sext i32 %len.1 to i64
  %cmp13 = icmp ne i32 %len.1, 10
  %16 = and i1 %cmp13, %cmp15
  br i1 %16, label %for.body17, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.inc
  %call72 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i64 noundef %conv12, i64 noundef 10) #5
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then167, label %for.body84

for.body84:                                       ; preds = %for.end, %for.inc150
  %conv77244 = phi i64 [ %conv77, %for.inc150 ], [ 0, %for.end ]
  %len.2243 = phi i32 [ %len.3, %for.inc150 ], [ 0, %for.end ]
  %i.1242 = phi i64 [ %inc151, %for.inc150 ], [ 0, %for.end ]
  br i1 %cmp85, label %land.lhs.true87, label %if.end124

land.lhs.true87:                                  ; preds = %for.body84
  %17 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call88 = call i32 @SSL_free_buffers(%struct.ssl_st* noundef %17) #5
  %cmp89 = icmp ne i32 %call88, 0
  %conv90 = zext i1 %cmp89 to i32
  %call91 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv90) #5
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then167, label %if.end94

if.end94:                                         ; preds = %land.lhs.true87
  br i1 %cmp95, label %land.lhs.true97, label %if.end124

land.lhs.true97:                                  ; preds = %if.end94
  %18 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call98 = call i32 @SSL_free_buffers(%struct.ssl_st* noundef %18) #5
  %cmp99 = icmp ne i32 %call98, 0
  %conv100 = zext i1 %cmp99 to i32
  %call101 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv100) #5
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then167, label %if.end104

if.end104:                                        ; preds = %land.lhs.true97
  br i1 %cmp105, label %land.lhs.true107, label %if.end124

land.lhs.true107:                                 ; preds = %if.end104
  %19 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call108 = call i32 @SSL_alloc_buffers(%struct.ssl_st* noundef %19) #5
  %cmp109 = icmp ne i32 %call108, 0
  %conv110 = zext i1 %cmp109 to i32
  %call111 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv110) #5
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then167, label %if.end114

if.end114:                                        ; preds = %land.lhs.true107
  br i1 %cmp115, label %land.lhs.true117, label %if.end124

land.lhs.true117:                                 ; preds = %if.end114
  %20 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call118 = call i32 @SSL_free_buffers(%struct.ssl_st* noundef %20) #5
  %cmp119 = icmp ne i32 %call118, 0
  %conv120 = zext i1 %cmp119 to i32
  %call121 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv120) #5
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then167, label %if.end124

if.end124:                                        ; preds = %for.body84, %if.end94, %if.end104, %land.lhs.true117, %if.end114
  %21 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %add.ptr127 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i64 0, i64 %conv77244
  %sub129 = sub i32 10, %len.2243
  %call131 = call i32 @SSL_read(%struct.ssl_st* noundef %21, i8* noundef nonnull %add.ptr127, i32 noundef %sub129) #5
  %cmp132 = icmp sgt i32 %call131, 0
  br i1 %cmp132, label %if.then134, label %if.else136

if.then134:                                       ; preds = %if.end124
  %add135 = add nsw i32 %call131, %len.2243
  br label %for.inc150

if.else136:                                       ; preds = %if.end124
  %22 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call138 = call i32 @SSL_get_error(%struct.ssl_st* noundef %22, i32 noundef %call131) #5
  %23 = and i32 %call138, -5
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %cleanup146.thread, label %for.inc150

cleanup146.thread:                                ; preds = %if.else136
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0), i32 noundef %test) #5
  br label %if.then167

for.inc150:                                       ; preds = %if.else136, %if.then134
  %len.3 = phi i32 [ %add135, %if.then134 ], [ %len.2243, %if.else136 ]
  %inc151 = add nuw nsw i64 %i.1242, 1
  %conv77 = sext i32 %len.3 to i64
  %cmp78 = icmp ne i32 %len.3, 10
  %cmp81 = icmp ult i64 %i.1242, 99
  %25 = select i1 %cmp78, i1 %cmp81, i1 false
  br i1 %25, label %for.body84, label %for.end152, !llvm.loop !10

for.end152:                                       ; preds = %for.inc150
  %call156 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %conv77, i8* noundef nonnull %2, i64 noundef 10) #5
  %tobool157.not = icmp eq i32 %call156, 0
  %inc164 = add nuw nsw i64 %j.0245, 1
  br i1 %tobool157.not, label %if.then167, label %for.cond

if.then167:                                       ; preds = %for.end152, %for.end, %land.lhs.true49, %land.lhs.true39, %land.lhs.true29, %land.lhs.true, %land.lhs.true117, %land.lhs.true107, %land.lhs.true97, %land.lhs.true87, %cleanup146.thread, %cleanup.thread, %if.then7, %if.then
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %26) #5
  br label %cleanup169

cleanup169:                                       ; preds = %for.cond, %if.then167
  %result.0231 = phi i32 [ 0, %if.then167 ], [ 1, %for.cond ]
  %27 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %27) #5
  %28 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %28) #5
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %result.0231
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @clientctx, align 8, !tbaa !3
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %0) #5
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @serverctx, align 8, !tbaa !3
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %1) #5
  ret void
}

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.ssl_st** noundef, %struct.ssl_st** noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i32 @create_ssl_connection(%struct.ssl_st* noundef, %struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_free_buffers(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_alloc_buffers(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_write(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_get_error(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_read(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @ERR_print_errors_fp(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
