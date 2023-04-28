; ModuleID = 'test/sparse_array_test.c'
source_filename = "test/sparse_array_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i8* }
%struct.anon.0 = type { i64, i64, i8* }
%struct.index_cases_st = type { i64, i8*, i32 }
%struct.sparse_array_st_char = type opaque
%struct.doall_st = type { %struct.sparse_array_st_char*, i64, %struct.index_cases_st*, i32, i32 }
%struct.sparse_array_st = type opaque

@.str = private unnamed_addr constant [18 x i8] c"test_sparse_array\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"test_sparse_array_num\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"test_sparse_array_doall\00", align 1
@test_sparse_array.cases = internal unnamed_addr constant [8 x %struct.anon] [%struct.anon { i64 22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i64 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i64 290, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0) }, %struct.anon { i64 2147483647, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i64 6666666, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0) }, %struct.anon { i64 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon { i64 99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0) }], align 16
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"test/sparse_array_test.c\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"sa = ossl_sa_char_new()\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"ossl_sa_char_get(sa, 3)\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"ossl_sa_char_get(sa, 0)\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"ossl_sa_char_get(sa, UINT_MAX)\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"ossl_sa_char_set(sa, cases[i].n, cases[i].v)\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"iteration %zu\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"ossl_sa_char_get(sa, cases[j].n)\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"cases[j].v\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"iteration %zu / %zu\00", align 1
@test_sparse_array_num.cases = internal unnamed_addr constant [16 x %struct.anon.0] [%struct.anon.0 { i64 1, i64 22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon.0 { i64 2, i64 1021, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon.0 { i64 3, i64 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0) }, %struct.anon.0 { i64 2, i64 22, i8* null }, %struct.anon.0 { i64 2, i64 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0) }, %struct.anon.0 { i64 3, i64 22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0) }, %struct.anon.0 { i64 3, i64 666, i8* null }, %struct.anon.0 { i64 4, i64 666, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0) }, %struct.anon.0 { i64 3, i64 3, i8* null }, %struct.anon.0 { i64 2, i64 22, i8* null }, %struct.anon.0 { i64 1, i64 666, i8* null }, %struct.anon.0 { i64 2, i64 64000, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0) }, %struct.anon.0 { i64 1, i64 1021, i8* null }, %struct.anon.0 { i64 0, i64 64000, i8* null }, %struct.anon.0 { i64 1, i64 23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0) }, %struct.anon.0 { i64 0, i64 23, i8* null }], align 16
@.str.21 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"ossl_sa_char_num(NULL)\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"ossl_sa_char_num(sa)\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"cases[i].num\00", align 1
@test_sparse_array_doall.cases = internal constant [8 x %struct.index_cases_st] [%struct.index_cases_st { i64 22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i32 1 }, %struct.index_cases_st { i64 1021, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 0 }, %struct.index_cases_st { i64 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i32 0 }, %struct.index_cases_st { i64 2147483647, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i32 1 }, %struct.index_cases_st { i64 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 0 }, %struct.index_cases_st { i64 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i32 1 }, %struct.index_cases_st { i64 666666666, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i32 1 }, %struct.index_cases_st { i64 1234567890, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i32 0 }], align 16
@.str.28 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"failed at iteration %zu\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"while checking all elements\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"while deleting selected elements\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"while checking for deleted elements\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"Index %ju with value %s not found\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_sparse_array) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_sparse_array_num) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_sparse_array_doall) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sparse_array() #0 {
entry:
  %call = tail call fastcc %struct.sparse_array_st_char* @ossl_sa_char_new() #5
  %0 = bitcast %struct.sparse_array_st_char* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc i8* @ossl_sa_char_get(%struct.sparse_array_st_char* noundef %call, i64 noundef 3) #5
  %call3 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call2) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call fastcc i8* @ossl_sa_char_get(%struct.sparse_array_st_char* noundef %call, i64 noundef 0) #5
  %call7 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* noundef %call6) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call fastcc i8* @ossl_sa_char_get(%struct.sparse_array_st_char* noundef %call, i64 noundef 4294967295) #5
  %call11 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* noundef %call10) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %for.body

for.body:                                         ; preds = %lor.lhs.false9, %for.inc35
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc35 ], [ 1, %lor.lhs.false9 ]
  %i.061 = phi i64 [ %inc36, %for.inc35 ], [ 0, %lor.lhs.false9 ]
  %n = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @test_sparse_array.cases, i64 0, i64 %i.061, i32 0
  %1 = load i64, i64* %n, align 16, !tbaa !3
  %v = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @test_sparse_array.cases, i64 0, i64 %i.061, i32 1
  %2 = load i8*, i8** %v, align 8, !tbaa !9
  %call14 = tail call fastcc i32 @ossl_sa_char_set(%struct.sparse_array_st_char* noundef %call, i64 noundef %1, i8* noundef %2) #5
  %cmp15 = icmp ne i32 %call14, 0
  %conv = zext i1 %cmp15 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %for.body23

if.then18:                                        ; preds = %for.body
  %add = add nuw nsw i64 %i.061, 1
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i64 noundef %add) #4
  br label %err

for.body23:                                       ; preds = %for.body, %for.inc
  %j.060 = phi i64 [ %inc, %for.inc ], [ 0, %for.body ]
  %n25 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @test_sparse_array.cases, i64 0, i64 %j.060, i32 0
  %3 = load i64, i64* %n25, align 16, !tbaa !3
  %call26 = tail call fastcc i8* @ossl_sa_char_get(%struct.sparse_array_st_char* noundef %call, i64 noundef %3) #5
  %v28 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @test_sparse_array.cases, i64 0, i64 %j.060, i32 1
  %4 = load i8*, i8** %v28, align 8, !tbaa !9
  %call29 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* noundef %call26, i8* noundef %4) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %for.inc

if.then31:                                        ; preds = %for.body23
  %add32 = add nuw i64 %i.061, 1
  %add33 = add nuw i64 %j.060, 1
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i64 noundef %add32, i64 noundef %add33) #4
  br label %err

for.inc:                                          ; preds = %for.body23
  %inc = add nuw nsw i64 %j.060, 1
  %exitcond = icmp eq i64 %inc, %indvars.iv
  br i1 %exitcond, label %for.inc35, label %for.body23, !llvm.loop !10

for.inc35:                                        ; preds = %for.inc
  %inc36 = add nuw nsw i64 %i.061, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond65.not = icmp eq i64 %inc36, 8
  br i1 %exitcond65.not, label %err, label %for.body, !llvm.loop !12

err:                                              ; preds = %for.inc35, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %if.then31, %if.then18
  %res.0 = phi i32 [ 0, %if.then31 ], [ 0, %if.then18 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %for.inc35 ]
  tail call fastcc void @ossl_sa_char_free(%struct.sparse_array_st_char* noundef %call) #5
  ret i32 %res.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sparse_array_num() #0 {
entry:
  %call = tail call fastcc i64 @ossl_sa_char_num(%struct.sparse_array_st_char* noundef null) #5
  %call1 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i64 noundef %call, i64 noundef 0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.sparse_array_st_char* @ossl_sa_char_new() #5
  %0 = bitcast %struct.sparse_array_st_char* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call fastcc i64 @ossl_sa_char_num(%struct.sparse_array_st_char* noundef %call2) #5
  %call7 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i64 noundef %call6, i64 noundef 0) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %for.body

for.cond:                                         ; preds = %lor.lhs.false14
  %inc = add nuw nsw i64 %i.031, 1
  %exitcond.not = icmp eq i64 %inc, 16
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !13

for.body:                                         ; preds = %lor.lhs.false5, %for.cond
  %i.031 = phi i64 [ %inc, %for.cond ], [ 0, %lor.lhs.false5 ]
  %n = getelementptr inbounds [16 x %struct.anon.0], [16 x %struct.anon.0]* @test_sparse_array_num.cases, i64 0, i64 %i.031, i32 1
  %1 = load i64, i64* %n, align 8, !tbaa !14
  %v = getelementptr inbounds [16 x %struct.anon.0], [16 x %struct.anon.0]* @test_sparse_array_num.cases, i64 0, i64 %i.031, i32 2
  %2 = load i8*, i8** %v, align 8, !tbaa !16
  %call10 = tail call fastcc i32 @ossl_sa_char_set(%struct.sparse_array_st_char* noundef %call2, i64 noundef %1, i8* noundef %2) #5
  %cmp11 = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp11 to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %for.body
  %call15 = tail call fastcc i64 @ossl_sa_char_num(%struct.sparse_array_st_char* noundef %call2) #5
  %num = getelementptr inbounds [16 x %struct.anon.0], [16 x %struct.anon.0]* @test_sparse_array_num.cases, i64 0, i64 %i.031, i32 0
  %3 = load i64, i64* %num, align 8, !tbaa !17
  %call17 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i64 noundef %call15, i64 noundef %3) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %for.cond

err:                                              ; preds = %for.cond, %for.body, %lor.lhs.false14, %entry, %lor.lhs.false, %lor.lhs.false5
  %sa.0 = phi %struct.sparse_array_st_char* [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false14 ], [ %call2, %for.body ], [ %call2, %for.cond ]
  %res.0 = phi i32 [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %for.cond ], [ 0, %for.body ], [ 0, %lor.lhs.false14 ]
  tail call fastcc void @ossl_sa_char_free(%struct.sparse_array_st_char* noundef %sa.0) #5
  ret i32 %res.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sparse_array_doall() #0 {
entry:
  %doall_data = alloca %struct.doall_st, align 8
  %0 = bitcast %struct.doall_st* %doall_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #6
  %call = tail call fastcc %struct.sparse_array_st_char* @ossl_sa_char_new() #5
  %1 = bitcast %struct.sparse_array_st_char* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %num_cases = getelementptr inbounds %struct.doall_st, %struct.doall_st* %doall_data, i64 0, i32 1
  store i64 8, i64* %num_cases, align 8, !tbaa !18
  %cases = getelementptr inbounds %struct.doall_st, %struct.doall_st* %doall_data, i64 0, i32 2
  store %struct.index_cases_st* getelementptr inbounds ([8 x %struct.index_cases_st], [8 x %struct.index_cases_st]* @test_sparse_array_doall.cases, i64 0, i64 0), %struct.index_cases_st** %cases, align 8, !tbaa !21
  %all = getelementptr inbounds %struct.doall_st, %struct.doall_st* %doall_data, i64 0, i32 4
  store i32 1, i32* %all, align 4, !tbaa !22
  %sa2 = getelementptr inbounds %struct.doall_st, %struct.doall_st* %doall_data, i64 0, i32 0
  store %struct.sparse_array_st_char* null, %struct.sparse_array_st_char** %sa2, align 8, !tbaa !23
  %call4 = tail call fastcc i32 @ossl_sa_char_set(%struct.sparse_array_st_char* noundef %call, i64 noundef 22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #5
  %cmp5 = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp5 to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %if.end
  %i.040.lcssa = phi i64 [ 1, %if.end ], [ 2, %for.inc ], [ 3, %for.inc.1 ], [ 4, %for.inc.2 ], [ 5, %for.inc.3 ], [ 6, %for.inc.4 ], [ 7, %for.inc.5 ], [ 8, %for.inc.6 ]
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), i64 noundef %i.040.lcssa) #4
  br label %err

for.inc:                                          ; preds = %if.end
  %call4.1 = tail call fastcc i32 @ossl_sa_char_set(%struct.sparse_array_st_char* noundef %call, i64 noundef 1021, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  %cmp5.1 = icmp ne i32 %call4.1, 0
  %conv.1 = zext i1 %cmp5.1 to i32
  %call6.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv.1) #4
  %tobool7.not.1 = icmp eq i32 %call6.1, 0
  br i1 %tobool7.not.1, label %if.then8, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call4.2 = tail call fastcc i32 @ossl_sa_char_set(%struct.sparse_array_st_char* noundef %call, i64 noundef 3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #5
  %cmp5.2 = icmp ne i32 %call4.2, 0
  %conv.2 = zext i1 %cmp5.2 to i32
  %call6.2 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv.2) #4
  %tobool7.not.2 = icmp eq i32 %call6.2, 0
  br i1 %tobool7.not.2, label %if.then8, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call4.3 = tail call fastcc i32 @ossl_sa_char_set(%struct.sparse_array_st_char* noundef %call, i64 noundef 2147483647, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #5
  %cmp5.3 = icmp ne i32 %call4.3, 0
  %conv.3 = zext i1 %cmp5.3 to i32
  %call6.3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv.3) #4
  %tobool7.not.3 = icmp eq i32 %call6.3, 0
  br i1 %tobool7.not.3, label %if.then8, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %call4.4 = tail call fastcc i32 @ossl_sa_char_set(%struct.sparse_array_st_char* noundef %call, i64 noundef -1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #5
  %cmp5.4 = icmp ne i32 %call4.4, 0
  %conv.4 = zext i1 %cmp5.4 to i32
  %call6.4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv.4) #4
  %tobool7.not.4 = icmp eq i32 %call6.4, 0
  br i1 %tobool7.not.4, label %if.then8, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %call4.5 = tail call fastcc i32 @ossl_sa_char_set(%struct.sparse_array_st_char* noundef %call, i64 noundef -2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #5
  %cmp5.5 = icmp ne i32 %call4.5, 0
  %conv.5 = zext i1 %cmp5.5 to i32
  %call6.5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv.5) #4
  %tobool7.not.5 = icmp eq i32 %call6.5, 0
  br i1 %tobool7.not.5, label %if.then8, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %call4.6 = tail call fastcc i32 @ossl_sa_char_set(%struct.sparse_array_st_char* noundef %call, i64 noundef 666666666, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #5
  %cmp5.6 = icmp ne i32 %call4.6, 0
  %conv.6 = zext i1 %cmp5.6 to i32
  %call6.6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv.6) #4
  %tobool7.not.6 = icmp eq i32 %call6.6, 0
  br i1 %tobool7.not.6, label %if.then8, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %call4.7 = tail call fastcc i32 @ossl_sa_char_set(%struct.sparse_array_st_char* noundef %call, i64 noundef 1234567890, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #5
  %cmp5.7 = icmp ne i32 %call4.7, 0
  %conv.7 = zext i1 %cmp5.7 to i32
  %call6.7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv.7) #4
  %tobool7.not.7 = icmp eq i32 %call6.7, 0
  br i1 %tobool7.not.7, label %if.then8, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  call fastcc void @ossl_sa_char_doall_arg(%struct.sparse_array_st_char* noundef %call, void (i64, i8*, i8*)* noundef nonnull @leaf_check_all, i8* noundef nonnull %0) #5
  %res10 = getelementptr inbounds %struct.doall_st, %struct.doall_st* %doall_data, i64 0, i32 3
  %2 = load i32, i32* %res10, align 8, !tbaa !24
  %cmp11 = icmp eq i32 %2, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.inc.7
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0)) #4
  br label %err

if.end14:                                         ; preds = %for.inc.7
  store i32 0, i32* %all, align 4, !tbaa !22
  store %struct.sparse_array_st_char* %call, %struct.sparse_array_st_char** %sa2, align 8, !tbaa !23
  call fastcc void @ossl_sa_char_doall_arg(%struct.sparse_array_st_char* noundef %call, void (i64, i8*, i8*)* noundef nonnull @leaf_delete, i8* noundef nonnull %0) #5
  %3 = load i32, i32* %res10, align 8, !tbaa !24
  %cmp18 = icmp eq i32 %3, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0)) #4
  br label %err

if.end21:                                         ; preds = %if.end14
  call fastcc void @ossl_sa_char_doall_arg(%struct.sparse_array_st_char* noundef %call, void (i64, i8*, i8*)* noundef nonnull @leaf_check_all, i8* noundef nonnull %0) #5
  %4 = load i32, i32* %res10, align 8, !tbaa !24
  %cmp23 = icmp eq i32 %4, 0
  br i1 %cmp23, label %if.then25, label %err

if.then25:                                        ; preds = %if.end21
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0)) #4
  br label %err

err:                                              ; preds = %if.end21, %entry, %if.then25, %if.then20, %if.then13, %if.then8
  %res.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then13 ], [ 0, %if.then20 ], [ 0, %if.then25 ], [ 0, %entry ], [ 1, %if.end21 ]
  call fastcc void @ossl_sa_char_free(%struct.sparse_array_st_char* noundef %call) #5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #6
  ret i32 %res.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.sparse_array_st_char* @ossl_sa_char_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.sparse_array_st* @ossl_sa_new() #4
  %0 = bitcast %struct.sparse_array_st* %call to %struct.sparse_array_st_char*
  ret %struct.sparse_array_st_char* %0
}

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @ossl_sa_char_get(%struct.sparse_array_st_char* noundef %sa, i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.sparse_array_st_char* %sa to %struct.sparse_array_st*
  %call = tail call i8* @ossl_sa_get(%struct.sparse_array_st* noundef %0, i64 noundef %n) #4
  ret i8* %call
}

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_sa_char_set(%struct.sparse_array_st_char* noundef %sa, i64 noundef %n, i8* noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.sparse_array_st_char* %sa to %struct.sparse_array_st*
  %call = tail call i32 @ossl_sa_set(%struct.sparse_array_st* noundef %0, i64 noundef %n, i8* noundef %val) #4
  ret i32 %call
}

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_sa_char_free(%struct.sparse_array_st_char* noundef %sa) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.sparse_array_st_char* %sa to %struct.sparse_array_st*
  tail call void @ossl_sa_free(%struct.sparse_array_st* noundef %0) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.sparse_array_st* @ossl_sa_new() local_unnamed_addr #1

declare dso_local i8* @ossl_sa_get(%struct.sparse_array_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_sa_set(%struct.sparse_array_st* noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @ossl_sa_free(%struct.sparse_array_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @ossl_sa_char_num(%struct.sparse_array_st_char* noundef %sa) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.sparse_array_st_char* %sa to %struct.sparse_array_st*
  %call = tail call i64 @ossl_sa_num(%struct.sparse_array_st* noundef %0) #4
  ret i64 %call
}

declare dso_local i64 @ossl_sa_num(%struct.sparse_array_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_sa_char_doall_arg(%struct.sparse_array_st_char* noundef %sa, void (i64, i8*, i8*)* noundef %leaf, i8* noundef %arg) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.sparse_array_st_char* %sa to %struct.sparse_array_st*
  tail call void @ossl_sa_doall_arg(%struct.sparse_array_st* noundef %0, void (i64, i8*, i8*)* noundef %leaf, i8* noundef %arg) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @leaf_check_all(i64 noundef %n, i8* noundef %value, i8* nocapture noundef %arg) #0 {
entry:
  %cases1 = getelementptr inbounds i8, i8* %arg, i64 16
  %0 = bitcast i8* %cases1 to %struct.index_cases_st**
  %1 = load %struct.index_cases_st*, %struct.index_cases_st** %0, align 8, !tbaa !21
  %res = getelementptr inbounds i8, i8* %arg, i64 24
  %2 = bitcast i8* %res to i32*
  store i32 0, i32* %2, align 8, !tbaa !24
  %num_cases = getelementptr inbounds i8, i8* %arg, i64 8
  %3 = bitcast i8* %num_cases to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !18
  %cmp27.not = icmp eq i64 %4, 0
  br i1 %cmp27.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %all = getelementptr inbounds i8, i8* %arg, i64 28
  %5 = bitcast i8* %all to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !22
  %tobool.not = icmp eq i32 %6, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.028 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %del = getelementptr inbounds %struct.index_cases_st, %struct.index_cases_st* %1, i64 %i.028, i32 2
  %7 = load i32, i32* %del, align 8, !tbaa !25
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %n4 = getelementptr inbounds %struct.index_cases_st, %struct.index_cases_st* %1, i64 %i.028, i32 0
  %8 = load i64, i64* %n4, align 8, !tbaa !27
  %cmp5 = icmp eq i64 %8, %n
  br i1 %cmp5, label %land.lhs.true6, label %for.inc

land.lhs.true6:                                   ; preds = %land.lhs.true
  %v = getelementptr inbounds %struct.index_cases_st, %struct.index_cases_st* %1, i64 %i.028, i32 1
  %9 = load i8*, i8** %v, align 8, !tbaa !28
  %call = tail call i32 @strcmp(i8* noundef %value, i8* noundef %9) #7
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true6
  store i32 1, i32* %2, align 8, !tbaa !24
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false, %land.lhs.true, %land.lhs.true6
  %inc = add nuw i64 %i.028, 1
  %exitcond.not = icmp eq i64 %inc, %4
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !29

for.end:                                          ; preds = %for.inc, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i64 noundef %n, i8* noundef %value) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @leaf_delete(i64 noundef %n, i8* noundef %value, i8* nocapture noundef %arg) #0 {
entry:
  %cases1 = getelementptr inbounds i8, i8* %arg, i64 16
  %0 = bitcast i8* %cases1 to %struct.index_cases_st**
  %1 = load %struct.index_cases_st*, %struct.index_cases_st** %0, align 8, !tbaa !21
  %res = getelementptr inbounds i8, i8* %arg, i64 24
  %2 = bitcast i8* %res to i32*
  store i32 0, i32* %2, align 8, !tbaa !24
  %num_cases = getelementptr inbounds i8, i8* %arg, i64 8
  %3 = bitcast i8* %num_cases to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !18
  %cmp24.not = icmp eq i64 %4, 0
  br i1 %cmp24.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.025 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %n2 = getelementptr inbounds %struct.index_cases_st, %struct.index_cases_st* %1, i64 %i.025, i32 0
  %5 = load i64, i64* %n2, align 8, !tbaa !27
  %cmp3 = icmp eq i64 %5, %n
  br i1 %cmp3, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %v = getelementptr inbounds %struct.index_cases_st, %struct.index_cases_st* %1, i64 %i.025, i32 1
  %6 = load i8*, i8** %v, align 8, !tbaa !28
  %call = tail call i32 @strcmp(i8* noundef %value, i8* noundef %6) #7
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %2, align 8, !tbaa !24
  %sa = bitcast i8* %arg to %struct.sparse_array_st_char**
  %7 = load %struct.sparse_array_st_char*, %struct.sparse_array_st_char** %sa, align 8, !tbaa !23
  %call7 = tail call fastcc i32 @ossl_sa_char_set(%struct.sparse_array_st_char* noundef %7, i64 noundef %n, i8* noundef null) #5
  br label %cleanup

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %inc = add nuw i64 %i.025, 1
  %exitcond.not = icmp eq i64 %inc, %4
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !30

for.end:                                          ; preds = %for.inc, %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i64 noundef %n, i8* noundef %value) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

declare dso_local void @ossl_sa_doall_arg(%struct.sparse_array_st* noundef, void (i64, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0, !8, i64 8}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!4, !8, i64 8}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = !{!15, !5, i64 8}
!15 = !{!"", !5, i64 0, !5, i64 8, !8, i64 16}
!16 = !{!15, !8, i64 16}
!17 = !{!15, !5, i64 0}
!18 = !{!19, !5, i64 8}
!19 = !{!"doall_st", !8, i64 0, !5, i64 8, !8, i64 16, !20, i64 24, !20, i64 28}
!20 = !{!"int", !6, i64 0}
!21 = !{!19, !8, i64 16}
!22 = !{!19, !20, i64 28}
!23 = !{!19, !8, i64 0}
!24 = !{!19, !20, i64 24}
!25 = !{!26, !20, i64 16}
!26 = !{!"index_cases_st", !5, i64 0, !8, i64 8, !20, i64 16}
!27 = !{!26, !5, i64 0}
!28 = !{!26, !8, i64 8}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
