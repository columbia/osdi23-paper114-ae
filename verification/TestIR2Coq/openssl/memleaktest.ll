; ModuleID = 'test/memleaktest.c'
source_filename = "test/memleaktest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"test/memleaktest.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lost\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"freeit\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 49) #4
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @strcpy(i8* noundef %call, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #4
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !3
  %tobool3.not = icmp eq i8* %0, null
  br i1 %tobool3.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call5 = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #5
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then6, label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 56) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then6, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then6 ], [ 1, %land.lhs.true ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
