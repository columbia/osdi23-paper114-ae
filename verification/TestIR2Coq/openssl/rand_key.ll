; ModuleID = 'crypto/des/rand_key.c'
source_filename = "crypto/des/rand_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @DES_random_key([8 x i8]* noundef %ret) local_unnamed_addr #0 {
entry:
  %0 = getelementptr [8 x i8], [8 x i8]* %ret, i64 0, i64 0
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = tail call i32 @RAND_priv_bytes(i8* noundef %0, i32 noundef 8) #2
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %do.cond, label %return

do.cond:                                          ; preds = %do.body
  %call1 = tail call i32 @DES_is_weak_key([8 x i8]* noundef %ret) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !4

do.end:                                           ; preds = %do.cond
  tail call void @DES_set_odd_parity([8 x i8]* noundef %ret) #2
  br label %return

return:                                           ; preds = %do.body, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %do.body ]
  ret i32 %retval.0
}

declare i32 @RAND_priv_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @DES_is_weak_key([8 x i8]* noundef) local_unnamed_addr #1

declare void @DES_set_odd_parity([8 x i8]* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
