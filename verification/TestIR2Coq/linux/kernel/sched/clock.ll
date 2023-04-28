; ModuleID = 'kernel/sched/clock.c'
source_filename = "kernel/sched/clock.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@sched_clock_running = internal global %struct.static_key_false zeroinitializer, align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @sched_clock() local_unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %1 = mul i64 %0, 4000000
  %mul = add i64 %1, -17179569184000000
  ret i64 %mul
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @sched_clock_init() local_unnamed_addr #1 section ".init.text" {
entry:
  call fastcc void @static_key_slow_inc() #4
  call fastcc void @arch_local_irq_disable() #4
  call void @generic_sched_clock_init() #5
  call fastcc void @arch_local_irq_enable() #4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_slow_inc() unnamed_addr #0 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !8

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.static_key_slow_inc, i64 0, i64 0), %struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_clock_running, i64 0, i32 0)) #5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 290; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  call fastcc void @__ll_sc_atomic_add() #5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #4
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #6, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_sched_clock_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #6, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @sched_clock_cpu(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_clock_running, i64 0, i32 0)) #4
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.end, label %return, !prof !12

if.end:                                           ; preds = %entry
  %call4 = call i64 @sched_clock() #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call4, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #3 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @running_clock() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @local_clock() #4
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @local_clock() unnamed_addr #0 {
entry:
  %call = call i64 @sched_clock() #4
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_clock_running, i64 0, i32 0, i32 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_clock_running, i64 0, i32 0, i32 0, i32 0)) #6, !srcloc !13
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2148923142}
!10 = !{i64 2149004419, i64 2149004466, i64 2149004472, i64 2149004509, i64 2149004527, i64 2149005868, i64 2149005916, i64 2149005964, i64 2149006027, i64 2149006076, i64 2149004605, i64 2149004630, i64 2149004656, i64 2149004662, i64 2149005534, i64 2149005574, i64 2149005592, i64 2149005624, i64 2149005652, i64 2149005706, i64 2149005726, i64 2149005823, i64 2149004685, i64 2149004699, i64 2149004705, i64 2149004755, i64 2149004801, i64 2149004834}
!11 = !{i64 2148994963, i64 2148995010, i64 2148995016, i64 2148995053, i64 2148995071, i64 2148996411, i64 2148996459, i64 2148996507, i64 2148996570, i64 2148996619, i64 2148995149, i64 2148995174, i64 2148995200, i64 2148995206, i64 2148996077, i64 2148996117, i64 2148996135, i64 2148996167, i64 2148996195, i64 2148996249, i64 2148996269, i64 2148996366, i64 2148995229, i64 2148995243, i64 2148995249, i64 2148995299, i64 2148995345, i64 2148995378}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2147954416, i64 2147954932, i64 2147954962, i64 2147954989, i64 2147955023, i64 2147955053}
