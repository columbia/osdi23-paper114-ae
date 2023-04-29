; ModuleID = 'lib/errseq.c'
source_filename = "lib/errseq.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"err = %d\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @errseq_set(i32* noundef %eseq, i32 noundef %err) local_unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* %eseq, align 4
  %cmp = icmp eq i32 %err, 0
  %sub = sub i32 0, %err
  %cmp4 = icmp ugt i32 %sub, 4095
  %1 = or i1 %cmp, %cmp4
  br i1 %1, label %do.end21, label %for.cond.preheader, !prof !7

for.cond.preheader:                               ; preds = %entry
  %2 = bitcast i32* %eseq to i8*
  br label %for.cond

do.end21:                                         ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef %err) #3
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/errseq.c\22; .popsection; .long 14472b - 14470b; .short 75; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #4, !srcloc !8
  br label %cleanup67

for.cond:                                         ; preds = %for.cond.preheader, %if.end46
  %old.0 = phi i32 [ %call11.i, %if.end46 ], [ %0, %for.cond.preheader ]
  %and = and i32 %old.0, -8192
  %or = or i32 %and, %sub
  %and39 = and i32 %old.0, 4096
  %tobool40.not = icmp eq i32 %and39, 0
  %add = add i32 %or, 8192
  %spec.select = select i1 %tobool40.not, i32 %or, i32 %add
  %cmp43 = icmp eq i32 %spec.select, %old.0
  br i1 %cmp43, label %cleanup67, label %if.end46

if.end46:                                         ; preds = %for.cond
  %call11.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %2, i32 noundef %old.0, i32 noundef %spec.select) #3
  %cmp52 = icmp eq i32 %old.0, %call11.i
  %cmp55 = icmp eq i32 %spec.select, %call11.i
  %3 = select i1 %cmp52, i1 true, i1 %cmp55
  br i1 %3, label %cleanup67, label %for.cond

cleanup67:                                        ; preds = %if.end46, %for.cond, %do.end21
  %retval.0 = phi i32 [ %0, %do.end21 ], [ %call11.i, %if.end46 ], [ %old.0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @errseq_sample(i32* noundef %eseq) local_unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* %eseq, align 4
  %and = and i32 %0, 4096
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i32 0, i32 %0
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @errseq_check(i32* noundef %eseq, i32 noundef %since) local_unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* %eseq, align 4
  %cmp = icmp eq i32 %0, %since
  br i1 %cmp, label %cleanup, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %and = and i32 %0, 4095
  %sub = sub nsw i32 0, %and
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %sub, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @errseq_check_and_advance(i32* noundef %eseq, i32* nocapture noundef %since) local_unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* %eseq, align 4
  %1 = load i32, i32* %since, align 4
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %or = or i32 %0, 4096
  %cmp1.not = icmp eq i32 %or, %0
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %2 = bitcast i32* %eseq to i8*
  %call11.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %2, i32 noundef %0, i32 noundef %or) #3
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i32 %or, i32* %since, align 4
  %and = and i32 %0, 4095
  %sub = sub nsw i32 0, %and
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %err.0 = phi i32 [ %sub, %if.end ], [ 0, %entry ]
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #4, !srcloc !10
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{i64 2148457753}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2147959341, i64 2147959374, i64 2147959426, i64 2147959485, i64 2147959519, i64 2147959575, i64 2147959604, i64 2147959631}
