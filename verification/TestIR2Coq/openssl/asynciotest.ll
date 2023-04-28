; ModuleID = 'test/asynciotest.c'
source_filename = "test/asynciotest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.ssl_method_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.PACKET = type { i8*, i64 }

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [38 x i8] c"Usage: %s [options] certname privkey\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [19 x i8] c"test/asynciotest.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"cert = test_get_argument(0)\00", align 1
@cert = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [31 x i8] c"privkey = test_get_argument(1)\00", align 1
@privkey = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [13 x i8] c"test_asyncio\00", align 1
@methods_async = internal unnamed_addr global %struct.bio_method_st* null, align 8
@__const.test_asyncio.testdata = private unnamed_addr constant [10 x i8] c"Test data\00", align 1
@.str.19 = private unnamed_addr constant [124 x i8] c"create_ssl_ctx_pair(NULL, TLS_server_method(), TLS_client_method(), TLS1_VERSION, 0, &serverctx, &clientctx, cert, privkey)\00", align 1
@fragment = internal unnamed_addr global i1 false, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c"s_to_c_fbio\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"c_to_s_fbio\00", align 1
@.str.22 = private unnamed_addr constant [91 x i8] c"create_ssl_objects(serverctx, clientctx, &serverssl, &clientssl, s_to_c_fbio, c_to_s_fbio)\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c"create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE)\00", align 1
@.str.24 = private unnamed_addr constant [61 x i8] c"ssl_error == SSL_ERROR_SYSCALL || ssl_error == SSL_ERROR_SSL\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"sizeof(testdata)\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"testdata\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"Async filter\00", align 1
@__const.async_write.smallrec = private unnamed_addr constant [6 x i8] c"\00\00\00\00\01\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 402, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #10
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #10
  store i8* %call1, i8** @cert, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #10
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #10
  store i8* %call4, i8** @privkey, align 8, !tbaa !3
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 407, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call4) #10
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 (i32)* noundef nonnull @test_asyncio, i32 noundef 2, i32 noundef 1) #10
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %if.end8, %if.then
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %if.then ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #2

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #2

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_asyncio(i32 noundef %test) #1 {
entry:
  %serverctx = alloca %struct.ssl_ctx_st*, align 8
  %clientctx = alloca %struct.ssl_ctx_st*, align 8
  %serverssl = alloca %struct.ssl_st*, align 8
  %clientssl = alloca %struct.ssl_st*, align 8
  %testdata = alloca [10 x i8], align 1
  %buf = alloca [10 x i8], align 1
  %0 = bitcast %struct.ssl_ctx_st** %serverctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %serverctx, align 8, !tbaa !3
  %1 = bitcast %struct.ssl_ctx_st** %clientctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %clientctx, align 8, !tbaa !3
  %2 = bitcast %struct.ssl_st** %serverssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #11
  store %struct.ssl_st* null, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %3 = bitcast %struct.ssl_st** %clientssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11
  store %struct.ssl_st* null, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %testdata, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %4) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %4, i8* noundef nonnull align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_asyncio.testdata, i64 0, i64 0), i64 10, i1 false)
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %5) #11
  %call = tail call %struct.ssl_method_st* @TLS_server_method() #10
  %call1 = tail call %struct.ssl_method_st* @TLS_client_method() #10
  %6 = load i8*, i8** @cert, align 8, !tbaa !3
  %7 = load i8*, i8** @privkey, align 8, !tbaa !3
  %call2 = call i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef null, %struct.ssl_method_st* noundef %call, %struct.ssl_method_st* noundef %call1, i32 noundef 769, i32 noundef 0, %struct.ssl_ctx_st** noundef nonnull %serverctx, %struct.ssl_ctx_st** noundef nonnull %clientctx, i8* noundef %6, i8* noundef %7) #10
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([124 x i8], [124 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv) #10
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %test, 1
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i1 true, i1* @fragment, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %call8 = call fastcc %struct.bio_method_st* @bio_f_async_filter() #12
  %call9 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call8) #10
  %call10 = call fastcc %struct.bio_method_st* @bio_f_async_filter() #12
  %call11 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call10) #10
  %8 = bitcast %struct.bio_st* %call9 to i8*
  %call12 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* noundef %8) #10
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %9 = bitcast %struct.bio_st* %call11 to i8*
  %call14 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8* noundef %9) #10
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end19

if.then16:                                        ; preds = %lor.lhs.false, %if.end7
  %call17 = call i32 @BIO_free(%struct.bio_st* noundef %call9) #10
  %call18 = call i32 @BIO_free(%struct.bio_st* noundef %call11) #10
  br label %end

if.end19:                                         ; preds = %lor.lhs.false
  %10 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %serverctx, align 8, !tbaa !3
  %11 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %clientctx, align 8, !tbaa !3
  %call20 = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %10, %struct.ssl_ctx_st* noundef %11, %struct.ssl_st** noundef nonnull %serverssl, %struct.ssl_st** noundef nonnull %clientssl, %struct.bio_st* noundef %call9, %struct.bio_st* noundef %call11) #10
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv22) #10
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %end, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end19
  %12 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %13 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call26 = call i32 @create_ssl_connection(%struct.ssl_st* noundef %12, %struct.ssl_st* noundef %13, i32 noundef 0) #10
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv28) #10
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %end, label %for.cond35.preheader

for.cond:                                         ; preds = %for.end107
  %exitcond.not = icmp eq i64 %inc119, 2
  br i1 %exitcond.not, label %for.end120, label %for.cond35.preheader, !llvm.loop !7

for.cond35.preheader:                             ; preds = %lor.lhs.false25, %for.cond
  %j.0187 = phi i64 [ %inc119, %for.cond ], [ 0, %lor.lhs.false25 ]
  br label %for.body41

for.body41:                                       ; preds = %for.cond35.preheader, %for.inc
  %conv36183 = phi i64 [ 0, %for.cond35.preheader ], [ %conv36, %for.inc ]
  %len.0182 = phi i32 [ 0, %for.cond35.preheader ], [ %len.1, %for.inc ]
  %cmp39 = phi i1 [ true, %for.cond35.preheader ], [ false, %for.inc ]
  %14 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds [10 x i8], [10 x i8]* %testdata, i64 0, i64 %conv36183
  %sub = sub i32 10, %len.0182
  %call44 = call i32 @SSL_write(%struct.ssl_st* noundef %14, i8* noundef nonnull %add.ptr, i32 noundef %sub) #10
  %cmp45 = icmp sgt i32 %call44, 0
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %for.body41
  %add = add nsw i32 %call44, %len.0182
  br label %for.inc

if.else:                                          ; preds = %for.body41
  %15 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call48 = call i32 @SSL_get_error(%struct.ssl_st* noundef %15, i32 noundef %call44) #10
  %16 = and i32 %call48, -5
  %17 = icmp eq i32 %16, 1
  %lor.ext = zext i1 %17 to i32
  %call55 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 352, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.24, i64 0, i64 0), i32 noundef %lor.ext) #10
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %end, label %for.inc

for.inc:                                          ; preds = %if.then47, %if.else
  %len.1 = phi i32 [ %add, %if.then47 ], [ %len.0182, %if.else ]
  %conv36 = sext i32 %len.1 to i64
  %cmp37 = icmp ne i32 %len.1, 10
  %18 = and i1 %cmp37, %cmp39
  br i1 %18, label %for.body41, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.inc
  %call61 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 356, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i64 noundef %conv36, i64 noundef 10) #10
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %end, label %for.body73

for.body73:                                       ; preds = %for.end, %for.inc105
  %conv66186 = phi i64 [ %conv66, %for.inc105 ], [ 0, %for.end ]
  %len.2185 = phi i32 [ %len.3, %for.inc105 ], [ 0, %for.end ]
  %i.1184 = phi i64 [ %inc106, %for.inc105 ], [ 0, %for.end ]
  %19 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %add.ptr76 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i64 0, i64 %conv66186
  %sub78 = sub i32 10, %len.2185
  %call80 = call i32 @SSL_read(%struct.ssl_st* noundef %19, i8* noundef nonnull %add.ptr76, i32 noundef %sub78) #10
  %cmp81 = icmp sgt i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.else85

if.then83:                                        ; preds = %for.body73
  %add84 = add nsw i32 %call80, %len.2185
  br label %for.inc105

if.else85:                                        ; preds = %for.body73
  %20 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call87 = call i32 @SSL_get_error(%struct.ssl_st* noundef %20, i32 noundef %call80) #10
  %21 = and i32 %call87, -5
  %22 = icmp eq i32 %21, 1
  %lor.ext94 = zext i1 %22 to i32
  %call97 = call i32 @test_false(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 373, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.24, i64 0, i64 0), i32 noundef %lor.ext94) #10
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %end, label %for.inc105

for.inc105:                                       ; preds = %if.then83, %if.else85
  %len.3 = phi i32 [ %add84, %if.then83 ], [ %len.2185, %if.else85 ]
  %inc106 = add nuw nsw i64 %i.1184, 1
  %conv66 = sext i32 %len.3 to i64
  %cmp67 = icmp ne i32 %len.3, 10
  %cmp70 = icmp ult i64 %i.1184, 99
  %23 = select i1 %cmp67, i1 %cmp70, i1 false
  br i1 %23, label %for.body73, label %for.end107, !llvm.loop !10

for.end107:                                       ; preds = %for.inc105
  %call111 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef 10, i8* noundef nonnull %5, i64 noundef %conv66) #10
  %tobool112.not = icmp eq i32 %call111, 0
  %inc119 = add nuw nsw i64 %j.0187, 1
  br i1 %tobool112.not, label %end, label %for.cond

for.end120:                                       ; preds = %for.cond
  %24 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %24) #10
  %25 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %25) #10
  store %struct.ssl_st* null, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  store %struct.ssl_st* null, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  br label %end

end:                                              ; preds = %for.end107, %for.end, %if.else, %if.else85, %if.end19, %lor.lhs.false25, %entry, %for.end120, %if.then16
  %testresult.0 = phi i32 [ 1, %for.end120 ], [ 0, %lor.lhs.false25 ], [ 0, %if.end19 ], [ 0, %if.then16 ], [ 0, %entry ], [ 0, %if.else85 ], [ 0, %if.else ], [ 0, %for.end ], [ 0, %for.end107 ]
  %26 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %26) #10
  %27 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %27) #10
  %28 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %clientctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %28) #10
  %29 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %serverctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %29) #10
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %5) #11
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** @methods_async, align 8, !tbaa !3
  tail call void @BIO_meth_free(%struct.bio_method_st* noundef %0) #10
  ret void
}

declare dso_local void @BIO_meth_free(%struct.bio_method_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef, %struct.ssl_method_st* noundef, %struct.ssl_method_st* noundef, i32 noundef, i32 noundef, %struct.ssl_ctx_st** noundef, %struct.ssl_ctx_st** noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_method_st* @TLS_server_method() local_unnamed_addr #2

declare dso_local %struct.ssl_method_st* @TLS_client_method() local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_method_st* @bio_f_async_filter() unnamed_addr #1 {
entry:
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** @methods_async, align 8, !tbaa !3
  %cmp = icmp eq %struct.bio_method_st* %0, null
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_meth_new(i32 noundef 640, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0)) #10
  store %struct.bio_method_st* %call, %struct.bio_method_st** @methods_async, align 8, !tbaa !3
  %cmp1 = icmp eq %struct.bio_method_st* %call, null
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @BIO_meth_set_write(%struct.bio_method_st* noundef nonnull %call, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @async_write) #10
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.bio_method_st*, %struct.bio_method_st** @methods_async, align 8, !tbaa !3
  %call4 = tail call i32 @BIO_meth_set_read(%struct.bio_method_st* noundef %1, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @async_read) #10
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.bio_method_st*, %struct.bio_method_st** @methods_async, align 8, !tbaa !3
  %call7 = tail call i32 @BIO_meth_set_puts(%struct.bio_method_st* noundef %2, i32 (%struct.bio_st*, i8*)* noundef nonnull @async_puts) #10
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.bio_method_st*, %struct.bio_method_st** @methods_async, align 8, !tbaa !3
  %call10 = tail call i32 @BIO_meth_set_gets(%struct.bio_method_st* noundef %3, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @async_gets) #10
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %return, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.bio_method_st*, %struct.bio_method_st** @methods_async, align 8, !tbaa !3
  %call13 = tail call i32 @BIO_meth_set_ctrl(%struct.bio_method_st* noundef %4, i64 (%struct.bio_st*, i32, i64, i8*)* noundef nonnull @async_ctrl) #10
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.bio_method_st*, %struct.bio_method_st** @methods_async, align 8, !tbaa !3
  %call16 = tail call i32 @BIO_meth_set_create(%struct.bio_method_st* noundef %5, i32 (%struct.bio_st*)* noundef nonnull @async_new) #10
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %return, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.bio_method_st*, %struct.bio_method_st** @methods_async, align 8, !tbaa !3
  %call19 = tail call i32 @BIO_meth_set_destroy(%struct.bio_method_st* noundef %6, i32 (%struct.bio_st*)* noundef nonnull @async_free) #10
  %tobool20.not = icmp eq i32 %call19, 0
  %.pre = load %struct.bio_method_st*, %struct.bio_method_st** @methods_async, align 8
  %spec.select = select i1 %tobool20.not, %struct.bio_method_st* null, %struct.bio_method_st* %.pre
  br label %return

return:                                           ; preds = %lor.lhs.false18, %entry, %if.then, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false6, %lor.lhs.false9, %lor.lhs.false12, %lor.lhs.false15
  %retval.0 = phi %struct.bio_method_st* [ null, %lor.lhs.false15 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %if.then ], [ %0, %entry ], [ %spec.select, %lor.lhs.false18 ]
  ret %struct.bio_method_st* %retval.0
}

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.ssl_st** noundef, %struct.ssl_st** noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @create_ssl_connection(%struct.ssl_st* noundef, %struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_write(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_get_error(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_read(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_meth_new(i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_meth_set_write(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @async_write(%struct.bio_st* noundef %bio, i8* noundef %in, i32 noundef %inl) #1 {
entry:
  %pkt = alloca %struct.PACKET, align 8
  %payload = alloca %struct.PACKET, align 8
  %wholebody = alloca %struct.PACKET, align 8
  %sessionid = alloca %struct.PACKET, align 8
  %extensions = alloca %struct.PACKET, align 8
  %contenttype = alloca i32, align 4
  %versionhi = alloca i32, align 4
  %versionlo = alloca i32, align 4
  %data = alloca i32, align 4
  %msgtype = alloca i32, align 4
  %negversion = alloca i32, align 4
  %type = alloca i32, align 4
  %extbody = alloca %struct.PACKET, align 8
  %smallrec = alloca [6 x i8], align 1
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #10
  %cmp = icmp slt i32 %inl, 1
  %cmp1 = icmp eq %struct.bio_st* %call, null
  %or.cond185 = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond185, label %cleanup149, label %if.end3

if.end3:                                          ; preds = %entry
  %call4 = tail call i8* @BIO_get_data(%struct.bio_st* noundef %bio) #10
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %bio, i32 noundef 15) #10
  %wctr = getelementptr inbounds i8, i8* %call4, i64 4
  %0 = bitcast i8* %wctr to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !11
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %if.else145, label %if.then6

if.then6:                                         ; preds = %if.end3
  store i32 0, i32* %0, align 4, !tbaa !11
  %.b = load i1, i1* @fragment, align 4
  br i1 %.b, label %if.then8, label %if.end126

if.then8:                                         ; preds = %if.then6
  %2 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #11
  %conv198 = zext i32 %inl to i64
  call fastcc void @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef %in, i64 noundef %conv198) #12
  %call13249 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #12
  %cmp14.not250 = icmp eq i64 %call13249, 0
  br i1 %cmp14.not250, label %cleanup123.thread, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then8
  %3 = bitcast %struct.PACKET* %payload to i8*
  %4 = bitcast %struct.PACKET* %wholebody to i8*
  %5 = bitcast %struct.PACKET* %sessionid to i8*
  %6 = bitcast %struct.PACKET* %extensions to i8*
  %7 = bitcast i32* %contenttype to i8*
  %8 = bitcast i32* %versionhi to i8*
  %9 = bitcast i32* %versionlo to i8*
  %10 = bitcast i32* %data to i8*
  %11 = bitcast i32* %msgtype to i8*
  %12 = bitcast i32* %negversion to i8*
  %13 = bitcast i32* %type to i8*
  %14 = bitcast %struct.PACKET* %extbody to i8*
  %15 = getelementptr inbounds [6 x i8], [6 x i8]* %smallrec, i64 0, i64 0
  %arrayidx86 = getelementptr inbounds [6 x i8], [6 x i8]* %smallrec, i64 0, i64 1
  %arrayidx88 = getelementptr inbounds [6 x i8], [6 x i8]* %smallrec, i64 0, i64 2
  %arrayidx90 = getelementptr inbounds [6 x i8], [6 x i8]* %smallrec, i64 0, i64 5
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup110
  %written.0251 = phi i64 [ 0, %while.body.lr.ph ], [ %written.1, %cleanup110 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #11
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #11
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #11
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #11
  store i32 0, i32* %msgtype, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #11
  store i32 0, i32* %negversion, align 4, !tbaa !14
  %call16 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %contenttype) #12
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup123, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %call18 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %versionhi) #12
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup123, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %call21 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %versionlo) #12
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup123, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %call24 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %payload) #12
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup123, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false23
  %add = add i64 %written.0251, 5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !15
  %16 = load i32, i32* %contenttype, align 4, !tbaa !14
  %cmp28 = icmp eq i32 %16, 22
  br i1 %cmp28, label %land.lhs.true, label %if.end79

land.lhs.true:                                    ; preds = %if.end27
  %call30 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %wholebody, i32* noundef nonnull %msgtype) #12
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup123, label %if.end33

if.end33:                                         ; preds = %land.lhs.true
  %.pre = load i32, i32* %msgtype, align 4, !tbaa !14
  %cmp34 = icmp eq i32 %.pre, 2
  br i1 %cmp34, label %if.then36, label %if.end79

if.then36:                                        ; preds = %if.end33
  %call37 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %wholebody, i64 noundef 3) #12
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup123, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.then36
  %call40 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %wholebody, i32* noundef nonnull %negversion) #12
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup123, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %call43 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %wholebody, i64 noundef 32) #12
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %cleanup123, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %call46 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %wholebody, %struct.PACKET* noundef nonnull %sessionid) #12
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup123, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %call49 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %wholebody, i64 noundef 3) #12
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cleanup123, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %call52 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %wholebody, %struct.PACKET* noundef nonnull %extensions) #12
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %cleanup123, label %while.cond56.preheader

while.cond56.preheader:                           ; preds = %lor.lhs.false51
  %call57247 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %extensions) #12
  %tobool58.not248 = icmp eq i64 %call57247, 0
  br i1 %tobool58.not248, label %if.end79, label %while.body59

while.body59:                                     ; preds = %while.cond56.preheader, %if.end77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #11
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #11
  %call60 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %extensions, i32* noundef nonnull %type) #12
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %cleanup, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %while.body59
  %call63 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %extensions, %struct.PACKET* noundef nonnull %extbody) #12
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %cleanup, label %if.end66

if.end66:                                         ; preds = %lor.lhs.false62
  %17 = load i32, i32* %type, align 4, !tbaa !14
  %cmp67 = icmp eq i32 %17, 43
  br i1 %cmp67, label %land.lhs.true69, label %if.end77

land.lhs.true69:                                  ; preds = %if.end66
  %call70 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %extbody, i32* noundef nonnull %negversion) #12
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %cleanup, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %land.lhs.true69
  %call73 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %extbody) #12
  %cmp74.not = icmp eq i64 %call73, 0
  br i1 %cmp74.not, label %if.end77, label %cleanup

if.end77:                                         ; preds = %lor.lhs.false72, %if.end66
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #11
  %call57 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %extensions) #12
  %tobool58.not = icmp eq i64 %call57, 0
  br i1 %tobool58.not, label %if.end79, label %while.body59

cleanup:                                          ; preds = %land.lhs.true69, %lor.lhs.false72, %while.body59, %lor.lhs.false62
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #11
  br label %cleanup123, !llvm.loop !18

if.end79:                                         ; preds = %if.end77, %if.end27, %while.cond56.preheader, %if.end33
  %cmp34256 = phi i1 [ true, %while.cond56.preheader ], [ false, %if.end33 ], [ false, %if.end27 ], [ %cmp34, %if.end77 ]
  %conv84 = trunc i32 %16 to i8
  %18 = load i32, i32* %versionhi, align 4
  %conv85 = trunc i32 %18 to i8
  %19 = load i32, i32* %versionlo, align 4
  %conv87 = trunc i32 %19 to i8
  br label %while.cond80

while.cond80:                                     ; preds = %while.body83, %if.end79
  %written.1 = phi i64 [ %add, %if.end79 ], [ %inc, %while.body83 ]
  %call81 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %payload, i32* noundef nonnull %data) #12
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %while.end99, label %while.body83

while.body83:                                     ; preds = %while.cond80
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %15) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %15, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @__const.async_write.smallrec, i64 0, i64 0), i64 5, i1 false)
  store i8 %conv84, i8* %15, align 1, !tbaa !19
  store i8 %conv85, i8* %arrayidx86, align 1, !tbaa !19
  store i8 %conv87, i8* %arrayidx88, align 1, !tbaa !19
  %20 = load i32, i32* %data, align 4, !tbaa !14
  %conv89 = trunc i32 %20 to i8
  store i8 %conv89, i8* %arrayidx90, align 1, !tbaa !19
  %call91 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call, i8* noundef nonnull %15, i32 noundef 6) #10
  %cmp92 = icmp slt i32 %call91, 1
  %inc = add i64 %written.1, 1
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %15) #11
  br i1 %cmp92, label %cleanup123, label %while.cond80, !llvm.loop !20

while.end99:                                      ; preds = %while.cond80
  %cmp100 = icmp eq i32 %16, 20
  br i1 %cmp100, label %cleanup110.thread188, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %while.end99
  %21 = load i32, i32* %negversion, align 4, !tbaa !14
  %cmp103 = icmp eq i32 %21, 772
  %or.cond = select i1 %cmp103, i1 %cmp34256, i1 false
  br i1 %or.cond, label %cleanup110.thread188, label %cleanup110

cleanup110.thread188:                             ; preds = %while.end99, %lor.lhs.false102
  store i1 false, i1* @fragment, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #11
  br label %cleanup123.thread

cleanup110:                                       ; preds = %lor.lhs.false102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #11
  %call13 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #12
  %cmp14.not = icmp eq i64 %call13, 0
  br i1 %cmp14.not, label %cleanup123.thread, label %while.body

cleanup123.thread:                                ; preds = %cleanup110, %if.then8, %cleanup110.thread188
  %written.5.ph = phi i64 [ %written.1, %cleanup110.thread188 ], [ 0, %if.then8 ], [ %written.1, %cleanup110 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #11
  br label %if.end126

cleanup123:                                       ; preds = %lor.lhs.false23, %lor.lhs.false20, %lor.lhs.false, %while.body, %land.lhs.true, %lor.lhs.false51, %lor.lhs.false48, %lor.lhs.false45, %lor.lhs.false42, %lor.lhs.false39, %if.then36, %while.body83, %cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #11
  br label %cleanup149

if.end126:                                        ; preds = %cleanup123.thread, %if.then6
  %written.6 = phi i64 [ 0, %if.then6 ], [ %written.5.ph, %cleanup123.thread ]
  %conv127 = trunc i64 %written.6 to i32
  %cmp128 = icmp slt i32 %conv127, %inl
  br i1 %cmp128, label %if.end134, label %land.lhs.true137

if.end134:                                        ; preds = %if.end126
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %written.6
  %conv132 = sub i32 %inl, %conv127
  %call133 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call, i8* noundef %add.ptr, i32 noundef %conv132) #10
  %cmp135 = icmp slt i32 %call133, 1
  br i1 %cmp135, label %land.lhs.true137, label %if.else

land.lhs.true137:                                 ; preds = %if.end126, %if.end134
  %ret.0197 = phi i32 [ %call133, %if.end134 ], [ 0, %if.end126 ]
  %call138 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call, i32 noundef 2) #10
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.else, label %if.then140

if.then140:                                       ; preds = %land.lhs.true137
  call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef 10) #10
  br label %cleanup149

if.else:                                          ; preds = %land.lhs.true137, %if.end134
  %ret.0196 = phi i32 [ %ret.0197, %land.lhs.true137 ], [ %call133, %if.end134 ]
  %conv143 = add i32 %ret.0196, %conv127
  br label %cleanup149

if.else145:                                       ; preds = %if.end3
  store i32 1, i32* %0, align 4, !tbaa !11
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef 10) #10
  br label %cleanup149

cleanup149:                                       ; preds = %cleanup123, %if.else145, %if.else, %if.then140, %entry
  %retval.9 = phi i32 [ -1, %cleanup123 ], [ 0, %entry ], [ %ret.0197, %if.then140 ], [ %conv143, %if.else ], [ 0, %if.else145 ]
  ret i32 %retval.9
}

declare dso_local i32 @BIO_meth_set_read(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @async_read(%struct.bio_st* noundef %bio, i8* noundef %out, i32 noundef %outl) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #10
  %cmp = icmp slt i32 %outl, 1
  %cmp1 = icmp eq %struct.bio_st* %call, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %call4 = tail call i8* @BIO_get_data(%struct.bio_st* noundef %bio) #10
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %bio, i32 noundef 15) #10
  %rctr = bitcast i8* %call4 to i32*
  %0 = load i32, i32* %rctr, align 4, !tbaa !21
  %cmp5.not = icmp eq i32 %0, 0
  br i1 %cmp5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  %call7 = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %call, i8* noundef %out, i32 noundef 1) #10
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.then6
  %call9 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call, i32 noundef 1) #10
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef 9) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true, %if.then6
  store i32 0, i32* %rctr, align 4, !tbaa !21
  br label %cleanup

if.else:                                          ; preds = %if.end3
  store i32 1, i32* %rctr, align 4, !tbaa !21
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef 9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call7, %if.end11 ], [ 0, %if.else ]
  ret i32 %retval.0
}

declare dso_local i32 @BIO_meth_set_puts(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @async_puts(%struct.bio_st* noundef %bio, i8* noundef %str) #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #13
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @async_write(%struct.bio_st* noundef %bio, i8* noundef %str, i32 noundef %conv) #12
  ret i32 %call1
}

declare dso_local i32 @BIO_meth_set_gets(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @async_gets(%struct.bio_st* nocapture noundef readnone %bio, i8* nocapture noundef readnone %buf, i32 noundef %size) #0 {
entry:
  ret i32 -1
}

declare dso_local i32 @BIO_meth_set_ctrl(%struct.bio_method_st* noundef, i64 (%struct.bio_st*, i32, i64, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @async_ctrl(%struct.bio_st* noundef %bio, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #10
  %cmp = icmp eq %struct.bio_st* %call, null
  %cond = icmp eq i32 %cmd, 12
  %or.cond = or i1 %cond, %cmp
  br i1 %or.cond, label %cleanup, label %sw.default

sw.default:                                       ; preds = %entry
  %call1 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %call1, %sw.default ]
  ret i64 %retval.0
}

declare dso_local i32 @BIO_meth_set_create(%struct.bio_method_st* noundef, i32 (%struct.bio_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @async_new(%struct.bio_st* noundef %bio) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 8, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 66) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BIO_set_data(%struct.bio_st* noundef %bio, i8* noundef nonnull %call) #10
  tail call void @BIO_set_init(%struct.bio_st* noundef %bio, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @BIO_meth_set_destroy(%struct.bio_method_st* noundef, i32 (%struct.bio_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @async_free(%struct.bio_st* noundef %bio) #1 {
entry:
  %cmp = icmp eq %struct.bio_st* %bio, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %bio) #10
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 82) #10
  tail call void @BIO_set_data(%struct.bio_st* noundef nonnull %bio, i8* noundef null) #10
  tail call void @BIO_set_init(%struct.bio_st* noundef nonnull %bio, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i8* @BIO_get_data(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #5 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !22
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #6 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !24
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #8 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #11
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !15
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !14
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !15
  %5 = load i8*, i8** %data, align 8, !tbaa !3
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !22
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #7 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #12
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #8 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #11
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !15
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !14
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !15
  %5 = load i8*, i8** %data, align 8, !tbaa !3
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !22
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #12
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !22
  %1 = load i8, i8* %0, align 1, !tbaa !19
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #7 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !22
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !24
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #7 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_bytes(%struct.PACKET* noundef %pkt, i8** noundef %data, i64 noundef %len) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #7 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #12
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !22
  store i8* %0, i8** %data, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #12
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !22
  %1 = load i8, i8* %0, align 1, !tbaa !19
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !14
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !19
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #9

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @BIO_set_data(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @BIO_set_init(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!11 = !{!12, !13, i64 4}
!12 = !{!"async_ctrs", !13, i64 0, !13, i64 4}
!13 = !{!"int", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{i64 0, i64 8, !3, i64 8, i64 8, !16}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = distinct !{!18, !8}
!19 = !{!5, !5, i64 0}
!20 = distinct !{!20, !8}
!21 = !{!12, !13, i64 0}
!22 = !{!23, !4, i64 0}
!23 = !{!"", !4, i64 0, !17, i64 8}
!24 = !{!23, !17, i64 8}
