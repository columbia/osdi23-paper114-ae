; ModuleID = 'apps/lib/columns.c'
source_filename = "apps/lib/columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function_st = type { i32, i8*, i32 (i32, i8**)*, %struct.options_st*, i8*, i8* }
%struct.options_st = type { i8*, i32, i32, i8* }
%struct.DISPLAY_COLUMNS = type { i32, i32 }

; Function Attrs: nofree noinline nounwind uwtable
define void @calculate_columns(%struct.function_st* nocapture noundef readonly %functions, %struct.DISPLAY_COLUMNS* nocapture noundef writeonly %dc) local_unnamed_addr #0 {
entry:
  %name24 = getelementptr inbounds %struct.function_st, %struct.function_st* %functions, i64 0, i32 1
  %0 = load i8*, i8** %name24, align 8, !tbaa !4
  %cmp.not25 = icmp eq i8* %0, null
  br i1 %cmp.not25, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i8* [ %3, %for.inc ], [ %0, %entry ]
  %maxlen.027 = phi i32 [ %maxlen.1, %for.inc ], [ 0, %entry ]
  %f.026 = phi %struct.function_st* [ %incdec.ptr, %for.inc ], [ %functions, %entry ]
  %type = getelementptr inbounds %struct.function_st, %struct.function_st* %f.026, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !9
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %call = tail call i64 @strlen(i8* noundef nonnull %1) #2
  %conv = trunc i64 %call to i32
  %cmp8 = icmp slt i32 %maxlen.027, %conv
  %spec.select = select i1 %cmp8, i32 %conv, i32 %maxlen.027
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %maxlen.1 = phi i32 [ %maxlen.027, %for.body ], [ %spec.select, %if.then ]
  %incdec.ptr = getelementptr inbounds %struct.function_st, %struct.function_st* %f.026, i64 1
  %name = getelementptr inbounds %struct.function_st, %struct.function_st* %f.026, i64 1, i32 1
  %3 = load i8*, i8** %name, align 8, !tbaa !4
  %cmp.not = icmp eq i8* %3, null
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !10

for.end:                                          ; preds = %for.inc, %entry
  %maxlen.0.lcssa = phi i32 [ 0, %entry ], [ %maxlen.1, %for.inc ]
  %add = add nsw i32 %maxlen.0.lcssa, 2
  %width = getelementptr inbounds %struct.DISPLAY_COLUMNS, %struct.DISPLAY_COLUMNS* %dc, i64 0, i32 1
  store i32 %add, i32* %width, align 4, !tbaa !12
  %div = sdiv i32 79, %add
  %columns = getelementptr inbounds %struct.DISPLAY_COLUMNS, %struct.DISPLAY_COLUMNS* %dc, i64 0, i32 0
  store i32 %div, i32* %columns, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #1

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !8, i64 8}
!5 = !{!"function_st", !6, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!5, !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !14, i64 4}
!13 = !{!"", !14, i64 0, !14, i64 4}
!14 = !{!"int", !6, i64 0}
!15 = !{!13, !14, i64 0}
