; ModuleID = 'kernel/extable.c'
source_filename = "kernel/extable.c"
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
%struct.exception_table_entry = type { i32, i32 }

@text_mutex = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @text_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @text_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@main_extable_sort_needed = dso_local local_unnamed_addr global i32 1, section ".init.data", align 4
@__stop___ex_table = external dso_local global [0 x %struct.exception_table_entry], align 4
@__start___ex_table = external dso_local global [0 x %struct.exception_table_entry], align 4
@.str = private unnamed_addr constant [25 x i8] c"\015Sorting __ex_table...\0A\00", align 1
@_sinittext = external dso_local global [0 x i8], align 1
@_einittext = external dso_local global [0 x i8], align 1
@_stext = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@_sdata = external dso_local global [0 x i8], align 1
@_edata = external dso_local global [0 x i8], align 1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @sort_main_extable() local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i32, i32* @main_extable_sort_needed, align 4
  %tobool.not1 = icmp eq i32 %0, 0
  %brmerge = or i1 %tobool.not1, icmp ule ([0 x %struct.exception_table_entry]* @__stop___ex_table, [0 x %struct.exception_table_entry]* @__start___ex_table)
  br i1 %brmerge, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)) #6
  call void @sort_extable(%struct.exception_table_entry* noundef getelementptr inbounds ([0 x %struct.exception_table_entry], [0 x %struct.exception_table_entry]* @__start___ex_table, i64 0, i64 0), %struct.exception_table_entry* noundef getelementptr inbounds ([0 x %struct.exception_table_entry], [0 x %struct.exception_table_entry]* @__stop___ex_table, i64 0, i64 0)) #7
  br label %if.end

if.end:                                           ; preds = %entry, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort_extable(%struct.exception_table_entry* noundef, %struct.exception_table_entry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.exception_table_entry* @search_kernel_exception_table(i64 noundef %addr) local_unnamed_addr #3 {
entry:
  %call = call %struct.exception_table_entry* @search_extable(%struct.exception_table_entry* noundef getelementptr inbounds ([0 x %struct.exception_table_entry], [0 x %struct.exception_table_entry]* @__start___ex_table, i64 0, i64 0), i64 noundef sdiv (i64 sub (i64 ptrtoint ([0 x %struct.exception_table_entry]* @__stop___ex_table to i64), i64 ptrtoint ([0 x %struct.exception_table_entry]* @__start___ex_table to i64)), i64 8), i64 noundef %addr) #7
  ret %struct.exception_table_entry* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.exception_table_entry* @search_extable(%struct.exception_table_entry* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.exception_table_entry* @search_exception_tables(i64 noundef %addr) local_unnamed_addr #3 {
entry:
  %call = call %struct.exception_table_entry* @search_kernel_exception_table(i64 noundef %addr) #8
  ret %struct.exception_table_entry* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @init_kernel_text(i64 noundef %addr) local_unnamed_addr #4 {
entry:
  %cmp = icmp uge i64 %addr, ptrtoint ([0 x i8]* @_sinittext to i64)
  %cmp1 = icmp ult i64 %addr, ptrtoint ([0 x i8]* @_einittext to i64)
  %or.cond = and i1 %cmp, %cmp1
  %. = zext i1 %or.cond to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @core_kernel_text(i64 noundef %addr) local_unnamed_addr #5 {
entry:
  %cmp = icmp uge i64 %addr, ptrtoint ([0 x i8]* @_stext to i64)
  %cmp1 = icmp ult i64 %addr, ptrtoint ([0 x i8]* @_etext to i64)
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @system_state, align 4
  %cmp2 = icmp ult i32 %0, 2
  br i1 %cmp2, label %land.lhs.true3, label %if.end5

land.lhs.true3:                                   ; preds = %if.end
  %call = call i32 @init_kernel_text(i64 noundef %addr) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %return

if.end5:                                          ; preds = %land.lhs.true3, %if.end
  br label %return

return:                                           ; preds = %land.lhs.true3, %entry, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 1, %entry ], [ 1, %land.lhs.true3 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @core_kernel_data(i64 noundef %addr) local_unnamed_addr #4 {
entry:
  %cmp = icmp uge i64 %addr, ptrtoint ([0 x i8]* @_sdata to i64)
  %cmp1 = icmp ult i64 %addr, ptrtoint ([0 x i8]* @_edata to i64)
  %or.cond = and i1 %cmp, %cmp1
  %. = zext i1 %or.cond to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kernel_text_address(i64 noundef %addr) local_unnamed_addr #3 {
entry:
  %call = call i32 @kernel_text_address(i64 noundef %addr) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @init_kernel_text(i64 noundef %addr) #8
  %tobool2.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernel_text_address(i64 noundef %addr) local_unnamed_addr #3 {
entry:
  %call = call i32 @core_kernel_text(i64 noundef %addr) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i1 @rcu_is_watching() #7
  br i1 %call1, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @rcu_nmi_enter() #7
  call void @rcu_nmi_exit() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_nmi_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_nmi_exit() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @func_ptr_is_kernel_text(i8* noundef %ptr) local_unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %call = call i32 @core_kernel_text(i64 noundef %0) #8
  %tobool.not = icmp ne i32 %call, 0
  %spec.select = zext i1 %tobool.not to i32
  ret i32 %spec.select
}

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
