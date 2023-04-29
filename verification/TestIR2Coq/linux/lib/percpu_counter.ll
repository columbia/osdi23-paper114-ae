; ModuleID = 'lib/percpu_counter.c'
source_filename = "lib/percpu_counter.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_percpu_counter__206_257_percpu_counter_startup6:\09\09\09"
module asm ".long\09percpu_counter_startup - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpumask = type { [4 x i64] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.lock_class_key = type {}

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@percpu_counter_batch = dso_local local_unnamed_addr global i32 32, section ".data..read_mostly", align 4
@__UNIQUE_ID___addressable_percpu_counter_startup207 = internal global i8* bitcast (i32 ()* @percpu_counter_startup to i8*), section ".discard.addressable", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"lib/percpu_cnt:online\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"lib/percpu_cnt:dead\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_percpu_counter_startup207 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @percpu_counter_set(%struct.percpu_counter* noundef %fbc, i64 noundef %amount) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #10
  %call128 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #11
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp229 = icmp ult i32 %call128, %0
  br i1 %cmp229, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %counters = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call130 = phi i32 [ %call128, %for.body.lr.ph ], [ %call1, %for.body ]
  %1 = load i32*, i32** %counters, align 8
  %2 = ptrtoint i32* %1 to i64
  %idxprom = sext i32 %call130 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to i32*
  store i32 0, i32* %4, align 4
  %call1 = call i32 @cpumask_next(i32 noundef %call130, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #11
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call1, %5
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %count = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 1
  store i64 %amount, i64* %count, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #10
  ret i64 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #10
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @percpu_counter_add_batch(%struct.percpu_counter* noundef %fbc, i64 noundef %amount, i32 noundef %batch) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %counters = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 2
  %0 = load i32*, i32** %counters, align 8
  %1 = ptrtoint i32* %0 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #10
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %conv = sext i32 %3 to i64
  %add9 = add i64 %conv, %amount
  %4 = call i64 @llvm.abs.i64(i64 %add9, i1 false)
  %conv12 = sext i32 %batch to i64
  %cmp13.not = icmp slt i64 %4, %conv12
  br i1 %cmp13.not, label %do.body58, label %if.then

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 0
  %call19 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #10
  %count22 = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 1
  %5 = load i64, i64* %count22, align 8
  %add23 = add i64 %5, %add9
  store i64 %add23, i64* %count22, align 8
  %6 = load i32*, i32** %counters, align 8
  %7 = ptrtoint i32* %6 to i64
  %call41 = call fastcc i64 @__kern_my_cpu_offset() #10
  %add42 = add i64 %call41, %7
  %8 = inttoptr i64 %add42 to i32*
  %9 = load i32, i32* %8, align 4
  %add43 = sub i32 %9, %3
  store i32 %add43, i32* %8, align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call19) #10
  br label %if.end

do.body58:                                        ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %10 = load i32*, i32** %counters, align 8
  %11 = ptrtoint i32* %10 to i64
  %call70 = call fastcc i64 @__kern_my_cpu_offset() #10
  %add71 = add i64 %call70, %11
  %12 = inttoptr i64 %add71 to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %12, i64 noundef %amount) #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %do.body58, %if.then
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #2 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #13, !srcloc !14
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %conv = trunc i64 %val to i32
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #12, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @percpu_counter_sync(%struct.percpu_counter* noundef %fbc) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #10
  %counters = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 2
  %0 = load i32*, i32** %counters, align 8
  %1 = ptrtoint i32* %0 to i64
  %call12 = call fastcc i64 @__kern_my_cpu_offset() #10
  %add = add i64 %call12, %1
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %conv14 = sext i32 %3 to i64
  %count15 = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 1
  %4 = load i64, i64* %count15, align 8
  %add16 = add i64 %4, %conv14
  store i64 %add16, i64* %count15, align 8
  %call32 = call fastcc i64 @__kern_my_cpu_offset() #10
  %add33 = add i64 %call32, %1
  %5 = inttoptr i64 %add33 to i32*
  %6 = load i32, i32* %5, align 4
  %add34 = sub i32 %6, %3
  store i32 %add34, i32* %5, align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__percpu_counter_sum(%struct.percpu_counter* noundef %fbc) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #10
  %count = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 1
  %0 = load i64, i64* %count, align 8
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %call132 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #11
  %cmp233 = icmp ult i32 %call132, %1
  br i1 %cmp233, label %for.body.lr.ph, label %do.body11

for.body.lr.ph:                                   ; preds = %entry
  %counters = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 2
  %2 = load i32*, i32** %counters, align 8
  %3 = ptrtoint i32* %2 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call135 = phi i32 [ %call132, %for.body.lr.ph ], [ %call1, %for.body ]
  %ret.034 = phi i64 [ %0, %for.body.lr.ph ], [ %add10, %for.body ]
  %idxprom = sext i32 %call135 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, %3
  %5 = inttoptr i64 %add to i32*
  %6 = load i32, i32* %5, align 4
  %conv9 = sext i32 %6 to i64
  %add10 = add i64 %ret.034, %conv9
  %call1 = call i32 @cpumask_next(i32 noundef %call135, %struct.cpumask* noundef nonnull @__cpu_online_mask) #11
  %cmp2 = icmp ult i32 %call1, %1
  br i1 %cmp2, label %for.body, label %do.body11

do.body11:                                        ; preds = %for.body, %entry
  %ret.0.lcssa = phi i64 [ %0, %entry ], [ %add10, %for.body ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #10
  ret i64 %ret.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__percpu_counter_init(%struct.percpu_counter* nocapture noundef writeonly %fbc, i64 noundef %amount, i32 noundef %gfp, %struct.lock_class_key* nocapture noundef readnone %key) local_unnamed_addr #0 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %count = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 1
  store i64 %amount, i64* %count, align 8
  %call = call i8* @__alloc_percpu_gfp(i64 noundef 4, i64 noundef 4, i32 noundef %gfp) #14
  %counters = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 2
  %0 = bitcast i32** %counters to i8**
  store i8* %call, i8** %0, align 8
  %tobool.not = icmp eq i8* %call, null
  %spec.select = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu_gfp(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @percpu_counter_destroy(%struct.percpu_counter* nocapture noundef %fbc) local_unnamed_addr #0 {
entry:
  %counters = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 2
  %0 = load i32*, i32** %counters, align 8
  %tobool.not = icmp eq i32* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  call void @free_percpu(i8* noundef nonnull %1) #14
  store i32* null, i32** %counters, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__percpu_counter_compare(%struct.percpu_counter* noundef %fbc, i64 noundef %rhs, i32 noundef %batch) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @percpu_counter_read(%struct.percpu_counter* noundef %fbc) #10
  %sub = sub i64 %call, %rhs
  %0 = call i64 @llvm.abs.i64(i64 %sub, i1 false)
  %call2 = call fastcc i32 @num_online_cpus() #10
  %mul = mul i32 %call2, %batch
  %conv = zext i32 %mul to i64
  %cmp3 = icmp sgt i64 %0, %conv
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp5 = icmp sgt i64 %call, %rhs
  %. = select i1 %cmp5, i32 1, i32 -1
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = call fastcc i64 @percpu_counter_sum(%struct.percpu_counter* noundef %fbc) #10
  %cmp9 = icmp sgt i64 %call8, %rhs
  br i1 %cmp9, label %cleanup, label %if.else12

if.else12:                                        ; preds = %if.end
  %cmp13 = icmp slt i64 %call8, %rhs
  %.28 = sext i1 %cmp13 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else12, %if.end, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ 1, %if.end ], [ %.28, %if.else12 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @percpu_counter_read(%struct.percpu_counter* nocapture noundef readonly %fbc) unnamed_addr #4 {
entry:
  %count = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 1
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @percpu_counter_sum(%struct.percpu_counter* noundef %fbc) unnamed_addr #0 {
entry:
  %call = call i64 @__percpu_counter_sum(%struct.percpu_counter* noundef %fbc) #10
  ret i64 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @percpu_counter_startup() #6 section ".init.text" {
entry:
  %call = call fastcc i32 @cpuhp_setup_state() #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/percpu_counter.c\22; .popsection; .long 14472b - 14470b; .short 250; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call14 = call fastcc i32 @cpuhp_setup_state_nocalls() #10
  %cmp16 = icmp slt i32 %call14, 0
  br i1 %cmp16, label %if.then30, label %if.end31, !prof !16

if.then30:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/percpu_counter.c\22; .popsection; .long 14472b - 14470b; .short 254; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !18
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #10
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #14
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !19

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #14
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #12, !srcloc !20
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #12, !srcloc !21
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #10
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !16

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #12, !srcloc !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #12, !srcloc !23
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #12, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #12, !srcloc !25
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state() unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 192, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i1 noundef true, i32 (i32)* noundef nonnull @compute_batch_value, i32 (i32)* noundef null, i1 noundef false) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal i32 @compute_batch_value(i32 noundef %cpu) #5 {
entry:
  %call = call fastcc i32 @num_online_cpus() #10
  %mul = shl i32 %call, 1
  %0 = icmp sgt i32 %mul, 32
  %cond = select i1 %0, i32 %mul, i32 32
  store i32 %cond, i32* @percpu_counter_batch, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state_nocalls() unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 31, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i1 noundef false, i32 (i32)* noundef null, i32 (i32)* noundef nonnull @percpu_counter_cpu_dead, i1 noundef false) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @percpu_counter_cpu_dead(i32 noundef %cpu) #8 {
entry:
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree nounwind readonly }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2149351599}
!9 = !{i64 2149377442}
!10 = !{i64 2152283754}
!11 = !{i64 2152301985}
!12 = !{i64 2152302807}
!13 = !{i64 2152303979}
!14 = !{i64 2148939745, i64 2148939792, i64 2148939798, i64 2148939835, i64 2148939853, i64 2148940780, i64 2148940828, i64 2148940876, i64 2148940939, i64 2148940988, i64 2148939931, i64 2148939956, i64 2148939982, i64 2148939988, i64 2148940025, i64 2148940031, i64 2148940081, i64 2148940127, i64 2148940160}
!15 = !{i64 2148964635, i64 2148964677, i64 2148964736, i64 2148964789}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2152324784}
!18 = !{i64 2152326389}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2148917426, i64 2148917473, i64 2148917479, i64 2148917516, i64 2148917534, i64 2148918845, i64 2148918893, i64 2148918941, i64 2148919004, i64 2148919053, i64 2148917612, i64 2148917637, i64 2148917663, i64 2148917669, i64 2148918511, i64 2148918551, i64 2148918569, i64 2148918601, i64 2148918629, i64 2148918683, i64 2148918703, i64 2148918800, i64 2148917692, i64 2148917706, i64 2148917712, i64 2148917762, i64 2148917808, i64 2148917841}
!21 = !{i64 2148919605, i64 2148919652, i64 2148919658, i64 2148919695, i64 2148919713, i64 2148920656, i64 2148920704, i64 2148920752, i64 2148920815, i64 2148920864, i64 2148919791, i64 2148919816, i64 2148919842, i64 2148919848, i64 2148919885, i64 2148919891, i64 2148919941, i64 2148919987, i64 2148920020}
!22 = !{i64 2148911723, i64 2148911770, i64 2148911776, i64 2148911813, i64 2148911831, i64 2148913172, i64 2148913220, i64 2148913268, i64 2148913331, i64 2148913380, i64 2148911909, i64 2148911934, i64 2148911960, i64 2148911966, i64 2148912838, i64 2148912878, i64 2148912896, i64 2148912928, i64 2148912956, i64 2148913010, i64 2148913030, i64 2148913127, i64 2148911989, i64 2148912003, i64 2148912009, i64 2148912059, i64 2148912105, i64 2148912138}
!23 = !{i64 2147886072, i64 2147886105, i64 2147886158, i64 2147886217, i64 2147886251, i64 2147886306, i64 2147886335, i64 2147886355}
!24 = !{i64 2149166111}
!25 = !{i64 2148923439, i64 2148923486, i64 2148923492, i64 2148923529, i64 2148923547, i64 2148928919, i64 2148928967, i64 2148929015, i64 2148929078, i64 2148929127, i64 2148923625, i64 2148923650, i64 2148923676, i64 2148923682, i64 2148928585, i64 2148928625, i64 2148928643, i64 2148928675, i64 2148928703, i64 2148928757, i64 2148928777, i64 2148928874, i64 2148923705, i64 2148923719, i64 2148923725, i64 2148923775, i64 2148923821, i64 2148923854}
