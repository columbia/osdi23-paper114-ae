; ModuleID = 'drivers/base/syscore.c'
source_filename = "drivers/base/syscore.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.syscore_ops = type { %struct.list_head, i32 ()*, void ()*, void ()* }

@syscore_ops_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @syscore_ops_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @syscore_ops_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@syscore_ops_list = internal global %struct.list_head { %struct.list_head* @syscore_ops_list, %struct.list_head* @syscore_ops_list }, align 8
@initcall_debug = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [19 x i8] c"\016PM: Calling %pS\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @register_syscore_ops(%struct.syscore_ops* noundef %ops) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @syscore_ops_lock) #4
  %node = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %ops, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %node) #5
  call void @mutex_unlock(%struct.mutex* noundef nonnull @syscore_ops_lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new) unnamed_addr #2 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @syscore_ops_list, i64 0, i32 1), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unregister_syscore_ops(%struct.syscore_ops* nocapture noundef %ops) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @syscore_ops_lock) #4
  %node = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %ops, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %node) #5
  call void @mutex_unlock(%struct.mutex* noundef nonnull @syscore_ops_lock) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #2 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #5
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @syscore_shutdown() local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @syscore_ops_lock) #4
  %ops.024 = load %struct.syscore_ops*, %struct.syscore_ops** bitcast (%struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @syscore_ops_list, i64 0, i32 1) to %struct.syscore_ops**), align 8
  %node25 = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %ops.024, i64 0, i32 0
  %cmp.not26 = icmp eq %struct.list_head* %node25, @syscore_ops_list
  br i1 %cmp.not26, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %ops.027 = phi %struct.syscore_ops* [ %ops.0, %for.inc ], [ %ops.024, %entry ]
  %shutdown = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %ops.027, i64 0, i32 3
  %0 = load void ()*, void ()** %shutdown, align 8
  %tobool.not = icmp eq void ()* %0, null
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %1 = load i8, i8* @initcall_debug, align 1, !range !7
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %if.then
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), void ()* noundef nonnull %0) #6
  %.pre = load void ()*, void ()** %shutdown, align 8
  br label %if.end

if.end:                                           ; preds = %do.end5, %if.then
  %2 = phi void ()* [ %.pre, %do.end5 ], [ %0, %if.then ]
  call void %2() #4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end
  %prev = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %ops.027, i64 0, i32 0, i32 1
  %3 = bitcast %struct.list_head** %prev to %struct.syscore_ops**
  %ops.0 = load %struct.syscore_ops*, %struct.syscore_ops** %3, align 8
  %node = getelementptr inbounds %struct.syscore_ops, %struct.syscore_ops* %ops.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node, @syscore_ops_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @syscore_ops_lock) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev) unnamed_addr #2 {
entry:
  store %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @syscore_ops_list, i64 0, i32 1), align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* @syscore_ops_list, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #2 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #5
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #2 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i8 0, i8 2}
