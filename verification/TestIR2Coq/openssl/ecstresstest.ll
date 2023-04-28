; ModuleID = 'test/ecstresstest.c'
source_filename = "test/ecstresstest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.bignum_st = type opaque
%struct.ec_group_st = type opaque
%struct.ec_point_st = type opaque
%struct.bignum_ctx = type opaque

@test_get_options.test_options = internal constant [10 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
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
@.str.14 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Number of repeats\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"1000000\00", align 1
@num_repeats = internal global i64 0, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"test/ecstresstest.c\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Cannot parse 1000000\00", align 1
@print_mode = internal unnamed_addr global i1 false, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"test_curve\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"group = EC_GROUP_new_by_curve_name(NID_X9_62_prime256v1)\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"point = EC_POINT_dup(EC_GROUP_get0_generator(group), group)\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"result = walk_curve(group, point, num_repeats)\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"BN_hex2bn(&expected_result, kP256DefaultResult)\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"expected_result\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"scalar = BN_new()\00", align 1
@.str.28 = private unnamed_addr constant [66 x i8] c"EC_POINT_get_affine_coordinates(group, point, scalar, NULL, NULL)\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"EC_POINT_mul(group, point, NULL, point, scalar, NULL)\00", align 1
@.str.30 = private unnamed_addr constant [65 x i8] c"A1E24B223B8E81BC1FFF99BAFB909EDB895FACDE7D6DA5EF5E7B3255FB378E0F\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([10 x %struct.options_st], [10 x %struct.options_st]* @test_get_options.test_options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @opt_intmax(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i64* noundef nonnull @num_repeats) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %while.cond

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0)) #4
  br label %cleanup

while.cond:                                       ; preds = %entry, %while.cond.backedge
  %call1 = tail call i32 @opt_next() #4
  switch i32 %call1, label %cleanup [
    i32 0, label %while.end
    i32 1, label %sw.bb
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %if.end7
  br label %while.cond, !llvm.loop !3

sw.bb:                                            ; preds = %while.cond
  %call2 = tail call i8* @opt_arg() #4
  %call3 = tail call i32 @opt_intmax(i8* noundef %call2, i64* noundef nonnull @num_repeats) #4
  %tobool4 = icmp eq i32 %call3, 0
  %0 = load i64, i64* @num_repeats, align 8
  %cmp5 = icmp slt i64 %0, 0
  %or.cond = select i1 %tobool4, i1 true, i1 %cmp5
  br i1 %or.cond, label %cleanup, label %if.end7

if.end7:                                          ; preds = %sw.bb
  store i1 true, i1* @print_mode, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  tail call void @add_test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 ()* noundef nonnull @test_curve) #4
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %sw.bb, %while.end, %if.then
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %if.then ], [ 0, %sw.bb ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_intmax(i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i8* @opt_arg() local_unnamed_addr #3

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_curve() #1 {
entry:
  %expected_result = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %expected_result to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %expected_result, align 8, !tbaa !5
  %call = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef 415) #4
  %1 = bitcast %struct.ec_group_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.20, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %call) #4
  %call3 = tail call %struct.ec_point_st* @EC_POINT_dup(%struct.ec_point_st* noundef %call2, %struct.ec_group_st* noundef %call) #4
  %2 = bitcast %struct.ec_point_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.21, i64 0, i64 0), i8* noundef %2) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* @num_repeats, align 8, !tbaa !9
  %call7 = tail call fastcc %struct.bignum_st* @walk_curve(%struct.ec_group_st* noundef %call, %struct.ec_point_st* noundef %call3, i64 noundef %3) #6
  %4 = bitcast %struct.bignum_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0), i8* noundef %4) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false6
  %.b = load i1, i1* @print_mode, align 4
  br i1 %.b, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call12 = tail call i32 @BN_print(%struct.bio_st* noundef %5, %struct.bignum_st* noundef %call7) #4
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)) #4
  br label %err

if.else:                                          ; preds = %if.end
  %call14 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %expected_result, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.30, i64 0, i64 0)) #4
  %cmp = icmp ne i32 %call14, 0
  %conv = zext i1 %cmp to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.else
  %7 = bitcast %struct.bignum_st** %expected_result to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !5
  %call18 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* noundef %8) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %9 = load %struct.bignum_st*, %struct.bignum_st** %expected_result, align 8, !tbaa !5
  %call21 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %9) #4
  %tobool22.not = icmp ne i32 %call21, 0
  %spec.select = zext i1 %tobool22.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false20, %if.then11, %if.else, %lor.lhs.false17
  %ret.0 = phi i32 [ 1, %if.then11 ], [ 0, %lor.lhs.false17 ], [ 0, %if.else ], [ %spec.select, %lor.lhs.false20 ]
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %call) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %call3) #4
  call void @BN_free(%struct.bignum_st* noundef %call7) #4
  %10 = load %struct.bignum_st*, %struct.bignum_st** %expected_result, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %10) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false6, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef) local_unnamed_addr #3

declare dso_local %struct.ec_point_st* @EC_POINT_dup(%struct.ec_point_st* noundef, %struct.ec_group_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @walk_curve(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i64 noundef %num) unnamed_addr #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #4
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef null) #4
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %cmp533 = icmp sgt i64 %num, 0
  br i1 %cmp533, label %for.body, label %cleanup

for.cond:                                         ; preds = %lor.lhs.false12
  %exitcond.not = icmp eq i64 %inc, %num
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !11

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.034 = phi i64 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call7 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef null, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef null) #4
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv9) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %for.body
  %call13 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef null) #4
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv15) #4
  %tobool17.not = icmp eq i32 %call16, 0
  %inc = add nuw nsw i64 %i.034, 1
  br i1 %tobool17.not, label %err, label %for.cond

err:                                              ; preds = %for.body, %lor.lhs.false12, %entry, %lor.lhs.false
  tail call void @BN_free(%struct.bignum_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.cond.preheader, %err
  %retval.0 = phi %struct.bignum_st* [ null, %err ], [ %call, %for.cond.preheader ], [ %call, %for.cond ]
  ret %struct.bignum_st* %retval.0
}

declare dso_local i32 @BN_print(%struct.bio_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_hex2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_BN_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local void @EC_GROUP_free(%struct.ec_group_st* noundef) local_unnamed_addr #3

declare dso_local void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #3

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #3

declare dso_local i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @EC_POINT_mul(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

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
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !4}
