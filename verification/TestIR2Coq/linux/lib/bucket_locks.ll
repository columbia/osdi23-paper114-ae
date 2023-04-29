; ModuleID = 'lib/bucket_locks.c'
source_filename = "lib/bucket_locks.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.cpumask = type { [4 x i64] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__alloc_bucket_spinlocks(%struct.spinlock** nocapture noundef writeonly %locks, i32* nocapture noundef writeonly %locks_mask, i64 noundef %max_size, i32 noundef %cpu_mult, i32 noundef %gfp, i8* nocapture noundef readnone %name, %struct.lock_class_key* nocapture noundef readnone %key) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @cpumask_weight() #3
  %tobool.not = icmp eq i32 %cpu_mult, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp ult i32 %call, 64
  %cond = select i1 %cmp, i32 %call, i32 64
  %mul = mul i32 %cond, %cpu_mult
  %conv = trunc i64 %max_size to i32
  %cmp2 = icmp ult i32 %mul, %conv
  %cond7 = select i1 %cmp2, i32 %mul, i32 %conv
  br label %if.end

if.else:                                          ; preds = %entry
  %conv8 = trunc i64 %max_size to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %size.0 = phi i32 [ %cond7, %if.then ], [ %conv8, %if.else ]
  %conv9 = zext i32 %size.0 to i64
  %call10 = call fastcc i8* @kvmalloc_array(i64 noundef %conv9, i32 noundef %gfp) #3
  %0 = bitcast i8* %call10 to %struct.spinlock*
  %tobool11.not = icmp eq i8* %call10, null
  br i1 %tobool11.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  switch i32 %size.0, label %vector.ph [
    i32 0, label %for.end
    i32 1, label %do.body.preheader
  ]

vector.ph:                                        ; preds = %for.cond.preheader
  %n.vec = and i64 %conv9, 4294967294
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %induction51 = or i64 %index, 1
  %1 = getelementptr %struct.spinlock, %struct.spinlock* %0, i64 %index, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %2 = getelementptr %struct.spinlock, %struct.spinlock* %0, i64 %induction51, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %index.next = add nuw i64 %index, 2
  %3 = icmp eq i64 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %conv9
  br i1 %cmp.n, label %for.end, label %do.body.preheader

do.body.preheader:                                ; preds = %for.cond.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.cond.preheader ], [ %n.vec, %middle.block ]
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.body ], [ %indvars.iv.ph, %do.body.preheader ]
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr %struct.spinlock, %struct.spinlock* %0, i64 %indvars.iv, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %conv9
  br i1 %exitcond.not, label %for.end, label %do.body, !llvm.loop !9

for.end:                                          ; preds = %do.body, %middle.block, %for.cond.preheader
  %4 = bitcast %struct.spinlock** %locks to i8**
  store i8* %call10, i8** %4, align 8
  %sub = add i32 %size.0, -1
  store i32 %sub, i32* %locks_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #0 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #4
  ret i32 %call4.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc_array(i64 noundef %n, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 4)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call6 = call fastcc i8* @kvmalloc(i64 noundef %2, i32 noundef %flags) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call6, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_bucket_spinlocks(%struct.spinlock* noundef %locks) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.spinlock* %locks to i8*
  call void @kvfree(i8* noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc(i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call i8* @kvmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef -1) #4
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = distinct !{!9, !8}
!10 = !{!"branch_weights", i32 1, i32 2000}
