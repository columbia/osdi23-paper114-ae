; ModuleID = 'test/recordlentest.c'
source_filename = "test/recordlentest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.ssl_method_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
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
@.str.14 = private unnamed_addr constant [21 x i8] c"test/recordlentest.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"cert = test_get_argument(0)\00", align 1
@cert = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [31 x i8] c"privkey = test_get_argument(1)\00", align 1
@privkey = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [21 x i8] c"test_record_overflow\00", align 1
@.str.19 = private unnamed_addr constant [114 x i8] c"create_ssl_ctx_pair(NULL, TLS_server_method(), TLS_client_method(), TLS1_VERSION, 0, &sctx, &cctx, cert, privkey)\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"create_ssl_objects(sctx, cctx, &serverssl, &clientssl, NULL, NULL)\00", align 1
@.str.21 = private unnamed_addr constant [62 x i8] c"write_record(serverbio, len, SSL3_RT_HANDSHAKE, TLS1_VERSION)\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"SSL_accept(serverssl)\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"fail_due_to_record_overflow(0)\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"overf_expected\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE)\00", align 1
@.str.27 = private unnamed_addr constant [67 x i8] c"write_record(serverbio, len, SSL3_RT_APPLICATION_DATA, recversion)\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c"SSL_read_ex(serverssl, &buf, sizeof(buf), &written)\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"fail_due_to_record_overflow(1)\00", align 1

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
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #5
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #5
  store i8* %call1, i8** @cert, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #5
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #5
  store i8* %call4, i8** @privkey, align 8, !tbaa !3
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call4) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 (i32)* noundef nonnull @test_record_overflow, i32 noundef 6, i32 noundef 1) #5
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
define internal i32 @test_record_overflow(i32 noundef %idx) #1 {
entry:
  %cctx = alloca %struct.ssl_ctx_st*, align 8
  %sctx = alloca %struct.ssl_ctx_st*, align 8
  %clientssl = alloca %struct.ssl_st*, align 8
  %serverssl = alloca %struct.ssl_st*, align 8
  %written = alloca i64, align 8
  %buf = alloca i8, align 1
  %0 = bitcast %struct.ssl_ctx_st** %cctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %1 = bitcast %struct.ssl_ctx_st** %sctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %2 = bitcast %struct.ssl_st** %clientssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store %struct.ssl_st* null, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %3 = bitcast %struct.ssl_st** %serverssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store %struct.ssl_st* null, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %4 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %buf) #6
  tail call void @ERR_clear_error() #5
  %call = tail call %struct.ssl_method_st* @TLS_server_method() #5
  %call1 = tail call %struct.ssl_method_st* @TLS_client_method() #5
  %5 = load i8*, i8** @cert, align 8, !tbaa !3
  %6 = load i8*, i8** @privkey, align 8, !tbaa !3
  %call2 = call i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef null, %struct.ssl_method_st* noundef %call, %struct.ssl_method_st* noundef %call1, i32 noundef 769, i32 noundef 0, %struct.ssl_ctx_st** noundef nonnull %sctx, %struct.ssl_ctx_st** noundef nonnull %cctx, i8* noundef %5, i8* noundef %6) #5
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  %7 = and i32 %idx, -2
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %9 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %call9 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %9, i32 noundef 124, i64 noundef 771, i8* noundef null) #5
  br label %if.end17

if.else:                                          ; preds = %if.end
  %10 = icmp eq i32 %7, 2
  %spec.select = select i1 %10, i64 16640, i64 0
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then8
  %len.0 = phi i64 [ 16704, %if.then8 ], [ %spec.select, %if.else ]
  %11 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %12 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call18 = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %11, %struct.ssl_ctx_st* noundef %12, %struct.ssl_st** noundef nonnull %serverssl, %struct.ssl_st** noundef nonnull %clientssl, %struct.bio_st* noundef null, %struct.bio_st* noundef null) #5
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv20) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %end, label %if.end24

if.end24:                                         ; preds = %if.end17
  %13 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call25 = call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef %13) #5
  %cmp26 = icmp ne i32 %idx, 0
  %14 = icmp ult i32 %idx, 2
  br i1 %14, label %if.then31, label %if.end55

if.then31:                                        ; preds = %if.end24
  %cmp29 = icmp eq i32 %idx, 1
  %spec.select114 = select i1 %cmp29, i64 16385, i64 16384
  %call36 = call fastcc i32 @write_record(%struct.bio_st* noundef %call25, i64 noundef %spec.select114, i32 noundef 22, i32 noundef 769) #7
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv38) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %end, label %if.end42

if.end42:                                         ; preds = %if.then31
  %15 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call43 = call i32 @SSL_accept(%struct.ssl_st* noundef %15) #5
  %call44 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32 noundef %call43, i32 noundef 0) #5
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %end, label %if.end47

if.end47:                                         ; preds = %if.end42
  %cond = zext i1 %cmp26 to i32
  %call50 = call fastcc i32 @fail_due_to_record_overflow(i32 noundef 0) #7, !range !7
  %call51 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call50, i32 noundef %cond) #5
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %end, label %success

if.end55:                                         ; preds = %if.end24
  %16 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %17 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call56 = call i32 @create_ssl_connection(%struct.ssl_st* noundef %16, %struct.ssl_st* noundef %17, i32 noundef 0) #5
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv58) #5
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %end, label %if.end62

if.end62:                                         ; preds = %if.end55
  switch i32 %idx, label %if.end71 [
    i32 5, label %if.then68
    i32 3, label %if.then68
  ]

if.then68:                                        ; preds = %if.end62, %if.end62
  %inc69 = or i64 %len.0, 1
  br label %if.end71

if.end71:                                         ; preds = %if.end62, %if.then68
  %overf_expected.0 = phi i32 [ 1, %if.then68 ], [ 0, %if.end62 ]
  %len.2 = phi i64 [ %inc69, %if.then68 ], [ %len.0, %if.end62 ]
  %call72 = call fastcc i32 @write_record(%struct.bio_st* noundef %call25, i64 noundef %len.2, i32 noundef 23, i32 noundef 771) #7
  %cmp73 = icmp ne i32 %call72, 0
  %conv74 = zext i1 %cmp73 to i32
  %call75 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv74) #5
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %end, label %if.end78

if.end78:                                         ; preds = %if.end71
  %18 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call79 = call i32 @SSL_read_ex(%struct.ssl_st* noundef %18, i8* noundef nonnull %buf, i64 noundef 1, i64* noundef nonnull %written) #5
  %cmp80 = icmp ne i32 %call79, 0
  %conv81 = zext i1 %cmp80 to i32
  %call82 = call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv81) #5
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %end, label %if.end85

if.end85:                                         ; preds = %if.end78
  %call86 = call fastcc i32 @fail_due_to_record_overflow(i32 noundef 1) #7, !range !7
  %call87 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call86, i32 noundef %overf_expected.0) #5
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %end, label %success

success:                                          ; preds = %if.end85, %if.end47
  br label %end

end:                                              ; preds = %if.end85, %if.end78, %if.end71, %if.end55, %if.end47, %if.end42, %if.then31, %if.end17, %entry, %success
  %testresult.0 = phi i32 [ 1, %success ], [ 0, %if.end47 ], [ 0, %if.end42 ], [ 0, %if.then31 ], [ 0, %if.end85 ], [ 0, %if.end78 ], [ 0, %if.end71 ], [ 0, %if.end55 ], [ 0, %if.end17 ], [ 0, %entry ]
  %19 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %19) #5
  %20 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %20) #5
  %21 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %21) #5
  %22 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %22) #5
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %buf) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  tail call void @bio_s_mempacket_test_free() #5
  ret void
}

declare dso_local void @bio_s_mempacket_test_free() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local void @ERR_clear_error() local_unnamed_addr #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef, %struct.ssl_method_st* noundef, %struct.ssl_method_st* noundef, i32 noundef, i32 noundef, %struct.ssl_ctx_st** noundef, %struct.ssl_ctx_st** noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_method_st* @TLS_server_method() local_unnamed_addr #2

declare dso_local %struct.ssl_method_st* @TLS_client_method() local_unnamed_addr #2

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.ssl_st** noundef, %struct.ssl_st** noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @write_record(%struct.bio_st* noundef %b, i64 noundef %len, i32 noundef %rectype, i32 noundef %recversion) unnamed_addr #1 {
entry:
  %header = alloca [5 x i8], align 1
  %written = alloca i64, align 8
  %buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [5 x i8], [5 x i8]* %header, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %0) #6
  %1 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #6
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 256) #5
  %conv = trunc i32 %rectype to i8
  store i8 %conv, i8* %0, align 1, !tbaa !8
  %arrayidx2 = getelementptr inbounds [5 x i8], [5 x i8]* %header, i64 0, i64 1
  store i8 3, i8* %arrayidx2, align 1, !tbaa !8
  %conv4 = trunc i32 %recversion to i8
  %arrayidx5 = getelementptr inbounds [5 x i8], [5 x i8]* %header, i64 0, i64 2
  store i8 %conv4, i8* %arrayidx5, align 1, !tbaa !8
  %shr6 = lshr i64 %len, 8
  %conv8 = trunc i64 %shr6 to i8
  %arrayidx9 = getelementptr inbounds [5 x i8], [5 x i8]* %header, i64 0, i64 3
  store i8 %conv8, i8* %arrayidx9, align 1, !tbaa !8
  %conv11 = trunc i64 %len to i8
  %arrayidx12 = getelementptr inbounds [5 x i8], [5 x i8]* %header, i64 0, i64 4
  store i8 %conv11, i8* %arrayidx12, align 1, !tbaa !8
  %call14 = call i32 @BIO_write_ex(%struct.bio_st* noundef %b, i8* noundef nonnull %0, i64 noundef 5, i64* noundef nonnull %written) #5
  %tobool = icmp eq i32 %call14, 0
  %3 = load i64, i64* %written, align 8
  %cmp = icmp ne i64 %3, 5
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup30, label %while.cond

while.cond:                                       ; preds = %entry, %while.body
  %len.addr.0 = phi i64 [ %sub, %while.body ], [ %len, %entry ]
  %cmp16.not = icmp eq i64 %len.addr.0, 0
  br i1 %cmp16.not, label %cleanup30, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = icmp ult i64 %len.addr.0, 256
  %.len.addr.0 = select i1 %4, i64 %len.addr.0, i64 256
  %call23 = call i32 @BIO_write_ex(%struct.bio_st* noundef %b, i8* noundef nonnull %2, i64 noundef %.len.addr.0, i64* noundef nonnull %written) #5
  %tobool24.not = icmp ne i32 %call23, 0
  %5 = load i64, i64* %written, align 8
  %cmp26.not = icmp eq i64 %5, %.len.addr.0
  %or.cond43 = select i1 %tobool24.not, i1 %cmp26.not, i1 false
  %sub = sub i64 %len.addr.0, %.len.addr.0
  br i1 %or.cond43, label %while.cond, label %cleanup30, !llvm.loop !9

cleanup30:                                        ; preds = %while.cond, %while.body, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 1, %while.cond ], [ 0, %while.body ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %0) #6
  ret i32 %retval.2
}

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_accept(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @fail_due_to_record_overflow(i32 noundef %enc) unnamed_addr #1 {
entry:
  %call = tail call i64 @ERR_peek_error() #5
  %call1 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %call) #7
  %cmp = icmp eq i32 %call1, 20
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %entry
  %tobool.not = icmp eq i32 %enc, 0
  %. = select i1 %tobool.not, i32 146, i32 150
  %call2 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call) #7
  %cmp3 = icmp eq i32 %call2, %.
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %entry
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

declare dso_local i32 @create_ssl_connection(%struct.ssl_st* noundef, %struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_read_ex(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare dso_local i32 @BIO_write_ex(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i64 @ERR_peek_error() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #0 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #0 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i32 0, i32 2}
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
