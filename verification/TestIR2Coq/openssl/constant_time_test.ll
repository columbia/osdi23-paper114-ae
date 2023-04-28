; ModuleID = 'test/constant_time_test.c'
source_filename = "test/constant_time_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque

@.str = private unnamed_addr constant [13 x i8] c"test_sizeofs\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"test_is_zero\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"test_is_zero_8\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"test_is_zero_32\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"test_is_zero_s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"test_binops\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"test_binops_8\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"test_binops_s\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"test_signed\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"test_8values\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"test_32values\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"test_64values\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"test/constant_time_test.c\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"OSSL_NELEM(test_values)\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"OSSL_NELEM(test_values_s)\00", align 1
@test_values = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 1024, i32 12345, i32 32000, i32 2147483646, i32 2147483647, i32 -2147483648, i32 -2, i32 -1], align 16
@.str.15 = private unnamed_addr constant [25 x i8] c"constant_time_is_zero(a)\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"CONSTTIME_TRUE\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"CONSTTIME_FALSE\00", align 1
@test_values_8 = internal unnamed_addr constant [9 x i8] c"\00\01\02\14 \7F\80\81\FF", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"constant_time_is_zero_8(a)\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"CONSTTIME_TRUE_8\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"CONSTTIME_FALSE_8\00", align 1
@test_values_32 = internal unnamed_addr constant [9 x i32] [i32 0, i32 1, i32 1024, i32 12345, i32 32000, i32 2147483647, i32 -2147483648, i32 -2, i32 -1], align 16
@.str.21 = private unnamed_addr constant [49 x i8] c"constant_time_is_zero_32(a) == CONSTTIME_TRUE_32\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"constant_time_is_zero_32(a) == CONSTTIME_FALSE_32\00", align 1
@test_values_s = internal unnamed_addr constant [10 x i64] [i64 0, i64 1, i64 1024, i64 12345, i64 32000, i64 9223372036854775806, i64 9223372036854775807, i64 -9223372036854775808, i64 -2, i64 -1], align 16
@.str.23 = private unnamed_addr constant [27 x i8] c"constant_time_is_zero_s(a)\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"CONSTTIME_TRUE_S\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"CONSTTIME_FALSE_S\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"constant_time_select(CONSTTIME_TRUE, a, b)\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"constant_time_select(CONSTTIME_FALSE, a, b)\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"op(a, b)\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"constant_time_select_s(CONSTTIME_TRUE_S, a, b)\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"constant_time_select_s(CONSTTIME_FALSE_S, a, b)\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"constant_time_eq_s(a, b)\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"op(a,b)\00", align 1
@signed_test_values = internal unnamed_addr constant [13 x i32] [i32 0, i32 1, i32 -1, i32 1024, i32 -1024, i32 12345, i32 -12345, i32 32000, i32 -32000, i32 2147483647, i32 -2147483648, i32 2147483646, i32 -2147483647], align 16
@.str.45 = private unnamed_addr constant [47 x i8] c"constant_time_select_int(CONSTTIME_TRUE, a, b)\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c"constant_time_select_int(CONSTTIME_FALSE, a, b)\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"constant_time_eq_int(a, b)\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"constant_time_eq_int_8(a, b)\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"constant_time_select_8(CONSTTIME_TRUE_8, a, b)\00", align 1
@.str.50 = private unnamed_addr constant [48 x i8] c"constant_time_select_8(CONSTTIME_FALSE_8, a, b)\00", align 1
@.str.51 = private unnamed_addr constant [54 x i8] c"constant_time_select_32(CONSTTIME_TRUE_32, a, b) == a\00", align 1
@.str.52 = private unnamed_addr constant [55 x i8] c"constant_time_select_32(CONSTTIME_FALSE_32, a, b) == b\00", align 1
@test_values_64 = internal unnamed_addr constant [11 x i64] [i64 0, i64 1, i64 1024, i64 12345, i64 32000, i64 32000000, i64 32000000001, i64 9223372036854775807, i64 -9223372036854775808, i64 -2, i64 -1], align 16
@.str.53 = private unnamed_addr constant [20 x i8] c"constant_time_lt_64\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"test_64values failed i=%d j=%d\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"TRUE %s op failed\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.56 = private unnamed_addr constant [13 x i8] c"a=%jx b=%jx\0A\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"FALSE %s op failed\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"test_select_64 TRUE failed\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"a=%jx b=%jx got %jx wanted a\0A\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"a=%jx b=%jx got %jx wanted b\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_sizeofs) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_is_zero, i32 noundef 10, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_is_zero_8, i32 noundef 9, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 (i32)* noundef nonnull @test_is_zero_32, i32 noundef 9, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 (i32)* noundef nonnull @test_is_zero_s, i32 noundef 10, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 (i32)* noundef nonnull @test_binops, i32 noundef 10, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 (i32)* noundef nonnull @test_binops_8, i32 noundef 9, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 (i32)* noundef nonnull @test_binops_s, i32 noundef 10, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 (i32)* noundef nonnull @test_signed, i32 noundef 13, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 (i32)* noundef nonnull @test_8values, i32 noundef 9, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 (i32)* noundef nonnull @test_32values, i32 noundef 9, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 (i32)* noundef nonnull @test_64values, i32 noundef 11, i32 noundef 1) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sizeofs() #0 {
entry:
  %call = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 noundef 10, i32 noundef 10) #4
  %tobool.not = icmp ne i32 %call, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_is_zero(i32 noundef %i) #0 {
entry:
  %cond = icmp eq i32 %i, 0
  br i1 %cond, label %land.lhs.true, label %land.lhs.true3

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @constant_time_is_zero(i32 noundef 0) #5, !range !3
  %call1 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef %call, i32 noundef -1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end8

land.lhs.true3:                                   ; preds = %entry
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @test_values, i64 0, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %call4 = tail call fastcc i32 @constant_time_is_zero(i32 noundef %0) #5, !range !3
  %call5 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 noundef %call4, i32 noundef 0) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %land.lhs.true3
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true3, %land.lhs.true, %if.end8
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_is_zero_8(i32 noundef %i) #0 {
entry:
  %cond = icmp eq i32 %i, 0
  br i1 %cond, label %land.lhs.true, label %land.lhs.true6

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc zeroext i8 @constant_time_is_zero_8(i32 noundef 0) #5
  %conv2 = zext i8 %call to i32
  %call3 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv2, i32 noundef 255) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end12

land.lhs.true6:                                   ; preds = %entry
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @test_values_8, i64 0, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = zext i8 %0 to i32
  %call7 = tail call fastcc zeroext i8 @constant_time_is_zero_8(i32 noundef %conv) #5
  %conv8 = zext i8 %call7 to i32
  %call9 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv8, i32 noundef 0) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %land.lhs.true6
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.end12
  %retval.0 = phi i32 [ 1, %if.end12 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_is_zero_32(i32 noundef %i) #0 {
entry:
  %cond = icmp eq i32 %i, 0
  br i1 %cond, label %land.lhs.true, label %land.lhs.true7

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @constant_time_is_zero_32(i32 noundef 0) #5
  %cmp1 = icmp eq i32 %call, -1
  %conv = zext i1 %cmp1 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end16

land.lhs.true7:                                   ; preds = %entry
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @test_values_32, i64 0, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %call8 = tail call fastcc i32 @constant_time_is_zero_32(i32 noundef %0) #5
  %cmp9 = icmp eq i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call13 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv10) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %land.lhs.true, %land.lhs.true7
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true7, %land.lhs.true, %if.end16
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_is_zero_s(i32 noundef %i) #0 {
entry:
  %cond = icmp eq i32 %i, 0
  br i1 %cond, label %land.lhs.true, label %land.lhs.true3

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i64 @constant_time_is_zero_s(i64 noundef 0) #5, !range !9
  %call1 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i64 noundef %call, i64 noundef -1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end8

land.lhs.true3:                                   ; preds = %entry
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [10 x i64], [10 x i64]* @test_values_s, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !10
  %call4 = tail call fastcc i64 @constant_time_is_zero_s(i64 noundef %0) #5
  %conv = trunc i64 %call4 to i32
  %call5 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %land.lhs.true3
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true3, %land.lhs.true, %if.end8
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binops(i32 noundef %i) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @test_values, i64 0, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %ret.061 = phi i32 [ 1, %entry ], [ %ret.1, %if.end ]
  %arrayidx2 = getelementptr inbounds [10 x i32], [10 x i32]* @test_values, i64 0, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4, !tbaa !4
  %call = tail call fastcc i32 @test_select(i32 noundef %0, i32 noundef %1) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %cmp3 = icmp ult i32 %0, %1
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call fastcc i32 @test_binary_op(i32 (i32, i32)* noundef nonnull @constant_time_lt, i32 noundef %0, i32 noundef %1, i32 noundef %conv) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp ult i32 %1, %0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = tail call fastcc i32 @test_binary_op(i32 (i32, i32)* noundef nonnull @constant_time_lt, i32 noundef %1, i32 noundef %0, i32 noundef %conv8) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %cmp12 = icmp uge i32 %0, %1
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call fastcc i32 @test_binary_op(i32 (i32, i32)* noundef nonnull @constant_time_ge, i32 noundef %0, i32 noundef %1, i32 noundef %conv13) #5
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false11
  %cmp17 = icmp uge i32 %1, %0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = tail call fastcc i32 @test_binary_op(i32 (i32, i32)* noundef nonnull @constant_time_ge, i32 noundef %1, i32 noundef %0, i32 noundef %conv18) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false16
  %cmp22 = icmp eq i32 %0, %1
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call fastcc i32 @test_binary_op(i32 (i32, i32)* noundef nonnull @constant_time_eq, i32 noundef %0, i32 noundef %1, i32 noundef %conv23) #5
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false21
  %call29 = tail call fastcc i32 @test_binary_op(i32 (i32, i32)* noundef nonnull @constant_time_eq, i32 noundef %1, i32 noundef %0, i32 noundef %conv23) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false26, %lor.lhs.false21, %lor.lhs.false16, %lor.lhs.false11, %lor.lhs.false6, %lor.lhs.false, %for.body
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false26
  %ret.1 = phi i32 [ %ret.061, %lor.lhs.false26 ], [ 0, %if.then ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %if.end
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binops_8(i32 noundef %i) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @test_values_8, i64 0, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = zext i8 %0 to i32
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %ret.059 = phi i32 [ 1, %entry ], [ %ret.1, %if.end ]
  %arrayidx3 = getelementptr inbounds [9 x i8], [9 x i8]* @test_values_8, i64 0, i64 %indvars.iv
  %1 = load i8, i8* %arrayidx3, align 1, !tbaa !8
  %conv4 = zext i8 %1 to i32
  %cmp5 = icmp ult i8 %0, %1
  %conv6 = zext i1 %cmp5 to i32
  %call = tail call fastcc i32 @test_binary_op_8(i8 (i32, i32)* noundef nonnull @constant_time_lt_8, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %cmp7 = icmp ult i8 %1, %0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = tail call fastcc i32 @test_binary_op_8(i8 (i32, i32)* noundef nonnull @constant_time_lt_8, i32 noundef %conv4, i32 noundef %conv, i32 noundef %conv8) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %cmp12 = icmp uge i8 %0, %1
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call fastcc i32 @test_binary_op_8(i8 (i32, i32)* noundef nonnull @constant_time_ge_8, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv13) #5
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false11
  %cmp17 = icmp uge i8 %1, %0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = tail call fastcc i32 @test_binary_op_8(i8 (i32, i32)* noundef nonnull @constant_time_ge_8, i32 noundef %conv4, i32 noundef %conv, i32 noundef %conv18) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false16
  %cmp22 = icmp eq i8 %0, %1
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call fastcc i32 @test_binary_op_8(i8 (i32, i32)* noundef nonnull @constant_time_eq_8, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv23) #5
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false21
  %call29 = tail call fastcc i32 @test_binary_op_8(i8 (i32, i32)* noundef nonnull @constant_time_eq_8, i32 noundef %conv4, i32 noundef %conv, i32 noundef %conv23) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false26, %lor.lhs.false21, %lor.lhs.false16, %lor.lhs.false11, %lor.lhs.false, %for.body
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false26
  %ret.1 = phi i32 [ %ret.059, %lor.lhs.false26 ], [ 0, %if.then ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %if.end
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binops_s(i32 noundef %i) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [10 x i64], [10 x i64]* @test_values_s, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !10
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %ret.066 = phi i32 [ 1, %entry ], [ %ret.1, %if.end ]
  %arrayidx2 = getelementptr inbounds [10 x i64], [10 x i64]* @test_values_s, i64 0, i64 %indvars.iv
  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !10
  %call = tail call fastcc i32 @test_select_s(i64 noundef %0, i64 noundef %1) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call3 = tail call fastcc i32 @test_eq_s(i64 noundef %0, i64 noundef %1) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %cmp6 = icmp ult i64 %0, %1
  %conv = zext i1 %cmp6 to i32
  %call7 = tail call fastcc i32 @test_binary_op_s(i64 (i64, i64)* noundef nonnull @constant_time_lt_s, i64 noundef %0, i64 noundef %1, i32 noundef %conv) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %cmp10 = icmp ult i64 %1, %0
  %conv11 = zext i1 %cmp10 to i32
  %call12 = tail call fastcc i32 @test_binary_op_s(i64 (i64, i64)* noundef nonnull @constant_time_lt_s, i64 noundef %1, i64 noundef %0, i32 noundef %conv11) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false9
  %cmp15 = icmp uge i64 %0, %1
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call fastcc i32 @test_binary_op_s(i64 (i64, i64)* noundef nonnull @constant_time_ge_s, i64 noundef %0, i64 noundef %1, i32 noundef %conv16) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false14
  %cmp20 = icmp uge i64 %1, %0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call fastcc i32 @test_binary_op_s(i64 (i64, i64)* noundef nonnull @constant_time_ge_s, i64 noundef %1, i64 noundef %0, i32 noundef %conv21) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false19
  %cmp25 = icmp eq i64 %0, %1
  %conv26 = zext i1 %cmp25 to i32
  %call27 = tail call fastcc i32 @test_binary_op_s(i64 (i64, i64)* noundef nonnull @constant_time_eq_s, i64 noundef %0, i64 noundef %1, i32 noundef %conv26) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false24
  %call32 = tail call fastcc i32 @test_binary_op_s(i64 (i64, i64)* noundef nonnull @constant_time_eq_s, i64 noundef %1, i64 noundef %0, i32 noundef %conv26) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false29, %lor.lhs.false24, %lor.lhs.false19, %lor.lhs.false14, %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %for.body
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false29
  %ret.1 = phi i32 [ %ret.066, %lor.lhs.false29 ], [ 0, %if.then ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !15

for.end:                                          ; preds = %if.end
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_signed(i32 noundef %i) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* @signed_test_values, i64 0, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %ret.019 = phi i32 [ 1, %entry ], [ %ret.1, %if.end ]
  %arrayidx3 = getelementptr inbounds [13 x i32], [13 x i32]* @signed_test_values, i64 0, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx3, align 4, !tbaa !4
  %call = tail call fastcc i32 @test_select_int(i32 noundef %0, i32 noundef %1) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call4 = tail call fastcc i32 @test_eq_int(i32 noundef %0, i32 noundef %1) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call fastcc i32 @test_eq_int_8(i32 noundef %0, i32 noundef %1) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %for.body
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false6
  %ret.1 = phi i32 [ %ret.019, %lor.lhs.false6 ], [ 0, %if.then ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %if.end
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_8values(i32 noundef %i) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @test_values_8, i64 0, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %call = tail call fastcc i32 @test_select_8(i8 noundef zeroext %0, i8 noundef zeroext 0) #5
  %tobool.not = icmp ne i32 %call, 0
  %call.1 = tail call fastcc i32 @test_select_8(i8 noundef zeroext %0, i8 noundef zeroext 1) #5
  %tobool.not.1 = icmp ne i32 %call.1, 0
  %call.2 = tail call fastcc i32 @test_select_8(i8 noundef zeroext %0, i8 noundef zeroext 2) #5
  %tobool.not.2 = icmp ne i32 %call.2, 0
  %call.3 = tail call fastcc i32 @test_select_8(i8 noundef zeroext %0, i8 noundef zeroext 20) #5
  %tobool.not.3 = icmp ne i32 %call.3, 0
  %call.4 = tail call fastcc i32 @test_select_8(i8 noundef zeroext %0, i8 noundef zeroext 32) #5
  %tobool.not.4 = icmp ne i32 %call.4, 0
  %call.5 = tail call fastcc i32 @test_select_8(i8 noundef zeroext %0, i8 noundef zeroext 127) #5
  %tobool.not.5 = icmp ne i32 %call.5, 0
  %call.6 = tail call fastcc i32 @test_select_8(i8 noundef zeroext %0, i8 noundef zeroext -128) #5
  %tobool.not.6 = icmp ne i32 %call.6, 0
  %call.7 = tail call fastcc i32 @test_select_8(i8 noundef zeroext %0, i8 noundef zeroext -127) #5
  %tobool.not.7 = icmp ne i32 %call.7, 0
  %call.8 = tail call fastcc i32 @test_select_8(i8 noundef zeroext %0, i8 noundef zeroext -1) #5
  %tobool.not.8 = icmp ne i32 %call.8, 0
  %1 = select i1 %tobool.not.8, i1 %tobool.not.7, i1 false
  %2 = select i1 %1, i1 %tobool.not.6, i1 false
  %3 = select i1 %2, i1 %tobool.not.5, i1 false
  %4 = select i1 %3, i1 %tobool.not.4, i1 false
  %5 = select i1 %4, i1 %tobool.not.3, i1 false
  %6 = select i1 %5, i1 %tobool.not.2, i1 false
  %7 = select i1 %6, i1 %tobool.not.1, i1 false
  %narrow14 = select i1 %7, i1 %tobool.not, i1 false
  %spec.select.8 = zext i1 %narrow14 to i32
  ret i32 %spec.select.8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_32values(i32 noundef %i) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @test_values_32, i64 0, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %call = tail call fastcc i32 @test_select_32(i32 noundef %0, i32 noundef 0) #5
  %tobool.not = icmp ne i32 %call, 0
  %call.1 = tail call fastcc i32 @test_select_32(i32 noundef %0, i32 noundef 1) #5
  %tobool.not.1 = icmp ne i32 %call.1, 0
  %call.2 = tail call fastcc i32 @test_select_32(i32 noundef %0, i32 noundef 1024) #5
  %tobool.not.2 = icmp ne i32 %call.2, 0
  %call.3 = tail call fastcc i32 @test_select_32(i32 noundef %0, i32 noundef 12345) #5
  %tobool.not.3 = icmp ne i32 %call.3, 0
  %call.4 = tail call fastcc i32 @test_select_32(i32 noundef %0, i32 noundef 32000) #5
  %tobool.not.4 = icmp ne i32 %call.4, 0
  %call.5 = tail call fastcc i32 @test_select_32(i32 noundef %0, i32 noundef 2147483647) #5
  %tobool.not.5 = icmp ne i32 %call.5, 0
  %call.6 = tail call fastcc i32 @test_select_32(i32 noundef %0, i32 noundef -2147483648) #5
  %tobool.not.6 = icmp ne i32 %call.6, 0
  %call.7 = tail call fastcc i32 @test_select_32(i32 noundef %0, i32 noundef -2) #5
  %tobool.not.7 = icmp ne i32 %call.7, 0
  %call.8 = tail call fastcc i32 @test_select_32(i32 noundef %0, i32 noundef -1) #5
  %tobool.not.8 = icmp ne i32 %call.8, 0
  %1 = select i1 %tobool.not.8, i1 %tobool.not.7, i1 false
  %2 = select i1 %1, i1 %tobool.not.6, i1 false
  %3 = select i1 %2, i1 %tobool.not.5, i1 false
  %4 = select i1 %3, i1 %tobool.not.4, i1 false
  %5 = select i1 %4, i1 %tobool.not.3, i1 false
  %6 = select i1 %5, i1 %tobool.not.2, i1 false
  %7 = select i1 %6, i1 %tobool.not.1, i1 false
  %narrow13 = select i1 %7, i1 %tobool.not, i1 false
  %spec.select.8 = zext i1 %narrow13 to i32
  ret i32 %spec.select.8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_64values(i32 noundef %i) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [11 x i64], [11 x i64]* @test_values_64, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !10
  %cmp20 = icmp slt i32 %i, 10
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ %idxprom, %entry ]
  %ret.021 = phi i32 [ %ret.1, %if.end ], [ 1, %entry ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %arrayidx2 = getelementptr inbounds [11 x i64], [11 x i64]* @test_values_64, i64 0, i64 %indvars.iv.next
  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !10
  %cmp3 = icmp ult i64 %0, %1
  %conv = zext i1 %cmp3 to i32
  %call = tail call fastcc i32 @test_binary_op_64(i64 noundef %0, i64 noundef %1, i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call4 = tail call fastcc i32 @test_select_64(i64 noundef %0, i64 noundef %1) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %2 = trunc i64 %indvars.iv.next to i32
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 392, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.54, i64 0, i64 0), i32 noundef %i, i32 noundef %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %ret.1 = phi i32 [ %ret.021, %lor.lhs.false ], [ 0, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !17

for.end:                                          ; preds = %if.end, %entry
  %ret.0.lcssa = phi i32 [ 1, %entry ], [ %ret.1, %if.end ]
  ret i32 %ret.0.lcssa
}

declare dso_local i32 @test_uint_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_is_zero(i32 noundef %a) unnamed_addr #2 {
entry:
  %neg = xor i32 %a, -1
  %sub = add i32 %a, -1
  %and = and i32 %sub, %neg
  %call = tail call fastcc i32 @constant_time_msb(i32 noundef %and) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_msb(i32 noundef %a) unnamed_addr #2 {
entry:
  %shr.neg = ashr i32 %a, 31
  ret i32 %shr.neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i8 @constant_time_is_zero_8(i32 noundef %a) unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @constant_time_is_zero(i32 noundef %a) #5
  %conv = trunc i32 %call to i8
  ret i8 %conv
}

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_is_zero_32(i32 noundef %a) unnamed_addr #2 {
entry:
  %neg = xor i32 %a, -1
  %sub = add i32 %a, -1
  %and = and i32 %sub, %neg
  %call = tail call fastcc i32 @constant_time_msb_32(i32 noundef %and) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_msb_32(i32 noundef %a) unnamed_addr #2 {
entry:
  %shr.neg = ashr i32 %a, 31
  ret i32 %shr.neg
}

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_is_zero_s(i64 noundef %a) unnamed_addr #2 {
entry:
  %neg = xor i64 %a, -1
  %sub = add i64 %a, -1
  %and = and i64 %sub, %neg
  %call = tail call fastcc i64 @constant_time_msb_s(i64 noundef %and) #5
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_msb_s(i64 noundef %a) unnamed_addr #2 {
entry:
  %shr.neg = ashr i64 %a, 63
  ret i64 %shr.neg
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_select(i32 noundef %a, i32 noundef %b) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @constant_time_select(i32 noundef -1, i32 noundef %a, i32 noundef %b) #5
  %call1 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %call, i32 noundef %a) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @constant_time_select(i32 noundef 0, i32 noundef %a, i32 noundef %b) #5
  %call3 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call2, i32 noundef %b) #4
  %tobool4.not = icmp ne i32 %call3, 0
  %. = zext i1 %tobool4.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_binary_op(i32 (i32, i32)* nocapture noundef readonly %op, i32 noundef %a, i32 noundef %b, i32 noundef %is_true) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %is_true, 0
  %call5 = tail call i32 %op(i32 noundef %a, i32 noundef %b) #4
  br i1 %tobool.not, label %land.lhs.true4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef %call5, i32 noundef -1) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %if.end9

land.lhs.true4:                                   ; preds = %entry
  %call6 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %return, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %land.lhs.true4
  br label %return

return:                                           ; preds = %land.lhs.true4, %land.lhs.true, %if.end9
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @constant_time_lt(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %xor = xor i32 %b, %a
  %sub = sub i32 %a, %b
  %xor1 = xor i32 %sub, %b
  %or = or i32 %xor1, %xor
  %xor2 = xor i32 %or, %a
  %call = tail call fastcc i32 @constant_time_msb(i32 noundef %xor2) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @constant_time_ge(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %call = tail call i32 @constant_time_lt(i32 noundef %a, i32 noundef %b) #5
  %neg = xor i32 %call, -1
  ret i32 %neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @constant_time_eq(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %xor = xor i32 %b, %a
  %call = tail call fastcc i32 @constant_time_is_zero(i32 noundef %xor) #5
  ret i32 %call
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select(i32 noundef %mask, i32 noundef %a, i32 noundef %b) unnamed_addr #3 {
entry:
  %call = tail call fastcc i32 @value_barrier(i32 noundef %mask) #5
  %and = and i32 %call, %a
  %neg = xor i32 %mask, -1
  %call1 = tail call fastcc i32 @value_barrier(i32 noundef %neg) #5
  %and2 = and i32 %call1, %b
  %or = or i32 %and2, %and
  ret i32 %or
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @value_barrier(i32 noundef %a) unnamed_addr #3 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #6, !srcloc !18
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_binary_op_8(i8 (i32, i32)* nocapture noundef readonly %op, i32 noundef %a, i32 noundef %b, i32 noundef %is_true) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %is_true, 0
  %call5 = tail call zeroext i8 %op(i32 noundef %a, i32 noundef %b) #4
  %conv6 = zext i8 %call5 to i32
  br i1 %tobool.not, label %land.lhs.true4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv6, i32 noundef 255) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %if.end10

land.lhs.true4:                                   ; preds = %entry
  %call7 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv6, i32 noundef 0) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %land.lhs.true4
  br label %return

return:                                           ; preds = %land.lhs.true4, %land.lhs.true, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal zeroext i8 @constant_time_lt_8(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %call = tail call i32 @constant_time_lt(i32 noundef %a, i32 noundef %b) #5
  %conv = trunc i32 %call to i8
  ret i8 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal zeroext i8 @constant_time_ge_8(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %call = tail call i32 @constant_time_ge(i32 noundef %a, i32 noundef %b) #5
  %conv = trunc i32 %call to i8
  ret i8 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal zeroext i8 @constant_time_eq_8(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %call = tail call i32 @constant_time_eq(i32 noundef %a, i32 noundef %b) #5
  %conv = trunc i32 %call to i8
  ret i8 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_select_s(i64 noundef %a, i64 noundef %b) unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @constant_time_select_s(i64 noundef -1, i64 noundef %a, i64 noundef %b) #5
  %conv = trunc i64 %call to i32
  %conv1 = trunc i64 %a to i32
  %call2 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv1) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i64 @constant_time_select_s(i64 noundef 0, i64 noundef %a, i64 noundef %b) #5
  %conv4 = trunc i64 %call3 to i32
  %conv5 = trunc i64 %b to i32
  %call6 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv4, i32 noundef %conv5) #4
  %tobool7.not = icmp ne i32 %call6, 0
  %. = zext i1 %tobool7.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_eq_s(i64 noundef %a, i64 noundef %b) unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %a, %b
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true3

land.lhs.true:                                    ; preds = %entry
  %call = tail call i64 @constant_time_eq_s(i64 noundef %a, i64 noundef %a) #5, !range !9
  %call1 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i64 noundef %call, i64 noundef -1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.end8

land.lhs.true3:                                   ; preds = %entry
  %call4 = tail call i64 @constant_time_eq_s(i64 noundef %a, i64 noundef %b) #5
  %conv = trunc i64 %call4 to i32
  %call5 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %land.lhs.true3
  br label %return

return:                                           ; preds = %land.lhs.true3, %land.lhs.true, %if.end8
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_binary_op_s(i64 (i64, i64)* nocapture noundef readonly %op, i64 noundef %a, i64 noundef %b, i32 noundef %is_true) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %is_true, 0
  %call5 = tail call i64 %op(i64 noundef %a, i64 noundef %b) #4
  br i1 %tobool.not, label %land.lhs.true4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i64 noundef %call5, i64 noundef -1) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %if.end9

land.lhs.true4:                                   ; preds = %entry
  %conv = trunc i64 %call5 to i32
  %call6 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %return, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %land.lhs.true4
  br label %return

return:                                           ; preds = %land.lhs.true4, %land.lhs.true, %if.end9
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i64 @constant_time_lt_s(i64 noundef %a, i64 noundef %b) #2 {
entry:
  %xor = xor i64 %b, %a
  %sub = sub i64 %a, %b
  %xor1 = xor i64 %sub, %b
  %or = or i64 %xor1, %xor
  %xor2 = xor i64 %or, %a
  %call = tail call fastcc i64 @constant_time_msb_s(i64 noundef %xor2) #5
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i64 @constant_time_ge_s(i64 noundef %a, i64 noundef %b) #2 {
entry:
  %call = tail call i64 @constant_time_lt_s(i64 noundef %a, i64 noundef %b) #5
  %neg = xor i64 %call, -1
  ret i64 %neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i64 @constant_time_eq_s(i64 noundef %a, i64 noundef %b) #2 {
entry:
  %xor = xor i64 %b, %a
  %call = tail call fastcc i64 @constant_time_is_zero_s(i64 noundef %xor) #5
  ret i64 %call
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i64 @constant_time_select_s(i64 noundef %mask, i64 noundef %a, i64 noundef %b) unnamed_addr #3 {
entry:
  %call = tail call fastcc i64 @value_barrier_s(i64 noundef %mask) #5
  %and = and i64 %call, %a
  %neg = xor i64 %mask, -1
  %call1 = tail call fastcc i64 @value_barrier_s(i64 noundef %neg) #5
  %and2 = and i64 %call1, %b
  %or = or i64 %and2, %and
  ret i64 %or
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i64 @value_barrier_s(i64 noundef %a) unnamed_addr #3 {
entry:
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %a) #6, !srcloc !19
  ret i64 %0
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_select_int(i32 noundef %a, i32 noundef %b) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @constant_time_select_int(i32 noundef -1, i32 noundef %a, i32 noundef %b) #5
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %call, i32 noundef %a) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @constant_time_select_int(i32 noundef 0, i32 noundef %a, i32 noundef %b) #5
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call2, i32 noundef %b) #4
  %tobool4.not = icmp ne i32 %call3, 0
  %. = zext i1 %tobool4.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_eq_int(i32 noundef %a, i32 noundef %b) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %a, %b
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true3

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @constant_time_eq_int(i32 noundef %a, i32 noundef %a) #5, !range !3
  %call1 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef %call, i32 noundef -1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.end8

land.lhs.true3:                                   ; preds = %entry
  %call4 = tail call fastcc i32 @constant_time_eq_int(i32 noundef %a, i32 noundef %b) #5, !range !3
  %call5 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 noundef %call4, i32 noundef 0) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %land.lhs.true3
  br label %return

return:                                           ; preds = %land.lhs.true3, %land.lhs.true, %if.end8
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_eq_int_8(i32 noundef %a, i32 noundef %b) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %a, %b
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true4

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc zeroext i8 @constant_time_eq_int_8(i32 noundef %a, i32 noundef %a) #5
  %conv = zext i8 %call to i32
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv, i32 noundef 255) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.end10

land.lhs.true4:                                   ; preds = %entry
  %call5 = tail call fastcc zeroext i8 @constant_time_eq_int_8(i32 noundef %a, i32 noundef %b) #5
  %conv6 = zext i8 %call5 to i32
  %call7 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv6, i32 noundef 0) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %land.lhs.true4
  br label %return

return:                                           ; preds = %land.lhs.true4, %land.lhs.true, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true4 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select_int(i32 noundef %mask, i32 noundef %a, i32 noundef %b) unnamed_addr #3 {
entry:
  %call = tail call fastcc i32 @constant_time_select(i32 noundef %mask, i32 noundef %a, i32 noundef %b) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_eq_int(i32 noundef %a, i32 noundef %b) unnamed_addr #2 {
entry:
  %call = tail call i32 @constant_time_eq(i32 noundef %a, i32 noundef %b) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i8 @constant_time_eq_int_8(i32 noundef %a, i32 noundef %b) unnamed_addr #2 {
entry:
  %call = tail call zeroext i8 @constant_time_eq_8(i32 noundef %a, i32 noundef %b) #5
  ret i8 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_select_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 {
entry:
  %call = tail call fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext -1, i8 noundef zeroext %a, i8 noundef zeroext %b) #5
  %conv = zext i8 %call to i32
  %conv1 = zext i8 %a to i32
  %call2 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv1) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext 0, i8 noundef zeroext %a, i8 noundef zeroext %b) #5
  %conv4 = zext i8 %call3 to i32
  %conv5 = zext i8 %b to i32
  %call6 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv4, i32 noundef %conv5) #4
  %tobool7.not = icmp ne i32 %call6, 0
  %. = zext i1 %tobool7.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %mask, i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #3 {
entry:
  %conv = zext i8 %mask to i32
  %conv1 = zext i8 %a to i32
  %conv2 = zext i8 %b to i32
  %call = tail call fastcc i32 @constant_time_select(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #5
  %conv3 = trunc i32 %call to i8
  ret i8 %conv3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_select_32(i32 noundef %a, i32 noundef %b) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @constant_time_select_32(i32 noundef -1, i32 noundef %a, i32 noundef %b) #5
  %cmp = icmp eq i32 %call, %a
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @constant_time_select_32(i32 noundef 0, i32 noundef %a, i32 noundef %b) #5
  %cmp5 = icmp eq i32 %call4, %b
  %conv6 = zext i1 %cmp5 to i32
  %call9 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv6) #4
  %tobool10.not = icmp ne i32 %call9, 0
  %. = zext i1 %tobool10.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select_32(i32 noundef %mask, i32 noundef %a, i32 noundef %b) unnamed_addr #3 {
entry:
  %call = tail call fastcc i32 @value_barrier_32(i32 noundef %mask) #5
  %and = and i32 %call, %a
  %neg = xor i32 %mask, -1
  %call1 = tail call fastcc i32 @value_barrier_32(i32 noundef %neg) #5
  %and2 = and i32 %call1, %b
  %or = or i32 %and2, %and
  ret i32 %or
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @value_barrier_32(i32 noundef %a) unnamed_addr #3 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #6, !srcloc !20
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_binary_op_64(i64 noundef %a, i64 noundef %b, i32 noundef %is_true) unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @constant_time_lt_64(i64 noundef %a, i64 noundef %b) #5
  %tobool.not = icmp eq i32 %is_true, 0
  %cmp.not = icmp eq i64 %call, -1
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i64 0, i64 0)) #4
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %tobool.not.not = xor i1 %tobool.not, true
  %cmp4.not = icmp eq i64 %call, 0
  %or.cond1 = select i1 %tobool.not.not, i1 true, i1 %cmp4.not
  br i1 %or.cond1, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.else
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i64 0, i64 0)) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then, %if.then5
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !21
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i64 noundef %a, i64 noundef %b) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else
  %retval.0 = phi i32 [ 1, %if.else ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_lt_64(i64 noundef %a, i64 noundef %b) unnamed_addr #2 {
entry:
  %xor = xor i64 %b, %a
  %sub = sub i64 %a, %b
  %xor1 = xor i64 %sub, %b
  %or = or i64 %xor1, %xor
  %xor2 = xor i64 %or, %a
  %call = tail call fastcc i64 @constant_time_msb_64(i64 noundef %xor2) #5
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_select_64(i64 noundef %a, i64 noundef %b) unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @constant_time_select_64(i64 noundef -1, i64 noundef %a, i64 noundef %b) #5
  %cmp.not = icmp eq i64 %call, %a
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0)) #4
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !21
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i64 0, i64 0), i64 noundef %a, i64 noundef %b, i64 noundef %call) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i64 @constant_time_select_64(i64 noundef 0, i64 noundef %a, i64 noundef %b) #5
  %cmp3.not = icmp eq i64 %call2, %b
  br i1 %cmp3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !21
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i64 0, i64 0), i64 noundef %a, i64 noundef %b, i64 noundef %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_msb_64(i64 noundef %a) unnamed_addr #2 {
entry:
  %shr.neg = ashr i64 %a, 63
  ret i64 %shr.neg
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i64 @constant_time_select_64(i64 noundef %mask, i64 noundef %a, i64 noundef %b) unnamed_addr #3 {
entry:
  %call = tail call fastcc i64 @value_barrier_64(i64 noundef %mask) #5
  %and = and i64 %call, %a
  %neg = xor i64 %mask, -1
  %call1 = tail call fastcc i64 @value_barrier_64(i64 noundef %neg) #5
  %and2 = and i64 %call1, %b
  %or = or i64 %and2, %and
  ret i64 %or
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i64 @value_barrier_64(i64 noundef %a) unnamed_addr #3 {
entry:
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %a) #6, !srcloc !23
  ret i64 %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{i32 -1, i32 1}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{i64 -1, i64 1}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = !{i64 274641}
!19 = !{i64 275413}
!20 = !{i64 274904}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !6, i64 0}
!23 = !{i64 275163}
