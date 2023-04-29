; ModuleID = 'lib/clz_ctz.c'
source_filename = "lib/clz_ctz.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @__ctzsi2(i32 noundef %val) local_unnamed_addr #0 {
entry:
  %0 = zext i32 %val to i64
  %1 = call i64 @llvm.cttz.i64(i64 %0, i1 false), !range !7
  %conv1 = trunc i64 %1 to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @__clzsi2(i32 noundef %val) local_unnamed_addr #0 {
entry:
  %0 = call i32 @llvm.ctlz.i32(i32 %val, i1 false) #3, !range !8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @__clzdi2(i64 noundef %val) local_unnamed_addr #0 {
entry:
  %0 = call i64 @llvm.ctlz.i64(i64 %val, i1 false) #3, !range !7
  %1 = trunc i64 %0 to i32
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @__ctzdi2(i64 noundef %val) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ffs64(i64 noundef %val) #4
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__ffs64(i64 noundef %word) unnamed_addr #1 {
entry:
  %0 = call i64 @llvm.cttz.i64(i64 %word, i1 false) #3, !range !7
  ret i64 %0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin "no-builtins" }

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
!8 = !{i32 0, i32 33}
