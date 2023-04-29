; ModuleID = 'lib/math/lcm.c'
source_filename = "lib/math/lcm.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @lcm(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %tobool = icmp ne i64 %a, 0
  %tobool1 = icmp ne i64 %b, 0
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = call i64 @gcd(i64 noundef %a, i64 noundef %b) #2
  %div = udiv i64 %a, %call
  %mul = mul i64 %div, %b
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %mul, %if.then ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i64 @gcd(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @lcm_not_zero(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %call = call i64 @lcm(i64 noundef %a, i64 noundef %b) #2
  %tobool.not = icmp eq i64 %call, 0
  %tobool1.not = icmp eq i64 %b, 0
  %cond = select i1 %tobool1.not, i64 %a, i64 %b
  %retval.0 = select i1 %tobool.not, i64 %cond, i64 %call
  ret i64 %retval.0
}

attributes #0 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
