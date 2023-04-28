; ModuleID = 'test/ssl_test.c'
source_filename = "test/ssl_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, {}*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.SSL_TEST_CTX = type { i32, i32, i32, i32, i32, %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, %struct.stack_st_X509_NAME*, i32, i32, i32, %struct.stack_st_X509_NAME*, i32, i32, i32, i32, i8*, i8*, %struct.ossl_lib_ctx_st* }
%struct.SSL_TEST_EXTRA_CONF = type { %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF }
%struct.SSL_TEST_CLIENT_CONF = type { i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i32 }
%struct.SSL_TEST_SERVER_CONF = type { i32, i8*, i8*, i32, i32, i8*, i8*, i32, i8* }
%struct.stack_st_X509_NAME = type opaque
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.handshake_result = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.stack_st_X509_NAME*, i32, i32, i32, %struct.stack_st_X509_NAME*, i32, i8*, i8* }
%struct.stack_st = type opaque
%struct.X509_name_st = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [62 x i8] c"Usage: %s [options] conf_file module_name [module_conf_file]\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [16 x i8] c"test/ssl_test.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"conf = NCONF_new(NULL)\00", align 1
@conf = internal unnamed_addr global %struct.conf_st* null, align 8
@.str.17 = private unnamed_addr constant [45 x i8] c"NCONF_load(conf, test_get_argument(0), NULL)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"NCONF_get_number_e(conf, NULL, \22num_tests\22, &num_tests)\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"num_tests\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"usage: ssl_test %s\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"conf_file module_name [module_conf_file]\0A\00", align 1
@libctx = internal global %struct.ossl_lib_ctx_st* null, align 8
@defctxnull = internal global %struct.ossl_provider_st* null, align 8
@thisprov = internal global %struct.ossl_provider_st* null, align 8
@.str.23 = private unnamed_addr constant [15 x i8] c"test_handshake\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"test-%d\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"test_ctx\00", align 1
@.str.26 = private unnamed_addr constant [67 x i8] c"SSL_CTX_set_options(server_ctx, SSL_OP_ALLOW_CLIENT_RENEGOTIATION)\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"SSL_CTX_set_max_proto_version(server_ctx, 0)\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"server2_ctx = SSL_CTX_new_ex(libctx, NULL, DTLS_server_method())\00", align 1
@.str.29 = private unnamed_addr constant [68 x i8] c"SSL_CTX_set_options(server2_ctx, SSL_OP_ALLOW_CLIENT_RENEGOTIATION)\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"SSL_CTX_set_max_proto_version(client_ctx, 0)\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"SSL_CTX_set_max_proto_version(resume_server_ctx, 0)\00", align 1
@.str.32 = private unnamed_addr constant [74 x i8] c"SSL_CTX_set_options(resume_server_ctx, SSL_OP_ALLOW_CLIENT_RENEGOTIATION)\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"SSL_CTX_set_max_proto_version(resume_client_ctx, 0)\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"resume_server_ctx\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"resume_client_ctx\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"SSL_CTX_set_max_proto_version(server_ctx, maxversion)\00", align 1
@.str.37 = private unnamed_addr constant [64 x i8] c"server2_ctx = SSL_CTX_new_ex(libctx, NULL, TLS_server_method())\00", align 1
@.str.38 = private unnamed_addr constant [55 x i8] c"SSL_CTX_set_max_proto_version(server2_ctx, maxversion)\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"SSL_CTX_set_max_proto_version(client_ctx, maxversion)\00", align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"SSL_CTX_set_max_proto_version(resume_server_ctx, maxversion)\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"SSL_CTX_set_max_proto_version(resume_client_ctx, maxversion)\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"server_ctx\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"client_ctx\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"CONF_modules_load(conf, test_app, 0)\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"server2\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"resume-server\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"resume-client\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"result->result\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"test_ctx->expected_result\00", align 1
@.str.52 = private unnamed_addr constant [46 x i8] c"ExpectedResult mismatch: expected %s, got %s.\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"result->client_alert_sent\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"result->client_alert_received\00", align 1
@.str.55 = private unnamed_addr constant [45 x i8] c"Client sent alert %s but server received %s.\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"result->server_alert_sent\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"result->server_alert_received\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"Server sent alert %s but client received %s.\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"ClientAlert mismatch: expected %s, got %s.\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"ServerAlert mismatch: expected %s, got %s.\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"result->client_num_fatal_alerts_sent\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"result->server_num_fatal_alerts_sent\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"no alert\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"result->client_protocol\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"result->server_protocol\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"Client has protocol %s but server has %s.\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"test_ctx->expected_protocol\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"Protocol mismatch: expected %s, got %s.\0A\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"result->servername\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"test_ctx->expected_servername\00", align 1
@.str.72 = private unnamed_addr constant [49 x i8] c"Client ServerName mismatch, expected %s, got %s.\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"result->session_ticket\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"test_ctx->session_ticket_expected\00", align 1
@.str.75 = private unnamed_addr constant [60 x i8] c"Client SessionTicketExpected mismatch, expected %s, got %s.\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"result->compression\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"test_ctx->compression_expected\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"result->session_id\00", align 1
@.str.79 = private unnamed_addr constant [30 x i8] c"test_ctx->session_id_expected\00", align 1
@.str.80 = private unnamed_addr constant [57 x i8] c"Client SessionIdExpected mismatch, expected %s, got %s\0A.\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"result->client_npn_negotiated\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"result->server_npn_negotiated\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"test_ctx->expected_npn_protocol\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"result->cipher\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"test_ctx->expected_cipher\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"result->client_alpn_negotiated\00", align 1
@.str.87 = private unnamed_addr constant [31 x i8] c"result->server_alpn_negotiated\00", align 1
@.str.88 = private unnamed_addr constant [33 x i8] c"test_ctx->expected_alpn_protocol\00", align 1
@.str.89 = private unnamed_addr constant [39 x i8] c"result->result_session_ticket_app_data\00", align 1
@.str.90 = private unnamed_addr constant [43 x i8] c"test_ctx->expected_session_ticket_app_data\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"result->client_resumed\00", align 1
@.str.92 = private unnamed_addr constant [23 x i8] c"result->server_resumed\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"test_ctx->resumption_expected\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"Tmp key\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"%s type mismatch, %s vs %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"Server certificate\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"Server signing hash\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"Server signing\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"Server CA names\00", align 1
@.str.101 = private unnamed_addr constant [33 x i8] c"sk_X509_NAME_num(expected_names)\00", align 1
@.str.102 = private unnamed_addr constant [83 x i8] c"X509_NAME_cmp(sk_X509_NAME_value(names, i), sk_X509_NAME_value(expected_names, i))\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"%s: list mismatch\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"Expected Names:\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"Received Names:\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"    <empty>\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.107 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"Client certificate\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c"Client signing hash\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"Client signing\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"Client CA names\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %num_tests = alloca i64, align 8
  %0 = bitcast i64* %num_tests to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %call = tail call i32 @test_skip_common_options() #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 544, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef null) #6
  store %struct.conf_st* %call1, %struct.conf_st** @conf, align 8, !tbaa !3
  %1 = bitcast %struct.conf_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 548, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* noundef %1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  %call4 = tail call i8* @test_get_argument(i64 noundef 0) #6
  %call5 = tail call i32 @NCONF_load(%struct.conf_st* noundef %2, i8* noundef %call4, i64* noundef null) #6
  %call6 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 550, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then12, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %3 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  %call9 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef %3, i8* noundef null, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i64* noundef nonnull %num_tests) #6
  %call10 = call i32 @test_int_ne(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 552, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call9, i32 noundef 0) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false8, %lor.lhs.false, %if.end
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 553, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0)) #6
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false8
  %call14 = call i32 @test_arg_libctx(%struct.ossl_lib_ctx_st** noundef nonnull @libctx, %struct.ossl_provider_st** noundef nonnull @defctxnull, %struct.ossl_provider_st** noundef nonnull @thisprov, i32 noundef 1, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0)) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end13
  %4 = load i64, i64* %num_tests, align 8, !tbaa !7
  %conv = trunc i64 %4 to i32
  call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 (i32)* noundef nonnull @test_handshake, i32 noundef %conv, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end17, %if.then12, %if.then
  %retval.0 = phi i32 [ 1, %if.end17 ], [ 0, %if.then12 ], [ 0, %if.then ], [ 0, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @NCONF_load(%struct.conf_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @NCONF_get_number_e(%struct.conf_st* noundef, i8* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @test_arg_libctx(%struct.ossl_lib_ctx_st** noundef, %struct.ossl_provider_st** noundef, %struct.ossl_provider_st** noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_handshake(i32 noundef %idx) #1 {
entry:
  %test_app = alloca [100 x i8], align 16
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %test_app, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %0) #5
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 100, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32 noundef %idx) #6
  %1 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call2 = call %struct.SSL_TEST_CTX* @SSL_TEST_CTX_create(%struct.conf_st* noundef %1, i8* noundef nonnull %0, %struct.ossl_lib_ctx_st* noundef %2) #6
  %3 = bitcast %struct.SSL_TEST_CTX* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8* noundef %3) #6
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %call2, i64 0, i32 0
  %4 = load i32, i32* %method, align 8, !tbaa !9
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then4, label %if.end78

if.then4:                                         ; preds = %if.end
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call5 = call %struct.ssl_method_st* @DTLS_server_method() #6
  %call6 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %5, i8* noundef null, %struct.ssl_method_st* noundef %call5) #6
  %call7 = call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef %call6, i64 noundef 256) #6
  %cmp8 = icmp ne i64 %call7, 0
  %conv = zext i1 %cmp8 to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %call11 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call6, i32 noundef 124, i64 noundef 0, i8* noundef null) #6
  %cmp12 = icmp ne i64 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 414, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false
  %servername_callback = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %call2, i64 0, i32 5, i32 1, i32 0
  %6 = load i32, i32* %servername_callback, align 8, !tbaa !15
  %cmp18.not = icmp eq i32 %6, 0
  br i1 %cmp18.not, label %if.end33, label %if.then20

if.then20:                                        ; preds = %if.end17
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call21 = call %struct.ssl_method_st* @DTLS_server_method() #6
  %call22 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %7, i8* noundef null, %struct.ssl_method_st* noundef %call21) #6
  %8 = bitcast %struct.ssl_ctx_st* %call22 to i8*
  %call23 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 419, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i64 0, i64 0), i8* noundef %8) #6
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.then20
  %call26 = call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef %call22, i64 noundef 256) #6
  %cmp27 = icmp ne i64 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 421, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv28) #6
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end33

if.end33:                                         ; preds = %lor.lhs.false25, %if.end17
  %server2_ctx.0 = phi %struct.ssl_ctx_st* [ %call22, %lor.lhs.false25 ], [ null, %if.end17 ]
  %9 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call34 = call %struct.ssl_method_st* @DTLS_client_method() #6
  %call35 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %9, i8* noundef null, %struct.ssl_method_st* noundef %call34) #6
  %call36 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call35, i32 noundef 124, i64 noundef 0, i8* noundef null) #6
  %cmp37 = icmp ne i64 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 425, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv38) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %if.end42

if.end42:                                         ; preds = %if.end33
  %handshake_mode = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %call2, i64 0, i32 1
  %10 = load i32, i32* %handshake_mode, align 4, !tbaa !16
  %cmp43 = icmp eq i32 %10, 1
  br i1 %cmp43, label %if.then45, label %if.end78thread-pre-split

if.then45:                                        ; preds = %if.end42
  %11 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call46 = call %struct.ssl_method_st* @DTLS_server_method() #6
  %call47 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %11, i8* noundef null, %struct.ssl_method_st* noundef %call46) #6
  %call48 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call47, i32 noundef 124, i64 noundef 0, i8* noundef null) #6
  %cmp49 = icmp ne i64 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 430, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv50) #6
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %if.then45
  %call54 = call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef %call47, i64 noundef 256) #6
  %cmp55 = icmp ne i64 %call54, 0
  %conv56 = zext i1 %cmp55 to i32
  %call57 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 432, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv56) #6
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %if.end60

if.end60:                                         ; preds = %lor.lhs.false53
  %12 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call61 = call %struct.ssl_method_st* @DTLS_client_method() #6
  %call62 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %12, i8* noundef null, %struct.ssl_method_st* noundef %call61) #6
  %call63 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call62, i32 noundef 124, i64 noundef 0, i8* noundef null) #6
  %cmp64 = icmp ne i64 %call63, 0
  %conv65 = zext i1 %cmp64 to i32
  %call66 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 436, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv65) #6
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %if.end69

if.end69:                                         ; preds = %if.end60
  %13 = bitcast %struct.ssl_ctx_st* %call47 to i8*
  %call70 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8* noundef %13) #6
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.end69
  %14 = bitcast %struct.ssl_ctx_st* %call62 to i8*
  %call73 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 439, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i8* noundef %14) #6
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %if.end78thread-pre-split

if.end78thread-pre-split:                         ; preds = %lor.lhs.false72, %if.end42
  %resume_server_ctx.0.ph = phi %struct.ssl_ctx_st* [ null, %if.end42 ], [ %call47, %lor.lhs.false72 ]
  %resume_client_ctx.0.ph = phi %struct.ssl_ctx_st* [ null, %if.end42 ], [ %call62, %lor.lhs.false72 ]
  %.pr = load i32, i32* %method, align 8, !tbaa !9
  br label %if.end78

if.end78:                                         ; preds = %if.end78thread-pre-split, %if.end
  %15 = phi i32 [ %.pr, %if.end78thread-pre-split ], [ %4, %if.end ]
  %server_ctx.0 = phi %struct.ssl_ctx_st* [ %call6, %if.end78thread-pre-split ], [ null, %if.end ]
  %server2_ctx.1 = phi %struct.ssl_ctx_st* [ %server2_ctx.0, %if.end78thread-pre-split ], [ null, %if.end ]
  %client_ctx.0 = phi %struct.ssl_ctx_st* [ %call35, %if.end78thread-pre-split ], [ null, %if.end ]
  %resume_server_ctx.0 = phi %struct.ssl_ctx_st* [ %resume_server_ctx.0.ph, %if.end78thread-pre-split ], [ null, %if.end ]
  %resume_client_ctx.0 = phi %struct.ssl_ctx_st* [ %resume_client_ctx.0.ph, %if.end78thread-pre-split ], [ null, %if.end ]
  %cmp80 = icmp eq i32 %15, 0
  br i1 %cmp80, label %if.then82, label %if.end174

if.then82:                                        ; preds = %if.end78
  %16 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call83 = call %struct.ssl_method_st* @TLS_server_method() #6
  %call84 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %16, i8* noundef null, %struct.ssl_method_st* noundef %call83) #6
  %call86 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call84, i32 noundef 124, i64 noundef 0, i8* noundef null) #6
  %cmp87 = icmp ne i64 %call86, 0
  %conv88 = zext i1 %cmp87 to i32
  %call89 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 455, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv88) #6
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %if.then82
  %call92 = call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef %call84, i64 noundef 256) #6
  %cmp93 = icmp ne i64 %call92, 0
  %conv94 = zext i1 %cmp93 to i32
  %call95 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 457, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv94) #6
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %err, label %if.end98

if.end98:                                         ; preds = %lor.lhs.false91
  %servername_callback101 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %call2, i64 0, i32 5, i32 1, i32 0
  %17 = load i32, i32* %servername_callback101, align 8, !tbaa !15
  %cmp102.not = icmp eq i32 %17, 0
  br i1 %cmp102.not, label %if.end125, label %if.then104

if.then104:                                       ; preds = %if.end98
  %18 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call105 = call %struct.ssl_method_st* @TLS_server_method() #6
  %call106 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %18, i8* noundef null, %struct.ssl_method_st* noundef %call105) #6
  %19 = bitcast %struct.ssl_ctx_st* %call106 to i8*
  %call107 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 463, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.37, i64 0, i64 0), i8* noundef %19) #6
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %err, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %if.then104
  %call110 = call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef %call106, i64 noundef 256) #6
  %cmp111 = icmp ne i64 %call110, 0
  %conv112 = zext i1 %cmp111 to i32
  %call113 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 465, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv112) #6
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %err, label %if.end116

if.end116:                                        ; preds = %lor.lhs.false109
  %call118 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call106, i32 noundef 124, i64 noundef 0, i8* noundef null) #6
  %cmp119 = icmp ne i64 %call118, 0
  %conv120 = zext i1 %cmp119 to i32
  %call121 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 468, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv120) #6
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %err, label %if.end125

if.end125:                                        ; preds = %if.end116, %if.end98
  %server2_ctx.2 = phi %struct.ssl_ctx_st* [ %call106, %if.end116 ], [ %server2_ctx.1, %if.end98 ]
  %20 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call126 = call %struct.ssl_method_st* @TLS_client_method() #6
  %call127 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %20, i8* noundef null, %struct.ssl_method_st* noundef %call126) #6
  %call129 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call127, i32 noundef 124, i64 noundef 0, i8* noundef null) #6
  %cmp130 = icmp ne i64 %call129, 0
  %conv131 = zext i1 %cmp130 to i32
  %call132 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv131) #6
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %err, label %if.end135

if.end135:                                        ; preds = %if.end125
  %handshake_mode136 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %call2, i64 0, i32 1
  %21 = load i32, i32* %handshake_mode136, align 4, !tbaa !16
  %cmp137 = icmp eq i32 %21, 1
  br i1 %cmp137, label %if.then139, label %if.end174

if.then139:                                       ; preds = %if.end135
  %22 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call140 = call %struct.ssl_method_st* @TLS_server_method() #6
  %call141 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %22, i8* noundef null, %struct.ssl_method_st* noundef %call140) #6
  %call143 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call141, i32 noundef 124, i64 noundef 0, i8* noundef null) #6
  %cmp144 = icmp ne i64 %call143, 0
  %conv145 = zext i1 %cmp144 to i32
  %call146 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 479, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv145) #6
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %err, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %if.then139
  %call149 = call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef %call141, i64 noundef 256) #6
  %cmp150 = icmp ne i64 %call149, 0
  %conv151 = zext i1 %cmp150 to i32
  %call152 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 481, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv151) #6
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %err, label %if.end155

if.end155:                                        ; preds = %lor.lhs.false148
  %23 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call156 = call %struct.ssl_method_st* @TLS_client_method() #6
  %call157 = call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %23, i8* noundef null, %struct.ssl_method_st* noundef %call156) #6
  %call159 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call157, i32 noundef 124, i64 noundef 0, i8* noundef null) #6
  %cmp160 = icmp ne i64 %call159, 0
  %conv161 = zext i1 %cmp160 to i32
  %call162 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 486, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv161) #6
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %err, label %if.end165

if.end165:                                        ; preds = %if.end155
  %24 = bitcast %struct.ssl_ctx_st* %call141 to i8*
  %call166 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 488, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8* noundef %24) #6
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %err, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %if.end165
  %25 = bitcast %struct.ssl_ctx_st* %call157 to i8*
  %call169 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i8* noundef %25) #6
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %err, label %if.end174

if.end174:                                        ; preds = %lor.lhs.false168, %if.end135, %if.end78
  %server_ctx.1 = phi %struct.ssl_ctx_st* [ %server_ctx.0, %if.end78 ], [ %call84, %if.end135 ], [ %call84, %lor.lhs.false168 ]
  %server2_ctx.4 = phi %struct.ssl_ctx_st* [ %server2_ctx.1, %if.end78 ], [ %server2_ctx.2, %if.end135 ], [ %server2_ctx.2, %lor.lhs.false168 ]
  %client_ctx.2 = phi %struct.ssl_ctx_st* [ %client_ctx.0, %if.end78 ], [ %call127, %if.end135 ], [ %call127, %lor.lhs.false168 ]
  %resume_server_ctx.3 = phi %struct.ssl_ctx_st* [ %resume_server_ctx.0, %if.end78 ], [ %resume_server_ctx.0, %if.end135 ], [ %call141, %lor.lhs.false168 ]
  %resume_client_ctx.3 = phi %struct.ssl_ctx_st* [ %resume_client_ctx.0, %if.end78 ], [ %resume_client_ctx.0, %if.end135 ], [ %call157, %lor.lhs.false168 ]
  %26 = bitcast %struct.ssl_ctx_st* %server_ctx.1 to i8*
  %call175 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 499, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8* noundef %26) #6
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %err, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %if.end174
  %27 = bitcast %struct.ssl_ctx_st* %client_ctx.2 to i8*
  %call178 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 500, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8* noundef %27) #6
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %err, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %lor.lhs.false177
  %28 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  %call182 = call i32 @CONF_modules_load(%struct.conf_st* noundef %28, i8* noundef nonnull %0, i64 noundef 0) #6
  %call183 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 501, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call182, i32 noundef 0) #6
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %err, label %if.end186

if.end186:                                        ; preds = %lor.lhs.false180
  %call187 = call i32 @SSL_CTX_config(%struct.ssl_ctx_st* noundef %server_ctx.1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)) #6
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %err, label %lor.lhs.false189

lor.lhs.false189:                                 ; preds = %if.end186
  %call190 = call i32 @SSL_CTX_config(%struct.ssl_ctx_st* noundef %client_ctx.2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #6
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %err, label %if.end193

if.end193:                                        ; preds = %lor.lhs.false189
  %cmp194.not = icmp eq %struct.ssl_ctx_st* %server2_ctx.4, null
  br i1 %cmp194.not, label %if.end199, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end193
  %call196 = call i32 @SSL_CTX_config(%struct.ssl_ctx_st* noundef nonnull %server2_ctx.4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0)) #6
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %err, label %if.end199

if.end199:                                        ; preds = %land.lhs.true, %if.end193
  %cmp200.not = icmp eq %struct.ssl_ctx_st* %resume_server_ctx.3, null
  br i1 %cmp200.not, label %if.end206, label %land.lhs.true202

land.lhs.true202:                                 ; preds = %if.end199
  %call203 = call i32 @SSL_CTX_config(%struct.ssl_ctx_st* noundef nonnull %resume_server_ctx.3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0)) #6
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %err, label %if.end206

if.end206:                                        ; preds = %land.lhs.true202, %if.end199
  %cmp207.not = icmp eq %struct.ssl_ctx_st* %resume_client_ctx.3, null
  br i1 %cmp207.not, label %if.end213, label %land.lhs.true209

land.lhs.true209:                                 ; preds = %if.end206
  %call210 = call i32 @SSL_CTX_config(%struct.ssl_ctx_st* noundef nonnull %resume_client_ctx.3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0)) #6
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %err, label %if.end213

if.end213:                                        ; preds = %land.lhs.true209, %if.end206
  %call214 = call %struct.handshake_result* @do_handshake(%struct.ssl_ctx_st* noundef %server_ctx.1, %struct.ssl_ctx_st* noundef %server2_ctx.4, %struct.ssl_ctx_st* noundef %client_ctx.2, %struct.ssl_ctx_st* noundef %resume_server_ctx.3, %struct.ssl_ctx_st* noundef %resume_client_ctx.3, %struct.SSL_TEST_CTX* noundef nonnull %call2) #6
  %cmp215.not = icmp eq %struct.handshake_result* %call214, null
  br i1 %cmp215.not, label %err, label %if.then217

if.then217:                                       ; preds = %if.end213
  %call218 = call fastcc i32 @check_test(%struct.handshake_result* noundef nonnull %call214, %struct.SSL_TEST_CTX* noundef nonnull %call2) #7
  br label %err

err:                                              ; preds = %if.end165, %lor.lhs.false168, %if.end155, %if.then139, %lor.lhs.false148, %if.end125, %if.end116, %if.then104, %lor.lhs.false109, %if.then82, %lor.lhs.false91, %if.end213, %if.then217, %land.lhs.true209, %land.lhs.true202, %land.lhs.true, %if.end186, %lor.lhs.false189, %if.end174, %lor.lhs.false177, %lor.lhs.false180, %if.end69, %lor.lhs.false72, %if.end60, %if.then45, %lor.lhs.false53, %if.end33, %if.then20, %lor.lhs.false25, %if.then4, %lor.lhs.false, %entry
  %ret.0 = phi i32 [ %call218, %if.then217 ], [ 0, %if.end213 ], [ 0, %land.lhs.true209 ], [ 0, %land.lhs.true202 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false189 ], [ 0, %if.end186 ], [ 0, %lor.lhs.false180 ], [ 0, %lor.lhs.false177 ], [ 0, %if.end174 ], [ 0, %lor.lhs.false72 ], [ 0, %if.end69 ], [ 0, %if.end60 ], [ 0, %lor.lhs.false53 ], [ 0, %if.then45 ], [ 0, %if.end33 ], [ 0, %lor.lhs.false25 ], [ 0, %if.then20 ], [ 0, %lor.lhs.false ], [ 0, %if.then4 ], [ 0, %entry ], [ 0, %lor.lhs.false91 ], [ 0, %if.then82 ], [ 0, %lor.lhs.false109 ], [ 0, %if.then104 ], [ 0, %if.end116 ], [ 0, %if.end125 ], [ 0, %lor.lhs.false148 ], [ 0, %if.then139 ], [ 0, %if.end155 ], [ 0, %lor.lhs.false168 ], [ 0, %if.end165 ]
  %server_ctx.2 = phi %struct.ssl_ctx_st* [ %server_ctx.1, %if.then217 ], [ %server_ctx.1, %if.end213 ], [ %server_ctx.1, %land.lhs.true209 ], [ %server_ctx.1, %land.lhs.true202 ], [ %server_ctx.1, %land.lhs.true ], [ %server_ctx.1, %lor.lhs.false189 ], [ %server_ctx.1, %if.end186 ], [ %server_ctx.1, %lor.lhs.false180 ], [ %server_ctx.1, %lor.lhs.false177 ], [ %server_ctx.1, %if.end174 ], [ %call6, %lor.lhs.false72 ], [ %call6, %if.end69 ], [ %call6, %if.end60 ], [ %call6, %lor.lhs.false53 ], [ %call6, %if.then45 ], [ %call6, %if.end33 ], [ %call6, %lor.lhs.false25 ], [ %call6, %if.then20 ], [ %call6, %lor.lhs.false ], [ %call6, %if.then4 ], [ null, %entry ], [ %call84, %lor.lhs.false91 ], [ %call84, %if.then82 ], [ %call84, %lor.lhs.false109 ], [ %call84, %if.then104 ], [ %call84, %if.end116 ], [ %call84, %if.end125 ], [ %call84, %lor.lhs.false148 ], [ %call84, %if.then139 ], [ %call84, %if.end155 ], [ %call84, %lor.lhs.false168 ], [ %call84, %if.end165 ]
  %server2_ctx.5 = phi %struct.ssl_ctx_st* [ %server2_ctx.4, %if.then217 ], [ %server2_ctx.4, %if.end213 ], [ %server2_ctx.4, %land.lhs.true209 ], [ %server2_ctx.4, %land.lhs.true202 ], [ %server2_ctx.4, %land.lhs.true ], [ %server2_ctx.4, %lor.lhs.false189 ], [ %server2_ctx.4, %if.end186 ], [ %server2_ctx.4, %lor.lhs.false180 ], [ %server2_ctx.4, %lor.lhs.false177 ], [ %server2_ctx.4, %if.end174 ], [ %server2_ctx.0, %lor.lhs.false72 ], [ %server2_ctx.0, %if.end69 ], [ %server2_ctx.0, %if.end60 ], [ %server2_ctx.0, %lor.lhs.false53 ], [ %server2_ctx.0, %if.then45 ], [ %server2_ctx.0, %if.end33 ], [ %call22, %lor.lhs.false25 ], [ %call22, %if.then20 ], [ null, %lor.lhs.false ], [ null, %if.then4 ], [ null, %entry ], [ %server2_ctx.1, %lor.lhs.false91 ], [ %server2_ctx.1, %if.then82 ], [ %call106, %lor.lhs.false109 ], [ %call106, %if.then104 ], [ %call106, %if.end116 ], [ %server2_ctx.2, %if.end125 ], [ %server2_ctx.2, %lor.lhs.false148 ], [ %server2_ctx.2, %if.then139 ], [ %server2_ctx.2, %if.end155 ], [ %server2_ctx.2, %lor.lhs.false168 ], [ %server2_ctx.2, %if.end165 ]
  %client_ctx.3 = phi %struct.ssl_ctx_st* [ %client_ctx.2, %if.then217 ], [ %client_ctx.2, %if.end213 ], [ %client_ctx.2, %land.lhs.true209 ], [ %client_ctx.2, %land.lhs.true202 ], [ %client_ctx.2, %land.lhs.true ], [ %client_ctx.2, %lor.lhs.false189 ], [ %client_ctx.2, %if.end186 ], [ %client_ctx.2, %lor.lhs.false180 ], [ %client_ctx.2, %lor.lhs.false177 ], [ %client_ctx.2, %if.end174 ], [ %call35, %lor.lhs.false72 ], [ %call35, %if.end69 ], [ %call35, %if.end60 ], [ %call35, %lor.lhs.false53 ], [ %call35, %if.then45 ], [ %call35, %if.end33 ], [ null, %lor.lhs.false25 ], [ null, %if.then20 ], [ null, %lor.lhs.false ], [ null, %if.then4 ], [ null, %entry ], [ %client_ctx.0, %lor.lhs.false91 ], [ %client_ctx.0, %if.then82 ], [ %client_ctx.0, %lor.lhs.false109 ], [ %client_ctx.0, %if.then104 ], [ %client_ctx.0, %if.end116 ], [ %call127, %if.end125 ], [ %call127, %lor.lhs.false148 ], [ %call127, %if.then139 ], [ %call127, %if.end155 ], [ %call127, %lor.lhs.false168 ], [ %call127, %if.end165 ]
  %resume_server_ctx.4 = phi %struct.ssl_ctx_st* [ %resume_server_ctx.3, %if.then217 ], [ %resume_server_ctx.3, %if.end213 ], [ %resume_server_ctx.3, %land.lhs.true209 ], [ %resume_server_ctx.3, %land.lhs.true202 ], [ %resume_server_ctx.3, %land.lhs.true ], [ %resume_server_ctx.3, %lor.lhs.false189 ], [ %resume_server_ctx.3, %if.end186 ], [ %resume_server_ctx.3, %lor.lhs.false180 ], [ %resume_server_ctx.3, %lor.lhs.false177 ], [ %resume_server_ctx.3, %if.end174 ], [ %call47, %lor.lhs.false72 ], [ %call47, %if.end69 ], [ %call47, %if.end60 ], [ %call47, %lor.lhs.false53 ], [ %call47, %if.then45 ], [ null, %if.end33 ], [ null, %lor.lhs.false25 ], [ null, %if.then20 ], [ null, %lor.lhs.false ], [ null, %if.then4 ], [ null, %entry ], [ %resume_server_ctx.0, %lor.lhs.false91 ], [ %resume_server_ctx.0, %if.then82 ], [ %resume_server_ctx.0, %lor.lhs.false109 ], [ %resume_server_ctx.0, %if.then104 ], [ %resume_server_ctx.0, %if.end116 ], [ %resume_server_ctx.0, %if.end125 ], [ %call141, %lor.lhs.false148 ], [ %call141, %if.then139 ], [ %call141, %if.end155 ], [ %call141, %lor.lhs.false168 ], [ %call141, %if.end165 ]
  %resume_client_ctx.4 = phi %struct.ssl_ctx_st* [ %resume_client_ctx.3, %if.then217 ], [ %resume_client_ctx.3, %if.end213 ], [ %resume_client_ctx.3, %land.lhs.true209 ], [ %resume_client_ctx.3, %land.lhs.true202 ], [ %resume_client_ctx.3, %land.lhs.true ], [ %resume_client_ctx.3, %lor.lhs.false189 ], [ %resume_client_ctx.3, %if.end186 ], [ %resume_client_ctx.3, %lor.lhs.false180 ], [ %resume_client_ctx.3, %lor.lhs.false177 ], [ %resume_client_ctx.3, %if.end174 ], [ %call62, %lor.lhs.false72 ], [ %call62, %if.end69 ], [ %call62, %if.end60 ], [ null, %lor.lhs.false53 ], [ null, %if.then45 ], [ null, %if.end33 ], [ null, %lor.lhs.false25 ], [ null, %if.then20 ], [ null, %lor.lhs.false ], [ null, %if.then4 ], [ null, %entry ], [ %resume_client_ctx.0, %lor.lhs.false91 ], [ %resume_client_ctx.0, %if.then82 ], [ %resume_client_ctx.0, %lor.lhs.false109 ], [ %resume_client_ctx.0, %if.then104 ], [ %resume_client_ctx.0, %if.end116 ], [ %resume_client_ctx.0, %if.end125 ], [ %resume_client_ctx.0, %lor.lhs.false148 ], [ %resume_client_ctx.0, %if.then139 ], [ %call157, %if.end155 ], [ %call157, %lor.lhs.false168 ], [ %call157, %if.end165 ]
  %result.0 = phi %struct.handshake_result* [ %call214, %if.then217 ], [ null, %if.end213 ], [ null, %land.lhs.true209 ], [ null, %land.lhs.true202 ], [ null, %land.lhs.true ], [ null, %lor.lhs.false189 ], [ null, %if.end186 ], [ null, %lor.lhs.false180 ], [ null, %lor.lhs.false177 ], [ null, %if.end174 ], [ null, %lor.lhs.false72 ], [ null, %if.end69 ], [ null, %if.end60 ], [ null, %lor.lhs.false53 ], [ null, %if.then45 ], [ null, %if.end33 ], [ null, %lor.lhs.false25 ], [ null, %if.then20 ], [ null, %lor.lhs.false ], [ null, %if.then4 ], [ null, %entry ], [ null, %lor.lhs.false91 ], [ null, %if.then82 ], [ null, %lor.lhs.false109 ], [ null, %if.then104 ], [ null, %if.end116 ], [ null, %if.end125 ], [ null, %lor.lhs.false148 ], [ null, %if.then139 ], [ null, %if.end155 ], [ null, %lor.lhs.false168 ], [ null, %if.end165 ]
  call void @CONF_modules_unload(i32 noundef 0) #6
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %server_ctx.2) #6
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %server2_ctx.5) #6
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %client_ctx.3) #6
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %resume_server_ctx.4) #6
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %resume_client_ctx.4) #6
  call void @SSL_TEST_CTX_free(%struct.SSL_TEST_CTX* noundef %call2) #6
  call void @HANDSHAKE_RESULT_free(%struct.handshake_result* noundef %result.0) #6
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  tail call void @NCONF_free(%struct.conf_st* noundef %0) #6
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @defctxnull, align 8, !tbaa !3
  %call = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %1) #6
  %2 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @thisprov, align 8, !tbaa !3
  %call1 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %2) #6
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %3) #6
  ret void
}

declare dso_local void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local %struct.SSL_TEST_CTX* @SSL_TEST_CTX_create(%struct.conf_st* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ssl_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_method_st* @DTLS_server_method() local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_method_st* @DTLS_client_method() local_unnamed_addr #3

declare dso_local %struct.ssl_method_st* @TLS_server_method() local_unnamed_addr #3

declare dso_local %struct.ssl_method_st* @TLS_client_method() local_unnamed_addr #3

declare dso_local i32 @CONF_modules_load(%struct.conf_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CTX_config(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.handshake_result* @do_handshake(%struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.SSL_TEST_CTX* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_test(%struct.handshake_result* noundef readonly %result, %struct.SSL_TEST_CTX* noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @check_result(%struct.handshake_result* noundef %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %and = and i32 %call, 1
  %call1 = tail call fastcc i32 @check_alerts(%struct.handshake_result* noundef %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %and2 = and i32 %and, %call1
  %result3 = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 0
  %0 = load i32, i32* %result3, align 8, !tbaa !17
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = tail call fastcc i32 @check_protocol(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %and5 = and i32 %call4, %and2
  %call6 = tail call fastcc i32 @check_servername(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %and7 = and i32 %and5, %call6
  %call8 = tail call fastcc i32 @check_session_ticket(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %and9 = and i32 %and7, %call8
  %call10 = tail call fastcc i32 @check_compression(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %and11 = and i32 %and9, %call10
  %call12 = tail call fastcc i32 @check_session_id(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %and13 = and i32 %and11, %call12
  %session_ticket_do_not_call = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 12
  %1 = load i32, i32* %session_ticket_do_not_call, align 8, !tbaa !19
  %cmp14 = icmp eq i32 %1, 0
  %conv = zext i1 %cmp14 to i32
  %call16 = tail call fastcc i32 @check_npn(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %call18 = tail call fastcc i32 @check_cipher(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %call20 = tail call fastcc i32 @check_alpn(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %call22 = tail call fastcc i32 @check_session_ticket_app_data(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %call24 = tail call fastcc i32 @check_resumption(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %call26 = tail call fastcc i32 @check_tmp_key(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %call28 = tail call fastcc i32 @check_server_cert_type(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %call30 = tail call fastcc i32 @check_server_sign_hash(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %call32 = tail call fastcc i32 @check_server_sign_type(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %call34 = tail call fastcc i32 @check_server_ca_names(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %call36 = tail call fastcc i32 @check_client_cert_type(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %call38 = tail call fastcc i32 @check_client_sign_hash(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %call40 = tail call fastcc i32 @check_client_sign_type(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %call42 = tail call fastcc i32 @check_client_ca_names(%struct.handshake_result* noundef nonnull %result, %struct.SSL_TEST_CTX* noundef %test_ctx) #7
  %and15 = and i32 %and13, %call16
  %and17 = and i32 %and15, %conv
  %and19 = and i32 %and17, %call18
  %and21 = and i32 %and19, %call20
  %and23 = and i32 %and21, %call22
  %and25 = and i32 %and23, %call24
  %and27 = and i32 %and25, %call26
  %and29 = and i32 %and27, %call28
  %and31 = and i32 %and29, %call30
  %and33 = and i32 %and31, %call32
  %and35 = and i32 %and33, %call34
  %and37 = and i32 %and35, %call36
  %and39 = and i32 %and37, %call38
  %and41 = and i32 %and39, %call40
  %and43 = and i32 %and41, %call42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %and43, %if.then ], [ %and2, %entry ]
  ret i32 %ret.0
}

declare dso_local void @CONF_modules_unload(i32 noundef) local_unnamed_addr #3

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_TEST_CTX_free(%struct.SSL_TEST_CTX* noundef) local_unnamed_addr #3

declare dso_local void @HANDSHAKE_RESULT_free(%struct.handshake_result* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_result(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %result1 = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 0
  %0 = load i32, i32* %result1, align 8, !tbaa !17
  %expected_result = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 7
  %1 = load i32, i32* %expected_result, align 8, !tbaa !20
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %expected_result, align 8, !tbaa !20
  %call3 = tail call i8* @ssl_test_result_name(i32 noundef %2) #6
  %3 = load i32, i32* %result1, align 8, !tbaa !17
  %call5 = tail call i8* @ssl_test_result_name(i32 noundef %3) #6
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.52, i64 0, i64 0), i8* noundef %call3, i8* noundef %call5) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_alerts(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %client_alert_sent = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 1
  %0 = load i32, i32* %client_alert_sent, align 4, !tbaa !21
  %client_alert_received = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 3
  %1 = load i32, i32* %client_alert_received, align 4, !tbaa !22
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %client_alert_sent, align 4, !tbaa !21
  %call2 = tail call fastcc i8* @print_alert(i32 noundef %2) #7
  %3 = load i32, i32* %client_alert_received, align 4, !tbaa !22
  %call4 = tail call fastcc i8* @print_alert(i32 noundef %3) #7
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.55, i64 0, i64 0), i8* noundef %call2, i8* noundef %call4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %server_alert_sent = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 4
  %4 = load i32, i32* %server_alert_sent, align 8, !tbaa !23
  %server_alert_received = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 6
  %5 = load i32, i32* %server_alert_received, align 8, !tbaa !24
  %call5 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i64 0, i64 0), i32 noundef %4, i32 noundef %5) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end
  %6 = load i32, i32* %server_alert_sent, align 8, !tbaa !23
  %call9 = tail call fastcc i8* @print_alert(i32 noundef %6) #7
  %7 = load i32, i32* %server_alert_received, align 8, !tbaa !24
  %call11 = tail call fastcc i8* @print_alert(i32 noundef %7) #7
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i64 0, i64 0), i8* noundef %call9, i8* noundef %call11) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end
  %expected_client_alert = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 8
  %8 = load i32, i32* %expected_client_alert, align 4, !tbaa !25
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %9 = load i32, i32* %client_alert_sent, align 4, !tbaa !21
  %and = and i32 %9, 255
  %cmp.not = icmp eq i32 %and, %8
  br i1 %cmp.not, label %if.end21, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  %call18 = tail call fastcc i8* @print_alert(i32 noundef %8) #7
  %10 = load i32, i32* %client_alert_sent, align 4, !tbaa !21
  %call20 = tail call fastcc i8* @print_alert(i32 noundef %10) #7
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0), i8* noundef %call18, i8* noundef %call20) #6
  br label %return

if.end21:                                         ; preds = %land.lhs.true, %if.end12
  %expected_server_alert = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 9
  %11 = load i32, i32* %expected_server_alert, align 8, !tbaa !26
  %tobool22.not = icmp eq i32 %11, 0
  br i1 %tobool22.not, label %if.end33, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end21
  %12 = load i32, i32* %server_alert_sent, align 8, !tbaa !23
  %and25 = and i32 %12, 255
  %cmp27.not = icmp eq i32 %and25, %11
  br i1 %cmp27.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %land.lhs.true23
  %call30 = tail call fastcc i8* @print_alert(i32 noundef %11) #7
  %13 = load i32, i32* %server_alert_sent, align 8, !tbaa !23
  %call32 = tail call fastcc i8* @print_alert(i32 noundef %13) #7
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0), i8* noundef %call30, i8* noundef %call32) #6
  br label %return

if.end33:                                         ; preds = %land.lhs.true23, %if.end21
  %client_num_fatal_alerts_sent = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 2
  %14 = load i32, i32* %client_num_fatal_alerts_sent, align 8, !tbaa !27
  %call34 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i32 noundef %14, i32 noundef 1) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %return, label %if.end37

if.end37:                                         ; preds = %if.end33
  %server_num_fatal_alerts_sent = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 5
  %15 = load i32, i32* %server_num_fatal_alerts_sent, align 4, !tbaa !28
  %call38 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i32 noundef %15, i32 noundef 1) #6
  %tobool39.not = icmp ne i32 %call38, 0
  %. = zext i1 %tobool39.not to i32
  br label %return

return:                                           ; preds = %if.end37, %if.end33, %if.then28, %if.then16
  %retval.0 = phi i32 [ 0, %if.then16 ], [ 0, %if.then28 ], [ 0, %if.end33 ], [ %., %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_protocol(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %client_protocol = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 8
  %0 = load i32, i32* %client_protocol, align 8, !tbaa !29
  %server_protocol = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 7
  %1 = load i32, i32* %server_protocol, align 4, !tbaa !30
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.66, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %client_protocol, align 8, !tbaa !29
  %call2 = tail call i8* @ssl_protocol_name(i32 noundef %2) #6
  %3 = load i32, i32* %server_protocol, align 4, !tbaa !30
  %call4 = tail call i8* @ssl_protocol_name(i32 noundef %3) #6
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.67, i64 0, i64 0), i8* noundef %call2, i8* noundef %call4) #6
  br label %return

if.end:                                           ; preds = %entry
  %expected_protocol = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 10
  %4 = load i32, i32* %expected_protocol, align 4, !tbaa !31
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %return, label %if.then6

if.then6:                                         ; preds = %if.end
  %5 = load i32, i32* %client_protocol, align 8, !tbaa !29
  %call9 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i64 0, i64 0), i32 noundef %5, i32 noundef %4) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %return

if.then11:                                        ; preds = %if.then6
  %6 = load i32, i32* %expected_protocol, align 4, !tbaa !31
  %call13 = tail call i8* @ssl_protocol_name(i32 noundef %6) #6
  %7 = load i32, i32* %client_protocol, align 8, !tbaa !29
  %call15 = tail call i8* @ssl_protocol_name(i32 noundef %7) #6
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.69, i64 0, i64 0), i8* noundef %call13, i8* noundef %call15) #6
  br label %return

return:                                           ; preds = %if.end, %if.then6, %if.then11, %if.then
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.then ], [ 1, %if.then6 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_servername(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %servername = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 9
  %0 = load i32, i32* %servername, align 4, !tbaa !32
  %expected_servername = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 11
  %1 = load i32, i32* %expected_servername, align 8, !tbaa !33
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %expected_servername, align 8, !tbaa !33
  %call2 = tail call i8* @ssl_servername_name(i32 noundef %2) #6
  %3 = load i32, i32* %servername, align 4, !tbaa !32
  %call4 = tail call i8* @ssl_servername_name(i32 noundef %3) #6
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.72, i64 0, i64 0), i8* noundef %call2, i8* noundef %call4) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_session_ticket(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %session_ticket_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 12
  %0 = load i32, i32* %session_ticket_expected, align 4, !tbaa !34
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %session_ticket = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 10
  %1 = load i32, i32* %session_ticket, align 8, !tbaa !35
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.74, i64 0, i64 0), i32 noundef %1, i32 noundef %0) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %return

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %session_ticket_expected, align 4, !tbaa !34
  %call4 = tail call i8* @ssl_session_ticket_name(i32 noundef %2) #6
  %3 = load i32, i32* %session_ticket, align 8, !tbaa !35
  %call6 = tail call i8* @ssl_session_ticket_name(i32 noundef %3) #6
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.75, i64 0, i64 0), i8* noundef %call4, i8* noundef %call6) #6
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_compression(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %compression = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 11
  %0 = load i32, i32* %compression, align 4, !tbaa !36
  %compression_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 13
  %1 = load i32, i32* %compression_expected, align 8, !tbaa !37
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #6
  %tobool.not = icmp ne i32 %call, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_session_id(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %session_id_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 29
  %0 = load i32, i32* %session_id_expected, align 4, !tbaa !38
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %session_id = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 28
  %1 = load i32, i32* %session_id, align 8, !tbaa !39
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.79, i64 0, i64 0), i32 noundef %1, i32 noundef %0) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %return

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %session_id_expected, align 4, !tbaa !38
  %call4 = tail call i8* @ssl_session_id_name(i32 noundef %2) #6
  %3 = load i32, i32* %session_id, align 8, !tbaa !39
  %call6 = tail call i8* @ssl_session_id_name(i32 noundef %3) #6
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 156, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.80, i64 0, i64 0), i8* noundef %call4, i8* noundef %call6) #6
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_npn(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %client_npn_negotiated = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 13
  %0 = load i8*, i8** %client_npn_negotiated, align 8, !tbaa !40
  %server_npn_negotiated = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 14
  %1 = load i8*, i8** %server_npn_negotiated, align 8, !tbaa !41
  %call = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.82, i64 0, i64 0), i8* noundef %0, i8* noundef %1) #6
  %tobool.not = icmp ne i32 %call, 0
  %expected_npn_protocol = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 14
  %2 = load i8*, i8** %expected_npn_protocol, align 8, !tbaa !42
  %3 = load i8*, i8** %client_npn_negotiated, align 8, !tbaa !40
  %call2 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.83, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #6
  %tobool3.not = icmp ne i32 %call2, 0
  %narrow = select i1 %tobool3.not, i1 %tobool.not, i1 false
  %ret.1 = zext i1 %narrow to i32
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_cipher(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %expected_cipher = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 30
  %0 = load i8*, i8** %expected_cipher, align 8, !tbaa !43
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cipher = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 29
  %1 = load i8*, i8** %cipher, align 8, !tbaa !44
  %call = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %2 = load i8*, i8** %expected_cipher, align 8, !tbaa !43
  %3 = load i8*, i8** %cipher, align 8, !tbaa !44
  %call5 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 352, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #6
  %tobool6.not = icmp ne i32 %call5, 0
  %. = zext i1 %tobool6.not to i32
  br label %return

return:                                           ; preds = %if.end2, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ %., %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_alpn(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %client_alpn_negotiated = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 15
  %0 = load i8*, i8** %client_alpn_negotiated, align 8, !tbaa !45
  %server_alpn_negotiated = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 16
  %1 = load i8*, i8** %server_alpn_negotiated, align 8, !tbaa !46
  %call = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.87, i64 0, i64 0), i8* noundef %0, i8* noundef %1) #6
  %tobool.not = icmp ne i32 %call, 0
  %expected_alpn_protocol = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 15
  %2 = load i8*, i8** %expected_alpn_protocol, align 8, !tbaa !47
  %3 = load i8*, i8** %client_alpn_negotiated, align 8, !tbaa !45
  %call2 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.86, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #6
  %tobool3.not = icmp ne i32 %call2, 0
  %narrow = select i1 %tobool3.not, i1 %tobool.not, i1 false
  %ret.1 = zext i1 %narrow to i32
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_session_ticket_app_data(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %result_session_ticket_app_data = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 30
  %0 = load i8*, i8** %result_session_ticket_app_data, align 8, !tbaa !48
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %result_len.0 = phi i64 [ %call, %if.then ], [ 0, %entry ]
  %expected_session_ticket_app_data = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 31
  %1 = load i8*, i8** %expected_session_ticket_app_data, align 8, !tbaa !49
  %cmp2.not = icmp eq i8* %1, null
  br i1 %cmp2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %call5 = tail call i64 @strlen(i8* noundef nonnull %1) #8
  %phi.cmp = icmp eq i64 %call5, 0
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %expected_len.0 = phi i1 [ %phi.cmp, %if.then3 ], [ true, %if.end ]
  %cmp7 = icmp eq i64 %result_len.0, 0
  %or.cond = select i1 %cmp7, i1 %expected_len.0, i1 false
  br i1 %or.cond, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call13 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.90, i64 0, i64 0), i8* noundef %0, i8* noundef %1) #6
  %tobool.not = icmp ne i32 %call13, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6
  %retval.0 = phi i32 [ 1, %if.end6 ], [ %., %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_resumption(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %client_resumed = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 17
  %0 = load i32, i32* %client_resumed, align 8, !tbaa !50
  %server_resumed = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 18
  %1 = load i32, i32* %server_resumed, align 4, !tbaa !51
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.92, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %client_resumed, align 8, !tbaa !50
  %resumption_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 16
  %3 = load i32, i32* %resumption_expected, align 8, !tbaa !52
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i32 noundef %2, i32 noundef %3) #6
  %tobool3.not = icmp ne i32 %call2, 0
  %. = zext i1 %tobool3.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_tmp_key(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %expected_tmp_key_type = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 17
  %0 = load i32, i32* %expected_tmp_key_type, align 4, !tbaa !53
  %tmp_key_type = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 19
  %1 = load i32, i32* %tmp_key_type, align 8, !tbaa !54
  %call = tail call fastcc i32 @check_nid(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_server_cert_type(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %expected_server_cert_type = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 18
  %0 = load i32, i32* %expected_server_cert_type, align 8, !tbaa !55
  %server_cert_type = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 20
  %1 = load i32, i32* %server_cert_type, align 4, !tbaa !56
  %call = tail call fastcc i32 @check_nid(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.97, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_server_sign_hash(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %expected_server_sign_hash = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 19
  %0 = load i32, i32* %expected_server_sign_hash, align 4, !tbaa !57
  %server_sign_hash = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 21
  %1 = load i32, i32* %server_sign_hash, align 8, !tbaa !58
  %call = tail call fastcc i32 @check_nid(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.98, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_server_sign_type(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %expected_server_sign_type = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 20
  %0 = load i32, i32* %expected_server_sign_type, align 8, !tbaa !59
  %server_sign_type = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 22
  %1 = load i32, i32* %server_sign_type, align 4, !tbaa !60
  %call = tail call fastcc i32 @check_nid(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.99, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_server_ca_names(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %expected_server_ca_names = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 21
  %0 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %expected_server_ca_names, align 8, !tbaa !61
  %server_ca_names = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 23
  %1 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %server_ca_names, align 8, !tbaa !62
  %call = tail call fastcc i32 @check_ca_names(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i64 0, i64 0), %struct.stack_st_X509_NAME* noundef %0, %struct.stack_st_X509_NAME* noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_client_cert_type(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %expected_client_cert_type = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 22
  %0 = load i32, i32* %expected_client_cert_type, align 8, !tbaa !63
  %client_cert_type = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 24
  %1 = load i32, i32* %client_cert_type, align 8, !tbaa !64
  %call = tail call fastcc i32 @check_nid(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.108, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_client_sign_hash(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %expected_client_sign_hash = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 23
  %0 = load i32, i32* %expected_client_sign_hash, align 4, !tbaa !65
  %client_sign_hash = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 25
  %1 = load i32, i32* %client_sign_hash, align 4, !tbaa !66
  %call = tail call fastcc i32 @check_nid(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.109, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_client_sign_type(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %expected_client_sign_type = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 24
  %0 = load i32, i32* %expected_client_sign_type, align 8, !tbaa !67
  %client_sign_type = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 26
  %1 = load i32, i32* %client_sign_type, align 8, !tbaa !68
  %call = tail call fastcc i32 @check_nid(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.110, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_client_ca_names(%struct.handshake_result* nocapture noundef readonly %result, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #1 {
entry:
  %expected_client_ca_names = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 25
  %0 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %expected_client_ca_names, align 8, !tbaa !69
  %client_ca_names = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 27
  %1 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %client_ca_names, align 8, !tbaa !70
  %call = tail call fastcc i32 @check_ca_names(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i64 0, i64 0), %struct.stack_st_X509_NAME* noundef %0, %struct.stack_st_X509_NAME* noundef %1) #7
  ret i32 %call
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i8* @ssl_test_result_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @print_alert(i32 noundef %alert) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %alert, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call i8* @SSL_alert_desc_string_long(i32 noundef %alert) #6
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), %entry ]
  ret i8* %cond
}

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i8* @SSL_alert_desc_string_long(i32 noundef) local_unnamed_addr #3

declare dso_local i8* @ssl_protocol_name(i32 noundef) local_unnamed_addr #3

declare dso_local i8* @ssl_servername_name(i32 noundef) local_unnamed_addr #3

declare dso_local i8* @ssl_session_ticket_name(i32 noundef) local_unnamed_addr #3

declare dso_local i8* @ssl_session_id_name(i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_nid(i8* noundef %name, i32 noundef %expected_nid, i32 noundef %nid) unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %expected_nid, 0
  %cmp1 = icmp eq i32 %expected_nid, %nid
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @OBJ_nid2ln(i32 noundef %expected_nid) #6
  %cmp2 = icmp eq i32 %nid, 0
  br i1 %cmp2, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  %call3 = tail call i8* @OBJ_nid2ln(i32 noundef %nid) #6
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi i8* [ %call3, %cond.false ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i64 0, i64 0), %if.end ]
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.95, i64 0, i64 0), i8* noundef %name, i8* noundef %call, i8* noundef %cond) #6
  br label %return

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ 0, %cond.end ], [ 1, %entry ]
  ret i32 %retval.0
}

declare dso_local i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_ca_names(i8* noundef %name, %struct.stack_st_X509_NAME* noundef %expected_names, %struct.stack_st_X509_NAME* noundef %names) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_NAME* %expected_names, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.stack_st_X509_NAME* %names, null
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %names) #7
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %expected_names) #7
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #6
  %call7 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call6, i32 noundef 0) #6
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err, label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %call12 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %expected_names) #7
  %call14 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #6
  %cmp15.not = icmp eq i32 %call12, %call14
  br i1 %cmp15.not, label %for.cond.preheader, label %err

for.cond.preheader:                               ; preds = %if.end10
  %call1943 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp2044 = icmp sgt i32 %call1943, 0
  br i1 %cmp2044, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call19 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp20 = icmp slt i32 %inc, %call19
  br i1 %cmp20, label %for.body, label %cleanup, !llvm.loop !71

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.045 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call22 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.045) #6
  %0 = bitcast i8* %call22 to %struct.X509_name_st*
  %call24 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call13, i32 noundef %i.045) #6
  %1 = bitcast i8* %call24 to %struct.X509_name_st*
  %call25 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %0, %struct.X509_name_st* noundef %1) #6
  %call26 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call25, i32 noundef 0) #6
  %tobool27.not = icmp eq i32 %call26, 0
  %inc = add nuw nsw i32 %i.045, 1
  br i1 %tobool27.not, label %err, label %for.cond

err:                                              ; preds = %for.body, %if.end10, %if.then4
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.103, i64 0, i64 0), i8* noundef %name) #6
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.104, i64 0, i64 0)) #6
  tail call fastcc void @print_ca_names(%struct.stack_st_X509_NAME* noundef nonnull %expected_names) #7
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.105, i64 0, i64 0)) #6
  tail call fastcc void @print_ca_names(%struct.stack_st_X509_NAME* noundef %names) #7
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.cond.preheader, %if.then4, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %entry ], [ 1, %if.then4 ], [ 1, %for.cond.preheader ], [ 1, %for.cond ]
  ret i32 %retval.0
}

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_ca_names(%struct.stack_st_X509_NAME* noundef %names) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_NAME* %names, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %names) #7
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %call416 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp517 = icmp sgt i32 %call416, 0
  br i1 %cmp517, label %for.body, label %cleanup

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0)) #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.018 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.018) #6
  %1 = bitcast i8* %call7 to %struct.X509_name_st*
  %call8 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %0, %struct.X509_name_st* noundef %1, i32 noundef 4, i64 noundef 8520479) #6
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call9 = tail call i32 @BIO_puts(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0)) #6
  %inc = add nuw nsw i32 %i.018, 1
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %cleanup, !llvm.loop !73

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %if.then
  ret void
}

declare dso_local i32 @X509_NAME_print_ex(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !5, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !12, i64 24, !12, i64 224, !5, i64 424, !11, i64 428, !11, i64 432, !11, i64 436, !5, i64 440, !5, i64 444, !11, i64 448, !4, i64 456, !4, i64 464, !11, i64 472, !11, i64 476, !11, i64 480, !11, i64 484, !11, i64 488, !4, i64 496, !11, i64 504, !11, i64 508, !11, i64 512, !4, i64 520, !11, i64 528, !11, i64 532, !11, i64 536, !5, i64 540, !4, i64 544, !4, i64 552, !4, i64 560}
!11 = !{!"int", !5, i64 0}
!12 = !{!"", !13, i64 0, !14, i64 72, !14, i64 136}
!13 = !{!"", !5, i64 0, !5, i64 4, !11, i64 8, !4, i64 16, !4, i64 24, !5, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !11, i64 64, !11, i64 68}
!14 = !{!"", !5, i64 0, !4, i64 8, !4, i64 16, !11, i64 24, !5, i64 28, !4, i64 32, !4, i64 40, !11, i64 48, !4, i64 56}
!15 = !{!10, !5, i64 96}
!16 = !{!10, !5, i64 4}
!17 = !{!18, !5, i64 0}
!18 = !{!"handshake_result", !5, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !5, i64 36, !5, i64 40, !11, i64 44, !11, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !4, i64 112, !11, i64 120, !11, i64 124, !11, i64 128, !4, i64 136, !5, i64 144, !4, i64 152, !4, i64 160}
!19 = !{!18, !11, i64 48}
!20 = !{!10, !5, i64 424}
!21 = !{!18, !11, i64 4}
!22 = !{!18, !11, i64 12}
!23 = !{!18, !11, i64 16}
!24 = !{!18, !11, i64 24}
!25 = !{!10, !11, i64 428}
!26 = !{!10, !11, i64 432}
!27 = !{!18, !11, i64 8}
!28 = !{!18, !11, i64 20}
!29 = !{!18, !11, i64 32}
!30 = !{!18, !11, i64 28}
!31 = !{!10, !11, i64 436}
!32 = !{!18, !5, i64 36}
!33 = !{!10, !5, i64 440}
!34 = !{!10, !5, i64 444}
!35 = !{!18, !5, i64 40}
!36 = !{!18, !11, i64 44}
!37 = !{!10, !11, i64 448}
!38 = !{!10, !5, i64 540}
!39 = !{!18, !5, i64 144}
!40 = !{!18, !4, i64 56}
!41 = !{!18, !4, i64 64}
!42 = !{!10, !4, i64 456}
!43 = !{!10, !4, i64 544}
!44 = !{!18, !4, i64 152}
!45 = !{!18, !4, i64 72}
!46 = !{!18, !4, i64 80}
!47 = !{!10, !4, i64 464}
!48 = !{!18, !4, i64 160}
!49 = !{!10, !4, i64 552}
!50 = !{!18, !11, i64 88}
!51 = !{!18, !11, i64 92}
!52 = !{!10, !11, i64 472}
!53 = !{!10, !11, i64 476}
!54 = !{!18, !11, i64 96}
!55 = !{!10, !11, i64 480}
!56 = !{!18, !11, i64 100}
!57 = !{!10, !11, i64 484}
!58 = !{!18, !11, i64 104}
!59 = !{!10, !11, i64 488}
!60 = !{!18, !11, i64 108}
!61 = !{!10, !4, i64 496}
!62 = !{!18, !4, i64 112}
!63 = !{!10, !11, i64 504}
!64 = !{!18, !11, i64 120}
!65 = !{!10, !11, i64 508}
!66 = !{!18, !11, i64 124}
!67 = !{!10, !11, i64 512}
!68 = !{!18, !11, i64 128}
!69 = !{!10, !4, i64 520}
!70 = !{!18, !4, i64 136}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = distinct !{!73, !72}
