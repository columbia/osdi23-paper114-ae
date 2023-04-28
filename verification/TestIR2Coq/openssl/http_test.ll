; ModuleID = 'test/http_test.c'
source_filename = "test/http_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_st = type opaque
%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ASN1_ITEM_st = type opaque
%struct.server_args = type { %struct.bio_st*, i8, i32 }
%struct.bio_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_method_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.ossl_http_req_ctx_st = type opaque
%struct.stack_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }

@x509 = internal unnamed_addr global %struct.x509_st* null, align 8
@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [30 x i8] c"Usage: %s [options] cert.pem\0A\00", align 1
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
@x509_it = internal unnamed_addr global %struct.ASN1_ITEM_st* null, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"test/http_test.c\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"(x509 = load_cert_pem(test_get_argument(0), NULL))\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"test_http_url_dns\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"test_http_url_path_query\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"test_http_url_userinfo_query_fragment\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"test_http_url_ipv4\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"test_http_url_ipv6\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"test_http_url_invalid_prefix\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"test_http_url_invalid_port\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"test_http_url_invalid_path\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"test_http_get_x509\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"test_http_post_x509\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"test_http_keep_alive_0_no_no\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"test_http_keep_alive_1_no_no\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"test_http_keep_alive_0_prefer_yes\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"test_http_keep_alive_1_prefer_yes\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"test_http_keep_alive_0_require_yes\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"test_http_keep_alive_1_require_yes\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"test_http_keep_alive_0_require_no\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"test_http_keep_alive_1_require_no\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"host:65535/path\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"65535\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"/path\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"sscanf(exp_port, \22%d\22, &exp_num)\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.41 = private unnamed_addr constant [80 x i8] c"OSSL_HTTP_parse_url(url, &ssl, &user, &host, &port, &num, &path, &query, &frag)\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"exp_host\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"exp_port\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"exp_num\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"exp_path\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"exp_ssl\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"\22user:pass\22\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"user:pass\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"frag\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"\22fr\22\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"\22q\22\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"http://usr@host:1/p?q=x#frag\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"/p?q=x\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"http://host?query#frag\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"/?query\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"http://host:9999#frag\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.66 = private unnamed_addr constant [75 x i8] c"OSSL_HTTP_parse_url(url, NULL, NULL, &host, NULL, NULL, &path, NULL, NULL)\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"\22host\22\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"exp_path_qu\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"user:pass@host/p?q#fr\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"/p\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"https://1.2.3.4/p/q\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"1.2.3.4\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"443\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"/p/q\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"http://[FF01::101]:6\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"[FF01::101]\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"htttps://1.2.3.4:65535/pkix\00", align 1
@.str.80 = private unnamed_addr constant [76 x i8] c"OSSL_HTTP_parse_url(url, &ssl, NULL, &host, &port, &num, &path, NULL, NULL)\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"https://1.2.3.4:65536/pkix\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"https://[FF01::101]pkix\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"/will-be-redirected\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"/path/result.crt\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"rcert\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"X509_cmp(x509, rcert)\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.89 = private unnamed_addr constant [44 x i8] c"count >= 5 && strncmp(hdr, \22POST \22, 5) == 0\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"POST \00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"HTTP/1.\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"++hdr\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"\22HTTP/1.\22\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"'0'\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"*hdr\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"*hdr++\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"'1'\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"'\\r'\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"'\\n'\00", align 1
@.str.100 = private unnamed_addr constant [50 x i8] c"HTTP/1.%c 301 Moved Permanently\0D\0ALocation: %s\0D\0A\0D\0A\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"HTTP/1.%c 200 OK\0D\0A\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"Connection: %s\0D\0A\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.105 = private unnamed_addr constant [65 x i8] c"Content-Type: application/x-x509-ca-cert\0D\0AContent-Length: %d\0D\0A\0D\0A\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"Connection: \00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@__const.test_http_keep_alive.mock_args = private unnamed_addr constant %struct.server_args { %struct.bio_st* null, i8 48, i32 0 }, align 8
@.str.108 = private unnamed_addr constant [27 x i8] c"application/x-x509-ca-cert\00", align 16
@.str.109 = private unnamed_addr constant [4 x i8] c"rsp\00", align 1
@.str.110 = private unnamed_addr constant [25 x i8] c"OSSL_HTTP_is_alive(rctx)\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"keep_alive > 0\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load %struct.x509_st*, %struct.x509_st** @x509, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %0) #7
  ret void
}

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #2 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @test_skip_common_options() #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ASN1_ITEM_st* @X509_it() #7
  store %struct.ASN1_ITEM_st* %call1, %struct.ASN1_ITEM_st** @x509_it, align 8, !tbaa !3
  %call2 = tail call i8* @test_get_argument(i64 noundef 0) #7
  %call3 = tail call %struct.x509_st* @load_cert_pem(i8* noundef %call2, %struct.ossl_lib_ctx_st* noundef null) #7
  store %struct.x509_st* %call3, %struct.x509_st** @x509, align 8, !tbaa !3
  %0 = bitcast %struct.x509_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 372, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i8* noundef %0) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 ()* noundef nonnull @test_http_url_dns) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 ()* noundef nonnull @test_http_url_path_query) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i32 ()* noundef nonnull @test_http_url_userinfo_query_fragment) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 ()* noundef nonnull @test_http_url_ipv4) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i32 ()* noundef nonnull @test_http_url_ipv6) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 ()* noundef nonnull @test_http_url_invalid_prefix) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 ()* noundef nonnull @test_http_url_invalid_port) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i32 ()* noundef nonnull @test_http_url_invalid_path) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 ()* noundef nonnull @test_http_get_x509) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32 ()* noundef nonnull @test_http_post_x509) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 ()* noundef nonnull @test_http_keep_alive_0_no_no) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i32 ()* noundef nonnull @test_http_keep_alive_1_no_no) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0), i32 ()* noundef nonnull @test_http_keep_alive_0_prefer_yes) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i32 ()* noundef nonnull @test_http_keep_alive_1_prefer_yes) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0), i32 ()* noundef nonnull @test_http_keep_alive_0_require_yes) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i32 ()* noundef nonnull @test_http_keep_alive_1_require_yes) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 ()* noundef nonnull @test_http_keep_alive_0_require_no) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i32 ()* noundef nonnull @test_http_keep_alive_1_require_no) #7
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ 1, %if.end7 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #1

declare dso_local %struct.ASN1_ITEM_st* @X509_it() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.x509_st* @load_cert_pem(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_url_dns() #0 {
entry:
  %call = tail call fastcc i32 @test_http_url_ok(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0)) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_url_path_query() #0 {
entry:
  %call = tail call fastcc i32 @test_http_url_path_query_ok(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0)) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @test_http_url_path_query_ok(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0)) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = tail call fastcc i32 @test_http_url_path_query_ok(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0)) #8
  %tobool4 = icmp ne i32 %call3, 0
  %phi.cast = zext i1 %tobool4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %0 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_url_userinfo_query_fragment() #0 {
entry:
  %call = tail call fastcc i32 @test_http_url_ok(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.69, i64 0, i64 0), i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0)) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_url_ipv4() #0 {
entry:
  %call = tail call fastcc i32 @test_http_url_ok(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.72, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0)) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_url_ipv6() #0 {
entry:
  %call = tail call fastcc i32 @test_http_url_ok(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i64 0, i64 0), i32 noundef 0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0)) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_url_invalid_prefix() #0 {
entry:
  %call = tail call fastcc i32 @test_http_url_invalid(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.79, i64 0, i64 0)) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_url_invalid_port() #0 {
entry:
  %call = tail call fastcc i32 @test_http_url_invalid(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.81, i64 0, i64 0)) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_url_invalid_path() #0 {
entry:
  %call = tail call fastcc i32 @test_http_url_invalid(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.82, i64 0, i64 0)) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_get_x509() #0 {
entry:
  %call = tail call fastcc i32 @test_http_x509(i32 noundef 1) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_post_x509() #0 {
entry:
  %call = tail call fastcc i32 @test_http_x509(i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_keep_alive_0_no_no() #0 {
entry:
  %call = tail call fastcc i32 @test_http_keep_alive(i8 noundef signext 48, i32 noundef 0, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_keep_alive_1_no_no() #0 {
entry:
  %call = tail call fastcc i32 @test_http_keep_alive(i8 noundef signext 49, i32 noundef 0, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_keep_alive_0_prefer_yes() #0 {
entry:
  %call = tail call fastcc i32 @test_http_keep_alive(i8 noundef signext 48, i32 noundef 1, i32 noundef 1) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_keep_alive_1_prefer_yes() #0 {
entry:
  %call = tail call fastcc i32 @test_http_keep_alive(i8 noundef signext 49, i32 noundef 1, i32 noundef 1) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_keep_alive_0_require_yes() #0 {
entry:
  %call = tail call fastcc i32 @test_http_keep_alive(i8 noundef signext 48, i32 noundef 2, i32 noundef 1) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_keep_alive_1_require_yes() #0 {
entry:
  %call = tail call fastcc i32 @test_http_keep_alive(i8 noundef signext 49, i32 noundef 2, i32 noundef 1) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_keep_alive_0_require_no() #0 {
entry:
  %call = tail call fastcc i32 @test_http_keep_alive(i8 noundef signext 48, i32 noundef 2, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_http_keep_alive_1_require_no() #0 {
entry:
  %call = tail call fastcc i32 @test_http_keep_alive(i8 noundef signext 49, i32 noundef 2, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_http_url_ok(i8* noundef %url, i32 noundef %exp_ssl, i8* noundef %exp_host, i8* noundef %exp_port, i8* noundef %exp_path) unnamed_addr #0 {
entry:
  %user = alloca i8*, align 8
  %host = alloca i8*, align 8
  %port = alloca i8*, align 8
  %path = alloca i8*, align 8
  %query = alloca i8*, align 8
  %frag = alloca i8*, align 8
  %exp_num = alloca i32, align 4
  %num = alloca i32, align 4
  %ssl = alloca i32, align 4
  %0 = bitcast i8** %user to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i8** %host to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast i8** %port to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %3 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  %4 = bitcast i8** %query to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = bitcast i8** %frag to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  %6 = bitcast i32* %exp_num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  %7 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %8 = bitcast i32* %ssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #9
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %exp_port, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i32* noundef nonnull %exp_num) #7
  %call1 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i32 noundef %call, i32 noundef 1) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @OSSL_HTTP_parse_url(i8* noundef %url, i32* noundef nonnull %ssl, i8** noundef nonnull %user, i8** noundef nonnull %host, i8** noundef nonnull %port, i32* noundef nonnull %num, i8** noundef nonnull %path, i8** noundef nonnull %query, i8** noundef nonnull %frag) #7
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end41, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8*, i8** %host, align 8, !tbaa !3
  %call5 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i8* noundef %9, i8* noundef %exp_host) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end41, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %10 = load i8*, i8** %port, align 8, !tbaa !3
  %call8 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i8* noundef %10, i8* noundef %exp_port) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end41, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %11 = load i32, i32* %num, align 4, !tbaa !7
  %12 = load i32, i32* %exp_num, align 4, !tbaa !7
  %call11 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i32 noundef %11, i32 noundef %12) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end41, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %13 = load i8*, i8** %path, align 8, !tbaa !3
  %call14 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i8* noundef %13, i8* noundef %exp_path) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end41, label %land.end

land.end:                                         ; preds = %land.lhs.true13
  %14 = load i32, i32* %ssl, align 4, !tbaa !7
  %call16 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i32 noundef %14, i32 noundef %exp_ssl) #7
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end41, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.end
  %15 = load i8*, i8** %user, align 8, !tbaa !3
  %16 = load i8, i8* %15, align 1, !tbaa !9
  %cmp21.not = icmp eq i8 %16, 0
  br i1 %cmp21.not, label %land.lhs.true27, label %if.end25

if.end25:                                         ; preds = %land.lhs.true19
  %call24 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8* noundef nonnull %15, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0)) #7
  %tobool26.not = icmp eq i32 %call24, 0
  br i1 %tobool26.not, label %if.end41, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true19, %if.end25
  %res.062 = phi i32 [ %call24, %if.end25 ], [ 1, %land.lhs.true19 ]
  %17 = load i8*, i8** %frag, align 8, !tbaa !3
  %18 = load i8, i8* %17, align 1, !tbaa !9
  %cmp29.not = icmp eq i8 %18, 0
  br i1 %cmp29.not, label %land.lhs.true35, label %if.end33

if.end33:                                         ; preds = %land.lhs.true27
  %call32 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* noundef nonnull %17, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #7
  %tobool34.not = icmp eq i32 %call32, 0
  br i1 %tobool34.not, label %if.end41, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.lhs.true27, %if.end33
  %res.168 = phi i32 [ %call32, %if.end33 ], [ %res.062, %land.lhs.true27 ]
  %19 = load i8*, i8** %query, align 8, !tbaa !3
  %20 = load i8, i8* %19, align 1, !tbaa !9
  %cmp37.not = icmp eq i8 %20, 0
  br i1 %cmp37.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %land.lhs.true35
  %call40 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i8* noundef nonnull %19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0)) #7
  br label %if.end41

if.end41:                                         ; preds = %if.end, %land.lhs.true, %land.lhs.true7, %land.lhs.true10, %land.lhs.true13, %land.end, %if.end25, %if.then39, %land.lhs.true35, %if.end33
  %res.2 = phi i32 [ %call40, %if.then39 ], [ %res.168, %land.lhs.true35 ], [ 0, %if.end33 ], [ 0, %if.end25 ], [ 0, %land.end ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true10 ], [ 0, %land.lhs.true7 ], [ 0, %land.lhs.true ], [ 0, %if.end ]
  %21 = load i8*, i8** %user, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %21, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 225) #7
  %22 = load i8*, i8** %host, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %22, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 226) #7
  %23 = load i8*, i8** %port, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %23, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 227) #7
  %24 = load i8*, i8** %path, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %24, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 228) #7
  %25 = load i8*, i8** %query, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %25, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 229) #7
  %26 = load i8*, i8** %frag, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %26, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 230) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end41
  %retval.0 = phi i32 [ %res.2, %if.end41 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_HTTP_parse_url(i8* noundef, i32* noundef, i8** noundef, i8** noundef, i8** noundef, i32* noundef, i8** noundef, i8** noundef, i8** noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_http_url_path_query_ok(i8* noundef %url, i8* noundef %exp_path_qu) unnamed_addr #0 {
entry:
  %host = alloca i8*, align 8
  %path = alloca i8*, align 8
  %0 = bitcast i8** %host to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %call = call i32 @OSSL_HTTP_parse_url(i8* noundef %url, i32* noundef null, i8** noundef null, i8** noundef nonnull %host, i8** noundef null, i32* noundef null, i8** noundef nonnull %path, i8** noundef null, i8** noundef null) #7
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %host, align 8, !tbaa !3
  %call2 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i8* noundef %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i8*, i8** %path, align 8, !tbaa !3
  %call4 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i8* noundef %3, i8* noundef %exp_path_qu) #7
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %4 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  %5 = load i8*, i8** %host, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 243) #7
  %6 = load i8*, i8** %path, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 244) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_http_url_invalid(i8* noundef %url) unnamed_addr #0 {
entry:
  %host = alloca i8*, align 8
  %port = alloca i8*, align 8
  %path = alloca i8*, align 8
  %num = alloca i32, align 4
  %ssl = alloca i32, align 4
  %0 = bitcast i8** %host to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i8** %host, align 8, !tbaa !3
  %1 = bitcast i8** %port to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i8** %port, align 8, !tbaa !3
  %2 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i8** %path, align 8, !tbaa !3
  %3 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  store i32 1, i32* %num, align 4, !tbaa !7
  %4 = bitcast i32* %ssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store i32 1, i32* %ssl, align 4, !tbaa !7
  %call = call i32 @OSSL_HTTP_parse_url(i8* noundef %url, i32* noundef nonnull %ssl, i8** noundef null, i8** noundef nonnull %host, i8** noundef nonnull %port, i32* noundef nonnull %num, i8** noundef nonnull %path, i8** noundef null, i8** noundef null) #7
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_false(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.80, i64 0, i64 0), i32 noundef %conv) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %host, align 8, !tbaa !3
  %call2 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* noundef %5) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %6 = load i8*, i8** %port, align 8, !tbaa !3
  %call5 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 284, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8* noundef %6) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then, label %land.end

land.end:                                         ; preds = %land.lhs.true4
  %7 = load i8*, i8** %path, align 8, !tbaa !3
  %call7 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* noundef %7) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %land.lhs.true, %land.lhs.true4, %land.end
  %8 = load i8*, i8** %host, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 287) #7
  %9 = load i8*, i8** %port, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 288) #7
  %10 = load i8*, i8** %path, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 289) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %11 = phi i32 [ 0, %if.then ], [ 1, %land.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %11
}

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_http_x509(i32 noundef %do_get) unnamed_addr #0 {
entry:
  %mock_args = alloca %struct.server_args, align 8
  %content_type = alloca [27 x i8], align 16
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #7
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #7
  %call2 = tail call %struct.bio_method_st* @BIO_s_mem() #7
  %call3 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call2) #7
  %0 = bitcast %struct.server_args* %mock_args to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.server_args* @__const.test_http_keep_alive.mock_args to i8*), i64 16, i1 false)
  %1 = load %struct.ASN1_ITEM_st*, %struct.ASN1_ITEM_st** @x509_it, align 8, !tbaa !3
  %2 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** bitcast (%struct.x509_st** @x509 to %struct.ASN1_VALUE_st**), align 8, !tbaa !3
  %call4 = tail call %struct.bio_st* @ASN1_item_i2d_mem_bio(%struct.ASN1_ITEM_st* noundef %1, %struct.ASN1_VALUE_st* noundef %2) #7
  %3 = getelementptr inbounds [27 x i8], [27 x i8]* %content_type, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 27, i8* nonnull %3) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(27) %3, i8* noundef nonnull align 16 dereferenceable(27) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.108, i64 0, i64 0), i64 27, i1 false)
  %cmp = icmp eq %struct.bio_st* %call1, null
  %cmp5 = icmp eq %struct.bio_st* %call3, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  %cmp7 = icmp eq %struct.bio_st* %call4, null
  %or.cond24 = select i1 %or.cond, i1 true, i1 %cmp7
  br i1 %or.cond24, label %err, label %if.end

if.end:                                           ; preds = %entry
  %out = getelementptr inbounds %struct.server_args, %struct.server_args* %mock_args, i64 0, i32 0
  store %struct.bio_st* %call3, %struct.bio_st** %out, align 8, !tbaa !10
  tail call void @BIO_set_callback_ex(%struct.bio_st* noundef nonnull %call1, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef nonnull @http_bio_cb_ex) #7
  call void @BIO_set_callback_arg(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %0) #7
  %tobool.not = icmp eq i32 %do_get, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %call8 = call %struct.bio_st* @OSSL_HTTP_get(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* noundef null, i8* noundef null, %struct.bio_st* noundef nonnull %call1, %struct.bio_st* noundef nonnull %call3, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef null, i8* noundef null, i32 noundef 0, %struct.stack_st_CONF_VALUE* noundef null, i8* noundef nonnull %3, i32 noundef 1, i64 noundef 102400, i32 noundef 0) #7
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call11 = call %struct.bio_st* @OSSL_HTTP_transfer(%struct.ossl_http_req_ctx_st** noundef null, i8* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i64 0, i64 0), i32 noundef 0, i8* noundef null, i8* noundef null, %struct.bio_st* noundef nonnull %call1, %struct.bio_st* noundef nonnull %call3, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef null, i8* noundef null, i32 noundef 0, %struct.stack_st_CONF_VALUE* noundef null, i8* noundef nonnull %3, %struct.bio_st* noundef nonnull %call4, i8* noundef nonnull %3, i32 noundef 1, i64 noundef 102400, i32 noundef 0, i32 noundef 0) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.bio_st* [ %call8, %cond.true ], [ %call11, %cond.false ]
  %call12 = call %struct.x509_st* @d2i_X509_bio(%struct.bio_st* noundef %cond, %struct.x509_st** noundef null) #7
  %call13 = call i32 @BIO_free(%struct.bio_st* noundef %cond) #7
  %4 = bitcast %struct.x509_st* %call12 to i8*
  %call14 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* noundef %4) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %land.rhs

land.rhs:                                         ; preds = %cond.end
  %5 = load %struct.x509_st*, %struct.x509_st** @x509, align 8, !tbaa !3
  %call16 = call i32 @X509_cmp(%struct.x509_st* noundef %5, %struct.x509_st* noundef %call12) #7
  %call17 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), i32 noundef %call16, i32 noundef 0) #7
  %tobool18 = icmp ne i32 %call17, 0
  %phi.cast = zext i1 %tobool18 to i32
  br label %err

err:                                              ; preds = %cond.end, %land.rhs, %entry
  %rcert.0 = phi %struct.x509_st* [ null, %entry ], [ %call12, %land.rhs ], [ %call12, %cond.end ]
  %res.0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ], [ 0, %cond.end ]
  call void @X509_free(%struct.x509_st* noundef %rcert.0) #7
  %call19 = call i32 @BIO_free(%struct.bio_st* noundef %call4) #7
  %call20 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #7
  %call21 = call i32 @BIO_free(%struct.bio_st* noundef %call3) #7
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef null, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #7
  call void @llvm.lifetime.end.p0i8(i64 27, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  ret i32 %res.0
}

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local %struct.bio_st* @ASN1_item_i2d_mem_bio(%struct.ASN1_ITEM_st* noundef, %struct.ASN1_VALUE_st* noundef) local_unnamed_addr #1

declare dso_local void @BIO_set_callback_ex(%struct.bio_st* noundef, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @http_bio_cb_ex(%struct.bio_st* noundef %bio, i32 noundef %oper, i8* nocapture noundef readnone %argp, i64 noundef %len, i32 noundef %cmd, i64 noundef %argl, i32 noundef %ret, i64* nocapture noundef readnone %processed) #0 {
entry:
  %call = tail call i8* @BIO_get_callback_arg(%struct.bio_st* noundef %bio) #7
  %cmp = icmp eq i32 %oper, 134
  %cmp1 = icmp eq i32 %cmd, 11
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %out = bitcast i8* %call to %struct.bio_st**
  %0 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !10
  %1 = getelementptr inbounds i8, i8* %call, i64 8
  %2 = load i8, i8* %1, align 8, !tbaa !12
  %keep_alive = getelementptr inbounds i8, i8* %call, i64 12
  %3 = bitcast i8* %keep_alive to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %5 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** bitcast (%struct.x509_st** @x509 to %struct.ASN1_VALUE_st**), align 8, !tbaa !3
  %6 = load %struct.ASN1_ITEM_st*, %struct.ASN1_ITEM_st** @x509_it, align 8, !tbaa !3
  %call2 = tail call fastcc i32 @mock_http_server(%struct.bio_st* noundef %bio, %struct.bio_st* noundef %0, i8 noundef signext %2, i32 noundef %4, %struct.ASN1_VALUE_st* noundef %5, %struct.ASN1_ITEM_st* noundef %6) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.addr.0 = phi i32 [ %call2, %if.then ], [ %ret, %entry ]
  %conv = sext i32 %ret.addr.0 to i64
  ret i64 %conv
}

declare dso_local void @BIO_set_callback_arg(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @OSSL_HTTP_get(i8* noundef, i8* noundef, i8* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef, i8* noundef, i32 noundef, %struct.stack_st_CONF_VALUE* noundef, i8* noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @OSSL_HTTP_transfer(%struct.ossl_http_req_ctx_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef, i8* noundef, i32 noundef, %struct.stack_st_CONF_VALUE* noundef, i8* noundef, %struct.bio_st* noundef, i8* noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.x509_st* @d2i_X509_bio(%struct.bio_st* noundef, %struct.x509_st** noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @X509_cmp(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare dso_local void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #1

declare dso_local i8* @BIO_get_callback_arg(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @mock_http_server(%struct.bio_st* noundef %in, %struct.bio_st* noundef %out, i8 noundef signext %version, i32 noundef %keep_alive, %struct.ASN1_VALUE_st* noundef %rsp, %struct.ASN1_ITEM_st* noundef %it) unnamed_addr #0 {
entry:
  %req = alloca i8*, align 8
  %0 = bitcast i8** %req to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %in, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #7
  %1 = load i8*, i8** %req, align 8, !tbaa !3
  %cmp = icmp sgt i64 %call, 3
  br i1 %cmp, label %land.end, label %land.end7

land.end:                                         ; preds = %entry
  %call1 = call i32 @strncmp(i8* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0), i64 noundef 4) #10
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end15, label %if.else

if.else:                                          ; preds = %land.end
  %cmp3 = icmp ugt i64 %call, 4
  br i1 %cmp3, label %land.rhs4, label %land.end7

land.rhs4:                                        ; preds = %if.else
  %call5 = call i32 @strncmp(i8* noundef %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i64 0, i64 0), i64 noundef 5) #10
  %cmp6 = icmp eq i32 %call5, 0
  %phi.cast = zext i1 %cmp6 to i32
  br label %land.end7

land.end7:                                        ; preds = %entry, %land.rhs4, %if.else
  %2 = phi i32 [ 0, %if.else ], [ %phi.cast, %land.rhs4 ], [ 0, %entry ]
  %call10 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.89, i64 0, i64 0), i32 noundef %2) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %land.end7, %land.end
  %.sink = phi i64 [ 4, %land.end ], [ 5, %land.end7 ]
  %3 = phi i1 [ true, %land.end ], [ false, %land.end7 ]
  %add.ptr13 = getelementptr inbounds i8, i8* %1, i64 %.sink
  %call16 = call i8* @strchr(i8* noundef nonnull %add.ptr13, i32 noundef 32) #10
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end15
  %call21 = call i64 @strlen(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i64 0, i64 0)) #10
  %incdec.ptr = getelementptr inbounds i8, i8* %call16, i64 1
  %sext = shl i64 %call21, 32
  %conv23 = ashr exact i64 %sext, 32
  %call25 = call i32 @test_strn_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i64 0, i64 0), i8* noundef nonnull %incdec.ptr, i64 noundef %conv23, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i64 0, i64 0), i64 noundef %conv23) #7
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end20
  %add.ptr29 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %conv23
  %4 = load i8, i8* %add.ptr29, align 1, !tbaa !9
  %call30 = call i32 @test_char_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i64 0, i64 0), i8 noundef signext 48, i8 noundef signext %4) #7
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end28
  %incdec.ptr32 = getelementptr inbounds i8, i8* %add.ptr29, i64 1
  %5 = load i8, i8* %add.ptr29, align 1, !tbaa !9
  %call33 = call i32 @test_char_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0), i8 noundef signext %5, i8 noundef signext 49) #7
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %if.end36

if.end36:                                         ; preds = %lor.lhs.false
  %incdec.ptr37 = getelementptr inbounds i8, i8* %incdec.ptr32, i64 1
  %6 = load i8, i8* %incdec.ptr32, align 1, !tbaa !9
  %call38 = call i32 @test_char_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i64 0, i64 0), i8 noundef signext %6, i8 noundef signext 13) #7
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.end36
  %incdec.ptr41 = getelementptr inbounds i8, i8* %incdec.ptr37, i64 1
  %7 = load i8, i8* %incdec.ptr37, align 1, !tbaa !9
  %call42 = call i32 @test_char_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i64 0, i64 0), i8 noundef signext %7, i8 noundef signext 10) #7
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false40
  %8 = load i8*, i8** %req, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr41 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i64 %sub.ptr.sub.neg, %call
  %cmp46 = icmp slt i64 %sub, 0
  %cmp49 = icmp eq %struct.bio_st* %out, null
  %or.cond = or i1 %cmp49, %cmp46
  br i1 %or.cond, label %cleanup, label %if.end52

if.end52:                                         ; preds = %if.end45
  %call53 = call i64 @strlen(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i64 0, i64 0)) #10
  %call54 = call i32 @strncmp(i8* noundef nonnull %add.ptr13, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i64 0, i64 0), i64 noundef %call53) #10
  %cmp55.not = icmp eq i32 %call54, 0
  br i1 %cmp55.not, label %if.end65, label %if.then57

if.then57:                                        ; preds = %if.end52
  br i1 %3, label %if.end60, label %cleanup

if.end60:                                         ; preds = %if.then57
  %conv61 = sext i8 %version to i32
  %call62 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %out, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.100, i64 0, i64 0), i32 noundef %conv61, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i64 0, i64 0)) #7
  %cmp63 = icmp sgt i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  br label %cleanup

if.end65:                                         ; preds = %if.end52
  %conv66 = sext i8 %version to i32
  %call67 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %out, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i64 0, i64 0), i32 noundef %conv66) #7
  %cmp68 = icmp slt i32 %call67, 1
  br i1 %cmp68, label %cleanup, label %if.end71

if.end71:                                         ; preds = %if.end65
  %cmp73 = icmp eq i8 %version, 48
  %conv74 = zext i1 %cmp73 to i32
  %cmp75 = icmp eq i32 %conv74, %keep_alive
  br i1 %cmp75, label %if.then77, label %if.end86

if.then77:                                        ; preds = %if.end71
  %cond = select i1 %cmp73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i64 0, i64 0)
  %call81 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.102, i64 0, i64 0), i8* noundef %cond) #7
  %cmp82 = icmp slt i32 %call81, 1
  br i1 %cmp82, label %cleanup, label %if.end86

if.end86:                                         ; preds = %if.then77, %if.end71
  br i1 %3, label %if.then88, label %if.else100

if.then88:                                        ; preds = %if.end86
  %call89 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %rsp, i8** noundef null, %struct.ASN1_ITEM_st* noundef %it) #7
  %cmp90 = icmp slt i32 %call89, 1
  br i1 %cmp90, label %cleanup, label %if.end93

if.end93:                                         ; preds = %if.then88
  %call94 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %out, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.105, i64 0, i64 0), i32 noundef %call89) #7
  %cmp95 = icmp slt i32 %call94, 1
  br i1 %cmp95, label %cleanup, label %if.end98

if.end98:                                         ; preds = %if.end93
  %9 = bitcast %struct.ASN1_VALUE_st* %rsp to i8*
  %call99 = call i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef %it, %struct.bio_st* noundef nonnull %out, i8* noundef %9) #7
  br label %cleanup

if.else100:                                       ; preds = %if.end86
  %call101 = call i64 @strlen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i64 0, i64 0)) #10
  %sext173 = shl i64 %call101, 32
  %conv103 = ashr exact i64 %sext173, 32
  %call104 = call i32 @strncmp(i8* noundef nonnull %incdec.ptr41, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i64 0, i64 0), i64 noundef %conv103) #10
  %cmp105 = icmp eq i32 %call104, 0
  br i1 %cmp105, label %if.then107, label %if.end116

if.then107:                                       ; preds = %if.else100
  %add.ptr109 = getelementptr inbounds i8, i8* %incdec.ptr41, i64 %conv103
  %call110 = call i8* @strstr(i8* noundef nonnull %add.ptr109, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0)) #10
  %cmp111 = icmp eq i8* %call110, null
  br i1 %cmp111, label %cleanup, label %if.end114

if.end114:                                        ; preds = %if.then107
  %add.ptr115 = getelementptr inbounds i8, i8* %call110, i64 2
  br label %if.end116

if.end116:                                        ; preds = %if.end114, %if.else100
  %hdr.1 = phi i8* [ %add.ptr115, %if.end114 ], [ %incdec.ptr41, %if.else100 ]
  %conv117 = trunc i64 %sub to i32
  %call118 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %out, i8* noundef nonnull %hdr.1, i32 noundef %conv117) #7
  %conv119 = sext i32 %call118 to i64
  %cmp120 = icmp eq i64 %sub, %conv119
  %conv121 = zext i1 %cmp120 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %if.end93, %if.then88, %if.then77, %if.end65, %if.then57, %if.end45, %if.end36, %lor.lhs.false40, %if.end28, %lor.lhs.false, %if.end20, %if.end15, %land.end7, %if.end116, %if.end98, %if.end60
  %retval.0 = phi i32 [ %conv64, %if.end60 ], [ %call99, %if.end98 ], [ %conv121, %if.end116 ], [ 0, %land.end7 ], [ 0, %if.end15 ], [ 0, %if.end20 ], [ 0, %lor.lhs.false ], [ 0, %if.end28 ], [ 0, %lor.lhs.false40 ], [ 0, %if.end36 ], [ 0, %if.end45 ], [ 0, %if.then57 ], [ 0, %if.end65 ], [ 0, %if.then77 ], [ 0, %if.then88 ], [ 0, %if.end93 ], [ 0, %if.then107 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

declare dso_local i32 @test_strn_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_char_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

declare dso_local i32 @test_char_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #6

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_http_keep_alive(i8 noundef signext %version, i32 noundef %keep_alive, i32 noundef %kept_alive) unnamed_addr #0 {
entry:
  %mock_args = alloca %struct.server_args, align 8
  %rctx = alloca %struct.ossl_http_req_ctx_st*, align 8
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #7
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #7
  %call2 = tail call %struct.bio_method_st* @BIO_s_mem() #7
  %call3 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call2) #7
  %0 = bitcast %struct.server_args* %mock_args to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.server_args* @__const.test_http_keep_alive.mock_args to i8*), i64 16, i1 false)
  %1 = bitcast %struct.ossl_http_req_ctx_st** %rctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.ossl_http_req_ctx_st* null, %struct.ossl_http_req_ctx_st** %rctx, align 8, !tbaa !3
  %cmp = icmp eq %struct.bio_st* %call1, null
  %cmp4 = icmp eq %struct.bio_st* %call3, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %err, label %if.end

if.end:                                           ; preds = %entry
  %out = getelementptr inbounds %struct.server_args, %struct.server_args* %mock_args, i64 0, i32 0
  store %struct.bio_st* %call3, %struct.bio_st** %out, align 8, !tbaa !10
  %version5 = getelementptr inbounds %struct.server_args, %struct.server_args* %mock_args, i64 0, i32 1
  store i8 %version, i8* %version5, align 8, !tbaa !12
  %keep_alive6 = getelementptr inbounds %struct.server_args, %struct.server_args* %mock_args, i64 0, i32 2
  store i32 %kept_alive, i32* %keep_alive6, align 4, !tbaa !13
  tail call void @BIO_set_callback_ex(%struct.bio_st* noundef nonnull %call1, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef nonnull @http_bio_cb_ex) #7
  call void @BIO_set_callback_arg(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %0) #7
  %cmp10 = icmp eq i32 %kept_alive, 0
  %call8.peel = call %struct.bio_st* @OSSL_HTTP_transfer(%struct.ossl_http_req_ctx_st** noundef nonnull %rctx, i8* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i64 0, i64 0), i32 noundef 0, i8* noundef null, i8* noundef null, %struct.bio_st* noundef %call1, %struct.bio_st* noundef %call3, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef null, i8* noundef null, i32 noundef 0, %struct.stack_st_CONF_VALUE* noundef null, i8* noundef null, %struct.bio_st* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.108, i64 0, i64 0), i32 noundef 0, i64 noundef 0, i32 noundef 0, i32 noundef %keep_alive) #7
  %cmp9.peel = icmp eq i32 %keep_alive, 2
  %or.cond39.peel = and i1 %cmp10, %cmp9.peel
  %2 = bitcast %struct.bio_st* %call8.peel to i8*
  br i1 %or.cond39.peel, label %land.lhs.true13.peel, label %land.lhs.true22.peel

land.lhs.true22.peel:                             ; preds = %if.end
  %call23.peel = call i32 @test_ptr(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0), i8* noundef %2) #7
  %tobool24.not.peel = icmp eq i32 %call23.peel, 0
  br i1 %tobool24.not.peel, label %if.end32.peel, label %land.rhs25.peel

land.rhs25.peel:                                  ; preds = %land.lhs.true22.peel
  %3 = load %struct.ossl_http_req_ctx_st*, %struct.ossl_http_req_ctx_st** %rctx, align 8, !tbaa !3
  %call26.peel = call i32 @OSSL_HTTP_is_alive(%struct.ossl_http_req_ctx_st* noundef %3) #7
  %cmp27.peel = icmp sgt i32 %keep_alive, 0
  %conv.peel = zext i1 %cmp27.peel to i32
  %call28.peel = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.110, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.111, i64 0, i64 0), i32 noundef %call26.peel, i32 noundef %conv.peel) #7
  %tobool29.peel = icmp ne i32 %call28.peel, 0
  br label %if.end32.peel

land.lhs.true13.peel:                             ; preds = %if.end
  %call14.peel = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0), i8* noundef %2) #7
  %tobool15.not.peel = icmp eq i32 %call14.peel, 0
  br i1 %tobool15.not.peel, label %if.end32.peel, label %land.rhs16.peel

land.rhs16.peel:                                  ; preds = %land.lhs.true13.peel
  %4 = load %struct.ossl_http_req_ctx_st*, %struct.ossl_http_req_ctx_st** %rctx, align 8, !tbaa !3
  %call17.peel = call i32 @OSSL_HTTP_is_alive(%struct.ossl_http_req_ctx_st* noundef %4) #7
  %call18.peel = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.110, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), i32 noundef %call17.peel, i32 noundef 0) #7
  %tobool19.peel = icmp ne i32 %call18.peel, 0
  br label %if.end32.peel

if.end32.peel:                                    ; preds = %land.rhs16.peel, %land.lhs.true13.peel, %land.rhs25.peel, %land.lhs.true22.peel
  %res.1.in.peel = phi i1 [ false, %land.lhs.true13.peel ], [ %tobool19.peel, %land.rhs16.peel ], [ false, %land.lhs.true22.peel ], [ %tobool29.peel, %land.rhs25.peel ]
  %call33.peel = call i32 @BIO_free(%struct.bio_st* noundef %call8.peel) #7
  %call34.peel = call i64 @BIO_ctrl(%struct.bio_st* noundef %call3, i32 noundef 1, i64 noundef 0, i8* noundef null) #7
  br i1 %res.1.in.peel, label %for.body, label %for.end

for.body:                                         ; preds = %if.end32.peel
  %call8 = call %struct.bio_st* @OSSL_HTTP_transfer(%struct.ossl_http_req_ctx_st** noundef nonnull %rctx, i8* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i64 0, i64 0), i32 noundef 0, i8* noundef null, i8* noundef null, %struct.bio_st* noundef %call1, %struct.bio_st* noundef %call3, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef null, i8* noundef null, i32 noundef 0, %struct.stack_st_CONF_VALUE* noundef null, i8* noundef null, %struct.bio_st* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.108, i64 0, i64 0), i32 noundef 0, i64 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %5 = bitcast %struct.bio_st* %call8 to i8*
  %call23 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0), i8* noundef %5) #7
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end32, label %land.rhs25

land.rhs25:                                       ; preds = %for.body
  %6 = load %struct.ossl_http_req_ctx_st*, %struct.ossl_http_req_ctx_st** %rctx, align 8, !tbaa !3
  %call26 = call i32 @OSSL_HTTP_is_alive(%struct.ossl_http_req_ctx_st* noundef %6) #7
  %call28 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.110, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.111, i64 0, i64 0), i32 noundef %call26, i32 noundef 0) #7
  %tobool29 = icmp ne i32 %call28, 0
  br label %if.end32

if.end32:                                         ; preds = %for.body, %land.rhs25
  %res.1.in = phi i1 [ false, %for.body ], [ %tobool29, %land.rhs25 ]
  %call33 = call i32 @BIO_free(%struct.bio_st* noundef %call8) #7
  %call34 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call3, i32 noundef 1, i64 noundef 0, i8* noundef null) #7
  br label %for.end

for.end:                                          ; preds = %if.end32, %if.end32.peel
  %res.1.in.lcssa = phi i1 [ %res.1.in.peel, %if.end32.peel ], [ %res.1.in, %if.end32 ]
  %res.1.le = zext i1 %res.1.in.lcssa to i32
  %7 = load %struct.ossl_http_req_ctx_st*, %struct.ossl_http_req_ctx_st** %rctx, align 8, !tbaa !3
  %call36 = call i32 @OSSL_HTTP_close(%struct.ossl_http_req_ctx_st* noundef %7, i32 noundef %res.1.le) #7
  br label %err

err:                                              ; preds = %entry, %for.end
  %res.2 = phi i32 [ 0, %entry ], [ %res.1.le, %for.end ]
  %call37 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #7
  %call38 = call i32 @BIO_free(%struct.bio_st* noundef %call3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  ret i32 %res.2
}

declare dso_local i32 @OSSL_HTTP_is_alive(%struct.ossl_http_req_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_HTTP_close(%struct.ossl_http_req_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!10 = !{!11, !4, i64 0}
!11 = !{!"", !4, i64 0, !5, i64 8, !8, i64 12}
!12 = !{!11, !5, i64 8}
!13 = !{!11, !8, i64 12}
