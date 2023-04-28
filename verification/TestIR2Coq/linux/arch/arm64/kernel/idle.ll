; ModuleID = 'arch/arm64/kernel/idle.c'
source_filename = "arch/arm64/kernel/idle.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @cpu_do_idle() local_unnamed_addr #0 section ".noinstr.text" {
entry:
  call void asm sideeffect "dsb sy", "~{memory}"() #2, !srcloc !7
  call void asm sideeffect "wfi", "~{memory}"() #2, !srcloc !8
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @arch_cpu_idle() local_unnamed_addr #0 section ".noinstr.text" {
entry:
  call void @cpu_do_idle() #3
  call fastcc void @arch_local_irq_enable() #3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #2, !srcloc !9
  ret void
}

attributes #0 = { noinline noprofile nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2151417726}
!8 = !{i64 2151417772}
!9 = !{i64 2148960018, i64 2148960065, i64 2148960071, i64 2148960108, i64 2148960126, i64 2148961466, i64 2148961514, i64 2148961562, i64 2148961625, i64 2148961674, i64 2148960204, i64 2148960229, i64 2148960255, i64 2148960261, i64 2148961132, i64 2148961172, i64 2148961190, i64 2148961222, i64 2148961250, i64 2148961304, i64 2148961324, i64 2148961421, i64 2148960284, i64 2148960298, i64 2148960304, i64 2148960354, i64 2148960400, i64 2148960433}
