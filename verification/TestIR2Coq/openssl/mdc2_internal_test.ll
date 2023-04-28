; ModuleID = 'test/mdc2_internal_test.c'
source_filename = "test/mdc2_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TESTDATA = type { i8*, [16 x i8] }
%struct.mdc2_ctx_st = type { i32, [8 x i8], [8 x i8], [8 x i8], i32 }

@.str = private unnamed_addr constant [10 x i8] c"test_mdc2\00", align 1
@tests = internal unnamed_addr constant [1 x %struct.TESTDATA] [%struct.TESTDATA { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), [16 x i8] c"B\E5\0C\D2$\BA\CE\BAv\0B\DD+\D4\09(\1A" }], align 16
@.str.1 = private unnamed_addr constant [26 x i8] c"test/mdc2_internal_test.c\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"testdata.expected\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"mdc2 test %d: unexpected output\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Now is the time for all \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_mdc2, i32 noundef 1, i32 noundef 1) #5
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_mdc2(i32 noundef %idx) #0 {
entry:
  %md = alloca [16 x i8], align 16
  %c = alloca %struct.mdc2_ctx_st, align 4
  %testdata = alloca %struct.TESTDATA, align 8
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  %1 = bitcast %struct.mdc2_ctx_st* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #6
  %2 = bitcast %struct.TESTDATA* %testdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #6
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds [1 x %struct.TESTDATA], [1 x %struct.TESTDATA]* @tests, i64 0, i64 %idxprom
  %3 = bitcast %struct.TESTDATA* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8* noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !3
  %call = call i32 @MDC2_Init(%struct.mdc2_ctx_st* noundef nonnull %c) #5
  %input = getelementptr inbounds %struct.TESTDATA, %struct.TESTDATA* %testdata, i64 0, i32 0
  %4 = load i8*, i8** %input, align 8, !tbaa !9
  %call2 = call i64 @strlen(i8* noundef %4) #7
  %call3 = call i32 @MDC2_Update(%struct.mdc2_ctx_st* noundef nonnull %c, i8* noundef %4, i64 noundef %call2) #5
  %call5 = call i32 @MDC2_Final(i8* noundef nonnull %0, %struct.mdc2_ctx_st* noundef nonnull %c) #5
  %arraydecay = getelementptr inbounds %struct.TESTDATA, %struct.TESTDATA* %testdata, i64 0, i32 1, i64 0
  %call7 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %arraydecay, i64 noundef 16, i8* noundef nonnull %0, i64 noundef 16) #5
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 noundef %idx) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @MDC2_Init(%struct.mdc2_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @MDC2_Update(%struct.mdc2_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

declare dso_local i32 @MDC2_Final(i8* noundef, %struct.mdc2_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{i64 0, i64 8, !4, i64 8, i64 16, !8}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !5, i64 0}
!10 = !{!"", !5, i64 0, !6, i64 8}
