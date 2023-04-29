; ModuleID = 'lib/hweight.c'
source_filename = "lib/hweight.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @__sw_hweight32(i32 noundef %w) local_unnamed_addr #0 {
entry:
  %shr = lshr i32 %w, 1
  %and = and i32 %shr, 1431655765
  %sub = sub i32 %w, %and
  %and1 = and i32 %sub, 858993459
  %shr2 = lshr i32 %sub, 2
  %and3 = and i32 %shr2, 858993459
  %add = add nuw nsw i32 %and3, %and1
  %shr4 = lshr i32 %add, 4
  %add5 = add nuw nsw i32 %shr4, %add
  %and6 = and i32 %add5, 252645135
  %mul = mul i32 %and6, 16843009
  %shr7 = lshr i32 %mul, 24
  ret i32 %shr7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @__sw_hweight16(i32 noundef %w) local_unnamed_addr #0 {
entry:
  %shr = lshr i32 %w, 1
  %and = and i32 %shr, 21845
  %sub = sub i32 %w, %and
  %and1 = and i32 %sub, 13107
  %shr2 = lshr i32 %sub, 2
  %and3 = and i32 %shr2, 13107
  %add = add nuw nsw i32 %and3, %and1
  %shr4 = lshr i32 %add, 4
  %add5 = add nuw nsw i32 %shr4, %add
  %and6 = and i32 %add5, 3855
  %shr7 = lshr i32 %and6, 8
  %add8 = add nuw nsw i32 %shr7, %and6
  %and9 = and i32 %add8, 31
  ret i32 %and9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @__sw_hweight8(i32 noundef %w) local_unnamed_addr #0 {
entry:
  %shr = lshr i32 %w, 1
  %and = and i32 %shr, 85
  %sub = sub i32 %w, %and
  %and1 = and i32 %sub, 51
  %shr2 = lshr i32 %sub, 2
  %and3 = and i32 %shr2, 51
  %add = add nuw nsw i32 %and3, %and1
  %shr4 = lshr i32 %add, 4
  %add5 = add nuw nsw i32 %shr4, %add
  %and6 = and i32 %add5, 15
  ret i32 %and6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @__sw_hweight64(i64 noundef %w) local_unnamed_addr #0 {
entry:
  %shr = lshr i64 %w, 1
  %and = and i64 %shr, 6148914691236517205
  %sub = sub i64 %w, %and
  %and1 = and i64 %sub, 3689348814741910323
  %shr2 = lshr i64 %sub, 2
  %and3 = and i64 %shr2, 3689348814741910323
  %add = add nuw nsw i64 %and3, %and1
  %shr4 = lshr i64 %add, 4
  %add5 = add nuw nsw i64 %shr4, %add
  %and6 = and i64 %add5, 1085102592571150095
  %mul = mul i64 %and6, 72340172838076673
  %shr7 = lshr i64 %mul, 56
  ret i64 %shr7
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
