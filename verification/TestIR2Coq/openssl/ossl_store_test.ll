; ModuleID = 'test/ossl_store_test.c'
source_filename = "test/ossl_store_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_store_search_st = type opaque
%struct.ui_method_st = type opaque
%struct.ossl_store_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_store_info_st = type opaque
%struct.evp_md_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.bio_st = type opaque
%struct.evp_pkey_st = type opaque

@test_get_options.test_options = internal constant [13 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 47, i8* null }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32 2, i32 60, i8* null }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 3, i32 60, i8* null }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 4, i32 115, i8* null }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"sm2\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@inputdir = internal unnamed_addr global i8* null, align 8
@infile = internal unnamed_addr global i8* null, align 8
@sm2file = internal unnamed_addr global i8* null, align 8
@datadir = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [23 x i8] c"test/ossl_store_test.c\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"No data directory specified\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"No input directory specified\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"test_store_open\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"test_store_search_by_key_fingerprint_fail\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"test_store_get_params\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"test_store_attach_unregistered_scheme\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"search = OSSL_STORE_SEARCH_by_alias(\22nothing\22)\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"nothing\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"ui_method= UI_create_method(\22DummyUI\22)\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"DummyUI\00", align 1
@.str.30 = private unnamed_addr constant [80 x i8] c"sctx = OSSL_STORE_open_ex(input, NULL, NULL, ui_method, NULL, NULL, NULL, NULL)\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"OSSL_STORE_find(sctx, NULL)\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"OSSL_STORE_find(sctx, search)\00", align 1
@.str.33 = private unnamed_addr constant [70 x i8] c"search = OSSL_STORE_SEARCH_by_key_fingerprint( EVP_sha256(), NULL, 0)\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"DHX\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"Invalid test index\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"%s/%s-params.pem\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"BIO_snprintf(uri, sizeof(uri), urifmt, datadir, type)\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"Testing uri: %s\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"get_params(uri, type)\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"libctx = OSSL_LIB_CTX_new()\00", align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"provider = OSSL_PROVIDER_load(libctx, \22default\22)\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"bio = BIO_new_file(input, \22r\22)\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.48 = private unnamed_addr constant [87 x i8] c"store_ctx = OSSL_STORE_attach(bio, \22file\22, libctx, NULL, NULL, NULL, NULL, NULL, NULL)\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"ERR_GET_LIB(ERR_peek_error())\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"ERR_LIB_OSSL_STORE\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"ERR_GET_REASON(ERR_peek_error())\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"OSSL_STORE_R_UNREGISTERED_SCHEME\00", align 1
@switch.table.test_store_get_params = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([13 x %struct.options_st], [13 x %struct.options_st]* @test_get_options.test_options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call = tail call i32 @opt_next() #4
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 1, label %sw.epilog.sink.split
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %sw.bb6
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

sw.bb2:                                           ; preds = %while.cond
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %while.cond
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %while.cond
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %while.cond, %sw.bb2, %sw.bb4, %sw.bb6
  %datadir.sink = phi i8** [ @datadir, %sw.bb6 ], [ @sm2file, %sw.bb4 ], [ @infile, %sw.bb2 ], [ @inputdir, %while.cond ]
  %call7 = tail call i8* @opt_arg() #4
  store i8* %call7, i8** %datadir.sink, align 8, !tbaa !3
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.epilog.sink.split, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %0 = load i8*, i8** @datadir, align 8, !tbaa !3
  %cmp10 = icmp eq i8* %0, null
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0)) #4
  br label %cleanup

if.end:                                           ; preds = %while.end
  %1 = load i8*, i8** @inputdir, align 8, !tbaa !3
  %cmp11 = icmp eq i8* %1, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0)) #4
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %2 = load i8*, i8** @infile, align 8, !tbaa !3
  %cmp14.not = icmp eq i8* %2, null
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end13
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 ()* noundef nonnull @test_store_open) #4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  tail call void @add_test(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i32 ()* noundef nonnull @test_store_search_by_key_fingerprint_fail) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i32 (i32)* noundef nonnull @test_store_get_params, i32 noundef 3, i32 noundef 1) #4
  %3 = load i8*, i8** @sm2file, align 8, !tbaa !3
  %cmp17.not = icmp eq i8* %3, null
  br i1 %cmp17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.end16
  tail call void @add_test(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i32 ()* noundef nonnull @test_store_attach_unregistered_scheme) #4
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.end16, %if.then18, %if.then12, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then12 ], [ 1, %if.then18 ], [ 1, %if.end16 ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i8* @opt_arg() local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_store_open() #1 {
entry:
  %0 = load i8*, i8** @inputdir, align 8, !tbaa !3
  %1 = load i8*, i8** @infile, align 8, !tbaa !3
  %call = tail call i8* @test_mk_file_path(i8* noundef %0, i8* noundef %1) #4
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* noundef %call) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_alias(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #4
  %2 = bitcast %struct.ossl_store_search_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.26, i64 0, i64 0), i8* noundef %2) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call %struct.ui_method_st* @UI_create_method(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)) #4
  %3 = bitcast %struct.ui_method_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0), i8* noundef %3) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call %struct.ossl_store_ctx_st* @OSSL_STORE_open_ex(i8* noundef %call, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null, %struct.ui_method_st* noundef %call6, i8* noundef null, %struct.ossl_param_st* noundef null, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef null, i8* noundef null) #4
  %4 = bitcast %struct.ossl_store_ctx_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.30, i64 0, i64 0), i8* noundef %4) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = tail call i32 @OSSL_STORE_find(%struct.ossl_store_ctx_st* noundef %call10, %struct.ossl_store_search_st* noundef null) #4
  %cmp = icmp ne i32 %call14, 0
  %conv = zext i1 %cmp to i32
  %call15 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true13
  %call17 = tail call i32 @OSSL_STORE_find(%struct.ossl_store_ctx_st* noundef %call10, %struct.ossl_store_search_st* noundef %call2) #4
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv19) #4
  %tobool21 = icmp ne i32 %call20, 0
  %phi.cast = zext i1 %tobool21 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true13, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %sctx.0 = phi %struct.ossl_store_ctx_st* [ %call10, %land.rhs ], [ %call10, %land.lhs.true13 ], [ %call10, %land.lhs.true9 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %search.0 = phi %struct.ossl_store_search_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true13 ], [ %call2, %land.lhs.true9 ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %ui_method.0 = phi %struct.ui_method_st* [ %call6, %land.rhs ], [ %call6, %land.lhs.true13 ], [ %call6, %land.lhs.true9 ], [ %call6, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %5 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  tail call void @UI_destroy_method(%struct.ui_method_st* noundef %ui_method.0) #4
  tail call void @OSSL_STORE_SEARCH_free(%struct.ossl_store_search_st* noundef %search.0) #4
  %call22 = tail call i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef %sctx.0) #4
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 57) #4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_store_search_by_key_fingerprint_fail() #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha256() #4
  %call1 = tail call %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_key_fingerprint(%struct.evp_md_st* noundef %call, i8* noundef null, i64 noundef 0) #4
  %0 = bitcast %struct.ossl_store_search_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.33, i64 0, i64 0), i8* noundef %0) #4
  tail call void @OSSL_STORE_SEARCH_free(%struct.ossl_store_search_st* noundef %call1) #4
  ret i32 %call2
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_store_get_params(i32 noundef %idx) #1 {
entry:
  %uri = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %uri, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %0) #5
  %1 = icmp ult i32 %idx, 3
  br i1 %1, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i64 0, i64 0)) #4
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %2 = sext i32 %idx to i64
  %switch.gep = getelementptr inbounds [3 x i8*], [3 x i8*]* @switch.table.test_store_get_params, i64 0, i64 %2
  %switch.load = load i8*, i8** %switch.gep, align 8
  %3 = load i8*, i8** @datadir, align 8, !tbaa !3
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 4096, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef %3, i8* noundef nonnull %switch.load) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %switch.lookup
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i8* noundef nonnull %0) #4
  %call6 = call fastcc i32 @get_params(i8* noundef nonnull %0, i8* noundef %switch.load) #6
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv8) #4
  %tobool10.not = icmp ne i32 %call9, 0
  %. = zext i1 %tobool10.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %switch.lookup, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %switch.lookup ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_store_attach_unregistered_scheme() #1 {
entry:
  %0 = load i8*, i8** @inputdir, align 8, !tbaa !3
  %1 = load i8*, i8** @sm2file, align 8, !tbaa !3
  %call = tail call i8* @test_mk_file_path(i8* noundef %0, i8* noundef %1) #4
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* noundef %call) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #4
  %2 = bitcast %struct.ossl_lib_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8* noundef %2) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %call2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0)) #4
  %3 = bitcast %struct.ossl_provider_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.44, i64 0, i64 0), i8* noundef %3) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #4
  %4 = bitcast %struct.bio_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i64 0, i64 0), i8* noundef %4) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = tail call %struct.ossl_store_ctx_st* @OSSL_STORE_attach(%struct.bio_st* noundef %call10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), %struct.ossl_lib_ctx_st* noundef %call2, i8* noundef null, %struct.ui_method_st* noundef null, i8* noundef null, %struct.ossl_param_st* noundef null, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef null, i8* noundef null) #4
  %5 = bitcast %struct.ossl_store_ctx_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.48, i64 0, i64 0), i8* noundef %5) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %call18 = tail call i64 @ERR_peek_error() #4
  %call19 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %call18) #6, !range !9
  %call20 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0), i32 noundef %call19, i32 noundef 44) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true17
  %call22 = tail call i64 @ERR_peek_error() #4
  %call23 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call22) #6, !range !10
  %call24 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i64 0, i64 0), i32 noundef %call23, i32 noundef 105) #4
  %tobool25 = icmp ne i32 %call24, 0
  %phi.cast = zext i1 %tobool25 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true17, %land.lhs.true13, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %provider.0 = phi %struct.ossl_provider_st* [ %call6, %land.rhs ], [ %call6, %land.lhs.true17 ], [ %call6, %land.lhs.true13 ], [ %call6, %land.lhs.true9 ], [ %call6, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %libctx.0 = phi %struct.ossl_lib_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true17 ], [ %call2, %land.lhs.true13 ], [ %call2, %land.lhs.true9 ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %bio.0 = phi %struct.bio_st* [ %call10, %land.rhs ], [ %call10, %land.lhs.true17 ], [ %call10, %land.lhs.true13 ], [ %call10, %land.lhs.true9 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %store_ctx.0 = phi %struct.ossl_store_ctx_st* [ %call14, %land.rhs ], [ %call14, %land.lhs.true17 ], [ %call14, %land.lhs.true13 ], [ null, %land.lhs.true9 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %6 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %call26 = tail call i32 @BIO_free(%struct.bio_st* noundef %bio.0) #4
  %call27 = tail call i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef %store_ctx.0) #4
  %call28 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %provider.0) #4
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %libctx.0) #4
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 179) #4
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i8* @test_mk_file_path(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_alias(i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ui_method_st* @UI_create_method(i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_store_ctx_st* @OSSL_STORE_open_ex(i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ui_method_st* noundef, i8* noundef, %struct.ossl_param_st* noundef, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_STORE_find(%struct.ossl_store_ctx_st* noundef, %struct.ossl_store_search_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @UI_destroy_method(%struct.ui_method_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_STORE_SEARCH_free(%struct.ossl_store_search_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_key_fingerprint(%struct.evp_md_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #3

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_params(i8* noundef %uri, i8* noundef %type) unnamed_addr #1 {
entry:
  %call = tail call %struct.ossl_store_ctx_st* @OSSL_STORE_open_ex(i8* noundef %uri, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null, %struct.ui_method_st* noundef null, i8* noundef null, %struct.ossl_param_st* noundef null, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef null, i8* noundef null) #4
  %0 = bitcast %struct.ossl_store_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call229 = tail call i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef %call) #4
  %tobool3.not30 = icmp eq i32 %call229, 0
  br i1 %tobool3.not30, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %while.cond.preheader, %if.end10
  %pkey.031 = phi %struct.evp_pkey_st* [ %pkey.1, %if.end10 ], [ null, %while.cond.preheader ]
  %call4 = tail call %struct.ossl_store_info_st* @OSSL_STORE_load(%struct.ossl_store_ctx_st* noundef %call) #4
  %cmp = icmp ne %struct.ossl_store_info_st* %call4, null
  %cmp5 = icmp eq %struct.evp_pkey_st* %pkey.031, null
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %or.cond, label %while.body, label %while.end

while.body:                                       ; preds = %land.lhs.true
  %call6 = tail call i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef nonnull %call4) #4
  %cmp7 = icmp eq i32 %call6, 2
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %while.body
  %call9 = tail call %struct.evp_pkey_st* @OSSL_STORE_INFO_get1_PARAMS(%struct.ossl_store_info_st* noundef nonnull %call4) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %while.body
  %pkey.1 = phi %struct.evp_pkey_st* [ %call9, %if.then8 ], [ null, %while.body ]
  tail call void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef nonnull %call4) #4
  %call2 = tail call i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef %call) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %while.end, !llvm.loop !11

while.end:                                        ; preds = %land.lhs.true, %if.end10
  %pkey.0.lcssa = phi %struct.evp_pkey_st* [ %pkey.031, %land.lhs.true ], [ %pkey.1, %if.end10 ]
  %cmp11.not = icmp eq %struct.evp_pkey_st* %pkey.0.lcssa, null
  br i1 %cmp11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %while.end
  %call13 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %pkey.0.lcssa, i8* noundef %type) #4
  br label %if.end14

if.end14:                                         ; preds = %while.cond.preheader, %if.then12, %while.end
  %pkey.0.lcssa35 = phi %struct.evp_pkey_st* [ %pkey.0.lcssa, %if.then12 ], [ null, %while.end ], [ null, %while.cond.preheader ]
  %ret.0 = phi i32 [ %call13, %if.then12 ], [ 0, %while.end ], [ 0, %while.cond.preheader ]
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0.lcssa35) #4
  br label %err

err:                                              ; preds = %entry, %if.end14
  %ret.1 = phi i32 [ %ret.0, %if.end14 ], [ 0, %entry ]
  %call15 = tail call i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef %call) #4
  ret i32 %ret.1
}

declare dso_local i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_store_info_st* @OSSL_STORE_load(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @OSSL_STORE_INFO_get1_PARAMS(%struct.ossl_store_info_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_store_ctx_st* @OSSL_STORE_attach(%struct.bio_st* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ui_method_st* noundef, i8* noundef, %struct.ossl_param_st* noundef, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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

declare dso_local i64 @ERR_peek_error() local_unnamed_addr #3

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

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

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
!9 = !{i32 0, i32 256}
!10 = !{i32 0, i32 -2147483648}
!11 = distinct !{!11, !8}
