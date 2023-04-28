; ModuleID = 'kernel/time/tick-common.c'
source_filename = "kernel/time/tick-common.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.tick_device = type { %struct.clock_event_device*, i32 }
%struct.clock_event_device = type { void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }
%struct.cpumask = type { [4 x i64] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pt_regs = type { %union.anon.1, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.1 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }

@tick_do_timer_cpu = dso_local local_unnamed_addr global i32 -2, section ".data..read_mostly", align 4
@tick_cpu_device = dso_local global %struct.tick_device zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@jiffies_seq = external dso_local global %struct.seqcount_raw_spinlock, align 4
@tick_next_period = dso_local local_unnamed_addr global i64 0, align 8
@jiffies_lock = external dso_local global %struct.raw_spinlock, align 4
@__irq_regs = external dso_local global %struct.pt_regs*, section ".data..percpu", align 8
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.tick_device* @tick_get_device(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.tick_device* @tick_cpu_device to i64)
  %1 = inttoptr i64 %add to %struct.tick_device*
  ret %struct.tick_device* %1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i32 @tick_is_oneshot_available() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call, ptrtoint (%struct.tick_device* @tick_cpu_device to i64)
  %0 = inttoptr i64 %add to %struct.clock_event_device**
  %1 = load %struct.clock_event_device*, %struct.clock_event_device** %0, align 8
  %tobool.not = icmp eq %struct.clock_event_device* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %1, i64 0, i32 9
  %2 = load i32, i32* %features, align 4
  %and = and i32 %2, 2
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %and11 = lshr i32 %2, 3
  %and11.lobit = and i32 %and11, 1
  %3 = xor i32 %and11.lobit, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #1 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #10, !srcloc !8
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tick_handle_periodic(%struct.clock_event_device* noundef %dev) local_unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %next_event = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 3
  %2 = load i64, i64* %next_event, align 8
  call fastcc void @tick_periodic(i32 noundef %1) #9
  %call2 = call fastcc i1 @clockevent_state_oneshot(%struct.clock_event_device* noundef %dev) #9
  br i1 %call2, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %add320 = add i64 %2, 4000000
  %call421 = call i32 @clockevents_program_event(%struct.clock_event_device* noundef %dev, i64 noundef %add320, i1 noundef false) #11
  %tobool.not22 = icmp eq i32 %call421, 0
  br i1 %tobool.not22, label %cleanup, label %if.end6

if.end6:                                          ; preds = %for.cond.preheader, %if.end10
  %add323 = phi i64 [ %add3, %if.end10 ], [ %add320, %for.cond.preheader ]
  %call7 = call i32 @timekeeping_valid_for_hres() #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call fastcc void @tick_periodic(i32 noundef %1) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %add3 = add i64 %add323, 4000000
  %call4 = call i32 @clockevents_program_event(%struct.clock_event_device* noundef %dev, i64 noundef %add3, i1 noundef false) #11
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

cleanup:                                          ; preds = %if.end10, %for.cond.preheader, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tick_periodic(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %0 = load i32, i32* @tick_do_timer_cpu, align 4
  %cmp = icmp eq i32 %0, %cpu
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_lock() #9
  call fastcc void @do_write_seqcount_begin() #9
  %1 = load i64, i64* @tick_next_period, align 8
  %add = add i64 %1, 4000000
  store i64 %add, i64* @tick_next_period, align 8
  call void @do_timer(i64 noundef 1) #11
  call fastcc void @do_write_seqcount_end() #9
  call fastcc void @__raw_spin_unlock() #9
  call void @update_wall_time() #11
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry
  %call10 = call fastcc %struct.pt_regs* @get_irq_regs() #9
  %2 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %call10, i64 0, i32 0, i32 0, i32 3
  %3 = load i64, i64* %2, align 8
  %and = and i64 %3, 15
  %cmp11 = icmp eq i64 %and, 0
  %conv = zext i1 %cmp11 to i32
  call void @update_process_times(i32 noundef %conv) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @clockevent_state_oneshot(%struct.clock_event_device* nocapture noundef readonly %dev) unnamed_addr #0 {
entry:
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 8
  %0 = load i32, i32* %state_use_accessors, align 8
  %cmp = icmp eq i32 %0, 3
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_program_event(%struct.clock_event_device* noundef, i64 noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timekeeping_valid_for_hres() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tick_setup_periodic(%struct.clock_event_device* noundef %dev, i32 noundef %broadcast) local_unnamed_addr #2 {
entry:
  call void @tick_set_periodic_handler(%struct.clock_event_device* noundef %dev, i32 noundef %broadcast) #11
  %call = call fastcc i32 @tick_device_is_functional(%struct.clock_event_device* noundef %dev) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end17, label %if.end

if.end:                                           ; preds = %entry
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 9
  %0 = load i32, i32* %features, align 4
  %and = and i32 %0, 1
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @clockevents_switch_state(%struct.clock_event_device* noundef %dev, i32 noundef 2) #11
  br label %if.end17

do.body:                                          ; preds = %if.end, %while.end
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.seqcount_raw_spinlock, %struct.seqcount_raw_spinlock* @jiffies_seq, i64 0, i32 0, i32 0), align 4
  %and629 = and i32 %1, 1
  %tobool7.not30 = icmp eq i32 %and629, 0
  br i1 %tobool7.not30, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #9
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.seqcount_raw_spinlock, %struct.seqcount_raw_spinlock* @jiffies_seq, i64 0, i32 0, i32 0), align 4
  %and6 = and i32 %2, 1
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %1, %do.body ], [ %2, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #12, !srcloc !9
  %3 = load i64, i64* @tick_next_period, align 8
  %call11 = call fastcc i32 @do_read_seqcount_retry(i32 noundef %.lcssa) #9
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  call void @clockevents_switch_state(%struct.clock_event_device* noundef %dev, i32 noundef 3) #11
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %do.end
  %next.0 = phi i64 [ %3, %do.end ], [ %add, %for.cond ]
  %call13 = call i32 @clockevents_program_event(%struct.clock_event_device* noundef %dev, i64 noundef %next.0, i1 noundef false) #11
  %tobool14.not = icmp eq i32 %call13, 0
  %add = add i64 %next.0, 4000000
  br i1 %tobool14.not, label %if.end17, label %for.cond

if.end17:                                         ; preds = %for.cond, %entry, %land.lhs.true
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_set_periodic_handler(%struct.clock_event_device* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @tick_device_is_functional(%struct.clock_event_device* nocapture noundef readonly %dev) unnamed_addr #0 {
entry:
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 9
  %0 = load i32, i32* %features, align 4
  %and = lshr i32 %0, 4
  %and.lobit = and i32 %and, 1
  %1 = xor i32 %and.lobit, 1
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_switch_state(%struct.clock_event_device* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #2 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #12, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_seqcount_retry(i32 noundef %start) unnamed_addr #2 {
entry:
  call void asm sideeffect "dmb ishld", "~{memory}"() #12, !srcloc !11
  %call = call fastcc i32 @do___read_seqcount_retry(i32 noundef %start) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tick_install_replacement(%struct.clock_event_device* noundef %newdev) local_unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call, ptrtoint (%struct.tick_device* @tick_cpu_device to i64)
  %0 = inttoptr i64 %add to %struct.tick_device*
  %add10 = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add10 to i32*
  %2 = load i32, i32* %1, align 4
  %evtdev = getelementptr inbounds %struct.tick_device, %struct.tick_device* %0, i64 0, i32 0
  %3 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  call void @clockevents_exchange_device(%struct.clock_event_device* noundef %3, %struct.clock_event_device* noundef %newdev) #11
  %call11 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %2) #9
  call fastcc void @tick_setup_device(%struct.tick_device* noundef %0, %struct.clock_event_device* noundef %newdev, i32 noundef %2, %struct.cpumask* noundef nonnull %call11) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_exchange_device(%struct.clock_event_device* noundef, %struct.clock_event_device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tick_setup_device(%struct.tick_device* nocapture noundef %td, %struct.clock_event_device* noundef %newdev, i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #2 {
entry:
  %evtdev = getelementptr inbounds %struct.tick_device, %struct.tick_device* %td, i64 0, i32 0
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  %tobool.not = icmp eq %struct.clock_event_device* %0, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @tick_do_timer_cpu, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i32 %cpu, i32* @tick_do_timer_cpu, align 4
  %call = call i64 @ktime_get() #11
  store i64 %call, i64* @tick_next_period, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %mode = getelementptr inbounds %struct.tick_device, %struct.tick_device* %td, i64 0, i32 1
  store i32 0, i32* %mode, align 8
  br label %if.end7

if.else:                                          ; preds = %entry
  %event_handler = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 0
  store void (%struct.clock_event_device*)* @clockevents_handle_noop, void (%struct.clock_event_device*)** %event_handler, align 64
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  store %struct.clock_event_device* %newdev, %struct.clock_event_device** %evtdev, align 8
  %cpumask9 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %newdev, i64 0, i32 25
  %2 = load %struct.cpumask*, %struct.cpumask** %cpumask9, align 16
  %call10 = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %2, %struct.cpumask* noundef %cpumask) #9
  br i1 %call10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end7
  %irq = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %newdev, i64 0, i32 23
  %3 = load i32, i32* %irq, align 4
  %call12 = call i32 @irq_set_affinity(i32 noundef %3, %struct.cpumask* noundef %cpumask) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7
  %call14 = call i32 @tick_device_uses_broadcast(%struct.clock_event_device* noundef %newdev, i32 noundef %cpu) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.end13
  %mode18 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %td, i64 0, i32 1
  %4 = load i32, i32* %mode18, align 8
  %cmp19 = icmp eq i32 %4, 0
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.end17
  call void @tick_setup_periodic(%struct.clock_event_device* noundef %newdev, i32 noundef 0) #9
  br label %cleanup

if.else21:                                        ; preds = %if.end17
  call fastcc void @tick_setup_oneshot() #9
  unreachable

cleanup:                                          ; preds = %if.then20, %if.end13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #4 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @tick_check_replacement(%struct.clock_event_device* noundef %curdev, %struct.clock_event_device* nocapture noundef readonly %newdev) local_unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc i1 @tick_check_percpu(%struct.clock_event_device* noundef %curdev, %struct.clock_event_device* noundef %newdev, i32 noundef %1) #9
  br i1 %call2, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call3 = call fastcc i1 @tick_check_preferred(%struct.clock_event_device* noundef %curdev, %struct.clock_event_device* noundef %newdev) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %call3, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @tick_check_percpu(%struct.clock_event_device* noundef readonly %curdev, %struct.clock_event_device* nocapture noundef readonly %newdev, i32 noundef %cpu) unnamed_addr #2 {
entry:
  %cpumask = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %newdev, i64 0, i32 25
  %0 = load %struct.cpumask*, %struct.cpumask** %cpumask, align 16
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %0) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.cpumask*, %struct.cpumask** %cpumask, align 16
  %call2 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) #9
  %call3 = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %1, %struct.cpumask* noundef nonnull %call2) #9
  br i1 %call3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %newdev, i64 0, i32 23
  %2 = load i32, i32* %irq, align 4
  %cmp = icmp sgt i32 %2, -1
  br i1 %cmp, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %call7 = call i32 @irq_can_set_affinity(i32 noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %if.end5
  %tobool11.not = icmp eq %struct.clock_event_device* %curdev, null
  br i1 %tobool11.not, label %if.end17, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end10
  %cpumask13 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %curdev, i64 0, i32 25
  %3 = load %struct.cpumask*, %struct.cpumask** %cpumask13, align 16
  %call15 = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %3, %struct.cpumask* noundef nonnull %call2) #9
  br i1 %call15, label %return, label %if.end17

if.end17:                                         ; preds = %land.lhs.true12, %if.end10
  br label %return

return:                                           ; preds = %land.lhs.true12, %land.lhs.true, %if.end, %entry, %if.end17
  %retval.0 = phi i1 [ true, %if.end17 ], [ false, %entry ], [ true, %if.end ], [ false, %land.lhs.true ], [ false, %land.lhs.true12 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @tick_check_preferred(%struct.clock_event_device* noundef readonly %curdev, %struct.clock_event_device* nocapture noundef readonly %newdev) unnamed_addr #2 {
entry:
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %newdev, i64 0, i32 9
  %0 = load i32, i32* %features, align 4
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  %tobool1.not = icmp eq %struct.clock_event_device* %curdev, null
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %features2 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %curdev, i64 0, i32 9
  %1 = load i32, i32* %features2, align 4
  %and3 = and i32 %1, 2
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %return

if.end9:                                          ; preds = %entry
  br i1 %tobool1.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end9
  %rating = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %newdev, i64 0, i32 22
  %2 = load i32, i32* %rating, align 32
  %rating11 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %curdev, i64 0, i32 22
  %3 = load i32, i32* %rating11, align 32
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %return, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %cpumask = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %curdev, i64 0, i32 25
  %4 = load %struct.cpumask*, %struct.cpumask** %cpumask, align 16
  %cpumask12 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %newdev, i64 0, i32 25
  %5 = load %struct.cpumask*, %struct.cpumask** %cpumask12, align 16
  %call13 = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %4, %struct.cpumask* noundef %5) #9
  %lnot = xor i1 %call13, true
  br label %return

return:                                           ; preds = %if.then, %if.end9, %lor.lhs.false, %lor.rhs, %land.lhs.true
  %retval.0 = phi i1 [ false, %land.lhs.true ], [ true, %lor.lhs.false ], [ true, %if.end9 ], [ %lnot, %lor.rhs ], [ true, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tick_check_new_device(%struct.clock_event_device* noundef %newdev) local_unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add9 = add i64 %2, ptrtoint (%struct.tick_device* @tick_cpu_device to i64)
  %3 = inttoptr i64 %add9 to %struct.tick_device*
  %evtdev = getelementptr inbounds %struct.tick_device, %struct.tick_device* %3, i64 0, i32 0
  %4 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  %call10 = call i1 @tick_check_replacement(%struct.clock_event_device* noundef %4, %struct.clock_event_device* noundef %newdev) #9
  br i1 %call10, label %if.end, label %out_bc

if.end:                                           ; preds = %entry
  %call14 = call i32 @tick_is_broadcast_device(%struct.clock_event_device* noundef %4) #11
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @clockevents_shutdown(%struct.clock_event_device* noundef %4) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end
  %curdev.0 = phi %struct.clock_event_device* [ null, %if.then15 ], [ %4, %if.end ]
  call void @clockevents_exchange_device(%struct.clock_event_device* noundef %curdev.0, %struct.clock_event_device* noundef %newdev) #11
  %call17 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %1) #9
  call fastcc void @tick_setup_device(%struct.tick_device* noundef %3, %struct.clock_event_device* noundef %newdev, i32 noundef %1, %struct.cpumask* noundef nonnull %call17) #9
  br label %cleanup

out_bc:                                           ; preds = %entry
  call void @tick_install_broadcast_device(%struct.clock_event_device* noundef %newdev, i32 noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %out_bc
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_is_broadcast_device(%struct.clock_event_device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_shutdown(%struct.clock_event_device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_install_broadcast_device(%struct.clock_event_device* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tick_broadcast_oneshot_control(i32 noundef %state) local_unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call, ptrtoint (%struct.tick_device* @tick_cpu_device to i64)
  %0 = inttoptr i64 %add to %struct.tick_device*
  %evtdev = getelementptr inbounds %struct.tick_device, %struct.tick_device* %0, i64 0, i32 0
  %1 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %1, i64 0, i32 9
  %2 = load i32, i32* %features, align 4
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @__tick_broadcast_oneshot_control(i32 noundef %state) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tick_broadcast_oneshot_control(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tick_suspend_local() local_unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call, ptrtoint (%struct.tick_device* @tick_cpu_device to i64)
  %0 = inttoptr i64 %add to %struct.tick_device*
  %evtdev = getelementptr inbounds %struct.tick_device, %struct.tick_device* %0, i64 0, i32 0
  %1 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  call void @clockevents_shutdown(%struct.clock_event_device* noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tick_resume_local() local_unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call, ptrtoint (%struct.tick_device* @tick_cpu_device to i64)
  %0 = inttoptr i64 %add to %struct.tick_device*
  %call2 = call i1 @tick_resume_check_broadcast() #11
  %evtdev = getelementptr inbounds %struct.tick_device, %struct.tick_device* %0, i64 0, i32 0
  %1 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  %call3 = call i32 @clockevents_tick_resume(%struct.clock_event_device* noundef %1) #11
  br i1 %call2, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %mode = getelementptr inbounds %struct.tick_device, %struct.tick_device* %0, i64 0, i32 1
  %2 = load i32, i32* %mode, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %3 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  call void @tick_setup_periodic(%struct.clock_event_device* noundef %3, i32 noundef 0) #9
  br label %if.end6

if.else:                                          ; preds = %if.then
  call fastcc void @tick_resume_oneshot() #9
  unreachable

if.end6:                                          ; preds = %if.then4, %entry
  call void @hrtimers_resume_local() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @tick_resume_check_broadcast() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_tick_resume(%struct.clock_event_device* noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @tick_resume_oneshot() unnamed_addr #5 {
entry:
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/tick-internal.h\22; .popsection; .long 14472b - 14470b; .short 117; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !12
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimers_resume_local() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tick_suspend() local_unnamed_addr #2 {
entry:
  call void @tick_suspend_local() #9
  call void @tick_suspend_broadcast() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_suspend_broadcast() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tick_resume() local_unnamed_addr #2 {
entry:
  call void @tick_resume_broadcast() #11
  call void @tick_resume_local() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_resume_broadcast() local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @tick_init() local_unnamed_addr #6 section ".init.text" {
entry:
  call void @tick_broadcast_init() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_broadcast_init() local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  call fastcc void @do_raw_spin_lock() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin() unnamed_addr #2 {
entry:
  call fastcc void @do_write_seqcount_begin_nested() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_timer(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_end() unnamed_addr #2 {
entry:
  call fastcc void @do_raw_write_seqcount_end() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #2 {
entry:
  call fastcc void @do_raw_spin_unlock() #9
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_wall_time() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_process_times(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.pt_regs* @get_irq_regs() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call, ptrtoint (%struct.pt_regs** @__irq_regs to i64)
  %0 = inttoptr i64 %add to %struct.pt_regs**
  %1 = load %struct.pt_regs*, %struct.pt_regs** %0, align 8
  ret %struct.pt_regs* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #2 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !15

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @jiffies_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #2 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #2 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @jiffies_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @jiffies_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #12, !srcloc !16
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin_nested() unnamed_addr #2 {
entry:
  call fastcc void @do_raw_write_seqcount_begin() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_begin() unnamed_addr #2 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.seqcount_raw_spinlock, %struct.seqcount_raw_spinlock* @jiffies_seq, i64 0, i32 0, i32 0), align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.seqcount_raw_spinlock, %struct.seqcount_raw_spinlock* @jiffies_seq, i64 0, i32 0, i32 0), align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_end() unnamed_addr #2 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !18
  %0 = load i32, i32* getelementptr inbounds (%struct.seqcount_raw_spinlock, %struct.seqcount_raw_spinlock* @jiffies_seq, i64 0, i32 0, i32 0), align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.seqcount_raw_spinlock, %struct.seqcount_raw_spinlock* @jiffies_seq, i64 0, i32 0, i32 0), align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #2 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.raw_spinlock* @jiffies_lock to i8*), i8 0) #12, !srcloc !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @do___read_seqcount_retry(i32 noundef %start) unnamed_addr #8 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.seqcount_raw_spinlock, %struct.seqcount_raw_spinlock* @jiffies_seq, i64 0, i32 0, i32 0), align 4
  %cmp = icmp ne i32 %0, %start
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_handle_noop(%struct.clock_event_device* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_equal(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #2 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_equal(i64* noundef %arraydecay, i64* noundef %arraydecay2) #9
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_device_uses_broadcast(%struct.clock_event_device* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @tick_setup_oneshot() unnamed_addr #5 {
entry:
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/tick-internal.h\22; .popsection; .long 14472b - 14470b; .short 116; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !20
  unreachable
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_equal(i64* noundef %src1, i64* noundef %src2) unnamed_addr #2 {
entry:
  %0 = bitcast i64* %src1 to i8*
  %1 = bitcast i64* %src2 to i8*
  %call = call i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef 32) #11
  %tobool9.not = icmp eq i32 %call, 0
  %lnot.ext11 = zext i1 %tobool9.not to i32
  ret i32 %lnot.ext11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #8 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* %cpumask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_can_set_affinity(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree nounwind readonly }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind readonly }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }

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
!8 = !{i64 2149131933, i64 2149131980, i64 2149131986, i64 2149132023, i64 2149132041, i64 2149132968, i64 2149133016, i64 2149133064, i64 2149133127, i64 2149133176, i64 2149132119, i64 2149132144, i64 2149132170, i64 2149132176, i64 2149132213, i64 2149132219, i64 2149132269, i64 2149132315, i64 2149132348}
!9 = !{i64 2155116717}
!10 = !{i64 1877123}
!11 = !{i64 2150275953}
!12 = !{i64 2155093900}
!13 = !{i64 2149749809}
!14 = !{i64 2149757090}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148096904, i64 2148096937, i64 2148096990, i64 2148097049, i64 2148097083, i64 2148097138, i64 2148097167, i64 2148097187}
!17 = !{i64 2150276194}
!18 = !{i64 2150276435}
!19 = !{i64 2149703938}
!20 = !{i64 2155092428}
