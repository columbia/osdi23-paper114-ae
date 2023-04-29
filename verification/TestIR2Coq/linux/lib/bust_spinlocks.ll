; ModuleID = 'lib/bust_spinlocks.c'
source_filename = "lib/bust_spinlocks.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bust_spinlocks(i32 noundef %yes) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %yes, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @oops_in_progress, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @oops_in_progress, align 4
  br label %if.end2

if.else:                                          ; preds = %entry
  call void @unblank_screen() #2
  call void @console_unblank() #2
  %1 = load i32, i32* @oops_in_progress, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* @oops_in_progress, align 4
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.else
  call void @wake_up_klogd() #2
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unblank_screen() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unblank() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_klogd() local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
