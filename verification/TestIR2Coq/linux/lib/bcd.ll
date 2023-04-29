; ModuleID = 'lib/bcd.c'
source_filename = "lib/bcd.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @_bcd2bin(i8 noundef %val) local_unnamed_addr #0 {
entry:
  %conv = zext i8 %val to i32
  %and = and i32 %conv, 15
  %0 = lshr i32 %conv, 4
  %mul = mul nuw nsw i32 %0, 10
  %add = add nuw nsw i32 %mul, %and
  ret i32 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i8 @_bin2bcd(i32 noundef %val) local_unnamed_addr #0 {
entry:
  %div = udiv i32 %val, 10
  %shl = shl i32 %div, 4
  %0 = mul i32 %div, 10
  %rem.decomposed = sub i32 %val, %0
  %add = or i32 %shl, %rem.decomposed
  %conv = trunc i32 %add to i8
  ret i8 %conv
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
