; ModuleID = 'test/time_offset_test.c'
source_filename = "test/time_offset_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TESTDATA = type { i8*, i32, i32 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [12 x i8] c"test_offset\00", align 1
@tests = internal unnamed_addr constant [22 x %struct.TESTDATA] [%struct.TESTDATA { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 24 }, %struct.TESTDATA { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 24 }, %struct.TESTDATA { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 24 }, %struct.TESTDATA { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 24 }, %struct.TESTDATA { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 24 }, %struct.TESTDATA { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 1, i32 24 }, %struct.TESTDATA { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i32 -1, i32 24 }, %struct.TESTDATA { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 23 }, %struct.TESTDATA { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i32 0, i32 23 }, %struct.TESTDATA { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 23 }, %struct.TESTDATA { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 23 }, %struct.TESTDATA { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 23 }, %struct.TESTDATA { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 23 }, %struct.TESTDATA { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 23 }, %struct.TESTDATA { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i32 -1, i32 23 }, %struct.TESTDATA { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 24 }, %struct.TESTDATA { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 -1, i32 24 }, %struct.TESTDATA { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 -1, i32 23 }, %struct.TESTDATA { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i32 1, i32 24 }, %struct.TESTDATA { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 23 }, %struct.TESTDATA { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 24 }, %struct.TESTDATA { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 24 }], align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"test/time_offset_test.c\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"ASN1_TIME_diff(&day, &sec, &the_asn1_time, &at)\00", align 1
@the_asn1_time = internal global %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i64 0 }, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"ASN1_TIME_diff() failed for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"testdata->time_result\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"ASN1_TIME_diff() test failed for %s day=%d sec=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"ASN1_UTCTIME_cmp_time_t() test failed for %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"20001201000000Z\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"20001201010000+0100\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"20001201050000+0500\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"20001130230000-0100\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"20001130190000-0500\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"20001130190001-0500\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"20001130185959-0500\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"001201000000Z\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"001201010000+0100\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"001201050000+0500\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"001130230000-0100\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"001130190000-0500\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"001201000000-0000\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"001201000001-0000\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"001130235959-0000\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"20001201000000+0000\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"20001201000000+0100\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"001201000000+0100\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"20001201000000-0100\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"001201000000-0100\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"20001201123400+1234\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"20001130112600-1234\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_offset, i32 noundef 22, i32 noundef 1) #4
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_offset(i32 noundef %idx) #0 {
entry:
  %at = alloca %struct.asn1_string_st, align 8
  %day = alloca i32, align 4
  %sec = alloca i32, align 4
  %0 = bitcast %struct.asn1_string_st* %at to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #5
  %idxprom = sext i32 %idx to i64
  %1 = bitcast i32* %day to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = bitcast i32* %sec to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  %data = getelementptr inbounds [22 x %struct.TESTDATA], [22 x %struct.TESTDATA]* @tests, i64 0, i64 %idxprom, i32 0
  %3 = load i8*, i8** %data, align 16, !tbaa !3
  %data1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %at, i64 0, i32 2
  store i8* %3, i8** %data1, align 8, !tbaa !9
  %call = tail call i64 @strlen(i8* noundef %3) #6
  %conv = trunc i64 %call to i32
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %at, i64 0, i32 0
  store i32 %conv, i32* %length, align 8, !tbaa !12
  %type = getelementptr inbounds [22 x %struct.TESTDATA], [22 x %struct.TESTDATA]* @tests, i64 0, i64 %idxprom, i32 2
  %4 = load i32, i32* %type, align 4, !tbaa !13
  %type3 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %at, i64 0, i32 1
  store i32 %4, i32* %type3, align 4, !tbaa !14
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %at, i64 0, i32 3
  store i64 0, i64* %flags, align 8, !tbaa !15
  %call4 = call i32 @ASN1_TIME_diff(i32* noundef nonnull %day, i32* noundef nonnull %sec, %struct.asn1_string_st* noundef nonnull @the_asn1_time, %struct.asn1_string_st* noundef nonnull %at) #4
  %cmp = icmp ne i32 %call4, 0
  %conv5 = zext i1 %cmp to i32
  %call6 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv5) #4
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !tbaa !9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* noundef %5) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %day, align 4, !tbaa !16
  %cmp8 = icmp sgt i32 %6, 0
  br i1 %cmp8, label %if.end26, label %if.else

if.else:                                          ; preds = %if.end
  %cmp11 = icmp slt i32 %6, 0
  br i1 %cmp11, label %if.end26, label %if.else14

if.else14:                                        ; preds = %if.else
  %7 = load i32, i32* %sec, align 4, !tbaa !16
  %cmp15 = icmp sgt i32 %7, 0
  br i1 %cmp15, label %if.end26, label %if.else18

if.else18:                                        ; preds = %if.else14
  %cmp19.not = icmp ne i32 %7, 0
  %. = sext i1 %cmp19.not to i32
  br label %if.end26

if.end26:                                         ; preds = %if.else18, %if.else14, %if.else, %if.end
  %ret.0 = phi i32 [ 1, %if.end ], [ -1, %if.else ], [ 1, %if.else14 ], [ %., %if.else18 ]
  %time_result = getelementptr inbounds [22 x %struct.TESTDATA], [22 x %struct.TESTDATA]* @tests, i64 0, i64 %idxprom, i32 1
  %8 = load i32, i32* %time_result, align 8, !tbaa !17
  %call27 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %8, i32 noundef %ret.0) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  %9 = load i8*, i8** %data1, align 8, !tbaa !9
  %10 = load i32, i32* %day, align 4, !tbaa !16
  %11 = load i32, i32* %sec, align 4, !tbaa !16
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* noundef %9, i32 noundef %10, i32 noundef %11) #4
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %call32 = call i32 @ASN1_TIME_cmp_time_t(%struct.asn1_string_st* noundef nonnull %at, i64 noundef 975628800) #4
  %call34 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %8, i32 noundef %call32) #4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %cleanup

if.then36:                                        ; preds = %if.end31
  %12 = load i8*, i8** %data1, align 8, !tbaa !9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* noundef %12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then36, %if.then29, %if.then
  %retval.0 = phi i32 [ 0, %if.then36 ], [ 0, %if.then29 ], [ 0, %if.then ], [ 1, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_TIME_diff(i32* noundef, i32* noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_TIME_cmp_time_t(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0, !8, i64 8, !8, i64 12}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!10, !5, i64 8}
!10 = !{!"asn1_string_st", !8, i64 0, !8, i64 4, !5, i64 8, !11, i64 16}
!11 = !{!"long", !6, i64 0}
!12 = !{!10, !8, i64 0}
!13 = !{!4, !8, i64 12}
!14 = !{!10, !8, i64 4}
!15 = !{!10, !11, i64 16}
!16 = !{!8, !8, i64 0}
!17 = !{!4, !8, i64 8}
