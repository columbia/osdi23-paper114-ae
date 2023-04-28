; ModuleID = 'test/conf_include_test.c'
source_filename = "test/conf_include_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, {}*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque

@test_get_options.test_options = internal constant [10 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
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
@.str.14 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"A failure is expected\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"test/conf_include_test.c\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"conf = NCONF_new(NULL)\00", align 1
@conf = internal unnamed_addr global %struct.conf_st* null, align 8
@expect_failure = internal unnamed_addr global i1 false, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"conf_file\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"in = BIO_new_file(conf_file, \22r\22)\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@in = internal unnamed_addr global %struct.bio_st* null, align 8
@.str.21 = private unnamed_addr constant [33 x i8] c"Unable to open the file argument\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"test_load_config\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"test_check_null_numbers\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"test_check_overflow\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"changing path to %s\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"NCONF_load_bio(conf, in, &errline)\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"err = ERR_peek_error()\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"Failure loading the configuration at line %ld\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Failure expected but did not happen\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"CONF_modules_load(conf, NULL, 0)\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Failed in CONF_modules_load\00", align 1
@.str.34 = private unnamed_addr constant [59 x i8] c"NCONF_get_number(conf, \22CA_default\22, \22default_days\22, &val)\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"CA_default\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"default_days\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"365\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"default_days incorrect\00", align 1
@.str.41 = private unnamed_addr constant [52 x i8] c"NCONF_get_number(conf, \22req\22, \22default_bits\22, &val)\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"default_bits\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"2048\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"default_bits incorrect\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"req_distinguished_name\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"countryName_default\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"\22AU\22\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"AU\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"countryName_default incorrect\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"setenv(\22FNORD\22, \22123\22, 1)\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"FNORD\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.55 = private unnamed_addr constant [49 x i8] c"NCONF_get_number(NULL, \22missing\22, \22FNORD\22, &val)\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"missing\00", align 1
@.str.57 = private unnamed_addr constant [43 x i8] c"environment variable with NULL conf failed\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"unsetenv(\22FNORD\22)\00", align 1
@.str.59 = private unnamed_addr constant [51 x i8] c"missing environment variable with NULL conf failed\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"0%ld\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"LONG_MAX\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([10 x %struct.options_st], [10 x %struct.options_st]* @test_get_options.test_options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef null) #6
  store %struct.conf_st* %call, %struct.conf_st** @conf, align 8, !tbaa !3
  %0 = bitcast %struct.conf_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %while.cond

while.cond:                                       ; preds = %entry, %while.cond.backedge
  %call2 = tail call i32 @opt_next() #6
  switch i32 %call2, label %cleanup [
    i32 0, label %while.end
    i32 1, label %sw.bb
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %sw.bb
  br label %while.cond, !llvm.loop !7

sw.bb:                                            ; preds = %while.cond
  store i1 true, i1* @expect_failure, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call4 = tail call i8* @test_get_argument(i64 noundef 0) #6
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call4) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %call7 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %call4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #6
  store %struct.bio_st* %call7, %struct.bio_st** @in, align 8, !tbaa !3
  %1 = bitcast %struct.bio_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i8* noundef %1) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %while.end
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0)) #6
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  tail call fastcc void @change_path(i8* noundef %call4) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 ()* noundef nonnull @test_load_config) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32 ()* noundef nonnull @test_check_null_numbers) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 ()* noundef nonnull @test_check_overflow) #6
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %entry, %if.end11, %if.then10
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %if.then10 ], [ 0, %entry ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef) local_unnamed_addr #3

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @change_path(i8* noundef %file) unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %file, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 42) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %while.cond

while.cond:                                       ; preds = %entry, %while.cond
  %p.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %call, %entry ]
  %last.0 = phi i8* [ %call1, %while.cond ], [ null, %entry ]
  %call1 = tail call i8* @strpbrk(i8* noundef nonnull %p.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #8
  %cmp2.not = icmp eq i8* %call1, null
  %incdec.ptr = getelementptr inbounds i8, i8* %call1, i64 1
  br i1 %cmp2.not, label %while.end, label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %cmp3 = icmp eq i8* %last.0, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %while.end
  store i8 0, i8* %last.0, align 1, !tbaa !10
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i8* noundef nonnull %call) #6
  %call6 = tail call i32 @chdir(i8* noundef nonnull %call) #6
  br label %err

err:                                              ; preds = %while.end, %if.end5
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 60) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  ret void
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_load_config() #1 {
entry:
  %errline = alloca i64, align 8
  %val = alloca i64, align 8
  %0 = bitcast i64* %errline to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  %3 = load %struct.bio_st*, %struct.bio_st** @in, align 8, !tbaa !3
  %call = call i32 @NCONF_load_bio(%struct.conf_st* noundef %2, %struct.bio_st* noundef %3, i64* noundef nonnull %errline) #6
  %call1 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i32 noundef %call, i32 noundef 0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i64 @ERR_peek_error() #6
  %conv = trunc i64 %call2 to i32
  %call3 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %if.end7

if.then:                                          ; preds = %lor.lhs.false, %entry
  %.b48 = load i1, i1* @expect_failure, align 4
  br i1 %.b48, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %4 = load i64, i64* %errline, align 8, !tbaa !11
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i64 noundef %4) #6
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %.b = load i1, i1* @expect_failure, align 4
  br i1 %.b, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i64 0, i64 0)) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %5 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  %call11 = call i32 @CONF_modules_load(%struct.conf_st* noundef %5, i8* noundef null, i64 noundef 0) #6
  %call12 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i32 noundef %call11, i32 noundef 0) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0)) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  store i64 0, i64* %val, align 8, !tbaa !11
  %6 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  %call16 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef %6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64* noundef nonnull %val) #6
  %call17 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i32 noundef %call16, i32 noundef 1) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then23, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end15
  %7 = load i64, i64* %val, align 8, !tbaa !11
  %conv20 = trunc i64 %7 to i32
  %call21 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv20, i32 noundef 365) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false19, %if.end15
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0)) #6
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false19
  store i64 0, i64* %val, align 8, !tbaa !11
  %8 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  %call25 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0), i64* noundef nonnull %val) #6
  %call26 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i32 noundef %call25, i32 noundef 1) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then32, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end24
  %9 = load i64, i64* %val, align 8, !tbaa !11
  %conv29 = trunc i64 %9 to i32
  %call30 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv29, i32 noundef 2048) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %lor.lhs.false28, %if.end24
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0)) #6
  br label %cleanup

if.end33:                                         ; preds = %lor.lhs.false28
  %10 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  %call34 = call i8* @NCONF_get_string(%struct.conf_st* noundef %10, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0)) #6
  %call35 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* noundef %call34) #6
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then40, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end33
  %call38 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i8* noundef %call34, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %cleanup

if.then40:                                        ; preds = %lor.lhs.false37, %if.end33
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i64 0, i64 0)) #6
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false37, %if.then, %if.then40, %if.then32, %if.then23, %if.then14, %if.then9, %if.end
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then40 ], [ 0, %if.then32 ], [ 0, %if.then23 ], [ 0, %if.then14 ], [ 0, %if.end ], [ 1, %if.then ], [ 1, %lor.lhs.false37 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_check_null_numbers() #1 {
entry:
  %val = alloca i64, align 8
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 0, i64* %val, align 8, !tbaa !11
  %call = tail call i32 @setenv(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 noundef 1) #6
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i32 noundef %call, i32 noundef 0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef null, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i64* noundef nonnull %val) #6
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup.sink.split, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %1 = load i64, i64* %val, align 8, !tbaa !11
  %call6 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i64 noundef %1, i64 noundef 123) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %call8 = call i32 @unsetenv(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0)) #6
  %call9 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i32 noundef %call8, i32 noundef 0) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup.sink.split, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end
  %call12 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef null, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i64* noundef nonnull %val) #6
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv14) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end, %lor.lhs.false11, %entry, %lor.lhs.false, %lor.lhs.false5
  %.sink = phi i8* [ getelementptr inbounds ([43 x i8], [43 x i8]* @.str.57, i64 0, i64 0), %lor.lhs.false5 ], [ getelementptr inbounds ([43 x i8], [43 x i8]* @.str.57, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([43 x i8], [43 x i8]* @.str.57, i64 0, i64 0), %entry ], [ getelementptr inbounds ([51 x i8], [51 x i8]* @.str.59, i64 0, i64 0), %lor.lhs.false11 ], [ getelementptr inbounds ([51 x i8], [51 x i8]* @.str.59, i64 0, i64 0), %if.end ]
  call void (i8*, ...) @test_note(i8* noundef %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false11
  %retval.0 = phi i32 [ 1, %lor.lhs.false11 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_check_overflow() #1 {
entry:
  %val = alloca i64, align 8
  %max = alloca [24 x i8], align 16
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 0, i64* %val, align 8, !tbaa !11
  %1 = getelementptr inbounds [24 x i8], [24 x i8]* %max, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #9
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i64 noundef 9223372036854775807) #6
  %call4 = call i32 @setenv(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i8* noundef nonnull %1, i32 noundef 1) #6
  %call5 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef null, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i64* noundef nonnull %val) #6
  %cmp = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp to i32
  %call6 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %val, align 8, !tbaa !11
  %call7 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i64 noundef %2, i64 noundef 9223372036854775807) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr inbounds [24 x i8], [24 x i8]* %max, i64 0, i64 %idx.ext
  %p.025 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %3 = load i8, i8* %p.025, align 1, !tbaa !10
  %inc26 = add i8 %3, 1
  store i8 %inc26, i8* %p.025, align 1, !tbaa !10
  %cmp1027 = icmp sgt i8 %inc26, 57
  br i1 %cmp1027, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %p.028 = phi i8* [ %p.0, %while.body ], [ %p.025, %while.cond.preheader ]
  store i8 48, i8* %p.028, align 1, !tbaa !10
  %p.0 = getelementptr inbounds i8, i8* %p.028, i64 -1
  %4 = load i8, i8* %p.0, align 1, !tbaa !10
  %inc = add i8 %4, 1
  store i8 %inc, i8* %p.0, align 1, !tbaa !10
  %cmp10 = icmp sgt i8 %inc, 57
  br i1 %cmp10, label %while.body, label %while.end, !llvm.loop !13

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %call13 = call i32 @setenv(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i8* noundef nonnull %1, i32 noundef 1) #6
  %call14 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef null, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i64* noundef nonnull %val) #6
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv16) #6
  %tobool18.not = icmp ne i32 %call17, 0
  %. = zext i1 %tobool18.not to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %., %while.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** @in, align 8, !tbaa !3
  tail call void @BIO_vfree(%struct.bio_st* noundef %0) #6
  %1 = load %struct.conf_st*, %struct.conf_st** @conf, align 8, !tbaa !3
  tail call void @NCONF_free(%struct.conf_st* noundef %1) #6
  tail call void @CONF_modules_unload(i32 noundef 1) #6
  ret void
}

declare dso_local void @BIO_vfree(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #3

declare dso_local void @CONF_modules_unload(i32 noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strpbrk(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @chdir(i8* noundef) local_unnamed_addr #5

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @NCONF_load_bio(%struct.conf_st* noundef, %struct.bio_st* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @ERR_peek_error() local_unnamed_addr #3

declare dso_local i32 @CONF_modules_load(%struct.conf_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @NCONF_get_number_e(%struct.conf_st* noundef, i8* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i8* @NCONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i32 @setenv(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_long_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i32 @unsetenv(i8* noundef) local_unnamed_addr #5

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nounwind }

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
!9 = distinct !{!9, !8}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = distinct !{!13, !8}
