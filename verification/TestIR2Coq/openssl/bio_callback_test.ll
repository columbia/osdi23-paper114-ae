; ModuleID = 'test/bio_callback_test.c'
source_filename = "test/bio_callback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.bio_method_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"test_bio_callback_ex\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"test_bio_callback\00", align 1
@my_param_count = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"test/bio_callback_test.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"test1len\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"my_param_count\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"my_param_b[0]\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bio\00", align 1
@my_param_b = internal global [5 x %struct.bio_st*] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [17 x i8] c"my_param_oper[0]\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"BIO_CB_WRITE\00", align 1
@my_param_oper = internal unnamed_addr global [5 x i32] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [17 x i8] c"my_param_argp[0]\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"test1\00", align 1
@my_param_argp = internal global [5 x i8*] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [16 x i8] c"my_param_len[0]\00", align 1
@my_param_len = internal unnamed_addr global [5 x i64] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [17 x i8] c"my_param_argl[0]\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"0L\00", align 1
@my_param_argl = internal unnamed_addr global [5 x i64] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [21 x i8] c"(int)my_param_ret[0]\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@my_param_ret = internal unnamed_addr global [5 x i64] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [14 x i8] c"my_param_b[1]\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"my_param_oper[1]\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"BIO_CB_WRITE | BIO_CB_RETURN\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"my_param_argp[1]\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"my_param_len[1]\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"my_param_argl[1]\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"my_param_processed[1]\00", align 1
@my_param_processed = internal unnamed_addr global [5 x i64] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [21 x i8] c"(int)my_param_ret[1]\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"BIO_CB_READ\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"sizeof(buf)\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"BIO_CB_READ | BIO_CB_RETURN\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"BIO_CB_CTRL\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"my_param_argi[0]\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"BIO_C_SET_BUF_MEM_EOF_RETURN\00", align 1
@my_param_argi = internal unnamed_addr global [5 x i32] zeroinitializer, align 16
@.str.36 = private unnamed_addr constant [28 x i8] c"BIO_CB_CTRL | BIO_CB_RETURN\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"my_param_argi[1]\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"BIO_CB_PUTS\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"test2\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"BIO_CB_PUTS | BIO_CB_RETURN\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"test2len\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"BIO_CB_FREE\00", align 1
@__const.test_bio_callback.test1 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@__const.test_bio_callback.test2 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"my_param_ret[0]\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"1L\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"my_param_ret[1]\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"(long)test1len\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"-1L\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"(long)test2len\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_bio_callback_ex) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_bio_callback) #6
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_callback_ex() #0 {
entry:
  %test1 = alloca [5 x i8], align 1
  %test2 = alloca [6 x i8], align 1
  %buf = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [5 x i8], [5 x i8]* %test1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %0) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %0, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_bio_callback.test1, i64 0, i64 0), i64 5, i1 false)
  %1 = getelementptr inbounds [6 x i8], [6 x i8]* %test2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %1) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %1, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_bio_callback.test2, i64 0, i64 0), i64 6, i1 false)
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7
  store i32 0, i32* @my_param_count, align 4, !tbaa !3
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #6
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #6
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BIO_set_callback_ex(%struct.bio_st* noundef nonnull %call1, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef nonnull @my_bio_cb_ex) #6
  %call2 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %0, i32 noundef 4) #6
  %call3 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %call2, i32 noundef 4) #6
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %call4 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %3, i32 noundef 2) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load i8*, i8** bitcast ([5 x %struct.bio_st*]* @my_param_b to i8**), align 16, !tbaa !7
  %5 = bitcast %struct.bio_st* %call1 to i8*
  %call7 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %4, i8* noundef nonnull %5) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %6 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 0), align 16, !tbaa !3
  %call10 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 noundef %6, i32 noundef 3) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %7 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 0), align 16, !tbaa !7
  %call14 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %7, i8* noundef nonnull %0) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %8 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_len, i64 0, i64 0), align 16, !tbaa !9
  %call17 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 noundef %8, i64 noundef 4) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %9 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 0), align 16, !tbaa !9
  %call20 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %9, i64 noundef 0) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %10 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 0), align 16, !tbaa !9
  %conv = trunc i64 %10 to i32
  %call23 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv, i32 noundef 1) #6
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %11 = load i8*, i8** bitcast (%struct.bio_st** getelementptr inbounds ([5 x %struct.bio_st*], [5 x %struct.bio_st*]* @my_param_b, i64 0, i64 1) to i8**), align 8, !tbaa !7
  %call26 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %11, i8* noundef nonnull %5) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %12 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 1), align 4, !tbaa !3
  %call29 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 noundef %12, i32 noundef 131) #6
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %13 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 1), align 8, !tbaa !7
  %call33 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %13, i8* noundef nonnull %0) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %14 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_len, i64 0, i64 1), align 8, !tbaa !9
  %call36 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 noundef %14, i64 noundef 4) #6
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %15 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 1), align 8, !tbaa !9
  %call39 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %15, i64 noundef 0) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  %16 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_processed, i64 0, i64 1), align 8, !tbaa !9
  %call42 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 noundef %16, i64 noundef 4) #6
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  %17 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 1), align 8, !tbaa !9
  %conv45 = trunc i64 %17 to i32
  %call46 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv45, i32 noundef 1) #6
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %if.end49

if.end49:                                         ; preds = %lor.lhs.false44
  store i32 0, i32* @my_param_count, align 4, !tbaa !3
  %call51 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %2, i32 noundef 16) #6
  %conv53 = sext i32 %call51 to i64
  %call55 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef %conv53, i8* noundef nonnull %0, i64 noundef 4) #6
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end49
  %18 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %call58 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %18, i32 noundef 2) #6
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %19 = load i8*, i8** bitcast ([5 x %struct.bio_st*]* @my_param_b to i8**), align 16, !tbaa !7
  %call61 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %19, i8* noundef nonnull %5) #6
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %20 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 0), align 16, !tbaa !3
  %call64 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 noundef %20, i32 noundef 2) #6
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false63
  %21 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 0), align 16, !tbaa !7
  %call68 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %21, i8* noundef nonnull %2) #6
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false66
  %22 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_len, i64 0, i64 0), align 16, !tbaa !9
  %call71 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i64 noundef %22, i64 noundef 16) #6
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false70
  %23 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 0), align 16, !tbaa !9
  %call74 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %23, i64 noundef 0) #6
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %err, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false73
  %24 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 0), align 16, !tbaa !9
  %conv77 = trunc i64 %24 to i32
  %call78 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv77, i32 noundef 1) #6
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false76
  %25 = load i8*, i8** bitcast (%struct.bio_st** getelementptr inbounds ([5 x %struct.bio_st*], [5 x %struct.bio_st*]* @my_param_b, i64 0, i64 1) to i8**), align 8, !tbaa !7
  %call81 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %25, i8* noundef nonnull %5) #6
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %err, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false80
  %26 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 1), align 4, !tbaa !3
  %call84 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 noundef %26, i32 noundef 130) #6
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false83
  %27 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 1), align 8, !tbaa !7
  %call88 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %27, i8* noundef nonnull %2) #6
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false86
  %28 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_len, i64 0, i64 1), align 8, !tbaa !9
  %call91 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i64 noundef %28, i64 noundef 16) #6
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %err, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %lor.lhs.false90
  %29 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 1), align 8, !tbaa !9
  %call94 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %29, i64 noundef 0) #6
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %lor.lhs.false93
  %30 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_processed, i64 0, i64 1), align 8, !tbaa !9
  %call97 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 noundef %30, i64 noundef 4) #6
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %lor.lhs.false96
  %31 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 1), align 8, !tbaa !9
  %conv100 = trunc i64 %31 to i32
  %call101 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv100, i32 noundef 1) #6
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %err, label %if.end104

if.end104:                                        ; preds = %lor.lhs.false99
  store i32 0, i32* @my_param_count, align 4, !tbaa !3
  %call106 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %2, i32 noundef 16) #6
  %call107 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call106, i32 noundef -1) #6
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %err, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %if.end104
  %32 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %call110 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %32, i32 noundef 2) #6
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false109
  %33 = load i8*, i8** bitcast ([5 x %struct.bio_st*]* @my_param_b to i8**), align 16, !tbaa !7
  %call113 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %33, i8* noundef nonnull %5) #6
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %err, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false112
  %34 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 0), align 16, !tbaa !3
  %call116 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 noundef %34, i32 noundef 2) #6
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %err, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %lor.lhs.false115
  %35 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 0), align 16, !tbaa !7
  %call120 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %35, i8* noundef nonnull %2) #6
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %err, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false118
  %36 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_len, i64 0, i64 0), align 16, !tbaa !9
  %call123 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i64 noundef %36, i64 noundef 16) #6
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %err, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %lor.lhs.false122
  %37 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 0), align 16, !tbaa !9
  %call126 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %37, i64 noundef 0) #6
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %err, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %lor.lhs.false125
  %38 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 0), align 16, !tbaa !9
  %conv129 = trunc i64 %38 to i32
  %call130 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv129, i32 noundef 1) #6
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %err, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %lor.lhs.false128
  %39 = load i8*, i8** bitcast (%struct.bio_st** getelementptr inbounds ([5 x %struct.bio_st*], [5 x %struct.bio_st*]* @my_param_b, i64 0, i64 1) to i8**), align 8, !tbaa !7
  %call133 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %39, i8* noundef nonnull %5) #6
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %err, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.lhs.false132
  %40 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 1), align 4, !tbaa !3
  %call136 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 noundef %40, i32 noundef 130) #6
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %err, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %lor.lhs.false135
  %41 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 1), align 8, !tbaa !7
  %call140 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %41, i8* noundef nonnull %2) #6
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %err, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %lor.lhs.false138
  %42 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_len, i64 0, i64 1), align 8, !tbaa !9
  %call143 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i64 noundef %42, i64 noundef 16) #6
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %err, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %lor.lhs.false142
  %43 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 1), align 8, !tbaa !9
  %call146 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %43, i64 noundef 0) #6
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %err, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %lor.lhs.false145
  %44 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_processed, i64 0, i64 1), align 8, !tbaa !9
  %call149 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i64 noundef %44, i64 noundef 0) #6
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %err, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %lor.lhs.false148
  %45 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 1), align 8, !tbaa !9
  %conv152 = trunc i64 %45 to i32
  %call153 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv152, i32 noundef -1) #6
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %err, label %if.end156

if.end156:                                        ; preds = %lor.lhs.false151
  store i32 0, i32* @my_param_count, align 4, !tbaa !3
  %call157 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 130, i64 noundef 0, i8* noundef null) #6
  %conv158 = trunc i64 %call157 to i32
  %call159 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv158, i32 noundef 1) #6
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %err, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %if.end156
  %46 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %call162 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %46, i32 noundef 2) #6
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %err, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %lor.lhs.false161
  %47 = load i8*, i8** bitcast ([5 x %struct.bio_st*]* @my_param_b to i8**), align 16, !tbaa !7
  %call165 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %47, i8* noundef nonnull %5) #6
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %err, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %lor.lhs.false164
  %48 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 0), align 16, !tbaa !3
  %call168 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 noundef %48, i32 noundef 6) #6
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %err, label %lor.lhs.false170

lor.lhs.false170:                                 ; preds = %lor.lhs.false167
  %49 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 0), align 16, !tbaa !7
  %call171 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* noundef %49, i8* noundef null) #6
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %err, label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %lor.lhs.false170
  %50 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 0), align 16, !tbaa !3
  %call174 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0), i32 noundef %50, i32 noundef 130) #6
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %err, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %lor.lhs.false173
  %51 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 0), align 16, !tbaa !9
  %call177 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %51, i64 noundef 0) #6
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %err, label %lor.lhs.false179

lor.lhs.false179:                                 ; preds = %lor.lhs.false176
  %52 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 0), align 16, !tbaa !9
  %conv180 = trunc i64 %52 to i32
  %call181 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv180, i32 noundef 1) #6
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %err, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %lor.lhs.false179
  %53 = load i8*, i8** bitcast (%struct.bio_st** getelementptr inbounds ([5 x %struct.bio_st*], [5 x %struct.bio_st*]* @my_param_b, i64 0, i64 1) to i8**), align 8, !tbaa !7
  %call184 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %53, i8* noundef nonnull %5) #6
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %err, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %lor.lhs.false183
  %54 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 1), align 4, !tbaa !3
  %call187 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0), i32 noundef %54, i32 noundef 134) #6
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %err, label %lor.lhs.false189

lor.lhs.false189:                                 ; preds = %lor.lhs.false186
  %55 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 1), align 8, !tbaa !7
  %call190 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* noundef %55, i8* noundef null) #6
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %err, label %lor.lhs.false192

lor.lhs.false192:                                 ; preds = %lor.lhs.false189
  %56 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 1), align 4, !tbaa !3
  %call193 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0), i32 noundef %56, i32 noundef 130) #6
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %err, label %lor.lhs.false195

lor.lhs.false195:                                 ; preds = %lor.lhs.false192
  %57 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 1), align 8, !tbaa !9
  %call196 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %57, i64 noundef 0) #6
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %err, label %lor.lhs.false198

lor.lhs.false198:                                 ; preds = %lor.lhs.false195
  %58 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 1), align 8, !tbaa !9
  %conv199 = trunc i64 %58 to i32
  %call200 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv199, i32 noundef 1) #6
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %err, label %if.end203

if.end203:                                        ; preds = %lor.lhs.false198
  store i32 0, i32* @my_param_count, align 4, !tbaa !3
  %call205 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %2, i32 noundef 16) #6
  %call206 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %call205, i32 noundef 0) #6
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %err, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %if.end203
  %59 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %call209 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %59, i32 noundef 2) #6
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %err, label %lor.lhs.false211

lor.lhs.false211:                                 ; preds = %lor.lhs.false208
  %60 = load i8*, i8** bitcast ([5 x %struct.bio_st*]* @my_param_b to i8**), align 16, !tbaa !7
  %call212 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %60, i8* noundef nonnull %5) #6
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %err, label %lor.lhs.false214

lor.lhs.false214:                                 ; preds = %lor.lhs.false211
  %61 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 0), align 16, !tbaa !3
  %call215 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 noundef %61, i32 noundef 2) #6
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %err, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %lor.lhs.false214
  %62 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 0), align 16, !tbaa !7
  %call219 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %62, i8* noundef nonnull %2) #6
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %err, label %lor.lhs.false221

lor.lhs.false221:                                 ; preds = %lor.lhs.false217
  %63 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_len, i64 0, i64 0), align 16, !tbaa !9
  %call222 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i64 noundef %63, i64 noundef 16) #6
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %err, label %lor.lhs.false224

lor.lhs.false224:                                 ; preds = %lor.lhs.false221
  %64 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 0), align 16, !tbaa !9
  %call225 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %64, i64 noundef 0) #6
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %err, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %lor.lhs.false224
  %65 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 0), align 16, !tbaa !9
  %conv228 = trunc i64 %65 to i32
  %call229 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv228, i32 noundef 1) #6
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %err, label %lor.lhs.false231

lor.lhs.false231:                                 ; preds = %lor.lhs.false227
  %66 = load i8*, i8** bitcast (%struct.bio_st** getelementptr inbounds ([5 x %struct.bio_st*], [5 x %struct.bio_st*]* @my_param_b, i64 0, i64 1) to i8**), align 8, !tbaa !7
  %call232 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %66, i8* noundef nonnull %5) #6
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %err, label %lor.lhs.false234

lor.lhs.false234:                                 ; preds = %lor.lhs.false231
  %67 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 1), align 4, !tbaa !3
  %call235 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 noundef %67, i32 noundef 130) #6
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %err, label %lor.lhs.false237

lor.lhs.false237:                                 ; preds = %lor.lhs.false234
  %68 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 1), align 8, !tbaa !7
  %call239 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %68, i8* noundef nonnull %2) #6
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %err, label %lor.lhs.false241

lor.lhs.false241:                                 ; preds = %lor.lhs.false237
  %69 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_len, i64 0, i64 1), align 8, !tbaa !9
  %call242 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i64 noundef %69, i64 noundef 16) #6
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %err, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %lor.lhs.false241
  %70 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 1), align 8, !tbaa !9
  %call245 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %70, i64 noundef 0) #6
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %err, label %lor.lhs.false247

lor.lhs.false247:                                 ; preds = %lor.lhs.false244
  %71 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_processed, i64 0, i64 1), align 8, !tbaa !9
  %call248 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i64 noundef %71, i64 noundef 0) #6
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %err, label %lor.lhs.false250

lor.lhs.false250:                                 ; preds = %lor.lhs.false247
  %72 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 1), align 8, !tbaa !9
  %conv251 = trunc i64 %72 to i32
  %call252 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv251, i32 noundef 0) #6
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %err, label %if.end255

if.end255:                                        ; preds = %lor.lhs.false250
  store i32 0, i32* @my_param_count, align 4, !tbaa !3
  %call257 = call i32 @BIO_puts(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %1) #6
  %call258 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i32 noundef %call257, i32 noundef 5) #6
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %err, label %lor.lhs.false260

lor.lhs.false260:                                 ; preds = %if.end255
  %73 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %call261 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %73, i32 noundef 2) #6
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %err, label %lor.lhs.false263

lor.lhs.false263:                                 ; preds = %lor.lhs.false260
  %74 = load i8*, i8** bitcast ([5 x %struct.bio_st*]* @my_param_b to i8**), align 16, !tbaa !7
  %call264 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %74, i8* noundef nonnull %5) #6
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %err, label %lor.lhs.false266

lor.lhs.false266:                                 ; preds = %lor.lhs.false263
  %75 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 0), align 16, !tbaa !3
  %call267 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i32 noundef %75, i32 noundef 4) #6
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %err, label %lor.lhs.false269

lor.lhs.false269:                                 ; preds = %lor.lhs.false266
  %76 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 0), align 16, !tbaa !7
  %call271 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8* noundef %76, i8* noundef nonnull %1) #6
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %err, label %lor.lhs.false273

lor.lhs.false273:                                 ; preds = %lor.lhs.false269
  %77 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 0), align 16, !tbaa !3
  %call274 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %77, i32 noundef 0) #6
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %err, label %lor.lhs.false276

lor.lhs.false276:                                 ; preds = %lor.lhs.false273
  %78 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 0), align 16, !tbaa !9
  %call277 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %78, i64 noundef 0) #6
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %err, label %lor.lhs.false279

lor.lhs.false279:                                 ; preds = %lor.lhs.false276
  %79 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 0), align 16, !tbaa !9
  %conv280 = trunc i64 %79 to i32
  %call281 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv280, i32 noundef 1) #6
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %err, label %lor.lhs.false283

lor.lhs.false283:                                 ; preds = %lor.lhs.false279
  %80 = load i8*, i8** bitcast (%struct.bio_st** getelementptr inbounds ([5 x %struct.bio_st*], [5 x %struct.bio_st*]* @my_param_b, i64 0, i64 1) to i8**), align 8, !tbaa !7
  %call284 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %80, i8* noundef nonnull %5) #6
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %err, label %lor.lhs.false286

lor.lhs.false286:                                 ; preds = %lor.lhs.false283
  %81 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 1), align 4, !tbaa !3
  %call287 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i64 0, i64 0), i32 noundef %81, i32 noundef 132) #6
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %err, label %lor.lhs.false289

lor.lhs.false289:                                 ; preds = %lor.lhs.false286
  %82 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 1), align 8, !tbaa !7
  %call291 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8* noundef %82, i8* noundef nonnull %1) #6
  %tobool292.not = icmp eq i32 %call291, 0
  br i1 %tobool292.not, label %err, label %lor.lhs.false293

lor.lhs.false293:                                 ; preds = %lor.lhs.false289
  %83 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 1), align 4, !tbaa !3
  %call294 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %83, i32 noundef 0) #6
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %err, label %lor.lhs.false296

lor.lhs.false296:                                 ; preds = %lor.lhs.false293
  %84 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 1), align 8, !tbaa !9
  %call297 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %84, i64 noundef 0) #6
  %tobool298.not = icmp eq i32 %call297, 0
  br i1 %tobool298.not, label %err, label %lor.lhs.false299

lor.lhs.false299:                                 ; preds = %lor.lhs.false296
  %85 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_processed, i64 0, i64 1), align 8, !tbaa !9
  %call300 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i64 noundef %85, i64 noundef 5) #6
  %tobool301.not = icmp eq i32 %call300, 0
  br i1 %tobool301.not, label %err, label %lor.lhs.false302

lor.lhs.false302:                                 ; preds = %lor.lhs.false299
  %86 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 1), align 8, !tbaa !9
  %conv303 = trunc i64 %86 to i32
  %call304 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv303, i32 noundef 1) #6
  %tobool305.not = icmp eq i32 %call304, 0
  br i1 %tobool305.not, label %err, label %if.end307

if.end307:                                        ; preds = %lor.lhs.false302
  store i32 0, i32* @my_param_count, align 4, !tbaa !3
  %call308 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #6
  %call309 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %call308, i32 noundef 1) #6
  %tobool310.not = icmp eq i32 %call309, 0
  br i1 %tobool310.not, label %finish, label %lor.lhs.false311

lor.lhs.false311:                                 ; preds = %if.end307
  %87 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %call312 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %87, i32 noundef 1) #6
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %finish, label %lor.lhs.false314

lor.lhs.false314:                                 ; preds = %lor.lhs.false311
  %88 = load i8*, i8** bitcast ([5 x %struct.bio_st*]* @my_param_b to i8**), align 16, !tbaa !7
  %call315 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %88, i8* noundef nonnull %5) #6
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %finish, label %lor.lhs.false317

lor.lhs.false317:                                 ; preds = %lor.lhs.false314
  %89 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 0), align 16, !tbaa !3
  %call318 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 noundef %89, i32 noundef 1) #6
  %tobool319.not = icmp eq i32 %call318, 0
  br i1 %tobool319.not, label %finish, label %lor.lhs.false320

lor.lhs.false320:                                 ; preds = %lor.lhs.false317
  %90 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 0), align 16, !tbaa !7
  %call321 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* noundef %90, i8* noundef null) #6
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %finish, label %lor.lhs.false323

lor.lhs.false323:                                 ; preds = %lor.lhs.false320
  %91 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 0), align 16, !tbaa !3
  %call324 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %91, i32 noundef 0) #6
  %tobool325.not = icmp eq i32 %call324, 0
  br i1 %tobool325.not, label %finish, label %lor.lhs.false326

lor.lhs.false326:                                 ; preds = %lor.lhs.false323
  %92 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 0), align 16, !tbaa !9
  %call327 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %92, i64 noundef 0) #6
  %tobool328.not = icmp eq i32 %call327, 0
  br i1 %tobool328.not, label %finish, label %lor.lhs.false329

lor.lhs.false329:                                 ; preds = %lor.lhs.false326
  %93 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 0), align 16, !tbaa !9
  %conv330 = trunc i64 %93 to i32
  %call331 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv330, i32 noundef 1) #6
  %tobool332.not = icmp ne i32 %call331, 0
  %spec.select = zext i1 %tobool332.not to i32
  br label %finish

err:                                              ; preds = %if.end255, %lor.lhs.false260, %lor.lhs.false263, %lor.lhs.false266, %lor.lhs.false269, %lor.lhs.false273, %lor.lhs.false276, %lor.lhs.false279, %lor.lhs.false283, %lor.lhs.false286, %lor.lhs.false289, %lor.lhs.false293, %lor.lhs.false296, %lor.lhs.false299, %lor.lhs.false302, %if.end203, %lor.lhs.false208, %lor.lhs.false211, %lor.lhs.false214, %lor.lhs.false217, %lor.lhs.false221, %lor.lhs.false224, %lor.lhs.false227, %lor.lhs.false231, %lor.lhs.false234, %lor.lhs.false237, %lor.lhs.false241, %lor.lhs.false244, %lor.lhs.false247, %lor.lhs.false250, %if.end156, %lor.lhs.false161, %lor.lhs.false164, %lor.lhs.false167, %lor.lhs.false170, %lor.lhs.false173, %lor.lhs.false176, %lor.lhs.false179, %lor.lhs.false183, %lor.lhs.false186, %lor.lhs.false189, %lor.lhs.false192, %lor.lhs.false195, %lor.lhs.false198, %if.end104, %lor.lhs.false109, %lor.lhs.false112, %lor.lhs.false115, %lor.lhs.false118, %lor.lhs.false122, %lor.lhs.false125, %lor.lhs.false128, %lor.lhs.false132, %lor.lhs.false135, %lor.lhs.false138, %lor.lhs.false142, %lor.lhs.false145, %lor.lhs.false148, %lor.lhs.false151, %if.end49, %lor.lhs.false57, %lor.lhs.false60, %lor.lhs.false63, %lor.lhs.false66, %lor.lhs.false70, %lor.lhs.false73, %lor.lhs.false76, %lor.lhs.false80, %lor.lhs.false83, %lor.lhs.false86, %lor.lhs.false90, %lor.lhs.false93, %lor.lhs.false96, %lor.lhs.false99, %if.end, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false9, %lor.lhs.false12, %lor.lhs.false16, %lor.lhs.false19, %lor.lhs.false22, %lor.lhs.false25, %lor.lhs.false28, %lor.lhs.false31, %lor.lhs.false35, %lor.lhs.false38, %lor.lhs.false41, %lor.lhs.false44, %entry
  %call335 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #6
  br label %finish

finish:                                           ; preds = %lor.lhs.false329, %if.end307, %lor.lhs.false311, %lor.lhs.false314, %lor.lhs.false317, %lor.lhs.false320, %lor.lhs.false323, %lor.lhs.false326, %err
  %ok.0 = phi i32 [ 0, %err ], [ 0, %lor.lhs.false326 ], [ 0, %lor.lhs.false323 ], [ 0, %lor.lhs.false320 ], [ 0, %lor.lhs.false317 ], [ 0, %lor.lhs.false314 ], [ 0, %lor.lhs.false311 ], [ 0, %if.end307 ], [ %spec.select, %lor.lhs.false329 ]
  %call336 = call i8* @memset(i8* noundef bitcast ([5 x %struct.bio_st*]* @my_param_b to i8*), i32 noundef 0, i64 noundef 40) #6
  %call337 = call i8* @memset(i8* noundef bitcast ([5 x i8*]* @my_param_argp to i8*), i32 noundef 0, i64 noundef 40) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %0) #7
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_callback() #0 {
entry:
  %test1 = alloca [5 x i8], align 1
  %test2 = alloca [6 x i8], align 1
  %buf = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [5 x i8], [5 x i8]* %test1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %0) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %0, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_bio_callback.test1, i64 0, i64 0), i64 5, i1 false)
  %1 = getelementptr inbounds [6 x i8], [6 x i8]* %test2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %1) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %1, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_bio_callback.test2, i64 0, i64 0), i64 6, i1 false)
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7
  store i32 0, i32* @my_param_count, align 4, !tbaa !3
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #6
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #6
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BIO_set_callback(%struct.bio_st* noundef nonnull %call1, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* noundef nonnull @my_bio_callback) #6
  %call2 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %0, i32 noundef 4) #6
  %call3 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %call2, i32 noundef 4) #6
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %call4 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %3, i32 noundef 2) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load i8*, i8** bitcast ([5 x %struct.bio_st*]* @my_param_b to i8**), align 16, !tbaa !7
  %5 = bitcast %struct.bio_st* %call1 to i8*
  %call7 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %4, i8* noundef nonnull %5) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %6 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 0), align 16, !tbaa !3
  %call10 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 noundef %6, i32 noundef 3) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %7 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 0), align 16, !tbaa !7
  %call14 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %7, i8* noundef nonnull %0) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %8 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 0), align 16, !tbaa !3
  %call17 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %8, i32 noundef 4) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %9 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 0), align 16, !tbaa !9
  %call20 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %9, i64 noundef 0) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %10 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 0), align 16, !tbaa !9
  %call23 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 noundef %10, i64 noundef 1) #6
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %11 = load i8*, i8** bitcast (%struct.bio_st** getelementptr inbounds ([5 x %struct.bio_st*], [5 x %struct.bio_st*]* @my_param_b, i64 0, i64 1) to i8**), align 8, !tbaa !7
  %call26 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %11, i8* noundef nonnull %5) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %12 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 1), align 4, !tbaa !3
  %call29 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 noundef %12, i32 noundef 131) #6
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %13 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 1), align 8, !tbaa !7
  %call33 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %13, i8* noundef nonnull %0) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %14 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 1), align 4, !tbaa !3
  %call36 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %14, i32 noundef 4) #6
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %15 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 1), align 8, !tbaa !9
  %call39 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %15, i64 noundef 0) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  %16 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 1), align 8, !tbaa !9
  %call42 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0), i64 noundef %16, i64 noundef 4) #6
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false41
  store i32 0, i32* @my_param_count, align 4, !tbaa !3
  %call47 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %2, i32 noundef 16) #6
  %conv = sext i32 %call47 to i64
  %call50 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef %conv, i8* noundef nonnull %0, i64 noundef 4) #6
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.end45
  %17 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %call53 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %17, i32 noundef 2) #6
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false52
  %18 = load i8*, i8** bitcast ([5 x %struct.bio_st*]* @my_param_b to i8**), align 16, !tbaa !7
  %call56 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %18, i8* noundef nonnull %5) #6
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false55
  %19 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 0), align 16, !tbaa !3
  %call59 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 noundef %19, i32 noundef 2) #6
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false58
  %20 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 0), align 16, !tbaa !7
  %call63 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %20, i8* noundef nonnull %2) #6
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false61
  %21 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 0), align 16, !tbaa !3
  %call66 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 noundef %21, i32 noundef 16) #6
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %22 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 0), align 16, !tbaa !9
  %call69 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %22, i64 noundef 0) #6
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false68
  %23 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 0), align 16, !tbaa !9
  %call72 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 noundef %23, i64 noundef 1) #6
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false71
  %24 = load i8*, i8** bitcast (%struct.bio_st** getelementptr inbounds ([5 x %struct.bio_st*], [5 x %struct.bio_st*]* @my_param_b, i64 0, i64 1) to i8**), align 8, !tbaa !7
  %call75 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %24, i8* noundef nonnull %5) #6
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false74
  %25 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 1), align 4, !tbaa !3
  %call78 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 noundef %25, i32 noundef 130) #6
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false77
  %26 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 1), align 8, !tbaa !7
  %call82 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %26, i8* noundef nonnull %2) #6
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false80
  %27 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 1), align 4, !tbaa !3
  %call85 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 noundef %27, i32 noundef 16) #6
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %lor.lhs.false84
  %28 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 1), align 8, !tbaa !9
  %call88 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %28, i64 noundef 0) #6
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false87
  %29 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 1), align 8, !tbaa !9
  %call91 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0), i64 noundef %29, i64 noundef 4) #6
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %err, label %if.end94

if.end94:                                         ; preds = %lor.lhs.false90
  store i32 0, i32* @my_param_count, align 4, !tbaa !3
  %call96 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %2, i32 noundef 16) #6
  %call97 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call96, i32 noundef -1) #6
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %if.end94
  %30 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %call100 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %30, i32 noundef 2) #6
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %err, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %lor.lhs.false99
  %31 = load i8*, i8** bitcast ([5 x %struct.bio_st*]* @my_param_b to i8**), align 16, !tbaa !7
  %call103 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 275, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %31, i8* noundef nonnull %5) #6
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %err, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %lor.lhs.false102
  %32 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 0), align 16, !tbaa !3
  %call106 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 276, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 noundef %32, i32 noundef 2) #6
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false105
  %33 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 0), align 16, !tbaa !7
  %call110 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %33, i8* noundef nonnull %2) #6
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false108
  %34 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 0), align 16, !tbaa !3
  %call113 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 noundef %34, i32 noundef 16) #6
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %err, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false112
  %35 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 0), align 16, !tbaa !9
  %call116 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %35, i64 noundef 0) #6
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %err, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %lor.lhs.false115
  %36 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 0), align 16, !tbaa !9
  %call119 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 noundef %36, i64 noundef 1) #6
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %err, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %lor.lhs.false118
  %37 = load i8*, i8** bitcast (%struct.bio_st** getelementptr inbounds ([5 x %struct.bio_st*], [5 x %struct.bio_st*]* @my_param_b, i64 0, i64 1) to i8**), align 8, !tbaa !7
  %call122 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %37, i8* noundef nonnull %5) #6
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %err, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %lor.lhs.false121
  %38 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 1), align 4, !tbaa !3
  %call125 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 noundef %38, i32 noundef 130) #6
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %err, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %lor.lhs.false124
  %39 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 1), align 8, !tbaa !7
  %call129 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %39, i8* noundef nonnull %2) #6
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %err, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %lor.lhs.false127
  %40 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 1), align 4, !tbaa !3
  %call132 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 284, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 noundef %40, i32 noundef 16) #6
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %err, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %lor.lhs.false131
  %41 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 1), align 8, !tbaa !9
  %call135 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %41, i64 noundef 0) #6
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %err, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %lor.lhs.false134
  %42 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 1), align 8, !tbaa !9
  %call138 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i64 noundef %42, i64 noundef -1) #6
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %err, label %if.end141

if.end141:                                        ; preds = %lor.lhs.false137
  %call142 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 130, i64 noundef 0, i8* noundef null) #6
  store i32 0, i32* @my_param_count, align 4, !tbaa !3
  %call144 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %2, i32 noundef 16) #6
  %call145 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %call144, i32 noundef 0) #6
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %err, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %if.end141
  %43 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %call148 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %43, i32 noundef 2) #6
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %err, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %lor.lhs.false147
  %44 = load i8*, i8** bitcast ([5 x %struct.bio_st*]* @my_param_b to i8**), align 16, !tbaa !7
  %call151 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %44, i8* noundef nonnull %5) #6
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %err, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %lor.lhs.false150
  %45 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 0), align 16, !tbaa !3
  %call154 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 noundef %45, i32 noundef 2) #6
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %err, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %lor.lhs.false153
  %46 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 0), align 16, !tbaa !7
  %call158 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %46, i8* noundef nonnull %2) #6
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %err, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %lor.lhs.false156
  %47 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 0), align 16, !tbaa !3
  %call161 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 298, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 noundef %47, i32 noundef 16) #6
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %err, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %lor.lhs.false160
  %48 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 0), align 16, !tbaa !9
  %call164 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %48, i64 noundef 0) #6
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %err, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %lor.lhs.false163
  %49 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 0), align 16, !tbaa !9
  %call167 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 noundef %49, i64 noundef 1) #6
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %err, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %lor.lhs.false166
  %50 = load i8*, i8** bitcast (%struct.bio_st** getelementptr inbounds ([5 x %struct.bio_st*], [5 x %struct.bio_st*]* @my_param_b, i64 0, i64 1) to i8**), align 8, !tbaa !7
  %call170 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 301, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %50, i8* noundef nonnull %5) #6
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %err, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %lor.lhs.false169
  %51 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 1), align 4, !tbaa !3
  %call173 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 noundef %51, i32 noundef 130) #6
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %err, label %lor.lhs.false175

lor.lhs.false175:                                 ; preds = %lor.lhs.false172
  %52 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 1), align 8, !tbaa !7
  %call177 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %52, i8* noundef nonnull %2) #6
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %err, label %lor.lhs.false179

lor.lhs.false179:                                 ; preds = %lor.lhs.false175
  %53 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 1), align 4, !tbaa !3
  %call180 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 304, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 noundef %53, i32 noundef 16) #6
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %err, label %lor.lhs.false182

lor.lhs.false182:                                 ; preds = %lor.lhs.false179
  %54 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 1), align 8, !tbaa !9
  %call183 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 305, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %54, i64 noundef 0) #6
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %err, label %lor.lhs.false185

lor.lhs.false185:                                 ; preds = %lor.lhs.false182
  %55 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 1), align 8, !tbaa !9
  %call186 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 306, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %55, i64 noundef 0) #6
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %err, label %if.end189

if.end189:                                        ; preds = %lor.lhs.false185
  store i32 0, i32* @my_param_count, align 4, !tbaa !3
  %call191 = call i32 @BIO_puts(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %1) #6
  %call192 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i32 noundef %call191, i32 noundef 5) #6
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %err, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %if.end189
  %56 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %call195 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %56, i32 noundef 2) #6
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %err, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %lor.lhs.false194
  %57 = load i8*, i8** bitcast ([5 x %struct.bio_st*]* @my_param_b to i8**), align 16, !tbaa !7
  %call198 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %57, i8* noundef nonnull %5) #6
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %err, label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %lor.lhs.false197
  %58 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 0), align 16, !tbaa !3
  %call201 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i32 noundef %58, i32 noundef 4) #6
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %err, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %lor.lhs.false200
  %59 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 0), align 16, !tbaa !7
  %call205 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8* noundef %59, i8* noundef nonnull %1) #6
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %err, label %lor.lhs.false207

lor.lhs.false207:                                 ; preds = %lor.lhs.false203
  %60 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 0), align 16, !tbaa !3
  %call208 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %60, i32 noundef 0) #6
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %err, label %lor.lhs.false210

lor.lhs.false210:                                 ; preds = %lor.lhs.false207
  %61 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 0), align 16, !tbaa !9
  %call211 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %61, i64 noundef 0) #6
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %err, label %lor.lhs.false213

lor.lhs.false213:                                 ; preds = %lor.lhs.false210
  %62 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 0), align 16, !tbaa !9
  %call214 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 noundef %62, i64 noundef 1) #6
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %err, label %lor.lhs.false216

lor.lhs.false216:                                 ; preds = %lor.lhs.false213
  %63 = load i8*, i8** bitcast (%struct.bio_st** getelementptr inbounds ([5 x %struct.bio_st*], [5 x %struct.bio_st*]* @my_param_b, i64 0, i64 1) to i8**), align 8, !tbaa !7
  %call217 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 319, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %63, i8* noundef nonnull %5) #6
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %err, label %lor.lhs.false219

lor.lhs.false219:                                 ; preds = %lor.lhs.false216
  %64 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 1), align 4, !tbaa !3
  %call220 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i64 0, i64 0), i32 noundef %64, i32 noundef 132) #6
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %err, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %lor.lhs.false219
  %65 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 1), align 8, !tbaa !7
  %call224 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 321, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8* noundef %65, i8* noundef nonnull %1) #6
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %err, label %lor.lhs.false226

lor.lhs.false226:                                 ; preds = %lor.lhs.false222
  %66 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 1), align 4, !tbaa !3
  %call227 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 322, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %66, i32 noundef 0) #6
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %err, label %lor.lhs.false229

lor.lhs.false229:                                 ; preds = %lor.lhs.false226
  %67 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 1), align 8, !tbaa !9
  %call230 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %67, i64 noundef 0) #6
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %err, label %lor.lhs.false232

lor.lhs.false232:                                 ; preds = %lor.lhs.false229
  %68 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 1), align 8, !tbaa !9
  %call233 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i64 noundef %68, i64 noundef 5) #6
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %err, label %if.end236

if.end236:                                        ; preds = %lor.lhs.false232
  store i32 0, i32* @my_param_count, align 4, !tbaa !3
  %call237 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #6
  %call238 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 329, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %call237, i32 noundef 1) #6
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %finish, label %lor.lhs.false240

lor.lhs.false240:                                 ; preds = %if.end236
  %69 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %call241 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %69, i32 noundef 1) #6
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %finish, label %lor.lhs.false243

lor.lhs.false243:                                 ; preds = %lor.lhs.false240
  %70 = load i8*, i8** bitcast ([5 x %struct.bio_st*]* @my_param_b to i8**), align 16, !tbaa !7
  %call244 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 331, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %70, i8* noundef nonnull %5) #6
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %finish, label %lor.lhs.false246

lor.lhs.false246:                                 ; preds = %lor.lhs.false243
  %71 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 0), align 16, !tbaa !3
  %call247 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 noundef %71, i32 noundef 1) #6
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %finish, label %lor.lhs.false249

lor.lhs.false249:                                 ; preds = %lor.lhs.false246
  %72 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 0), align 16, !tbaa !7
  %call250 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* noundef %72, i8* noundef null) #6
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %finish, label %lor.lhs.false252

lor.lhs.false252:                                 ; preds = %lor.lhs.false249
  %73 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 0), align 16, !tbaa !3
  %call253 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 334, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %73, i32 noundef 0) #6
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %finish, label %lor.lhs.false255

lor.lhs.false255:                                 ; preds = %lor.lhs.false252
  %74 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 0), align 16, !tbaa !9
  %call256 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 335, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef %74, i64 noundef 0) #6
  %tobool257.not = icmp eq i32 %call256, 0
  br i1 %tobool257.not, label %finish, label %lor.lhs.false258

lor.lhs.false258:                                 ; preds = %lor.lhs.false255
  %75 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 0), align 16, !tbaa !9
  %call259 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 336, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 noundef %75, i64 noundef 1) #6
  %tobool260.not = icmp ne i32 %call259, 0
  %spec.select = zext i1 %tobool260.not to i32
  br label %finish

err:                                              ; preds = %if.end189, %lor.lhs.false194, %lor.lhs.false197, %lor.lhs.false200, %lor.lhs.false203, %lor.lhs.false207, %lor.lhs.false210, %lor.lhs.false213, %lor.lhs.false216, %lor.lhs.false219, %lor.lhs.false222, %lor.lhs.false226, %lor.lhs.false229, %lor.lhs.false232, %if.end141, %lor.lhs.false147, %lor.lhs.false150, %lor.lhs.false153, %lor.lhs.false156, %lor.lhs.false160, %lor.lhs.false163, %lor.lhs.false166, %lor.lhs.false169, %lor.lhs.false172, %lor.lhs.false175, %lor.lhs.false179, %lor.lhs.false182, %lor.lhs.false185, %if.end94, %lor.lhs.false99, %lor.lhs.false102, %lor.lhs.false105, %lor.lhs.false108, %lor.lhs.false112, %lor.lhs.false115, %lor.lhs.false118, %lor.lhs.false121, %lor.lhs.false124, %lor.lhs.false127, %lor.lhs.false131, %lor.lhs.false134, %lor.lhs.false137, %if.end45, %lor.lhs.false52, %lor.lhs.false55, %lor.lhs.false58, %lor.lhs.false61, %lor.lhs.false65, %lor.lhs.false68, %lor.lhs.false71, %lor.lhs.false74, %lor.lhs.false77, %lor.lhs.false80, %lor.lhs.false84, %lor.lhs.false87, %lor.lhs.false90, %if.end, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false9, %lor.lhs.false12, %lor.lhs.false16, %lor.lhs.false19, %lor.lhs.false22, %lor.lhs.false25, %lor.lhs.false28, %lor.lhs.false31, %lor.lhs.false35, %lor.lhs.false38, %lor.lhs.false41, %entry
  %call263 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #6
  br label %finish

finish:                                           ; preds = %lor.lhs.false258, %if.end236, %lor.lhs.false240, %lor.lhs.false243, %lor.lhs.false246, %lor.lhs.false249, %lor.lhs.false252, %lor.lhs.false255, %err
  %ok.0 = phi i32 [ 0, %err ], [ 0, %lor.lhs.false255 ], [ 0, %lor.lhs.false252 ], [ 0, %lor.lhs.false249 ], [ 0, %lor.lhs.false246 ], [ 0, %lor.lhs.false243 ], [ 0, %lor.lhs.false240 ], [ 0, %if.end236 ], [ %spec.select, %lor.lhs.false258 ]
  %call264 = call i8* @memset(i8* noundef bitcast ([5 x %struct.bio_st*]* @my_param_b to i8*), i32 noundef 0, i64 noundef 40) #6
  %call265 = call i8* @memset(i8* noundef bitcast ([5 x i8*]* @my_param_argp to i8*), i32 noundef 0, i64 noundef 40) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %0) #7
  ret i32 %ok.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local void @BIO_set_callback_ex(%struct.bio_st* noundef, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i64 @my_bio_cb_ex(%struct.bio_st* noundef %b, i32 noundef %oper, i8* noundef %argp, i64 noundef %len, i32 noundef %argi, i64 noundef %argl, i32 noundef %ret, i64* noundef readonly %processed) #4 {
entry:
  %0 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.bio_st*], [5 x %struct.bio_st*]* @my_param_b, i64 0, i64 %idxprom
  store %struct.bio_st* %b, %struct.bio_st** %arrayidx, align 8, !tbaa !7
  %arrayidx2 = getelementptr inbounds [5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 %idxprom
  store i32 %oper, i32* %arrayidx2, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds [5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 %idxprom
  store i8* %argp, i8** %arrayidx4, align 8, !tbaa !7
  %arrayidx6 = getelementptr inbounds [5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 %idxprom
  store i32 %argi, i32* %arrayidx6, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds [5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 %idxprom
  store i64 %argl, i64* %arrayidx8, align 8, !tbaa !9
  %conv = sext i32 %ret to i64
  %arrayidx10 = getelementptr inbounds [5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 %idxprom
  store i64 %conv, i64* %arrayidx10, align 8, !tbaa !9
  %arrayidx12 = getelementptr inbounds [5 x i64], [5 x i64]* @my_param_len, i64 0, i64 %idxprom
  store i64 %len, i64* %arrayidx12, align 8, !tbaa !9
  %cmp13.not = icmp eq i64* %processed, null
  br i1 %cmp13.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %1 = load i64, i64* %processed, align 8, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 0, %if.end ]
  %arrayidx16 = getelementptr inbounds [5 x i64], [5 x i64]* @my_param_processed, i64 0, i64 %idxprom
  store i64 %cond, i64* %arrayidx16, align 8, !tbaa !9
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @my_param_count, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i64 [ %conv, %cond.end ], [ -1, %entry ]
  ret i64 %retval.0
}

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_long_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @BIO_set_callback(%struct.bio_st* noundef, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i64 @my_bio_callback(%struct.bio_st* noundef %b, i32 noundef %oper, i8* noundef %argp, i32 noundef %argi, i64 noundef %argl, i64 noundef %ret) #4 {
entry:
  %0 = load i32, i32* @my_param_count, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.bio_st*], [5 x %struct.bio_st*]* @my_param_b, i64 0, i64 %idxprom
  store %struct.bio_st* %b, %struct.bio_st** %arrayidx, align 8, !tbaa !7
  %arrayidx2 = getelementptr inbounds [5 x i32], [5 x i32]* @my_param_oper, i64 0, i64 %idxprom
  store i32 %oper, i32* %arrayidx2, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds [5 x i8*], [5 x i8*]* @my_param_argp, i64 0, i64 %idxprom
  store i8* %argp, i8** %arrayidx4, align 8, !tbaa !7
  %arrayidx6 = getelementptr inbounds [5 x i32], [5 x i32]* @my_param_argi, i64 0, i64 %idxprom
  store i32 %argi, i32* %arrayidx6, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds [5 x i64], [5 x i64]* @my_param_argl, i64 0, i64 %idxprom
  store i64 %argl, i64* %arrayidx8, align 8, !tbaa !9
  %arrayidx10 = getelementptr inbounds [5 x i64], [5 x i64]* @my_param_ret, i64 0, i64 %idxprom
  store i64 %ret, i64* %arrayidx10, align 8, !tbaa !9
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @my_param_count, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %ret, %if.end ], [ -1, %entry ]
  ret i64 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
