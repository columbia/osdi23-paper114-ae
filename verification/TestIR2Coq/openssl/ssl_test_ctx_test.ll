; ModuleID = 'test/ssl_test_ctx_test.c'
source_filename = "test/ssl_test_ctx_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, {}*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ssl_test_ctx_test_fixture = type { i8*, i8*, %struct.SSL_TEST_CTX* }
%struct.SSL_TEST_CTX = type { i32, i32, i32, i32, i32, %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, %struct.stack_st_X509_NAME*, i32, i32, i32, %struct.stack_st_X509_NAME*, i32, i32, i32, i32, i8*, i8*, %struct.ossl_lib_ctx_st* }
%struct.SSL_TEST_EXTRA_CONF = type { %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF }
%struct.SSL_TEST_CLIENT_CONF = type { i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i32 }
%struct.SSL_TEST_SERVER_CONF = type { i32, i8*, i8*, i32, i32, i8*, i8*, i32, i8* }
%struct.stack_st_X509_NAME = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [31 x i8] c"Usage: %s [options] conf_file\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [25 x i8] c"test/ssl_test_ctx_test.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"conf = NCONF_new(NULL)\00", align 1
@conf = internal unnamed_addr global %struct.conf_st* null, align 8
@.str.17 = private unnamed_addr constant [45 x i8] c"NCONF_load(conf, test_get_argument(0), NULL)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"test_empty_configuration\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"test_good_configuration\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"test_bad_configuration\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"ssltest_default\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"fixture = OPENSSL_zalloc(sizeof(*fixture))\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"fixture->expected_ctx = SSL_TEST_CTX_new(NULL)\00", align 1
@.str.25 = private unnamed_addr constant [86 x i8] c"ctx = SSL_TEST_CTX_create(conf, fixture->test_section, fixture->expected_ctx->libctx)\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"ctx->method\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"ctx2->method\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"ctx->handshake_mode\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"ctx2->handshake_mode\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"ctx->app_data_size\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"ctx2->app_data_size\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"ctx->max_fragment_size\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"ctx2->max_fragment_size\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"ctx->expected_result\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"ctx2->expected_result\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"ctx->expected_client_alert\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"ctx2->expected_client_alert\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"ctx->expected_server_alert\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"ctx2->expected_server_alert\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"ctx->expected_protocol\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"ctx2->expected_protocol\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"ctx->expected_servername\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"ctx2->expected_servername\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"ctx->session_ticket_expected\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"ctx2->session_ticket_expected\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"ctx->compression_expected\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"ctx2->compression_expected\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"ctx->expected_npn_protocol\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"ctx2->expected_npn_protocol\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"ctx->expected_alpn_protocol\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"ctx2->expected_alpn_protocol\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"ctx->expected_cipher\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"ctx2->expected_cipher\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"ctx->expected_session_ticket_app_data\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"ctx2->expected_session_ticket_app_data\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"ctx->resumption_expected\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"ctx2->resumption_expected\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"ctx->session_id_expected\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"ctx2->session_id_expected\00", align 1
@.str.60 = private unnamed_addr constant [47 x i8] c"clientconf_eq(&extra->client, &extra2->client)\00", align 1
@.str.61 = private unnamed_addr constant [47 x i8] c"serverconf_eq(&extra->server, &extra2->server)\00", align 1
@.str.62 = private unnamed_addr constant [49 x i8] c"serverconf_eq(&extra->server2, &extra2->server2)\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"conf1->verify_callback\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"conf2->verify_callback\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"conf1->servername\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"conf2->servername\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"conf1->npn_protocols\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"conf2->npn_protocols\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"conf1->alpn_protocols\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"conf2->alpn_protocols\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"conf1->ct_validation\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"conf2->ct_validation\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"conf1->max_fragment_len_mode\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"conf2->max_fragment_len_mode\00", align 1
@.str.75 = private unnamed_addr constant [26 x i8] c"serv->servername_callback\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"serv2->servername_callback\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"serv->npn_protocols\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"serv2->npn_protocols\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"serv->alpn_protocols\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"serv2->alpn_protocols\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"serv->broken_session_ticket\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"serv2->broken_session_ticket\00", align 1
@.str.83 = private unnamed_addr constant [30 x i8] c"serv->session_ticket_app_data\00", align 1
@.str.84 = private unnamed_addr constant [31 x i8] c"serv2->session_ticket_app_data\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"serv->cert_status\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"serv2->cert_status\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"ssltest_good\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"foo,bar\00", align 1
@.str.89 = private unnamed_addr constant [50 x i8] c"fixture->expected_ctx->extra.client.npn_protocols\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@.str.91 = private unnamed_addr constant [59 x i8] c"fixture->expected_ctx->resume_extra.server2.alpn_protocols\00", align 1
@.str.92 = private unnamed_addr constant [63 x i8] c"ctx = SSL_TEST_CTX_create(conf, bad_configurations[idx], NULL)\00", align 1
@bad_configurations = internal unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.108, i32 0, i32 0)], align 16
@.str.93 = private unnamed_addr constant [23 x i8] c"ssltest_unknown_option\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"ssltest_wrong_section\00", align 1
@.str.95 = private unnamed_addr constant [32 x i8] c"ssltest_unknown_expected_result\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"ssltest_unknown_alert\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"ssltest_unknown_protocol\00", align 1
@.str.98 = private unnamed_addr constant [32 x i8] c"ssltest_unknown_verify_callback\00", align 1
@.str.99 = private unnamed_addr constant [27 x i8] c"ssltest_unknown_servername\00", align 1
@.str.100 = private unnamed_addr constant [36 x i8] c"ssltest_unknown_servername_callback\00", align 1
@.str.101 = private unnamed_addr constant [40 x i8] c"ssltest_unknown_session_ticket_expected\00", align 1
@.str.102 = private unnamed_addr constant [37 x i8] c"ssltest_unknown_compression_expected\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c"ssltest_unknown_session_id_expected\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"ssltest_unknown_method\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"ssltest_unknown_handshake_mode\00", align 1
@.str.106 = private unnamed_addr constant [36 x i8] c"ssltest_unknown_resumption_expected\00", align 1
@.str.107 = private unnamed_addr constant [30 x i8] c"ssltest_unknown_ct_validation\00", align 1
@.str.108 = private unnamed_addr constant [33 x i8] c"ssltest_invalid_max_fragment_len\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #3
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef null) #3
  store %struct.conf_st* %call1, %struct.conf_st** @conf, align 8, !tbaa !3
  %0 = bitcast %struct.conf_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* noundef %0) #3
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %1 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  %call6 = tail call i8* @test_get_argument(i64 noundef 0) #3
  %call7 = tail call i32 @NCONF_load(%struct.conf_st* noundef %1, i8* noundef %call6, i64* noundef null) #3
  %call8 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 252, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call7, i32 noundef 0) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %return, label %if.end11

if.end11:                                         ; preds = %if.end5
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 ()* noundef nonnull @test_empty_configuration) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 ()* noundef nonnull @test_good_configuration) #3
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 (i32)* noundef nonnull @test_bad_configuration, i32 noundef 16, i32 noundef 1) #3
  br label %return

return:                                           ; preds = %if.end5, %if.end, %if.end11, %if.then
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %if.then ], [ 0, %if.end ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #2

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @NCONF_load(%struct.conf_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #2

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_empty_configuration() #1 {
entry:
  %call = tail call fastcc %struct.ssl_test_ctx_test_fixture* @set_up(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0)) #4
  %cmp = icmp eq %struct.ssl_test_ctx_test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %test_section = getelementptr inbounds %struct.ssl_test_ctx_test_fixture, %struct.ssl_test_ctx_test_fixture* %call, i64 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8** %test_section, align 8, !tbaa !7
  %expected_ctx = getelementptr inbounds %struct.ssl_test_ctx_test_fixture, %struct.ssl_test_ctx_test_fixture* %call, i64 0, i32 2
  %0 = load %struct.SSL_TEST_CTX*, %struct.SSL_TEST_CTX** %expected_ctx, align 8, !tbaa !9
  %expected_result = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %0, i64 0, i32 7
  store i32 0, i32* %expected_result, align 8, !tbaa !10
  %call3 = tail call fastcc i32 @execute_test(%struct.ssl_test_ctx_test_fixture* noundef nonnull %call) #4
  tail call fastcc void @tear_down(%struct.ssl_test_ctx_test_fixture* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_good_configuration() #1 {
entry:
  %call = tail call fastcc %struct.ssl_test_ctx_test_fixture* @set_up(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0)) #4
  %cmp = icmp eq %struct.ssl_test_ctx_test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %test_section = getelementptr inbounds %struct.ssl_test_ctx_test_fixture, %struct.ssl_test_ctx_test_fixture* %call, i64 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i64 0, i64 0), i8** %test_section, align 8, !tbaa !7
  %expected_ctx = getelementptr inbounds %struct.ssl_test_ctx_test_fixture, %struct.ssl_test_ctx_test_fixture* %call, i64 0, i32 2
  %0 = load %struct.SSL_TEST_CTX*, %struct.SSL_TEST_CTX** %expected_ctx, align 8, !tbaa !9
  %1 = bitcast %struct.SSL_TEST_CTX* %0 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1024, i32 2048>, <4 x i32>* %1, align 8, !tbaa !16
  %expected_result = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %0, i64 0, i32 7
  %2 = bitcast i32* %expected_result to <4 x i32>*
  store <4 x i32> <i32 1, i32 48, i32 0, i32 770>, <4 x i32>* %2, align 8, !tbaa !16
  %expected_servername = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %0, i64 0, i32 11
  store i32 2, i32* %expected_servername, align 8, !tbaa !17
  %session_ticket_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %0, i64 0, i32 12
  store i32 1, i32* %session_ticket_expected, align 4, !tbaa !18
  %compression_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %0, i64 0, i32 13
  store i32 0, i32* %compression_expected, align 8, !tbaa !19
  %session_id_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %0, i64 0, i32 29
  store i32 0, i32* %session_id_expected, align 4, !tbaa !20
  %resumption_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %0, i64 0, i32 16
  store i32 1, i32* %resumption_expected, align 8, !tbaa !21
  %verify_callback = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %0, i64 0, i32 5, i32 0, i32 0
  store i32 3, i32* %verify_callback, align 8, !tbaa !22
  %servername = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %0, i64 0, i32 5, i32 0, i32 1
  store i32 2, i32* %servername, align 4, !tbaa !23
  %call17 = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 183) #3
  %3 = load %struct.SSL_TEST_CTX*, %struct.SSL_TEST_CTX** %expected_ctx, align 8, !tbaa !9
  %npn_protocols = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %3, i64 0, i32 5, i32 0, i32 3
  store i8* %call17, i8** %npn_protocols, align 8, !tbaa !24
  %call25 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.89, i64 0, i64 0), i8* noundef %call17) #3
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end27

if.end27:                                         ; preds = %if.end
  %4 = load %struct.SSL_TEST_CTX*, %struct.SSL_TEST_CTX** %expected_ctx, align 8, !tbaa !9
  %max_fragment_len_mode = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %4, i64 0, i32 5, i32 0, i32 2
  store i32 0, i32* %max_fragment_len_mode, align 8, !tbaa !25
  %servername_callback = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %4, i64 0, i32 5, i32 1, i32 0
  store i32 1, i32* %servername_callback, align 8, !tbaa !26
  %broken_session_ticket = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %4, i64 0, i32 5, i32 1, i32 3
  store i32 1, i32* %broken_session_ticket, align 8, !tbaa !27
  %call36 = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 193) #3
  %5 = load %struct.SSL_TEST_CTX*, %struct.SSL_TEST_CTX** %expected_ctx, align 8, !tbaa !9
  %alpn_protocols = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %5, i64 0, i32 6, i32 2, i32 2
  store i8* %call36, i8** %alpn_protocols, align 8, !tbaa !28
  %call42 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.91, i64 0, i64 0), i8* noundef %call36) #3
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup.sink.split, label %if.end45

if.end45:                                         ; preds = %if.end27
  %6 = load %struct.SSL_TEST_CTX*, %struct.SSL_TEST_CTX** %expected_ctx, align 8, !tbaa !9
  %ct_validation = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %6, i64 0, i32 6, i32 0, i32 5
  store i32 2, i32* %ct_validation, align 8, !tbaa !29
  %call51 = tail call fastcc i32 @execute_test(%struct.ssl_test_ctx_test_fixture* noundef nonnull %call) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.end27, %if.end45
  %retval.0.ph = phi i32 [ %call51, %if.end45 ], [ 0, %if.end27 ], [ 0, %if.end ]
  tail call fastcc void @tear_down(%struct.ssl_test_ctx_test_fixture* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bad_configuration(i32 noundef %idx) #1 {
entry:
  %0 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds [16 x i8*], [16 x i8*]* @bad_configurations, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !3
  %call = tail call %struct.SSL_TEST_CTX* @SSL_TEST_CTX_create(%struct.conf_st* noundef %0, i8* noundef %1, %struct.ossl_lib_ctx_st* noundef null) #3
  %2 = bitcast %struct.SSL_TEST_CTX* %call to i8*
  %call1 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.92, i64 0, i64 0), i8* noundef %2) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  tail call void @SSL_TEST_CTX_free(%struct.SSL_TEST_CTX* noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  tail call void @NCONF_free(%struct.conf_st* noundef %0) #3
  ret void
}

declare dso_local void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ssl_test_ctx_test_fixture* @set_up(i8* noundef %test_case_name) unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 114) #3
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i8* noundef %call) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.ssl_test_ctx_test_fixture*
  %test_case_name2 = bitcast i8* %call to i8**
  store i8* %test_case_name, i8** %test_case_name2, align 8, !tbaa !30
  %call3 = tail call %struct.SSL_TEST_CTX* @SSL_TEST_CTX_new(%struct.ossl_lib_ctx_st* noundef null) #3
  %expected_ctx = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %expected_ctx to %struct.SSL_TEST_CTX**
  store %struct.SSL_TEST_CTX* %call3, %struct.SSL_TEST_CTX** %1, align 8, !tbaa !9
  %2 = bitcast %struct.SSL_TEST_CTX* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0), i8* noundef %2) #3
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 118) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then6
  %retval.0 = phi %struct.ssl_test_ctx_test_fixture* [ null, %if.then6 ], [ null, %entry ], [ %0, %if.end ]
  ret %struct.ssl_test_ctx_test_fixture* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_test(%struct.ssl_test_ctx_test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %0 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  %test_section = getelementptr inbounds %struct.ssl_test_ctx_test_fixture, %struct.ssl_test_ctx_test_fixture* %fixture, i64 0, i32 1
  %1 = load i8*, i8** %test_section, align 8, !tbaa !7
  %expected_ctx = getelementptr inbounds %struct.ssl_test_ctx_test_fixture, %struct.ssl_test_ctx_test_fixture* %fixture, i64 0, i32 2
  %2 = load %struct.SSL_TEST_CTX*, %struct.SSL_TEST_CTX** %expected_ctx, align 8, !tbaa !9
  %libctx = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %2, i64 0, i32 32
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !31
  %call = tail call %struct.SSL_TEST_CTX* @SSL_TEST_CTX_create(%struct.conf_st* noundef %0, i8* noundef %1, %struct.ossl_lib_ctx_st* noundef %3) #3
  %4 = bitcast %struct.SSL_TEST_CTX* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.25, i64 0, i64 0), i8* noundef %4) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.SSL_TEST_CTX*, %struct.SSL_TEST_CTX** %expected_ctx, align 8, !tbaa !9
  %call3 = tail call fastcc i32 @testctx_eq(%struct.SSL_TEST_CTX* noundef %call, %struct.SSL_TEST_CTX* noundef %5) #4
  %tobool4.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool4.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false, %entry
  %success.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  tail call void @SSL_TEST_CTX_free(%struct.SSL_TEST_CTX* noundef %call) #3
  ret i32 %success.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @tear_down(%struct.ssl_test_ctx_test_fixture* noundef %fixture) unnamed_addr #1 {
entry:
  %expected_ctx = getelementptr inbounds %struct.ssl_test_ctx_test_fixture, %struct.ssl_test_ctx_test_fixture* %fixture, i64 0, i32 2
  %0 = load %struct.SSL_TEST_CTX*, %struct.SSL_TEST_CTX** %expected_ctx, align 8, !tbaa !9
  tail call void @SSL_TEST_CTX_free(%struct.SSL_TEST_CTX* noundef %0) #3
  %1 = bitcast %struct.ssl_test_ctx_test_fixture* %fixture to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 143) #3
  ret void
}

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.SSL_TEST_CTX* @SSL_TEST_CTX_new(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.SSL_TEST_CTX* @SSL_TEST_CTX_create(%struct.conf_st* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @testctx_eq(%struct.SSL_TEST_CTX* nocapture noundef readonly %ctx, %struct.SSL_TEST_CTX* nocapture noundef readonly %ctx2) unnamed_addr #1 {
entry:
  %method = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 0
  %0 = load i32, i32* %method, align 8, !tbaa !32
  %method1 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 0
  %1 = load i32, i32* %method1, align 8, !tbaa !32
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %handshake_mode = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 1
  %2 = load i32, i32* %handshake_mode, align 4, !tbaa !33
  %handshake_mode2 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 1
  %3 = load i32, i32* %handshake_mode2, align 4, !tbaa !33
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef %2, i32 noundef %3) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %return, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %app_data_size = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 2
  %4 = load i32, i32* %app_data_size, align 8, !tbaa !34
  %app_data_size6 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 2
  %5 = load i32, i32* %app_data_size6, align 8, !tbaa !34
  %call7 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i32 noundef %4, i32 noundef %5) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %max_fragment_size = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 3
  %6 = load i32, i32* %max_fragment_size, align 4, !tbaa !35
  %max_fragment_size10 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 3
  %7 = load i32, i32* %max_fragment_size10, align 4, !tbaa !35
  %call11 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i32 noundef %6, i32 noundef %7) #3
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %return, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %extra = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 5
  %extra14 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 5
  %call15 = tail call fastcc i32 @extraconf_eq(%struct.SSL_TEST_EXTRA_CONF* noundef nonnull %extra, %struct.SSL_TEST_EXTRA_CONF* noundef nonnull %extra14) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %return, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %resume_extra = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 6
  %resume_extra18 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 6
  %call19 = tail call fastcc i32 @extraconf_eq(%struct.SSL_TEST_EXTRA_CONF* noundef nonnull %resume_extra, %struct.SSL_TEST_EXTRA_CONF* noundef nonnull %resume_extra18) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %return, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %expected_result = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 7
  %8 = load i32, i32* %expected_result, align 8, !tbaa !10
  %expected_result22 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 7
  %9 = load i32, i32* %expected_result22, align 8, !tbaa !10
  %call23 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0), i32 noundef %8, i32 noundef %9) #3
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %return, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %expected_client_alert = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 8
  %10 = load i32, i32* %expected_client_alert, align 4, !tbaa !36
  %expected_client_alert26 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 8
  %11 = load i32, i32* %expected_client_alert26, align 4, !tbaa !36
  %call27 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0), i32 noundef %10, i32 noundef %11) #3
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %return, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %expected_server_alert = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 9
  %12 = load i32, i32* %expected_server_alert, align 8, !tbaa !37
  %expected_server_alert30 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 9
  %13 = load i32, i32* %expected_server_alert30, align 8, !tbaa !37
  %call31 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0), i32 noundef %12, i32 noundef %13) #3
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %return, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %expected_protocol = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 10
  %14 = load i32, i32* %expected_protocol, align 4, !tbaa !38
  %expected_protocol34 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 10
  %15 = load i32, i32* %expected_protocol34, align 4, !tbaa !38
  %call35 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i32 noundef %14, i32 noundef %15) #3
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %return, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false33
  %expected_servername = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 11
  %16 = load i32, i32* %expected_servername, align 8, !tbaa !17
  %expected_servername38 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 11
  %17 = load i32, i32* %expected_servername38, align 8, !tbaa !17
  %call39 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i64 0, i64 0), i32 noundef %16, i32 noundef %17) #3
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %return, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false37
  %session_ticket_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 12
  %18 = load i32, i32* %session_ticket_expected, align 4, !tbaa !18
  %session_ticket_expected42 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 12
  %19 = load i32, i32* %session_ticket_expected42, align 4, !tbaa !18
  %call43 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i64 0, i64 0), i32 noundef %18, i32 noundef %19) #3
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %return, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %compression_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 13
  %20 = load i32, i32* %compression_expected, align 8, !tbaa !19
  %compression_expected46 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 13
  %21 = load i32, i32* %compression_expected46, align 8, !tbaa !19
  %call47 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0), i32 noundef %20, i32 noundef %21) #3
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %return, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false45
  %expected_npn_protocol = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 14
  %22 = load i8*, i8** %expected_npn_protocol, align 8, !tbaa !39
  %expected_npn_protocol50 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 14
  %23 = load i8*, i8** %expected_npn_protocol50, align 8, !tbaa !39
  %call51 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0), i8* noundef %22, i8* noundef %23) #3
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %return, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false49
  %expected_alpn_protocol = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 15
  %24 = load i8*, i8** %expected_alpn_protocol, align 8, !tbaa !40
  %expected_alpn_protocol54 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 15
  %25 = load i8*, i8** %expected_alpn_protocol54, align 8, !tbaa !40
  %call55 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0), i8* noundef %24, i8* noundef %25) #3
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %return, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false53
  %expected_cipher = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 30
  %26 = load i8*, i8** %expected_cipher, align 8, !tbaa !41
  %expected_cipher58 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 30
  %27 = load i8*, i8** %expected_cipher58, align 8, !tbaa !41
  %call59 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i8* noundef %26, i8* noundef %27) #3
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %return, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false57
  %expected_session_ticket_app_data = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 31
  %28 = load i8*, i8** %expected_session_ticket_app_data, align 8, !tbaa !42
  %expected_session_ticket_app_data62 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 31
  %29 = load i8*, i8** %expected_session_ticket_app_data62, align 8, !tbaa !42
  %call63 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.55, i64 0, i64 0), i8* noundef %28, i8* noundef %29) #3
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %return, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false61
  %resumption_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 16
  %30 = load i32, i32* %resumption_expected, align 8, !tbaa !21
  %resumption_expected66 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 16
  %31 = load i32, i32* %resumption_expected66, align 8, !tbaa !21
  %call67 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i64 0, i64 0), i32 noundef %30, i32 noundef %31) #3
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %return, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false65
  %session_id_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 29
  %32 = load i32, i32* %session_id_expected, align 4, !tbaa !20
  %session_id_expected70 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx2, i64 0, i32 29
  %33 = load i32, i32* %session_id_expected70, align 4, !tbaa !20
  %call71 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i64 0, i64 0), i32 noundef %32, i32 noundef %33) #3
  %tobool72.not = icmp ne i32 %call71, 0
  %spec.select = zext i1 %tobool72.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false69, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17, %lor.lhs.false21, %lor.lhs.false25, %lor.lhs.false29, %lor.lhs.false33, %lor.lhs.false37, %lor.lhs.false41, %lor.lhs.false45, %lor.lhs.false49, %lor.lhs.false53, %lor.lhs.false57, %lor.lhs.false61, %lor.lhs.false65
  %retval.0 = phi i32 [ 0, %lor.lhs.false65 ], [ 0, %lor.lhs.false61 ], [ 0, %lor.lhs.false57 ], [ 0, %lor.lhs.false53 ], [ 0, %lor.lhs.false49 ], [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false37 ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false69 ]
  ret i32 %retval.0
}

declare dso_local void @SSL_TEST_CTX_free(%struct.SSL_TEST_CTX* noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @extraconf_eq(%struct.SSL_TEST_EXTRA_CONF* nocapture noundef readonly %extra, %struct.SSL_TEST_EXTRA_CONF* nocapture noundef readonly %extra2) unnamed_addr #1 {
entry:
  %client = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 0
  %client1 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra2, i64 0, i32 0
  %call = tail call fastcc i32 @clientconf_eq(%struct.SSL_TEST_CLIENT_CONF* noundef %client, %struct.SSL_TEST_CLIENT_CONF* noundef %client1) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call2 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %server = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 1
  %server3 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra2, i64 0, i32 1
  %call4 = tail call fastcc i32 @serverconf_eq(%struct.SSL_TEST_SERVER_CONF* noundef nonnull %server, %struct.SSL_TEST_SERVER_CONF* noundef nonnull %server3) #4
  %cmp5 = icmp ne i32 %call4, 0
  %conv6 = zext i1 %cmp5 to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv6) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %server2 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 2
  %server210 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra2, i64 0, i32 2
  %call11 = tail call fastcc i32 @serverconf_eq(%struct.SSL_TEST_SERVER_CONF* noundef nonnull %server2, %struct.SSL_TEST_SERVER_CONF* noundef nonnull %server210) #4
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv13) #3
  %tobool15.not = icmp ne i32 %call14, 0
  %spec.select = zext i1 %tobool15.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false9, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false9 ]
  ret i32 %retval.0
}

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @clientconf_eq(%struct.SSL_TEST_CLIENT_CONF* nocapture noundef readonly %conf1, %struct.SSL_TEST_CLIENT_CONF* nocapture noundef readonly %conf2) unnamed_addr #1 {
entry:
  %verify_callback = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %conf1, i64 0, i32 0
  %0 = load i32, i32* %verify_callback, align 8, !tbaa !43
  %verify_callback1 = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %conf2, i64 0, i32 0
  %1 = load i32, i32* %verify_callback1, align 8, !tbaa !43
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %servername = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %conf1, i64 0, i32 1
  %2 = load i32, i32* %servername, align 4, !tbaa !44
  %servername2 = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %conf2, i64 0, i32 1
  %3 = load i32, i32* %servername2, align 4, !tbaa !44
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i64 0, i64 0), i32 noundef %2, i32 noundef %3) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %return, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %npn_protocols = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %conf1, i64 0, i32 3
  %4 = load i8*, i8** %npn_protocols, align 8, !tbaa !45
  %npn_protocols6 = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %conf2, i64 0, i32 3
  %5 = load i8*, i8** %npn_protocols6, align 8, !tbaa !45
  %call7 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i64 0, i64 0), i8* noundef %4, i8* noundef %5) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %alpn_protocols = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %conf1, i64 0, i32 4
  %6 = load i8*, i8** %alpn_protocols, align 8, !tbaa !46
  %alpn_protocols10 = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %conf2, i64 0, i32 4
  %7 = load i8*, i8** %alpn_protocols10, align 8, !tbaa !46
  %call11 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i64 0, i64 0), i8* noundef %6, i8* noundef %7) #3
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %return, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %ct_validation = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %conf1, i64 0, i32 5
  %8 = load i32, i32* %ct_validation, align 8, !tbaa !47
  %ct_validation14 = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %conf2, i64 0, i32 5
  %9 = load i32, i32* %ct_validation14, align 8, !tbaa !47
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.72, i64 0, i64 0), i32 noundef %8, i32 noundef %9) #3
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %return, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %max_fragment_len_mode = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %conf1, i64 0, i32 2
  %10 = load i32, i32* %max_fragment_len_mode, align 8, !tbaa !48
  %max_fragment_len_mode18 = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %conf2, i64 0, i32 2
  %11 = load i32, i32* %max_fragment_len_mode18, align 8, !tbaa !48
  %call19 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i64 0, i64 0), i32 noundef %10, i32 noundef %11) #3
  %tobool20.not = icmp ne i32 %call19, 0
  %spec.select = zext i1 %tobool20.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false17, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13
  %retval.0 = phi i32 [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false17 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @serverconf_eq(%struct.SSL_TEST_SERVER_CONF* nocapture noundef readonly %serv, %struct.SSL_TEST_SERVER_CONF* nocapture noundef readonly %serv2) unnamed_addr #1 {
entry:
  %servername_callback = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %serv, i64 0, i32 0
  %0 = load i32, i32* %servername_callback, align 8, !tbaa !49
  %servername_callback1 = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %serv2, i64 0, i32 0
  %1 = load i32, i32* %servername_callback1, align 8, !tbaa !49
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %npn_protocols = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %serv, i64 0, i32 1
  %2 = load i8*, i8** %npn_protocols, align 8, !tbaa !50
  %npn_protocols2 = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %serv2, i64 0, i32 1
  %3 = load i8*, i8** %npn_protocols2, align 8, !tbaa !50
  %call3 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %return, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %alpn_protocols = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %serv, i64 0, i32 2
  %4 = load i8*, i8** %alpn_protocols, align 8, !tbaa !51
  %alpn_protocols6 = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %serv2, i64 0, i32 2
  %5 = load i8*, i8** %alpn_protocols6, align 8, !tbaa !51
  %call7 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.80, i64 0, i64 0), i8* noundef %4, i8* noundef %5) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %broken_session_ticket = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %serv, i64 0, i32 3
  %6 = load i32, i32* %broken_session_ticket, align 8, !tbaa !52
  %broken_session_ticket10 = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %serv2, i64 0, i32 3
  %7 = load i32, i32* %broken_session_ticket10, align 8, !tbaa !52
  %call11 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.82, i64 0, i64 0), i32 noundef %6, i32 noundef %7) #3
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %return, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %session_ticket_app_data = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %serv, i64 0, i32 8
  %8 = load i8*, i8** %session_ticket_app_data, align 8, !tbaa !53
  %session_ticket_app_data14 = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %serv2, i64 0, i32 8
  %9 = load i8*, i8** %session_ticket_app_data14, align 8, !tbaa !53
  %call15 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.83, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.84, i64 0, i64 0), i8* noundef %8, i8* noundef %9) #3
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %return, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %cert_status = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %serv, i64 0, i32 4
  %10 = load i32, i32* %cert_status, align 4, !tbaa !54
  %cert_status18 = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %serv2, i64 0, i32 4
  %11 = load i32, i32* %cert_status18, align 4, !tbaa !54
  %call19 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i64 0, i64 0), i32 noundef %10, i32 noundef %11) #3
  %tobool20.not = icmp ne i32 %call19, 0
  %spec.select = zext i1 %tobool20.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false17, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13
  %retval.0 = phi i32 [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false17 ]
  ret i32 %retval.0
}

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 8}
!8 = !{!"ssl_test_ctx_test_fixture", !4, i64 0, !4, i64 8, !4, i64 16}
!9 = !{!8, !4, i64 16}
!10 = !{!11, !5, i64 424}
!11 = !{!"", !5, i64 0, !5, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !13, i64 24, !13, i64 224, !5, i64 424, !12, i64 428, !12, i64 432, !12, i64 436, !5, i64 440, !5, i64 444, !12, i64 448, !4, i64 456, !4, i64 464, !12, i64 472, !12, i64 476, !12, i64 480, !12, i64 484, !12, i64 488, !4, i64 496, !12, i64 504, !12, i64 508, !12, i64 512, !4, i64 520, !12, i64 528, !12, i64 532, !12, i64 536, !5, i64 540, !4, i64 544, !4, i64 552, !4, i64 560}
!12 = !{!"int", !5, i64 0}
!13 = !{!"", !14, i64 0, !15, i64 72, !15, i64 136}
!14 = !{!"", !5, i64 0, !5, i64 4, !12, i64 8, !4, i64 16, !4, i64 24, !5, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !12, i64 64, !12, i64 68}
!15 = !{!"", !5, i64 0, !4, i64 8, !4, i64 16, !12, i64 24, !5, i64 28, !4, i64 32, !4, i64 40, !12, i64 48, !4, i64 56}
!16 = !{!5, !5, i64 0}
!17 = !{!11, !5, i64 440}
!18 = !{!11, !5, i64 444}
!19 = !{!11, !12, i64 448}
!20 = !{!11, !5, i64 540}
!21 = !{!11, !12, i64 472}
!22 = !{!11, !5, i64 24}
!23 = !{!11, !5, i64 28}
!24 = !{!11, !4, i64 40}
!25 = !{!11, !12, i64 32}
!26 = !{!11, !5, i64 96}
!27 = !{!11, !12, i64 120}
!28 = !{!11, !4, i64 376}
!29 = !{!11, !5, i64 256}
!30 = !{!8, !4, i64 0}
!31 = !{!11, !4, i64 560}
!32 = !{!11, !5, i64 0}
!33 = !{!11, !5, i64 4}
!34 = !{!11, !12, i64 8}
!35 = !{!11, !12, i64 12}
!36 = !{!11, !12, i64 428}
!37 = !{!11, !12, i64 432}
!38 = !{!11, !12, i64 436}
!39 = !{!11, !4, i64 456}
!40 = !{!11, !4, i64 464}
!41 = !{!11, !4, i64 544}
!42 = !{!11, !4, i64 552}
!43 = !{!14, !5, i64 0}
!44 = !{!14, !5, i64 4}
!45 = !{!14, !4, i64 16}
!46 = !{!14, !4, i64 24}
!47 = !{!14, !5, i64 32}
!48 = !{!14, !12, i64 8}
!49 = !{!15, !5, i64 0}
!50 = !{!15, !4, i64 8}
!51 = !{!15, !4, i64 16}
!52 = !{!15, !12, i64 24}
!53 = !{!15, !4, i64 56}
!54 = !{!15, !5, i64 28}
