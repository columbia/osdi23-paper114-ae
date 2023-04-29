; ModuleID = 'lib/ratelimit.c'
source_filename = "lib/ratelimit.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }

@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [31 x i8] c"\014%s: %d callbacks suppressed\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef %rs, i8* noundef %func) local_unnamed_addr #0 {
entry:
  %interval = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 1
  %0 = load i32, i32* %interval, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %do.body1

do.body1:                                         ; preds = %entry
  %call = call fastcc i64 @arch_local_irq_save() #3
  %lock = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 0
  %call5 = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %lock) #3
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body8, label %if.end24

do.body8:                                         ; preds = %do.body1
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #3
  br label %cleanup

if.end24:                                         ; preds = %do.body1
  %begin = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 5
  %1 = load i64, i64* %begin, align 8
  %tobool25.not = icmp eq i64 %1, 0
  br i1 %tobool25.not, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  %2 = load volatile i64, i64* @jiffies, align 64
  store i64 %2, i64* %begin, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24
  %3 = phi i64 [ %2, %if.then26 ], [ %1, %if.end24 ]
  %4 = load i32, i32* %interval, align 4
  %conv31 = sext i32 %4 to i64
  %add = add i64 %3, %conv31
  %5 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %add, %5
  %cmp32 = icmp slt i64 %sub, 0
  br i1 %cmp32, label %if.then34, label %if.end50

if.then34:                                        ; preds = %if.end28
  %missed = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 4
  %6 = load i32, i32* %missed, align 8
  %tobool35.not = icmp eq i32 %6, 0
  br i1 %tobool35.not, label %if.end48, label %if.then36

if.then36:                                        ; preds = %if.then34
  %flags37 = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 6
  %7 = load i64, i64* %flags37, align 8
  %and = and i64 %7, 1
  %tobool38.not = icmp eq i64 %and, 0
  br i1 %tobool38.not, label %do.end42, label %if.end48

do.end42:                                         ; preds = %if.then36
  %call45 = call i32 (i8*, ...) @_printk_deferred(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef %func, i32 noundef %6) #4
  store i32 0, i32* %missed, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then36, %do.end42, %if.then34
  %8 = load volatile i64, i64* @jiffies, align 64
  store i64 %8, i64* %begin, align 8
  %printed = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 3
  store i32 0, i32* %printed, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.end28
  %burst = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 2
  %9 = load i32, i32* %burst, align 8
  %tobool51.not = icmp eq i32 %9, 0
  br i1 %tobool51.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end50
  %printed53 = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 3
  %10 = load i32, i32* %printed53, align 4
  %cmp54 = icmp sgt i32 %9, %10
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %land.lhs.true
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %printed53, align 4
  br label %do.body61

if.else:                                          ; preds = %land.lhs.true, %if.end50
  %missed58 = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 4
  %11 = load i32, i32* %missed58, align 8
  %inc59 = add i32 %11, 1
  store i32 %inc59, i32* %missed58, align 8
  br label %do.body61

do.body61:                                        ; preds = %if.then56, %if.else
  %ret.0 = phi i32 [ 1, %if.then56 ], [ 0, %if.else ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %entry, %do.body61
  %retval.0 = phi i32 [ %ret.0, %do.body61 ], [ 1, %entry ], [ 0, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #3
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !7
  %call = call fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #5, !srcloc !9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #3
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #3
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #5, !srcloc !11
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #5, !srcloc !12
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #3
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !13

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #5, !srcloc !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %queued_spin_trylock.exit, !prof !15

if.end.i:                                         ; preds = %entry
  %1 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %1, i32 noundef 0) #6
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  %lnot.ext9.i = zext i1 %cmp.not.i.i.i to i32
  br label %queued_spin_trylock.exit

queued_spin_trylock.exit:                         ; preds = %entry, %if.end.i
  %retval.0.i = phi i32 [ %lnot.ext9.i, %if.end.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #5, !srcloc !16
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #5, !srcloc !17
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { cold nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
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
!7 = !{i64 2149661598}
!8 = !{i64 2149665655}
!9 = !{i64 2148926700, i64 2148926747, i64 2148926753, i64 2148926790, i64 2148926808, i64 2148928119, i64 2148928167, i64 2148928215, i64 2148928278, i64 2148928327, i64 2148926886, i64 2148926911, i64 2148926937, i64 2148926943, i64 2148927785, i64 2148927825, i64 2148927843, i64 2148927875, i64 2148927903, i64 2148927957, i64 2148927977, i64 2148928074, i64 2148926966, i64 2148926980, i64 2148926986, i64 2148927036, i64 2148927082, i64 2148927115}
!10 = !{i64 2149691982}
!11 = !{i64 2148920687, i64 2148920734, i64 2148920740, i64 2148920777, i64 2148920795, i64 2148922106, i64 2148922154, i64 2148922202, i64 2148922265, i64 2148922314, i64 2148920873, i64 2148920898, i64 2148920924, i64 2148920930, i64 2148921772, i64 2148921812, i64 2148921830, i64 2148921862, i64 2148921890, i64 2148921944, i64 2148921964, i64 2148922061, i64 2148920953, i64 2148920967, i64 2148920973, i64 2148921023, i64 2148921069, i64 2148921102}
!12 = !{i64 2148922866, i64 2148922913, i64 2148922919, i64 2148922956, i64 2148922974, i64 2148923917, i64 2148923965, i64 2148924013, i64 2148924076, i64 2148924125, i64 2148923052, i64 2148923077, i64 2148923103, i64 2148923109, i64 2148923146, i64 2148923152, i64 2148923202, i64 2148923248, i64 2148923281}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2148914984, i64 2148915031, i64 2148915037, i64 2148915074, i64 2148915092, i64 2148916433, i64 2148916481, i64 2148916529, i64 2148916592, i64 2148916641, i64 2148915170, i64 2148915195, i64 2148915221, i64 2148915227, i64 2148916099, i64 2148916139, i64 2148916157, i64 2148916189, i64 2148916217, i64 2148916271, i64 2148916291, i64 2148916388, i64 2148915250, i64 2148915264, i64 2148915270, i64 2148915320, i64 2148915366, i64 2148915399}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148028235, i64 2148028268, i64 2148028321, i64 2148028380, i64 2148028414, i64 2148028469, i64 2148028498, i64 2148028518}
!17 = !{i64 2149635269}
