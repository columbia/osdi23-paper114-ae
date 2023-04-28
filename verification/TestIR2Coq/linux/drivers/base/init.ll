; ModuleID = 'drivers/base/init.c'
source_filename = "drivers/base/init.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @driver_init() local_unnamed_addr #0 section ".init.text" {
entry:
  %call1 = call i32 @devices_init() #2
  %call2 = call i32 @buses_init() #2
  %call3 = call i32 @classes_init() #2
  %call4 = call i32 @firmware_init() #2
  call void @of_core_init() #2
  %call6 = call i32 @platform_bus_init() #2
  call void @cpu_dev_init() #2
  call void @container_dev_init() #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devices_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @buses_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @classes_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_core_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_bus_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_dev_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @container_dev_init() local_unnamed_addr #1

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
