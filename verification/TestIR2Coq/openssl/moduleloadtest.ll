; ModuleID = 'test/moduleloadtest.c'
source_filename = "test/moduleloadtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Usage: %s sharedobject [ entrypoint ]\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %0 = and i32 %argc, -2
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %2 = load i8*, i8** %argv, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* noundef %2) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr inbounds i8*, i8** %argv, i64 1
  %3 = load i8*, i8** %arrayidx2, align 8, !tbaa !3
  %cmp3 = icmp eq i32 %argc, 3
  br i1 %cmp3, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end
  %arrayidx4 = getelementptr inbounds i8*, i8** %argv, i64 2
  %4 = load i8*, i8** %arrayidx4, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ null, %if.end ]
  %call5 = tail call fastcc i32 @test_load(i8* noundef %3, i8* noundef %cond) #4
  %tobool.not = icmp eq i32 %call5, 0
  %cond6 = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %cond6, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_load(i8* noundef %path, i8* noundef %symbol) unnamed_addr #0 {
entry:
  %sd = alloca i8*, align 8
  %sym = alloca i8*, align 8
  %0 = bitcast i8** %sd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %sd, align 8, !tbaa !3
  %1 = bitcast i8** %sym to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %call = call i32 @sd_load(i8* noundef %path, i8** noundef nonnull %sd, i32 noundef 2) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq i8* %symbol, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %2 = load i8*, i8** %sd, align 8, !tbaa !3
  %call1 = call i32 @sd_sym(i8* noundef %2, i8* noundef nonnull %symbol, i8** noundef nonnull %sym) #3
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %3 = phi i32 [ 1, %if.end ], [ %phi.cast, %lor.rhs ]
  %4 = load i8*, i8** %sd, align 8, !tbaa !3
  %call3 = call i32 @sd_close(i8* noundef %4) #3
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 %3
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.end
  %retval.0 = phi i32 [ %spec.select, %lor.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @sd_load(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @sd_sym(i8* noundef, i8* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i32 @sd_close(i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
