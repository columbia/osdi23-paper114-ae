; ModuleID = 'kernel/time/jiffies.c'
source_filename = "kernel/time/jiffies.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall1.init\22, \22a\22\09\09"
module asm "__initcall__kmod_jiffies__232_69_init_jiffies_clocksource1:\09\09\09"
module asm ".long\09init_jiffies_clocksource - .\09"
module asm ".previous\09\09\09\09\09"

%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.clocksource = type { i64 (%struct.clocksource*)*, i64, i32, i32, i64, i32, i32, i64, i8*, %struct.list_head, i32, i32, i32, i64, i32 (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, %struct.module* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque

@jiffies_lock = dso_local local_unnamed_addr global %struct.raw_spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@jiffies_seq = dso_local local_unnamed_addr global %struct.seqcount_raw_spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@__UNIQUE_ID___addressable_init_jiffies_clocksource233 = internal global i8* bitcast (i32 ()* @init_jiffies_clocksource to i8*), section ".discard.addressable", align 8
@clocksource_jiffies = internal global %struct.clocksource { i64 (%struct.clocksource*)* @jiffies_read, i64 4294967295, i32 1024000000, i32 8, i64 0, i32 0, i32 32000000, i64 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct.list_head zeroinitializer, i32 1, i32 0, i32 0, i64 0, i32 (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, %struct.module* null }, align 8
@refined_jiffies = internal global %struct.clocksource zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"refined-jiffies\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"jiffies\00", align 1
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_init_jiffies_clocksource233 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @init_jiffies_clocksource() #0 section ".init.text" {
entry:
  %call = call fastcc i32 @__clocksource_register(%struct.clocksource* noundef nonnull @clocksource_jiffies) #5
  ret i32 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local %struct.clocksource* @clocksource_default_clock() local_unnamed_addr #0 section ".init.text" {
entry:
  ret %struct.clocksource* @clocksource_jiffies
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @register_refined_jiffies(i64 noundef %cycles_per_second) local_unnamed_addr #1 {
entry:
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(152) bitcast (%struct.clocksource* @refined_jiffies to i8*), i8* noundef align 8 dereferenceable(152) bitcast (%struct.clocksource* @clocksource_jiffies to i8*), i64 152, i1 false)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.clocksource, %struct.clocksource* @refined_jiffies, i64 0, i32 8), align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.clocksource, %struct.clocksource* @refined_jiffies, i64 0, i32 10), align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.clocksource, %struct.clocksource* @refined_jiffies, i64 0, i32 10), align 8
  %add = add i64 %cycles_per_second, 125
  %div = sdiv i64 %add, 250
  %shl = shl i64 %cycles_per_second, 8
  %div1 = sdiv i64 %add, 500
  %add2 = add i64 %div1, %shl
  %conv3 = and i64 %div, 4294967295
  %div6 = udiv i64 %add2, %conv3
  %div8 = lshr i64 %div6, 1
  %conv9 = and i64 %div8, 2147483647
  %add10 = add nuw nsw i64 %conv9, 256000000000
  %conv14 = and i64 %div6, 4294967295
  %div18 = udiv i64 %add10, %conv14
  %conv20 = trunc i64 %div18 to i32
  %shl21 = shl i32 %conv20, 8
  store i32 %shl21, i32* getelementptr inbounds (%struct.clocksource, %struct.clocksource* @refined_jiffies, i64 0, i32 2), align 8
  %call = call fastcc i32 @__clocksource_register(%struct.clocksource* noundef nonnull @refined_jiffies) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__clocksource_register(%struct.clocksource* noundef %cs) unnamed_addr #1 {
entry:
  %call = call i32 @__clocksource_register_scale(%struct.clocksource* noundef %cs, i32 noundef 1, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal i64 @jiffies_read(%struct.clocksource* nocapture noundef readnone %cs) #3 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(%struct.clocksource* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nobuiltin "no-builtins" }
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
