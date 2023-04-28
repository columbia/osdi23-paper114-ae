; ModuleID = 'test/ssl_ctx_test.c'
source_filename = "test/ssl_ctx_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.version_test = type { i32, i32, i32, i32, i32, i32 }
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"test_set_min_max_version\00", align 1
@version_testdata = internal unnamed_addr constant [5 x %struct.version_test] [%struct.version_test { i32 0, i32 0, i32 1, i32 1, i32 0, i32 0 }, %struct.version_test { i32 769, i32 771, i32 1, i32 1, i32 769, i32 771 }, %struct.version_test { i32 771, i32 771, i32 1, i32 1, i32 771, i32 771 }, %struct.version_test { i32 771, i32 770, i32 1, i32 1, i32 771, i32 770 }, %struct.version_test { i32 7, i32 42, i32 0, i32 0, i32 0, i32 0 }], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"test/ssl_ctx_test.c\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"SSL_CTX_set_min_proto_version(ctx, t.min_version)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"t.min_ok\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"SSL_CTX_set_max_proto_version(ctx, t.max_version)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"t.max_ok\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"SSL_CTX_get_min_proto_version(ctx)\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"t.expected_min\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"SSL_CTX_get_max_proto_version(ctx)\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"t.expected_max\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"SSL_set_min_proto_version(ssl, t.min_version)\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"SSL_set_max_proto_version(ssl, t.max_version)\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"SSL_get_min_proto_version(ssl)\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"SSL_get_max_proto_version(ssl)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_set_min_max_version, i32 noundef 5, i32 noundef 1) #2
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_set_min_max_version(i32 noundef %idx_tst) #0 {
entry:
  %idxprom = sext i32 %idx_tst to i64
  %t.sroa.0.0..sroa_idx = getelementptr inbounds [5 x %struct.version_test], [5 x %struct.version_test]* @version_testdata, i64 0, i64 %idxprom, i32 0
  %t.sroa.0.0.copyload = load i32, i32* %t.sroa.0.0..sroa_idx, align 8, !tbaa.struct !3
  %t.sroa.5.0..sroa_idx64 = getelementptr inbounds [5 x %struct.version_test], [5 x %struct.version_test]* @version_testdata, i64 0, i64 %idxprom, i32 1
  %t.sroa.5.0.copyload = load i32, i32* %t.sroa.5.0..sroa_idx64, align 4, !tbaa.struct !8
  %t.sroa.7.0..sroa_idx67 = getelementptr inbounds [5 x %struct.version_test], [5 x %struct.version_test]* @version_testdata, i64 0, i64 %idxprom, i32 2
  %t.sroa.7.0.copyload = load i32, i32* %t.sroa.7.0..sroa_idx67, align 8, !tbaa.struct !9
  %t.sroa.9.0..sroa_idx70 = getelementptr inbounds [5 x %struct.version_test], [5 x %struct.version_test]* @version_testdata, i64 0, i64 %idxprom, i32 3
  %t.sroa.9.0.copyload = load i32, i32* %t.sroa.9.0..sroa_idx70, align 4, !tbaa.struct !10
  %t.sroa.11.0..sroa_idx73 = getelementptr inbounds [5 x %struct.version_test], [5 x %struct.version_test]* @version_testdata, i64 0, i64 %idxprom, i32 4
  %t.sroa.11.0.copyload = load i32, i32* %t.sroa.11.0..sroa_idx73, align 8, !tbaa.struct !11
  %t.sroa.13.0..sroa_idx76 = getelementptr inbounds [5 x %struct.version_test], [5 x %struct.version_test]* @version_testdata, i64 0, i64 %idxprom, i32 5
  %t.sroa.13.0.copyload = load i32, i32* %t.sroa.13.0..sroa_idx76, align 4, !tbaa.struct !12
  %call = tail call %struct.ssl_method_st* @TLS_server_method() #2
  %call1 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #2
  %cmp = icmp eq %struct.ssl_ctx_st* %call1, null
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef nonnull %call1) #2
  %cmp3 = icmp eq %struct.ssl_st* %call2, null
  br i1 %cmp3, label %end, label %if.end5

if.end5:                                          ; preds = %if.end
  %conv = sext i32 %t.sroa.0.0.copyload to i64
  %call6 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %call1, i32 noundef 123, i64 noundef %conv, i8* noundef null) #2
  %conv7 = trunc i64 %call6 to i32
  %call8 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv7, i32 noundef %t.sroa.7.0.copyload) #2
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %end, label %if.end10

if.end10:                                         ; preds = %if.end5
  %conv11 = sext i32 %t.sroa.5.0.copyload to i64
  %call12 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %call1, i32 noundef 124, i64 noundef %conv11, i8* noundef null) #2
  %conv13 = trunc i64 %call12 to i32
  %call14 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv13, i32 noundef %t.sroa.9.0.copyload) #2
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %end, label %if.end17

if.end17:                                         ; preds = %if.end10
  %call18 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %call1, i32 noundef 130, i64 noundef 0, i8* noundef null) #2
  %conv19 = trunc i64 %call18 to i32
  %call20 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv19, i32 noundef %t.sroa.11.0.copyload) #2
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %end, label %if.end23

if.end23:                                         ; preds = %if.end17
  %call24 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %call1, i32 noundef 131, i64 noundef 0, i8* noundef null) #2
  %conv25 = trunc i64 %call24 to i32
  %call26 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv25, i32 noundef %t.sroa.13.0.copyload) #2
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %end, label %if.end29

if.end29:                                         ; preds = %if.end23
  %call32 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call2, i32 noundef 123, i64 noundef %conv, i8* noundef null) #2
  %conv33 = trunc i64 %call32 to i32
  %call35 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv33, i32 noundef %t.sroa.7.0.copyload) #2
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %end, label %if.end38

if.end38:                                         ; preds = %if.end29
  %call41 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call2, i32 noundef 124, i64 noundef %conv11, i8* noundef null) #2
  %conv42 = trunc i64 %call41 to i32
  %call44 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv42, i32 noundef %t.sroa.9.0.copyload) #2
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %end, label %if.end47

if.end47:                                         ; preds = %if.end38
  %call48 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call2, i32 noundef 130, i64 noundef 0, i8* noundef null) #2
  %conv49 = trunc i64 %call48 to i32
  %call51 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv49, i32 noundef %t.sroa.11.0.copyload) #2
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %end, label %if.end54

if.end54:                                         ; preds = %if.end47
  %call55 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call2, i32 noundef 131, i64 noundef 0, i8* noundef null) #2
  %conv56 = trunc i64 %call55 to i32
  %call58 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv56, i32 noundef %t.sroa.13.0.copyload) #2
  %tobool59.not = icmp ne i32 %call58, 0
  %spec.select = zext i1 %tobool59.not to i32
  br label %end

end:                                              ; preds = %if.end54, %if.end47, %if.end38, %if.end29, %if.end23, %if.end17, %if.end10, %if.end5, %if.end, %entry
  %testresult.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end47 ], [ 0, %if.end38 ], [ 0, %if.end29 ], [ 0, %if.end23 ], [ 0, %if.end17 ], [ 0, %if.end10 ], [ 0, %if.end5 ], [ %spec.select, %if.end54 ]
  %ssl.0 = phi %struct.ssl_st* [ null, %entry ], [ null, %if.end ], [ %call2, %if.end47 ], [ %call2, %if.end38 ], [ %call2, %if.end29 ], [ %call2, %if.end23 ], [ %call2, %if.end17 ], [ %call2, %if.end10 ], [ %call2, %if.end5 ], [ %call2, %if.end54 ]
  tail call void @SSL_free(%struct.ssl_st* noundef %ssl.0) #2
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %call1) #2
  ret i32 %testresult.0
}

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_method_st* @TLS_server_method() local_unnamed_addr #1

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i64 @SSL_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4}
!9 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4}
!10 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4}
!11 = !{i64 0, i64 4, !4, i64 4, i64 4, !4}
!12 = !{i64 0, i64 4, !4}
