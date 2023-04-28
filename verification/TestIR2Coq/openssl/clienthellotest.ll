; ModuleID = 'test/clienthellotest.c'
source_filename = "test/clienthellotest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.PACKET = type { i8*, i64 }
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.bio_st = type opaque
%struct.ssl_session_st = type opaque
%struct.bio_method_st = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [33 x i8] c"Usage: %s [options] sessionfile\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [23 x i8] c"test/clienthellotest.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"sessionfile = test_get_argument(0)\00", align 1
@sessionfile = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"test_client_hello\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Hello World!\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"SSL_CTX_set_max_proto_version(ctx, 0)\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"SSL_CTX_set_max_proto_version(ctx, TLS1_2_VERSION)\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"SSL_CTX_set_cipher_list(ctx, \22\22)\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [82 x i8] c"SSL_CTX_set_alpn_protos(ctx, (unsigned char *)alpn_prots, sizeof(alpn_prots) - 1)\00", align 1
@alpn_prots = internal constant [161 x i8] c"O1234567890123456789012345678901234567890123456789012345678901234567890123456789O1234567890123456789012345678901234567890123456789012345678901234567890123456789\00", align 16
@.str.25 = private unnamed_addr constant [43 x i8] c"SSL_CTX_set_cipher_list(ctx, \22AES128-SHA\22)\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"AES128-SHA\00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"SSL_CTX_set_ciphersuites(ctx, \22TLS_AES_128_GCM_SHA256\22)\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"TLS_AES_128_GCM_SHA256\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"con\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"sessbio\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Unable to open session.pem\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"sess\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Unable to load SSL_SESSION\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"SSL_SESSION_set_time(sess, (long)time(NULL))\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"SSL_set_session(con, sess)\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"rbio\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"wbio\00", align 1
@.str.39 = private unnamed_addr constant [62 x i8] c"SSL_set_session_ticket_ext(con, dummytick, strlen(dummytick))\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"SSL_connect(con)\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"len = BIO_get_mem_data(wbio, (char **)&data)\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"PACKET_buf_init(&pkt, data, len)\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"PACKET_forward(&pkt, SSL3_HM_HEADER_LENGTH)\00", align 1
@.str.45 = private unnamed_addr constant [60 x i8] c"PACKET_forward(&pkt, CLIENT_VERSION_LEN + SSL3_RANDOM_SIZE)\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"PACKET_get_length_prefixed_1(&pkt, &pkt2)\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"PACKET_get_length_prefixed_2(&pkt, &pkt2)\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"PACKET_as_length_prefixed_2(&pkt, &pkt2)\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"PACKET_get_net_2(&pkt2, &type)\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"PACKET_get_length_prefixed_2(&pkt2, &pkt3)\00", align 1
@.str.51 = private unnamed_addr constant [50 x i8] c"PACKET_equal(&pkt3, dummytick, strlen(dummytick))\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"currtest == TEST_PADDING_NOT_NEEDED\00", align 1
@.str.53 = private unnamed_addr constant [69 x i8] c"currtest == TEST_ADD_PADDING || currtest == TEST_ADD_PADDING_AND_PSK\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"msglen == F5_WORKAROUND_MAX_MSG_LEN\00", align 1

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
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #11
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #11
  store i8* %call1, i8** @sessionfile, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #11
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 (i32)* noundef nonnull @test_client_hello, i32 noundef 4, i32 noundef 1) #11
  br label %return

return:                                           ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #2

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #2

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_client_hello(i32 noundef %currtest) #1 {
entry:
  %data = alloca i8*, align 8
  %pkt = alloca %struct.PACKET, align 8
  %pkt2 = alloca %struct.PACKET, align 8
  %pkt3 = alloca %struct.PACKET, align 8
  %type = alloca i32, align 4
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %pkt2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #12
  %4 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #12
  store i32 0, i32* %type, align 4, !tbaa !7
  %call = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 16) #11
  %call1 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 16) #11
  %call2 = call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 16) #11
  %call3 = call %struct.ssl_method_st* @TLS_method() #11
  %call4 = call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call3) #11
  %5 = bitcast %struct.ssl_ctx_st* %call4 to i8*
  %call5 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef %5) #11
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  %call6 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call4, i32 noundef 124, i64 noundef 0, i8* noundef null) #11
  %cmp = icmp ne i64 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %end, label %if.end10

if.end10:                                         ; preds = %if.end
  switch i32 %currtest, label %end [
    i32 0, label %sw.bb
    i32 3, label %sw.bb18
    i32 1, label %sw.bb26
    i32 2, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end10
  %call11 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call4, i32 noundef 124, i64 noundef 771, i8* noundef null) #11
  %cmp12 = icmp ne i64 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv13) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %end, label %sw.epilog

sw.bb18:                                          ; preds = %if.end10
  %call19 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %call4, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0)) #11
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_false(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv21) #11
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %end, label %if.end25

if.end25:                                         ; preds = %sw.bb18
  call void @ERR_clear_error() #11
  br label %sw.bb26

sw.bb26:                                          ; preds = %if.end10, %if.end10, %if.end25
  %call27 = call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef %call4, i64 noundef 16) #11
  %call28 = call i64 @SSL_CTX_clear_options(%struct.ssl_ctx_st* noundef %call4, i64 noundef 1048576) #11
  %cmp29 = icmp eq i32 %currtest, 1
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %sw.bb26
  %call32 = call i32 @SSL_CTX_set_alpn_protos(%struct.ssl_ctx_st* noundef %call4, i8* noundef getelementptr inbounds ([161 x i8], [161 x i8]* @alpn_prots, i64 0, i64 0), i32 noundef 160) #11
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_false(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv34) #11
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %end, label %sw.epilog

if.else:                                          ; preds = %sw.bb26
  %call39 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %call4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0)) #11
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv41) #11
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call44 = call i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef %call4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0)) #11
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv46) #11
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %end, label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %lor.lhs.false, %sw.bb
  %call52 = call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %call4) #11
  %6 = bitcast %struct.ssl_st* %call52 to i8*
  %call53 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef %6) #11
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %end, label %if.end56

if.end56:                                         ; preds = %sw.epilog
  %cmp57 = icmp eq i32 %currtest, 3
  br i1 %cmp57, label %if.then59, label %if.end84

if.then59:                                        ; preds = %if.end56
  %7 = load i8*, i8** @sessionfile, align 8, !tbaa !3
  %call60 = call %struct.bio_st* @BIO_new_file(i8* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #11
  %8 = bitcast %struct.bio_st* %call60 to i8*
  %call61 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* noundef %8) #11
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.then59
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0)) #11
  br label %end

if.end64:                                         ; preds = %if.then59
  %call65 = call %struct.ssl_session_st* @PEM_read_bio_SSL_SESSION(%struct.bio_st* noundef %call60, %struct.ssl_session_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #11
  %9 = bitcast %struct.ssl_session_st* %call65 to i8*
  %call66 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* noundef %9) #11
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end64
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0)) #11
  br label %end

if.end69:                                         ; preds = %if.end64
  %call70 = call i64 @time(i64* noundef null) #11
  %call71 = call i64 @SSL_SESSION_set_time(%struct.ssl_session_st* noundef %call65, i64 noundef %call70) #11
  %cmp72 = icmp ne i64 %call71, 0
  %conv73 = zext i1 %cmp72 to i32
  %call74 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv73) #11
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %end, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %if.end69
  %call77 = call i32 @SSL_set_session(%struct.ssl_st* noundef %call52, %struct.ssl_session_st* noundef %call65) #11
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv79) #11
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %end, label %if.end84

if.end84:                                         ; preds = %lor.lhs.false76, %if.end56
  %sessbio.0 = phi %struct.bio_st* [ %call60, %lor.lhs.false76 ], [ null, %if.end56 ]
  %sess.0 = phi %struct.ssl_session_st* [ %call65, %lor.lhs.false76 ], [ null, %if.end56 ]
  %call85 = call %struct.bio_method_st* @BIO_s_mem() #11
  %call86 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call85) #11
  %call87 = call %struct.bio_method_st* @BIO_s_mem() #11
  %call88 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call87) #11
  %10 = bitcast %struct.bio_st* %call86 to i8*
  %call89 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* noundef %10) #11
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then94, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %if.end84
  %11 = bitcast %struct.bio_st* %call88 to i8*
  %call92 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8* noundef %11) #11
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then94, label %if.end97

if.then94:                                        ; preds = %lor.lhs.false91, %if.end84
  %call95 = call i32 @BIO_free(%struct.bio_st* noundef %call86) #11
  %call96 = call i32 @BIO_free(%struct.bio_st* noundef %call88) #11
  br label %end

if.end97:                                         ; preds = %lor.lhs.false91
  call void @SSL_set_bio(%struct.ssl_st* noundef %call52, %struct.bio_st* noundef %call86, %struct.bio_st* noundef %call88) #11
  call void @SSL_set_connect_state(%struct.ssl_st* noundef %call52) #11
  %cmp98 = icmp eq i32 %currtest, 0
  br i1 %cmp98, label %if.then100, label %if.end110

if.then100:                                       ; preds = %if.end97
  %call101 = call i64 @strlen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0)) #13
  %conv102 = trunc i64 %call101 to i32
  %call103 = call i32 @SSL_set_session_ticket_ext(%struct.ssl_st* noundef %call52, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv102) #11
  %cmp104 = icmp ne i32 %call103, 0
  %conv105 = zext i1 %cmp104 to i32
  %call106 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv105) #11
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %end, label %if.end110

if.end110:                                        ; preds = %if.then100, %if.end97
  %call111 = call i32 @SSL_connect(%struct.ssl_st* noundef %call52) #11
  %call112 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i32 noundef %call111, i32 noundef 0) #11
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %end, label %if.end115

if.end115:                                        ; preds = %if.end110
  %call116 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call88, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #11
  %call117 = call i32 @test_long_ge(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i64 noundef %call116, i64 noundef 0) #11
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %end, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %if.end115
  %12 = load i8*, i8** %data, align 8, !tbaa !3
  %call120 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef %12, i64 noundef %call116) #14
  %cmp121 = icmp ne i32 %call120, 0
  %conv122 = zext i1 %cmp121 to i32
  %call123 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv122) #11
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %end, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %lor.lhs.false119
  %call126 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 5) #14
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %end, label %if.end129

if.end129:                                        ; preds = %lor.lhs.false125
  %call130 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #14
  %call131 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 4) #14
  %cmp132 = icmp ne i32 %call131, 0
  %conv133 = zext i1 %cmp132 to i32
  %call134 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv133) #11
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %end, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %if.end129
  %call137 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 34) #14
  %cmp138 = icmp ne i32 %call137, 0
  %conv139 = zext i1 %cmp138 to i32
  %call140 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv139) #11
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %end, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %lor.lhs.false136
  %call143 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %pkt2) #14
  %cmp144 = icmp ne i32 %call143, 0
  %conv145 = zext i1 %cmp144 to i32
  %call146 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv145) #11
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %end, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %lor.lhs.false142
  %call149 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %pkt2) #14
  %cmp150 = icmp ne i32 %call149, 0
  %conv151 = zext i1 %cmp150 to i32
  %call152 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv151) #11
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %end, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %lor.lhs.false148
  %call155 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %pkt2) #14
  %cmp156 = icmp ne i32 %call155, 0
  %conv157 = zext i1 %cmp156 to i32
  %call158 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv157) #11
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %end, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %lor.lhs.false154
  %call161 = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %pkt2) #14
  %cmp162 = icmp ne i32 %call161, 0
  %conv163 = zext i1 %cmp162 to i32
  %call164 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv163) #11
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false160
  %call168282 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt2) #14
  %tobool169.not283 = icmp eq i64 %call168282, 0
  br i1 %tobool169.not283, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cmp202 = icmp eq i32 %currtest, 2
  %conv203 = zext i1 %cmp202 to i32
  %13 = and i32 %currtest, -3
  %14 = icmp eq i32 %13, 1
  %lor.ext = zext i1 %14 to i32
  %cmp219 = icmp eq i64 %call130, 512
  %conv220 = zext i1 %cmp219 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end226
  %testresult.0284 = phi i32 [ 0, %while.body.lr.ph ], [ %testresult.1, %if.end226 ]
  %call170 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt2, i32* noundef nonnull %type) #14
  %cmp171 = icmp ne i32 %call170, 0
  %conv172 = zext i1 %cmp171 to i32
  %call173 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv172) #11
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %end, label %lor.lhs.false175

lor.lhs.false175:                                 ; preds = %while.body
  %call176 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt2, %struct.PACKET* noundef nonnull %pkt3) #14
  %cmp177 = icmp ne i32 %call176, 0
  %conv178 = zext i1 %cmp177 to i32
  %call179 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv178) #11
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %end, label %if.end182

if.end182:                                        ; preds = %lor.lhs.false175
  %15 = load i32, i32* %type, align 4, !tbaa !7
  %cmp183 = icmp eq i32 %15, 35
  %or.cond = and i1 %cmp98, %cmp183
  br i1 %or.cond, label %if.then188, label %if.end198

if.then188:                                       ; preds = %if.end182
  %call189 = call i64 @strlen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0)) #13
  %call190 = call fastcc i32 @PACKET_equal(%struct.PACKET* noundef nonnull %pkt3, i64 noundef %call189) #14
  %cmp191 = icmp ne i32 %call190, 0
  %conv192 = zext i1 %cmp191 to i32
  %call193 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv192) #11
  %tobool194.not = icmp eq i32 %call193, 0
  %spec.select = select i1 %tobool194.not, i32 %testresult.0284, i32 1
  br label %end

if.end198:                                        ; preds = %if.end182
  %cmp199 = icmp eq i32 %15, 21
  br i1 %cmp199, label %if.then201, label %if.end226

if.then201:                                       ; preds = %if.end198
  %call206 = call i32 @test_false(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv203) #11
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %end, label %if.else209

if.else209:                                       ; preds = %if.then201
  %call216 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.53, i64 0, i64 0), i32 noundef %lor.ext) #11
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end226, label %if.then218

if.then218:                                       ; preds = %if.else209
  %call223 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv220) #11
  br label %if.end226

if.end226:                                        ; preds = %if.then218, %if.else209, %if.end198
  %testresult.1 = phi i32 [ %call223, %if.then218 ], [ %testresult.0284, %if.else209 ], [ %testresult.0284, %if.end198 ]
  %call168 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt2) #14
  %tobool169.not = icmp eq i64 %call168, 0
  br i1 %tobool169.not, label %while.end, label %while.body, !llvm.loop !9

while.end:                                        ; preds = %if.end226, %while.cond.preheader
  %testresult.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %testresult.1, %if.end226 ]
  %cmp227 = icmp eq i32 %currtest, 2
  %spec.select279 = select i1 %cmp227, i32 1, i32 %testresult.0.lcssa
  br label %end

end:                                              ; preds = %if.then201, %while.body, %lor.lhs.false175, %while.end, %if.then188, %if.end129, %lor.lhs.false136, %lor.lhs.false142, %lor.lhs.false148, %lor.lhs.false154, %lor.lhs.false160, %if.end115, %lor.lhs.false119, %lor.lhs.false125, %if.end110, %if.then100, %if.end69, %lor.lhs.false76, %sw.epilog, %if.end10, %if.else, %lor.lhs.false, %if.then31, %sw.bb18, %sw.bb, %if.end, %entry, %if.then94, %if.then68, %if.then63
  %testresult.2 = phi i32 [ 0, %if.end10 ], [ 0, %lor.lhs.false160 ], [ 0, %lor.lhs.false154 ], [ 0, %lor.lhs.false148 ], [ 0, %lor.lhs.false142 ], [ 0, %lor.lhs.false136 ], [ 0, %if.end129 ], [ 0, %lor.lhs.false125 ], [ 0, %lor.lhs.false119 ], [ 0, %if.end115 ], [ 0, %if.end110 ], [ 0, %if.then100 ], [ 0, %if.then94 ], [ 0, %lor.lhs.false76 ], [ 0, %if.end69 ], [ 0, %if.then68 ], [ 0, %if.then63 ], [ 0, %sw.epilog ], [ 0, %if.then31 ], [ 0, %lor.lhs.false ], [ 0, %if.else ], [ 0, %sw.bb18 ], [ 0, %sw.bb ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.then188 ], [ %spec.select279, %while.end ], [ %testresult.0284, %lor.lhs.false175 ], [ %testresult.0284, %while.body ], [ %testresult.0284, %if.then201 ]
  %con.0 = phi %struct.ssl_st* [ null, %if.end10 ], [ %call52, %lor.lhs.false160 ], [ %call52, %lor.lhs.false154 ], [ %call52, %lor.lhs.false148 ], [ %call52, %lor.lhs.false142 ], [ %call52, %lor.lhs.false136 ], [ %call52, %if.end129 ], [ %call52, %lor.lhs.false125 ], [ %call52, %lor.lhs.false119 ], [ %call52, %if.end115 ], [ %call52, %if.end110 ], [ %call52, %if.then100 ], [ %call52, %if.then94 ], [ %call52, %lor.lhs.false76 ], [ %call52, %if.end69 ], [ %call52, %if.then68 ], [ %call52, %if.then63 ], [ %call52, %sw.epilog ], [ null, %if.then31 ], [ null, %lor.lhs.false ], [ null, %if.else ], [ null, %sw.bb18 ], [ null, %sw.bb ], [ null, %if.end ], [ null, %entry ], [ %call52, %if.then188 ], [ %call52, %while.end ], [ %call52, %lor.lhs.false175 ], [ %call52, %while.body ], [ %call52, %if.then201 ]
  %sessbio.1 = phi %struct.bio_st* [ null, %if.end10 ], [ %sessbio.0, %lor.lhs.false160 ], [ %sessbio.0, %lor.lhs.false154 ], [ %sessbio.0, %lor.lhs.false148 ], [ %sessbio.0, %lor.lhs.false142 ], [ %sessbio.0, %lor.lhs.false136 ], [ %sessbio.0, %if.end129 ], [ %sessbio.0, %lor.lhs.false125 ], [ %sessbio.0, %lor.lhs.false119 ], [ %sessbio.0, %if.end115 ], [ %sessbio.0, %if.end110 ], [ %sessbio.0, %if.then100 ], [ %sessbio.0, %if.then94 ], [ %call60, %lor.lhs.false76 ], [ %call60, %if.end69 ], [ %call60, %if.then68 ], [ %call60, %if.then63 ], [ null, %sw.epilog ], [ null, %if.then31 ], [ null, %lor.lhs.false ], [ null, %if.else ], [ null, %sw.bb18 ], [ null, %sw.bb ], [ null, %if.end ], [ null, %entry ], [ %sessbio.0, %if.then188 ], [ %sessbio.0, %while.end ], [ %sessbio.0, %lor.lhs.false175 ], [ %sessbio.0, %while.body ], [ %sessbio.0, %if.then201 ]
  %sess.1 = phi %struct.ssl_session_st* [ null, %if.end10 ], [ %sess.0, %lor.lhs.false160 ], [ %sess.0, %lor.lhs.false154 ], [ %sess.0, %lor.lhs.false148 ], [ %sess.0, %lor.lhs.false142 ], [ %sess.0, %lor.lhs.false136 ], [ %sess.0, %if.end129 ], [ %sess.0, %lor.lhs.false125 ], [ %sess.0, %lor.lhs.false119 ], [ %sess.0, %if.end115 ], [ %sess.0, %if.end110 ], [ %sess.0, %if.then100 ], [ %sess.0, %if.then94 ], [ %call65, %lor.lhs.false76 ], [ %call65, %if.end69 ], [ %call65, %if.then68 ], [ null, %if.then63 ], [ null, %sw.epilog ], [ null, %if.then31 ], [ null, %lor.lhs.false ], [ null, %if.else ], [ null, %sw.bb18 ], [ null, %sw.bb ], [ null, %if.end ], [ null, %entry ], [ %sess.0, %if.then188 ], [ %sess.0, %while.end ], [ %sess.0, %lor.lhs.false175 ], [ %sess.0, %while.body ], [ %sess.0, %if.then201 ]
  call void @SSL_free(%struct.ssl_st* noundef %con.0) #11
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %call4) #11
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %sess.1) #11
  %call231 = call i32 @BIO_free(%struct.bio_st* noundef %sessbio.1) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %testresult.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_method_st* @TLS_method() local_unnamed_addr #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_clear_error() local_unnamed_addr #2

declare dso_local i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_CTX_clear_options(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_alpn_protos(%struct.ssl_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local %struct.ssl_session_st* @PEM_read_bio_SSL_SESSION(%struct.bio_st* noundef, %struct.ssl_session_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_SESSION_set_time(%struct.ssl_session_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) local_unnamed_addr #4

declare dso_local i32 @SSL_set_session(%struct.ssl_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_bio(%struct.ssl_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_connect_state(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_set_session_ticket_ext(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_connect(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @test_long_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #6 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !11
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #7 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #8 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !14
  ret i64 %0
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !15
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !7
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !15
  %5 = load i8*, i8** %data, align 8, !tbaa !3
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !11
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !15
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !7
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !15
  %5 = load i8*, i8** %data, align 8, !tbaa !3
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !11
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #9 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !15
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !7
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %tmp) #14
  %cmp.not = icmp eq i64 %call4, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !15
  %5 = load i8*, i8** %data, align 8, !tbaa !3
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !11
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_equal(%struct.PACKET* nocapture noundef readonly %pkt, i64 noundef %num) unnamed_addr #1 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp.not = icmp eq i64 %call, %num
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !11
  %call1 = tail call i32 @CRYPTO_memcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i64 noundef %num) #11
  %cmp2 = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #7 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !11
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !14
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #7 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_bytes(%struct.PACKET* noundef %pkt, i8** noundef %data, i64 noundef %len) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !11
  %1 = load i8, i8* %0, align 1, !tbaa !17
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #7 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !11
  store i8* %0, i8** %data, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !11
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

declare dso_local i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !4, i64 0}
!12 = !{!"", !4, i64 0, !13, i64 8}
!13 = !{!"long", !5, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{i64 0, i64 8, !3, i64 8, i64 8, !16}
!16 = !{!13, !13, i64 0}
!17 = !{!5, !5, i64 0}
