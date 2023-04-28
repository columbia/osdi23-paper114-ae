; ModuleID = 'test/hexstr_test.c'
source_filename = "test/hexstr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testdata = type { i8*, i8*, i64, i8 }

@.str = private unnamed_addr constant [24 x i8] c"test_hexstr_sep_to_from\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"test_hexstr_to_from\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"test_hexstr_ex_to_from\00", align 1
@tbl_testdata = internal unnamed_addr constant [6 x %struct.testdata] [%struct.testdata { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_1, i32 0, i32 0), i64 4, i8 58 }, %struct.testdata { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_2, i32 0, i32 0), i64 5, i8 58 }, %struct.testdata { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_1, i32 0, i32 0), i64 4, i8 95 }, %struct.testdata { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_2, i32 0, i32 0), i64 5, i8 95 }, %struct.testdata { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_1, i32 0, i32 0), i64 4, i8 0 }, %struct.testdata { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_2, i32 0, i32 0), i64 5, i8 0 }], align 16
@.str.3 = private unnamed_addr constant [19 x i8] c"test/hexstr_test.c\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"buf = ossl_hexstr2buf_sep(test->in, &len, test->sep)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"test->expected\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"out = ossl_buf2hexstr_sep(buf, len, test->sep)\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"test->in\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"AB:CD:EF:F1\00", align 1
@test_1 = internal constant [4 x i8] c"\AB\CD\EF\F1", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"AB:CD:EF:76:00\00", align 1
@test_2 = internal constant [5 x i8] c"\AB\CD\EFv\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"AB_CD_EF_F1\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"AB_CD_EF_76_00\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"ABCDEFF1\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"ABCDEF7600\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"buf = OPENSSL_hexstr2buf(test->in, &len)\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"out = OPENSSL_buf2hexstr(buf, len)\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"OPENSSL_hexstr2buf_ex(buf, sizeof(buf), &len, test->in, ':')\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"OPENSSL_buf2hexstr_ex(out, sizeof(out), NULL, buf, len, ':')\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_hexstr_sep_to_from, i32 noundef 6, i32 noundef 1) #3
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_hexstr_to_from, i32 noundef 6, i32 noundef 1) #3
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_hexstr_ex_to_from, i32 noundef 2, i32 noundef 1) #3
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_hexstr_sep_to_from(i32 noundef %test_index) #0 {
entry:
  %len = alloca i64, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i64 0, i64* %len, align 8, !tbaa !3
  %idxprom = sext i32 %test_index to i64
  %in = getelementptr inbounds [6 x %struct.testdata], [6 x %struct.testdata]* @tbl_testdata, i64 0, i64 %idxprom, i32 0
  %1 = load i8*, i8** %in, align 16, !tbaa !7
  %sep = getelementptr inbounds [6 x %struct.testdata], [6 x %struct.testdata]* @tbl_testdata, i64 0, i64 %idxprom, i32 3
  %2 = load i8, i8* %sep, align 8, !tbaa !10
  %call = call i8* @ossl_hexstr2buf_sep(i8* noundef %1, i64* noundef nonnull %len, i8 noundef signext %2) #3
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %len, align 8, !tbaa !3
  %expected = getelementptr inbounds [6 x %struct.testdata], [6 x %struct.testdata]* @tbl_testdata, i64 0, i64 %idxprom, i32 1
  %4 = load i8*, i8** %expected, align 8, !tbaa !11
  %expected_len = getelementptr inbounds [6 x %struct.testdata], [6 x %struct.testdata]* @tbl_testdata, i64 0, i64 %idxprom, i32 2
  %5 = load i64, i64* %expected_len, align 16, !tbaa !12
  %call2 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call, i64 noundef %3, i8* noundef %4, i64 noundef %5) #3
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %6 = load i64, i64* %len, align 8, !tbaa !3
  %call6 = call i8* @ossl_buf2hexstr_sep(i8* noundef %call, i64 noundef %6, i8 noundef signext %2) #3
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call6) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false4
  %call11 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call6, i8* noundef %1) #3
  %tobool12.not = icmp ne i32 %call11, 0
  %spec.select = zext i1 %tobool12.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false9, %entry, %lor.lhs.false, %lor.lhs.false4
  %out.0 = phi i8* [ %call6, %lor.lhs.false4 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false9 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false9 ]
  call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 79) #3
  call void @CRYPTO_free(i8* noundef %out.0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 80) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_hexstr_to_from(i32 noundef %test_index) #0 {
entry:
  %len = alloca i64, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i64 0, i64* %len, align 8, !tbaa !3
  %idxprom = sext i32 %test_index to i64
  %1 = and i32 %test_index, -2
  %2 = icmp eq i32 %1, 2
  %in27 = getelementptr inbounds [6 x %struct.testdata], [6 x %struct.testdata]* @tbl_testdata, i64 0, i64 %idxprom, i32 0
  %3 = load i8*, i8** %in27, align 16, !tbaa !7
  %call28 = call i8* @OPENSSL_hexstr2buf(i8* noundef %3, i64* noundef nonnull %len) #3
  br i1 %2, label %if.else26, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call28) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i64, i64* %len, align 8, !tbaa !3
  %expected = getelementptr inbounds [6 x %struct.testdata], [6 x %struct.testdata]* @tbl_testdata, i64 0, i64 %idxprom, i32 1
  %5 = load i8*, i8** %expected, align 8, !tbaa !11
  %expected_len = getelementptr inbounds [6 x %struct.testdata], [6 x %struct.testdata]* @tbl_testdata, i64 0, i64 %idxprom, i32 2
  %6 = load i64, i64* %expected_len, align 16, !tbaa !12
  %call3 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call28, i64 noundef %4, i8* noundef %5, i64 noundef %6) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %7 = load i64, i64* %len, align 8, !tbaa !3
  %call6 = call i8* @OPENSSL_buf2hexstr(i8* noundef %call28, i64 noundef %7) #3
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call6) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %8 = icmp ult i32 %test_index, 2
  br i1 %8, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %call16 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call6, i8* noundef %3) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end33

if.else:                                          ; preds = %if.end
  %call21 = call i32 @test_str_ne(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call6, i8* noundef %3) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.end33

if.else26:                                        ; preds = %entry
  %call29 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call28) #3
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end33

if.end33:                                         ; preds = %if.else26, %if.then14, %if.else
  %out.0 = phi i8* [ %call6, %if.then14 ], [ %call6, %if.else ], [ null, %if.else26 ]
  br label %err

err:                                              ; preds = %if.else26, %if.else, %if.then14, %if.then, %lor.lhs.false, %lor.lhs.false5, %if.end33
  %out.1 = phi i8* [ %out.0, %if.end33 ], [ %call6, %if.then14 ], [ %call6, %if.else ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %if.then ], [ null, %if.else26 ]
  %ret.0 = phi i32 [ 1, %if.end33 ], [ 0, %if.then14 ], [ 0, %if.else ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %if.then ], [ 0, %if.else26 ]
  call void @CRYPTO_free(i8* noundef %call28, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 109) #3
  call void @CRYPTO_free(i8* noundef %out.1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 110) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_hexstr_ex_to_from(i32 noundef %test_index) #0 {
entry:
  %len = alloca i64, align 8
  %out = alloca [64 x i8], align 16
  %buf = alloca [64 x i8], align 16
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i64 0, i64* %len, align 8, !tbaa !3
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #4
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #4
  %idxprom = sext i32 %test_index to i64
  %in = getelementptr inbounds [6 x %struct.testdata], [6 x %struct.testdata]* @tbl_testdata, i64 0, i64 %idxprom, i32 0
  %3 = load i8*, i8** %in, align 16, !tbaa !7
  %call = call i32 @OPENSSL_hexstr2buf_ex(i8* noundef nonnull %2, i64 noundef 64, i64* noundef nonnull %len, i8* noundef %3, i8 noundef signext 58) #3
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* %len, align 8, !tbaa !3
  %expected = getelementptr inbounds [6 x %struct.testdata], [6 x %struct.testdata]* @tbl_testdata, i64 0, i64 %idxprom, i32 1
  %5 = load i8*, i8** %expected, align 8, !tbaa !11
  %expected_len = getelementptr inbounds [6 x %struct.testdata], [6 x %struct.testdata]* @tbl_testdata, i64 0, i64 %idxprom, i32 2
  %6 = load i64, i64* %expected_len, align 16, !tbaa !12
  %call3 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef %4, i8* noundef %5, i64 noundef %6) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %7 = load i64, i64* %len, align 8, !tbaa !3
  %call8 = call i32 @OPENSSL_buf2hexstr_ex(i8* noundef nonnull %1, i64 noundef 64, i64* noundef null, i8* noundef nonnull %2, i64 noundef %7, i8 noundef signext 58) #3
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv10) #3
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true5
  %call15 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %3) #3
  %tobool16 = icmp ne i32 %call15, 0
  %phi.cast = zext i1 %tobool16 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %entry
  %8 = phi i32 [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @ossl_hexstr2buf_sep(i8* noundef, i64* noundef, i8 noundef signext) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i8* @ossl_buf2hexstr_sep(i8* noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_buf2hexstr(i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_hexstr2buf_ex(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i8 noundef signext) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_buf2hexstr_ex(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"testdata", !9, i64 0, !9, i64 8, !4, i64 16, !5, i64 24}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!8, !5, i64 24}
!11 = !{!8, !9, i64 8}
!12 = !{!8, !4, i64 16}
