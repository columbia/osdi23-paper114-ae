; ModuleID = 'arch/arm64/kernel/topology.c'
source_filename = "arch/arm64/kernel/topology.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall1.init\22, \22a\22\09\09"
module asm "__initcall__kmod_topology__176_304_init_amu_fie1:\09\09\09"
module asm ".long\09init_amu_fie - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpu_topology = type { i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.cpumask = type { [4 x i64] }

@cpu_topology = external dso_local local_unnamed_addr global [256 x %struct.cpu_topology], align 8
@arch_core_cycles_prev = internal global i64 0, section ".data..percpu", align 8
@arch_const_cycles_prev = internal global i64 0, section ".data..percpu", align 8
@__UNIQUE_ID___addressable_init_amu_fie177 = internal global i8* bitcast (i32 ()* @init_amu_fie to i8*), section ".discard.addressable", align 8
@amu_fie_cpus = internal global [1 x %struct.cpumask] zeroinitializer, align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_init_amu_fie177 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @store_cpu_topology(i32 noundef %cpuid) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpuid to i64
  %package_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 2
  %0 = load i32, i32* %package_id, align 8
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %topology_populated

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @read_cpuid_mpidr() #7
  %and = and i64 %call, 1073741824
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %thread_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 0
  store i32 -1, i32* %thread_id, align 8
  %core_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 1
  store i32 %cpuid, i32* %core_id, align 4
  store i32 0, i32* %package_id, align 8
  br label %topology_populated

topology_populated:                               ; preds = %entry, %if.end2
  call void @update_siblings_masks(i32 noundef %cpuid) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %topology_populated
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @read_cpuid_mpidr() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((0) << 8) | ((5) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #9, !srcloc !8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_siblings_masks(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @update_freq_counters_refs() local_unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %call = call fastcc i64 @__kern_my_cpu_offset() #10
  %add = add i64 %call, ptrtoint (i64* @arch_core_cycles_prev to i64)
  %0 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_write_64(i8* noundef %0, i64 noundef 0) #10
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %call17 = call fastcc i64 @__kern_my_cpu_offset() #10
  %add18 = add i64 %call17, ptrtoint (i64* @arch_const_cycles_prev to i64)
  %1 = inttoptr i64 %add18 to i8*
  call fastcc void @__percpu_write_64(i8* noundef %1, i64 noundef 0) #10
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__percpu_write_64(i8* noundef %ptr, i64 noundef %val) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr to i64*
  store volatile i64 %val, i64* %0, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #4 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #11, !srcloc !13
  ret i64 %2
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @init_amu_fie() #5 section ".init.text" {
entry:
  call fastcc void @zalloc_cpumask_var() #10
  ret i32 0
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zalloc_cpumask_var() unnamed_addr #0 {
entry:
  call fastcc void @cpumask_clear() #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear() unnamed_addr #0 {
entry:
  call fastcc void @bitmap_zero() #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero() unnamed_addr #0 {
entry:
  %call = call i8* @memset(i8* noundef bitcast ([1 x %struct.cpumask]* @amu_fie_cpus to i8*), i32 noundef 0, i64 noundef 32) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree nounwind readonly }
attributes #7 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind readonly }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"frame-pointer", i32 1}
!7 = !{!"clang version 14.0.0"}
!8 = !{i64 2148628654, i64 2148628756, i64 2148628796, i64 2148628814, i64 2148628556, i64 2148628844, i64 2148628872, i64 2148628372, i64 2148629205}
!9 = !{i64 2152280881}
!10 = !{i64 2152281773}
!11 = !{i64 2152286693}
!12 = !{i64 2152287595}
!13 = !{i64 2149036522, i64 2149036569, i64 2149036575, i64 2149036612, i64 2149036630, i64 2149037557, i64 2149037605, i64 2149037653, i64 2149037716, i64 2149037765, i64 2149036708, i64 2149036733, i64 2149036759, i64 2149036765, i64 2149036802, i64 2149036808, i64 2149036858, i64 2149036904, i64 2149036937}
