; ModuleID = 'arch/arm64/kernel/cpu_errata.c'
source_filename = "arch/arm64/kernel/cpu_errata.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%union.anon = type { %struct.anon }
%struct.anon = type { %struct.midr_range, %struct.arm64_midr_revidr* }
%struct.midr_range = type { i32, i32, i32 }
%struct.arm64_midr_revidr = type { i32, i32 }
%struct.arm64_cpu_capabilities = type { i8*, i16, i16, {}*, void (%struct.arm64_cpu_capabilities*)*, %union.anon, %struct.arm64_cpu_capabilities* }
%struct.arm64_ftr_reg = type { i8*, i64, i64, i64, i64, %struct.arm64_ftr_override*, %struct.arm64_ftr_bits* }
%struct.arm64_ftr_override = type { i64, i64 }
%struct.arm64_ftr_bits = type { i8, i8, i8, i32, i8, i8, i64 }

@.str = private unnamed_addr constant [32 x i8] c"Mismatched cache type (CTR_EL0)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Spectre-v2\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Spectre-v4\00", align 1
@arm64_errata = dso_local local_unnamed_addr constant [4 x { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, %union.anon, %struct.arm64_cpu_capabilities* }] [{ i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, %union.anon, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i16 34, i16 33, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_mismatched_cache_type, void (%struct.arm64_cpu_capabilities*)* @cpu_enable_trap_ctr_access, %union.anon zeroinitializer, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, %union.anon, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i16 36, i16 33, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_spectre_v2, void (%struct.arm64_cpu_capabilities*)* @spectre_v2_enable_mitigation, %union.anon zeroinitializer, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, %union.anon, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i16 38, i16 33, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_spectre_v4, void (%struct.arm64_cpu_capabilities*)* @spectre_v4_enable_mitigation, %union.anon zeroinitializer, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, %union.anon, %struct.arm64_cpu_capabilities* } zeroinitializer], align 8
@arm64_ftr_reg_ctrel0 = external dso_local local_unnamed_addr global %struct.arm64_ftr_reg, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @has_mismatched_cache_type(%struct.arm64_cpu_capabilities* nocapture noundef readnone %entry1, i32 noundef %scope) #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.arm64_ftr_reg, %struct.arm64_ftr_reg* @arm64_ftr_reg_ctrel0, i64 0, i32 1), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.arm64_ftr_reg, %struct.arm64_ftr_reg* @arm64_ftr_reg_ctrel0, i64 0, i32 3), align 8
  %and = and i64 %1, %0
  %cmp.not = icmp eq i32 %scope, 1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpu_errata.c\22; .popsection; .long 14472b - 14470b; .short 66; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #3, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc i32 @read_cpuid_cachetype() #4
  %conv15 = zext i32 %call to i64
  %and16 = and i64 %0, %conv15
  %call17 = call fastcc i32 @read_cpuid_effective_cachetype() #4
  %conv18 = zext i32 %call17 to i64
  %and19 = and i64 %0, %conv18
  %cmp20 = icmp ne i64 %and19, %and
  %cmp22 = icmp ne i64 %and16, %and
  %2 = select i1 %cmp20, i1 %cmp22, i1 false
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @cpu_enable_trap_ctr_access(%struct.arm64_cpu_capabilities* nocapture noundef readonly %cap) #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.arm64_ftr_reg, %struct.arm64_ftr_reg* @arm64_ftr_reg_ctrel0, i64 0, i32 1), align 8
  %call = call fastcc i32 @read_cpuid_cachetype() #4
  %conv = zext i32 %call to i64
  %1 = load i64, i64* getelementptr inbounds (%struct.arm64_ftr_reg, %struct.arm64_ftr_reg* @arm64_ftr_reg_ctrel0, i64 0, i32 3), align 8
  %2 = xor i64 %1, %conv
  %3 = and i64 %2, %0
  %cmp.not = icmp ne i64 %3, 0
  %capability = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %cap, i64 0, i32 1
  %4 = load i16, i16* %capability, align 8
  %cmp4 = icmp eq i16 %4, 49
  %enable_uct_trap.1.off0 = select i1 %cmp4, i1 true, i1 %cmp.not
  br i1 %enable_uct_trap.1.off0, label %do.body, label %if.end18

do.body:                                          ; preds = %entry
  %5 = call i64 asm sideeffect "mrs $0, sctlr_el1", "=r"() #3, !srcloc !9
  %and9 = and i64 %5, -32769
  %cmp10.not = icmp eq i64 %and9, %5
  br i1 %cmp10.not, label %if.end18, label %do.body13

do.body13:                                        ; preds = %do.body
  call void asm sideeffect "msr sctlr_el1, ${0:x}", "rZ"(i64 %and9) #3, !srcloc !10
  br label %if.end18

if.end18:                                         ; preds = %do.body, %do.body13, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @has_spectre_v2(%struct.arm64_cpu_capabilities* noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spectre_v2_enable_mitigation(%struct.arm64_cpu_capabilities* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @has_spectre_v4(%struct.arm64_cpu_capabilities* noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spectre_v4_enable_mitigation(%struct.arm64_cpu_capabilities* noundef) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @read_cpuid_cachetype() unnamed_addr #2 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((3) << 16) | ((0) << 12) | ((0) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #3, !srcloc !11
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @read_cpuid_effective_cachetype() unnamed_addr #2 {
entry:
  %call = call fastcc i32 @read_cpuid_cachetype() #4
  %0 = and i32 %call, 268435456
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %1 = call i64 asm sideeffect "mrs $0, clidr_el1", "=r"() #3, !srcloc !12
  %2 = and i64 %1, 117440512
  %cmp = icmp eq i64 %2, 0
  %3 = and i64 %1, 954204160
  %4 = icmp eq i64 %3, 0
  %or.cond = or i1 %cmp, %4
  %or = or i32 %call, 268435456
  %spec.select = select i1 %or.cond, i32 %or, i32 %call
  br label %if.end14

if.end14:                                         ; preds = %if.then, %entry
  %ctr.1 = phi i32 [ %call, %entry ], [ %spec.select, %if.then ]
  ret i32 %ctr.1
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{i64 2153147878}
!9 = !{i64 2153148579}
!10 = !{i64 2153148749}
!11 = !{i64 2148696236, i64 2148696338, i64 2148696378, i64 2148696396, i64 2148696138, i64 2148696426, i64 2148696454, i64 2148695954, i64 2148696787}
!12 = !{i64 2148697884}
