; ModuleID = 'lib/flex_proportions.c'
source_filename = "lib/flex_proportions.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.seqcount = type { i32 }
%struct.fprop_local_single = type { i64, i32, %struct.raw_spinlock }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }

@fprop_global_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@fprop_local_init_percpu.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fprop_global_init(%struct.fprop_global* noundef %p, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %period = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 1
  store i32 0, i32* %period, align 8
  %events = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 0
  %call = call i32 @__percpu_counter_init(%struct.percpu_counter* noundef %events, i64 noundef 1, i32 noundef %gfp, %struct.lock_class_key* noundef nonnull @fprop_global_init.__key) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sequence = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 2
  call fastcc void @__seqcount_init(%struct.seqcount* noundef %sequence) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(%struct.percpu_counter* noundef, i64 noundef, i32 noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @__seqcount_init(%struct.seqcount* nocapture noundef writeonly %s) unnamed_addr #3 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  store i32 0, i32* %sequence, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fprop_global_destroy(%struct.fprop_global* noundef %p) local_unnamed_addr #0 {
entry:
  %events = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 0
  call void @percpu_counter_destroy(%struct.percpu_counter* noundef %events) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(%struct.percpu_counter* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @fprop_new_period(%struct.fprop_global* noundef %p, i32 noundef %periods) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #10
  %events4 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 0
  %call5 = call fastcc i64 @percpu_counter_sum(%struct.percpu_counter* noundef %events4) #10
  %cmp6 = icmp slt i64 %call5, 2
  br i1 %cmp6, label %cleanup, label %do.body22

do.body22:                                        ; preds = %entry
  %sequence = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 2
  call fastcc void @do_write_seqcount_begin(%struct.seqcount* noundef %sequence) #10
  %cmp31 = icmp slt i32 %periods, 64
  %sh_prom = zext i32 %periods to i64
  %shr76 = lshr i64 %call5, %sh_prom
  %sub = select i1 %cmp31, i64 %shr76, i64 0
  %events.0.neg = sub nsw i64 %sub, %call5
  call fastcc void @percpu_counter_add(%struct.percpu_counter* noundef %events4, i64 noundef %events.0.neg) #10
  %period = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 1
  %0 = load i32, i32* %period, align 8
  %add = add i32 %0, %periods
  store i32 %add, i32* %period, align 8
  call fastcc void @do_write_seqcount_end(%struct.seqcount* noundef %sequence) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body22
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #10
  %1 = xor i1 %cmp6, true
  ret i1 %1
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
define internal fastcc i64 @percpu_counter_sum(%struct.percpu_counter* noundef %fbc) unnamed_addr #0 {
entry:
  %call = call i64 @__percpu_counter_sum(%struct.percpu_counter* noundef %fbc) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #11, !srcloc !7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call fastcc void @do_write_seqcount_begin_nested(%struct.seqcount* noundef %s) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_counter_add(%struct.percpu_counter* noundef %fbc, i64 noundef %amount) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(%struct.percpu_counter* noundef %fbc, i64 noundef %amount, i32 noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_end(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_write_seqcount_end(%struct.seqcount* noundef %s) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local i32 @fprop_local_init_single(%struct.fprop_local_single* nocapture noundef writeonly %pl) local_unnamed_addr #3 {
entry:
  %events = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %pl, i64 0, i32 0
  store i64 0, i64* %events, align 8
  %period = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %pl, i64 0, i32 1
  store i32 0, i32* %period, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %pl, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @fprop_local_destroy_single(%struct.fprop_local_single* nocapture noundef %pl) local_unnamed_addr #4 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__fprop_inc_single(%struct.fprop_global* noundef %p, %struct.fprop_local_single* noundef %pl) local_unnamed_addr #0 {
entry:
  call fastcc void @fprop_reflect_period_single(%struct.fprop_global* noundef %p, %struct.fprop_local_single* noundef %pl) #10
  %events = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %pl, i64 0, i32 0
  %0 = load i64, i64* %events, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %events, align 8
  %events1 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 0
  call fastcc void @percpu_counter_add(%struct.percpu_counter* noundef %events1, i64 noundef 1) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fprop_reflect_period_single(%struct.fprop_global* nocapture noundef readonly %p, %struct.fprop_local_single* noundef %pl) unnamed_addr #0 {
entry:
  %period1 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 1
  %0 = load i32, i32* %period1, align 8
  %period2 = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %pl, i64 0, i32 1
  %1 = load i32, i32* %period2, align 8
  %cmp = icmp eq i32 %1, %0
  br i1 %cmp, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %pl, i64 0, i32 2
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #10
  %2 = load i32, i32* %period2, align 8
  %cmp5.not = icmp ugt i32 %0, %2
  br i1 %cmp5.not, label %if.end17, label %cleanup.sink.split

if.end17:                                         ; preds = %do.body
  %sub = sub i32 %0, %2
  %cmp19 = icmp ult i32 %sub, 64
  %events = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %pl, i64 0, i32 0
  br i1 %cmp19, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end17
  %3 = load i64, i64* %events, align 8
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %3, %sh_prom
  br label %if.end25

if.end25:                                         ; preds = %if.end17, %if.then21
  %.sink = phi i64 [ %shr, %if.then21 ], [ 0, %if.end17 ]
  store i64 %.sink, i64* %events, align 8
  store i32 %0, i32* %period2, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body, %if.end25
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fprop_fraction_single(%struct.fprop_global* noundef %p, %struct.fprop_local_single* noundef %pl, i64* nocapture noundef writeonly %numerator, i64* nocapture noundef writeonly %denominator) local_unnamed_addr #0 {
entry:
  %sequence = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 2
  %events = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %pl, i64 0, i32 0
  %events3 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %while.end, %entry
  %call25 = call fastcc i32 @__seqprop_sequence(%struct.seqcount* noundef %sequence) #10
  %and26 = and i32 %call25, 1
  %tobool.not27 = icmp eq i32 %and26, 0
  br i1 %tobool.not27, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #10
  %call = call fastcc i32 @__seqprop_sequence(%struct.seqcount* noundef %sequence) #10
  %and = and i32 %call, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %call.lcssa = phi i32 [ %call25, %do.body ], [ %call, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #11, !srcloc !8
  call fastcc void @fprop_reflect_period_single(%struct.fprop_global* noundef %p, %struct.fprop_local_single* noundef %pl) #10
  %0 = load i64, i64* %events, align 8
  %call4 = call fastcc i64 @percpu_counter_read_positive(%struct.percpu_counter* noundef %events3) #10
  %call7 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %sequence, i32 noundef %call.lcssa) #10
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %cmp.not = icmp sgt i64 %call4, %0
  %tobool9.not = icmp eq i64 %0, 0
  %. = select i1 %tobool9.not, i64 1, i64 %0
  %den.0 = select i1 %cmp.not, i64 %call4, i64 %.
  store i64 %den.0, i64* %denominator, align 8
  store i64 %0, i64* %numerator, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @__seqprop_sequence(%struct.seqcount* noundef %s) unnamed_addr #5 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load volatile i32, i32* %sequence, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #11, !srcloc !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @percpu_counter_read_positive(%struct.percpu_counter* noundef %fbc) unnamed_addr #5 {
entry:
  %count = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 1
  %0 = load volatile i64, i64* %count, align 8
  %1 = icmp sgt i64 %0, 0
  %. = select i1 %1, i64 %0, i64 0
  ret i64 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishld", "~{memory}"() #11, !srcloc !10
  %call = call fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fprop_local_init_percpu(%struct.fprop_local_percpu* noundef %pl, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %events = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %pl, i64 0, i32 0
  %call = call i32 @__percpu_counter_init(%struct.percpu_counter* noundef %events, i64 noundef 0, i32 noundef %gfp, %struct.lock_class_key* noundef nonnull @fprop_local_init_percpu.__key) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %period = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %pl, i64 0, i32 1
  store i32 0, i32* %period, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %pl, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fprop_local_destroy_percpu(%struct.fprop_local_percpu* noundef %pl) local_unnamed_addr #0 {
entry:
  %events = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %pl, i64 0, i32 0
  call void @percpu_counter_destroy(%struct.percpu_counter* noundef %events) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__fprop_inc_percpu(%struct.fprop_global* noundef %p, %struct.fprop_local_percpu* noundef %pl) local_unnamed_addr #0 {
entry:
  call fastcc void @fprop_reflect_period_percpu(%struct.fprop_global* noundef %p, %struct.fprop_local_percpu* noundef %pl) #10
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call = call fastcc i32 @__ilog2_u32(i32 noundef %0) #12
  %events = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %pl, i64 0, i32 0
  %add = shl i32 %call, 3
  %mul = add i32 %add, 8
  call void @percpu_counter_add_batch(%struct.percpu_counter* noundef %events, i64 noundef 1, i32 noundef %mul) #9
  %events5 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 0
  call fastcc void @percpu_counter_add(%struct.percpu_counter* noundef %events5, i64 noundef 1) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fprop_reflect_period_percpu(%struct.fprop_global* nocapture noundef readonly %p, %struct.fprop_local_percpu* noundef %pl) unnamed_addr #0 {
entry:
  %period1 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 1
  %0 = load i32, i32* %period1, align 8
  %period2 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %pl, i64 0, i32 1
  %1 = load i32, i32* %period2, align 8
  %cmp = icmp eq i32 %1, %0
  br i1 %cmp, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %pl, i64 0, i32 2
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #10
  %2 = load i32, i32* %period2, align 8
  %cmp5.not = icmp ugt i32 %0, %2
  br i1 %cmp5.not, label %if.end17, label %cleanup.sink.split

if.end17:                                         ; preds = %do.body
  %sub = sub i32 %0, %2
  %cmp19 = icmp ult i32 %sub, 64
  %events = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %pl, i64 0, i32 0
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end17
  %call22 = call fastcc i64 @percpu_counter_read(%struct.percpu_counter* noundef %events) #10
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %call29 = call fastcc i32 @__ilog2_u32(i32 noundef %3) #12
  %add = shl i32 %call29, 3
  %mul = add i32 %add, 8
  %mul32 = mul i32 %mul, %3
  %conv33 = zext i32 %mul32 to i64
  %cmp34 = icmp slt i64 %call22, %conv33
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then21
  %call38 = call fastcc i64 @percpu_counter_sum(%struct.percpu_counter* noundef %events) #10
  %.pre = load i32, i32* %period2, align 8
  %.pre96 = load i32, i32* @nr_cpu_ids, align 4
  %.pre97 = sub i32 %0, %.pre
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then21
  %sub43.pre-phi = phi i32 [ %.pre97, %if.then36 ], [ %sub, %if.then21 ]
  %4 = phi i32 [ %.pre96, %if.then36 ], [ %3, %if.then21 ]
  %val.0 = phi i64 [ %call38, %if.then36 ], [ %call22, %if.then21 ]
  %sh_prom = zext i32 %sub43.pre-phi to i64
  %shr = ashr i64 %val.0, %sh_prom
  %add44 = sub i64 %shr, %val.0
  %call56 = call fastcc i32 @__ilog2_u32(i32 noundef %4) #12
  %add59 = shl i32 %call56, 3
  %mul60 = add i32 %add59, 8
  call void @percpu_counter_add_batch(%struct.percpu_counter* noundef %events, i64 noundef %add44, i32 noundef %mul60) #9
  br label %if.end62

if.else:                                          ; preds = %if.end17
  call void @percpu_counter_set(%struct.percpu_counter* noundef %events, i64 noundef 0) #9
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.end39
  store i32 %0, i32* %period2, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body, %if.end62
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(%struct.percpu_counter* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u32(i32 noundef %n) unnamed_addr #6 {
entry:
  %tobool.not.i = icmp eq i32 %n, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %n, i1 false) #11, !range !11
  %narrow.i.op = sub nsw i32 31, %0
  %sub = select i1 %tobool.not.i, i32 -1, i32 %narrow.i.op
  ret i32 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fprop_fraction_percpu(%struct.fprop_global* noundef %p, %struct.fprop_local_percpu* noundef %pl, i64* nocapture noundef writeonly %numerator, i64* nocapture noundef writeonly %denominator) local_unnamed_addr #0 {
entry:
  %sequence = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 2
  %events = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %pl, i64 0, i32 0
  %events4 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %p, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %while.end, %entry
  %call26 = call fastcc i32 @__seqprop_sequence(%struct.seqcount* noundef %sequence) #10
  %and27 = and i32 %call26, 1
  %tobool.not28 = icmp eq i32 %and27, 0
  br i1 %tobool.not28, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #10
  %call = call fastcc i32 @__seqprop_sequence(%struct.seqcount* noundef %sequence) #10
  %and = and i32 %call, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %call.lcssa = phi i32 [ %call26, %do.body ], [ %call, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #11, !srcloc !12
  call fastcc void @fprop_reflect_period_percpu(%struct.fprop_global* noundef %p, %struct.fprop_local_percpu* noundef %pl) #10
  %call3 = call fastcc i64 @percpu_counter_read_positive(%struct.percpu_counter* noundef %events) #10
  %call5 = call fastcc i64 @percpu_counter_read_positive(%struct.percpu_counter* noundef %events4) #10
  %call8 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %sequence, i32 noundef %call.lcssa) #10
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %cmp.not = icmp sgt i64 %call5, %call3
  %tobool10.not = icmp eq i64 %call3, 0
  %.call3 = select i1 %tobool10.not, i64 1, i64 %call3
  %den.0 = select i1 %cmp.not, i64 %call5, i64 %.call3
  store i64 %den.0, i64* %denominator, align 8
  store i64 %call3, i64* %numerator, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__fprop_inc_percpu_max(%struct.fprop_global* noundef %p, %struct.fprop_local_percpu* noundef %pl, i32 noundef %max_frac) local_unnamed_addr #0 {
entry:
  %numerator = alloca i64, align 8
  %denominator = alloca i64, align 8
  %cmp = icmp ult i32 %max_frac, 1024
  br i1 %cmp, label %if.then, label %if.end9, !prof !13

if.then:                                          ; preds = %entry
  %conv13 = zext i32 %max_frac to i64
  %0 = bitcast i64* %numerator to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 0, i64* %numerator, align 8, !annotation !14
  %1 = bitcast i64* %denominator to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  store i64 0, i64* %denominator, align 8, !annotation !14
  call void @fprop_fraction_percpu(%struct.fprop_global* noundef %p, %struct.fprop_local_percpu* noundef %pl, i64* noundef nonnull %numerator, i64* noundef nonnull %denominator) #10
  %2 = load i64, i64* %numerator, align 8
  %3 = load i64, i64* %denominator, align 8
  %mul = mul i64 %3, %conv13
  %shr = lshr i64 %mul, 10
  %cmp5.not = icmp ugt i64 %2, %shr
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  br i1 %cmp5.not, label %return, label %if.end9

if.end9:                                          ; preds = %if.then, %entry
  call void @__fprop_inc_percpu(%struct.fprop_global* noundef %p, %struct.fprop_local_percpu* noundef %pl) #10
  br label %return

return:                                           ; preds = %if.then, %if.end9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #11, !srcloc !15
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #11, !srcloc !16
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #10
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !13

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #11, !srcloc !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(%struct.percpu_counter* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin_nested(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_write_seqcount_begin(%struct.seqcount* noundef %s) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_begin(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load i32, i32* %sequence, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %sequence, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_end(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !19
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load i32, i32* %sequence, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %sequence, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #10
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !22

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #9
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #11, !srcloc !23
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #11, !srcloc !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #5 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load volatile i32, i32* %sequence, align 4
  %cmp = icmp ne i32 %0, %start
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @percpu_counter_read(%struct.percpu_counter* nocapture noundef readonly %fbc) unnamed_addr #7 {
entry:
  %count = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %fbc, i64 0, i32 1
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_set(%struct.percpu_counter* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2148926729, i64 2148926776, i64 2148926782, i64 2148926819, i64 2148926837, i64 2148932209, i64 2148932257, i64 2148932305, i64 2148932368, i64 2148932417, i64 2148926915, i64 2148926940, i64 2148926966, i64 2148926972, i64 2148931875, i64 2148931915, i64 2148931933, i64 2148931965, i64 2148931993, i64 2148932047, i64 2148932067, i64 2148932164, i64 2148926995, i64 2148927009, i64 2148927015, i64 2148927065, i64 2148927111, i64 2148927144}
!8 = !{i64 2150477567}
!9 = !{i64 1703886}
!10 = !{i64 2149763435}
!11 = !{i32 0, i32 33}
!12 = !{i64 2150482697}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"auto-init"}
!15 = !{i64 2148920716, i64 2148920763, i64 2148920769, i64 2148920806, i64 2148920824, i64 2148922135, i64 2148922183, i64 2148922231, i64 2148922294, i64 2148922343, i64 2148920902, i64 2148920927, i64 2148920953, i64 2148920959, i64 2148921801, i64 2148921841, i64 2148921859, i64 2148921891, i64 2148921919, i64 2148921973, i64 2148921993, i64 2148922090, i64 2148920982, i64 2148920996, i64 2148921002, i64 2148921052, i64 2148921098, i64 2148921131}
!16 = !{i64 2148922895, i64 2148922942, i64 2148922948, i64 2148922985, i64 2148923003, i64 2148923946, i64 2148923994, i64 2148924042, i64 2148924105, i64 2148924154, i64 2148923081, i64 2148923106, i64 2148923132, i64 2148923138, i64 2148923175, i64 2148923181, i64 2148923231, i64 2148923277, i64 2148923310}
!17 = !{i64 2148915013, i64 2148915060, i64 2148915066, i64 2148915103, i64 2148915121, i64 2148916462, i64 2148916510, i64 2148916558, i64 2148916621, i64 2148916670, i64 2148915199, i64 2148915224, i64 2148915250, i64 2148915256, i64 2148916128, i64 2148916168, i64 2148916186, i64 2148916218, i64 2148916246, i64 2148916300, i64 2148916320, i64 2148916417, i64 2148915279, i64 2148915293, i64 2148915299, i64 2148915349, i64 2148915395, i64 2148915428}
!18 = !{i64 2149763676}
!19 = !{i64 2149763917}
!20 = !{i64 2149354889}
!21 = !{i64 2149380732}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2147889362, i64 2147889395, i64 2147889448, i64 2147889507, i64 2147889541, i64 2147889596, i64 2147889625, i64 2147889645}
!24 = !{i64 2149169401}
