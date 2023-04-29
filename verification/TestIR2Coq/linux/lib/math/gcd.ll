; ModuleID = 'lib/math/gcd.c'
source_filename = "lib/math/gcd.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @gcd(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %or = or i64 %b, %a
  %tobool = icmp ne i64 %a, 0
  %tobool1 = icmp ne i64 %b, 0
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.cttz.i64(i64 %b, i1 true) #2, !range !7
  %shr = lshr i64 %b, %0
  %cmp = icmp eq i64 %shr, 1
  br i1 %cmp, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %1 = call i64 @llvm.cttz.i64(i64 %a, i1 true) #2, !range !7
  %shr545 = lshr i64 %a, %1
  %cmp646 = icmp eq i64 %shr545, 1
  br i1 %cmp646, label %if.then7, label %if.end10

if.then2:                                         ; preds = %if.end
  %sub = sub i64 0, %or
  %and = and i64 %or, %sub
  br label %cleanup

if.then7:                                         ; preds = %if.end14, %for.cond.preheader
  %sub8 = sub i64 0, %or
  %and9 = and i64 %or, %sub8
  br label %cleanup

if.end10:                                         ; preds = %for.cond.preheader, %if.end14
  %shr548 = phi i64 [ %shr5, %if.end14 ], [ %shr545, %for.cond.preheader ]
  %b.addr.047 = phi i64 [ %spec.select43, %if.end14 ], [ %shr, %for.cond.preheader ]
  %cmp11 = icmp eq i64 %shr548, %b.addr.047
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %2 = call i64 @llvm.cttz.i64(i64 %or, i1 true) #2, !range !7
  %shl = shl i64 %shr548, %2
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %cmp15 = icmp ult i64 %shr548, %b.addr.047
  %spec.select = select i1 %cmp15, i64 %b.addr.047, i64 %shr548
  %spec.select43 = select i1 %cmp15, i64 %shr548, i64 %b.addr.047
  %sub18 = sub i64 %spec.select, %spec.select43
  %3 = call i64 @llvm.cttz.i64(i64 %sub18, i1 false) #2, !range !7
  %shr5 = lshr i64 %sub18, %3
  %cmp6 = icmp eq i64 %shr5, 1
  br i1 %cmp6, label %if.then7, label %if.end10

cleanup:                                          ; preds = %entry, %if.then12, %if.then7, %if.then2
  %retval.0 = phi i64 [ %and, %if.then2 ], [ %and9, %if.then7 ], [ %shl, %if.then12 ], [ %or, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

attributes #0 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
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
