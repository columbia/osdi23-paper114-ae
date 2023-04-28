; ModuleID = 'drivers/clocksource/dummy_timer.c'
source_filename = "drivers/clocksource/dummy_timer.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init\22, \22a\22\09\09"
module asm "__initcall__kmod_dummy_timer__204_37_dummy_timer_registerearly:\09\09\09"
module asm ".long\09dummy_timer_register - .\09"
module asm ".previous\09\09\09\09\09"

%struct.clock_event_device = type { void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }
%struct.cpumask = type { [4 x i64] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque

@__UNIQUE_ID___addressable_dummy_timer_register205 = internal global i8* bitcast (i32 ()* @dummy_timer_register to i8*), section ".discard.addressable", align 8
@.str = private unnamed_addr constant [33 x i8] c"clockevents/dummy_timer:starting\00", align 1
@dummy_timer_evt = internal global %struct.clock_event_device zeroinitializer, section ".data..percpu", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"dummy_timer\00", align 1
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_dummy_timer_register205 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @dummy_timer_register() #0 section ".init.text" {
entry:
  %call = call fastcc i32 @cpuhp_setup_state() #4
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state() unnamed_addr #1 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 140, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i1 noundef true, i32 (i32)* noundef nonnull @dummy_timer_starting_cpu, i32 (i32)* noundef null, i1 noundef false) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @dummy_timer_starting_cpu(i32 noundef %cpu) #1 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.clock_event_device* @dummy_timer_evt to i64)
  %1 = inttoptr i64 %add to %struct.clock_event_device*
  %name = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %1, i64 0, i32 21
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %name, align 8
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %1, i64 0, i32 9
  store i32 19, i32* %features, align 4
  %rating = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %1, i64 0, i32 22
  store i32 100, i32* %rating, align 32
  %call = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) #4
  %cpumask = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %1, i64 0, i32 25
  store %struct.cpumask* %call, %struct.cpumask** %cpumask, align 16
  call void @clockevents_register_device(%struct.clock_event_device* noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #3 {
entry:
  %rem = and i32 %cpu, 63
  %add = add nuw nsw i32 %rem, 1
  %idxprom = zext i32 %add to i64
  %div = lshr i32 %cpu, 6
  %idx.ext = zext i32 %div to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr [65 x [4 x i64]], [65 x [4 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, i64 %idx.neg
  %0 = bitcast i64* %add.ptr to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_register_device(%struct.clock_event_device* noundef) local_unnamed_addr #2

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
