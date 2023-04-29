; ModuleID = 'lib/memcat_p.c'
source_filename = "lib/memcat_p.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8** @__memcat_p(i8** noundef readonly %a, i8** noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %a, align 8
  %tobool.not45 = icmp eq i8* %0, null
  br i1 %tobool.not45, label %for.cond1.preheader, label %for.inc

for.cond1.preheader:                              ; preds = %for.inc, %entry
  %nr.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %1 = load i8*, i8** %b, align 8
  %tobool2.not48 = icmp eq i8* %1, null
  br i1 %tobool2.not48, label %for.end7, label %for.inc4

for.inc:                                          ; preds = %entry, %for.inc
  %nr.047 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %p.046 = phi i8** [ %incdec.ptr, %for.inc ], [ %a, %entry ]
  %inc = add i32 %nr.047, 1
  %incdec.ptr = getelementptr i8*, i8** %p.046, i64 1
  %2 = load i8*, i8** %incdec.ptr, align 8
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %for.cond1.preheader, label %for.inc

for.inc4:                                         ; preds = %for.cond1.preheader, %for.inc4
  %nr.150 = phi i32 [ %inc5, %for.inc4 ], [ %nr.0.lcssa, %for.cond1.preheader ]
  %p.149 = phi i8** [ %incdec.ptr6, %for.inc4 ], [ %b, %for.cond1.preheader ]
  %inc5 = add i32 %nr.150, 1
  %incdec.ptr6 = getelementptr i8*, i8** %p.149, i64 1
  %3 = load i8*, i8** %incdec.ptr6, align 8
  %tobool2.not = icmp eq i8* %3, null
  br i1 %tobool2.not, label %for.end7, label %for.inc4

for.end7:                                         ; preds = %for.inc4, %for.cond1.preheader
  %p.1.lcssa = phi i8** [ %b, %for.cond1.preheader ], [ %incdec.ptr6, %for.inc4 ]
  %nr.1.lcssa = phi i32 [ %nr.0.lcssa, %for.cond1.preheader ], [ %inc5, %for.inc4 ]
  %inc8 = add i32 %nr.1.lcssa, 1
  %conv = sext i32 %inc8 to i64
  %call = call fastcc i8* @kmalloc_array(i64 noundef %conv) #3
  %4 = bitcast i8* %call to i8**
  %tobool9.not = icmp eq i8* %call, null
  br i1 %tobool9.not, label %cleanup, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.end7
  %cmp53 = icmp sgt i32 %nr.1.lcssa, -1
  br i1 %cmp53, label %for.body12.preheader, label %cleanup

for.body12.preheader:                             ; preds = %for.cond10.preheader
  %5 = zext i32 %nr.1.lcssa to i64
  br label %for.body12

for.body12:                                       ; preds = %for.body12.preheader, %for.body12
  %indvars.iv = phi i64 [ %5, %for.body12.preheader ], [ %indvars.iv.next, %for.body12 ]
  %p.254 = phi i8** [ %p.1.lcssa, %for.body12.preheader ], [ %cond, %for.body12 ]
  %6 = load i8*, i8** %p.254, align 8
  %arrayidx = getelementptr i8*, i8** %4, i64 %indvars.iv
  store i8* %6, i8** %arrayidx, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp15 = icmp eq i8** %p.254, %b
  %arrayidx18 = getelementptr i8*, i8** %a, i64 %indvars.iv.next
  %add.ptr = getelementptr i8*, i8** %p.254, i64 -1
  %cond = select i1 %cmp15, i8** %arrayidx18, i8** %add.ptr
  %cmp.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp.not, label %cleanup, label %for.body12

cleanup:                                          ; preds = %for.body12, %for.cond10.preheader, %for.end7
  %retval.0 = phi i8** [ null, %for.end7 ], [ %4, %for.cond10.preheader ], [ %4, %for.body12 ]
  ret i8** %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !7

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3264) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
