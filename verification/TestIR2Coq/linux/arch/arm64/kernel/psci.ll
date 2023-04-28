; ModuleID = 'arch/arm64/kernel/psci.c'
source_filename = "arch/arm64/kernel/psci.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.cpu_operations = type { i8*, i32 (i32)*, i32 (i32)*, i32 (i32)*, void ()* }
%struct.psci_operations = type { i32 ()*, i32 (i32, i64)*, i32 (i32)*, i32 (i64, i64)*, i32 (i64)*, i32 (i64, i64)*, i32 ()* }

@.str = private unnamed_addr constant [5 x i8] c"psci\00", align 1
@cpu_psci_ops = dso_local local_unnamed_addr constant %struct.cpu_operations { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (i32)* @cpu_psci_cpu_init, i32 (i32)* @cpu_psci_cpu_prepare, i32 (i32)* @cpu_psci_cpu_boot, void ()* null }, align 8
@psci_ops = external dso_local local_unnamed_addr global %struct.psci_operations, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"\013psci: no cpu_on method, not booting CPU%d\0A\00", align 1
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"\013psci: failed to boot CPU%d (%d)\0A\00", align 1

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn
define internal i32 @cpu_psci_cpu_init(i32 noundef %cpu) #0 section ".init.text" {
entry:
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @cpu_psci_cpu_prepare(i32 noundef %cpu) #1 section ".init.text" {
entry:
  %0 = load i32 (i64, i64)*, i32 (i64, i64)** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 3), align 8
  %tobool.not = icmp eq i32 (i64, i64)* %0, null
  br i1 %tobool.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef %cpu) #5
  br label %return

return:                                           ; preds = %entry, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @cpu_psci_cpu_boot(i32 noundef %cpu) #2 {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint (void ()* @secondary_entry to i64), %0
  %1 = load i32 (i64, i64)*, i32 (i64, i64)** getelementptr inbounds (%struct.psci_operations, %struct.psci_operations* @psci_ops, i64 0, i32 3), align 8
  %call = call i64 @cpu_logical_map(i32 noundef %cpu) #6
  %call1 = call i32 %1(i64 noundef %call, i64 noundef %sub) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 noundef %cpu, i32 noundef %call1) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret i32 %call1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_entry() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cpu_logical_map(i32 noundef) local_unnamed_addr #4

attributes #0 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { cold nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
