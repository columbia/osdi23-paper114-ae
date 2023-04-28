; ModuleID = 'test/errtest.c'
source_filename = "test/errtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type opaque
%struct.bio_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"preserves_system_error\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"vdata_appends\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"raised_error\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"test_print_error_format\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"test_marks\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"test_clear_error\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"test/errtest.c\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"errno\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"EINVAL\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"hello \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"\22hello world\22\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"calling exit()\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"e = ERR_get_error_all(&f, &l, NULL, &data, NULL)\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"ERR_GET_REASON(e)\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"ERR_R_INTERNAL_ERROR\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"\22calling exit()\22\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c":error:%08lX:%s:%s:%s:%s:%d\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"reasoncode\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"syserr\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"system library\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"bio = BIO_new(BIO_s_mem())\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"len = BIO_get_mem_data(bio, &out)\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"IS_HEX(*p)\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"*p != 0\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"mallocfail\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"ERR_set_mark()\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"ERR_pop_to_mark()\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"ERR_peek_last_error()\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"ERR_clear_last_mark()\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"shouldnot\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"ERR_get_error()\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"hello %s\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"ERR_TXT_STRING | ERR_TXT_MALLOCED\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"ERR_TXT_MALLOCED\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"goodbye %s world\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"cruel\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"\22goodbye cruel world\22\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"goodbye cruel world\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @preserves_system_error) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @vdata_appends) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @raised_error) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_print_error_format) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_marks) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_clear_error) #7
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @preserves_system_error() #0 {
entry:
  %call = tail call i32* @__errno_location() #8
  store i32 22, i32* %call, align 4, !tbaa !3
  %call1 = tail call i64 @ERR_get_error() #7
  %0 = load i32, i32* %call, align 4, !tbaa !3
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 noundef %0, i32 noundef 22) #7
  ret i32 %call3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @vdata_appends() #0 {
entry:
  %data = alloca i8*, align 8
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #7
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #7
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #7
  %call = call i64 @ERR_peek_error_data(i8** noundef nonnull %data, i32* noundef null) #7
  %1 = load i8*, i8** %data, align 8, !tbaa !7
  %call1 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0)) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @raised_error() #0 {
entry:
  %f = alloca i8*, align 8
  %data = alloca i8*, align 8
  %l = alloca i32, align 4
  %0 = bitcast i8** %f to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 1, i32 noundef 786691, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0)) #7
  %call = call i64 @ERR_get_error_all(i8** noundef nonnull %f, i32* noundef nonnull %l, i8** noundef null, i8** noundef nonnull %data, i32* noundef null) #7
  %call1 = call i32 @test_ulong_ne(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 noundef %call, i64 noundef 0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call) #10, !range !9
  %call3 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call2, i32 noundef 786691) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %l, align 4, !tbaa !3
  %call6 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 noundef %3, i32 noundef 159) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %4 = load i8*, i8** %f, align 8, !tbaa !7
  %call9 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* noundef %4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0)) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %5 = load i8*, i8** %data, align 8, !tbaa !7
  %call12 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef %5, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0)) #7
  %tobool13.not = icmp ne i32 %call12, 0
  %spec.select = zext i1 %tobool13.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false11, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false8
  %retval.0 = phi i32 [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false11 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_print_error_format() #0 {
entry:
  %expected = alloca [512 x i8], align 16
  %out = alloca i8*, align 8
  %0 = getelementptr inbounds [512 x i8], [512 x i8]* %expected, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #9
  %1 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i8* null, i8** %out, align 8, !tbaa !7
  %call = tail call i32 @ERR_set_mark() #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef 1, i8* noundef null) #7
  %call1 = tail call i64 @ERR_peek_error() #7
  %call2 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call1) #10, !range !9
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i32 noundef %call2, i32 noundef 1) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @ERR_pop_to_mark() #7
  br label %err

if.end:                                           ; preds = %entry
  %call6 = tail call i8* @strerror(i32 noundef 1) #7
  %call7 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 512, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i64 noundef %call1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call6, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 37) #7
  %call8 = call %struct.bio_method_st* @BIO_s_mem() #7
  %call9 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call8) #7
  %2 = bitcast %struct.bio_st* %call9 to i8*
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i8* noundef %2) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end
  call void @ERR_print_errors(%struct.bio_st* noundef %call9) #7
  %call14 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call9, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %1) #7
  %conv15 = trunc i64 %call14 to i32
  %call16 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv15, i32 noundef 0) #7
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end19

if.end19:                                         ; preds = %if.end13
  %3 = load i8*, i8** %out, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end19
  %p.0 = phi i8* [ %3, %if.end19 ], [ %incdec.ptr, %for.inc ]
  %4 = load i8, i8* %p.0, align 1, !tbaa !10
  switch i8 %4, label %for.body [
    i8 58, label %for.end
    i8 0, label %for.end
  ]

for.body:                                         ; preds = %for.cond
  %5 = add i8 %4, -48
  %6 = icmp ult i8 %5, 10
  %7 = add i8 %4, -65
  %8 = icmp ult i8 %7, 6
  %9 = or i1 %6, %8
  %lor.ext = zext i1 %9 to i32
  %call41 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i32 noundef %lor.ext) #7
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond, %for.cond
  %cmp46 = icmp ne i8 %4, 0
  %conv47 = zext i1 %cmp46 to i32
  %call50 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv47) #7
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %call54 = call i64 @strlen(i8* noundef nonnull %0) #11
  %call57 = call i32 @test_strn_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %call54, i8* noundef nonnull %p.0, i64 noundef %call54) #7
  %tobool58.not = icmp ne i32 %call57, 0
  %spec.select87 = zext i1 %tobool58.not to i32
  br label %err

err:                                              ; preds = %for.body, %lor.lhs.false, %for.end, %if.end13, %if.end, %if.then
  %bio.0 = phi %struct.bio_st* [ %call9, %for.end ], [ %call9, %if.end13 ], [ %call9, %if.end ], [ null, %if.then ], [ %call9, %lor.lhs.false ], [ %call9, %for.body ]
  %ret.0 = phi i32 [ 0, %for.end ], [ 0, %if.end13 ], [ 0, %if.end ], [ 0, %if.then ], [ %spec.select87, %lor.lhs.false ], [ 0, %for.body ]
  %call61 = call i32 @BIO_free(%struct.bio_st* noundef %bio.0) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_marks() #0 {
entry:
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #7
  %call = tail call i64 @ERR_peek_last_error() #7
  %call1 = tail call i32 @test_ulong_gt(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 noundef %call, i64 noundef 0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ERR_set_mark() #7
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @ERR_pop_to_mark() #7
  %cmp6 = icmp ne i32 %call5, 0
  %conv7 = zext i1 %cmp6 to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv7) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = tail call i64 @ERR_peek_last_error() #7
  %call12 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef %call, i64 noundef %call11) #7
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call i32 @ERR_set_mark() #7
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv17) #7
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false14
  %call21 = tail call i32 @ERR_clear_last_mark() #7
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv23) #7
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %call27 = tail call i64 @ERR_peek_last_error() #7
  %call28 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef %call, i64 noundef %call27) #7
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %lor.lhs.false26
  %call32 = tail call i32 @ERR_set_mark() #7
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv34) #7
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.end31
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, i8* noundef null) #7
  %call39 = tail call i64 @ERR_peek_last_error() #7
  %call40 = tail call i32 @test_ulong_ne(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef %call, i64 noundef %call39) #7
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end38
  %call43 = tail call i32 @ERR_pop_to_mark() #7
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv45) #7
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false42
  %call49 = tail call i64 @ERR_peek_last_error() #7
  %call50 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef %call, i64 noundef %call49) #7
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup, label %if.end53

if.end53:                                         ; preds = %lor.lhs.false48
  %call54 = tail call i32 @ERR_set_mark() #7
  %cmp55 = icmp ne i32 %call54, 0
  %conv56 = zext i1 %cmp55 to i32
  %call57 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv56) #7
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %cleanup, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end53
  %call60 = tail call i32 @ERR_set_mark() #7
  %cmp61 = icmp ne i32 %call60, 0
  %conv62 = zext i1 %cmp61 to i32
  %call63 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv62) #7
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %cleanup, label %if.end66

if.end66:                                         ; preds = %lor.lhs.false59
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, i8* noundef null) #7
  %call67 = tail call i64 @ERR_peek_last_error() #7
  %call68 = tail call i32 @test_ulong_ne(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef %call, i64 noundef %call67) #7
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %cleanup, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.end66
  %call71 = tail call i32 @ERR_pop_to_mark() #7
  %cmp72 = icmp ne i32 %call71, 0
  %conv73 = zext i1 %cmp72 to i32
  %call74 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv73) #7
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %cleanup, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false70
  %call77 = tail call i32 @ERR_pop_to_mark() #7
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv79) #7
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %cleanup, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false76
  %call83 = tail call i64 @ERR_peek_last_error() #7
  %call84 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef %call, i64 noundef %call83) #7
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %cleanup, label %if.end87

if.end87:                                         ; preds = %lor.lhs.false82
  %call88 = tail call i32 @ERR_set_mark() #7
  %cmp89 = icmp ne i32 %call88, 0
  %conv90 = zext i1 %cmp89 to i32
  %call91 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv90) #7
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %cleanup, label %if.end94

if.end94:                                         ; preds = %if.end87
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786689, i8* noundef null) #7
  %call95 = tail call i64 @ERR_peek_last_error() #7
  %call96 = tail call i32 @test_ulong_ne(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i64 noundef %call, i64 noundef %call95) #7
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %cleanup, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %if.end94
  %call99 = tail call i32 @ERR_set_mark() #7
  %cmp100 = icmp ne i32 %call99, 0
  %conv101 = zext i1 %cmp100 to i32
  %call102 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv101) #7
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %cleanup, label %if.end105

if.end105:                                        ; preds = %lor.lhs.false98
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, i8* noundef null) #7
  %call106 = tail call i64 @ERR_peek_last_error() #7
  %call107 = tail call i32 @test_ulong_ne(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef %call95, i64 noundef %call106) #7
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %cleanup, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %if.end105
  %call110 = tail call i32 @ERR_pop_to_mark() #7
  %cmp111 = icmp ne i32 %call110, 0
  %conv112 = zext i1 %cmp111 to i32
  %call113 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv112) #7
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %cleanup, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false109
  %call116 = tail call i64 @ERR_peek_last_error() #7
  %call117 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef %call95, i64 noundef %call116) #7
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %cleanup, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %lor.lhs.false115
  %call120 = tail call i32 @ERR_pop_to_mark() #7
  %cmp121 = icmp ne i32 %call120, 0
  %conv122 = zext i1 %cmp121 to i32
  %call123 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv122) #7
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %cleanup, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %lor.lhs.false119
  %call126 = tail call i64 @ERR_peek_last_error() #7
  %call127 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef %call, i64 noundef %call126) #7
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %cleanup, label %if.end130

if.end130:                                        ; preds = %lor.lhs.false125
  %call131 = tail call i32 @ERR_set_mark() #7
  %cmp132 = icmp ne i32 %call131, 0
  %conv133 = zext i1 %cmp132 to i32
  %call134 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv133) #7
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %cleanup, label %if.end137

if.end137:                                        ; preds = %if.end130
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786689, i8* noundef null) #7
  %call138 = tail call i32 @ERR_clear_last_mark() #7
  %cmp139 = icmp ne i32 %call138, 0
  %conv140 = zext i1 %cmp139 to i32
  %call141 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv140) #7
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %cleanup, label %lor.lhs.false143

lor.lhs.false143:                                 ; preds = %if.end137
  %call144 = tail call i64 @ERR_peek_last_error() #7
  %call145 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef %call95, i64 noundef %call144) #7
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %cleanup, label %if.end148

if.end148:                                        ; preds = %lor.lhs.false143
  %call149 = tail call i32 @ERR_pop_to_mark() #7
  %cmp150 = icmp ne i32 %call149, 0
  %conv151 = zext i1 %cmp150 to i32
  %call152 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv151) #7
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %cleanup, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %if.end148
  %call155 = tail call i64 @ERR_peek_last_error() #7
  %call156 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef 0, i64 noundef %call155) #7
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %cleanup, label %if.end159

if.end159:                                        ; preds = %lor.lhs.false154
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #7
  %call160 = tail call i32 @ERR_clear_last_mark() #7
  %cmp161 = icmp ne i32 %call160, 0
  %conv162 = zext i1 %cmp161 to i32
  %call163 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv162) #7
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %cleanup, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %if.end159
  %call166 = tail call i64 @ERR_get_error() #7
  %call167 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i64 noundef %call, i64 noundef %call166) #7
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %cleanup, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %lor.lhs.false165
  %call170 = tail call i64 @ERR_peek_last_error() #7
  %call171 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef 0, i64 noundef %call170) #7
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %cleanup, label %if.end174

if.end174:                                        ; preds = %lor.lhs.false169
  %call175 = tail call i32 @ERR_set_mark() #7
  %cmp176 = icmp ne i32 %call175, 0
  %conv177 = zext i1 %cmp176 to i32
  %call178 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv177) #7
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %cleanup, label %if.end181

if.end181:                                        ; preds = %if.end174
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #7
  %call182 = tail call i32 @ERR_set_mark() #7
  %cmp183 = icmp ne i32 %call182, 0
  %conv184 = zext i1 %cmp183 to i32
  %call185 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv184) #7
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %cleanup, label %if.end188

if.end188:                                        ; preds = %if.end181
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, i8* noundef null) #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786689, i8* noundef null) #7
  %call189 = tail call i32 @ERR_pop_to_mark() #7
  %cmp190 = icmp ne i32 %call189, 0
  %conv191 = zext i1 %cmp190 to i32
  %call192 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv191) #7
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %cleanup, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %if.end188
  %call195 = tail call i64 @ERR_peek_last_error() #7
  %call196 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef %call, i64 noundef %call195) #7
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %cleanup, label %if.end199

if.end199:                                        ; preds = %lor.lhs.false194
  %call200 = tail call i32 @ERR_set_mark() #7
  %cmp201 = icmp ne i32 %call200, 0
  %conv202 = zext i1 %cmp201 to i32
  %call203 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv202) #7
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %cleanup, label %if.end206

if.end206:                                        ; preds = %if.end199
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 276, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, i8* noundef null) #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786689, i8* noundef null) #7
  %call207 = tail call i32 @ERR_clear_last_mark() #7
  %cmp208 = icmp ne i32 %call207, 0
  %conv209 = zext i1 %cmp208 to i32
  %call210 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv209) #7
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %cleanup, label %lor.lhs.false212

lor.lhs.false212:                                 ; preds = %if.end206
  %call213 = tail call i64 @ERR_peek_last_error() #7
  %call214 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i64 noundef %call95, i64 noundef %call213) #7
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %cleanup, label %if.end217

if.end217:                                        ; preds = %lor.lhs.false212
  tail call void @ERR_clear_error() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end206, %lor.lhs.false212, %if.end199, %if.end188, %lor.lhs.false194, %if.end181, %if.end174, %if.end159, %lor.lhs.false165, %lor.lhs.false169, %if.end148, %lor.lhs.false154, %if.end137, %lor.lhs.false143, %if.end130, %if.end105, %lor.lhs.false109, %lor.lhs.false115, %lor.lhs.false119, %lor.lhs.false125, %if.end94, %lor.lhs.false98, %if.end87, %if.end66, %lor.lhs.false70, %lor.lhs.false76, %lor.lhs.false82, %if.end53, %lor.lhs.false59, %if.end38, %lor.lhs.false42, %lor.lhs.false48, %if.end31, %if.end, %lor.lhs.false, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false20, %lor.lhs.false26, %entry, %if.end217
  %retval.0 = phi i32 [ 1, %if.end217 ], [ 0, %entry ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.end31 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false42 ], [ 0, %if.end38 ], [ 0, %lor.lhs.false59 ], [ 0, %if.end53 ], [ 0, %lor.lhs.false82 ], [ 0, %lor.lhs.false76 ], [ 0, %lor.lhs.false70 ], [ 0, %if.end66 ], [ 0, %if.end87 ], [ 0, %lor.lhs.false98 ], [ 0, %if.end94 ], [ 0, %lor.lhs.false125 ], [ 0, %lor.lhs.false119 ], [ 0, %lor.lhs.false115 ], [ 0, %lor.lhs.false109 ], [ 0, %if.end105 ], [ 0, %if.end130 ], [ 0, %lor.lhs.false143 ], [ 0, %if.end137 ], [ 0, %lor.lhs.false154 ], [ 0, %if.end148 ], [ 0, %lor.lhs.false169 ], [ 0, %lor.lhs.false165 ], [ 0, %if.end159 ], [ 0, %if.end174 ], [ 0, %if.end181 ], [ 0, %lor.lhs.false194 ], [ 0, %if.end188 ], [ 0, %if.end199 ], [ 0, %lor.lhs.false212 ], [ 0, %if.end206 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_clear_error() #0 {
entry:
  %flags = alloca i32, align 4
  %data = alloca i8*, align 8
  %0 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 -1, i32* %flags, align 4, !tbaa !3
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i8* null, i8** %data, align 8, !tbaa !7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 0, i32 noundef 0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #7
  %call = call i64 @ERR_peek_error_data(i8** noundef nonnull %data, i32* noundef nonnull %flags) #7
  %2 = load i8*, i8** %data, align 8, !tbaa !7
  %call1 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0)) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %flags, align 4, !tbaa !3
  %call2 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i64 0, i64 0), i32 noundef %3, i32 noundef 3) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @ERR_clear_error() #7
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 305, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 0, i32 noundef 0, i8* noundef null) #7
  %call4 = call i64 @ERR_peek_error_data(i8** noundef nonnull %data, i32* noundef nonnull %flags) #7
  %4 = load i8*, i8** %data, align 8, !tbaa !7
  %call5 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 307, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i8* noundef %4, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i64 0, i64 0)) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %5 = load i32, i32* %flags, align 4, !tbaa !3
  %call8 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i32 noundef %5, i32 noundef 1) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false7
  call void @ERR_clear_error() #7
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 0, i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0)) #7
  %call12 = call i64 @ERR_peek_error_data(i8** noundef nonnull %data, i32* noundef nonnull %flags) #7
  %6 = load i8*, i8** %data, align 8, !tbaa !7
  %call13 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i8* noundef %6, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i64 0, i64 0)) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end11
  %7 = load i32, i32* %flags, align 4, !tbaa !3
  %call16 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i64 0, i64 0), i32 noundef %7, i32 noundef 3) #7
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end19

if.end19:                                         ; preds = %lor.lhs.false15
  call void @ERR_clear_error() #7
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 0, i32 noundef 0, i8* noundef null) #7
  %call20 = call i64 @ERR_peek_error_data(i8** noundef nonnull %data, i32* noundef nonnull %flags) #7
  %8 = load i8*, i8** %data, align 8, !tbaa !7
  %call21 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i8* noundef %8, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i64 0, i64 0)) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end19
  %9 = load i32, i32* %flags, align 4, !tbaa !3
  %call24 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 327, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i32 noundef %9, i32 noundef 1) #7
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false23
  call void @ERR_clear_error() #7
  br label %err

err:                                              ; preds = %if.end19, %lor.lhs.false23, %if.end11, %lor.lhs.false15, %if.end, %lor.lhs.false7, %entry, %lor.lhs.false, %if.end27
  %res.0 = phi i32 [ 1, %if.end27 ], [ 0, %lor.lhs.false23 ], [ 0, %if.end19 ], [ 0, %lor.lhs.false15 ], [ 0, %if.end11 ], [ 0, %lor.lhs.false7 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @ERR_clear_error() #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %res.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #2

declare dso_local i64 @ERR_get_error() local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local void @ERR_new() local_unnamed_addr #1

declare dso_local void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #1

declare dso_local i64 @ERR_peek_error_data(i8** noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i32 @test_ulong_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i64 @ERR_get_error_all(i8** noundef, i32* noundef, i8** noundef, i8** noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #4 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare dso_local i32 @ERR_set_mark() local_unnamed_addr #1

declare dso_local i64 @ERR_peek_error() local_unnamed_addr #1

declare dso_local i32 @ERR_pop_to_mark() local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32 noundef) local_unnamed_addr #5

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_strn_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i64 @ERR_peek_last_error() local_unnamed_addr #1

declare dso_local i32 @test_ulong_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ulong_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @ERR_clear_last_mark() local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @ERR_clear_error() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!9 = !{i32 0, i32 -2147483648}
!10 = !{!5, !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
