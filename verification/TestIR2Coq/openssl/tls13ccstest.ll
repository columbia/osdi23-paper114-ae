; ModuleID = 'test/tls13ccstest.c'
source_filename = "test/tls13ccstest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.ssl_method_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ssl_session_st = type opaque
%struct.PACKET = type { i8*, i64 }

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
@.str.14 = private unnamed_addr constant [20 x i8] c"test/tls13ccstest.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"cert = test_get_argument(0)\00", align 1
@cert = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [31 x i8] c"privkey = test_get_argument(1)\00", align 1
@privkey = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"test_tls13ccs\00", align 1
@method_watchccs = internal unnamed_addr global %struct.bio_method_st* null, align 8
@__const.test_tls13ccs.msg = private unnamed_addr constant [11 x i8] c"Dummy data\00", align 1
@ccsbeforesh = internal unnamed_addr global i1 false, align 4
@ccsaftersh = internal unnamed_addr global i1 false, align 4
@sccsseen = internal unnamed_addr global i1 false, align 4
@shseen = internal unnamed_addr global i32 0, align 4
@chseen = internal unnamed_addr global i32 0, align 4
@badsessid = internal unnamed_addr global i1 false, align 4
@badvers = internal unnamed_addr global i1 false, align 4
@badccs = internal unnamed_addr global i1 false, align 4
@cappdataseen = internal unnamed_addr global i1 false, align 4
@sappdataseen = internal unnamed_addr global i1 false, align 4
@chsessidlen = internal unnamed_addr global i64 0, align 8
@.str.19 = private unnamed_addr constant [114 x i8] c"create_ssl_ctx_pair(NULL, TLS_server_method(), TLS_client_method(), TLS1_VERSION, 0, &sctx, &cctx, cert, privkey)\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"SSL_CTX_set_max_early_data(sctx, SSL3_RT_MAX_PLAIN_LENGTH)\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Invalid test value\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"create_ssl_objects(sctx, cctx, &sssl, &cssl, NULL, NULL)\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"create_ssl_connection(sssl, cssl, SSL_ERROR_NONE)\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"sess\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"SSL_CTX_set1_groups_list(sctx, \22P-256\22)\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"P-256\00", align 1
@s_to_c_fbio = internal unnamed_addr global %struct.bio_st* null, align 8
@c_to_s_fbio = internal unnamed_addr global %struct.bio_st* null, align 8
@.str.27 = private unnamed_addr constant [12 x i8] c"s_to_c_fbio\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"c_to_s_fbio\00", align 1
@.str.29 = private unnamed_addr constant [71 x i8] c"create_ssl_objects(sctx, cctx, &sssl, &cssl, s_to_c_fbio, c_to_s_fbio)\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"SSL_set_session(cssl, sess)\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"SSL_write_early_data(cssl, msg, strlen(msg), &written)\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"SSL_read_early_data(sssl, buf, sizeof(buf), &readbytes)\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"SSL_READ_EARLY_DATA_SUCCESS\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"SSL_connect(cssl)\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"SSL_READ_EARLY_DATA_FINISH\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"badccs\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"badvers\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"badsessid\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"sccsseen\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"ccsaftersh\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"ccsbeforesh\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"chsessidlen\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"Watch CCS filter\00", align 1
@chsessid = internal global [32 x i8] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 496, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #11
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #11
  store i8* %call1, i8** @cert, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 500, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #11
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #11
  store i8* %call4, i8** @privkey, align 8, !tbaa !3
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 501, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 (i32)* noundef nonnull @test_tls13ccs, i32 noundef 12, i32 noundef 1) #11
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
define internal i32 @test_tls13ccs(i32 noundef %tst) #1 {
entry:
  %sctx = alloca %struct.ssl_ctx_st*, align 8
  %cctx = alloca %struct.ssl_ctx_st*, align 8
  %sssl = alloca %struct.ssl_st*, align 8
  %cssl = alloca %struct.ssl_st*, align 8
  %msg = alloca [11 x i8], align 1
  %buf = alloca [80 x i8], align 16
  %written = alloca i64, align 8
  %readbytes = alloca i64, align 8
  %0 = bitcast %struct.ssl_ctx_st** %sctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %1 = bitcast %struct.ssl_ctx_st** %cctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %2 = bitcast %struct.ssl_st** %sssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  store %struct.ssl_st* null, %struct.ssl_st** %sssl, align 8, !tbaa !3
  %3 = bitcast %struct.ssl_st** %cssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  store %struct.ssl_st* null, %struct.ssl_st** %cssl, align 8, !tbaa !3
  %4 = getelementptr inbounds [11 x i8], [11 x i8]* %msg, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %4) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %4, i8* noundef nonnull align 1 dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_tls13ccs.msg, i64 0, i64 0), i64 11, i1 false)
  %5 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #12
  %6 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12
  %7 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12
  store i1 false, i1* @ccsbeforesh, align 4
  store i1 false, i1* @ccsaftersh, align 4
  store i1 false, i1* @sccsseen, align 4
  store i32 0, i32* @shseen, align 4, !tbaa !7
  store i32 0, i32* @chseen, align 4, !tbaa !7
  store i1 false, i1* @badsessid, align 4
  store i1 false, i1* @badvers, align 4
  store i1 false, i1* @badccs, align 4
  store i1 false, i1* @cappdataseen, align 4
  store i1 false, i1* @sappdataseen, align 4
  store i64 0, i64* @chsessidlen, align 8, !tbaa !9
  %call = tail call %struct.ssl_method_st* @TLS_server_method() #11
  %call1 = tail call %struct.ssl_method_st* @TLS_client_method() #11
  %8 = load i8*, i8** @cert, align 8, !tbaa !3
  %9 = load i8*, i8** @privkey, align 8, !tbaa !3
  %call2 = call i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef null, %struct.ssl_method_st* noundef %call, %struct.ssl_method_st* noundef %call1, i32 noundef 769, i32 noundef 0, %struct.ssl_ctx_st** noundef nonnull %sctx, %struct.ssl_ctx_st** noundef nonnull %cctx, i8* noundef %8, i8* noundef %9) #11
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %call4 = call i32 @SSL_CTX_set_max_early_data(%struct.ssl_ctx_st* noundef %10, i32 noundef 16384) #11
  %cmp5 = icmp ne i32 %call4, 0
  %conv6 = zext i1 %cmp5 to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv6) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  switch i32 %tst, label %sw.default [
    i32 0, label %sw.epilog
    i32 3, label %sw.epilog
    i32 6, label %sw.epilog
    i32 9, label %sw.epilog
    i32 1, label %sw.epilog.sink.split
    i32 4, label %sw.epilog.sink.split
    i32 7, label %sw.epilog.sink.split
    i32 10, label %sw.epilog.sink.split
    i32 2, label %sw.bb11
    i32 5, label %sw.bb11
    i32 8, label %sw.bb11
    i32 11, label %sw.bb11
  ]

sw.bb11:                                          ; preds = %if.end, %if.end, %if.end, %if.end
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %if.end
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #11
  br label %err

sw.epilog.sink.split:                             ; preds = %if.end, %if.end, %if.end, %if.end, %sw.bb11
  %.sink.in = phi %struct.ssl_ctx_st** [ %sctx, %sw.bb11 ], [ %cctx, %if.end ], [ %cctx, %if.end ], [ %cctx, %if.end ], [ %cctx, %if.end ]
  %.sink = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %.sink.in, align 8, !tbaa !3
  %call12 = call i64 @SSL_CTX_clear_options(%struct.ssl_ctx_st* noundef %.sink, i64 noundef 1048576) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end, %if.end, %if.end, %if.end
  %cmp13 = icmp ugt i32 %tst, 5
  br i1 %cmp13, label %if.then15, label %if.end36

if.then15:                                        ; preds = %sw.epilog
  %11 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %12 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call16 = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %11, %struct.ssl_ctx_st* noundef %12, %struct.ssl_st** noundef nonnull %sssl, %struct.ssl_st** noundef nonnull %cssl, %struct.bio_st* noundef null, %struct.bio_st* noundef null) #11
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv18) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.then15
  %13 = load %struct.ssl_st*, %struct.ssl_st** %sssl, align 8, !tbaa !3
  %14 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  %call22 = call i32 @create_ssl_connection(%struct.ssl_st* noundef %13, %struct.ssl_st* noundef %14, i32 noundef 0) #11
  %cmp23 = icmp ne i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  %call25 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 304, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv24) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %if.end28

if.end28:                                         ; preds = %lor.lhs.false21
  %15 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  %call29 = call %struct.ssl_session_st* @SSL_get1_session(%struct.ssl_st* noundef %15) #11
  %16 = bitcast %struct.ssl_session_st* %call29 to i8*
  %call30 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 307, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* noundef %16) #11
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end33

if.end33:                                         ; preds = %if.end28
  %17 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  %call34 = call i32 @SSL_shutdown(%struct.ssl_st* noundef %17) #11
  %18 = load %struct.ssl_st*, %struct.ssl_st** %sssl, align 8, !tbaa !3
  %call35 = call i32 @SSL_shutdown(%struct.ssl_st* noundef %18) #11
  %19 = load %struct.ssl_st*, %struct.ssl_st** %sssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %19) #11
  %20 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %20) #11
  store %struct.ssl_st* null, %struct.ssl_st** %cssl, align 8, !tbaa !3
  store %struct.ssl_st* null, %struct.ssl_st** %sssl, align 8, !tbaa !3
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %sw.epilog
  %sess.0 = phi %struct.ssl_session_st* [ %call29, %if.end33 ], [ null, %sw.epilog ]
  %21 = add nsw i32 %tst, -3
  %22 = icmp ult i32 %21, 3
  %cmp42 = icmp ugt i32 %tst, 8
  %or.cond385 = or i1 %cmp42, %22
  br i1 %or.cond385, label %if.then44, label %if.end52

if.then44:                                        ; preds = %if.end36
  %23 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %call45 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %23, i32 noundef 92, i64 noundef 0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)) #11
  %cmp46 = icmp ne i64 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  %call48 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv47) #11
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %if.end52

if.end52:                                         ; preds = %if.then44, %if.end36
  %call53 = call fastcc %struct.bio_method_st* @bio_f_watchccs_filter() #13
  %call54 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call53) #11
  store %struct.bio_st* %call54, %struct.bio_st** @s_to_c_fbio, align 8, !tbaa !3
  %call55 = call fastcc %struct.bio_method_st* @bio_f_watchccs_filter() #13
  %call56 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call55) #11
  store %struct.bio_st* %call56, %struct.bio_st** @c_to_s_fbio, align 8, !tbaa !3
  %24 = load i8*, i8** bitcast (%struct.bio_st** @s_to_c_fbio to i8**), align 8, !tbaa !3
  %call57 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 331, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %24) #11
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then62, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end52
  %25 = load i8*, i8** bitcast (%struct.bio_st** @c_to_s_fbio to i8**), align 8, !tbaa !3
  %call60 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* noundef %25) #11
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %if.end65

if.then62:                                        ; preds = %lor.lhs.false59, %if.end52
  %26 = load %struct.bio_st*, %struct.bio_st** @s_to_c_fbio, align 8, !tbaa !3
  %call63 = call i32 @BIO_free(%struct.bio_st* noundef %26) #11
  %27 = load %struct.bio_st*, %struct.bio_st** @c_to_s_fbio, align 8, !tbaa !3
  %call64 = call i32 @BIO_free(%struct.bio_st* noundef %27) #11
  br label %err

if.end65:                                         ; preds = %lor.lhs.false59
  %28 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %29 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %30 = load %struct.bio_st*, %struct.bio_st** @s_to_c_fbio, align 8, !tbaa !3
  %31 = load %struct.bio_st*, %struct.bio_st** @c_to_s_fbio, align 8, !tbaa !3
  %call66 = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %28, %struct.ssl_ctx_st* noundef %29, %struct.ssl_st** noundef nonnull %sssl, %struct.ssl_st** noundef nonnull %cssl, %struct.bio_st* noundef %30, %struct.bio_st* noundef %31) #11
  %cmp67 = icmp ne i32 %call66, 0
  %conv68 = zext i1 %cmp67 to i32
  %call69 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv68) #11
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %if.end72

if.end72:                                         ; preds = %if.end65
  br i1 %cmp13, label %if.then75, label %if.end119

if.then75:                                        ; preds = %if.end72
  %32 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  %call76 = call i32 @SSL_set_session(%struct.ssl_st* noundef %32, %struct.ssl_session_st* noundef %sess.0) #11
  %cmp77 = icmp ne i32 %call76, 0
  %conv78 = zext i1 %cmp77 to i32
  %call79 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 345, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv78) #11
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %err, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %if.then75
  %33 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  %call83 = call i64 @strlen(i8* noundef nonnull %4) #14
  %call84 = call i32 @SSL_write_early_data(%struct.ssl_st* noundef %33, i8* noundef nonnull %4, i64 noundef %call83, i64* noundef nonnull %written) #11
  %cmp85 = icmp ne i32 %call84, 0
  %conv86 = zext i1 %cmp85 to i32
  %call87 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv86) #11
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %lor.lhs.false81
  %cmp90 = icmp ult i32 %tst, 9
  br i1 %cmp90, label %land.lhs.true92, label %if.else

land.lhs.true92:                                  ; preds = %lor.lhs.false89
  %34 = load %struct.ssl_st*, %struct.ssl_st** %sssl, align 8, !tbaa !3
  %call94 = call i32 @SSL_read_early_data(%struct.ssl_st* noundef %34, i8* noundef nonnull %5, i64 noundef 80, i64* noundef nonnull %readbytes) #11
  %call95 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 351, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call94, i32 noundef 1) #11
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %err, label %if.then101

if.then101:                                       ; preds = %land.lhs.true92
  %35 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  %call102 = call i32 @SSL_connect(%struct.ssl_st* noundef %35) #11
  %call103 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i32 noundef %call102, i32 noundef 0) #11
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %err, label %if.end112

if.else:                                          ; preds = %lor.lhs.false89
  %36 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  %call107 = call i32 @SSL_connect(%struct.ssl_st* noundef %36) #11
  %call108 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i32 noundef %call107, i32 noundef 0) #11
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %if.end112

if.end112:                                        ; preds = %if.else, %if.then101
  %37 = load %struct.ssl_st*, %struct.ssl_st** %sssl, align 8, !tbaa !3
  %call114 = call i32 @SSL_read_early_data(%struct.ssl_st* noundef %37, i8* noundef nonnull %5, i64 noundef 80, i64* noundef nonnull %readbytes) #11
  %call115 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call114, i32 noundef 2) #11
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %err, label %if.end119

if.end119:                                        ; preds = %if.end112, %if.end72
  %38 = load %struct.ssl_st*, %struct.ssl_st** %sssl, align 8, !tbaa !3
  %39 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  %call120 = call i32 @create_ssl_connection(%struct.ssl_st* noundef %38, %struct.ssl_st* noundef %39, i32 noundef 0) #11
  %cmp121 = icmp ne i32 %call120, 0
  %conv122 = zext i1 %cmp121 to i32
  %call123 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv122) #11
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %err, label %if.end126

if.end126:                                        ; preds = %if.end119
  %.b435 = load i1, i1* @badccs, align 4
  %conv128 = zext i1 %.b435 to i32
  %call129 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv128) #11
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %err, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %if.end126
  %.b434 = load i1, i1* @badvers, align 4
  %conv133 = zext i1 %.b434 to i32
  %call134 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv133) #11
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %err, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %lor.lhs.false131
  %.b433 = load i1, i1* @badsessid, align 4
  %conv138 = zext i1 %.b433 to i32
  %call139 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv138) #11
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %err, label %if.end142

if.end142:                                        ; preds = %lor.lhs.false136
  switch i32 %tst, label %sw.default383 [
    i32 0, label %sw.bb143
    i32 1, label %sw.bb163
    i32 2, label %sw.bb183
    i32 3, label %sw.bb203
    i32 4, label %sw.bb223
    i32 5, label %sw.bb243
    i32 6, label %sw.bb263
    i32 7, label %sw.bb283
    i32 8, label %sw.bb303
    i32 9, label %sw.bb323
    i32 10, label %sw.bb343
    i32 11, label %sw.bb363
  ]

sw.bb143:                                         ; preds = %if.end142
  %.b432 = load i1, i1* @sccsseen, align 4
  %conv145 = zext i1 %.b432 to i32
  %call146 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 380, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv145) #11
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %err, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %sw.bb143
  %.b420 = load i1, i1* @ccsaftersh, align 4
  %conv150 = zext i1 %.b420 to i32
  %call151 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 381, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv150) #11
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %err, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %lor.lhs.false148
  %.b408 = load i1, i1* @ccsbeforesh, align 4
  %conv155 = zext i1 %.b408 to i32
  %call156 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv155) #11
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %err, label %lor.lhs.false158

lor.lhs.false158:                                 ; preds = %lor.lhs.false153
  %40 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %call159 = call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 noundef %40, i64 noundef 0) #11
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %err, label %sw.epilog384

sw.bb163:                                         ; preds = %if.end142
  %.b431 = load i1, i1* @sccsseen, align 4
  %conv165 = zext i1 %.b431 to i32
  %call166 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 388, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv165) #11
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %err, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %sw.bb163
  %.b419 = load i1, i1* @ccsaftersh, align 4
  %conv170 = zext i1 %.b419 to i32
  %call171 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 389, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv170) #11
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %err, label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %lor.lhs.false168
  %.b407 = load i1, i1* @ccsbeforesh, align 4
  %conv175 = zext i1 %.b407 to i32
  %call176 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 390, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv175) #11
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %err, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %lor.lhs.false173
  %41 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %call179 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 391, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 noundef %41, i64 noundef 0) #11
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %err, label %sw.epilog384

sw.bb183:                                         ; preds = %if.end142
  %.b430 = load i1, i1* @sccsseen, align 4
  %conv185 = zext i1 %.b430 to i32
  %call186 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv185) #11
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %err, label %lor.lhs.false188

lor.lhs.false188:                                 ; preds = %sw.bb183
  %.b418 = load i1, i1* @ccsaftersh, align 4
  %conv190 = zext i1 %.b418 to i32
  %call191 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 397, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv190) #11
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %err, label %lor.lhs.false193

lor.lhs.false193:                                 ; preds = %lor.lhs.false188
  %.b406 = load i1, i1* @ccsbeforesh, align 4
  %conv195 = zext i1 %.b406 to i32
  %call196 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv195) #11
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %err, label %lor.lhs.false198

lor.lhs.false198:                                 ; preds = %lor.lhs.false193
  %42 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %call199 = call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 399, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 noundef %42, i64 noundef 0) #11
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %err, label %sw.epilog384

sw.bb203:                                         ; preds = %if.end142
  %.b429 = load i1, i1* @sccsseen, align 4
  %conv205 = zext i1 %.b429 to i32
  %call206 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 404, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv205) #11
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %err, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %sw.bb203
  %.b417 = load i1, i1* @ccsaftersh, align 4
  %conv210 = zext i1 %.b417 to i32
  %call211 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 405, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv210) #11
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %err, label %lor.lhs.false213

lor.lhs.false213:                                 ; preds = %lor.lhs.false208
  %.b405 = load i1, i1* @ccsbeforesh, align 4
  %conv215 = zext i1 %.b405 to i32
  %call216 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv215) #11
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %err, label %lor.lhs.false218

lor.lhs.false218:                                 ; preds = %lor.lhs.false213
  %43 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %call219 = call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 407, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 noundef %43, i64 noundef 0) #11
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %err, label %sw.epilog384

sw.bb223:                                         ; preds = %if.end142
  %.b428 = load i1, i1* @sccsseen, align 4
  %conv225 = zext i1 %.b428 to i32
  %call226 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 412, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv225) #11
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %err, label %lor.lhs.false228

lor.lhs.false228:                                 ; preds = %sw.bb223
  %.b416 = load i1, i1* @ccsaftersh, align 4
  %conv230 = zext i1 %.b416 to i32
  %call231 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv230) #11
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %err, label %lor.lhs.false233

lor.lhs.false233:                                 ; preds = %lor.lhs.false228
  %.b404 = load i1, i1* @ccsbeforesh, align 4
  %conv235 = zext i1 %.b404 to i32
  %call236 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 414, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv235) #11
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %err, label %lor.lhs.false238

lor.lhs.false238:                                 ; preds = %lor.lhs.false233
  %44 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %call239 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 noundef %44, i64 noundef 0) #11
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %err, label %sw.epilog384

sw.bb243:                                         ; preds = %if.end142
  %.b427 = load i1, i1* @sccsseen, align 4
  %conv245 = zext i1 %.b427 to i32
  %call246 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 420, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv245) #11
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %err, label %lor.lhs.false248

lor.lhs.false248:                                 ; preds = %sw.bb243
  %.b415 = load i1, i1* @ccsaftersh, align 4
  %conv250 = zext i1 %.b415 to i32
  %call251 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 421, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv250) #11
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %err, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %lor.lhs.false248
  %.b403 = load i1, i1* @ccsbeforesh, align 4
  %conv255 = zext i1 %.b403 to i32
  %call256 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 422, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv255) #11
  %tobool257.not = icmp eq i32 %call256, 0
  br i1 %tobool257.not, label %err, label %lor.lhs.false258

lor.lhs.false258:                                 ; preds = %lor.lhs.false253
  %45 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %call259 = call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 423, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 noundef %45, i64 noundef 0) #11
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %err, label %sw.epilog384

sw.bb263:                                         ; preds = %if.end142
  %.b426 = load i1, i1* @sccsseen, align 4
  %conv265 = zext i1 %.b426 to i32
  %call266 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv265) #11
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %err, label %lor.lhs.false268

lor.lhs.false268:                                 ; preds = %sw.bb263
  %.b414 = load i1, i1* @ccsaftersh, align 4
  %conv270 = zext i1 %.b414 to i32
  %call271 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 429, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv270) #11
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %err, label %lor.lhs.false273

lor.lhs.false273:                                 ; preds = %lor.lhs.false268
  %.b402 = load i1, i1* @ccsbeforesh, align 4
  %conv275 = zext i1 %.b402 to i32
  %call276 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 430, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv275) #11
  %tobool277.not = icmp eq i32 %call276, 0
  br i1 %tobool277.not, label %err, label %lor.lhs.false278

lor.lhs.false278:                                 ; preds = %lor.lhs.false273
  %46 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %call279 = call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 431, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 noundef %46, i64 noundef 0) #11
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %err, label %sw.epilog384

sw.bb283:                                         ; preds = %if.end142
  %.b425 = load i1, i1* @sccsseen, align 4
  %conv285 = zext i1 %.b425 to i32
  %call286 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 436, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv285) #11
  %tobool287.not = icmp eq i32 %call286, 0
  br i1 %tobool287.not, label %err, label %lor.lhs.false288

lor.lhs.false288:                                 ; preds = %sw.bb283
  %.b413 = load i1, i1* @ccsaftersh, align 4
  %conv290 = zext i1 %.b413 to i32
  %call291 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 437, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv290) #11
  %tobool292.not = icmp eq i32 %call291, 0
  br i1 %tobool292.not, label %err, label %lor.lhs.false293

lor.lhs.false293:                                 ; preds = %lor.lhs.false288
  %.b401 = load i1, i1* @ccsbeforesh, align 4
  %conv295 = zext i1 %.b401 to i32
  %call296 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv295) #11
  %tobool297.not = icmp eq i32 %call296, 0
  br i1 %tobool297.not, label %err, label %lor.lhs.false298

lor.lhs.false298:                                 ; preds = %lor.lhs.false293
  %47 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %call299 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 439, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 noundef %47, i64 noundef 0) #11
  %tobool300.not = icmp eq i32 %call299, 0
  br i1 %tobool300.not, label %err, label %sw.epilog384

sw.bb303:                                         ; preds = %if.end142
  %.b424 = load i1, i1* @sccsseen, align 4
  %conv305 = zext i1 %.b424 to i32
  %call306 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 444, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv305) #11
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %err, label %lor.lhs.false308

lor.lhs.false308:                                 ; preds = %sw.bb303
  %.b412 = load i1, i1* @ccsaftersh, align 4
  %conv310 = zext i1 %.b412 to i32
  %call311 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 445, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv310) #11
  %tobool312.not = icmp eq i32 %call311, 0
  br i1 %tobool312.not, label %err, label %lor.lhs.false313

lor.lhs.false313:                                 ; preds = %lor.lhs.false308
  %.b400 = load i1, i1* @ccsbeforesh, align 4
  %conv315 = zext i1 %.b400 to i32
  %call316 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 446, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv315) #11
  %tobool317.not = icmp eq i32 %call316, 0
  br i1 %tobool317.not, label %err, label %lor.lhs.false318

lor.lhs.false318:                                 ; preds = %lor.lhs.false313
  %48 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %call319 = call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 447, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 noundef %48, i64 noundef 0) #11
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %err, label %sw.epilog384

sw.bb323:                                         ; preds = %if.end142
  %.b423 = load i1, i1* @sccsseen, align 4
  %conv325 = zext i1 %.b423 to i32
  %call326 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 452, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv325) #11
  %tobool327.not = icmp eq i32 %call326, 0
  br i1 %tobool327.not, label %err, label %lor.lhs.false328

lor.lhs.false328:                                 ; preds = %sw.bb323
  %.b411 = load i1, i1* @ccsaftersh, align 4
  %conv330 = zext i1 %.b411 to i32
  %call331 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 453, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv330) #11
  %tobool332.not = icmp eq i32 %call331, 0
  br i1 %tobool332.not, label %err, label %lor.lhs.false333

lor.lhs.false333:                                 ; preds = %lor.lhs.false328
  %.b399 = load i1, i1* @ccsbeforesh, align 4
  %conv335 = zext i1 %.b399 to i32
  %call336 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv335) #11
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %err, label %lor.lhs.false338

lor.lhs.false338:                                 ; preds = %lor.lhs.false333
  %49 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %call339 = call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 455, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 noundef %49, i64 noundef 0) #11
  %tobool340.not = icmp eq i32 %call339, 0
  br i1 %tobool340.not, label %err, label %sw.epilog384

sw.bb343:                                         ; preds = %if.end142
  %.b422 = load i1, i1* @sccsseen, align 4
  %conv345 = zext i1 %.b422 to i32
  %call346 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 460, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv345) #11
  %tobool347.not = icmp eq i32 %call346, 0
  br i1 %tobool347.not, label %err, label %lor.lhs.false348

lor.lhs.false348:                                 ; preds = %sw.bb343
  %.b410 = load i1, i1* @ccsaftersh, align 4
  %conv350 = zext i1 %.b410 to i32
  %call351 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 461, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv350) #11
  %tobool352.not = icmp eq i32 %call351, 0
  br i1 %tobool352.not, label %err, label %lor.lhs.false353

lor.lhs.false353:                                 ; preds = %lor.lhs.false348
  %.b398 = load i1, i1* @ccsbeforesh, align 4
  %conv355 = zext i1 %.b398 to i32
  %call356 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 462, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv355) #11
  %tobool357.not = icmp eq i32 %call356, 0
  br i1 %tobool357.not, label %err, label %lor.lhs.false358

lor.lhs.false358:                                 ; preds = %lor.lhs.false353
  %50 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %call359 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 463, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 noundef %50, i64 noundef 0) #11
  %tobool360.not = icmp eq i32 %call359, 0
  br i1 %tobool360.not, label %err, label %sw.epilog384

sw.bb363:                                         ; preds = %if.end142
  %.b421 = load i1, i1* @sccsseen, align 4
  %conv365 = zext i1 %.b421 to i32
  %call366 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 468, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv365) #11
  %tobool367.not = icmp eq i32 %call366, 0
  br i1 %tobool367.not, label %err, label %lor.lhs.false368

lor.lhs.false368:                                 ; preds = %sw.bb363
  %.b409 = load i1, i1* @ccsaftersh, align 4
  %conv370 = zext i1 %.b409 to i32
  %call371 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 469, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv370) #11
  %tobool372.not = icmp eq i32 %call371, 0
  br i1 %tobool372.not, label %err, label %lor.lhs.false373

lor.lhs.false373:                                 ; preds = %lor.lhs.false368
  %.b = load i1, i1* @ccsbeforesh, align 4
  %conv375 = zext i1 %.b to i32
  %call376 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 470, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv375) #11
  %tobool377.not = icmp eq i32 %call376, 0
  br i1 %tobool377.not, label %err, label %lor.lhs.false378

lor.lhs.false378:                                 ; preds = %lor.lhs.false373
  %51 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %call379 = call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 471, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 noundef %51, i64 noundef 0) #11
  %tobool380.not = icmp eq i32 %call379, 0
  br i1 %tobool380.not, label %err, label %sw.epilog384

sw.default383:                                    ; preds = %if.end142
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 476, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #11
  br label %err

sw.epilog384:                                     ; preds = %lor.lhs.false378, %lor.lhs.false358, %lor.lhs.false338, %lor.lhs.false318, %lor.lhs.false298, %lor.lhs.false278, %lor.lhs.false258, %lor.lhs.false238, %lor.lhs.false218, %lor.lhs.false198, %lor.lhs.false178, %lor.lhs.false158
  br label %err

err:                                              ; preds = %sw.bb363, %lor.lhs.false368, %lor.lhs.false373, %lor.lhs.false378, %sw.bb343, %lor.lhs.false348, %lor.lhs.false353, %lor.lhs.false358, %sw.bb323, %lor.lhs.false328, %lor.lhs.false333, %lor.lhs.false338, %sw.bb303, %lor.lhs.false308, %lor.lhs.false313, %lor.lhs.false318, %sw.bb283, %lor.lhs.false288, %lor.lhs.false293, %lor.lhs.false298, %sw.bb263, %lor.lhs.false268, %lor.lhs.false273, %lor.lhs.false278, %sw.bb243, %lor.lhs.false248, %lor.lhs.false253, %lor.lhs.false258, %sw.bb223, %lor.lhs.false228, %lor.lhs.false233, %lor.lhs.false238, %sw.bb203, %lor.lhs.false208, %lor.lhs.false213, %lor.lhs.false218, %sw.bb183, %lor.lhs.false188, %lor.lhs.false193, %lor.lhs.false198, %sw.bb163, %lor.lhs.false168, %lor.lhs.false173, %lor.lhs.false178, %sw.bb143, %lor.lhs.false148, %lor.lhs.false153, %lor.lhs.false158, %if.end126, %lor.lhs.false131, %lor.lhs.false136, %if.end119, %if.end112, %if.else, %if.then101, %if.then75, %lor.lhs.false81, %land.lhs.true92, %if.end65, %if.then44, %if.end28, %if.then15, %lor.lhs.false21, %entry, %lor.lhs.false, %sw.epilog384, %sw.default383, %if.then62, %sw.default
  %ret.0 = phi i32 [ 0, %sw.default ], [ 0, %sw.default383 ], [ 1, %sw.epilog384 ], [ 0, %lor.lhs.false378 ], [ 0, %lor.lhs.false373 ], [ 0, %lor.lhs.false368 ], [ 0, %sw.bb363 ], [ 0, %lor.lhs.false358 ], [ 0, %lor.lhs.false353 ], [ 0, %lor.lhs.false348 ], [ 0, %sw.bb343 ], [ 0, %lor.lhs.false338 ], [ 0, %lor.lhs.false333 ], [ 0, %lor.lhs.false328 ], [ 0, %sw.bb323 ], [ 0, %lor.lhs.false318 ], [ 0, %lor.lhs.false313 ], [ 0, %lor.lhs.false308 ], [ 0, %sw.bb303 ], [ 0, %lor.lhs.false298 ], [ 0, %lor.lhs.false293 ], [ 0, %lor.lhs.false288 ], [ 0, %sw.bb283 ], [ 0, %lor.lhs.false278 ], [ 0, %lor.lhs.false273 ], [ 0, %lor.lhs.false268 ], [ 0, %sw.bb263 ], [ 0, %lor.lhs.false258 ], [ 0, %lor.lhs.false253 ], [ 0, %lor.lhs.false248 ], [ 0, %sw.bb243 ], [ 0, %lor.lhs.false238 ], [ 0, %lor.lhs.false233 ], [ 0, %lor.lhs.false228 ], [ 0, %sw.bb223 ], [ 0, %lor.lhs.false218 ], [ 0, %lor.lhs.false213 ], [ 0, %lor.lhs.false208 ], [ 0, %sw.bb203 ], [ 0, %lor.lhs.false198 ], [ 0, %lor.lhs.false193 ], [ 0, %lor.lhs.false188 ], [ 0, %sw.bb183 ], [ 0, %lor.lhs.false178 ], [ 0, %lor.lhs.false173 ], [ 0, %lor.lhs.false168 ], [ 0, %sw.bb163 ], [ 0, %lor.lhs.false158 ], [ 0, %lor.lhs.false153 ], [ 0, %lor.lhs.false148 ], [ 0, %sw.bb143 ], [ 0, %lor.lhs.false136 ], [ 0, %lor.lhs.false131 ], [ 0, %if.end126 ], [ 0, %if.end119 ], [ 0, %if.end112 ], [ 0, %if.then101 ], [ 0, %if.else ], [ 0, %land.lhs.true92 ], [ 0, %lor.lhs.false81 ], [ 0, %if.then75 ], [ 0, %if.end65 ], [ 0, %if.then62 ], [ 0, %if.then44 ], [ 0, %if.end28 ], [ 0, %lor.lhs.false21 ], [ 0, %if.then15 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  %sess.1 = phi %struct.ssl_session_st* [ null, %sw.default ], [ %sess.0, %sw.default383 ], [ %sess.0, %sw.epilog384 ], [ %sess.0, %lor.lhs.false378 ], [ %sess.0, %lor.lhs.false373 ], [ %sess.0, %lor.lhs.false368 ], [ %sess.0, %sw.bb363 ], [ %sess.0, %lor.lhs.false358 ], [ %sess.0, %lor.lhs.false353 ], [ %sess.0, %lor.lhs.false348 ], [ %sess.0, %sw.bb343 ], [ %sess.0, %lor.lhs.false338 ], [ %sess.0, %lor.lhs.false333 ], [ %sess.0, %lor.lhs.false328 ], [ %sess.0, %sw.bb323 ], [ %sess.0, %lor.lhs.false318 ], [ %sess.0, %lor.lhs.false313 ], [ %sess.0, %lor.lhs.false308 ], [ %sess.0, %sw.bb303 ], [ %sess.0, %lor.lhs.false298 ], [ %sess.0, %lor.lhs.false293 ], [ %sess.0, %lor.lhs.false288 ], [ %sess.0, %sw.bb283 ], [ %sess.0, %lor.lhs.false278 ], [ %sess.0, %lor.lhs.false273 ], [ %sess.0, %lor.lhs.false268 ], [ %sess.0, %sw.bb263 ], [ %sess.0, %lor.lhs.false258 ], [ %sess.0, %lor.lhs.false253 ], [ %sess.0, %lor.lhs.false248 ], [ %sess.0, %sw.bb243 ], [ %sess.0, %lor.lhs.false238 ], [ %sess.0, %lor.lhs.false233 ], [ %sess.0, %lor.lhs.false228 ], [ %sess.0, %sw.bb223 ], [ %sess.0, %lor.lhs.false218 ], [ %sess.0, %lor.lhs.false213 ], [ %sess.0, %lor.lhs.false208 ], [ %sess.0, %sw.bb203 ], [ %sess.0, %lor.lhs.false198 ], [ %sess.0, %lor.lhs.false193 ], [ %sess.0, %lor.lhs.false188 ], [ %sess.0, %sw.bb183 ], [ %sess.0, %lor.lhs.false178 ], [ %sess.0, %lor.lhs.false173 ], [ %sess.0, %lor.lhs.false168 ], [ %sess.0, %sw.bb163 ], [ %sess.0, %lor.lhs.false158 ], [ %sess.0, %lor.lhs.false153 ], [ %sess.0, %lor.lhs.false148 ], [ %sess.0, %sw.bb143 ], [ %sess.0, %lor.lhs.false136 ], [ %sess.0, %lor.lhs.false131 ], [ %sess.0, %if.end126 ], [ %sess.0, %if.end119 ], [ %sess.0, %if.end112 ], [ %sess.0, %if.then101 ], [ %sess.0, %if.else ], [ %sess.0, %land.lhs.true92 ], [ %sess.0, %lor.lhs.false81 ], [ %sess.0, %if.then75 ], [ %sess.0, %if.end65 ], [ %sess.0, %if.then62 ], [ %sess.0, %if.then44 ], [ %call29, %if.end28 ], [ null, %lor.lhs.false21 ], [ null, %if.then15 ], [ null, %lor.lhs.false ], [ null, %entry ]
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %sess.1) #11
  %52 = load %struct.ssl_st*, %struct.ssl_st** %sssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %52) #11
  %53 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %53) #11
  %54 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %54) #11
  %55 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %55) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** @method_watchccs, align 8, !tbaa !3
  tail call void @BIO_meth_free(%struct.bio_method_st* noundef %0) #11
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

declare dso_local i32 @SSL_CTX_set_max_early_data(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_CTX_clear_options(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.ssl_st** noundef, %struct.ssl_st** noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @create_ssl_connection(%struct.ssl_st* noundef, %struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_session_st* @SSL_get1_session(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_shutdown(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_method_st* @bio_f_watchccs_filter() unnamed_addr #1 {
entry:
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** @method_watchccs, align 8, !tbaa !3
  %cmp = icmp eq %struct.bio_method_st* %0, null
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_meth_new(i32 noundef 640, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i64 0, i64 0)) #11
  store %struct.bio_method_st* %call, %struct.bio_method_st** @method_watchccs, align 8, !tbaa !3
  %cmp1 = icmp eq %struct.bio_method_st* %call, null
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @BIO_meth_set_write(%struct.bio_method_st* noundef nonnull %call, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @watchccs_write) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.bio_method_st*, %struct.bio_method_st** @method_watchccs, align 8, !tbaa !3
  %call4 = tail call i32 @BIO_meth_set_read(%struct.bio_method_st* noundef %1, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @watchccs_read) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.bio_method_st*, %struct.bio_method_st** @method_watchccs, align 8, !tbaa !3
  %call7 = tail call i32 @BIO_meth_set_puts(%struct.bio_method_st* noundef %2, i32 (%struct.bio_st*, i8*)* noundef nonnull @watchccs_puts) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.bio_method_st*, %struct.bio_method_st** @method_watchccs, align 8, !tbaa !3
  %call10 = tail call i32 @BIO_meth_set_gets(%struct.bio_method_st* noundef %3, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @watchccs_gets) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %return, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.bio_method_st*, %struct.bio_method_st** @method_watchccs, align 8, !tbaa !3
  %call13 = tail call i32 @BIO_meth_set_ctrl(%struct.bio_method_st* noundef %4, i64 (%struct.bio_st*, i32, i64, i8*)* noundef nonnull @watchccs_ctrl) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.bio_method_st*, %struct.bio_method_st** @method_watchccs, align 8, !tbaa !3
  %call16 = tail call i32 @BIO_meth_set_create(%struct.bio_method_st* noundef %5, i32 (%struct.bio_st*)* noundef nonnull @watchccs_new) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %return, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.bio_method_st*, %struct.bio_method_st** @method_watchccs, align 8, !tbaa !3
  %call19 = tail call i32 @BIO_meth_set_destroy(%struct.bio_method_st* noundef %6, i32 (%struct.bio_st*)* noundef nonnull @watchccs_free) #11
  %tobool20.not = icmp eq i32 %call19, 0
  %.pre = load %struct.bio_method_st*, %struct.bio_method_st** @method_watchccs, align 8
  %spec.select = select i1 %tobool20.not, %struct.bio_method_st* null, %struct.bio_method_st* %.pre
  br label %return

return:                                           ; preds = %lor.lhs.false18, %entry, %if.then, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false6, %lor.lhs.false9, %lor.lhs.false12, %lor.lhs.false15
  %retval.0 = phi %struct.bio_method_st* [ null, %lor.lhs.false15 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %if.then ], [ %0, %entry ], [ %spec.select, %lor.lhs.false18 ]
  ret %struct.bio_method_st* %retval.0
}

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_set_session(%struct.ssl_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_write_early_data(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_read_early_data(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_connect(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @test_size_t_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local %struct.bio_method_st* @BIO_meth_new(i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_meth_set_write(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @watchccs_write(%struct.bio_st* noundef %bio, i8* noundef %in, i32 noundef %inl) #1 {
entry:
  %pkt = alloca %struct.PACKET, align 8
  %msg = alloca %struct.PACKET, align 8
  %msgbody = alloca %struct.PACKET, align 8
  %sessionid = alloca %struct.PACKET, align 8
  %rectype = alloca i32, align 4
  %recvers = alloca i32, align 4
  %msgtype = alloca i32, align 4
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #11
  %0 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %1 = bitcast %struct.PACKET* %msg to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %msgbody to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %sessionid to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #12
  %4 = bitcast i32* %rectype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #12
  %5 = bitcast i32* %recvers to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #12
  %6 = bitcast i32* %msgtype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12
  %cmp = icmp slt i32 %inl, 1
  %cmp1 = icmp eq %struct.bio_st* %call, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %bio, i32 noundef 15) #11
  %conv182 = zext i32 %inl to i64
  call fastcc void @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef %in, i64 noundef %conv182) #13
  %call7183 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %tobool8.not184 = icmp eq i64 %call7183, 0
  br i1 %tobool8.not184, label %while.end, label %while.body

while.body:                                       ; preds = %if.end3, %if.end140
  %call9 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %rectype) #13
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %call11 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %recvers) #13
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %call14 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %msg) #13
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false13
  %7 = load i32, i32* %rectype, align 4, !tbaa !7
  switch i32 %7, label %if.end136 [
    i32 22, label %if.then20
    i32 20, label %if.then89
    i32 23, label %if.then128
  ]

if.then20:                                        ; preds = %if.end17
  %call21 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %msg, i32* noundef nonnull %msgtype) #13
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.then20
  %call24 = call fastcc i32 @PACKET_get_length_prefixed_3(%struct.PACKET* noundef nonnull %msg, %struct.PACKET* noundef nonnull %msgbody) #13
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false23
  %8 = load i32, i32* %msgtype, align 4, !tbaa !7
  switch i32 %8, label %if.end136 [
    i32 1, label %if.then30
    i32 2, label %if.then62
  ]

if.then30:                                        ; preds = %if.end27
  %9 = load i32, i32* @chseen, align 4, !tbaa !7
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @chseen, align 4, !tbaa !7
  %call31 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %msgbody) #13
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.then30
  %call34 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %msgbody, %struct.PACKET* noundef nonnull %sessionid) #13
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %if.end37

if.end37:                                         ; preds = %lor.lhs.false33
  %cmp38 = icmp eq i32 %9, 0
  %call41 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %sessionid) #13
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end37
  store i64 %call41, i64* @chsessidlen, align 8, !tbaa !9
  %call42 = call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef nonnull %sessionid, i64 noundef %call41) #13
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %if.end136

if.else:                                          ; preds = %if.end37
  %10 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %cmp47.not = icmp eq i64 %call41, %10
  br i1 %cmp47.not, label %lor.lhs.false49, label %if.end136.sink.split

lor.lhs.false49:                                  ; preds = %if.else
  %cmp50.not = icmp eq i64 %call41, 0
  br i1 %cmp50.not, label %if.end136, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false49
  %call52 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %sessionid) #13
  %call53 = tail call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @chsessid, i64 0, i64 0), i8* noundef %call52, i64 noundef %call41) #14
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %if.end136, label %if.end136.sink.split

if.then62:                                        ; preds = %if.end27
  %11 = load i32, i32* @shseen, align 4, !tbaa !7
  %inc63 = add nsw i32 %11, 1
  store i32 %inc63, i32* @shseen, align 4, !tbaa !7
  %call64 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %msgbody) #13
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %cleanup, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %if.then62
  %call67 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %msgbody, %struct.PACKET* noundef nonnull %sessionid) #13
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %cleanup, label %if.end70

if.end70:                                         ; preds = %lor.lhs.false66
  %call71 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %sessionid) #13
  %12 = load i64, i64* @chsessidlen, align 8, !tbaa !9
  %cmp72.not = icmp eq i64 %call71, %12
  br i1 %cmp72.not, label %lor.lhs.false74, label %if.end136.sink.split

lor.lhs.false74:                                  ; preds = %if.end70
  %cmp75.not = icmp eq i64 %call71, 0
  br i1 %cmp75.not, label %if.end136, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %lor.lhs.false74
  %call78 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %sessionid) #13
  %call79 = tail call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @chsessid, i64 0, i64 0), i8* noundef %call78, i64 noundef %call71) #14
  %cmp80.not = icmp eq i32 %call79, 0
  br i1 %cmp80.not, label %if.end136, label %if.end136.sink.split

if.then89:                                        ; preds = %if.end17
  %13 = load %struct.bio_st*, %struct.bio_st** @s_to_c_fbio, align 8, !tbaa !3
  %cmp90 = icmp eq %struct.bio_st* %13, %bio
  br i1 %cmp90, label %if.then92, label %if.else105

if.then92:                                        ; preds = %if.then89
  %.b181 = load i1, i1* @sappdataseen, align 4
  %14 = load i32, i32* @chseen, align 4
  %cmp95 = icmp ne i32 %14, 1
  %15 = load i32, i32* @shseen, align 4
  %cmp98 = icmp ne i32 %15, 1
  %not.or.cond = select i1 %.b181, i1 true, i1 %cmp95
  %or.cond158 = select i1 %not.or.cond, i1 true, i1 %cmp98
  %.b179 = load i1, i1* @sccsseen, align 4
  %or.cond159 = select i1 %or.cond158, i1 true, i1 %.b179
  %badccs.sccsseen = select i1 %or.cond159, i1* @badccs, i1* @sccsseen
  br label %if.end136.sink.split

if.else105:                                       ; preds = %if.then89
  %.b180 = load i1, i1* @cappdataseen, align 4
  br i1 %.b180, label %if.end136.sink.split, label %if.then107

if.then107:                                       ; preds = %if.else105
  %16 = load i32, i32* @shseen, align 4, !tbaa !7
  %cmp108 = icmp ne i32 %16, 1
  %.b178 = load i1, i1* @ccsaftersh, align 4
  %or.cond160 = select i1 %cmp108, i1 true, i1 %.b178
  br i1 %or.cond160, label %if.else113, label %if.end136.sink.split

if.else113:                                       ; preds = %if.then107
  %cmp114 = icmp ne i32 %16, 0
  %.b = load i1, i1* @ccsbeforesh, align 4
  %or.cond161 = select i1 %cmp114, i1 true, i1 %.b
  %badccs.ccsbeforesh = select i1 %or.cond161, i1* @badccs, i1* @ccsbeforesh
  br label %if.end136.sink.split

if.then128:                                       ; preds = %if.end17
  %17 = load %struct.bio_st*, %struct.bio_st** @s_to_c_fbio, align 8, !tbaa !3
  %cmp129 = icmp eq %struct.bio_st* %17, %bio
  %sappdataseen.cappdataseen = select i1 %cmp129, i1* @sappdataseen, i1* @cappdataseen
  br label %if.end136.sink.split

if.end136.sink.split:                             ; preds = %if.then128, %if.else105, %if.else113, %if.then107, %if.then92, %if.end70, %land.lhs.true77, %if.else, %land.lhs.true
  %badccs.sink = phi i1* [ @badsessid, %land.lhs.true ], [ @badsessid, %if.else ], [ @badsessid, %land.lhs.true77 ], [ @badsessid, %if.end70 ], [ %badccs.sccsseen, %if.then92 ], [ @ccsaftersh, %if.then107 ], [ %badccs.ccsbeforesh, %if.else113 ], [ @badccs, %if.else105 ], [ %sappdataseen.cappdataseen, %if.then128 ]
  store i1 true, i1* %badccs.sink, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.end136.sink.split, %if.end17, %if.end27, %lor.lhs.false49, %land.lhs.true, %if.then40, %lor.lhs.false74, %land.lhs.true77
  %expectedrecvers.0 = phi i32 [ 769, %if.then40 ], [ 771, %land.lhs.true ], [ 771, %lor.lhs.false49 ], [ 771, %land.lhs.true77 ], [ 771, %lor.lhs.false74 ], [ 771, %if.end27 ], [ 771, %if.end17 ], [ 771, %if.end136.sink.split ]
  %18 = load i32, i32* %recvers, align 4, !tbaa !7
  %cmp137.not = icmp eq i32 %18, %expectedrecvers.0
  br i1 %cmp137.not, label %if.end140, label %if.then139

if.then139:                                       ; preds = %if.end136
  store i1 true, i1* @badvers, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %if.end136
  %call7 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %tobool8.not = icmp eq i64 %call7, 0
  br i1 %tobool8.not, label %while.end, label %while.body, !llvm.loop !11

while.end:                                        ; preds = %if.end140, %if.end3
  %call141 = tail call i32 @BIO_write(%struct.bio_st* noundef nonnull %call, i8* noundef %in, i32 noundef %inl) #11
  %cmp142 = icmp slt i32 %call141, 1
  br i1 %cmp142, label %land.lhs.true144, label %cleanup

land.lhs.true144:                                 ; preds = %while.end
  %call145 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call, i32 noundef 2) #11
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %cleanup, label %if.then147

if.then147:                                       ; preds = %land.lhs.true144
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef 10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %lor.lhs.false66, %if.then40, %if.then30, %lor.lhs.false33, %if.then20, %lor.lhs.false23, %while.body, %lor.lhs.false, %lor.lhs.false13, %while.end, %land.lhs.true144, %if.then147, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call141, %if.then147 ], [ %call141, %land.lhs.true144 ], [ %call141, %while.end ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false ], [ 0, %while.body ], [ 0, %lor.lhs.false23 ], [ 0, %if.then20 ], [ 0, %lor.lhs.false33 ], [ 0, %if.then30 ], [ 0, %if.then40 ], [ 0, %lor.lhs.false66 ], [ 0, %if.then62 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare dso_local i32 @BIO_meth_set_read(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @watchccs_read(%struct.bio_st* noundef %bio, i8* noundef %out, i32 noundef %outl) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #11
  %cmp = icmp slt i32 %outl, 1
  %cmp1 = icmp eq %struct.bio_st* %call, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %bio, i32 noundef 15) #11
  %call4 = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %call, i8* noundef %out, i32 noundef %outl) #11
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end3
  %call6 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call, i32 noundef 1) #11
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef 9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %land.lhs.true, %if.then7, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call4, %if.then7 ], [ %call4, %land.lhs.true ], [ %call4, %if.end3 ]
  ret i32 %retval.0
}

declare dso_local i32 @BIO_meth_set_puts(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @watchccs_puts(%struct.bio_st* noundef %bio, i8* noundef %str) #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #14
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @watchccs_write(%struct.bio_st* noundef %bio, i8* noundef %str, i32 noundef %conv) #13
  ret i32 %call1
}

declare dso_local i32 @BIO_meth_set_gets(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @watchccs_gets(%struct.bio_st* nocapture noundef readnone %bio, i8* nocapture noundef readnone %buf, i32 noundef %size) #0 {
entry:
  ret i32 -1
}

declare dso_local i32 @BIO_meth_set_ctrl(%struct.bio_method_st* noundef, i64 (%struct.bio_st*, i32, i64, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @watchccs_ctrl(%struct.bio_st* noundef %bio, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #11
  %cmp = icmp eq %struct.bio_st* %call, null
  %cond = icmp eq i32 %cmd, 12
  %or.cond = or i1 %cond, %cmp
  br i1 %or.cond, label %cleanup, label %sw.default

sw.default:                                       ; preds = %entry
  %call1 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %call1, %sw.default ]
  ret i64 %retval.0
}

declare dso_local i32 @BIO_meth_set_create(%struct.bio_method_st* noundef, i32 (%struct.bio_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @watchccs_new(%struct.bio_st* noundef %bio) #1 {
entry:
  tail call void @BIO_set_init(%struct.bio_st* noundef %bio, i32 noundef 1) #11
  ret i32 1
}

declare dso_local i32 @BIO_meth_set_destroy(%struct.bio_method_st* noundef, i32 (%struct.bio_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @watchccs_free(%struct.bio_st* noundef %bio) #1 {
entry:
  tail call void @BIO_set_init(%struct.bio_st* noundef %bio, i32 noundef 0) #11
  ret i32 1
}

declare dso_local %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #6 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !13
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #7 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !15
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #9 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !16
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !7
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !16
  %5 = load i8*, i8** %data, align 8, !tbaa !3
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !13
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_3(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #9 {
entry:
  %length = alloca i64, align 8
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !16
  %call = call fastcc i32 @PACKET_get_net_3(%struct.PACKET* noundef nonnull %tmp, i64* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %length, align 8, !tbaa !9
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %4) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !16
  %5 = load i8*, i8** %data, align 8, !tbaa !3
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !13
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %4, i64* %remaining, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_forward(%struct.PACKET* nocapture noundef %pkt) unnamed_addr #8 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 34
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 34) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #9 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !16
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !7
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !16
  %5 = load i8*, i8** %data, align 8, !tbaa !3
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !13
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_copy_bytes(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* noundef %pkt, i64 noundef %len) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_data(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #7 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !13
  ret i8* %0
}

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !13
  %1 = load i8, i8* %0, align 1, !tbaa !17
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #8 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !13
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !15
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !13
  %1 = load i8, i8* %0, align 1, !tbaa !17
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !7
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !17
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #8 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_bytes(%struct.PACKET* noundef %pkt, i8** noundef %data, i64 noundef %len) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #8 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !13
  store i8* %0, i8** %data, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_3(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_3(%struct.PACKET* noundef %pkt, i64* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 3) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_3(%struct.PACKET* nocapture noundef readonly %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 3
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !13
  %1 = load i8, i8* %0, align 1, !tbaa !17
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 16
  store i64 %shl, i64* %data, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !17
  %conv2 = zext i8 %2 to i64
  %shl3 = shl nuw nsw i64 %conv2, 8
  %or = or i64 %shl3, %shl
  store i64 %or, i64* %data, align 8, !tbaa !9
  %add.ptr5 = getelementptr inbounds i8, i8* %0, i64 2
  %3 = load i8, i8* %add.ptr5, align 1, !tbaa !17
  %conv6 = zext i8 %3 to i64
  %or7 = or i64 %or, %conv6
  store i64 %or7, i64* %data, align 8, !tbaa !9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i64 noundef %len) unnamed_addr #1 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !13
  %call1 = tail call i8* @memcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @chsessid, i64 0, i64 0), i8* noundef %0, i64 noundef %len) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #10

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @BIO_set_init(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !4, i64 0}
!14 = !{!"", !4, i64 0, !10, i64 8}
!15 = !{!14, !10, i64 8}
!16 = !{i64 0, i64 8, !3, i64 8, i64 8, !9}
!17 = !{!5, !5, i64 0}
