; ModuleID = 'test/params_conversion_test.c'
source_filename = "test/params_conversion_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.PARAM_CONVERSION = type { %struct.ossl_param_st*, i32, i64, i32, i64, double, i32, i32, i32, i32, i32, i8*, i8*, i64 }
%struct.stanza_st = type { i8*, %struct.bio_st*, i32, i32, i32, i32, i32, i32, [150 x %struct.pair_st], %struct.bio_st*, [4096 x i8] }
%struct.pair_st = type { i8*, i8* }
%struct.bio_st = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [29 x i8] c"Usage: %s [options] file...\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [30 x i8] c"test/params_conversion_test.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"run_param_file_tests\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"s = OPENSSL_zalloc(sizeof(*s))\00", align 1
@param_conversion_load_stanza.datum_i32 = internal global i32 0, align 4
@param_conversion_load_stanza.ref_i32 = internal global i32 0, align 4
@param_conversion_load_stanza.datum_i64 = internal global i64 0, align 8
@param_conversion_load_stanza.ref_i64 = internal global i64 0, align 8
@param_conversion_load_stanza.datum_u32 = internal global i32 0, align 4
@param_conversion_load_stanza.ref_u32 = internal global i32 0, align 4
@param_conversion_load_stanza.datum_u64 = internal global i64 0, align 8
@param_conversion_load_stanza.ref_u64 = internal global i64 0, align 8
@param_conversion_load_stanza.datum_d = internal global double 0.000000e+00, align 8
@param_conversion_load_stanza.ref_d = internal global double 0.000000e+00, align 8
@param_conversion_load_stanza.params = internal global [6 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* bitcast (i32* @param_conversion_load_stanza.datum_i32 to i8*), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* bitcast (i64* @param_conversion_load_stanza.datum_i64 to i8*), i64 8, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 2, i8* bitcast (i32* @param_conversion_load_stanza.datum_u32 to i8*), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 2, i8* bitcast (i64* @param_conversion_load_stanza.datum_u64 to i8*), i64 8, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 3, i8* bitcast (double* @param_conversion_load_stanza.datum_d to i8*), i64 8, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [6 x i8] c"int32\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"int64\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"uint32\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"uint64\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"Line %d: multiple type lines\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Line %d: unknown type line\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Line %d: multiple int32 lines\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Line %d: multiple int64 lines\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Line %d: multiple uint32 lines\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Line %d: multiple uint64 lines\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Line %d: multiple double lines\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Line %d: unknown keyword %s\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"Line %d: extra characters at end '%s' for %s\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"Line %d: type not found\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"def_i32\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"pc->valid_i32\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"errant int32 on line %d\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"def_i64\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"pc->valid_i64\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"errant int64 on line %d\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"def_u32\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"pc->valid_u32\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"errant uint32 on line %d\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"def_u64\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"pc->valid_u64\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"errant uint64 on line %d\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"def_d\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"pc->valid_d\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"errant double on line %d\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"type unknown at line %d\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"OSSL_PARAM_get_int32(pc->param, &i32)\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"unexpected valid conversion to int32 on line %d\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"i32 == pc->i32\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"unexpected conversion to int32 on line %d\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"OSSL_PARAM_set_int32(pc->param, i32)\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"pc->datum\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"pc->ref\00", align 1
@.str.59 = private unnamed_addr constant [50 x i8] c"unexpected valid conversion from int32 on line %d\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"OSSL_PARAM_get_int64(pc->param, &i64)\00", align 1
@.str.61 = private unnamed_addr constant [48 x i8] c"unexpected valid conversion to int64 on line %d\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"i64 == pc->i64\00", align 1
@.str.63 = private unnamed_addr constant [42 x i8] c"unexpected conversion to int64 on line %d\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c"OSSL_PARAM_set_int64(pc->param, i64)\00", align 1
@.str.65 = private unnamed_addr constant [50 x i8] c"unexpected valid conversion from int64 on line %d\00", align 1
@.str.66 = private unnamed_addr constant [39 x i8] c"OSSL_PARAM_get_uint32(pc->param, &u32)\00", align 1
@.str.67 = private unnamed_addr constant [49 x i8] c"unexpected valid conversion to uint32 on line %d\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"u32 == pc->u32\00", align 1
@.str.69 = private unnamed_addr constant [43 x i8] c"unexpected conversion to uint32 on line %d\00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"OSSL_PARAM_set_uint32(pc->param, u32)\00", align 1
@.str.71 = private unnamed_addr constant [51 x i8] c"unexpected valid conversion from uint32 on line %d\00", align 1
@.str.72 = private unnamed_addr constant [39 x i8] c"OSSL_PARAM_get_uint64(pc->param, &u64)\00", align 1
@.str.73 = private unnamed_addr constant [49 x i8] c"unexpected valid conversion to uint64 on line %d\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"u64 == pc->u64\00", align 1
@.str.75 = private unnamed_addr constant [43 x i8] c"unexpected conversion to uint64 on line %d\00", align 1
@.str.76 = private unnamed_addr constant [38 x i8] c"OSSL_PARAM_set_uint64(pc->param, u64)\00", align 1
@.str.77 = private unnamed_addr constant [51 x i8] c"unexpected valid conversion from uint64 on line %d\00", align 1
@.str.78 = private unnamed_addr constant [37 x i8] c"OSSL_PARAM_get_double(pc->param, &d)\00", align 1
@.str.79 = private unnamed_addr constant [49 x i8] c"unexpected valid conversion to double on line %d\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"unable to convert to double on line %d\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"pc->d == pc->d\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"unexpected NaN on line %d\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"d == pc->d\00", align 1
@.str.84 = private unnamed_addr constant [43 x i8] c"unexpected conversion to double on line %d\00", align 1
@.str.85 = private unnamed_addr constant [36 x i8] c"OSSL_PARAM_set_double(pc->param, d)\00", align 1
@.str.86 = private unnamed_addr constant [51 x i8] c"unexpected valid conversion from double on line %d\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @test_get_argument_count() #6
  %cmp = icmp eq i64 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %conv = trunc i64 %call1 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 (i32)* noundef nonnull @run_param_file_tests, i32 noundef %conv, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end3, %if.then
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i64 @test_get_argument_count() local_unnamed_addr #3

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @run_param_file_tests(i32 noundef %i) #1 {
entry:
  %pc = alloca %struct.PARAM_CONVERSION, align 8
  %0 = bitcast %struct.PARAM_CONVERSION* %pc to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #7
  %conv = sext i32 %i to i64
  %call = tail call i8* @test_get_argument(i64 noundef %conv) #6
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef 6544, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 326) #6
  %1 = bitcast i8* %call1 to %struct.stanza_st*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call1) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @test_start_file(%struct.stanza_st* noundef %1, i8* noundef %call) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %fp = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %fp to %struct.bio_st**
  %3 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !tbaa !3
  %call739 = call i64 @BIO_ctrl(%struct.bio_st* noundef %3, i32 noundef 2, i64 noundef 0, i8* noundef null) #6
  %conv840 = trunc i64 %call739 to i32
  %tobool9.not41 = icmp eq i32 %conv840, 0
  br i1 %tobool9.not41, label %while.body.lr.ph, label %end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %numpairs = getelementptr inbounds i8, i8* %call1, i64 36
  %4 = bitcast i8* %numpairs to i32*
  %curr = getelementptr inbounds i8, i8* %call1, i64 16
  %5 = bitcast i8* %curr to i32*
  br label %while.body

if.then5:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 329) #6
  br label %cleanup

while.body:                                       ; preds = %while.body.lr.ph, %if.end22
  %res.042 = phi i32 [ 1, %while.body.lr.ph ], [ %res.1, %if.end22 ]
  %call10 = call i32 @test_readstanza(%struct.stanza_st* noundef nonnull %1) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %end, label %if.end13

if.end13:                                         ; preds = %while.body
  %6 = load i32, i32* %4, align 4, !tbaa !9
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end22, label %if.then15

if.then15:                                        ; preds = %if.end13
  %call16 = call fastcc i32 @param_conversion_load_stanza(%struct.PARAM_CONVERSION* noundef nonnull %pc, %struct.stanza_st* noundef nonnull %1) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then15
  %7 = load i32, i32* %5, align 8, !tbaa !10
  %call18 = call fastcc i32 @param_conversion_test(%struct.PARAM_CONVERSION* noundef nonnull %pc, i32 noundef %7) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %lor.lhs.false, %if.then15
  br label %if.end22

if.end22:                                         ; preds = %lor.lhs.false, %if.then20, %if.end13
  %res.1 = phi i32 [ %res.042, %lor.lhs.false ], [ 0, %if.then20 ], [ %res.042, %if.end13 ]
  call void @test_clearstanza(%struct.stanza_st* noundef nonnull %1) #6
  %8 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !tbaa !3
  %call7 = call i64 @BIO_ctrl(%struct.bio_st* noundef %8, i32 noundef 2, i64 noundef 0, i8* noundef null) #6
  %conv8 = trunc i64 %call7 to i32
  %tobool9.not = icmp eq i32 %conv8, 0
  br i1 %tobool9.not, label %while.body, label %end, !llvm.loop !11

end:                                              ; preds = %if.end22, %while.body, %while.cond.preheader
  %res.2 = phi i32 [ 1, %while.cond.preheader ], [ 0, %while.body ], [ %res.1, %if.end22 ]
  %call23 = call i32 @test_end_file(%struct.stanza_st* noundef nonnull %1) #6
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 346) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %end, %if.then5
  %retval.0 = phi i32 [ %res.2, %end ], [ 0, %if.then5 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_start_file(%struct.stanza_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_readstanza(%struct.stanza_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @param_conversion_load_stanza(%struct.PARAM_CONVERSION* noundef %pc, %struct.stanza_st* nocapture noundef readonly %s) unnamed_addr #1 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.PARAM_CONVERSION* %pc to i8*
  %call = tail call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 96) #6
  %numpairs = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 7
  %2 = load i32, i32* %numpairs, align 4, !tbaa !9
  %cmp408 = icmp sgt i32 %2, 0
  br i1 %cmp408, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 8, i64 0
  %valid_d = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 10
  %d = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 5
  %valid_u64 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 9
  %u64 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 4
  %valid_u32 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 8
  %u32 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 3
  %valid_i64 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 7
  %i64 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 2
  %valid_i32 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 6
  %i32 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 1
  %param = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0416 = phi i32 [ 0, %for.body.lr.ph ], [ %inc118, %for.inc ]
  %type.0415 = phi i8* [ null, %for.body.lr.ph ], [ %type.1, %for.inc ]
  %pp.0414 = phi %struct.pair_st* [ %arraydecay, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %def_d.0413 = phi i32 [ 0, %for.body.lr.ph ], [ %def_d.1, %for.inc ]
  %def_u64.0412 = phi i32 [ 0, %for.body.lr.ph ], [ %def_u64.1, %for.inc ]
  %def_u32.0411 = phi i32 [ 0, %for.body.lr.ph ], [ %def_u32.1, %for.inc ]
  %def_i64.0410 = phi i32 [ 0, %for.body.lr.ph ], [ %def_i64.1, %for.inc ]
  %def_i32.0409 = phi i32 [ 0, %for.body.lr.ph ], [ %def_i32.1, %for.inc ]
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i8** %p, align 8, !tbaa !13
  %key = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0414, i64 0, i32 0
  %3 = load i8*, i8** %key, align 8, !tbaa !14
  %call1 = call i32 @strcasecmp(i8* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %cmp3.not = icmp eq i8* %type.0415, null
  br i1 %cmp3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %curr = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %4 = load i32, i32* %curr, align 8, !tbaa !10
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i32 noundef %4) #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  %value = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0414, i64 0, i32 1
  %5 = load i8*, i8** %value, align 8, !tbaa !16
  %call5 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef getelementptr inbounds ([6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* @param_conversion_load_stanza.params, i64 0, i64 0), i8* noundef %5) #6
  store %struct.ossl_param_st* %call5, %struct.ossl_param_st** %param, align 8, !tbaa !17
  %cmp7 = icmp eq %struct.ossl_param_st* %call5, null
  br i1 %cmp7, label %if.then8, label %if.end110

if.then8:                                         ; preds = %if.end
  %curr9 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %6 = load i32, i32* %curr9, align 8, !tbaa !10
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 noundef %6) #6
  br label %cleanup

if.else:                                          ; preds = %for.body
  %call12 = call i32 @strcasecmp(i8* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #9
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else25

if.then14:                                        ; preds = %if.else
  %tobool.not = icmp eq i32 %def_i32.0409, 0
  br i1 %tobool.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.then14
  %curr16 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %7 = load i32, i32* %curr16, align 8, !tbaa !10
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 noundef %7) #6
  br label %cleanup

if.end17:                                         ; preds = %if.then14
  %value18 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0414, i64 0, i32 1
  %8 = load i8*, i8** %value18, align 8, !tbaa !16
  %call19 = call i32 @strcasecmp(i8* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #9
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end110, label %if.then21

if.then21:                                        ; preds = %if.end17
  store i32 1, i32* %valid_i32, align 8, !tbaa !21
  %call23 = call i64 @strtoimax(i8* noundef %8, i8** noundef nonnull %p, i32 noundef 10) #6
  %conv = trunc i64 %call23 to i32
  store i32 %conv, i32* %i32, align 8, !tbaa !22
  br label %if.end110

if.else25:                                        ; preds = %if.else
  %call27 = call i32 @strcasecmp(i8* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #9
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.else44

if.then30:                                        ; preds = %if.else25
  %tobool32.not = icmp eq i32 %def_i64.0410, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.then30
  %curr34 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %9 = load i32, i32* %curr34, align 8, !tbaa !10
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i32 noundef %9) #6
  br label %cleanup

if.end35:                                         ; preds = %if.then30
  %value36 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0414, i64 0, i32 1
  %10 = load i8*, i8** %value36, align 8, !tbaa !16
  %call37 = call i32 @strcasecmp(i8* noundef %10, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #9
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %if.end110, label %if.then40

if.then40:                                        ; preds = %if.end35
  store i32 1, i32* %valid_i64, align 4, !tbaa !23
  %call42 = call i64 @strtoimax(i8* noundef %10, i8** noundef nonnull %p, i32 noundef 10) #6
  store i64 %call42, i64* %i64, align 8, !tbaa !24
  br label %if.end110

if.else44:                                        ; preds = %if.else25
  %call46 = call i32 @strcasecmp(i8* noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)) #9
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.else64

if.then49:                                        ; preds = %if.else44
  %tobool51.not = icmp eq i32 %def_u32.0411, 0
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.then49
  %curr53 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %11 = load i32, i32* %curr53, align 8, !tbaa !10
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i32 noundef %11) #6
  br label %cleanup

if.end54:                                         ; preds = %if.then49
  %value55 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0414, i64 0, i32 1
  %12 = load i8*, i8** %value55, align 8, !tbaa !16
  %call56 = call i32 @strcasecmp(i8* noundef %12, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #9
  %cmp57.not = icmp eq i32 %call56, 0
  br i1 %cmp57.not, label %if.end110, label %if.then59

if.then59:                                        ; preds = %if.end54
  store i32 1, i32* %valid_u32, align 8, !tbaa !25
  %call61 = call i64 @strtoumax(i8* noundef %12, i8** noundef nonnull %p, i32 noundef 10) #6
  %conv62 = trunc i64 %call61 to i32
  store i32 %conv62, i32* %u32, align 8, !tbaa !26
  br label %if.end110

if.else64:                                        ; preds = %if.else44
  %call66 = call i32 @strcasecmp(i8* noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #9
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.else83

if.then69:                                        ; preds = %if.else64
  %tobool71.not = icmp eq i32 %def_u64.0412, 0
  br i1 %tobool71.not, label %if.end74, label %if.then72

if.then72:                                        ; preds = %if.then69
  %curr73 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %13 = load i32, i32* %curr73, align 8, !tbaa !10
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i32 noundef %13) #6
  br label %cleanup

if.end74:                                         ; preds = %if.then69
  %value75 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0414, i64 0, i32 1
  %14 = load i8*, i8** %value75, align 8, !tbaa !16
  %call76 = call i32 @strcasecmp(i8* noundef %14, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #9
  %cmp77.not = icmp eq i32 %call76, 0
  br i1 %cmp77.not, label %if.end110, label %if.then79

if.then79:                                        ; preds = %if.end74
  store i32 1, i32* %valid_u64, align 4, !tbaa !27
  %call81 = call i64 @strtoumax(i8* noundef %14, i8** noundef nonnull %p, i32 noundef 10) #6
  store i64 %call81, i64* %u64, align 8, !tbaa !28
  br label %if.end110

if.else83:                                        ; preds = %if.else64
  %call85 = call i32 @strcasecmp(i8* noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0)) #9
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.else102

if.then88:                                        ; preds = %if.else83
  %tobool90.not = icmp eq i32 %def_d.0413, 0
  br i1 %tobool90.not, label %if.end93, label %if.then91

if.then91:                                        ; preds = %if.then88
  %curr92 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %15 = load i32, i32* %curr92, align 8, !tbaa !10
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 noundef %15) #6
  br label %cleanup

if.end93:                                         ; preds = %if.then88
  %value94 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0414, i64 0, i32 1
  %16 = load i8*, i8** %value94, align 8, !tbaa !16
  %call95 = call i32 @strcasecmp(i8* noundef %16, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #9
  %cmp96.not = icmp eq i32 %call95, 0
  br i1 %cmp96.not, label %if.end110, label %if.then98

if.then98:                                        ; preds = %if.end93
  store i32 1, i32* %valid_d, align 8, !tbaa !29
  %call100 = call double @strtod(i8* noundef %16, i8** noundef nonnull %p) #6
  store double %call100, double* %d, align 8, !tbaa !30
  br label %if.end110

if.else102:                                       ; preds = %if.else83
  %curr103 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %17 = load i32, i32* %curr103, align 8, !tbaa !10
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i32 noundef %17, i8* noundef %3) #6
  br label %cleanup

if.end110:                                        ; preds = %if.then21, %if.end17, %if.then59, %if.end54, %if.then98, %if.end93, %if.end74, %if.then79, %if.end35, %if.then40, %if.end
  %def_i32.1 = phi i32 [ %def_i32.0409, %if.end ], [ 1, %if.then21 ], [ 1, %if.end17 ], [ %def_i32.0409, %if.then40 ], [ %def_i32.0409, %if.end35 ], [ %def_i32.0409, %if.then59 ], [ %def_i32.0409, %if.end54 ], [ %def_i32.0409, %if.then79 ], [ %def_i32.0409, %if.end74 ], [ %def_i32.0409, %if.then98 ], [ %def_i32.0409, %if.end93 ]
  %def_i64.1 = phi i32 [ %def_i64.0410, %if.end ], [ %def_i64.0410, %if.then21 ], [ %def_i64.0410, %if.end17 ], [ 1, %if.then40 ], [ 1, %if.end35 ], [ %def_i64.0410, %if.then59 ], [ %def_i64.0410, %if.end54 ], [ %def_i64.0410, %if.then79 ], [ %def_i64.0410, %if.end74 ], [ %def_i64.0410, %if.then98 ], [ %def_i64.0410, %if.end93 ]
  %def_u32.1 = phi i32 [ %def_u32.0411, %if.end ], [ %def_u32.0411, %if.then21 ], [ %def_u32.0411, %if.end17 ], [ %def_u32.0411, %if.then40 ], [ %def_u32.0411, %if.end35 ], [ 1, %if.then59 ], [ 1, %if.end54 ], [ %def_u32.0411, %if.then79 ], [ %def_u32.0411, %if.end74 ], [ %def_u32.0411, %if.then98 ], [ %def_u32.0411, %if.end93 ]
  %def_u64.1 = phi i32 [ %def_u64.0412, %if.end ], [ %def_u64.0412, %if.then21 ], [ %def_u64.0412, %if.end17 ], [ %def_u64.0412, %if.then40 ], [ %def_u64.0412, %if.end35 ], [ %def_u64.0412, %if.then59 ], [ %def_u64.0412, %if.end54 ], [ 1, %if.then79 ], [ 1, %if.end74 ], [ %def_u64.0412, %if.then98 ], [ %def_u64.0412, %if.end93 ]
  %def_d.1 = phi i32 [ %def_d.0413, %if.end ], [ %def_d.0413, %if.then21 ], [ %def_d.0413, %if.end17 ], [ %def_d.0413, %if.then40 ], [ %def_d.0413, %if.end35 ], [ %def_d.0413, %if.then59 ], [ %def_d.0413, %if.end54 ], [ %def_d.0413, %if.then79 ], [ %def_d.0413, %if.end74 ], [ 1, %if.then98 ], [ 1, %if.end93 ]
  %type.1 = phi i8* [ %5, %if.end ], [ %type.0415, %if.then21 ], [ %type.0415, %if.end17 ], [ %type.0415, %if.then40 ], [ %type.0415, %if.end35 ], [ %type.0415, %if.then59 ], [ %type.0415, %if.end54 ], [ %type.0415, %if.then79 ], [ %type.0415, %if.end74 ], [ %type.0415, %if.then98 ], [ %type.0415, %if.end93 ]
  %18 = load i8*, i8** %p, align 8, !tbaa !13
  %19 = load i8, i8* %18, align 1, !tbaa !31
  %cmp112.not = icmp eq i8 %19, 0
  br i1 %cmp112.not, label %for.inc, label %if.then114

if.then114:                                       ; preds = %if.end110
  %key.le = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0414, i64 0, i32 0
  %curr115 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %20 = load i32, i32* %curr115, align 8, !tbaa !10
  %21 = load i8*, i8** %key.le, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i64 0, i64 0), i32 noundef %20, i8* noundef nonnull %18, i8* noundef %21) #6
  br label %cleanup

for.inc:                                          ; preds = %if.end110
  %inc118 = add nuw nsw i32 %i.0416, 1
  %incdec.ptr = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0414, i64 1
  %22 = load i32, i32* %numpairs, align 4, !tbaa !9
  %cmp = icmp slt i32 %inc118, %22
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !32

for.end:                                          ; preds = %for.inc, %entry
  %def_i32.0.lcssa = phi i32 [ 0, %entry ], [ %def_i32.1, %for.inc ]
  %def_i64.0.lcssa = phi i32 [ 0, %entry ], [ %def_i64.1, %for.inc ]
  %def_u32.0.lcssa = phi i32 [ 0, %entry ], [ %def_u32.1, %for.inc ]
  %def_u64.0.lcssa = phi i32 [ 0, %entry ], [ %def_u64.1, %for.inc ]
  %def_d.0.lcssa = phi i32 [ 0, %entry ], [ %def_d.1, %for.inc ]
  %type.0.lcssa = phi i8* [ null, %entry ], [ %type.1, %for.inc ]
  %call119 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* noundef %type.0.lcssa) #6
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then121, label %if.end123

if.then121:                                       ; preds = %for.end
  %curr122 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %23 = load i32, i32* %curr122, align 8, !tbaa !10
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i32 noundef %23) #6
  br label %cleanup

if.end123:                                        ; preds = %for.end
  %call124 = call i32 @strcasecmp(i8* noundef %type.0.lcssa, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #9
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then127, label %if.else141

if.then127:                                       ; preds = %if.end123
  %cmp128 = icmp ne i32 %def_i32.0.lcssa, 0
  %conv129 = zext i1 %cmp128 to i32
  %call130 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv129) #6
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then137, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then127
  %valid_i32132 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 6
  %24 = load i32, i32* %valid_i32132, align 8, !tbaa !21
  %cmp133 = icmp ne i32 %24, 0
  %conv134 = zext i1 %cmp133 to i32
  %call135 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv134) #6
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.then137, label %if.end139

if.then137:                                       ; preds = %lor.lhs.false, %if.then127
  %curr138 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %25 = load i32, i32* %curr138, align 8, !tbaa !10
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0), i32 noundef %25) #6
  br label %cleanup

if.end139:                                        ; preds = %lor.lhs.false
  %i32140 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 1
  %26 = load i32, i32* %i32140, align 8, !tbaa !22
  store i32 %26, i32* @param_conversion_load_stanza.ref_i32, align 4, !tbaa !33
  store i32 %26, i32* @param_conversion_load_stanza.datum_i32, align 4, !tbaa !33
  %datum = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 12
  store i8* bitcast (i32* @param_conversion_load_stanza.datum_i32 to i8*), i8** %datum, align 8, !tbaa !34
  %ref = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 11
  store i8* bitcast (i32* @param_conversion_load_stanza.ref_i32 to i8*), i8** %ref, align 8, !tbaa !35
  %size = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 13
  store i64 4, i64* %size, align 8, !tbaa !36
  br label %cleanup

if.else141:                                       ; preds = %if.end123
  %call142 = call i32 @strcasecmp(i8* noundef %type.0.lcssa, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #9
  %cmp143 = icmp eq i32 %call142, 0
  br i1 %cmp143, label %if.then145, label %if.else163

if.then145:                                       ; preds = %if.else141
  %cmp146 = icmp ne i32 %def_i64.0.lcssa, 0
  %conv147 = zext i1 %cmp146 to i32
  %call148 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv147) #6
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.then156, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %if.then145
  %valid_i64151 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 7
  %27 = load i32, i32* %valid_i64151, align 4, !tbaa !23
  %cmp152 = icmp ne i32 %27, 0
  %conv153 = zext i1 %cmp152 to i32
  %call154 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv153) #6
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.then156, label %if.end158

if.then156:                                       ; preds = %lor.lhs.false150, %if.then145
  %curr157 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %28 = load i32, i32* %curr157, align 8, !tbaa !10
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i32 noundef %28) #6
  br label %cleanup

if.end158:                                        ; preds = %lor.lhs.false150
  %i64159 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 2
  %29 = load i64, i64* %i64159, align 8, !tbaa !24
  store i64 %29, i64* @param_conversion_load_stanza.ref_i64, align 8, !tbaa !37
  store i64 %29, i64* @param_conversion_load_stanza.datum_i64, align 8, !tbaa !37
  %datum160 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 12
  store i8* bitcast (i64* @param_conversion_load_stanza.datum_i64 to i8*), i8** %datum160, align 8, !tbaa !34
  %ref161 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 11
  store i8* bitcast (i64* @param_conversion_load_stanza.ref_i64 to i8*), i8** %ref161, align 8, !tbaa !35
  %size162 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 13
  store i64 8, i64* %size162, align 8, !tbaa !36
  br label %cleanup

if.else163:                                       ; preds = %if.else141
  %call164 = call i32 @strcasecmp(i8* noundef %type.0.lcssa, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)) #9
  %cmp165 = icmp eq i32 %call164, 0
  br i1 %cmp165, label %if.then167, label %if.else185

if.then167:                                       ; preds = %if.else163
  %cmp168 = icmp ne i32 %def_u32.0.lcssa, 0
  %conv169 = zext i1 %cmp168 to i32
  %call170 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv169) #6
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.then178, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %if.then167
  %valid_u32173 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 8
  %30 = load i32, i32* %valid_u32173, align 8, !tbaa !25
  %cmp174 = icmp ne i32 %30, 0
  %conv175 = zext i1 %cmp174 to i32
  %call176 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv175) #6
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.then178, label %if.end180

if.then178:                                       ; preds = %lor.lhs.false172, %if.then167
  %curr179 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %31 = load i32, i32* %curr179, align 8, !tbaa !10
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 noundef %31) #6
  br label %cleanup

if.end180:                                        ; preds = %lor.lhs.false172
  %u32181 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 3
  %32 = load i32, i32* %u32181, align 8, !tbaa !26
  store i32 %32, i32* @param_conversion_load_stanza.ref_u32, align 4, !tbaa !33
  store i32 %32, i32* @param_conversion_load_stanza.datum_u32, align 4, !tbaa !33
  %datum182 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 12
  store i8* bitcast (i32* @param_conversion_load_stanza.datum_u32 to i8*), i8** %datum182, align 8, !tbaa !34
  %ref183 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 11
  store i8* bitcast (i32* @param_conversion_load_stanza.ref_u32 to i8*), i8** %ref183, align 8, !tbaa !35
  %size184 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 13
  store i64 4, i64* %size184, align 8, !tbaa !36
  br label %cleanup

if.else185:                                       ; preds = %if.else163
  %call186 = call i32 @strcasecmp(i8* noundef %type.0.lcssa, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #9
  %cmp187 = icmp eq i32 %call186, 0
  br i1 %cmp187, label %if.then189, label %if.else207

if.then189:                                       ; preds = %if.else185
  %cmp190 = icmp ne i32 %def_u64.0.lcssa, 0
  %conv191 = zext i1 %cmp190 to i32
  %call192 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv191) #6
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.then200, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %if.then189
  %valid_u64195 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 9
  %33 = load i32, i32* %valid_u64195, align 4, !tbaa !27
  %cmp196 = icmp ne i32 %33, 0
  %conv197 = zext i1 %cmp196 to i32
  %call198 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv197) #6
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.then200, label %if.end202

if.then200:                                       ; preds = %lor.lhs.false194, %if.then189
  %curr201 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %34 = load i32, i32* %curr201, align 8, !tbaa !10
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0), i32 noundef %34) #6
  br label %cleanup

if.end202:                                        ; preds = %lor.lhs.false194
  %u64203 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 4
  %35 = load i64, i64* %u64203, align 8, !tbaa !28
  store i64 %35, i64* @param_conversion_load_stanza.ref_u64, align 8, !tbaa !37
  store i64 %35, i64* @param_conversion_load_stanza.datum_u64, align 8, !tbaa !37
  %datum204 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 12
  store i8* bitcast (i64* @param_conversion_load_stanza.datum_u64 to i8*), i8** %datum204, align 8, !tbaa !34
  %ref205 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 11
  store i8* bitcast (i64* @param_conversion_load_stanza.ref_u64 to i8*), i8** %ref205, align 8, !tbaa !35
  %size206 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 13
  store i64 8, i64* %size206, align 8, !tbaa !36
  br label %cleanup

if.else207:                                       ; preds = %if.else185
  %call208 = call i32 @strcasecmp(i8* noundef %type.0.lcssa, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0)) #9
  %cmp209 = icmp eq i32 %call208, 0
  br i1 %cmp209, label %if.then211, label %if.else229

if.then211:                                       ; preds = %if.else207
  %cmp212 = icmp ne i32 %def_d.0.lcssa, 0
  %conv213 = zext i1 %cmp212 to i32
  %call214 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv213) #6
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.then222, label %lor.lhs.false216

lor.lhs.false216:                                 ; preds = %if.then211
  %valid_d217 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 10
  %36 = load i32, i32* %valid_d217, align 8, !tbaa !29
  %cmp218 = icmp ne i32 %36, 0
  %conv219 = zext i1 %cmp218 to i32
  %call220 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv219) #6
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.then222, label %if.end224

if.then222:                                       ; preds = %lor.lhs.false216, %if.then211
  %curr223 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %37 = load i32, i32* %curr223, align 8, !tbaa !10
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i64 0, i64 0), i32 noundef %37) #6
  br label %cleanup

if.end224:                                        ; preds = %lor.lhs.false216
  %d225 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 5
  %38 = load double, double* %d225, align 8, !tbaa !30
  store double %38, double* @param_conversion_load_stanza.ref_d, align 8, !tbaa !38
  store double %38, double* @param_conversion_load_stanza.datum_d, align 8, !tbaa !38
  %datum226 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 12
  store i8* bitcast (double* @param_conversion_load_stanza.datum_d to i8*), i8** %datum226, align 8, !tbaa !34
  %ref227 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 11
  store i8* bitcast (double* @param_conversion_load_stanza.ref_d to i8*), i8** %ref227, align 8, !tbaa !35
  %size228 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 13
  store i64 8, i64* %size228, align 8, !tbaa !36
  br label %cleanup

if.else229:                                       ; preds = %if.else207
  %curr230 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 2
  %39 = load i32, i32* %curr230, align 8, !tbaa !10
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i64 0, i64 0), i32 noundef %39) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %if.end180, %if.end224, %if.end202, %if.end158, %if.else229, %if.then222, %if.then200, %if.then178, %if.then156, %if.then137, %if.then121, %if.then114, %if.else102, %if.then91, %if.then72, %if.then52, %if.then33, %if.then15, %if.then8, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then8 ], [ 0, %if.then114 ], [ 0, %if.then15 ], [ 0, %if.then33 ], [ 0, %if.then52 ], [ 0, %if.then72 ], [ 0, %if.then91 ], [ 0, %if.else102 ], [ 0, %if.then137 ], [ 0, %if.then156 ], [ 0, %if.then178 ], [ 0, %if.then200 ], [ 0, %if.then222 ], [ 0, %if.else229 ], [ 0, %if.then121 ], [ 1, %if.end158 ], [ 1, %if.end202 ], [ 1, %if.end224 ], [ 1, %if.end180 ], [ 1, %if.end139 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @param_conversion_test(%struct.PARAM_CONVERSION* noundef readonly %pc, i32 noundef %line) unnamed_addr #1 {
entry:
  %i32 = alloca i32, align 4
  %i64 = alloca i64, align 8
  %u32 = alloca i32, align 4
  %u64 = alloca i64, align 8
  %d = alloca double, align 8
  %0 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %1 = bitcast i64* %i64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %2 = bitcast i32* %u32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  %3 = bitcast i64* %u64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  %4 = bitcast double* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7
  %valid_i32 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 6
  %5 = load i32, i32* %valid_i32, align 8, !tbaa !21
  %tobool.not = icmp eq i32 %5, 0
  %param = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 0
  %6 = load %struct.ossl_param_st*, %struct.ossl_param_st** %param, align 8, !tbaa !17
  %call = call i32 @OSSL_PARAM_get_int32(%struct.ossl_param_st* noundef %6, i32* noundef nonnull %i32) #6
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup.sink.split, label %if.end34

if.else:                                          ; preds = %entry
  %call8 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %7 = load i32, i32* %i32, align 4, !tbaa !33
  %i3210 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 1
  %8 = load i32, i32* %i3210, align 8, !tbaa !22
  %cmp11 = icmp eq i32 %7, %8
  %conv12 = zext i1 %cmp11 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv12) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup.sink.split, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false
  %datum = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 12
  %9 = load i8*, i8** %datum, align 8, !tbaa !34
  %size = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 13
  %10 = load i64, i64* %size, align 8, !tbaa !36
  %call19 = call i8* @memset(i8* noundef %9, i32 noundef 44, i64 noundef %10) #6
  %11 = load %struct.ossl_param_st*, %struct.ossl_param_st** %param, align 8, !tbaa !17
  %12 = load i32, i32* %i32, align 4, !tbaa !33
  %call21 = call i32 @OSSL_PARAM_set_int32(%struct.ossl_param_st* noundef %11, i32 noundef %12) #6
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv23) #6
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup.sink.split, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end18
  %13 = load i8*, i8** %datum, align 8, !tbaa !34
  %14 = load i64, i64* %size, align 8, !tbaa !36
  %ref = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 11
  %15 = load i8*, i8** %ref, align 8, !tbaa !35
  %call30 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i8* noundef %13, i64 noundef %14, i8* noundef %15, i64 noundef %14) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup.sink.split, label %if.end34

if.end34:                                         ; preds = %lor.lhs.false26, %if.then
  %valid_i64 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 7
  %16 = load i32, i32* %valid_i64, align 4, !tbaa !23
  %tobool35.not = icmp eq i32 %16, 0
  %param37 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 0
  %17 = load %struct.ossl_param_st*, %struct.ossl_param_st** %param37, align 8, !tbaa !17
  %call38 = call i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef %17, i64* noundef nonnull %i64) #6
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  br i1 %tobool35.not, label %if.then36, label %if.else45

if.then36:                                        ; preds = %if.end34
  %call41 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv40) #6
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup.sink.split, label %if.end80

if.else45:                                        ; preds = %if.end34
  %call50 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv40) #6
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup.sink.split, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.else45
  %18 = load i64, i64* %i64, align 8, !tbaa !37
  %i6453 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 2
  %19 = load i64, i64* %i6453, align 8, !tbaa !24
  %cmp54 = icmp eq i64 %18, %19
  %conv55 = zext i1 %cmp54 to i32
  %call58 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv55) #6
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup.sink.split, label %if.end61

if.end61:                                         ; preds = %lor.lhs.false52
  %datum62 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 12
  %20 = load i8*, i8** %datum62, align 8, !tbaa !34
  %size63 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 13
  %21 = load i64, i64* %size63, align 8, !tbaa !36
  %call64 = call i8* @memset(i8* noundef %20, i32 noundef 44, i64 noundef %21) #6
  %22 = load %struct.ossl_param_st*, %struct.ossl_param_st** %param37, align 8, !tbaa !17
  %23 = load i64, i64* %i64, align 8, !tbaa !37
  %call66 = call i32 @OSSL_PARAM_set_int64(%struct.ossl_param_st* noundef %22, i64 noundef %23) #6
  %cmp67 = icmp ne i32 %call66, 0
  %conv68 = zext i1 %cmp67 to i32
  %call69 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv68) #6
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %cleanup.sink.split, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.end61
  %24 = load i8*, i8** %datum62, align 8, !tbaa !34
  %25 = load i64, i64* %size63, align 8, !tbaa !36
  %ref74 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 11
  %26 = load i8*, i8** %ref74, align 8, !tbaa !35
  %call76 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i8* noundef %24, i64 noundef %25, i8* noundef %26, i64 noundef %25) #6
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %cleanup.sink.split, label %if.end80

if.end80:                                         ; preds = %lor.lhs.false71, %if.then36
  %valid_u32 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 8
  %27 = load i32, i32* %valid_u32, align 8, !tbaa !25
  %tobool81.not = icmp eq i32 %27, 0
  %param83 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 0
  %28 = load %struct.ossl_param_st*, %struct.ossl_param_st** %param83, align 8, !tbaa !17
  %call84 = call i32 @OSSL_PARAM_get_uint32(%struct.ossl_param_st* noundef %28, i32* noundef nonnull %u32) #6
  %cmp85 = icmp ne i32 %call84, 0
  %conv86 = zext i1 %cmp85 to i32
  br i1 %tobool81.not, label %if.then82, label %if.else91

if.then82:                                        ; preds = %if.end80
  %call87 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv86) #6
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %cleanup.sink.split, label %if.end126

if.else91:                                        ; preds = %if.end80
  %call96 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv86) #6
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %cleanup.sink.split, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %if.else91
  %29 = load i32, i32* %u32, align 4, !tbaa !33
  %u3299 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 3
  %30 = load i32, i32* %u3299, align 8, !tbaa !26
  %cmp100 = icmp eq i32 %29, %30
  %conv101 = zext i1 %cmp100 to i32
  %call104 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i64 0, i64 0), i32 noundef %conv101) #6
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %cleanup.sink.split, label %if.end107

if.end107:                                        ; preds = %lor.lhs.false98
  %datum108 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 12
  %31 = load i8*, i8** %datum108, align 8, !tbaa !34
  %size109 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 13
  %32 = load i64, i64* %size109, align 8, !tbaa !36
  %call110 = call i8* @memset(i8* noundef %31, i32 noundef 44, i64 noundef %32) #6
  %33 = load %struct.ossl_param_st*, %struct.ossl_param_st** %param83, align 8, !tbaa !17
  %34 = load i32, i32* %u32, align 4, !tbaa !33
  %call112 = call i32 @OSSL_PARAM_set_uint32(%struct.ossl_param_st* noundef %33, i32 noundef %34) #6
  %cmp113 = icmp ne i32 %call112, 0
  %conv114 = zext i1 %cmp113 to i32
  %call115 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv114) #6
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %cleanup.sink.split, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %if.end107
  %35 = load i8*, i8** %datum108, align 8, !tbaa !34
  %36 = load i64, i64* %size109, align 8, !tbaa !36
  %ref120 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 11
  %37 = load i8*, i8** %ref120, align 8, !tbaa !35
  %call122 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i8* noundef %35, i64 noundef %36, i8* noundef %37, i64 noundef %36) #6
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %cleanup.sink.split, label %if.end126

if.end126:                                        ; preds = %lor.lhs.false117, %if.then82
  %valid_u64 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 9
  %38 = load i32, i32* %valid_u64, align 4, !tbaa !27
  %tobool127.not = icmp eq i32 %38, 0
  %param129 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 0
  %39 = load %struct.ossl_param_st*, %struct.ossl_param_st** %param129, align 8, !tbaa !17
  %call130 = call i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef %39, i64* noundef nonnull %u64) #6
  %cmp131 = icmp ne i32 %call130, 0
  %conv132 = zext i1 %cmp131 to i32
  br i1 %tobool127.not, label %if.then128, label %if.else137

if.then128:                                       ; preds = %if.end126
  %call133 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.72, i64 0, i64 0), i32 noundef %conv132) #6
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %cleanup.sink.split, label %if.end172

if.else137:                                       ; preds = %if.end126
  %call142 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.72, i64 0, i64 0), i32 noundef %conv132) #6
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %cleanup.sink.split, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %if.else137
  %40 = load i64, i64* %u64, align 8, !tbaa !37
  %u64145 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 4
  %41 = load i64, i64* %u64145, align 8, !tbaa !28
  %cmp146 = icmp eq i64 %40, %41
  %conv147 = zext i1 %cmp146 to i32
  %call150 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i64 0, i64 0), i32 noundef %conv147) #6
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %cleanup.sink.split, label %if.end153

if.end153:                                        ; preds = %lor.lhs.false144
  %datum154 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 12
  %42 = load i8*, i8** %datum154, align 8, !tbaa !34
  %size155 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 13
  %43 = load i64, i64* %size155, align 8, !tbaa !36
  %call156 = call i8* @memset(i8* noundef %42, i32 noundef 44, i64 noundef %43) #6
  %44 = load %struct.ossl_param_st*, %struct.ossl_param_st** %param129, align 8, !tbaa !17
  %45 = load i64, i64* %u64, align 8, !tbaa !37
  %call158 = call i32 @OSSL_PARAM_set_uint64(%struct.ossl_param_st* noundef %44, i64 noundef %45) #6
  %cmp159 = icmp ne i32 %call158, 0
  %conv160 = zext i1 %cmp159 to i32
  %call161 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.76, i64 0, i64 0), i32 noundef %conv160) #6
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %cleanup.sink.split, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %if.end153
  %46 = load i8*, i8** %datum154, align 8, !tbaa !34
  %47 = load i64, i64* %size155, align 8, !tbaa !36
  %ref166 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 11
  %48 = load i8*, i8** %ref166, align 8, !tbaa !35
  %call168 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i8* noundef %46, i64 noundef %47, i8* noundef %48, i64 noundef %47) #6
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %cleanup.sink.split, label %if.end172

if.end172:                                        ; preds = %lor.lhs.false163, %if.then128
  %valid_d = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 10
  %49 = load i32, i32* %valid_d, align 8, !tbaa !29
  %tobool173.not = icmp eq i32 %49, 0
  %param175 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 0
  %50 = load %struct.ossl_param_st*, %struct.ossl_param_st** %param175, align 8, !tbaa !17
  %call176 = call i32 @OSSL_PARAM_get_double(%struct.ossl_param_st* noundef %50, double* noundef nonnull %d) #6
  %cmp177 = icmp ne i32 %call176, 0
  %conv178 = zext i1 %cmp177 to i32
  br i1 %tobool173.not, label %if.then174, label %if.else183

if.then174:                                       ; preds = %if.end172
  %call179 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv178) #6
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %cleanup.sink.split, label %cleanup

if.else183:                                       ; preds = %if.end172
  %call188 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv178) #6
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %cleanup.sink.split, label %if.end191

if.end191:                                        ; preds = %if.else183
  %51 = load double, double* %d, align 8, !tbaa !38
  %cmp192 = fcmp ord double %51, 0.000000e+00
  %d206 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 5
  %52 = load double, double* %d206, align 8, !tbaa !30
  br i1 %cmp192, label %if.else205, label %if.then194

if.then194:                                       ; preds = %if.end191
  %cmp197 = fcmp ord double %52, 0.000000e+00
  %conv198 = zext i1 %cmp197 to i32
  %call201 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i64 0, i64 0), i32 noundef %conv198) #6
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %cleanup.sink.split, label %if.end215

if.else205:                                       ; preds = %if.end191
  %cmp207 = fcmp oeq double %51, %52
  %conv208 = zext i1 %cmp207 to i32
  %call211 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i64 0, i64 0), i32 noundef %conv208) #6
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %cleanup.sink.split, label %if.end215

if.end215:                                        ; preds = %if.else205, %if.then194
  %datum216 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 12
  %53 = load i8*, i8** %datum216, align 8, !tbaa !34
  %size217 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 13
  %54 = load i64, i64* %size217, align 8, !tbaa !36
  %call218 = call i8* @memset(i8* noundef %53, i32 noundef 44, i64 noundef %54) #6
  %55 = load %struct.ossl_param_st*, %struct.ossl_param_st** %param175, align 8, !tbaa !17
  %56 = load double, double* %d, align 8, !tbaa !38
  %call220 = call i32 @OSSL_PARAM_set_double(%struct.ossl_param_st* noundef %55, double noundef %56) #6
  %cmp221 = icmp ne i32 %call220, 0
  %conv222 = zext i1 %cmp221 to i32
  %call223 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.85, i64 0, i64 0), i32 noundef %conv222) #6
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %cleanup.sink.split, label %lor.lhs.false225

lor.lhs.false225:                                 ; preds = %if.end215
  %57 = load i8*, i8** %datum216, align 8, !tbaa !34
  %58 = load i64, i64* %size217, align 8, !tbaa !36
  %ref228 = getelementptr inbounds %struct.PARAM_CONVERSION, %struct.PARAM_CONVERSION* %pc, i64 0, i32 11
  %59 = load i8*, i8** %ref228, align 8, !tbaa !35
  %call230 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i8* noundef %57, i64 noundef %58, i8* noundef %59, i64 noundef %58) #6
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end215, %lor.lhs.false225, %if.else205, %if.then194, %if.else183, %if.then174, %if.end153, %lor.lhs.false163, %if.else137, %lor.lhs.false144, %if.then128, %if.end107, %lor.lhs.false117, %if.else91, %lor.lhs.false98, %if.then82, %if.end61, %lor.lhs.false71, %if.else45, %lor.lhs.false52, %if.then36, %if.end18, %lor.lhs.false26, %if.else, %lor.lhs.false, %if.then
  %.sink = phi i8* [ getelementptr inbounds ([48 x i8], [48 x i8]* @.str.53, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([42 x i8], [42 x i8]* @.str.55, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([42 x i8], [42 x i8]* @.str.55, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([50 x i8], [50 x i8]* @.str.59, i64 0, i64 0), %lor.lhs.false26 ], [ getelementptr inbounds ([50 x i8], [50 x i8]* @.str.59, i64 0, i64 0), %if.end18 ], [ getelementptr inbounds ([48 x i8], [48 x i8]* @.str.61, i64 0, i64 0), %if.then36 ], [ getelementptr inbounds ([42 x i8], [42 x i8]* @.str.63, i64 0, i64 0), %lor.lhs.false52 ], [ getelementptr inbounds ([42 x i8], [42 x i8]* @.str.63, i64 0, i64 0), %if.else45 ], [ getelementptr inbounds ([50 x i8], [50 x i8]* @.str.65, i64 0, i64 0), %lor.lhs.false71 ], [ getelementptr inbounds ([50 x i8], [50 x i8]* @.str.65, i64 0, i64 0), %if.end61 ], [ getelementptr inbounds ([49 x i8], [49 x i8]* @.str.67, i64 0, i64 0), %if.then82 ], [ getelementptr inbounds ([43 x i8], [43 x i8]* @.str.69, i64 0, i64 0), %lor.lhs.false98 ], [ getelementptr inbounds ([43 x i8], [43 x i8]* @.str.69, i64 0, i64 0), %if.else91 ], [ getelementptr inbounds ([51 x i8], [51 x i8]* @.str.71, i64 0, i64 0), %lor.lhs.false117 ], [ getelementptr inbounds ([51 x i8], [51 x i8]* @.str.71, i64 0, i64 0), %if.end107 ], [ getelementptr inbounds ([49 x i8], [49 x i8]* @.str.73, i64 0, i64 0), %if.then128 ], [ getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i64 0, i64 0), %lor.lhs.false144 ], [ getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i64 0, i64 0), %if.else137 ], [ getelementptr inbounds ([51 x i8], [51 x i8]* @.str.77, i64 0, i64 0), %lor.lhs.false163 ], [ getelementptr inbounds ([51 x i8], [51 x i8]* @.str.77, i64 0, i64 0), %if.end153 ], [ getelementptr inbounds ([49 x i8], [49 x i8]* @.str.79, i64 0, i64 0), %if.then174 ], [ getelementptr inbounds ([39 x i8], [39 x i8]* @.str.80, i64 0, i64 0), %if.else183 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.82, i64 0, i64 0), %if.then194 ], [ getelementptr inbounds ([43 x i8], [43 x i8]* @.str.84, i64 0, i64 0), %if.else205 ], [ getelementptr inbounds ([51 x i8], [51 x i8]* @.str.86, i64 0, i64 0), %lor.lhs.false225 ], [ getelementptr inbounds ([51 x i8], [51 x i8]* @.str.86, i64 0, i64 0), %if.end215 ]
  call void (i8*, ...) @test_note(i8* noundef %.sink, i32 noundef %line) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then174, %lor.lhs.false225
  %retval.0 = phi i32 [ 1, %lor.lhs.false225 ], [ 1, %if.then174 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare dso_local void @test_clearstanza(%struct.stanza_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_end_file(%struct.stanza_st* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
declare dso_local i64 @strtoimax(i8* noalias noundef, i8** noalias noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
declare dso_local i64 @strtoumax(i8* noalias noundef, i8** noalias noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local double @strtod(i8* noundef, i8** noundef) local_unnamed_addr #4

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_get_int32(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_set_int32(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_set_int64(%struct.ossl_param_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_get_uint32(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_set_uint32(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_set_uint64(%struct.ossl_param_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_get_double(%struct.ossl_param_st* noundef, double* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_set_double(%struct.ossl_param_st* noundef, double noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 8}
!4 = !{!"stanza_st", !5, i64 0, !5, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !6, i64 40, !5, i64 2440, !6, i64 2448}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !8, i64 36}
!10 = !{!4, !8, i64 16}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !5, i64 0}
!15 = !{!"pair_st", !5, i64 0, !5, i64 8}
!16 = !{!15, !5, i64 8}
!17 = !{!18, !5, i64 0}
!18 = !{!"", !5, i64 0, !8, i64 8, !19, i64 16, !8, i64 24, !19, i64 32, !20, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !5, i64 72, !5, i64 80, !19, i64 88}
!19 = !{!"long", !6, i64 0}
!20 = !{!"double", !6, i64 0}
!21 = !{!18, !8, i64 48}
!22 = !{!18, !8, i64 8}
!23 = !{!18, !8, i64 52}
!24 = !{!18, !19, i64 16}
!25 = !{!18, !8, i64 56}
!26 = !{!18, !8, i64 24}
!27 = !{!18, !8, i64 60}
!28 = !{!18, !19, i64 32}
!29 = !{!18, !8, i64 64}
!30 = !{!18, !20, i64 40}
!31 = !{!6, !6, i64 0}
!32 = distinct !{!32, !12}
!33 = !{!8, !8, i64 0}
!34 = !{!18, !5, i64 80}
!35 = !{!18, !5, i64 72}
!36 = !{!18, !19, i64 88}
!37 = !{!19, !19, i64 0}
!38 = !{!20, !20, i64 0}
