; ModuleID = 'kernel/time/tick-broadcast.c'
source_filename = "kernel/time/tick-broadcast.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.tick_device = type { %struct.clock_event_device*, i32 }
%struct.clock_event_device = type { void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }
%struct.cpumask = type { [4 x i64] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }

@tick_broadcast_device = internal global %struct.tick_device zeroinitializer, align 8
@tick_broadcast_mask = internal global [1 x %struct.cpumask] zeroinitializer, align 8
@tick_broadcast_lock = internal global %struct.raw_spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@tick_broadcast_on = internal global [1 x %struct.cpumask] zeroinitializer, align 8
@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@tick_broadcast_forced = internal unnamed_addr global i1 false, align 4
@tmpmask = internal global [1 x %struct.cpumask] zeroinitializer, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local nonnull %struct.tick_device* @tick_get_broadcast_device() local_unnamed_addr #0 {
entry:
  ret %struct.tick_device* @tick_broadcast_device
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local %struct.cpumask* @tick_get_broadcast_mask() local_unnamed_addr #0 {
entry:
  ret %struct.cpumask* getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local noalias %struct.clock_event_device* @tick_get_wakeup_device(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  ret %struct.clock_event_device* null
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tick_install_broadcast_device(%struct.clock_event_device* noundef %dev, i32 noundef %cpu) local_unnamed_addr #1 {
entry:
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 0), align 8
  %call1 = call fastcc i1 @tick_check_broadcast_device(%struct.clock_event_device* noundef %0, %struct.clock_event_device* noundef %dev) #11
  br i1 %call1, label %if.end3, label %cleanup

if.end3:                                          ; preds = %entry
  call void @clockevents_exchange_device(%struct.clock_event_device* noundef %0, %struct.clock_event_device* noundef %dev) #12
  %tobool.not = icmp eq %struct.clock_event_device* %0, null
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  %event_handler = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 0
  store void (%struct.clock_event_device*)* @clockevents_handle_noop, void (%struct.clock_event_device*)** %event_handler, align 64
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3
  store %struct.clock_event_device* %dev, %struct.clock_event_device** getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 0), align 8
  %call9 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0)) #11
  br i1 %call9, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.end8
  call fastcc void @tick_broadcast_start_periodic(%struct.clock_event_device* noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then10, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @tick_check_broadcast_device(%struct.clock_event_device* noundef readonly %curdev, %struct.clock_event_device* nocapture noundef readonly %newdev) unnamed_addr #2 {
entry:
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %newdev, i64 0, i32 9
  %0 = load i32, i32* %features, align 4
  %1 = and i32 %0, 88
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.end, label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 1), align 8
  %cmp = icmp eq i32 %3, 1
  %and9 = and i32 %0, 2
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond22 = select i1 %cmp, i1 %tobool10.not, i1 false
  br i1 %or.cond22, label %return, label %if.end12

if.end12:                                         ; preds = %if.end
  %tobool13.not = icmp eq %struct.clock_event_device* %curdev, null
  br i1 %tobool13.not, label %return, label %lor.rhs

lor.rhs:                                          ; preds = %if.end12
  %rating = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %newdev, i64 0, i32 22
  %4 = load i32, i32* %rating, align 32
  %rating14 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %curdev, i64 0, i32 22
  %5 = load i32, i32* %rating14, align 32
  %cmp15 = icmp sgt i32 %4, %5
  br label %return

return:                                           ; preds = %if.end12, %lor.rhs, %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end ], [ true, %if.end12 ], [ %cmp15, %lor.rhs ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_exchange_device(%struct.clock_event_device* noundef, %struct.clock_event_device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_handle_noop(%struct.clock_event_device* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_empty(%struct.cpumask* noundef %srcp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i1 @bitmap_empty(i64* noundef %arraydecay) #11
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tick_broadcast_start_periodic(%struct.clock_event_device* noundef %bc) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.clock_event_device* %bc, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @tick_setup_periodic(%struct.clock_event_device* noundef nonnull %bc, i32 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @tick_is_broadcast_device(%struct.clock_event_device* noundef readnone %dev) local_unnamed_addr #2 {
entry:
  %tobool = icmp ne %struct.clock_event_device* %dev, null
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 0), align 8
  %cmp = icmp eq %struct.clock_event_device* %0, %dev
  %1 = select i1 %tobool, i1 %cmp, i1 false
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tick_broadcast_update_freq(%struct.clock_event_device* noundef %dev, i32 noundef %freq) local_unnamed_addr #1 {
entry:
  %call = call i32 @tick_is_broadcast_device(%struct.clock_event_device* noundef %dev) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_lock() #11
  %call1 = call i32 @__clockevents_update_freq(%struct.clock_event_device* noundef %dev, i32 noundef %freq) #12
  call fastcc void @__raw_spin_unlock() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call1, %if.then ], [ -19, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !8
  call fastcc void @do_raw_spin_lock() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clockevents_update_freq(%struct.clock_event_device* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock() #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tick_device_uses_broadcast(%struct.clock_event_device* nocapture noundef %dev, i32 noundef %cpu) local_unnamed_addr #1 {
entry:
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 0), align 8
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #11
  %call1 = call fastcc i32 @tick_device_is_functional(%struct.clock_event_device* noundef %dev) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %event_handler = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 0
  store void (%struct.clock_event_device*)* @tick_handle_periodic, void (%struct.clock_event_device*)** %event_handler, align 64
  call fastcc void @tick_device_setup_broadcast_func(%struct.clock_event_device* noundef %dev) #11
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0)) #11
  %1 = load i32, i32* getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 1), align 8
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call fastcc void @tick_broadcast_start_periodic(%struct.clock_event_device* noundef %0) #11
  br label %do.body29

if.else:                                          ; preds = %if.then
  call fastcc void @tick_broadcast_setup_oneshot() #11
  unreachable

if.else5:                                         ; preds = %entry
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 9
  %2 = load i32, i32* %features, align 4
  %and = and i32 %2, 8
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else5
  call fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0)) #11
  br label %if.end9

if.else8:                                         ; preds = %if.else5
  call fastcc void @tick_device_setup_broadcast_func(%struct.clock_event_device* noundef %dev) #11
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  %call10 = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_on, i64 0, i64 0)) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0)) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9
  %3 = load i32, i32* getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 1), align 8
  %cond = icmp eq i32 %3, 0
  br i1 %cond, label %sw.bb14, label %do.body29

sw.bb14:                                          ; preds = %if.end13
  %call15 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0)) #11
  %tobool17 = icmp ne %struct.clock_event_device* %0, null
  %or.cond = select i1 %call15, i1 %tobool17, i1 false
  br i1 %or.cond, label %if.then18, label %if.end19

if.then18:                                        ; preds = %sw.bb14
  call void @clockevents_shutdown(%struct.clock_event_device* noundef nonnull %0) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %sw.bb14
  br i1 %tobool17, label %land.lhs.true21, label %do.body29

land.lhs.true21:                                  ; preds = %if.end19
  %features22 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 9
  %4 = load i32, i32* %features22, align 4
  %and23 = and i32 %4, 128
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %do.body29

if.then25:                                        ; preds = %land.lhs.true21
  %call26 = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0)) #11
  br label %do.body29

do.body29:                                        ; preds = %if.end13, %if.then4, %if.end19, %land.lhs.true21, %if.then25
  %ret.0 = phi i32 [ 0, %land.lhs.true21 ], [ %call26, %if.then25 ], [ 0, %if.end19 ], [ 1, %if.then4 ], [ 0, %if.end13 ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #11
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  call fastcc void @do_raw_spin_lock_flags() #11
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @tick_device_is_functional(%struct.clock_event_device* nocapture noundef readonly %dev) unnamed_addr #2 {
entry:
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 9
  %0 = load i32, i32* %features, align 4
  %and = lshr i32 %0, 4
  %and.lobit = and i32 %and, 1
  %1 = xor i32 %and.lobit, 1
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_handle_periodic(%struct.clock_event_device* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tick_device_setup_broadcast_func(%struct.clock_event_device* nocapture noundef %dev) unnamed_addr #1 {
entry:
  %broadcast = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 16
  %0 = load void (%struct.cpumask*)*, void (%struct.cpumask*)** %broadcast, align 16
  %tobool.not = icmp eq void (%struct.cpumask*)* %0, null
  br i1 %tobool.not, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  store void (%struct.cpumask*)* @tick_broadcast, void (%struct.cpumask*)** %broadcast, align 16
  br label %if.end21

if.end21:                                         ; preds = %entry, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #1 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #11
  ret void
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @tick_broadcast_setup_oneshot() unnamed_addr #4 {
entry:
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/tick-broadcast.c\22; .popsection; .long 14472b - 14470b; .short 45; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !11
  unreachable
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #1 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef %arraydecay) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #5 {
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
declare dso_local void @clockevents_shutdown(%struct.clock_event_device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock() #11
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tick_receive_broadcast() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call, ptrtoint (%struct.tick_device* @tick_cpu_device to i64)
  %0 = inttoptr i64 %add to %struct.tick_device*
  %evtdev = getelementptr inbounds %struct.tick_device, %struct.tick_device* %0, i64 0, i32 0
  %1 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  %tobool.not = icmp eq %struct.clock_event_device* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %event_handler = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %1, i64 0, i32 0
  %2 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %event_handler, align 64
  %tobool2.not = icmp eq void (%struct.clock_event_device*)* %2, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  call void %2(%struct.clock_event_device* noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -19, %entry ], [ -22, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #6 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #14, !srcloc !13
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tick_broadcast_control(i32 noundef %mode) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #11
  %call6 = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call6, ptrtoint (%struct.tick_device* @tick_cpu_device to i64)
  %0 = inttoptr i64 %add to %struct.tick_device*
  %evtdev = getelementptr inbounds %struct.tick_device, %struct.tick_device* %0, i64 0, i32 0
  %1 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  %tobool.not = icmp eq %struct.clock_event_device* %1, null
  br i1 %tobool.not, label %do.body66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %1, i64 0, i32 9
  %2 = load i32, i32* %features, align 4
  %and = and i32 %2, 8
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body66, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call8 = call fastcc i32 @tick_device_is_functional(%struct.clock_event_device* noundef nonnull %1) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body66, label %do.body12

do.body12:                                        ; preds = %if.end
  %add20 = add i64 %call6, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add20 to i32*
  %4 = load i32, i32* %3, align 4
  %5 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 0), align 8
  %call21 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0)) #11
  switch i32 %mode, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb23
    i32 0, label %sw.bb37
  ]

sw.bb:                                            ; preds = %do.body12
  store i1 true, i1* @tick_broadcast_forced, align 4
  br label %sw.bb23

sw.bb23:                                          ; preds = %do.body12, %sw.bb
  call fastcc void @cpumask_set_cpu(i32 noundef %4, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_on, i64 0, i64 0)) #11
  %call24 = call fastcc i32 @cpumask_test_and_set_cpu(i32 noundef %4) #11
  %tobool25 = icmp eq i32 %call24, 0
  %tobool27 = icmp ne %struct.clock_event_device* %5, null
  %or.cond74 = select i1 %tobool25, i1 %tobool27, i1 false
  br i1 %or.cond74, label %land.lhs.true, label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb23
  %features28 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %5, i64 0, i32 9
  %6 = load i32, i32* %features28, align 4
  %and29 = and i32 %6, 128
  %tobool30 = icmp eq i32 %and29, 0
  %7 = load i32, i32* getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 1), align 8
  %cmp32 = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool30, i1 %cmp32, i1 false
  br i1 %or.cond, label %if.then34, label %if.then50

if.then34:                                        ; preds = %land.lhs.true
  call void @clockevents_shutdown(%struct.clock_event_device* noundef nonnull %1) #12
  br label %if.then50

sw.bb37:                                          ; preds = %do.body12
  %.b = load i1, i1* @tick_broadcast_forced, align 4
  br i1 %.b, label %sw.epilog, label %if.end40

if.end40:                                         ; preds = %sw.bb37
  call fastcc void @cpumask_clear_cpu(i32 noundef %4, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_on, i64 0, i64 0)) #11
  %call41 = call fastcc i32 @cpumask_test_and_clear_cpu(i32 noundef %4) #11
  %tobool42 = icmp ne i32 %call41, 0
  %8 = load i32, i32* getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 1), align 8
  %cmp44 = icmp eq i32 %8, 0
  %or.cond75 = select i1 %tobool42, i1 %cmp44, i1 false
  br i1 %or.cond75, label %if.then46, label %sw.epilog

if.then46:                                        ; preds = %if.end40
  call void @tick_setup_periodic(%struct.clock_event_device* noundef nonnull %1, i32 noundef 0) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end40, %if.then46, %sw.bb37, %sw.bb23, %do.body12
  %tobool49.not = icmp eq %struct.clock_event_device* %5, null
  br i1 %tobool49.not, label %do.body66, label %if.then50

if.then50:                                        ; preds = %land.lhs.true, %if.then34, %sw.epilog
  %call51 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0)) #11
  br i1 %call51, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.then50
  br i1 %call21, label %do.body66, label %if.then54

if.then54:                                        ; preds = %if.then52
  call void @clockevents_shutdown(%struct.clock_event_device* noundef nonnull %5) #12
  br label %do.body66

if.else:                                          ; preds = %if.then50
  br i1 %call21, label %if.then57, label %do.body66

if.then57:                                        ; preds = %if.else
  %9 = load i32, i32* getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 1), align 8
  %cmp58 = icmp eq i32 %9, 0
  br i1 %cmp58, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.then57
  call fastcc void @tick_broadcast_start_periodic(%struct.clock_event_device* noundef nonnull %5) #11
  br label %do.body66

if.else61:                                        ; preds = %if.then57
  call fastcc void @tick_broadcast_setup_oneshot() #11
  unreachable

do.body66:                                        ; preds = %lor.lhs.false, %entry, %if.end, %if.then54, %if.then52, %if.then60, %if.else, %sw.epilog
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_test_and_set_cpu(i32 noundef %cpu) unnamed_addr #1 {
entry:
  %conv = zext i32 %cpu to i64
  %call1 = call fastcc i1 @test_and_set_bit(i64 noundef %conv) #11
  %conv2 = zext i1 %call1 to i32
  ret i32 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_test_and_clear_cpu(i32 noundef %cpu) unnamed_addr #1 {
entry:
  %conv = zext i32 %cpu to i64
  %call1 = call fastcc i1 @test_and_clear_bit(i64 noundef %conv) #11
  %conv2 = zext i1 %call1 to i32
  ret i32 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_setup_periodic(%struct.clock_event_device* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @tick_set_periodic_handler(%struct.clock_event_device* nocapture noundef writeonly %dev, i32 noundef %broadcast) local_unnamed_addr #7 {
entry:
  %tobool.not = icmp eq i32 %broadcast, 0
  %spec.select = select i1 %tobool.not, void (%struct.clock_event_device*)* @tick_handle_periodic, void (%struct.clock_event_device*)* @tick_handle_periodic_broadcast
  %0 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 0
  store void (%struct.clock_event_device*)* %spec.select, void (%struct.clock_event_device*)** %0, align 64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @tick_handle_periodic_broadcast(%struct.clock_event_device* noundef %dev) #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call, ptrtoint (%struct.tick_device* @tick_cpu_device to i64)
  %0 = inttoptr i64 %add to %struct.tick_device*
  call fastcc void @__raw_spin_lock() #11
  %1 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 0), align 8
  %call2 = call fastcc i1 @clockevent_state_shutdown(%struct.clock_event_device* noundef %1) #11
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i1 @tick_do_periodic_broadcast() #11
  %call4 = call fastcc i1 @clockevent_state_oneshot(%struct.clock_event_device* noundef %dev) #11
  br i1 %call4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %next_event = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 3
  %2 = load i64, i64* %next_event, align 8
  %add6 = add i64 %2, 4000000
  %call7 = call i32 @clockevents_program_event(%struct.clock_event_device* noundef %dev, i64 noundef %add6, i1 noundef true) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  call fastcc void @__raw_spin_unlock() #11
  br i1 %call3, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end8
  %evtdev = getelementptr inbounds %struct.tick_device, %struct.tick_device* %0, i64 0, i32 0
  %3 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  %event_handler = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %3, i64 0, i32 0
  %4 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %event_handler, align 64
  call void %4(%struct.clock_event_device* noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then9, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tick_suspend_broadcast() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #11
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 0), align 8
  %tobool.not = icmp eq %struct.clock_event_device* %0, null
  br i1 %tobool.not, label %do.body1, label %if.then

if.then:                                          ; preds = %entry
  call void @clockevents_shutdown(%struct.clock_event_device* noundef nonnull %0) #12
  br label %do.body1

do.body1:                                         ; preds = %entry, %if.then
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #11
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i1 @tick_resume_check_broadcast() local_unnamed_addr #8 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 1), align 8
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %return, label %do.body

do.body:                                          ; preds = %entry
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %call2 = call fastcc i32 @cpumask_test_cpu(i32 noundef %2, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0)) #11
  %tobool = icmp ne i32 %call2, 0
  br label %return

return:                                           ; preds = %entry, %do.body
  %retval.0 = phi i1 [ %tobool, %do.body ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tick_resume_broadcast() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #11
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 0), align 8
  %tobool.not = icmp eq %struct.clock_event_device* %0, null
  br i1 %tobool.not, label %do.body9, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @clockevents_tick_resume(%struct.clock_event_device* noundef nonnull %0) #12
  %1 = load i32, i32* getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 1), align 8
  switch i32 %1, label %do.body9 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then
  %call2 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0)) #11
  br i1 %call2, label %do.body9, label %if.then3

if.then3:                                         ; preds = %sw.bb
  call fastcc void @tick_broadcast_start_periodic(%struct.clock_event_device* noundef nonnull %0) #11
  br label %do.body9

sw.bb4:                                           ; preds = %if.then
  %call5 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0)) #11
  br label %do.body9

do.body9:                                         ; preds = %sw.bb4, %entry, %sw.bb, %if.then3, %if.then
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_tick_resume(%struct.clock_event_device* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @__tick_broadcast_oneshot_control(i32 noundef %state) local_unnamed_addr #2 {
entry:
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 0), align 8
  %tobool.not = icmp eq %struct.clock_event_device* %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 9
  %1 = load i32, i32* %features, align 4
  %and = and i32 %1, 128
  %tobool1.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool1.not, i32 0, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ -16, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @tick_broadcast_init() local_unnamed_addr #9 section ".init.text" {
entry:
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull @tick_broadcast_mask) #11
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull @tick_broadcast_on) #11
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull @tmpmask) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef %mask) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %arraydecay) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bitmap_empty(i64* noundef %src) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @find_first_bit(i64* noundef %src) #11
  %cmp5 = icmp eq i64 %call, 256
  ret i1 %cmp5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #1 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #12
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #1 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @tick_broadcast_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @tick_broadcast_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @tick_broadcast_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #13, !srcloc !15
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.raw_spinlock* @tick_broadcast_lock to i8*), i8 0) #13, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #11
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #1 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @tick_broadcast_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #13, !srcloc !17
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #13, !srcloc !18
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #11
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !19

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #13, !srcloc !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_broadcast(%struct.cpumask* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #1 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #13, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #1 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #13, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #13, !srcloc !23
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64 noundef %nr) unnamed_addr #1 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr [1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0, i32 0, i64 %idx.ext.i
  %0 = load volatile i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #12
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #13, !srcloc !24
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64 noundef %nr) unnamed_addr #1 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr [1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0, i32 0, i64 %idx.ext.i
  %0 = load volatile i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #12
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #13, !srcloc !25
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @clockevent_state_shutdown(%struct.clock_event_device* nocapture noundef readonly %dev) unnamed_addr #2 {
entry:
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 8
  %0 = load i32, i32* %state_use_accessors, align 8
  %cmp = icmp eq i32 %0, 1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @tick_do_periodic_broadcast() unnamed_addr #1 {
entry:
  call fastcc void @cpumask_and() #11
  %call1 = call fastcc i1 @tick_do_broadcast() #11
  ret i1 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @clockevent_state_oneshot(%struct.clock_event_device* nocapture noundef readonly %dev) unnamed_addr #2 {
entry:
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 8
  %0 = load i32, i32* %state_use_accessors, align 8
  %cmp = icmp eq i32 %0, 3
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_program_event(%struct.clock_event_device* noundef, i64 noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_and() unnamed_addr #1 {
entry:
  call fastcc void @bitmap_and() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @tick_do_broadcast() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc i32 @cpumask_test_cpu(i32 noundef %1, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tmpmask, i64 0, i64 0)) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.tick_device, %struct.tick_device* @tick_broadcast_device, i64 0, i32 0), align 8
  call fastcc void @cpumask_clear_cpu(i32 noundef %1, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tmpmask, i64 0, i64 0)) #11
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %2, i64 0, i32 9
  %3 = load i32, i32* %features, align 4
  %and = and i32 %3, 128
  %tobool3.not = icmp eq i32 %and, 0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %local.0.off0 = phi i1 [ %tobool3.not, %if.then ], [ false, %entry ]
  %call4 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tmpmask, i64 0, i64 0)) #11
  br i1 %call4, label %if.end15, label %do.body6

do.body6:                                         ; preds = %if.end
  %call13 = call fastcc i32 @cpumask_first() #11
  %idxprom = zext i32 %call13 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add14 = add i64 %4, ptrtoint (%struct.tick_device* @tick_cpu_device to i64)
  %5 = inttoptr i64 %add14 to %struct.tick_device*
  %evtdev = getelementptr inbounds %struct.tick_device, %struct.tick_device* %5, i64 0, i32 0
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  %broadcast = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %6, i64 0, i32 16
  %7 = load void (%struct.cpumask*)*, void (%struct.cpumask*)** %broadcast, align 16
  call void %7(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tmpmask, i64 0, i64 0)) #12
  br label %if.end15

if.end15:                                         ; preds = %do.body6, %if.end
  ret i1 %local.0.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_and() unnamed_addr #1 {
entry:
  %call = call i32 @__bitmap_and(i64* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tmpmask, i64 0, i64 0, i32 0, i64 0), i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 0), i64* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tick_broadcast_mask, i64 0, i64 0, i32 0, i64 0), i32 noundef 256) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @find_first_bit(i64* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @tmpmask, i64 0, i64 0, i32 0, i64 0)) #11
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear(%struct.cpumask* noundef %dstp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #1 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree nounwind readonly }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nounwind readonly }

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
!8 = !{i64 2149765724}
!9 = !{i64 2149773005}
!10 = !{i64 2149750723}
!11 = !{i64 2153215458}
!12 = !{i64 2149776566}
!13 = !{i64 2149147848, i64 2149147895, i64 2149147901, i64 2149147938, i64 2149147956, i64 2149148883, i64 2149148931, i64 2149148979, i64 2149149042, i64 2149149091, i64 2149148034, i64 2149148059, i64 2149148085, i64 2149148091, i64 2149148128, i64 2149148134, i64 2149148184, i64 2149148230, i64 2149148263}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148112819, i64 2148112852, i64 2148112905, i64 2148112964, i64 2148112998, i64 2148113053, i64 2148113082, i64 2148113102}
!16 = !{i64 2149719853}
!17 = !{i64 2149005271, i64 2149005318, i64 2149005324, i64 2149005361, i64 2149005379, i64 2149006690, i64 2149006738, i64 2149006786, i64 2149006849, i64 2149006898, i64 2149005457, i64 2149005482, i64 2149005508, i64 2149005514, i64 2149006356, i64 2149006396, i64 2149006414, i64 2149006446, i64 2149006474, i64 2149006528, i64 2149006548, i64 2149006645, i64 2149005537, i64 2149005551, i64 2149005557, i64 2149005607, i64 2149005653, i64 2149005686}
!18 = !{i64 2149007450, i64 2149007497, i64 2149007503, i64 2149007540, i64 2149007558, i64 2149008501, i64 2149008549, i64 2149008597, i64 2149008660, i64 2149008709, i64 2149007636, i64 2149007661, i64 2149007687, i64 2149007693, i64 2149007730, i64 2149007736, i64 2149007786, i64 2149007832, i64 2149007865}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2148999568, i64 2148999615, i64 2148999621, i64 2148999658, i64 2148999676, i64 2149001017, i64 2149001065, i64 2149001113, i64 2149001176, i64 2149001225, i64 2148999754, i64 2148999779, i64 2148999805, i64 2148999811, i64 2149000683, i64 2149000723, i64 2149000741, i64 2149000773, i64 2149000801, i64 2149000855, i64 2149000875, i64 2149000972, i64 2148999834, i64 2148999848, i64 2148999854, i64 2148999904, i64 2148999950, i64 2148999983}
!21 = !{i64 2148086037, i64 2148086548, i64 2148086578, i64 2148086604, i64 2148086636, i64 2148086665}
!22 = !{i64 2148096607, i64 2148097128, i64 2148097158, i64 2148097184, i64 2148097216, i64 2148097245}
!23 = !{i64 2149011284, i64 2149011331, i64 2149011337, i64 2149011374, i64 2149011392, i64 2149012703, i64 2149012751, i64 2149012799, i64 2149012862, i64 2149012911, i64 2149011470, i64 2149011495, i64 2149011521, i64 2149011527, i64 2149012369, i64 2149012409, i64 2149012427, i64 2149012459, i64 2149012487, i64 2149012541, i64 2149012561, i64 2149012658, i64 2149011550, i64 2149011564, i64 2149011570, i64 2149011620, i64 2149011666, i64 2149011699}
!24 = !{i64 2148086883, i64 2148087535, i64 2148087565, i64 2148087596, i64 2148087628, i64 2148087663, i64 2148087688}
!25 = !{i64 2148097460, i64 2148098122, i64 2148098152, i64 2148098183, i64 2148098215, i64 2148098250, i64 2148098275}
