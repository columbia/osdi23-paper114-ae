; ModuleID = 'engines/e_capi.c'
source_filename = "engines/e_capi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.engine_st = type opaque
%struct.st_dynamic_fns = type { i8*, %struct.st_dynamic_MEM_fns }
%struct.st_dynamic_MEM_fns = type { i8* (i64, i8*, i32)*, i8* (i8*, i64, i8*, i32)*, void (i8*, i8*, i32)* }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @bind_engine(%struct.engine_st* nocapture noundef readnone %e, i8* nocapture noundef readnone %id, %struct.st_dynamic_fns* nocapture noundef readnone %fns) local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i64 @v_check(i64 noundef %v) local_unnamed_addr #0 {
entry:
  %cmp.inv = icmp ult i64 %v, 196608
  %. = select i1 %cmp.inv, i64 0, i64 196608
  ret i64 %.
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
