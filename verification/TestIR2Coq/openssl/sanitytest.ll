; ModuleID = 'test/sanitytest.c'
source_filename = "test/sanitytest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"test_sanity_null_zero\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"test_sanity_enum_size\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"test_sanity_twos_complement\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"test_sanity_sign\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"test_sanity_unsigned_conversion\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"test_sanity_range\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"test_sanity_memcmp\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"test/sanitytest.c\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"&p\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"sizeof(enum smallchoices)\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"sizeof(int)\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"sizeof(enum medchoices)\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"sizeof(enum largechoices)\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"~(-1)\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"~(-1L)\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"0L\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"-(INT_MIN + 1)\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"INT_MAX\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"-(LONG_MIN + 1)\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"LONG_MAX\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"(int)((unsigned int)INT_MAX + 1)\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"INT_MIN\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"(long)((unsigned long)LONG_MAX + 1)\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"LONG_MIN\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sizeof(int8_t)\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"sizeof(uint8_t)\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"sizeof(int16_t)\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"sizeof(uint16_t)\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"sizeof(int32_t)\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"sizeof(uint32_t)\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"sizeof(int64_t)\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"sizeof(uint64_t)\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"sizeof(int128_t)\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"sizeof(uint128_t)\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"sizeof(char)\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"sizeof(unsigned char)\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"sizeof(long long int)\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"sizeof(unsigned long long int)\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"sizeof(ossl_intmax_t)\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"sizeof(ossl_uintmax_t)\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"sizeof(size_t)\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"cd\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_sanity_null_zero) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_sanity_enum_size) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_sanity_twos_complement) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_sanity_sign) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_sanity_unsigned_conversion) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_sanity_range) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_sanity_memcmp) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sanity_null_zero() #0 {
entry:
  %p = alloca i8*, align 8
  %bytes = alloca [8 x i8], align 1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* null, i8** %p, align 8, !tbaa !3
  %call = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 8) #4
  %call2 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 8, i8* noundef nonnull %1, i64 noundef 8) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sanity_enum_size() #0 {
entry:
  %call = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 noundef 4, i64 noundef 4) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 noundef 4, i64 noundef 4) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 noundef 4, i64 noundef 4) #4
  %tobool5.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool5.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false3, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sanity_twos_complement() #0 {
entry:
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 noundef 0, i32 noundef 0) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i64 noundef 0, i64 noundef 0) #4
  %tobool2.not = icmp ne i32 %call1, 0
  %spec.select = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sanity_sign() #0 {
entry:
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 noundef 2147483647, i32 noundef 2147483647) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i64 noundef 9223372036854775807, i64 noundef 9223372036854775807) #4
  %tobool2.not = icmp ne i32 %call1, 0
  %spec.select = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sanity_unsigned_conversion() #0 {
entry:
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i32 noundef -2147483648, i32 noundef -2147483648) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i64 noundef -9223372036854775808, i64 noundef -9223372036854775808) #4
  %tobool2.not = icmp ne i32 %call1, 0
  %spec.select = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sanity_range() #0 {
entry:
  %call = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i64 noundef 1, i64 noundef 1) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i64 noundef 1, i64 noundef 1) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i64 noundef 2, i64 noundef 2) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i64 noundef 2, i64 noundef 2) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i64 noundef 4, i64 noundef 4) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %return, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i64 noundef 4, i64 noundef 4) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i64 noundef 8, i64 noundef 8) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %return, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i64 noundef 8, i64 noundef 8) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %return, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %call22 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), i64 noundef 16, i64 noundef 16) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %return, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %call25 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), i64 noundef 16, i64 noundef 16) #4
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %return, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %call28 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i64 noundef 1, i64 noundef 1) #4
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %return, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %call31 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i64 noundef 1, i64 noundef 1) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false30
  %call33 = tail call i32 @test_size_t_ge(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i64 noundef 8, i64 noundef 8) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %return, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end
  %call36 = tail call i32 @test_size_t_ge(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i64 noundef 8, i64 noundef 8) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %return, label %if.end39

if.end39:                                         ; preds = %lor.lhs.false35
  %call40 = tail call i32 @test_size_t_ge(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i64 noundef 8, i64 noundef 8) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %return, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end39
  %call43 = tail call i32 @test_size_t_ge(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i64 noundef 8, i64 noundef 8) #4
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %return, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %call46 = tail call i32 @test_size_t_ge(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0), i64 noundef 8, i64 noundef 8) #4
  %tobool47.not = icmp ne i32 %call46, 0
  %spec.select = zext i1 %tobool47.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false45, %if.end39, %lor.lhs.false42, %if.end, %lor.lhs.false35, %entry, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false6, %lor.lhs.false9, %lor.lhs.false12, %lor.lhs.false15, %lor.lhs.false18, %lor.lhs.false21, %lor.lhs.false24, %lor.lhs.false27, %lor.lhs.false30
  %retval.0 = phi i32 [ 0, %lor.lhs.false30 ], [ 0, %lor.lhs.false27 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false35 ], [ 0, %if.end ], [ 0, %lor.lhs.false42 ], [ 0, %if.end39 ], [ %spec.select, %lor.lhs.false45 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sanity_memcmp() #0 {
entry:
  %call = tail call i32 @CRYPTO_memcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i64 noundef 2) #4
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_long_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
