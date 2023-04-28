; ModuleID = 'fs/proc/util.c'
source_filename = "fs/proc/util.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.anon = type { i32, i32 }

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @name_to_int(%struct.qstr* nocapture noundef readonly %qstr) local_unnamed_addr #0 {
entry:
  %name1 = getelementptr inbounds %struct.qstr, %struct.qstr* %qstr, i64 0, i32 1
  %0 = load i8*, i8** %name1, align 8
  %1 = bitcast %struct.qstr* %qstr to %struct.anon*
  %len2 = getelementptr inbounds %struct.anon, %struct.anon* %1, i64 0, i32 1
  %2 = load i32, i32* %len2, align 4
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %do.body.preheader

land.lhs.true:                                    ; preds = %entry
  %3 = load i8, i8* %0, align 1
  %cmp3 = icmp eq i8 %3, 48
  br i1 %cmp3, label %cleanup16, label %do.body.preheader

do.body.preheader:                                ; preds = %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %name.0 = phi i8* [ %incdec.ptr, %do.cond ], [ %0, %do.body.preheader ]
  %len.0 = phi i32 [ %dec, %do.cond ], [ %2, %do.body.preheader ]
  %n.0 = phi i32 [ %add, %do.cond ], [ 0, %do.body.preheader ]
  %4 = load i8, i8* %name.0, align 1
  %conv5 = zext i8 %4 to i32
  %sub = add nsw i32 %conv5, -48
  %cmp6 = icmp ugt i32 %sub, 9
  %cmp10 = icmp ugt i32 %n.0, 429496727
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp10
  %mul = mul i32 %n.0, 10
  %add = add i32 %sub, %mul
  br i1 %or.cond, label %cleanup16, label %do.cond

do.cond:                                          ; preds = %do.body
  %incdec.ptr = getelementptr i8, i8* %name.0, i64 1
  %dec = add i32 %len.0, -1
  %cmp14 = icmp sgt i32 %dec, 0
  br i1 %cmp14, label %do.body, label %cleanup16

cleanup16:                                        ; preds = %do.body, %do.cond, %land.lhs.true
  %retval.0 = phi i32 [ -1, %land.lhs.true ], [ -1, %do.body ], [ %add, %do.cond ]
  ret i32 %retval.0
}

attributes #0 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
