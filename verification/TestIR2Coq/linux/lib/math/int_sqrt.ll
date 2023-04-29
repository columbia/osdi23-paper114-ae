; ModuleID = 'lib/math/int_sqrt.c'
source_filename = "lib/math/int_sqrt.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readnone
define dso_local i64 @int_sqrt(i64 noundef %x) local_unnamed_addr #0 {
entry:
  %cmp = icmp ult i64 %x, 2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.ctlz.i64(i64 %x, i1 true) #2, !range !7
  %sub.i = and i64 %0, 62
  %and = xor i64 %sub.i, 62
  %shl = shl nuw i64 1, %and
  br label %while.body

while.body:                                       ; preds = %if.end, %while.body
  %y.025 = phi i64 [ 0, %if.end ], [ %y.1, %while.body ]
  %m.024 = phi i64 [ %shl, %if.end ], [ %shr6, %while.body ]
  %x.addr.023 = phi i64 [ %x, %if.end ], [ %x.addr.1, %while.body ]
  %add = add i64 %y.025, %m.024
  %shr = lshr i64 %y.025, 1
  %cmp2.not = icmp ult i64 %x.addr.023, %add
  %sub = select i1 %cmp2.not, i64 0, i64 %add
  %x.addr.1 = sub i64 %x.addr.023, %sub
  %add4 = select i1 %cmp2.not, i64 0, i64 %m.024
  %y.1 = add nuw i64 %add4, %shr
  %shr6 = lshr i64 %m.024, 2
  %cmp1.not = icmp ult i64 %m.024, 4
  br i1 %cmp1.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %entry
  %retval.0 = phi i64 [ %x, %entry ], [ %y.1, %while.body ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

attributes #0 = { nofree noinline nosync nounwind null_pointer_is_valid readnone "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 0, i64 65}
