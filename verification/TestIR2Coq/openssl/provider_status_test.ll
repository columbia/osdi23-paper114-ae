; ModuleID = 'test/provider_status_test.c'
source_filename = "test/provider_status_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.self_test_arg = type { i32 }
%struct.bio_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_provider_st = type opaque
%struct.evp_md_st = type opaque

@test_get_options.test_options = internal constant [11 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 2, i32 60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
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
@.str.14 = private unnamed_addr constant [14 x i8] c"provider_name\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"The name of the provider to load\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"The configuration file to use for the libctx\00", align 1
@provider_name = internal unnamed_addr global i8* null, align 8
@libctx = internal unnamed_addr global %struct.ossl_lib_ctx_st* null, align 8
@.str.18 = private unnamed_addr constant [5 x i8] c"fips\00", align 1
@self_test_args = internal global %struct.self_test_arg zeroinitializer, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"Failed to load config\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"test_provider_status\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"test_provider_gettable_params\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"On Loading\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"st-phase\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"st-desc\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"st-type\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"%s : (%s) : \00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"Pass\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Fail\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"Corrupt\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"test/provider_status_test.c\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"prov = OSSL_PROVIDER_load(libctx, provider_name)\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"OSSL_PROVIDER_get_params(prov, params)\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"status == 1\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"fetch = EVP_MD_fetch(libctx, \22SHA256\22, NULL)\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"OSSL_PROVIDER_self_test(prov)\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"gettable = OSSL_PROVIDER_gettable_params(prov)\00", align 1
@.str.43 = private unnamed_addr constant [60 x i8] c"p = OSSL_PARAM_locate_const(gettable, OSSL_PROV_PARAM_NAME)\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.45 = private unnamed_addr constant [63 x i8] c"p = OSSL_PARAM_locate_const(gettable, OSSL_PROV_PARAM_VERSION)\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.47 = private unnamed_addr constant [62 x i8] c"p = OSSL_PARAM_locate_const(gettable, OSSL_PROV_PARAM_STATUS)\00", align 1
@.str.48 = private unnamed_addr constant [65 x i8] c"p = OSSL_PARAM_locate_const(gettable, OSSL_PROV_PARAM_BUILDINFO)\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"buildinfo\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"OSSL_PARAM_modified(params + 0)\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"OSSL_PARAM_modified(params + 1)\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"OSSL_PARAM_modified(params + 2)\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"OSSL_PARAM_modified(params + 3)\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"On Demand\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"On Demand Failure\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([11 x %struct.options_st], [11 x %struct.options_st]* @test_get_options.test_options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %config_file.0 = phi i8* [ null, %entry ], [ %config_file.0.be, %while.cond.backedge ]
  %call = tail call i32 @opt_next() #6
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %sw.bb2, %sw.bb
  %config_file.0.be = phi i8* [ %config_file.0, %sw.bb2 ], [ %call1, %sw.bb ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ]
  br label %while.cond, !llvm.loop !3

sw.bb:                                            ; preds = %while.cond
  %call1 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb2:                                           ; preds = %while.cond
  %call3 = tail call i8* @opt_arg() #6
  store i8* %call3, i8** @provider_name, align 8, !tbaa !5
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call6 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #6
  store %struct.ossl_lib_ctx_st* %call6, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %cmp7 = icmp eq %struct.ossl_lib_ctx_st* %call6, null
  br i1 %cmp7, label %cleanup, label %if.end

if.end:                                           ; preds = %while.end
  %0 = load i8*, i8** @provider_name, align 8, !tbaa !5
  %call8 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  store i32 0, i32* getelementptr inbounds (%struct.self_test_arg, %struct.self_test_arg* @self_test_args, i64 0, i32 0), align 4, !tbaa !9
  tail call void @OSSL_SELF_TEST_set_callback(%struct.ossl_lib_ctx_st* noundef nonnull %call6, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @self_test_on_load, i8* noundef bitcast (%struct.self_test_arg* @self_test_args to i8*)) #6
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %call11 = tail call i32 @OSSL_LIB_CTX_load_config(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef %config_file.0) #6
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then10
  %call13 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0)) #6
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 ()* noundef nonnull @test_provider_status) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  tail call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i32 ()* noundef nonnull @test_provider_gettable_params) #6
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.end14, %if.else, %while.end, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 0, %while.end ], [ 1, %if.else ], [ 1, %if.end14 ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i8* @opt_arg() local_unnamed_addr #3

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local void @OSSL_SELF_TEST_set_callback(%struct.ossl_lib_ctx_st* noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @self_test_on_load(%struct.ossl_param_st* noundef %params, i8* nocapture noundef %arg) #1 {
entry:
  %call = tail call fastcc i32 @self_test_events(%struct.ossl_param_st* noundef %params, i8* noundef %arg, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 noundef 0) #8
  ret i32 %call
}

declare dso_local i32 @OSSL_LIB_CTX_load_config(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @opt_printf_stderr(i8* noundef, ...) local_unnamed_addr #3

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_provider_status() #1 {
entry:
  %status = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp7 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %status, align 4, !tbaa !12
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #9
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %3 = load i8*, i8** @provider_name, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef %3) #6
  %4 = bitcast %struct.ossl_provider_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0), i8* noundef %4) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @get_provider_params(%struct.ossl_provider_st* noundef %call) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params64 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params64, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i32* noundef nonnull %status) #6
  %arrayidx6 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %5 = bitcast %struct.ossl_param_st* %tmp7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #9
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp7) #6
  %6 = bitcast %struct.ossl_param_st* %arrayidx6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !13
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #9
  %call8 = call i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef %call, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %cmp = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %7 = load i32, i32* %status, align 4, !tbaa !12
  %cmp11 = icmp eq i32 %7, 1
  %conv12 = zext i1 %cmp11 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv12) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %call19 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* noundef null) #6
  %9 = bitcast %struct.evp_md_st* %call19 to i8*
  %call20 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), i8* noundef %9) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %if.end18
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call19) #6
  store i32 0, i32* getelementptr inbounds (%struct.self_test_arg, %struct.self_test_arg* @self_test_args, i64 0, i32 0), align 4, !tbaa !9
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  call void @OSSL_SELF_TEST_set_callback(%struct.ossl_lib_ctx_st* noundef %10, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @self_test_on_demand, i8* noundef bitcast (%struct.self_test_arg* @self_test_args to i8*)) #6
  %call24 = call i32 @OSSL_PROVIDER_self_test(%struct.ossl_provider_st* noundef %call) #6
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv26) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %if.end23
  store i32 0, i32* getelementptr inbounds (%struct.self_test_arg, %struct.self_test_arg* @self_test_args, i64 0, i32 0), align 4, !tbaa !9
  %11 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  call void @OSSL_SELF_TEST_set_callback(%struct.ossl_lib_ctx_st* noundef %11, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @self_test_on_demand_fail, i8* noundef bitcast (%struct.self_test_arg* @self_test_args to i8*)) #6
  %call31 = call i32 @OSSL_PROVIDER_self_test(%struct.ossl_provider_st* noundef %call) #6
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = call i32 @test_false(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv33) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end30
  %call39 = call i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef %call, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @test_true(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv41) #6
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.end37
  %12 = load i32, i32* %status, align 4, !tbaa !12
  %call45 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i32 noundef %12, i32 noundef 0) #6
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %if.end48

if.end48:                                         ; preds = %lor.lhs.false44
  %13 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %call49 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %13, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* noundef null) #6
  %14 = bitcast %struct.evp_md_st* %call49 to i8*
  %call50 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), i8* noundef %14) #6
  %tobool51.not = icmp ne i32 %call50, 0
  %spec.select = zext i1 %tobool51.not to i32
  br label %err

err:                                              ; preds = %if.end48, %if.end37, %lor.lhs.false44, %if.end30, %if.end23, %if.end18, %if.end5, %lor.lhs.false, %if.end, %entry
  %ret.0 = phi i32 [ 0, %lor.lhs.false44 ], [ 0, %if.end37 ], [ 0, %if.end30 ], [ 0, %if.end23 ], [ 0, %if.end18 ], [ 0, %lor.lhs.false ], [ 0, %if.end5 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end48 ]
  %fetch.0 = phi %struct.evp_md_st* [ null, %lor.lhs.false44 ], [ null, %if.end37 ], [ null, %if.end30 ], [ null, %if.end23 ], [ %call19, %if.end18 ], [ null, %lor.lhs.false ], [ null, %if.end5 ], [ null, %if.end ], [ null, %entry ], [ %call49, %if.end48 ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %fetch.0) #6
  %call54 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_provider_gettable_params() #1 {
entry:
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %1 = load i8*, i8** @provider_name, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %1) #6
  %2 = bitcast %struct.ossl_provider_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0), i8* noundef %2) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @get_provider_params(%struct.ossl_provider_st* noundef %call) #8
  %call3 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %0) #6
  ret void
}

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @self_test_events(%struct.ossl_param_st* noundef %params, i8* nocapture noundef %arg, i8* noundef %title, i32 noundef %corrupt) unnamed_addr #1 {
entry:
  %count = bitcast i8* %arg to i32*
  %0 = load i32, i32* %count, align 4, !tbaa !9
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef %title) #6
  %.pre = load i32, i32* %count, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %count, align 4, !tbaa !9
  %call2 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0)) #6
  %cmp3 = icmp eq %struct.ossl_param_st* %call2, null
  br i1 %cmp3, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call2, i64 0, i32 1
  %3 = load i32, i32* %data_type, align 8, !tbaa !16
  %cmp4.not = icmp eq i32 %3, 4
  br i1 %cmp4.not, label %if.end6, label %err

if.end6:                                          ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call2, i64 0, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !18
  %call7 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0)) #6
  %cmp8 = icmp eq %struct.ossl_param_st* %call7, null
  br i1 %cmp8, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end6
  %data_type10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call7, i64 0, i32 1
  %5 = load i32, i32* %data_type10, align 8, !tbaa !16
  %cmp11.not = icmp eq i32 %5, 4
  br i1 %cmp11.not, label %if.end13, label %err

if.end13:                                         ; preds = %lor.lhs.false9
  %data14 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call7, i64 0, i32 2
  %6 = load i8*, i8** %data14, align 8, !tbaa !18
  %call15 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0)) #6
  %cmp16 = icmp eq %struct.ossl_param_st* %call15, null
  br i1 %cmp16, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end13
  %data_type18 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call15, i64 0, i32 1
  %7 = load i32, i32* %data_type18, align 8, !tbaa !16
  %cmp19.not = icmp eq i32 %7, 4
  br i1 %cmp19.not, label %if.end21, label %err

if.end21:                                         ; preds = %lor.lhs.false17
  %call23 = tail call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #7
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end21
  %data22 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call15, i64 0, i32 2
  %8 = load i8*, i8** %data22, align 8, !tbaa !18
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call26 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8* noundef %6, i8* noundef %8) #6
  br label %if.end35

if.else:                                          ; preds = %if.end21
  %call27 = tail call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #7
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then32, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.else
  %call30 = tail call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0)) #7
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %lor.lhs.false29, %if.else
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call33 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* noundef %4) #6
  br label %if.end35

if.end35:                                         ; preds = %lor.lhs.false29, %if.then32, %if.then25
  %tobool.not = icmp eq i32 %corrupt, 0
  br i1 %tobool.not, label %if.end39, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end35
  %call36 = tail call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0)) #7
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %err, label %if.end39

if.end39:                                         ; preds = %land.lhs.true, %if.end35
  br label %err

err:                                              ; preds = %land.lhs.true, %if.end13, %lor.lhs.false17, %if.end6, %lor.lhs.false9, %if.end, %lor.lhs.false, %if.end39
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %if.end6 ], [ 0, %lor.lhs.false9 ], [ 0, %if.end13 ], [ 0, %lor.lhs.false17 ], [ 0, %land.lhs.true ], [ 1, %if.end39 ]
  ret i32 %ret.0
}

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_provider_params(%struct.ossl_provider_st* noundef %prov) unnamed_addr #1 {
entry:
  %params = alloca [5 x %struct.ossl_param_st], align 16
  %name = alloca i8*, align 8
  %version = alloca i8*, align 8
  %buildinfo = alloca i8*, align 8
  %status = alloca i32, align 4
  %tmp18 = alloca %struct.ossl_param_st, align 8
  %tmp20 = alloca %struct.ossl_param_st, align 8
  %tmp22 = alloca %struct.ossl_param_st, align 8
  %tmp24 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [5 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %0) #9
  %1 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast i8** %version to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %3 = bitcast i8** %buildinfo to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  %4 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  %call = tail call %struct.ossl_param_st* @OSSL_PROVIDER_gettable_params(%struct.ossl_provider_st* noundef %prov) #6
  %5 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i64 0, i64 0), i8* noundef %5) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)) #6
  %6 = bitcast %struct.ossl_param_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.43, i64 0, i64 0), i8* noundef %6) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0)) #6
  %7 = bitcast %struct.ossl_param_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.45, i64 0, i64 0), i8* noundef %7) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0)) #6
  %8 = bitcast %struct.ossl_param_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.47, i64 0, i64 0), i8* noundef %8) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0)) #6
  %9 = bitcast %struct.ossl_param_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.48, i64 0, i64 0), i8* noundef %9) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  %arrayidx = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params77 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params77, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i8** noundef nonnull %name, i64 noundef 0) #6
  %arrayidx17 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %10 = bitcast %struct.ossl_param_st* %tmp18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #9
  call void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i8** noundef nonnull %version, i64 noundef 0) #6
  %11 = bitcast %struct.ossl_param_st* %arrayidx17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !13
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #9
  %arrayidx19 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %12 = bitcast %struct.ossl_param_st* %tmp20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #9
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp20, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i32* noundef nonnull %status) #6
  %13 = bitcast %struct.ossl_param_st* %arrayidx19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %13, i8* noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !13
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #9
  %arrayidx21 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %14 = bitcast %struct.ossl_param_st* %tmp22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %14) #9
  call void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp22, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0), i8** noundef nonnull %buildinfo, i64 noundef 0) #6
  %15 = bitcast %struct.ossl_param_st* %arrayidx21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %15, i8* noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !13
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %14) #9
  %arrayidx23 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %16 = bitcast %struct.ossl_param_st* %tmp24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #9
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp24) #6
  %17 = bitcast %struct.ossl_param_st* %arrayidx23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %17, i8* noundef nonnull align 8 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !13
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #9
  call void @OSSL_PARAM_set_all_unmodified(%struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %call26 = call i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef %prov, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %cmp = icmp ne i32 %call26, 0
  %conv = zext i1 %cmp to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %end, label %if.end30

if.end30:                                         ; preds = %if.end
  %call32 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_true(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv34) #6
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %end, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end30
  %call40 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx17) #6
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = call i32 @test_true(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv42) #6
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %end, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false37
  %call48 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx19) #6
  %cmp49 = icmp ne i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = call i32 @test_true(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv50) #6
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %end, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false45
  %call56 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx21) #6
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = call i32 @test_true(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv58) #6
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %end, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false53
  %18 = load i32, i32* %status, align 4, !tbaa !12
  %cmp62 = icmp eq i32 %18, 1
  %conv63 = zext i1 %cmp62 to i32
  %call66 = call i32 @test_true(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv63) #6
  %tobool67.not = icmp ne i32 %call66, 0
  %spec.select = zext i1 %tobool67.not to i32
  br label %end

end:                                              ; preds = %lor.lhs.false61, %if.end30, %lor.lhs.false37, %lor.lhs.false45, %lor.lhs.false53, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13
  %ret.0 = phi i32 [ 0, %lor.lhs.false53 ], [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false37 ], [ 0, %if.end30 ], [ 0, %if.end ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false61 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %0) #9
  ret i32 %ret.0
}

declare dso_local void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @self_test_on_demand(%struct.ossl_param_st* noundef %params, i8* nocapture noundef %arg) #1 {
entry:
  %call = tail call fastcc i32 @self_test_events(%struct.ossl_param_st* noundef %params, i8* noundef %arg, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), i32 noundef 0) #8
  ret i32 %call
}

declare dso_local i32 @OSSL_PROVIDER_self_test(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @self_test_on_demand_fail(%struct.ossl_param_st* noundef %params, i8* nocapture noundef %arg) #1 {
entry:
  %call = tail call fastcc i32 @self_test_events(%struct.ossl_param_st* noundef %params, i8* noundef %arg, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i64 0, i64 0), i32 noundef 1) #8
  ret i32 %call
}

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_uint_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @OSSL_PROVIDER_gettable_params(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_set_all_unmodified(%struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"self_test_arg", !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{i64 0, i64 8, !5, i64 8, i64 4, !12, i64 16, i64 8, !5, i64 24, i64 8, !14, i64 32, i64 8, !14}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!17, !11, i64 8}
!17 = !{!"ossl_param_st", !6, i64 0, !11, i64 8, !6, i64 16, !15, i64 24, !15, i64 32}
!18 = !{!17, !6, i64 16}
