; ModuleID = 'lib/math/rational.c'
source_filename = "lib/math/rational.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@__UNIQUE_ID_file197 = internal constant [32 x i8] c"rational.file=lib/math/rational\00", section ".modinfo", align 1
@__UNIQUE_ID_license198 = internal constant [24 x i8] c"rational.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [2 x i8*] [i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_file197, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_license198, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly
define dso_local void @rational_best_approximation(i64 noundef %given_numerator, i64 noundef %given_denominator, i64 noundef %max_numerator, i64 noundef %max_denominator, i64* nocapture noundef writeonly %best_numerator, i64* nocapture noundef writeonly %best_denominator) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %d0.0 = phi i64 [ 1, %entry ], [ %d1.0, %if.end ]
  %n1.0 = phi i64 [ 1, %entry ], [ %add, %if.end ]
  %d1.0 = phi i64 [ 0, %entry ], [ %add2, %if.end ]
  %n0.0 = phi i64 [ 0, %entry ], [ %n1.0, %if.end ]
  %d.0 = phi i64 [ %given_denominator, %entry ], [ %rem.decomposed, %if.end ]
  %n.0 = phi i64 [ %given_numerator, %entry ], [ %d.0, %if.end ]
  %cmp = icmp eq i64 %d.0, 0
  br i1 %cmp, label %for.end, label %if.end

if.end:                                           ; preds = %for.cond
  %n.0.frozen = freeze i64 %n.0
  %d.0.frozen = freeze i64 %d.0
  %div = udiv i64 %n.0.frozen, %d.0.frozen
  %0 = mul i64 %div, %d.0.frozen
  %rem.decomposed = sub i64 %n.0.frozen, %0
  %mul = mul i64 %div, %n1.0
  %add = add i64 %mul, %n0.0
  %mul1 = mul i64 %div, %d1.0
  %add2 = add i64 %mul1, %d0.0
  %cmp3 = icmp ugt i64 %add, %max_numerator
  %cmp4 = icmp ugt i64 %add2, %max_denominator
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then5, label %for.cond

if.then5:                                         ; preds = %if.end
  %tobool.not = icmp eq i64 %d1.0, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.then5
  %sub = sub i64 %max_denominator, %d0.0
  %div7 = udiv i64 %sub, %d1.0
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then5
  %t.0 = phi i64 [ %div7, %if.then6 ], [ -1, %if.then5 ]
  %tobool9.not = icmp eq i64 %n1.0, 0
  br i1 %tobool9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end8
  %sub11 = sub i64 %max_numerator, %n0.0
  %div12 = udiv i64 %sub11, %n1.0
  %cmp13 = icmp ult i64 %t.0, %div12
  %cond = select i1 %cmp13, i64 %t.0, i64 %div12
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end8
  %t.1 = phi i64 [ %cond, %if.then10 ], [ %t.0, %if.end8 ]
  br i1 %tobool.not, label %if.then25, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end14
  %mul17 = shl i64 %t.1, 1
  %cmp18 = icmp ugt i64 %mul17, %div
  br i1 %cmp18, label %if.then25, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %cmp21 = icmp eq i64 %mul17, %div
  br i1 %cmp21, label %land.lhs.true, label %for.end

land.lhs.true:                                    ; preds = %lor.lhs.false19
  %mul22 = mul i64 %d.0, %d0.0
  %mul23 = mul i64 %rem.decomposed, %d1.0
  %cmp24 = icmp ugt i64 %mul22, %mul23
  br i1 %cmp24, label %if.then25, label %for.end

if.then25:                                        ; preds = %land.lhs.true, %lor.lhs.false16, %if.end14
  %mul26 = mul i64 %t.1, %n1.0
  %add27 = add i64 %mul26, %n0.0
  %mul28 = mul i64 %t.1, %d1.0
  %add29 = add i64 %mul28, %d0.0
  br label %for.end

for.end:                                          ; preds = %for.cond, %if.then25, %land.lhs.true, %lor.lhs.false19
  %n1.2.ph = phi i64 [ %n1.0, %lor.lhs.false19 ], [ %n1.0, %land.lhs.true ], [ %add27, %if.then25 ], [ %n1.0, %for.cond ]
  %d1.2.ph = phi i64 [ %d1.0, %lor.lhs.false19 ], [ %d1.0, %land.lhs.true ], [ %add29, %if.then25 ], [ %d1.0, %for.cond ]
  store i64 %n1.2.ph, i64* %best_numerator, align 8
  store i64 %d1.2.ph, i64* %best_denominator, align 8
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
