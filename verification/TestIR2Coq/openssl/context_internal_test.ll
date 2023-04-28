; ModuleID = 'test/context_internal_test.c'
source_filename = "test/context_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [17 x i8] c"test_app_context\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"test_def_context\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"test_set0_default\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"test/context_internal_test.c\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"ctx = OSSL_LIB_CTX_new()\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"data = ossl_lib_ctx_get_data(ctx, 0, &foo_method)\00", align 1
@foo_method = internal constant %struct.ossl_lib_ctx_method { i32 0, i8* (%struct.ossl_lib_ctx_st*)* @foo_new, void (i8*)* @foo_free }, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"data->i\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"42\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"OSSL_LIB_CTX_set0_default(NULL)\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"data = ossl_lib_ctx_get_data(local, 0, &foo_method)\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"43\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"data = ossl_lib_ctx_get_data(NULL, 0, &foo_method)\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"prev = OSSL_LIB_CTX_set0_default(local)\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"OSSL_LIB_CTX_get0_global_default()\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"prev = OSSL_LIB_CTX_set0_default(global)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_app_context) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_def_context) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_set0_default) #2
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_app_context() #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #2
  %0 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call2 = tail call fastcc i32 @test_context(%struct.ossl_lib_ctx_st* noundef %call) #3
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #2
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_def_context() #0 {
entry:
  %call = tail call fastcc i32 @test_context(%struct.ossl_lib_ctx_st* noundef null) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_set0_default() #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_get0_global_default() #2
  %call1 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #2
  %0 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = bitcast %struct.ossl_lib_ctx_st* %call1 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef null) #2
  %2 = bitcast %struct.ossl_lib_ctx_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* noundef %0, i8* noundef %2) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %call1, i32 noundef 0, %struct.ossl_lib_ctx_method* noundef nonnull @foo_method) #2
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call10) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %i = bitcast i8* %call10 to i32*
  %3 = load i32, i32* %i, align 8, !tbaa !3
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 8, !tbaa !3
  %call14 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 noundef %inc, i32 noundef 43) #2
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.end
  %call18 = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef null, i32 noundef 0, %struct.ossl_lib_ctx_method* noundef nonnull @foo_method) #2
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call18) #2
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end17
  %i22 = bitcast i8* %call18 to i32*
  %4 = load i32, i32* %i22, align 8, !tbaa !3
  %call23 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 noundef %4, i32 noundef 42) #2
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false21
  %call27 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %call1) #2
  %5 = bitcast %struct.ossl_lib_ctx_st* %call27 to i8*
  %call28 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* noundef %5) #2
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end26
  %call31 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* noundef %0, i8* noundef %5) #2
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %call34 = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef null, i32 noundef 0, %struct.ossl_lib_ctx_method* noundef nonnull @foo_method) #2
  %call35 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call34) #2
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false33
  %i38 = bitcast i8* %call34 to i32*
  %6 = load i32, i32* %i38, align 8, !tbaa !3
  %call39 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 noundef %6, i32 noundef 43) #2
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %if.end42

if.end42:                                         ; preds = %lor.lhs.false37
  %call43 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef null) #2
  %7 = bitcast %struct.ossl_lib_ctx_st* %call43 to i8*
  %call44 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* noundef %1, i8* noundef %7) #2
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end42
  %call47 = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef null, i32 noundef 0, %struct.ossl_lib_ctx_method* noundef nonnull @foo_method) #2
  %call48 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call47) #2
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %i51 = bitcast i8* %call47 to i32*
  %8 = load i32, i32* %i51, align 8, !tbaa !3
  %call52 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 noundef %8, i32 noundef 43) #2
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %if.end55

if.end55:                                         ; preds = %lor.lhs.false50
  %call56 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_get0_global_default() #2
  %9 = bitcast %struct.ossl_lib_ctx_st* %call56 to i8*
  %call57 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i8* noundef %0, i8* noundef %9) #2
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %if.end60

if.end60:                                         ; preds = %if.end55
  %call61 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %call) #2
  %10 = bitcast %struct.ossl_lib_ctx_st* %call61 to i8*
  %call62 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* noundef %10) #2
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end60
  %call65 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* noundef %1, i8* noundef %10) #2
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false64
  %call68 = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef null, i32 noundef 0, %struct.ossl_lib_ctx_method* noundef nonnull @foo_method) #2
  %call69 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call68) #2
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false67
  %i72 = bitcast i8* %call68 to i32*
  %11 = load i32, i32* %i72, align 8, !tbaa !3
  %call73 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 noundef %11, i32 noundef 42) #2
  %tobool74.not = icmp ne i32 %call73, 0
  %spec.select = zext i1 %tobool74.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false71, %if.end60, %lor.lhs.false64, %lor.lhs.false67, %if.end55, %if.end42, %lor.lhs.false46, %lor.lhs.false50, %if.end26, %lor.lhs.false30, %lor.lhs.false33, %lor.lhs.false37, %if.end17, %lor.lhs.false21, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %testresult.0 = phi i32 [ 0, %lor.lhs.false67 ], [ 0, %lor.lhs.false64 ], [ 0, %if.end60 ], [ 0, %if.end55 ], [ 0, %lor.lhs.false50 ], [ 0, %lor.lhs.false46 ], [ 0, %if.end42 ], [ 0, %lor.lhs.false37 ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false30 ], [ 0, %if.end26 ], [ 0, %lor.lhs.false21 ], [ 0, %if.end17 ], [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false71 ]
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call1) #2
  ret i32 %testresult.0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_context(%struct.ossl_lib_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 0, %struct.ossl_lib_ctx_method* noundef nonnull @foo_method) #2
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* noundef %call) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %i = bitcast i8* %call to i32*
  %0 = load i32, i32* %i, align 8, !tbaa !3
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 noundef %0, i32 noundef 42) #2
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @foo_new(%struct.ossl_lib_ctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 32) #2
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %i = bitcast i8* %call to i32*
  store i32 42, i32* %i, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo_free(i8* noundef %ptr) #0 {
entry:
  tail call void @CRYPTO_free(i8* noundef %ptr, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef 39) #2
  ret void
}

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_get0_global_default() local_unnamed_addr #1

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"foo_st", !5, i64 0, !8, i64 8}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
