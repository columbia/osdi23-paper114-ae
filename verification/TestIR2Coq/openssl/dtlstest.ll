; ModuleID = 'test/dtlstest.c'
source_filename = "test/dtlstest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.ssl_method_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.ssl_session_st = type opaque

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
@.str.14 = private unnamed_addr constant [16 x i8] c"test/dtlstest.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"cert = test_get_argument(0)\00", align 1
@cert = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [31 x i8] c"privkey = test_get_argument(1)\00", align 1
@privkey = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [22 x i8] c"test_dtls_unprocessed\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"test_dtls_drop_records\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"test_cookie\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"test_dtls_duplicate_records\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"test_just_finished\00", align 1
@timer_cb_count = internal unnamed_addr global i32 0, align 4
@.str.23 = private unnamed_addr constant [117 x i8] c"create_ssl_ctx_pair(NULL, DTLS_server_method(), DTLS_client_method(), DTLS1_VERSION, 0, &sctx, &cctx, cert, privkey)\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"SSL_CTX_set_cipher_list(cctx, \22AES128-SHA\22)\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"AES128-SHA\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"c_to_s_fbio\00", align 1
@.str.27 = private unnamed_addr constant [76 x i8] c"create_ssl_objects(sctx, cctx, &serverssl1, &clientssl1, NULL, c_to_s_fbio)\00", align 1
@certstatus = internal global [35 x i8] c"\16\FE\FD\00\01\00\00\00\00\00\0F\00\16\16\00\00\0C\00\05\00\00\00\00\00\0A\80\80\80\80\80\80\80\80\80\80", align 16
@.str.28 = private unnamed_addr constant [70 x i8] c"create_bare_ssl_connection(serverssl1, clientssl1, SSL_ERROR_NONE, 0)\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"timer_callback was not called.\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"SSL_CTX_set_dh_auto(sctx, 1)\00", align 1
@.str.31 = private unnamed_addr constant [67 x i8] c"create_ssl_objects(sctx, cctx, &serverssl, &clientssl, NULL, NULL)\00", align 1
@.str.32 = private unnamed_addr constant [60 x i8] c"create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE)\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"sess = SSL_get1_session(clientssl)\00", align 1
@.str.34 = private unnamed_addr constant [74 x i8] c"create_ssl_objects(sctx, cctx, &serverssl, &clientssl, NULL, c_to_s_fbio)\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"SSL_set_session(clientssl, sess)\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"SSL_session_reused(clientssl)\00", align 1
@.str.37 = private unnamed_addr constant [64 x i8] c"(int)BIO_ctrl(mempackbio, MEMPACKET_CTRL_GET_DROP_REC, 0, NULL)\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@dummy_cookie = internal constant [8 x i8] c"0123456\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"dummy_cookie\00", align 1
@__const.test_just_finished.buf = private unnamed_addr constant <{ [25 x i8], [20 x i8] }> <{ [25 x i8] c"\16\FE\FD\00\00\00\00\00\00\00\00\00 \14\00\00\14\00\00\00\00\00\00\00\14", [20 x i8] zeroinitializer }>, align 16
@.str.41 = private unnamed_addr constant [88 x i8] c"create_ssl_ctx_pair(NULL, DTLS_server_method(), NULL, 0, 0, &sctx, NULL, cert, privkey)\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"serverssl\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"rbio\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"wbio\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"BIO_write(sbio, buf, sizeof(buf))\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"sizeof(buf)\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"ret = SSL_accept(serverssl)\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"SSL_get_error(serverssl, ret)\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"SSL_ERROR_SSL\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"ERR_GET_REASON(ERR_get_error())\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"SSL_R_UNEXPECTED_MESSAGE\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 450, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #7
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #7
  store i8* %call1, i8** @cert, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #7
  store i8* %call4, i8** @privkey, align 8, !tbaa !3
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 455, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call4) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 (i32)* noundef nonnull @test_dtls_unprocessed, i32 noundef 2, i32 noundef 1) #7
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 (i32)* noundef nonnull @test_dtls_drop_records, i32 noundef 22, i32 noundef 1) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 ()* noundef nonnull @test_cookie) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 ()* noundef nonnull @test_dtls_duplicate_records) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 ()* noundef nonnull @test_just_finished) #7
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
define internal i32 @test_dtls_unprocessed(i32 noundef %testidx) #1 {
entry:
  %sctx = alloca %struct.ssl_ctx_st*, align 8
  %cctx = alloca %struct.ssl_ctx_st*, align 8
  %serverssl1 = alloca %struct.ssl_st*, align 8
  %clientssl1 = alloca %struct.ssl_st*, align 8
  %0 = bitcast %struct.ssl_ctx_st** %sctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %1 = bitcast %struct.ssl_ctx_st** %cctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %2 = bitcast %struct.ssl_st** %serverssl1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  store %struct.ssl_st* null, %struct.ssl_st** %serverssl1, align 8, !tbaa !3
  %3 = bitcast %struct.ssl_st** %clientssl1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  store %struct.ssl_st* null, %struct.ssl_st** %clientssl1, align 8, !tbaa !3
  store i32 0, i32* @timer_cb_count, align 4, !tbaa !7
  %call = tail call %struct.ssl_method_st* @DTLS_server_method() #7
  %call1 = tail call %struct.ssl_method_st* @DTLS_client_method() #7
  %4 = load i8*, i8** @cert, align 8, !tbaa !3
  %5 = load i8*, i8** @privkey, align 8, !tbaa !3
  %call2 = call i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef null, %struct.ssl_method_st* noundef %call, %struct.ssl_method_st* noundef %call1, i32 noundef 65279, i32 noundef 0, %struct.ssl_ctx_st** noundef nonnull %sctx, %struct.ssl_ctx_st** noundef nonnull %cctx, i8* noundef %4, i8* noundef %5) #7
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([117 x i8], [117 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call4 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0)) #7
  %cmp5 = icmp ne i32 %call4, 0
  %conv6 = zext i1 %cmp5 to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv6) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %end, label %if.end10

if.end10:                                         ; preds = %if.end
  %call11 = call %struct.bio_method_st* @bio_f_tls_dump_filter() #7
  %call12 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call11) #7
  %7 = bitcast %struct.bio_st* %call12 to i8*
  %call13 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* noundef %7) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %end, label %if.end16

if.end16:                                         ; preds = %if.end10
  %8 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %9 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call17 = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %8, %struct.ssl_ctx_st* noundef %9, %struct.ssl_st** noundef nonnull %serverssl1, %struct.ssl_st** noundef nonnull %clientssl1, %struct.bio_st* noundef null, %struct.bio_st* noundef %call12) #7
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv19) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %end, label %if.end23

if.end23:                                         ; preds = %if.end16
  %10 = load %struct.ssl_st*, %struct.ssl_st** %clientssl1, align 8, !tbaa !3
  call void @DTLS_set_timer_cb(%struct.ssl_st* noundef %10, i32 (%struct.ssl_st*, i32)* noundef nonnull @timer_cb) #7
  %cmp24 = icmp eq i32 %testidx, 1
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  store i8 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @certstatus, i64 0, i64 10), align 2, !tbaa !9
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23
  %11 = load %struct.ssl_st*, %struct.ssl_st** %clientssl1, align 8, !tbaa !3
  %call28 = call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %11) #7
  %call29 = call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %call28) #7
  %call30 = call i32 @mempacket_test_inject(%struct.bio_st* noundef %call29, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @certstatus, i64 0, i64 0), i32 noundef 35, i32 noundef 1, i32 noundef 2) #7
  %12 = load %struct.ssl_st*, %struct.ssl_st** %serverssl1, align 8, !tbaa !3
  %13 = load %struct.ssl_st*, %struct.ssl_st** %clientssl1, align 8, !tbaa !3
  %call31 = call i32 @create_bare_ssl_connection(%struct.ssl_st* noundef %12, %struct.ssl_st* noundef %13, i32 noundef 0, i32 noundef 0) #7
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv33) #7
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %end, label %if.end37

if.end37:                                         ; preds = %if.end27
  %14 = load i32, i32* @timer_cb_count, align 4, !tbaa !7
  %cmp38 = icmp eq i32 %14, 0
  br i1 %cmp38, label %if.then40, label %end

if.then40:                                        ; preds = %if.end37
  %call41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0)) #7
  br label %end

end:                                              ; preds = %if.end37, %if.end27, %if.end16, %if.end10, %if.end, %if.then40
  %testresult.0 = phi i32 [ 0, %if.then40 ], [ 0, %if.end27 ], [ 0, %if.end16 ], [ 0, %if.end10 ], [ 0, %if.end ], [ 1, %if.end37 ]
  %15 = load %struct.ssl_st*, %struct.ssl_st** %serverssl1, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %15) #7
  %16 = load %struct.ssl_st*, %struct.ssl_st** %clientssl1, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %16) #7
  %17 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %17) #7
  %18 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %18) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %testresult.0, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_dtls_drop_records(i32 noundef %idx) #1 {
entry:
  %sctx = alloca %struct.ssl_ctx_st*, align 8
  %cctx = alloca %struct.ssl_ctx_st*, align 8
  %serverssl = alloca %struct.ssl_st*, align 8
  %clientssl = alloca %struct.ssl_st*, align 8
  %0 = bitcast %struct.ssl_ctx_st** %sctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %1 = bitcast %struct.ssl_ctx_st** %cctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %2 = bitcast %struct.ssl_st** %serverssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  store %struct.ssl_st* null, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %3 = bitcast %struct.ssl_st** %clientssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  store %struct.ssl_st* null, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call = tail call %struct.ssl_method_st* @DTLS_server_method() #7
  %call1 = tail call %struct.ssl_method_st* @DTLS_client_method() #7
  %4 = load i8*, i8** @cert, align 8, !tbaa !3
  %5 = load i8*, i8** @privkey, align 8, !tbaa !3
  %call2 = call i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef null, %struct.ssl_method_st* noundef %call, %struct.ssl_method_st* noundef %call1, i32 noundef 65279, i32 noundef 0, %struct.ssl_ctx_st** noundef nonnull %sctx, %struct.ssl_ctx_st** noundef nonnull %cctx, i8* noundef %4, i8* noundef %5) #7
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([117 x i8], [117 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %call4 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %6, i32 noundef 118, i64 noundef 1, i8* noundef null) #7
  %cmp5 = icmp ne i64 %call4, 0
  %conv6 = zext i1 %cmp5 to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv6) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %end, label %if.end10

if.end10:                                         ; preds = %if.end
  %cmp11 = icmp sgt i32 %idx, 14
  br i1 %cmp11, label %if.then13, label %if.end32

if.then13:                                        ; preds = %if.end10
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %8 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call14 = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %7, %struct.ssl_ctx_st* noundef %8, %struct.ssl_st** noundef nonnull %serverssl, %struct.ssl_st** noundef nonnull %clientssl, %struct.bio_st* noundef null, %struct.bio_st* noundef null) #7
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv16) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then13
  %9 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %10 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call19 = call i32 @create_ssl_connection(%struct.ssl_st* noundef %9, %struct.ssl_st* noundef %10, i32 noundef 0) #7
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv21) #7
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %end, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %11 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call25 = call %struct.ssl_session_st* @SSL_get1_session(%struct.ssl_st* noundef %11) #7
  %12 = bitcast %struct.ssl_session_st* %call25 to i8*
  %call26 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0), i8* noundef %12) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %end, label %if.end29

if.end29:                                         ; preds = %lor.lhs.false24
  %13 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call30 = call i32 @SSL_shutdown(%struct.ssl_st* noundef %13) #7
  %14 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call31 = call i32 @SSL_shutdown(%struct.ssl_st* noundef %14) #7
  %15 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %15) #7
  %16 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %16) #7
  store %struct.ssl_st* null, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  store %struct.ssl_st* null, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %sub = add nsw i32 %idx, -15
  br label %if.end32

if.end32:                                         ; preds = %if.end10, %if.end29
  %idx.addr.0 = phi i32 [ %sub, %if.end29 ], [ %idx, %if.end10 ]
  %sess.0 = phi %struct.ssl_session_st* [ %call25, %if.end29 ], [ null, %if.end10 ]
  %srv_to_cli_epoch0.0 = phi i32 [ 2, %if.end29 ], [ 10, %if.end10 ]
  %call33 = call %struct.bio_method_st* @bio_f_tls_dump_filter() #7
  %call34 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call33) #7
  %17 = bitcast %struct.bio_st* %call34 to i8*
  %call35 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* noundef %17) #7
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %end, label %if.end38

if.end38:                                         ; preds = %if.end32
  %18 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %19 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call39 = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %18, %struct.ssl_ctx_st* noundef %19, %struct.ssl_st** noundef nonnull %serverssl, %struct.ssl_st** noundef nonnull %clientssl, %struct.bio_st* noundef null, %struct.bio_st* noundef %call34) #7
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv41) #7
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %end, label %if.end45

if.end45:                                         ; preds = %if.end38
  %cmp46.not = icmp eq %struct.ssl_session_st* %sess.0, null
  br i1 %cmp46.not, label %if.end56, label %if.then48

if.then48:                                        ; preds = %if.end45
  %20 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call49 = call i32 @SSL_set_session(%struct.ssl_st* noundef %20, %struct.ssl_session_st* noundef nonnull %sess.0) #7
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv51) #7
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %end, label %if.end56

if.end56:                                         ; preds = %if.then48, %if.end45
  %21 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  call void @DTLS_set_timer_cb(%struct.ssl_st* noundef %21, i32 (%struct.ssl_st*, i32)* noundef nonnull @timer_cb) #7
  %22 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  call void @DTLS_set_timer_cb(%struct.ssl_st* noundef %22, i32 (%struct.ssl_st*, i32)* noundef nonnull @timer_cb) #7
  %cmp57 = icmp sgt i32 %idx.addr.0, 3
  br i1 %cmp57, label %if.then59, label %if.else68

if.then59:                                        ; preds = %if.end56
  %23 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call60 = call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %23) #7
  %sub62 = add nsw i32 %idx.addr.0, -4
  %cmp63.not = icmp ult i32 %sub62, %srv_to_cli_epoch0.0
  %sub66 = select i1 %cmp63.not, i32 0, i32 %srv_to_cli_epoch0.0
  %spec.select = sub nsw i32 %sub62, %sub66
  %not.cmp63.not = xor i1 %cmp63.not, true
  br label %if.end76

if.else68:                                        ; preds = %if.end56
  %24 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call69 = call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %24) #7
  %cmp70 = icmp eq i32 %idx.addr.0, 3
  %spec.select143 = select i1 %cmp70, i32 0, i32 %idx.addr.0
  %call75 = call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %call69) #7
  br label %if.end76

if.end76:                                         ; preds = %if.then59, %if.else68
  %idx.addr.2 = phi i32 [ %spec.select143, %if.else68 ], [ %spec.select, %if.then59 ]
  %mempackbio.0 = phi %struct.bio_st* [ %call75, %if.else68 ], [ %call60, %if.then59 ]
  %epoch.1.in = phi i1 [ %cmp70, %if.else68 ], [ %not.cmp63.not, %if.then59 ]
  %epoch.1 = zext i1 %epoch.1.in to i64
  %call78 = call i64 @BIO_ctrl(%struct.bio_st* noundef %mempackbio.0, i32 noundef 32768, i64 noundef %epoch.1, i8* noundef null) #7
  %conv79 = sext i32 %idx.addr.2 to i64
  %call80 = call i64 @BIO_ctrl(%struct.bio_st* noundef %mempackbio.0, i32 noundef 65536, i64 noundef %conv79, i8* noundef null) #7
  %25 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %26 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call81 = call i32 @create_ssl_connection(%struct.ssl_st* noundef %25, %struct.ssl_st* noundef %26, i32 noundef 0) #7
  %cmp82 = icmp ne i32 %call81, 0
  %conv83 = zext i1 %cmp82 to i32
  %call84 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv83) #7
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %end, label %if.end87

if.end87:                                         ; preds = %if.end76
  br i1 %cmp46.not, label %if.end96, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end87
  %27 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call90 = call i32 @SSL_session_reused(%struct.ssl_st* noundef %27) #7
  %cmp91 = icmp ne i32 %call90, 0
  %conv92 = zext i1 %cmp91 to i32
  %call93 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv92) #7
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %end, label %if.end96

if.end96:                                         ; preds = %land.lhs.true, %if.end87
  %call97 = call i64 @BIO_ctrl(%struct.bio_st* noundef %mempackbio.0, i32 noundef 98304, i64 noundef 0, i8* noundef null) #7
  %conv98 = trunc i64 %call97 to i32
  %call99 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv98, i32 noundef -1) #7
  %tobool100.not = icmp ne i32 %call99, 0
  %spec.select145 = zext i1 %tobool100.not to i32
  br label %end

end:                                              ; preds = %if.end96, %land.lhs.true, %if.end76, %if.then48, %if.end38, %if.end32, %if.then13, %lor.lhs.false, %lor.lhs.false24, %if.end
  %testresult.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end76 ], [ 0, %if.then48 ], [ 0, %if.end38 ], [ 0, %if.end32 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false ], [ 0, %if.then13 ], [ 0, %if.end ], [ %spec.select145, %if.end96 ]
  %sess.1 = phi %struct.ssl_session_st* [ %sess.0, %land.lhs.true ], [ %sess.0, %if.end76 ], [ %sess.0, %if.then48 ], [ %sess.0, %if.end38 ], [ %sess.0, %if.end32 ], [ %call25, %lor.lhs.false24 ], [ null, %lor.lhs.false ], [ null, %if.then13 ], [ null, %if.end ], [ %sess.0, %if.end96 ]
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %sess.1) #7
  %28 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %28) #7
  %29 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %29) #7
  %30 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %30) #7
  %31 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %31) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %testresult.0, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cookie() #1 {
entry:
  %sctx = alloca %struct.ssl_ctx_st*, align 8
  %cctx = alloca %struct.ssl_ctx_st*, align 8
  %serverssl = alloca %struct.ssl_st*, align 8
  %clientssl = alloca %struct.ssl_st*, align 8
  %0 = bitcast %struct.ssl_ctx_st** %sctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %1 = bitcast %struct.ssl_ctx_st** %cctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %2 = bitcast %struct.ssl_st** %serverssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  store %struct.ssl_st* null, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %3 = bitcast %struct.ssl_st** %clientssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  store %struct.ssl_st* null, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call = tail call %struct.ssl_method_st* @DTLS_server_method() #7
  %call1 = tail call %struct.ssl_method_st* @DTLS_client_method() #7
  %4 = load i8*, i8** @cert, align 8, !tbaa !3
  %5 = load i8*, i8** @privkey, align 8, !tbaa !3
  %call2 = call i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef null, %struct.ssl_method_st* noundef %call, %struct.ssl_method_st* noundef %call1, i32 noundef 65279, i32 noundef 0, %struct.ssl_ctx_st** noundef nonnull %sctx, %struct.ssl_ctx_st** noundef nonnull %cctx, i8* noundef %4, i8* noundef %5) #7
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 298, i8* noundef getelementptr inbounds ([117 x i8], [117 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %call4 = call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef %6, i64 noundef 8192) #7
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  call void @SSL_CTX_set_cookie_generate_cb(%struct.ssl_ctx_st* noundef %7, i32 (%struct.ssl_st*, i8*, i32*)* noundef nonnull @generate_cookie_cb) #7
  %8 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  call void @SSL_CTX_set_cookie_verify_cb(%struct.ssl_ctx_st* noundef %8, i32 (%struct.ssl_st*, i8*, i32)* noundef nonnull @verify_cookie_cb) #7
  %9 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %10 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call5 = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %9, %struct.ssl_ctx_st* noundef %10, %struct.ssl_st** noundef nonnull %serverssl, %struct.ssl_st** noundef nonnull %clientssl, %struct.bio_st* noundef null, %struct.bio_st* noundef null) #7
  %cmp6 = icmp ne i32 %call5, 0
  %conv7 = zext i1 %cmp6 to i32
  %call8 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv7) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %12 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call10 = call i32 @create_ssl_connection(%struct.ssl_st* noundef %11, %struct.ssl_st* noundef %12, i32 noundef 0) #7
  %cmp11 = icmp ne i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %call13 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv12) #7
  %tobool14.not = icmp ne i32 %call13, 0
  %spec.select = zext i1 %tobool14.not to i32
  br label %end

end:                                              ; preds = %lor.lhs.false, %if.end
  %testresult.0 = phi i32 [ 0, %if.end ], [ %spec.select, %lor.lhs.false ]
  %13 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %13) #7
  %14 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %14) #7
  %15 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %15) #7
  %16 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %16) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %testresult.0, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_dtls_duplicate_records() #1 {
entry:
  %sctx = alloca %struct.ssl_ctx_st*, align 8
  %cctx = alloca %struct.ssl_ctx_st*, align 8
  %serverssl = alloca %struct.ssl_st*, align 8
  %clientssl = alloca %struct.ssl_st*, align 8
  %0 = bitcast %struct.ssl_ctx_st** %sctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %1 = bitcast %struct.ssl_ctx_st** %cctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %2 = bitcast %struct.ssl_st** %serverssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  store %struct.ssl_st* null, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %3 = bitcast %struct.ssl_st** %clientssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  store %struct.ssl_st* null, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call = tail call %struct.ssl_method_st* @DTLS_server_method() #7
  %call1 = tail call %struct.ssl_method_st* @DTLS_client_method() #7
  %4 = load i8*, i8** @cert, align 8, !tbaa !3
  %5 = load i8*, i8** @privkey, align 8, !tbaa !3
  %call2 = call i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef null, %struct.ssl_method_st* noundef %call, %struct.ssl_method_st* noundef %call1, i32 noundef 65279, i32 noundef 0, %struct.ssl_ctx_st** noundef nonnull %sctx, %struct.ssl_ctx_st** noundef nonnull %cctx, i8* noundef %4, i8* noundef %5) #7
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([117 x i8], [117 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call4 = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %6, %struct.ssl_ctx_st* noundef %7, %struct.ssl_st** noundef nonnull %serverssl, %struct.ssl_st** noundef nonnull %clientssl, %struct.bio_st* noundef null, %struct.bio_st* noundef null) #7
  %cmp5 = icmp ne i32 %call4, 0
  %conv6 = zext i1 %cmp5 to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv6) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %end, label %if.end10

if.end10:                                         ; preds = %if.end
  %8 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  call void @DTLS_set_timer_cb(%struct.ssl_st* noundef %8, i32 (%struct.ssl_st*, i32)* noundef nonnull @timer_cb) #7
  %9 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  call void @DTLS_set_timer_cb(%struct.ssl_st* noundef %9, i32 (%struct.ssl_st*, i32)* noundef nonnull @timer_cb) #7
  %10 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call11 = call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %10) #7
  %call12 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call11, i32 noundef 131072, i64 noundef 1, i8* noundef null) #7
  %11 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call13 = call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %11) #7
  %call14 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call13, i32 noundef 131072, i64 noundef 1, i8* noundef null) #7
  %12 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %13 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call15 = call i32 @create_ssl_connection(%struct.ssl_st* noundef %12, %struct.ssl_st* noundef %13, i32 noundef 0) #7
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv17) #7
  %tobool19.not = icmp ne i32 %call18, 0
  %spec.select = zext i1 %tobool19.not to i32
  br label %end

end:                                              ; preds = %if.end10, %if.end
  %testresult.0 = phi i32 [ 0, %if.end ], [ %spec.select, %if.end10 ]
  %14 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %14) #7
  %15 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %15) #7
  %16 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %16) #7
  %17 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %testresult.0, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_just_finished() #1 {
entry:
  %sctx = alloca %struct.ssl_ctx_st*, align 8
  %buf = alloca [45 x i8], align 16
  %0 = bitcast %struct.ssl_ctx_st** %sctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %1 = getelementptr inbounds [45 x i8], [45 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 45, i8* nonnull %1) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(45) %1, i8* noundef nonnull align 16 dereferenceable(45) getelementptr inbounds (<{ [25 x i8], [20 x i8] }>, <{ [25 x i8], [20 x i8] }>* @__const.test_just_finished.buf, i64 0, i32 0, i64 0), i64 45, i1 false)
  %call = tail call %struct.ssl_method_st* @DTLS_server_method() #7
  %2 = load i8*, i8** @cert, align 8, !tbaa !3
  %3 = load i8*, i8** @privkey, align 8, !tbaa !3
  %call1 = call i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef null, %struct.ssl_method_st* noundef %call, %struct.ssl_method_st* noundef null, i32 noundef 0, i32 noundef 0, %struct.ssl_ctx_st** noundef nonnull %sctx, %struct.ssl_ctx_st** noundef null, i8* noundef %2, i8* noundef %3) #7
  %cmp = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp to i32
  %call2 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 405, i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %call3 = call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %4) #7
  %call4 = call %struct.bio_method_st* @BIO_s_mem() #7
  %call5 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call4) #7
  %call6 = call %struct.bio_method_st* @BIO_s_mem() #7
  %call7 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call6) #7
  %5 = bitcast %struct.ssl_st* %call3 to i8*
  %call8 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 412, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8* noundef %5) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = bitcast %struct.bio_st* %call5 to i8*
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 412, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8* noundef %6) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %end, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %7 = bitcast %struct.bio_st* %call7 to i8*
  %call13 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 412, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i8* noundef %7) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %end, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false12
  call void @SSL_set0_rbio(%struct.ssl_st* noundef %call3, %struct.bio_st* noundef %call5) #7
  call void @SSL_set0_wbio(%struct.ssl_st* noundef %call3, %struct.bio_st* noundef %call7) #7
  call void @DTLS_set_timer_cb(%struct.ssl_st* noundef %call3, i32 (%struct.ssl_st*, i32)* noundef nonnull @timer_cb) #7
  %call17 = call i32 @BIO_write(%struct.bio_st* noundef %call5, i8* noundef nonnull %1, i32 noundef 45) #7
  %call18 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 421, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 noundef %call17, i32 noundef 45) #7
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %end, label %if.end21

if.end21:                                         ; preds = %if.end16
  %call22 = call i32 @SSL_accept(%struct.ssl_st* noundef %call3) #7
  %call23 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 425, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i32 noundef %call22, i32 noundef 0) #7
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %end, label %if.end26

if.end26:                                         ; preds = %if.end21
  %call27 = call i32 @SSL_get_error(%struct.ssl_st* noundef %call3, i32 noundef %call22) #7
  %call28 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 429, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i32 noundef %call27, i32 noundef 1) #7
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %end, label %if.end31

if.end31:                                         ; preds = %if.end26
  %call32 = call i64 @ERR_get_error() #7
  %call33 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call32) #9, !range !10
  %call34 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 432, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i64 0, i64 0), i32 noundef %call33, i32 noundef 244) #7
  %tobool35.not = icmp ne i32 %call34, 0
  %spec.select = zext i1 %tobool35.not to i32
  br label %end

end:                                              ; preds = %if.end31, %if.end26, %if.end21, %if.end16, %if.end, %lor.lhs.false, %lor.lhs.false12
  %testresult.0 = phi i32 [ 0, %if.end26 ], [ 0, %if.end21 ], [ 0, %if.end16 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %spec.select, %if.end31 ]
  %rbio.0 = phi %struct.bio_st* [ null, %if.end26 ], [ null, %if.end21 ], [ null, %if.end16 ], [ %call5, %lor.lhs.false12 ], [ %call5, %lor.lhs.false ], [ %call5, %if.end ], [ null, %if.end31 ]
  %wbio.0 = phi %struct.bio_st* [ null, %if.end26 ], [ null, %if.end21 ], [ null, %if.end16 ], [ %call7, %lor.lhs.false12 ], [ %call7, %lor.lhs.false ], [ %call7, %if.end ], [ null, %if.end31 ]
  %call38 = call i32 @BIO_free(%struct.bio_st* noundef %rbio.0) #7
  %call39 = call i32 @BIO_free(%struct.bio_st* noundef %wbio.0) #7
  call void @SSL_free(%struct.ssl_st* noundef %call3) #7
  %8 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %testresult.0, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 45, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  tail call void @bio_f_tls_dump_filter_free() #7
  tail call void @bio_s_mempacket_test_free() #7
  ret void
}

declare dso_local void @bio_f_tls_dump_filter_free() local_unnamed_addr #2

declare dso_local void @bio_s_mempacket_test_free() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef, %struct.ssl_method_st* noundef, %struct.ssl_method_st* noundef, i32 noundef, i32 noundef, %struct.ssl_ctx_st** noundef, %struct.ssl_ctx_st** noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_method_st* @DTLS_server_method() local_unnamed_addr #2

declare dso_local %struct.ssl_method_st* @DTLS_client_method() local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @bio_f_tls_dump_filter() local_unnamed_addr #2

declare dso_local i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.ssl_st** noundef, %struct.ssl_st** noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @DTLS_set_timer_cb(%struct.ssl_st* noundef, i32 (%struct.ssl_st*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @timer_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %timer_us) #4 {
entry:
  %0 = load i32, i32* @timer_cb_count, align 4, !tbaa !7
  %inc = add i32 %0, 1
  store i32 %inc, i32* @timer_cb_count, align 4, !tbaa !7
  %cmp = icmp eq i32 %timer_us, 0
  %mul = shl i32 %timer_us, 1
  %retval.0 = select i1 %cmp, i32 50000, i32 %mul
  ret i32 %retval.0
}

declare dso_local %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @mempacket_test_inject(%struct.bio_st* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @create_bare_ssl_connection(%struct.ssl_st* noundef, %struct.ssl_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @create_ssl_connection(%struct.ssl_st* noundef, %struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_session_st* @SSL_get1_session(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_shutdown(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_set_session(%struct.ssl_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_session_reused(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_set_cookie_generate_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i32*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @generate_cookie_cb(%struct.ssl_st* nocapture noundef readnone %ssl, i8* noundef %cookie, i32* nocapture noundef writeonly %cookie_len) #1 {
entry:
  %call = tail call i8* @memcpy(i8* noundef %cookie, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @dummy_cookie, i64 0, i64 0), i64 noundef 8) #7
  store i32 8, i32* %cookie_len, align 4, !tbaa !7
  ret i32 1
}

declare dso_local void @SSL_CTX_set_cookie_verify_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @verify_cookie_cb(%struct.ssl_st* nocapture noundef readnone %ssl, i8* noundef %cookie, i32 noundef %cookie_len) #1 {
entry:
  %conv = zext i32 %cookie_len to i64
  %call = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i8* noundef %cookie, i64 noundef %conv, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @dummy_cookie, i64 0, i64 0), i64 noundef 8) #7
  ret i32 %call
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

declare dso_local void @SSL_set0_rbio(%struct.ssl_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set0_wbio(%struct.ssl_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_accept(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_get_error(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

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

declare dso_local i64 @ERR_get_error() local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }

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
!9 = !{!5, !5, i64 0}
!10 = !{i32 0, i32 -2147483648}
