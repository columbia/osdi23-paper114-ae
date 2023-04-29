; ModuleID = 'lib/bsearch.c'
source_filename = "lib/bsearch.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @bsearch(i8* noundef %key, i8* noundef %base, i64 noundef %num, i64 noundef %size, i32 (i8*, i8*)* nocapture noundef readonly %cmp) local_unnamed_addr #0 {
entry:
  %cmp1.not18.i = icmp eq i64 %num, 0
  br i1 %cmp1.not18.i, label %__inline_bsearch.exit, label %while.body.i

while.body.i:                                     ; preds = %entry, %if.end.i
  %base.addr.020.i = phi i8* [ %base.addr.1.i, %if.end.i ], [ %base, %entry ]
  %num.addr.019.i = phi i64 [ %shr7.i, %if.end.i ], [ %num, %entry ]
  %shr.i = lshr i64 %num.addr.019.i, 1
  %mul.i = mul i64 %shr.i, %size
  %add.ptr.i = getelementptr i8, i8* %base.addr.020.i, i64 %mul.i
  %call.i = call i32 %cmp(i8* noundef %key, i8* noundef %add.ptr.i) #1
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %__inline_bsearch.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %cmp3.i = icmp sgt i32 %call.i, 0
  %add.ptr5.i = getelementptr i8, i8* %add.ptr.i, i64 %size
  %dec.i = sext i1 %cmp3.i to i64
  %num.addr.1.i = add i64 %num.addr.019.i, %dec.i
  %base.addr.1.i = select i1 %cmp3.i, i8* %add.ptr5.i, i8* %base.addr.020.i
  %shr7.i = lshr i64 %num.addr.1.i, 1
  %cmp1.not.i = icmp ult i64 %num.addr.1.i, 2
  br i1 %cmp1.not.i, label %__inline_bsearch.exit, label %while.body.i

__inline_bsearch.exit:                            ; preds = %while.body.i, %if.end.i, %entry
  %retval.0.i = phi i8* [ null, %entry ], [ %add.ptr.i, %while.body.i ], [ null, %if.end.i ]
  ret i8* %retval.0.i
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
