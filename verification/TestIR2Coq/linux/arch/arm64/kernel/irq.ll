; ModuleID = 'arch/arm64/kernel/irq.c'
source_filename = "arch/arm64/kernel/irq.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.nmi_ctx = type { i64, i32 }
%struct.cpumask = type { [4 x i64] }

@handle_arch_irq = dso_local local_unnamed_addr global void (%struct.pt_regs*)* @default_handle_irq, section ".data..ro_after_init", align 8
@handle_arch_fiq = dso_local local_unnamed_addr global void (%struct.pt_regs*)* @default_handle_fiq, section ".data..ro_after_init", align 8
@.str = private unnamed_addr constant [25 x i8] c"\016Root IRQ handler: %ps\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\016Root FIQ handler: %ps\0A\00", align 1
@nmi_contexts = dso_local local_unnamed_addr global %struct.nmi_ctx zeroinitializer, section ".data..percpu", align 8
@irq_stack_ptr = dso_local global i64* null, section ".data..percpu", align 8
@irq_stack = dso_local global [2048 x i64] zeroinitializer, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [38 x i8] c"IRQ taken without a root IRQ handler\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"FIQ taken without a root FIQ handler\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal void @default_handle_irq(%struct.pt_regs* nocapture noundef readnone %regs) #0 {
entry:
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal void @default_handle_fiq(%struct.pt_regs* nocapture noundef readnone %regs) #0 {
entry:
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0)) #7
  unreachable
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @set_handle_irq(void (%struct.pt_regs*)* noundef %handle_irq) local_unnamed_addr #1 section ".init.text" {
entry:
  %0 = load void (%struct.pt_regs*)*, void (%struct.pt_regs*)** @handle_arch_irq, align 8
  %cmp.not = icmp eq void (%struct.pt_regs*)* %0, @default_handle_irq
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store void (%struct.pt_regs*)* %handle_irq, void (%struct.pt_regs*)** @handle_arch_irq, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), void (%struct.pt_regs*)* noundef %handle_irq) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @set_handle_fiq(void (%struct.pt_regs*)* noundef %handle_fiq) local_unnamed_addr #1 section ".init.text" {
entry:
  %0 = load void (%struct.pt_regs*)*, void (%struct.pt_regs*)** @handle_arch_fiq, align 8
  %cmp.not = icmp eq void (%struct.pt_regs*)* %0, @default_handle_fiq
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store void (%struct.pt_regs*)* %handle_fiq, void (%struct.pt_regs*)** @handle_arch_fiq, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), void (%struct.pt_regs*)* noundef %handle_fiq) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @init_IRQ() local_unnamed_addr #1 section ".init.text" {
entry:
  call fastcc void @init_irq_stacks() #9
  call void @irqchip_init() #10
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @init_irq_stacks() unnamed_addr #3 {
entry:
  %call20 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #11
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp21 = icmp ult i32 %call20, %0
  br i1 %cmp21, label %do.body, label %for.end

do.body:                                          ; preds = %entry, %do.body
  %call22 = phi i32 [ %call, %do.body ], [ %call20, %entry ]
  %idxprom = sext i32 %call22 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint ([2048 x i64]* @irq_stack to i64)
  %2 = inttoptr i64 %add to [2048 x i64]*
  %arraydecay = getelementptr inbounds [2048 x i64], [2048 x i64]* %2, i64 0, i64 0
  %add11 = add i64 %1, ptrtoint (i64** @irq_stack_ptr to i64)
  %3 = inttoptr i64 %add11 to i64**
  store i64* %arraydecay, i64** %3, align 8
  %call = call i32 @cpumask_next(i32 noundef %call22, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #11
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %4
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #4

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #6

attributes #0 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #8 = { cold nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
