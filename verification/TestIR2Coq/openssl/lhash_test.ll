; ModuleID = 'test/lhash_test.c'
source_filename = "test/lhash_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.bio_st = type opaque
%struct.lhash_st_int = type { %union.lh_int_dummy }
%union.lh_int_dummy = type { i8* }
%struct.lhash_st = type opaque

@.str = private unnamed_addr constant [15 x i8] c"test_int_lhash\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"test_stress\00", align 1
@test_int_lhash.dels = internal global [6 x %struct.anon] [%struct.anon { i32 65537, i32 0 }, %struct.anon { i32 173, i32 0 }, %struct.anon { i32 999, i32 1 }, %struct.anon { i32 37, i32 0 }, %struct.anon { i32 1, i32 0 }, %struct.anon { i32 34, i32 1 }], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"test/lhash_test.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"lh_int_insert(h, int_tests + i)\00", align 1
@int_tests = internal global [21 x i32] [i32 65537, i32 13, i32 1, i32 3, i32 -5, i32 6, i32 7, i32 4, i32 -10, i32 -12, i32 -14, i32 22, i32 9, i32 -17, i32 16, i32 17, i32 -23, i32 35, i32 37, i32 173, i32 11], align 16
@.str.5 = private unnamed_addr constant [14 x i8] c"int insert %d\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"lh_int_num_items(h)\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"n_int_tests\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"*lh_int_retrieve(h, int_tests + i)\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"int_tests[i]\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"lhash int retrieve value %d\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"lh_int_retrieve(h, int_tests + i)\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"int_tests + i\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"lhash int retrieve address %d\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"lh_int_retrieve(h, &j)\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"int_tests + 2\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"p = lh_int_insert(h, &j)\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"int_tests + 1\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"lh_int_retrieve(h, int_tests + 1)\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"&j\00", align 1
@int_found = internal global [21 x i16] zeroinitializer, align 16
@int_not_found = internal unnamed_addr global i16 0, align 2
@.str.21 = private unnamed_addr constant [14 x i8] c"int_not_found\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"lhash int doall encountered a not found condition\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"int_found[i]\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"lhash int doall %d\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"lhash int doall arg encountered a not found condition\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"lhash int doall arg %d\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"b ^ dels[i].null\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"lhash int delete %d\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"lh_int_error(h)\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"lhash stress out of memory %d\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"hash full statistics:\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.35 = private unnamed_addr constant [22 x i8] c"hash full node usage:\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"p = lh_int_delete(h, &j)\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"lhash stress delete %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"*p\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"lhash stress bad value %d\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"hash empty statistics:\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"hash empty node usage:\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_int_lhash) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_stress) #7
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_int_lhash() #0 {
entry:
  %j = alloca i32, align 4
  %call = tail call fastcc %struct.lhash_st_int* @lh_int_new(i64 (i32*)* noundef nonnull @int_hash) #8
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast %struct.lhash_st_int* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef %1) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %add.ptr = getelementptr inbounds [21 x i32], [21 x i32]* @int_tests, i64 0, i64 %indvars.iv
  %call2 = tail call fastcc i32* @lh_int_insert(%struct.lhash_st_int* noundef %call, i32* noundef nonnull %add.ptr) #8
  %2 = bitcast i32* %call2 to i8*
  %call3 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* noundef %2) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  %3 = trunc i64 %indvars.iv to i32
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 noundef %3) #7
  br label %end

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 21
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !3

for.end:                                          ; preds = %for.inc
  %call7 = tail call fastcc i64 @lh_int_num_items(%struct.lhash_st_int* noundef %call) #8
  %conv = trunc i64 %call7 to i32
  %call8 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv, i32 noundef 21) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end, label %for.body15

for.body15:                                       ; preds = %for.end, %for.inc23
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %for.inc23 ], [ 0, %for.end ]
  %add.ptr17 = getelementptr inbounds [21 x i32], [21 x i32]* @int_tests, i64 0, i64 %indvars.iv196
  %call18 = tail call fastcc i32* @lh_int_retrieve(%struct.lhash_st_int* noundef %call, i32* noundef nonnull %add.ptr17) #8
  %4 = load i32, i32* %call18, align 4, !tbaa !5
  %5 = load i32, i32* %add.ptr17, align 4, !tbaa !5
  %call19 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 noundef %4, i32 noundef %5) #7
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %for.inc23

if.then21:                                        ; preds = %for.body15
  %6 = trunc i64 %indvars.iv196 to i32
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 noundef %6) #7
  br label %end

for.inc23:                                        ; preds = %for.body15
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  %exitcond199.not = icmp eq i64 %indvars.iv.next197, 21
  br i1 %exitcond199.not, label %for.body29, label %for.body15, !llvm.loop !9

for.body29:                                       ; preds = %for.inc23, %for.inc39
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %for.inc39 ], [ 0, %for.inc23 ]
  %add.ptr31 = getelementptr inbounds [21 x i32], [21 x i32]* @int_tests, i64 0, i64 %indvars.iv200
  %call32 = tail call fastcc i32* @lh_int_retrieve(%struct.lhash_st_int* noundef %call, i32* noundef nonnull %add.ptr31) #8
  %7 = bitcast i32* %call32 to i8*
  %8 = bitcast i32* %add.ptr31 to i8*
  %call35 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %7, i8* noundef nonnull %8) #7
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %for.inc39

if.then37:                                        ; preds = %for.body29
  %9 = trunc i64 %indvars.iv200 to i32
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 noundef %9) #7
  br label %end

for.inc39:                                        ; preds = %for.body29
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1
  %exitcond203.not = icmp eq i64 %indvars.iv.next201, 21
  br i1 %exitcond203.not, label %for.end41, label %for.body29, !llvm.loop !10

for.end41:                                        ; preds = %for.inc39
  store i32 1, i32* %j, align 4, !tbaa !5
  %call42 = call fastcc i32* @lh_int_retrieve(%struct.lhash_st_int* noundef %call, i32* noundef nonnull %j) #8
  %10 = bitcast i32* %call42 to i8*
  %call43 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* noundef %10, i8* noundef bitcast (i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 2) to i8*)) #7
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %end, label %if.end46

if.end46:                                         ; preds = %for.end41
  store i32 13, i32* %j, align 4, !tbaa !5
  %call47 = call fastcc i32* @lh_int_insert(%struct.lhash_st_int* noundef %call, i32* noundef nonnull %j) #8
  %11 = bitcast i32* %call47 to i8*
  %call48 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* noundef %11) #7
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %end, label %if.end51

if.end51:                                         ; preds = %if.end46
  %call52 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef %11, i8* noundef bitcast (i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 1) to i8*)) #7
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %end, label %if.end55

if.end55:                                         ; preds = %if.end51
  %call56 = call fastcc i32* @lh_int_retrieve(%struct.lhash_st_int* noundef %call, i32* noundef getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 1)) #8
  %12 = bitcast i32* %call56 to i8*
  %call57 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %12, i8* noundef nonnull %0) #7
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %end, label %if.end60

if.end60:                                         ; preds = %if.end55
  %call61 = call i8* @memset(i8* noundef bitcast ([21 x i16]* @int_found to i8*), i32 noundef 0, i64 noundef 42) #7
  store i16 0, i16* @int_not_found, align 2, !tbaa !11
  call fastcc void @lh_int_doall(%struct.lhash_st_int* noundef %call) #8
  %13 = load i16, i16* @int_not_found, align 2, !tbaa !11
  %conv62 = sext i16 %13 to i32
  %call63 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv62, i32 noundef 0) #7
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %for.body70

if.then65:                                        ; preds = %if.end60
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i64 0, i64 0)) #7
  br label %end

for.body70:                                       ; preds = %if.end60, %for.inc78
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %for.inc78 ], [ 0, %if.end60 ]
  %arrayidx72 = getelementptr inbounds [21 x i16], [21 x i16]* @int_found, i64 0, i64 %indvars.iv204
  %14 = load i16, i16* %arrayidx72, align 2, !tbaa !11
  %conv73 = sext i16 %14 to i32
  %call74 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv73, i32 noundef 1) #7
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %for.inc78

if.then76:                                        ; preds = %for.body70
  %15 = trunc i64 %indvars.iv204 to i32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 noundef %15) #7
  br label %end

for.inc78:                                        ; preds = %for.body70
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1
  %exitcond207.not = icmp eq i64 %indvars.iv.next205, 21
  br i1 %exitcond207.not, label %for.end80, label %for.body70, !llvm.loop !13

for.end80:                                        ; preds = %for.inc78
  %call81 = call i8* @memset(i8* noundef bitcast ([21 x i16]* @int_found to i8*), i32 noundef 0, i64 noundef 42) #7
  store i16 0, i16* @int_not_found, align 2, !tbaa !11
  call fastcc void @lh_int_doall_short(%struct.lhash_st_int* noundef %call) #8
  %16 = load i16, i16* @int_not_found, align 2, !tbaa !11
  %conv82 = sext i16 %16 to i32
  %call83 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv82, i32 noundef 0) #7
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then85, label %for.body90

if.then85:                                        ; preds = %for.end80
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i64 0, i64 0)) #7
  br label %end

for.body90:                                       ; preds = %for.end80, %for.inc98
  %indvars.iv208 = phi i64 [ %indvars.iv.next209, %for.inc98 ], [ 0, %for.end80 ]
  %arrayidx92 = getelementptr inbounds [21 x i16], [21 x i16]* @int_found, i64 0, i64 %indvars.iv208
  %17 = load i16, i16* %arrayidx92, align 2, !tbaa !11
  %conv93 = sext i16 %17 to i32
  %call94 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv93, i32 noundef 1) #7
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then96, label %for.inc98

if.then96:                                        ; preds = %for.body90
  %18 = trunc i64 %indvars.iv208 to i32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 noundef %18) #7
  br label %end

for.inc98:                                        ; preds = %for.body90
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1
  %exitcond211.not = icmp eq i64 %indvars.iv.next209, 21
  br i1 %exitcond211.not, label %for.body104.preheader, label %for.body90, !llvm.loop !14

for.body104.preheader:                            ; preds = %for.inc98
  %call107 = call fastcc i32* @lh_int_delete(%struct.lhash_st_int* noundef %call, i32* noundef nonnull getelementptr inbounds ([6 x %struct.anon], [6 x %struct.anon]* @test_int_lhash.dels, i64 0, i64 0, i32 0)) #8
  %cmp108 = icmp eq i32* %call107, null
  %conv109 = zext i1 %cmp108 to i32
  %19 = load i32, i32* getelementptr inbounds ([6 x %struct.anon], [6 x %struct.anon]* @test_int_lhash.dels, i64 0, i64 0, i32 1), align 4, !tbaa !15
  %xor = xor i32 %19, %conv109
  %call112 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %xor, i32 noundef 0) #7
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %cleanup, label %for.inc116

cleanup:                                          ; preds = %for.inc116.4, %for.inc116.3, %for.inc116.2, %for.inc116.1, %for.inc116, %for.body104.preheader
  %i.5188.lcssa.wide = phi i32 [ 0, %for.body104.preheader ], [ 1, %for.inc116 ], [ 2, %for.inc116.1 ], [ 3, %for.inc116.2 ], [ 4, %for.inc116.3 ], [ 5, %for.inc116.4 ]
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i32 noundef %i.5188.lcssa.wide) #7
  br label %end

for.inc116:                                       ; preds = %for.body104.preheader
  %call107.1 = call fastcc i32* @lh_int_delete(%struct.lhash_st_int* noundef %call, i32* noundef nonnull getelementptr inbounds ([6 x %struct.anon], [6 x %struct.anon]* @test_int_lhash.dels, i64 0, i64 1, i32 0)) #8
  %cmp108.1 = icmp eq i32* %call107.1, null
  %conv109.1 = zext i1 %cmp108.1 to i32
  %20 = load i32, i32* getelementptr inbounds ([6 x %struct.anon], [6 x %struct.anon]* @test_int_lhash.dels, i64 0, i64 1, i32 1), align 4, !tbaa !15
  %xor.1 = xor i32 %20, %conv109.1
  %call112.1 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %xor.1, i32 noundef 0) #7
  %tobool113.not.1 = icmp eq i32 %call112.1, 0
  br i1 %tobool113.not.1, label %cleanup, label %for.inc116.1

for.inc116.1:                                     ; preds = %for.inc116
  %call107.2 = call fastcc i32* @lh_int_delete(%struct.lhash_st_int* noundef %call, i32* noundef nonnull getelementptr inbounds ([6 x %struct.anon], [6 x %struct.anon]* @test_int_lhash.dels, i64 0, i64 2, i32 0)) #8
  %cmp108.2 = icmp eq i32* %call107.2, null
  %conv109.2 = zext i1 %cmp108.2 to i32
  %21 = load i32, i32* getelementptr inbounds ([6 x %struct.anon], [6 x %struct.anon]* @test_int_lhash.dels, i64 0, i64 2, i32 1), align 4, !tbaa !15
  %xor.2 = xor i32 %21, %conv109.2
  %call112.2 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %xor.2, i32 noundef 0) #7
  %tobool113.not.2 = icmp eq i32 %call112.2, 0
  br i1 %tobool113.not.2, label %cleanup, label %for.inc116.2

for.inc116.2:                                     ; preds = %for.inc116.1
  %call107.3 = call fastcc i32* @lh_int_delete(%struct.lhash_st_int* noundef %call, i32* noundef nonnull getelementptr inbounds ([6 x %struct.anon], [6 x %struct.anon]* @test_int_lhash.dels, i64 0, i64 3, i32 0)) #8
  %cmp108.3 = icmp eq i32* %call107.3, null
  %conv109.3 = zext i1 %cmp108.3 to i32
  %22 = load i32, i32* getelementptr inbounds ([6 x %struct.anon], [6 x %struct.anon]* @test_int_lhash.dels, i64 0, i64 3, i32 1), align 4, !tbaa !15
  %xor.3 = xor i32 %22, %conv109.3
  %call112.3 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %xor.3, i32 noundef 0) #7
  %tobool113.not.3 = icmp eq i32 %call112.3, 0
  br i1 %tobool113.not.3, label %cleanup, label %for.inc116.3

for.inc116.3:                                     ; preds = %for.inc116.2
  %call107.4 = call fastcc i32* @lh_int_delete(%struct.lhash_st_int* noundef %call, i32* noundef nonnull getelementptr inbounds ([6 x %struct.anon], [6 x %struct.anon]* @test_int_lhash.dels, i64 0, i64 4, i32 0)) #8
  %cmp108.4 = icmp eq i32* %call107.4, null
  %conv109.4 = zext i1 %cmp108.4 to i32
  %23 = load i32, i32* getelementptr inbounds ([6 x %struct.anon], [6 x %struct.anon]* @test_int_lhash.dels, i64 0, i64 4, i32 1), align 4, !tbaa !15
  %xor.4 = xor i32 %23, %conv109.4
  %call112.4 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %xor.4, i32 noundef 0) #7
  %tobool113.not.4 = icmp eq i32 %call112.4, 0
  br i1 %tobool113.not.4, label %cleanup, label %for.inc116.4

for.inc116.4:                                     ; preds = %for.inc116.3
  %call107.5 = call fastcc i32* @lh_int_delete(%struct.lhash_st_int* noundef %call, i32* noundef nonnull getelementptr inbounds ([6 x %struct.anon], [6 x %struct.anon]* @test_int_lhash.dels, i64 0, i64 5, i32 0)) #8
  %cmp108.5 = icmp eq i32* %call107.5, null
  %conv109.5 = zext i1 %cmp108.5 to i32
  %24 = load i32, i32* getelementptr inbounds ([6 x %struct.anon], [6 x %struct.anon]* @test_int_lhash.dels, i64 0, i64 5, i32 1), align 4, !tbaa !15
  %xor.5 = xor i32 %24, %conv109.5
  %call112.5 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %xor.5, i32 noundef 0) #7
  %tobool113.not.5 = icmp eq i32 %call112.5, 0
  br i1 %tobool113.not.5, label %cleanup, label %for.inc116.5

for.inc116.5:                                     ; preds = %for.inc116.4
  %call119 = call fastcc i32 @lh_int_error(%struct.lhash_st_int* noundef %call) #8
  %call120 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %call119, i32 noundef 0) #7
  %tobool121.not = icmp ne i32 %call120, 0
  %spec.select = zext i1 %tobool121.not to i32
  br label %end

end:                                              ; preds = %cleanup, %for.inc116.5, %if.end55, %if.end51, %if.end46, %for.end41, %for.end, %entry, %if.then96, %if.then85, %if.then76, %if.then65, %if.then37, %if.then21, %if.then5
  %testresult.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then21 ], [ 0, %if.then37 ], [ 0, %if.then76 ], [ 0, %if.then96 ], [ 0, %cleanup ], [ 0, %if.then85 ], [ 0, %if.then65 ], [ 0, %if.end55 ], [ 0, %if.end51 ], [ 0, %if.end46 ], [ 0, %for.end41 ], [ 0, %for.end ], [ 0, %entry ], [ %spec.select, %for.inc116.5 ]
  call fastcc void @lh_int_free(%struct.lhash_st_int* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_stress() #0 {
entry:
  %j = alloca i32, align 4
  %call = tail call fastcc %struct.lhash_st_int* @lh_int_new(i64 (i32*)* noundef nonnull @stress_hash) #8
  %0 = bitcast %struct.lhash_st_int* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef %0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %for.body

for.body:                                         ; preds = %entry, %if.end6
  %i.070 = phi i32 [ %inc, %if.end6 ], [ 0, %entry ]
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef 4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 200) #7
  %1 = bitcast i8* %call2 to i32*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call2) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), i32 noundef %i.070) #7
  br label %end

if.end6:                                          ; preds = %for.body
  %mul = mul nuw nsw i32 %i.070, 3
  %add = add nuw nsw i32 %mul, 1
  store i32 %add, i32* %1, align 4, !tbaa !5
  %call7 = tail call fastcc i32* @lh_int_insert(%struct.lhash_st_int* noundef %call, i32* noundef nonnull %1) #8
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 2500000
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !17

for.end:                                          ; preds = %if.end6
  %call8 = tail call fastcc i64 @lh_int_num_items(%struct.lhash_st_int* noundef %call) #8
  %conv = trunc i64 %call8 to i32
  %call9 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv, i32 noundef 2500000) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %end, label %if.end12

if.end12:                                         ; preds = %for.end
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #7
  %2 = bitcast %struct.lhash_st_int* %call to %struct.lhash_st*
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !18
  tail call void @OPENSSL_LH_stats_bio(%struct.lhash_st* noundef %2, %struct.bio_st* noundef %3) #7
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0)) #7
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !18
  tail call void @OPENSSL_LH_node_usage_stats_bio(%struct.lhash_st* noundef %2, %struct.bio_st* noundef %4) #7
  %5 = bitcast i32* %j to i8*
  br label %for.body16

for.body16:                                       ; preds = %if.end12, %for.inc30
  %i.171 = phi i32 [ 0, %if.end12 ], [ %inc31, %for.inc30 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %mul17 = mul nuw nsw i32 %i.171, 7
  %add18 = add nuw nsw i32 %mul17, 4
  %rem = urem i32 %add18, 2500000
  %mul19 = mul nuw nsw i32 %rem, 3
  %add20 = add nuw nsw i32 %mul19, 1
  store i32 %add20, i32* %j, align 4, !tbaa !5
  %call21 = call fastcc i32* @lh_int_delete(%struct.lhash_st_int* noundef %call, i32* noundef nonnull %j) #8
  %6 = bitcast i32* %call21 to i8*
  %call22 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0), i8* noundef %6) #7
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body16
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i32 noundef %i.171) #7
  br label %cleanup.thread

if.end25:                                         ; preds = %for.body16
  %7 = load i32, i32* %call21, align 4, !tbaa !5
  %8 = load i32, i32* %j, align 4, !tbaa !5
  %call26 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i32 noundef %7, i32 noundef %8) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %for.inc30

if.then28:                                        ; preds = %if.end25
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i64 0, i64 0), i32 noundef %i.171) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then28, %if.then24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  br label %end

for.inc30:                                        ; preds = %if.end25
  call void @CRYPTO_free(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 230) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %inc31 = add nuw nsw i32 %i.171, 1
  %exitcond75.not = icmp eq i32 %inc31, 2500000
  br i1 %exitcond75.not, label %for.end32, label %for.body16, !llvm.loop !20

for.end32:                                        ; preds = %for.inc30
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0)) #7
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !18
  call void @OPENSSL_LH_stats_bio(%struct.lhash_st* noundef %2, %struct.bio_st* noundef %9) #7
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0)) #7
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !18
  call void @OPENSSL_LH_node_usage_stats_bio(%struct.lhash_st* noundef %2, %struct.bio_st* noundef %10) #7
  br label %end

end:                                              ; preds = %cleanup.thread, %for.end, %entry, %for.end32, %if.then5
  %testresult.0 = phi i32 [ 0, %if.then5 ], [ 1, %for.end32 ], [ 0, %for.end ], [ 0, %entry ], [ 0, %cleanup.thread ]
  call fastcc void @lh_int_free(%struct.lhash_st_int* noundef %call) #8
  ret i32 %testresult.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lhash_st_int* @lh_int_new(i64 (i32*)* noundef %hfn) unnamed_addr #0 {
entry:
  %0 = bitcast i64 (i32*)* %hfn to i64 (i8*)*
  %call = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef %0, i32 (i8*, i8*)* noundef bitcast (i32 (i32*, i32*)* @int_cmp to i32 (i8*, i8*)*)) #7
  %1 = bitcast %struct.lhash_st* %call to %struct.lhash_st_int*
  ret %struct.lhash_st_int* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i64 @int_hash(i32* nocapture noundef readonly %p) #3 {
entry:
  %0 = load i32, i32* %p, align 4, !tbaa !5
  %and = and i32 %0, 3
  %1 = zext i32 %and to i64
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @int_cmp(i32* nocapture noundef readonly %p, i32* nocapture noundef readonly %q) #3 {
entry:
  %0 = load i32, i32* %p, align 4, !tbaa !5
  %1 = load i32, i32* %q, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32* @lh_int_insert(%struct.lhash_st_int* noundef %lh, i32* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_int* %lh to %struct.lhash_st*
  %1 = bitcast i32* %d to i8*
  %call = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %0, i8* noundef %1) #7
  %2 = bitcast i8* %call to i32*
  ret i32* %2
}

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @lh_int_num_items(%struct.lhash_st_int* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_int* %lh to %struct.lhash_st*
  %call = tail call i64 @OPENSSL_LH_num_items(%struct.lhash_st* noundef %0) #7
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32* @lh_int_retrieve(%struct.lhash_st_int* noundef %lh, i32* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_int* %lh to %struct.lhash_st*
  %1 = bitcast i32* %d to i8*
  %call = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %0, i8* noundef %1) #7
  %2 = bitcast i8* %call to i32*
  ret i32* %2
}

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_int_doall(%struct.lhash_st_int* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_int* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_doall(%struct.lhash_st* noundef %0, void (i8*)* noundef bitcast (void (i32*)* @int_doall to void (i8*)*)) #7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @int_doall(i32* nocapture noundef readonly %v) #5 {
entry:
  %0 = load i32, i32* %v, align 4, !tbaa !5
  %call = tail call fastcc i32 @int_find(i32 noundef %0) #8
  %cmp = icmp slt i32 %call, 0
  %idxprom4 = zext i32 %call to i64
  %arrayidx = getelementptr inbounds [21 x i16], [21 x i16]* @int_found, i64 0, i64 %idxprom4
  %arrayidx.sink5 = select i1 %cmp, i16* @int_not_found, i16* %arrayidx
  %1 = load i16, i16* %arrayidx.sink5, align 2, !tbaa !11
  %inc1 = add i16 %1, 1
  store i16 %inc1, i16* %arrayidx.sink5, align 2, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_int_doall_short(%struct.lhash_st_int* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_int* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef %0, void (i8*, i8*)* noundef bitcast (void (i32*, i16*)* @int_doall_arg to void (i8*, i8*)*), i8* noundef bitcast ([21 x i16]* @int_found to i8*)) #7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @int_doall_arg(i32* nocapture noundef readonly %p, i16* nocapture noundef %f) #5 {
entry:
  %0 = load i32, i32* %p, align 4, !tbaa !5
  %call = tail call fastcc i32 @int_find(i32 noundef %0) #8
  %cmp = icmp slt i32 %call, 0
  %idxprom4 = zext i32 %call to i64
  %arrayidx = getelementptr inbounds i16, i16* %f, i64 %idxprom4
  %arrayidx.sink5 = select i1 %cmp, i16* @int_not_found, i16* %arrayidx
  %1 = load i16, i16* %arrayidx.sink5, align 2, !tbaa !11
  %inc1 = add i16 %1, 1
  store i16 %inc1, i16* %arrayidx.sink5, align 2, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32* @lh_int_delete(%struct.lhash_st_int* noundef %lh, i32* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_int* %lh to %struct.lhash_st*
  %1 = bitcast i32* %d to i8*
  %call = tail call i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef %0, i8* noundef %1) #7
  %2 = bitcast i8* %call to i32*
  ret i32* %2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @lh_int_error(%struct.lhash_st_int* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_int* %lh to %struct.lhash_st*
  %call = tail call i32 @OPENSSL_LH_error(%struct.lhash_st* noundef %0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_int_free(%struct.lhash_st_int* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_int* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %0) #7
  ret void
}

declare dso_local %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i64 @OPENSSL_LH_num_items(%struct.lhash_st* noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_LH_doall(%struct.lhash_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @int_find(i32 noundef %n) unnamed_addr #6 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 0), align 16, !tbaa !5
  %cmp1 = icmp eq i32 %0, %n
  br i1 %cmp1, label %cleanup, label %for.inc

for.inc:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 1), align 4, !tbaa !5
  %cmp1.1 = icmp eq i32 %1, %n
  br i1 %cmp1.1, label %cleanup, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %2 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 2), align 8, !tbaa !5
  %cmp1.2 = icmp eq i32 %2, %n
  br i1 %cmp1.2, label %cleanup, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %3 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 3), align 4, !tbaa !5
  %cmp1.3 = icmp eq i32 %3, %n
  br i1 %cmp1.3, label %cleanup, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %4 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 4), align 16, !tbaa !5
  %cmp1.4 = icmp eq i32 %4, %n
  br i1 %cmp1.4, label %cleanup, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %5 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 5), align 4, !tbaa !5
  %cmp1.5 = icmp eq i32 %5, %n
  br i1 %cmp1.5, label %cleanup, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %6 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 6), align 8, !tbaa !5
  %cmp1.6 = icmp eq i32 %6, %n
  br i1 %cmp1.6, label %cleanup, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %7 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 7), align 4, !tbaa !5
  %cmp1.7 = icmp eq i32 %7, %n
  br i1 %cmp1.7, label %cleanup, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %8 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 8), align 16, !tbaa !5
  %cmp1.8 = icmp eq i32 %8, %n
  br i1 %cmp1.8, label %cleanup, label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %9 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 9), align 4, !tbaa !5
  %cmp1.9 = icmp eq i32 %9, %n
  br i1 %cmp1.9, label %cleanup, label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  %10 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 10), align 8, !tbaa !5
  %cmp1.10 = icmp eq i32 %10, %n
  br i1 %cmp1.10, label %cleanup, label %for.inc.10

for.inc.10:                                       ; preds = %for.inc.9
  %11 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 11), align 4, !tbaa !5
  %cmp1.11 = icmp eq i32 %11, %n
  br i1 %cmp1.11, label %cleanup, label %for.inc.11

for.inc.11:                                       ; preds = %for.inc.10
  %12 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 12), align 16, !tbaa !5
  %cmp1.12 = icmp eq i32 %12, %n
  br i1 %cmp1.12, label %cleanup, label %for.inc.12

for.inc.12:                                       ; preds = %for.inc.11
  %13 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 13), align 4, !tbaa !5
  %cmp1.13 = icmp eq i32 %13, %n
  br i1 %cmp1.13, label %cleanup, label %for.inc.13

for.inc.13:                                       ; preds = %for.inc.12
  %14 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 14), align 8, !tbaa !5
  %cmp1.14 = icmp eq i32 %14, %n
  br i1 %cmp1.14, label %cleanup, label %for.inc.14

for.inc.14:                                       ; preds = %for.inc.13
  %15 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 15), align 4, !tbaa !5
  %cmp1.15 = icmp eq i32 %15, %n
  br i1 %cmp1.15, label %cleanup, label %for.inc.15

for.inc.15:                                       ; preds = %for.inc.14
  %16 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 16), align 16, !tbaa !5
  %cmp1.16 = icmp eq i32 %16, %n
  br i1 %cmp1.16, label %cleanup, label %for.inc.16

for.inc.16:                                       ; preds = %for.inc.15
  %17 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 17), align 4, !tbaa !5
  %cmp1.17 = icmp eq i32 %17, %n
  br i1 %cmp1.17, label %cleanup, label %for.inc.17

for.inc.17:                                       ; preds = %for.inc.16
  %18 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 18), align 8, !tbaa !5
  %cmp1.18 = icmp eq i32 %18, %n
  br i1 %cmp1.18, label %cleanup, label %for.inc.18

for.inc.18:                                       ; preds = %for.inc.17
  %19 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 19), align 4, !tbaa !5
  %cmp1.19 = icmp eq i32 %19, %n
  br i1 %cmp1.19, label %cleanup, label %for.inc.19

for.inc.19:                                       ; preds = %for.inc.18
  %20 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @int_tests, i64 0, i64 20), align 16, !tbaa !5
  %cmp1.20 = icmp eq i32 %20, %n
  %spec.select = select i1 %cmp1.20, i32 20, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %for.inc.19, %for.inc.18, %for.inc.17, %for.inc.16, %for.inc.15, %for.inc.14, %for.inc.13, %for.inc.12, %for.inc.11, %for.inc.10, %for.inc.9, %for.inc.8, %for.inc.7, %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ], [ 7, %for.inc.6 ], [ 8, %for.inc.7 ], [ 9, %for.inc.8 ], [ 10, %for.inc.9 ], [ 11, %for.inc.10 ], [ 12, %for.inc.11 ], [ 13, %for.inc.12 ], [ 14, %for.inc.13 ], [ 15, %for.inc.14 ], [ 16, %for.inc.15 ], [ 17, %for.inc.16 ], [ 18, %for.inc.17 ], [ 19, %for.inc.18 ], [ %spec.select, %for.inc.19 ]
  ret i32 %retval.0
}

declare dso_local void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_LH_error(%struct.lhash_st* noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i64 @stress_hash(i32* nocapture noundef readonly %p) #3 {
entry:
  %0 = load i32, i32* %p, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  ret i64 %conv
}

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_LH_stats_bio(%struct.lhash_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @OPENSSL_LH_node_usage_stats_bio(%struct.lhash_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !7, i64 0}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = !{!16, !6, i64 4}
!16 = !{!"", !6, i64 0, !6, i64 4}
!17 = distinct !{!17, !4}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = distinct !{!20, !4}
