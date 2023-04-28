; ModuleID = 'test/provider_test.c'
source_filename = "test/provider_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_core_handle_st = type opaque
%struct.ossl_dispatch_st = type { i32, void ()* }

@test_get_options.test_options = internal constant [10 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
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
@.str.14 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Run test with a loaded provider\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"test_builtin_provider\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"test_builtin_provider_with_child\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"test_loaded_provider\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"p_test_builtin\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"test/provider_test.c\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"libctx\00", align 1
@.str.22 = private unnamed_addr constant [69 x i8] c"OSSL_PROVIDER_add_builtin(libctx, name, PROVIDER_INIT_FUNCTION_NAME)\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Hello OpenSSL %.20s, greetings from %s!\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"3.0.0\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"fips=yes\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"base = OSSL_PROVIDER_load(*libctx, \22base\22)\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"prov = OSSL_PROVIDER_load(*libctx, name)\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"OSSL_PROVIDER_get_params(prov, digest_check)\00", align 1
@digest_check = internal global [2 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i32 2, i8* bitcast (i32* @digestsuccess to i8*), i64 4, i64 0 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [14 x i8] c"digestsuccess\00", align 1
@digestsuccess = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [53 x i8] c"OSSL_PROVIDER_get_params(prov, stop_property_mirror)\00", align 1
@stop_property_mirror = internal global [2 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0), i32 2, i8* bitcast (i32* @stopsuccess to i8*), i64 4, i64 0 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.33 = private unnamed_addr constant [12 x i8] c"stopsuccess\00", align 1
@stopsuccess = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [49 x i8] c"OSSL_PROVIDER_get_params(prov, greeting_request)\00", align 1
@greeting_request = internal global [2 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @buf, i32 0, i32 0), i64 256, i64 0 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.35 = private unnamed_addr constant [36 x i8] c"greeting = greeting_request[0].data\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"greeting_request[0].data_size\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"greeting\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"expected_greeting\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"ERR_GET_REASON(err)\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"deflt\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"OSSL_PROVIDER_available(*libctx, \22default\22)\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"OSSL_PROVIDER_unload(base)\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"OSSL_PROVIDER_unload(prov)\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.49 = private unnamed_addr constant [13 x i8] c"digest-check\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"stop-property-mirror\00", align 1
@buf = internal global [256 x i8] zeroinitializer, align 16
@.str.51 = private unnamed_addr constant [7 x i8] c"p_test\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([10 x %struct.options_st], [10 x %struct.options_st]* @test_get_options.test_options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond, %entry
  %tobool.not = phi i1 [ true, %entry ], [ false, %while.cond ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %call = tail call i32 @opt_next() #4
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
    i32 1, label %while.cond.outer
  ], !llvm.loop !3

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  br label %while.cond, !llvm.loop !3

while.end:                                        ; preds = %while.cond
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 ()* noundef nonnull @test_builtin_provider) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 ()* noundef nonnull @test_builtin_provider_with_child) #4
  br label %cleanup

if.else:                                          ; preds = %while.end
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 ()* noundef nonnull @test_loaded_provider) #4
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.then, %if.else
  %retval.0 = phi i32 [ 1, %if.else ], [ 1, %if.then ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_builtin_provider() #1 {
entry:
  %libctx = alloca %struct.ossl_lib_ctx_st*, align 8
  %0 = bitcast %struct.ossl_lib_ctx_st** %libctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #4
  store %struct.ossl_lib_ctx_st* %call, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %1 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @OSSL_PROVIDER_add_builtin(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef nonnull @p_test_init) #4
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = call fastcc i32 @test_provider(%struct.ossl_lib_ctx_st** noundef nonnull %libctx, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), %struct.ossl_provider_st* noundef null) #6
  %tobool6 = icmp ne i32 %call5, 0
  %phi.cast = zext i1 %tobool6 to i32
  %.pre = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %2 = phi %struct.ossl_lib_ctx_st* [ %call, %land.lhs.true ], [ %call, %entry ], [ %.pre, %land.rhs ]
  %3 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_builtin_provider_with_child() #1 {
entry:
  %libctx = alloca %struct.ossl_lib_ctx_st*, align 8
  %0 = bitcast %struct.ossl_lib_ctx_st** %libctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #4
  store %struct.ossl_lib_ctx_st* %call, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %1 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0)) #4
  %cmp = icmp eq %struct.ossl_provider_st* %call2, null
  br i1 %cmp, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @OSSL_PROVIDER_add_builtin(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef nonnull @p_test_init) #4
  %cmp6 = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp6 to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end4
  %call11 = call fastcc i32 @test_provider(%struct.ossl_lib_ctx_st** noundef nonnull %libctx, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), %struct.ossl_provider_st* noundef nonnull %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_loaded_provider() #1 {
entry:
  %libctx = alloca %struct.ossl_lib_ctx_st*, align 8
  %0 = bitcast %struct.ossl_lib_ctx_st** %libctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #4
  store %struct.ossl_lib_ctx_st* %call, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %1 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @test_provider(%struct.ossl_lib_ctx_st** noundef nonnull %libctx, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), %struct.ossl_provider_st* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PROVIDER_add_builtin(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef) local_unnamed_addr #3

declare dso_local i32 @p_test_init(%struct.ossl_core_handle_st* noundef, %struct.ossl_dispatch_st* noundef, %struct.ossl_dispatch_st** noundef, i8** noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_provider(%struct.ossl_lib_ctx_st** nocapture noundef %libctx, i8* noundef %name, %struct.ossl_provider_st* noundef %legacy) unnamed_addr #1 {
entry:
  %expected_greeting = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %expected_greeting, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #5
  %cmp.not = icmp eq %struct.ossl_provider_st* %legacy, null
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 256, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8* noundef %name) #4
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %call1 = call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0)) #4
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %call2 = call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #4
  %3 = bitcast %struct.ossl_provider_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0), i8* noundef %3) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err142, label %if.end

if.end:                                           ; preds = %entry
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %call4 = call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef %name) #4
  %5 = bitcast %struct.ossl_provider_st* %call4 to i8*
  %call5 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i8* noundef %5) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err142, label %if.end8

if.end8:                                          ; preds = %if.end
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %call9 = call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0)) #4
  br i1 %cmp.not, label %if.end49, label %if.then11

if.then11:                                        ; preds = %if.end8
  %call12 = call i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef %call4, %struct.ossl_param_st* noundef getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @digest_check, i64 0, i64 0)) #4
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv14) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err142, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then11
  %7 = load i32, i32* @digestsuccess, align 4, !tbaa !9
  %cmp17 = icmp ne i32 %7, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv18) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err142, label %if.end22

if.end22:                                         ; preds = %lor.lhs.false
  %call23 = call i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef %call4, %struct.ossl_param_st* noundef getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @stop_property_mirror, i64 0, i64 0)) #4
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv25) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err142, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end22
  %8 = load i32, i32* @stopsuccess, align 4, !tbaa !9
  %cmp29 = icmp ne i32 %8, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv30) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err142, label %if.end34

if.end34:                                         ; preds = %lor.lhs.false28
  %9 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %call35 = call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %9, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0)) #4
  %call36 = call i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef %call4, %struct.ossl_param_st* noundef getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @digest_check, i64 0, i64 0)) #4
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv38) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err142, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.end34
  %10 = load i32, i32* @digestsuccess, align 4, !tbaa !9
  %cmp42 = icmp ne i32 %10, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv43) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err142, label %if.end47

if.end47:                                         ; preds = %lor.lhs.false41
  %11 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %call48 = call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %11, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0)) #4
  br label %if.end49

if.end49:                                         ; preds = %if.end47, %if.end8
  %call50 = call i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef %call4, %struct.ossl_param_st* noundef getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @greeting_request, i64 0, i64 0)) #4
  %cmp51 = icmp ne i32 %call50, 0
  %conv52 = zext i1 %cmp51 to i32
  %call53 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv52) #4
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err142, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.end49
  %12 = load i8*, i8** getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @greeting_request, i64 0, i64 0, i32 2), align 16, !tbaa !11
  %call56 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i8* noundef %12) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err142, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false55
  %13 = load i64, i64* getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @greeting_request, i64 0, i64 0, i32 3), align 8, !tbaa !14
  %call59 = call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i64 noundef %13, i64 noundef 0) #4
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err142, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false58
  %call63 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0), i8* noundef %12, i8* noundef nonnull %0) #4
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err142, label %if.end66

if.end66:                                         ; preds = %lor.lhs.false61
  %call67 = call i64 @ERR_peek_last_error() #4
  %conv68 = trunc i64 %call67 to i32
  %call69 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv68, i32 noundef 0) #4
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err142, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.end66
  %call72 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call67) #6, !range !15
  %call73 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i32 noundef %call72, i32 noundef 1) #4
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err142, label %if.end76

if.end76:                                         ; preds = %lor.lhs.false71
  %call77 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %legacy) #4
  br i1 %cmp.not, label %if.end127, label %if.then79

if.then79:                                        ; preds = %if.end76
  %call80 = call i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef %call4, %struct.ossl_param_st* noundef getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @digest_check, i64 0, i64 0)) #4
  %cmp81 = icmp ne i32 %call80, 0
  %conv82 = zext i1 %cmp81 to i32
  %call83 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv82) #4
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %err142, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %if.then79
  %14 = load i32, i32* @digestsuccess, align 4, !tbaa !9
  %cmp86 = icmp ne i32 %14, 0
  %conv87 = zext i1 %cmp86 to i32
  %call88 = call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv87) #4
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err142, label %if.end91

if.end91:                                         ; preds = %lor.lhs.false85
  %15 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %call92 = call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %15, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0)) #4
  %16 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %call93 = call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %16, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0)) #4
  %17 = bitcast %struct.ossl_provider_st* %call93 to i8*
  %call94 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* noundef %17) #4
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err142, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %if.end91
  %18 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %call97 = call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0)) #4
  %cmp98 = icmp ne i32 %call97, 0
  %conv99 = zext i1 %cmp98 to i32
  %call100 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv99) #4
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %err142, label %if.end103

if.end103:                                        ; preds = %lor.lhs.false96
  %call104 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call93) #4
  %19 = bitcast %struct.ossl_provider_st* %call92 to i8*
  %call105 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* noundef %19) #4
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %err142, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %if.end103
  %20 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %call108 = call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef %20, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0)) #4
  %cmp109 = icmp ne i32 %call108, 0
  %conv110 = zext i1 %cmp109 to i32
  %call111 = call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv110) #4
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %err142, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %lor.lhs.false107
  %call114 = call i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef %call4, %struct.ossl_param_st* noundef getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @digest_check, i64 0, i64 0)) #4
  %cmp115 = icmp ne i32 %call114, 0
  %conv116 = zext i1 %cmp115 to i32
  %call117 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv116) #4
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %err142, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %lor.lhs.false113
  %21 = load i32, i32* @digestsuccess, align 4, !tbaa !9
  %cmp120 = icmp ne i32 %21, 0
  %conv121 = zext i1 %cmp120 to i32
  %call122 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv121) #4
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %err142, label %if.end125

if.end125:                                        ; preds = %lor.lhs.false119
  %call126 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call92) #4
  br label %if.end127

if.end127:                                        ; preds = %if.end125, %if.end76
  %call128 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call2) #4
  %cmp129 = icmp ne i32 %call128, 0
  %conv130 = zext i1 %cmp129 to i32
  %call131 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv130) #4
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %err142, label %if.end134

if.end134:                                        ; preds = %if.end127
  %call135 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call4) #4
  %cmp136 = icmp ne i32 %call135, 0
  %conv137 = zext i1 %cmp136 to i32
  %call138 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv137) #4
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %err142, label %if.end141

if.end141:                                        ; preds = %if.end134
  %22 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %22) #4
  store %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %23) #4
  br label %err142

err142:                                           ; preds = %if.end134, %if.end127, %if.end103, %lor.lhs.false107, %lor.lhs.false113, %lor.lhs.false119, %if.end91, %lor.lhs.false96, %if.then79, %lor.lhs.false85, %if.end66, %lor.lhs.false71, %if.end49, %lor.lhs.false55, %lor.lhs.false58, %lor.lhs.false61, %if.end34, %lor.lhs.false41, %if.end22, %lor.lhs.false28, %if.then11, %lor.lhs.false, %if.end, %entry, %if.end141
  %ok.0 = phi i32 [ 1, %if.end141 ], [ 0, %if.end134 ], [ 0, %if.end127 ], [ 0, %lor.lhs.false119 ], [ 0, %lor.lhs.false113 ], [ 0, %lor.lhs.false107 ], [ 0, %if.end103 ], [ 0, %lor.lhs.false96 ], [ 0, %if.end91 ], [ 0, %lor.lhs.false85 ], [ 0, %if.then79 ], [ 0, %lor.lhs.false71 ], [ 0, %if.end66 ], [ 0, %lor.lhs.false61 ], [ 0, %lor.lhs.false58 ], [ 0, %lor.lhs.false55 ], [ 0, %if.end49 ], [ 0, %lor.lhs.false41 ], [ 0, %if.end34 ], [ 0, %lor.lhs.false28 ], [ 0, %if.end22 ], [ 0, %lor.lhs.false ], [ 0, %if.then11 ], [ 0, %if.end ], [ 0, %entry ]
  %prov.0 = phi %struct.ossl_provider_st* [ null, %if.end141 ], [ %call4, %if.end134 ], [ %call4, %if.end127 ], [ %call4, %lor.lhs.false119 ], [ %call4, %lor.lhs.false113 ], [ %call4, %lor.lhs.false107 ], [ %call4, %if.end103 ], [ %call4, %lor.lhs.false96 ], [ %call4, %if.end91 ], [ %call4, %lor.lhs.false85 ], [ %call4, %if.then79 ], [ %call4, %lor.lhs.false71 ], [ %call4, %if.end66 ], [ %call4, %lor.lhs.false61 ], [ %call4, %lor.lhs.false58 ], [ %call4, %lor.lhs.false55 ], [ %call4, %if.end49 ], [ %call4, %lor.lhs.false41 ], [ %call4, %if.end34 ], [ %call4, %lor.lhs.false28 ], [ %call4, %if.end22 ], [ %call4, %lor.lhs.false ], [ %call4, %if.then11 ], [ %call4, %if.end ], [ null, %entry ]
  %legacy.addr.1 = phi %struct.ossl_provider_st* [ null, %if.end141 ], [ null, %if.end134 ], [ null, %if.end127 ], [ %call92, %lor.lhs.false119 ], [ %call92, %lor.lhs.false113 ], [ %call92, %lor.lhs.false107 ], [ %call92, %if.end103 ], [ %call92, %lor.lhs.false96 ], [ %call92, %if.end91 ], [ null, %lor.lhs.false85 ], [ null, %if.then79 ], [ %legacy, %lor.lhs.false71 ], [ %legacy, %if.end66 ], [ %legacy, %lor.lhs.false61 ], [ %legacy, %lor.lhs.false58 ], [ %legacy, %lor.lhs.false55 ], [ %legacy, %if.end49 ], [ %legacy, %lor.lhs.false41 ], [ %legacy, %if.end34 ], [ %legacy, %lor.lhs.false28 ], [ %legacy, %if.end22 ], [ %legacy, %lor.lhs.false ], [ %legacy, %if.then11 ], [ %legacy, %if.end ], [ %legacy, %entry ]
  %deflt.1 = phi %struct.ossl_provider_st* [ null, %if.end141 ], [ null, %if.end134 ], [ null, %if.end127 ], [ null, %lor.lhs.false119 ], [ null, %lor.lhs.false113 ], [ null, %lor.lhs.false107 ], [ null, %if.end103 ], [ %call93, %lor.lhs.false96 ], [ %call93, %if.end91 ], [ null, %lor.lhs.false85 ], [ null, %if.then79 ], [ null, %lor.lhs.false71 ], [ null, %if.end66 ], [ null, %lor.lhs.false61 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false55 ], [ null, %if.end49 ], [ null, %lor.lhs.false41 ], [ null, %if.end34 ], [ null, %lor.lhs.false28 ], [ null, %if.end22 ], [ null, %lor.lhs.false ], [ null, %if.then11 ], [ null, %if.end ], [ null, %entry ]
  %base.0 = phi %struct.ossl_provider_st* [ null, %if.end141 ], [ null, %if.end134 ], [ %call2, %if.end127 ], [ %call2, %lor.lhs.false119 ], [ %call2, %lor.lhs.false113 ], [ %call2, %lor.lhs.false107 ], [ %call2, %if.end103 ], [ %call2, %lor.lhs.false96 ], [ %call2, %if.end91 ], [ %call2, %lor.lhs.false85 ], [ %call2, %if.then79 ], [ %call2, %lor.lhs.false71 ], [ %call2, %if.end66 ], [ %call2, %lor.lhs.false61 ], [ %call2, %lor.lhs.false58 ], [ %call2, %lor.lhs.false55 ], [ %call2, %if.end49 ], [ %call2, %lor.lhs.false41 ], [ %call2, %if.end34 ], [ %call2, %lor.lhs.false28 ], [ %call2, %if.end22 ], [ %call2, %lor.lhs.false ], [ %call2, %if.then11 ], [ %call2, %if.end ], [ %call2, %entry ]
  %call143 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %base.0) #4
  %call144 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %deflt.1) #4
  %call145 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %legacy.addr.1) #4
  %call146 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %prov.0) #4
  %24 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %24) #4
  store %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #5
  ret i32 %ok.0
}

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_size_t_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i64 @ERR_peek_last_error() local_unnamed_addr #3

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @ERR_print_errors_fp(%struct._IO_FILE* noundef) local_unnamed_addr #3

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
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !6, i64 16}
!12 = !{!"ossl_param_st", !6, i64 0, !10, i64 8, !6, i64 16, !13, i64 24, !13, i64 32}
!13 = !{!"long", !7, i64 0}
!14 = !{!12, !13, i64 24}
!15 = !{i32 0, i32 -2147483648}
