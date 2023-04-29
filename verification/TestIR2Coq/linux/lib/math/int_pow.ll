; ModuleID = 'lib/math/int_pow.c'
source_filename = "lib/math/int_pow.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define dso_local i64 @int_pow(i64 noundef %base, i32 noundef %exp) local_unnamed_addr #0 {
entry:
  %tobool.not9 = icmp eq i32 %exp, 0
  br i1 %tobool.not9, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %result.012 = phi i64 [ %spec.select, %while.body ], [ 1, %entry ]
  %exp.addr.011 = phi i32 [ %shr, %while.body ], [ %exp, %entry ]
  %base.addr.010 = phi i64 [ %mul2, %while.body ], [ %base, %entry ]
  %and = and i32 %exp.addr.011, 1
  %tobool1.not = icmp eq i32 %and, 0
  %mul = select i1 %tobool1.not, i64 1, i64 %base.addr.010
  %spec.select = mul i64 %mul, %result.012
  %shr = lshr i32 %exp.addr.011, 1
  %mul2 = mul i64 %base.addr.010, %base.addr.010
  %tobool.not = icmp ult i32 %exp.addr.011, 2
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %result.0.lcssa = phi i64 [ 1, %entry ], [ %spec.select, %while.body ]
  ret i64 %result.0.lcssa
}

attributes #0 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
