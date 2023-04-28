; ModuleID = 'kernel/time/timekeeping.c'
source_filename = "kernel/time/timekeeping.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_timekeeping__258_1899_timekeeping_init_ops6:\09\09\09"
module asm ".long\09timekeeping_init_ops - .\09"
module asm ".previous\09\09\09\09\09"

%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tk_fast = type { %struct.seqcount_latch_t, [2 x %struct.tk_read_base] }
%struct.seqcount_latch_t = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.tk_read_base = type { %struct.clocksource*, i64, i64, i32, i32, i64, i64, i64 }
%struct.clocksource = type { i64 (%struct.clocksource*)*, i64, i32, i32, i64, i32, i32, i64, i8*, %struct.list_head, i32, i32, i32, i64, i32 (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, %struct.module* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.anon.1 = type { %struct.seqcount_raw_spinlock, %struct.timekeeper }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timekeeper = type { %struct.tk_read_base, %struct.tk_read_base, i64, i64, %struct.timespec64, i64, i64, i64, i32, i32, i8, i64, i64, %struct.timespec64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.timespec64 = type { i64, i64 }
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.timezone = type { i32, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.syscore_ops = type { %struct.list_head, i32 ()*, void ()*, void ()* }
%struct.ktime_timestamps = type { i64, i64, i64 }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i32, i8 }
%struct.system_counterval_t = type { i64, %struct.clocksource* }
%struct.system_device_crosststamp = type { i64, i64, i64 }
%struct.cpumask = type { [4 x i64] }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.audit_ntp_data = type {}

@timekeeper_lock = dso_local global %struct.raw_spinlock zeroinitializer, align 4
@tk_fast_mono = internal global %struct.tk_fast { %struct.seqcount_latch_t zeroinitializer, [2 x %struct.tk_read_base] [%struct.tk_read_base { %struct.clocksource* @dummy_clock, i64 -1, i64 0, i32 1, i32 0, i64 0, i64 0, i64 0 }, %struct.tk_read_base { %struct.clocksource* @dummy_clock, i64 -1, i64 0, i32 1, i32 0, i64 0, i64 0, i64 0 }] }, align 64
@tk_fast_raw = internal global %struct.tk_fast { %struct.seqcount_latch_t zeroinitializer, [2 x %struct.tk_read_base] [%struct.tk_read_base { %struct.clocksource* @dummy_clock, i64 -1, i64 0, i32 1, i32 0, i64 0, i64 0, i64 0 }, %struct.tk_read_base { %struct.clocksource* @dummy_clock, i64 -1, i64 0, i32 1, i32 0, i64 0, i64 0, i64 0 }] }, align 64
@tk_core = internal global %struct.anon.1 zeroinitializer, align 64
@pvclock_gtod_chain = internal global %struct.raw_notifier_head zeroinitializer, align 8
@timekeeping_suspended = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@offsets = internal unnamed_addr constant [3 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.anon.1* @tk_core to i8*), i64 152) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.anon.1* @tk_core to i8*), i64 160) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.anon.1* @tk_core to i8*), i64 168) to i64*)], align 8
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@persistent_clock_is_local = dso_local local_unnamed_addr global i32 0, align 4
@persistent_clock_exists = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [42 x i8] c"\014Persistent clock returned invalid value\00", align 1
@timekeeping_suspend_time = internal global %struct.timespec64 zeroinitializer, align 8
@timekeeping_suspend.old_delta.0 = internal unnamed_addr global i64 0, align 8
@timekeeping_suspend.old_delta.1 = internal unnamed_addr global i64 0, align 8
@__UNIQUE_ID___addressable_timekeeping_init_ops259 = internal global i8* bitcast (i32 ()* @timekeeping_init_ops to i8*), section ".discard.addressable", align 8
@jiffies_64 = external dso_local local_unnamed_addr global i64, section ".data..cacheline_aligned", align 64
@dummy_clock = internal global %struct.clocksource { i64 (%struct.clocksource*)* @dummy_clock_read, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, i8* null, %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i64 0, i32 (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, %struct.module* null }, align 8
@cycles_at_suspend = internal unnamed_addr global i64 0, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@shadow_timekeeper = internal global %struct.timekeeper zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"\014__timekeeping_inject_sleeptime: Invalid sleep delta value!\0A\00", align 1
@halt_fast_timekeeper.tkr_dummy = internal global %struct.tk_read_base zeroinitializer, align 8
@timekeeping_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, i32 ()* @timekeeping_suspend, void ()* @timekeeping_resume, void ()* null }, align 8
@timekeeping_adjust.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\014Adjusting %s more than 11%% (%ld vs %ld)\0A\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_timekeeping_init_ops259 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #0 {
entry:
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %entry
  %call.i = call fastcc i32 @raw_read_seqcount_latch(%struct.seqcount_latch_t* noundef getelementptr inbounds (%struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 0)) #17
  %and.i = and i32 %call.i, 1
  %idx.ext.i = zext i32 %and.i to i64
  %add.ptr.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 1, i64 %idx.ext.i
  %base2.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 1, i64 %idx.ext.i, i32 6
  %0 = load i64, i64* %base2.i, align 8
  %call4.i = call fastcc i64 @tk_clock_read(%struct.tk_read_base* noundef %add.ptr.i) #17
  %cycle_last.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 1, i64 %idx.ext.i, i32 2
  %1 = load i64, i64* %cycle_last.i, align 8
  %mask.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 1, i64 %idx.ext.i, i32 1
  %2 = load i64, i64* %mask.i, align 8
  %call5.i = call fastcc i64 @clocksource_delta(i64 noundef %call4.i, i64 noundef %1, i64 noundef %2) #17
  %call6.i = call fastcc i64 @timekeeping_delta_to_ns(%struct.tk_read_base* noundef %add.ptr.i, i64 noundef %call5.i) #17
  %call8.i = call fastcc i32 @read_seqcount_latch_retry(%struct.seqcount_latch_t* noundef getelementptr inbounds (%struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 0), i32 noundef %call.i) #17
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %__ktime_get_fast_ns.exit, label %do.body.i

__ktime_get_fast_ns.exit:                         ; preds = %do.body.i
  %add.i = add i64 %call6.i, %0
  ret i64 %add.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ktime_get_raw_fast_ns() local_unnamed_addr #0 {
entry:
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %entry
  %call.i = call fastcc i32 @raw_read_seqcount_latch(%struct.seqcount_latch_t* noundef getelementptr inbounds (%struct.tk_fast, %struct.tk_fast* @tk_fast_raw, i64 0, i32 0)) #17
  %and.i = and i32 %call.i, 1
  %idx.ext.i = zext i32 %and.i to i64
  %add.ptr.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_raw, i64 0, i32 1, i64 %idx.ext.i
  %base2.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_raw, i64 0, i32 1, i64 %idx.ext.i, i32 6
  %0 = load i64, i64* %base2.i, align 8
  %call4.i = call fastcc i64 @tk_clock_read(%struct.tk_read_base* noundef %add.ptr.i) #17
  %cycle_last.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_raw, i64 0, i32 1, i64 %idx.ext.i, i32 2
  %1 = load i64, i64* %cycle_last.i, align 8
  %mask.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_raw, i64 0, i32 1, i64 %idx.ext.i, i32 1
  %2 = load i64, i64* %mask.i, align 8
  %call5.i = call fastcc i64 @clocksource_delta(i64 noundef %call4.i, i64 noundef %1, i64 noundef %2) #17
  %call6.i = call fastcc i64 @timekeeping_delta_to_ns(%struct.tk_read_base* noundef %add.ptr.i, i64 noundef %call5.i) #17
  %call8.i = call fastcc i32 @read_seqcount_latch_retry(%struct.seqcount_latch_t* noundef getelementptr inbounds (%struct.tk_fast, %struct.tk_fast* @tk_fast_raw, i64 0, i32 0), i32 noundef %call.i) #17
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %__ktime_get_fast_ns.exit, label %do.body.i

__ktime_get_fast_ns.exit:                         ; preds = %do.body.i
  %add.i = add i64 %call6.i, %0
  ret i64 %add.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ktime_get_boot_fast_ns() local_unnamed_addr #0 {
entry:
  %call = call i64 @ktime_get_mono_fast_ns() #18
  %0 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 6), align 32
  %add = add i64 %0, %call
  ret i64 %add
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ktime_get_real_fast_ns() local_unnamed_addr #0 {
entry:
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %entry
  %call.i = call fastcc i32 @raw_read_seqcount_latch(%struct.seqcount_latch_t* noundef getelementptr inbounds (%struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 0)) #17
  %and.i = and i32 %call.i, 1
  %idx.ext.i = zext i32 %and.i to i64
  %add.ptr.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 1, i64 %idx.ext.i
  %base_real.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 1, i64 %idx.ext.i, i32 7
  %0 = load i64, i64* %base_real.i, align 8
  %call5.i = call fastcc i64 @tk_clock_read(%struct.tk_read_base* noundef %add.ptr.i) #17
  %cycle_last.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 1, i64 %idx.ext.i, i32 2
  %1 = load i64, i64* %cycle_last.i, align 8
  %mask.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 1, i64 %idx.ext.i, i32 1
  %2 = load i64, i64* %mask.i, align 8
  %call6.i = call fastcc i64 @clocksource_delta(i64 noundef %call5.i, i64 noundef %1, i64 noundef %2) #17
  %call7.i = call fastcc i64 @timekeeping_delta_to_ns(%struct.tk_read_base* noundef %add.ptr.i, i64 noundef %call6.i) #17
  %call9.i = call fastcc i32 @read_seqcount_latch_retry(%struct.seqcount_latch_t* noundef getelementptr inbounds (%struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 0), i32 noundef %call.i) #17
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %__ktime_get_real_fast.exit, label %do.body.i

__ktime_get_real_fast.exit:                       ; preds = %do.body.i
  %add11.i = add i64 %call7.i, %0
  ret i64 %add11.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ktime_get_fast_timestamps(%struct.ktime_timestamps* noundef %snapshot) local_unnamed_addr #0 {
entry:
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %entry
  %call.i = call fastcc i32 @raw_read_seqcount_latch(%struct.seqcount_latch_t* noundef getelementptr inbounds (%struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 0)) #17
  %and.i = and i32 %call.i, 1
  %idx.ext.i = zext i32 %and.i to i64
  %add.ptr.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 1, i64 %idx.ext.i
  %base2.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 1, i64 %idx.ext.i, i32 6
  %0 = load i64, i64* %base2.i, align 8
  %base_real.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 1, i64 %idx.ext.i, i32 7
  %1 = load i64, i64* %base_real.i, align 8
  %call5.i = call fastcc i64 @tk_clock_read(%struct.tk_read_base* noundef %add.ptr.i) #17
  %cycle_last.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 1, i64 %idx.ext.i, i32 2
  %2 = load i64, i64* %cycle_last.i, align 8
  %mask.i = getelementptr %struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 1, i64 %idx.ext.i, i32 1
  %3 = load i64, i64* %mask.i, align 8
  %call6.i = call fastcc i64 @clocksource_delta(i64 noundef %call5.i, i64 noundef %2, i64 noundef %3) #17
  %call7.i = call fastcc i64 @timekeeping_delta_to_ns(%struct.tk_read_base* noundef %add.ptr.i, i64 noundef %call6.i) #17
  %call9.i = call fastcc i32 @read_seqcount_latch_retry(%struct.seqcount_latch_t* noundef getelementptr inbounds (%struct.tk_fast, %struct.tk_fast* @tk_fast_mono, i64 0, i32 0), i32 noundef %call.i) #17
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %mono = getelementptr inbounds %struct.ktime_timestamps, %struct.ktime_timestamps* %snapshot, i64 0, i32 0
  %tobool10.not.i = icmp eq %struct.ktime_timestamps* %snapshot, null
  br i1 %tobool10.not.i, label %do.end.i.__ktime_get_real_fast.exit_crit_edge, label %if.then.i

do.end.i.__ktime_get_real_fast.exit_crit_edge:    ; preds = %do.end.i
  %.pre = load i64, i64* %mono, align 8
  br label %__ktime_get_real_fast.exit

if.then.i:                                        ; preds = %do.end.i
  %add.i = add i64 %call7.i, %0
  store i64 %add.i, i64* %mono, align 8
  br label %__ktime_get_real_fast.exit

__ktime_get_real_fast.exit:                       ; preds = %do.end.i.__ktime_get_real_fast.exit_crit_edge, %if.then.i
  %4 = phi i64 [ %.pre, %do.end.i.__ktime_get_real_fast.exit_crit_edge ], [ %add.i, %if.then.i ]
  %add11.i = add i64 %call7.i, %1
  %real = getelementptr inbounds %struct.ktime_timestamps, %struct.ktime_timestamps* %snapshot, i64 0, i32 2
  store i64 %add11.i, i64* %real, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 6), align 32
  %add = add i64 %5, %4
  %boot = getelementptr inbounds %struct.ktime_timestamps, %struct.ktime_timestamps* %snapshot, i64 0, i32 1
  store i64 %add, i64* %boot, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pvclock_gtod_register_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #18
  %call1 = call i32 @raw_notifier_chain_register(%struct.raw_notifier_head* noundef nonnull @pvclock_gtod_chain, %struct.notifier_block* noundef %nb) #17
  call fastcc void @update_pvclock_gtod(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1), i1 noundef true) #18
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #18
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #18
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !7
  call fastcc void @do_raw_spin_lock_flags() #18
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(%struct.raw_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_pvclock_gtod(%struct.timekeeper* noundef %tk, i1 noundef %was_set) unnamed_addr #0 {
entry:
  %conv = zext i1 %was_set to i64
  %0 = bitcast %struct.timekeeper* %tk to i8*
  %call = call i32 @raw_notifier_call_chain(%struct.raw_notifier_head* noundef nonnull @pvclock_gtod_chain, i64 noundef %conv, i8* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #18
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #18
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pvclock_gtod_unregister_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #18
  %call1 = call i32 @raw_notifier_chain_unregister(%struct.raw_notifier_head* noundef nonnull @pvclock_gtod_chain, %struct.notifier_block* noundef %nb) #17
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #18
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_unregister(%struct.raw_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ktime_get_real_ts64(%struct.timespec64* nocapture noundef %ts) local_unnamed_addr #0 {
entry:
  %dividend.addr.i.i = alloca i64, align 8
  %0 = load i32, i32* @timekeeping_suspended, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timekeeping.c\22; .popsection; .long 14472b - 14470b; .short 802; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %while.end, %if.end
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and33 = and i32 %1, 1
  %tobool16.not34 = icmp eq i32 %and33, 0
  br i1 %tobool16.not34, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %2, 1
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %1, %do.body ], [ %2, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !11
  %3 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 2), align 8
  store i64 %3, i64* %tv_sec, align 8
  %call19 = call fastcc i64 @timekeeping_get_ns(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0)) #18
  %call21 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  store i64 0, i64* %tv_nsec, align 8
  %4 = bitcast i64* %dividend.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #19
  store i64 %call19, i64* %dividend.addr.i.i, align 8
  %cmp1.i.i = icmp ugt i64 %call19, 999999999
  br i1 %cmp1.i.i, label %while.body.i.i, label %timespec64_add_ns.exit

while.body.i.i:                                   ; preds = %do.end, %while.body.i.i
  %ret.02.i.i = phi i32 [ %inc.i.i, %while.body.i.i ], [ 0, %do.end ]
  %5 = phi i64 [ %sub.i.i, %while.body.i.i ], [ %call19, %do.end ]
  call void asm "", "=*rm,0"(i64* nonnull elementtype(i64) %dividend.addr.i.i, i64 %5) #19, !srcloc !12
  %6 = load i64, i64* %dividend.addr.i.i, align 8
  %sub.i.i = add i64 %6, -1000000000
  store i64 %sub.i.i, i64* %dividend.addr.i.i, align 8
  %inc.i.i = add i32 %ret.02.i.i, 1
  %cmp.i.i = icmp ugt i64 %sub.i.i, 999999999
  br i1 %cmp.i.i, label %while.body.i.i, label %__iter_div_u64_rem.exit.loopexit.i

__iter_div_u64_rem.exit.loopexit.i:               ; preds = %while.body.i.i
  %phi.cast.i = zext i32 %inc.i.i to i64
  br label %timespec64_add_ns.exit

timespec64_add_ns.exit:                           ; preds = %do.end, %__iter_div_u64_rem.exit.loopexit.i
  %.lcssa.i.i = phi i64 [ %call19, %do.end ], [ %sub.i.i, %__iter_div_u64_rem.exit.loopexit.i ]
  %ret.0.lcssa.i.i = phi i64 [ 0, %do.end ], [ %phi.cast.i, %__iter_div_u64_rem.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #19
  %7 = load i64, i64* %tv_sec, align 8
  %add1.i = add i64 %7, %ret.0.lcssa.i.i
  store i64 %add1.i, i64* %tv_sec, align 8
  store i64 %.lcssa.i.i, i64* %tv_nsec, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #19, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @timekeeping_get_ns(%struct.tk_read_base* noundef %tkr) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @timekeeping_get_delta(%struct.tk_read_base* noundef %tkr) #18
  %call1 = call fastcc i64 @timekeeping_delta_to_ns(%struct.tk_read_base* noundef %tkr, i64 noundef %call) #18
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !14
  %call = call fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ktime_get() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @timekeeping_suspended, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body.preheader, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timekeeping.c\22; .popsection; .long 14472b - 14470b; .short 824; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !15
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %while.end
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and35 = and i32 %1, 1
  %tobool16.not36 = icmp eq i32 %and35, 0
  br i1 %tobool16.not36, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %2, 1
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %1, %do.body ], [ %2, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !16
  %3 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 6), align 16
  %call21 = call fastcc i64 @timekeeping_get_ns(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0)) #18
  %call23 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %add = add i64 %call21, %3
  ret i64 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ktime_get_resolution_ns() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @timekeeping_suspended, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body.preheader, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timekeeping.c\22; .popsection; .long 14472b - 14470b; .short 843; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !17
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %while.end
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and33 = and i32 %1, 1
  %tobool16.not34 = icmp eq i32 %and33, 0
  br i1 %tobool16.not34, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %2, 1
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %1, %do.body ], [ %2, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !18
  %3 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 3), align 32
  %4 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 4), align 4
  %call21 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %shr = lshr i32 %3, %4
  ret i32 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ktime_get_with_offset(i32 noundef %offs) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %offs to i64
  %arrayidx = getelementptr [3 x i64*], [3 x i64*]* @offsets, i64 0, i64 %idxprom
  %0 = load i64*, i64** %arrayidx, align 8
  %1 = load i32, i32* @timekeeping_suspended, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body.preheader, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timekeeping.c\22; .popsection; .long 14472b - 14470b; .short 867; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !19
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %while.end
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and38 = and i32 %2, 1
  %tobool16.not39 = icmp eq i32 %and38, 0
  br i1 %tobool16.not39, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %3, 1
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %2, %do.body ], [ %3, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !20
  %4 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 6), align 16
  %5 = load i64, i64* %0, align 8
  %call21 = call fastcc i64 @timekeeping_get_ns(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0)) #18
  %call23 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %add = add i64 %5, %4
  %add25 = add i64 %add, %call21
  ret i64 %add25
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ktime_get_coarse_with_offset(i32 noundef %offs) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %offs to i64
  %arrayidx = getelementptr [3 x i64*], [3 x i64*]* @offsets, i64 0, i64 %idxprom
  %0 = load i64*, i64** %arrayidx, align 8
  %1 = load i32, i32* @timekeeping_suspended, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body.preheader, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timekeeping.c\22; .popsection; .long 14472b - 14470b; .short 888; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !21
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %while.end
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and41 = and i32 %2, 1
  %tobool16.not42 = icmp eq i32 %and41, 0
  br i1 %tobool16.not42, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %3, 1
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %2, %do.body ], [ %3, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !22
  %4 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 6), align 16
  %5 = load i64, i64* %0, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 5), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 4), align 4
  %call23 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %sh_prom = zext i32 %7 to i64
  %shr = lshr i64 %6, %sh_prom
  %add = add i64 %5, %4
  %add25 = add i64 %add, %shr
  ret i64 %add25
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ktime_mono_to_any(i64 noundef %tmono, i32 noundef %offs) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %offs to i64
  %arrayidx = getelementptr [3 x i64*], [3 x i64*]* @offsets, i64 0, i64 %idxprom
  %0 = load i64*, i64** %arrayidx, align 8
  br label %do.body

do.body:                                          ; preds = %while.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and12 = and i32 %1, 1
  %tobool.not13 = icmp eq i32 %and12, 0
  br i1 %tobool.not13, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %1, %do.body ], [ %2, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !23
  %3 = load i64, i64* %0, align 8
  %call4 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %add = add i64 %3, %tmono
  ret i64 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ktime_get_raw() local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %while.end, %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and17 = and i32 %0, 1
  %tobool.not18 = icmp eq i32 %and17, 0
  br i1 %tobool.not18, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %0, %do.body ], [ %1, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !24
  %2 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 6), align 8
  %call5 = call fastcc i64 @timekeeping_get_ns(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1)) #18
  %call7 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %add = add i64 %call5, %2
  ret i64 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ktime_get_ts64(%struct.timespec64* nocapture noundef %ts) local_unnamed_addr #0 {
entry:
  %dividend.addr.i.i = alloca i64, align 8
  %0 = load i32, i32* @timekeeping_suspended, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timekeeping.c\22; .popsection; .long 14472b - 14470b; .short 957; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %while.end, %if.end
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and45 = and i32 %1, 1
  %tobool16.not46 = icmp eq i32 %and45, 0
  br i1 %tobool16.not46, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %2, 1
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %1, %do.body ], [ %2, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !26
  %3 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 2), align 8
  store i64 %3, i64* %tv_sec, align 8
  %call19 = call fastcc i64 @timekeeping_get_ns(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0)) #18
  %tomono.sroa.0.0.copyload = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 4, i32 0), align 8
  %tomono.sroa.5.0.copyload = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 4, i32 1), align 16
  %call21 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %4 = load i64, i64* %tv_sec, align 8
  %add = add i64 %4, %tomono.sroa.0.0.copyload
  store i64 %add, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  store i64 0, i64* %tv_nsec, align 8
  %add26 = add i64 %tomono.sroa.5.0.copyload, %call19
  %5 = bitcast i64* %dividend.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #19
  store i64 %add26, i64* %dividend.addr.i.i, align 8
  %cmp1.i.i = icmp ugt i64 %add26, 999999999
  br i1 %cmp1.i.i, label %while.body.i.i, label %timespec64_add_ns.exit

while.body.i.i:                                   ; preds = %do.end, %while.body.i.i
  %ret.02.i.i = phi i32 [ %inc.i.i, %while.body.i.i ], [ 0, %do.end ]
  %6 = phi i64 [ %sub.i.i, %while.body.i.i ], [ %add26, %do.end ]
  call void asm "", "=*rm,0"(i64* nonnull elementtype(i64) %dividend.addr.i.i, i64 %6) #19, !srcloc !12
  %7 = load i64, i64* %dividend.addr.i.i, align 8
  %sub.i.i = add i64 %7, -1000000000
  store i64 %sub.i.i, i64* %dividend.addr.i.i, align 8
  %inc.i.i = add i32 %ret.02.i.i, 1
  %cmp.i.i = icmp ugt i64 %sub.i.i, 999999999
  br i1 %cmp.i.i, label %while.body.i.i, label %__iter_div_u64_rem.exit.loopexit.i

__iter_div_u64_rem.exit.loopexit.i:               ; preds = %while.body.i.i
  %phi.cast.i = zext i32 %inc.i.i to i64
  %.pre = load i64, i64* %tv_sec, align 8
  br label %timespec64_add_ns.exit

timespec64_add_ns.exit:                           ; preds = %do.end, %__iter_div_u64_rem.exit.loopexit.i
  %8 = phi i64 [ %add, %do.end ], [ %.pre, %__iter_div_u64_rem.exit.loopexit.i ]
  %.lcssa.i.i = phi i64 [ %add26, %do.end ], [ %sub.i.i, %__iter_div_u64_rem.exit.loopexit.i ]
  %ret.0.lcssa.i.i = phi i64 [ 0, %do.end ], [ %phi.cast.i, %__iter_div_u64_rem.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #19
  %add1.i = add i64 %8, %ret.0.lcssa.i.i
  store i64 %add1.i, i64* %tv_sec, align 8
  store i64 %.lcssa.i.i, i64* %tv_nsec, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ktime_get_seconds() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @timekeeping_suspended, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timekeeping.c\22; .popsection; .long 14472b - 14470b; .short 986; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 3), align 64
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #4 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 2), align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline noprofile norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @__ktime_get_real_seconds() local_unnamed_addr #5 section ".noinstr.text" {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 2), align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ktime_get_snapshot(%struct.system_time_snapshot* nocapture noundef writeonly %systime_snapshot) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @timekeeping_suspended, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timekeeping.c\22; .popsection; .long 14472b - 14470b; .short 1046; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cs_id = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %systime_snapshot, i64 0, i32 3
  %cs_was_changed_seq21 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %systime_snapshot, i64 0, i32 5
  %clock_was_set_seq22 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %systime_snapshot, i64 0, i32 4
  br label %do.body

do.body:                                          ; preds = %while.end, %if.end
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and62 = and i32 %1, 1
  %tobool16.not63 = icmp eq i32 %and62, 0
  br i1 %tobool16.not63, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %2, 1
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %1, %do.body ], [ %2, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !29
  %call19 = call fastcc i64 @tk_clock_read(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0)) #18
  %3 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 0), align 8
  %id = getelementptr inbounds %struct.clocksource, %struct.clocksource* %3, i64 0, i32 11
  %4 = load i32, i32* %id, align 4
  store i32 %4, i32* %cs_id, align 8
  %5 = load i8, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 10), align 8
  store i8 %5, i8* %cs_was_changed_seq21, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 9), align 4
  store i32 %6, i32* %clock_was_set_seq22, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 6), align 16
  %8 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 5), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 6), align 8
  %call26 = call fastcc i64 @timekeeping_cycles_to_ns(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0), i64 noundef %call19) #18
  %call28 = call fastcc i64 @timekeeping_cycles_to_ns(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1), i64 noundef %call19) #18
  %call30 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %add = add i64 %8, %7
  %cycles = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %systime_snapshot, i64 0, i32 0
  store i64 %call19, i64* %cycles, align 8
  %add32 = add i64 %add, %call26
  %real = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %systime_snapshot, i64 0, i32 1
  store i64 %add32, i64* %real, align 8
  %add33 = add i64 %call28, %9
  %raw = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %systime_snapshot, i64 0, i32 2
  store i64 %add33, i64* %raw, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @tk_clock_read(%struct.tk_read_base* noundef %tkr) unnamed_addr #0 {
entry:
  %clock1 = getelementptr inbounds %struct.tk_read_base, %struct.tk_read_base* %tkr, i64 0, i32 0
  %0 = load volatile %struct.clocksource*, %struct.clocksource** %clock1, align 8
  %read = getelementptr inbounds %struct.clocksource, %struct.clocksource* %0, i64 0, i32 0
  %1 = load i64 (%struct.clocksource*)*, i64 (%struct.clocksource*)** %read, align 8
  %call = call i64 %1(%struct.clocksource* noundef %0) #17
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @timekeeping_cycles_to_ns(%struct.tk_read_base* nocapture noundef readonly %tkr, i64 noundef %cycles) unnamed_addr #4 {
entry:
  %cycle_last = getelementptr inbounds %struct.tk_read_base, %struct.tk_read_base* %tkr, i64 0, i32 2
  %0 = load i64, i64* %cycle_last, align 8
  %mask = getelementptr inbounds %struct.tk_read_base, %struct.tk_read_base* %tkr, i64 0, i32 1
  %1 = load i64, i64* %mask, align 8
  %call = call fastcc i64 @clocksource_delta(i64 noundef %cycles, i64 noundef %0, i64 noundef %1) #18
  %call1 = call fastcc i64 @timekeeping_delta_to_ns(%struct.tk_read_base* noundef %tkr, i64 noundef %call) #18
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_device_system_crosststamp(i32 (i64*, %struct.system_counterval_t*, i8*)* nocapture noundef readonly %get_time_fn, i8* noundef %ctx, %struct.system_time_snapshot* noundef readonly %history_begin, %struct.system_device_crosststamp* noundef %xtstamp) local_unnamed_addr #0 {
entry:
  %system_counterval = alloca %struct.system_counterval_t, align 8
  %0 = bitcast %struct.system_counterval_t* %system_counterval to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !30
  %device = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %xtstamp, i64 0, i32 0
  %cs = getelementptr inbounds %struct.system_counterval_t, %struct.system_counterval_t* %system_counterval, i64 0, i32 1
  %cycles7 = getelementptr inbounds %struct.system_counterval_t, %struct.system_counterval_t* %system_counterval, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %if.end6, %entry
  %clock_was_set_seq.0 = phi i32 [ 0, %entry ], [ %clock_was_set_seq.1, %if.end6 ]
  %cs_was_changed_seq.0 = phi i8 [ 0, %entry ], [ %cs_was_changed_seq.1, %if.end6 ]
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and113 = and i32 %1, 1
  %tobool.not114 = icmp eq i32 %and113, 0
  br i1 %tobool.not114, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %1, %do.body ], [ %2, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !31
  %call3 = call i32 %get_time_fn(i64* noundef %device, %struct.system_counterval_t* noundef nonnull %system_counterval, i8* noundef %ctx) #17
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %cleanup56

if.end:                                           ; preds = %while.end
  %3 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 0), align 8
  %4 = load %struct.clocksource*, %struct.clocksource** %cs, align 8
  %cmp.not = icmp eq %struct.clocksource* %3, %4
  br i1 %cmp.not, label %if.end6, label %cleanup56

if.end6:                                          ; preds = %if.end
  %5 = load i64, i64* %cycles7, align 8
  %call9 = call fastcc i64 @tk_clock_read(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0)) #18
  %6 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 2), align 8
  %call11 = call fastcc i1 @cycle_between(i64 noundef %6, i64 noundef %5, i64 noundef %call9) #18
  %7 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 9), align 4
  %8 = load i8, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 10), align 8
  %clock_was_set_seq.1 = select i1 %call11, i32 %clock_was_set_seq.0, i32 %7
  %cs_was_changed_seq.1 = select i1 %call11, i8 %cs_was_changed_seq.0, i8 %8
  %9 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 6), align 16
  %10 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 5), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 6), align 8
  %12 = load i64, i64* %cycles7, align 8
  %call20 = call fastcc i64 @timekeeping_cycles_to_ns(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0), i64 noundef %12) #18
  %call23 = call fastcc i64 @timekeeping_cycles_to_ns(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1), i64 noundef %12) #18
  %call25 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end6
  %cycles.0.le = select i1 %call11, i64 %5, i64 %6
  %add = add i64 %10, %9
  %add27 = add i64 %add, %call20
  %sys_realtime = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %xtstamp, i64 0, i32 1
  store i64 %add27, i64* %sys_realtime, align 8
  %add28 = add i64 %call23, %11
  %sys_monoraw = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %xtstamp, i64 0, i32 2
  store i64 %add28, i64* %sys_monoraw, align 8
  br i1 %call11, label %if.end55, label %if.then30

if.then30:                                        ; preds = %do.end
  %tobool31.not = icmp eq %struct.system_time_snapshot* %history_begin, null
  br i1 %tobool31.not, label %cleanup56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then30
  %cycles32 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %history_begin, i64 0, i32 0
  %13 = load i64, i64* %cycles32, align 8
  %14 = load i64, i64* %cycles7, align 8
  %call34 = call fastcc i1 @cycle_between(i64 noundef %13, i64 noundef %14, i64 noundef %cycles.0.le) #18
  br i1 %call34, label %lor.lhs.false35, label %cleanup56

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %cs_was_changed_seq36 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %history_begin, i64 0, i32 5
  %15 = load i8, i8* %cs_was_changed_seq36, align 8
  %cmp38.not = icmp eq i8 %15, %cs_was_changed_seq.1
  br i1 %cmp38.not, label %cleanup, label %cleanup56

cleanup:                                          ; preds = %lor.lhs.false35
  %sub = sub i64 %cycles.0.le, %14
  %sub44 = sub i64 %cycles.0.le, %13
  %clock_was_set_seq45 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %history_begin, i64 0, i32 4
  %16 = load i32, i32* %clock_was_set_seq45, align 4
  %cmp46 = icmp ne i32 %16, %clock_was_set_seq.1
  %call49 = call fastcc i32 @adjust_historical_crosststamp(%struct.system_time_snapshot* noundef nonnull %history_begin, i64 noundef %sub, i64 noundef %sub44, i1 noundef %cmp46, %struct.system_device_crosststamp* noundef %xtstamp) #18
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end55, label %cleanup56

if.end55:                                         ; preds = %cleanup, %do.end
  br label %cleanup56

cleanup56:                                        ; preds = %if.end, %while.end, %if.then30, %lor.lhs.false, %lor.lhs.false35, %cleanup, %if.end55
  %retval.1 = phi i32 [ 0, %if.end55 ], [ %call49, %cleanup ], [ -22, %lor.lhs.false35 ], [ -22, %lor.lhs.false ], [ -22, %if.then30 ], [ -19, %if.end ], [ %call3, %while.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @cycle_between(i64 noundef %before, i64 noundef %test, i64 noundef %after) unnamed_addr #6 {
entry:
  %cmp = icmp ugt i64 %test, %before
  %cmp1 = icmp ult i64 %test, %after
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp ult i64 %test, %before
  %cmp4 = icmp ugt i64 %before, %after
  %or.cond12 = and i1 %cmp2, %cmp4
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ %or.cond12, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @adjust_historical_crosststamp(%struct.system_time_snapshot* nocapture noundef readonly %history, i64 noundef %partial_history_cycles, i64 noundef %total_history_cycles, i1 noundef %discontinuity, %struct.system_device_crosststamp* nocapture noundef %ts) unnamed_addr #7 {
entry:
  %corr_raw = alloca i64, align 8
  %corr_real = alloca i64, align 8
  %0 = bitcast i64* %corr_raw to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  %1 = bitcast i64* %corr_real to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #19
  %cmp = icmp eq i64 %total_history_cycles, 0
  %cmp1 = icmp eq i64 %partial_history_cycles, 0
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i64 %total_history_cycles, 1
  %cmp2 = icmp ult i64 %div, %partial_history_cycles
  %sub = sub i64 %total_history_cycles, %partial_history_cycles
  %cond = select i1 %cmp2, i64 %sub, i64 %partial_history_cycles
  %sys_monoraw = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %ts, i64 0, i32 2
  %2 = load i64, i64* %sys_monoraw, align 8
  %raw = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %history, i64 0, i32 2
  %3 = load i64, i64* %raw, align 8
  %sub4 = sub i64 %2, %3
  store i64 %sub4, i64* %corr_raw, align 8
  %call5 = call fastcc i32 @scale64_check_overflow(i64 noundef %cond, i64 noundef %total_history_cycles, i64* noundef nonnull %corr_raw) #18
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end
  br i1 %discontinuity, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %4 = load i64, i64* %corr_raw, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 3), align 32
  %6 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 3), align 8
  %call12 = call fastcc i64 @mul_u64_u32_div(i64 noundef %4, i32 noundef %5, i32 noundef %6) #18
  store i64 %call12, i64* %corr_real, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end8
  %sys_realtime = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %ts, i64 0, i32 1
  %7 = load i64, i64* %sys_realtime, align 8
  %real = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %history, i64 0, i32 1
  %8 = load i64, i64* %real, align 8
  %sub13 = sub i64 %7, %8
  store i64 %sub13, i64* %corr_real, align 8
  %call15 = call fastcc i32 @scale64_check_overflow(i64 noundef %cond, i64 noundef %total_history_cycles, i64* noundef nonnull %corr_real) #18
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.else, %if.then10
  br i1 %cmp2, label %if.then21, label %if.else27

if.then21:                                        ; preds = %if.end19
  %9 = load i64, i64* %raw, align 8
  %10 = load i64, i64* %corr_raw, align 8
  %add = add i64 %10, %9
  store i64 %add, i64* %sys_monoraw, align 8
  %real24 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %history, i64 0, i32 1
  %11 = load i64, i64* %real24, align 8
  %12 = load i64, i64* %corr_real, align 8
  %add25 = add i64 %12, %11
  %sys_realtime26 = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %ts, i64 0, i32 1
  store i64 %add25, i64* %sys_realtime26, align 8
  br label %cleanup

if.else27:                                        ; preds = %if.end19
  %13 = load i64, i64* %sys_monoraw, align 8
  %14 = load i64, i64* %corr_raw, align 8
  %sub29 = sub i64 %13, %14
  store i64 %sub29, i64* %sys_monoraw, align 8
  %sys_realtime31 = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %ts, i64 0, i32 1
  %15 = load i64, i64* %sys_realtime31, align 8
  %16 = load i64, i64* %corr_real, align 8
  %sub32 = sub i64 %15, %16
  store i64 %sub32, i64* %sys_realtime31, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.else27, %if.else, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call5, %if.end ], [ %call15, %if.else ], [ 0, %if.else27 ], [ 0, %if.then21 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_settimeofday64(%struct.timespec64* nocapture noundef readonly %ts) local_unnamed_addr #0 {
entry:
  %ts_delta = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %ts_delta to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %call = call fastcc i1 @timespec64_valid_settod(%struct.timespec64* noundef %ts) #18
  br i1 %call, label %do.body, label %cleanup

do.body:                                          ; preds = %entry
  %call1 = call fastcc i64 @__raw_spin_lock_irqsave() #18
  call fastcc void @do_write_seqcount_begin() #18
  call fastcc void @timekeeping_forward_now() #18
  %call10 = call fastcc [2 x i64] @tk_xtime() #18
  %call10.fca.0.extract = extractvalue [2 x i64] %call10, 0
  %call10.fca.1.extract = extractvalue [2 x i64] %call10, 1
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %1 = load i64, i64* %tv_sec, align 8
  %sub = sub i64 %1, %call10.fca.0.extract
  %tv_sec12 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts_delta, i64 0, i32 0
  store i64 %sub, i64* %tv_sec12, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %2 = load i64, i64* %tv_nsec, align 8
  %sub14 = sub i64 %2, %call10.fca.1.extract
  %tv_nsec15 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts_delta, i64 0, i32 1
  store i64 %sub14, i64* %tv_nsec15, align 8
  %call16 = call fastcc i32 @timespec64_compare(%struct.timespec64* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 4), %struct.timespec64* noundef nonnull %ts_delta) #18
  %cmp17 = icmp sgt i32 %call16, 0
  br i1 %cmp17, label %out, label %if.end20

if.end20:                                         ; preds = %do.body
  %.unpack = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 4, i32 0), align 8
  %3 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.unpack73 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 4, i32 1), align 16
  %4 = insertvalue [2 x i64] %3, i64 %.unpack73, 1
  %.fca.0.insert55 = insertvalue [2 x i64] poison, i64 %sub, 0
  %.fca.1.insert56 = insertvalue [2 x i64] %.fca.0.insert55, i64 %sub14, 1
  %call22 = call fastcc [2 x i64] @timespec64_sub([2 x i64] %4, [2 x i64] %.fca.1.insert56) #18
  call fastcc void @tk_set_wall_to_mono(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1), [2 x i64] %call22) #18
  call fastcc void @tk_set_xtime(%struct.timespec64* noundef %ts) #18
  br label %out

out:                                              ; preds = %do.body, %if.end20
  %ret.0 = phi i32 [ 0, %if.end20 ], [ -22, %do.body ]
  call fastcc void @timekeeping_update(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1), i32 noundef 7) #18
  call fastcc void @do_write_seqcount_end() #18
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call1) #18
  call void @clock_was_set(i32 noundef 170) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @timespec64_valid_settod(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @timespec64_valid(%struct.timespec64* noundef %ts) #18
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %cmp = icmp ult i64 %0, 8277292036
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin() unnamed_addr #0 {
entry:
  call fastcc void @do_write_seqcount_begin_nested() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @timekeeping_forward_now() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @tk_clock_read(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0)) #18
  %0 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 2), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 1), align 16
  %call3 = call fastcc i64 @clocksource_delta(i64 noundef %call, i64 noundef %0, i64 noundef %1) #18
  store i64 %call, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 2), align 8
  store i64 %call, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 2), align 16
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 3), align 32
  %conv = zext i32 %2 to i64
  %mul = mul i64 %call3, %conv
  %3 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 5), align 8
  %add = add i64 %mul, %3
  store i64 %add, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 5), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 3), align 8
  %conv11 = zext i32 %4 to i64
  %mul12 = mul i64 %call3, %conv11
  %5 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 5), align 32
  %add15 = add i64 %mul12, %5
  store i64 %add15, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 5), align 32
  call fastcc void @tk_normalize_xtime() #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc [2 x i64] @tk_xtime() unnamed_addr #4 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 2), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 5), align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 4), align 4
  %sh_prom = zext i32 %2 to i64
  %shr = lshr i64 %1, %sh_prom
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %0, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %shr, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @timespec64_compare(%struct.timespec64* nocapture noundef readonly %lhs, %struct.timespec64* nocapture noundef readonly %rhs) unnamed_addr #4 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %lhs, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %tv_sec1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %rhs, i64 0, i32 0
  %1 = load i64, i64* %tv_sec1, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i64 %0, %1
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %lhs, i64 0, i32 1
  %2 = load i64, i64* %tv_nsec, align 8
  %tv_nsec7 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %rhs, i64 0, i32 1
  %3 = load i64, i64* %tv_nsec7, align 8
  %sub = sub i64 %2, %3
  %conv = trunc i64 %sub to i32
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ %conv, %if.end6 ], [ -1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tk_set_wall_to_mono(%struct.timekeeper* nocapture noundef %tk, [2 x i64] %wtm.coerce) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %wtm.coerce.fca.0.extract = extractvalue [2 x i64] %wtm.coerce, 0
  %wtm.coerce.fca.1.extract = extractvalue [2 x i64] %wtm.coerce, 1
  %0 = bitcast %struct.timespec64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !30
  %tv_sec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 4, i32 0
  %1 = load i64, i64* %tv_sec, align 8
  %sub = sub i64 0, %1
  %tv_nsec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 4, i32 1
  %2 = load i64, i64* %tv_nsec, align 8
  %sub2 = sub i64 0, %2
  call void @set_normalized_timespec64(%struct.timespec64* noundef nonnull %tmp, i64 noundef %sub, i64 noundef %sub2) #17
  %offs_real = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 5
  %3 = load i64, i64* %offs_real, align 8
  %.fca.0.gep = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tmp, i64 0, i32 0
  %.fca.0.load = load i64, i64* %.fca.0.gep, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %4 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tmp, i64 0, i32 1
  %.fca.1.load = load i64, i64* %4, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  %call = call fastcc i64 @timespec64_to_ktime([2 x i64] %.fca.1.insert) #18
  %cmp.not = icmp eq i64 %3, %call
  br i1 %cmp.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timekeeping.c\22; .popsection; .long 14472b - 14470b; .short 159; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 %wtm.coerce.fca.0.extract, i64* %tv_sec, align 8
  store i64 %wtm.coerce.fca.1.extract, i64* %tv_nsec, align 8
  %sub19 = sub i64 0, %wtm.coerce.fca.0.extract
  %sub21 = sub i64 0, %wtm.coerce.fca.1.extract
  call void @set_normalized_timespec64(%struct.timespec64* noundef nonnull %tmp, i64 noundef %sub19, i64 noundef %sub21) #17
  %.fca.0.load30 = load i64, i64* %.fca.0.gep, align 8
  %.fca.0.insert31 = insertvalue [2 x i64] poison, i64 %.fca.0.load30, 0
  %.fca.1.load33 = load i64, i64* %4, align 8
  %.fca.1.insert34 = insertvalue [2 x i64] %.fca.0.insert31, i64 %.fca.1.load33, 1
  %call22 = call fastcc i64 @timespec64_to_ktime([2 x i64] %.fca.1.insert34) #18
  store i64 %call22, i64* %offs_real, align 8
  %tai_offset = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 8
  %5 = load i32, i32* %tai_offset, align 8
  %conv25 = sext i32 %5 to i64
  %call26 = call fastcc i64 @ktime_set(i64 noundef %conv25, i64 noundef 0) #18
  %add = add i64 %call26, %call22
  %offs_tai = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 7
  store i64 %add, i64* %offs_tai, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @timespec64_sub([2 x i64] %lhs.coerce, [2 x i64] %rhs.coerce) unnamed_addr #0 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %lhs.coerce.fca.0.extract = extractvalue [2 x i64] %lhs.coerce, 0
  %lhs.coerce.fca.1.extract = extractvalue [2 x i64] %lhs.coerce, 1
  %rhs.coerce.fca.0.extract = extractvalue [2 x i64] %rhs.coerce, 0
  %rhs.coerce.fca.1.extract = extractvalue [2 x i64] %rhs.coerce, 1
  %0 = bitcast %struct.timespec64* %retval to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !30
  %sub = sub i64 %lhs.coerce.fca.0.extract, %rhs.coerce.fca.0.extract
  %sub3 = sub i64 %lhs.coerce.fca.1.extract, %rhs.coerce.fca.1.extract
  call void @set_normalized_timespec64(%struct.timespec64* noundef nonnull %retval, i64 noundef %sub, i64 noundef %sub3) #17
  %.fca.0.gep = getelementptr inbounds %struct.timespec64, %struct.timespec64* %retval, i64 0, i32 0
  %.fca.0.load = load i64, i64* %.fca.0.gep, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %retval, i64 0, i32 1
  %.fca.1.load = load i64, i64* %1, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @tk_set_xtime(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #8 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  store i64 %0, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 2), align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 4), align 4
  %sh_prom = zext i32 %2 to i64
  %shl = shl i64 %1, %sh_prom
  store i64 %shl, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 5), align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @timekeeping_update(%struct.timekeeper* noundef %tk, i32 noundef %action) unnamed_addr #0 {
entry:
  %and = and i32 %action, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ntp_error = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 19
  store i64 0, i64* %ntp_error, align 8
  call void @ntp_clear() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @tk_update_leap_state(%struct.timekeeper* noundef %tk) #18
  call fastcc void @tk_update_ktime_data(%struct.timekeeper* noundef %tk) #18
  call void @update_vsyscall(%struct.timekeeper* noundef %tk) #17
  %and1 = and i32 %action, 4
  %tobool2 = icmp ne i32 %and1, 0
  call fastcc void @update_pvclock_gtod(%struct.timekeeper* noundef %tk, i1 noundef %tobool2) #18
  %tkr_mono = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0
  %base = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0, i32 6
  %0 = load i64, i64* %base, align 8
  %offs_real = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 5
  %1 = load i64, i64* %offs_real, align 8
  %add = add i64 %1, %0
  %base_real = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0, i32 7
  store i64 %add, i64* %base_real, align 8
  call fastcc void @update_fast_timekeeper(%struct.tk_read_base* noundef %tkr_mono, %struct.tk_fast* noundef nonnull @tk_fast_mono) #18
  %tkr_raw = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 1
  call fastcc void @update_fast_timekeeper(%struct.tk_read_base* noundef %tkr_raw, %struct.tk_fast* noundef nonnull @tk_fast_raw) #18
  br i1 %tobool2, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %clock_was_set_seq = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 9
  %2 = load i32, i32* %clock_was_set_seq, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %clock_was_set_seq, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %and9 = and i32 %action, 2
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  %call = call i8* @memcpy(i8* noundef bitcast (%struct.timekeeper* @shadow_timekeeper to i8*), i8* noundef bitcast (%struct.timekeeper* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1) to i8*), i64 noundef 280) #17
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_end() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_write_seqcount_end() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clock_was_set(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @timekeeping_warp_clock() local_unnamed_addr #0 {
entry:
  %adjust = alloca %struct.timespec64, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.timezone, %struct.timezone* @sys_tz, i64 0, i32 0), align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.timespec64* %adjust to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #19
  store i32 1, i32* @persistent_clock_is_local, align 4
  %mul = mul i32 %0, 60
  %conv = sext i32 %mul to i64
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %adjust, i64 0, i32 0
  store i64 %conv, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %adjust, i64 0, i32 1
  store i64 0, i64* %tv_nsec, align 8
  %call = call fastcc i32 @timekeeping_inject_offset(%struct.timespec64* noundef nonnull %adjust) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @timekeeping_inject_offset(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %2 = icmp ugt i64 %1, 999999999
  br i1 %2, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #18
  call fastcc void @do_write_seqcount_begin() #18
  call fastcc void @timekeeping_forward_now() #18
  %call13 = call fastcc [2 x i64] @tk_xtime() #18
  %.elt = getelementptr %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %3 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.unpack63 = load i64, i64* %tv_nsec, align 8
  %4 = insertvalue [2 x i64] %3, i64 %.unpack63, 1
  %call14 = call fastcc [2 x i64] @timespec64_add([2 x i64] %call13, [2 x i64] %4) #18
  %call14.fca.0.extract = extractvalue [2 x i64] %call14, 0
  %call14.fca.1.extract = extractvalue [2 x i64] %call14, 1
  %tmp12.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tmp, i64 0, i32 0
  store i64 %call14.fca.0.extract, i64* %tmp12.sroa.0.0..sroa_idx, align 8
  %tmp12.sroa.4.0..sroa_idx46 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tmp, i64 0, i32 1
  store i64 %call14.fca.1.extract, i64* %tmp12.sroa.4.0..sroa_idx46, align 8
  %call15 = call fastcc i32 @timespec64_compare(%struct.timespec64* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 4), %struct.timespec64* noundef %ts) #18
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %error, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %do.body
  %call19 = call fastcc i1 @timespec64_valid_settod(%struct.timespec64* noundef nonnull %tmp) #18
  br i1 %call19, label %if.end21, label %error

if.end21:                                         ; preds = %lor.lhs.false18
  call fastcc void @tk_xtime_add(%struct.timespec64* noundef %ts) #18
  %.unpack64 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 4, i32 0), align 8
  %5 = insertvalue [2 x i64] undef, i64 %.unpack64, 0
  %.unpack65 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 4, i32 1), align 16
  %6 = insertvalue [2 x i64] %5, i64 %.unpack65, 1
  %.unpack67 = load i64, i64* %.elt, align 8
  %7 = insertvalue [2 x i64] undef, i64 %.unpack67, 0
  %.unpack69 = load i64, i64* %tv_nsec, align 8
  %8 = insertvalue [2 x i64] %7, i64 %.unpack69, 1
  %call24 = call fastcc [2 x i64] @timespec64_sub([2 x i64] %6, [2 x i64] %8) #18
  call fastcc void @tk_set_wall_to_mono(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1), [2 x i64] %call24) #18
  br label %error

error:                                            ; preds = %do.body, %lor.lhs.false18, %if.end21
  %ret.0 = phi i32 [ 0, %if.end21 ], [ -22, %lor.lhs.false18 ], [ -22, %do.body ]
  call fastcc void @timekeeping_update(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1), i32 noundef 7) #18
  call fastcc void @do_write_seqcount_end() #18
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #18
  call void @clock_was_set(i32 noundef 170) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %error
  %retval.0 = phi i32 [ %ret.0, %error ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @timekeeping_notify(%struct.clocksource* noundef %clock) local_unnamed_addr #0 {
entry:
  %0 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 0), align 8
  %cmp = icmp eq %struct.clocksource* %0, %clock
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.clocksource* %clock to i8*
  %call = call i32 @stop_machine(i32 (i8*)* noundef nonnull @change_clocksource, i8* noundef %1, %struct.cpumask* noundef null) #17
  %2 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 0), align 8
  %cmp4 = icmp ne %struct.clocksource* %2, %clock
  %cond = sext i1 %cmp4 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_machine(i32 (i8*)* noundef, i8* noundef, %struct.cpumask* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @change_clocksource(i8* noundef %data) #0 {
entry:
  %0 = bitcast i8* %data to %struct.clocksource*
  %enable = getelementptr inbounds i8, i8* %data, i64 96
  %1 = bitcast i8* %enable to i32 (%struct.clocksource*)**
  %2 = load i32 (%struct.clocksource*)*, i32 (%struct.clocksource*)** %1, align 8
  %tobool.not = icmp eq i32 (%struct.clocksource*)* %2, null
  br i1 %tobool.not, label %do.body, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 %2(%struct.clocksource* noundef %0) #17
  %cmp = icmp eq i32 %call2, 0
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false, %entry
  %change.0.off0 = phi i1 [ true, %entry ], [ %cmp, %lor.lhs.false ]
  %call7 = call fastcc i64 @__raw_spin_lock_irqsave() #18
  call fastcc void @do_write_seqcount_begin() #18
  call fastcc void @timekeeping_forward_now() #18
  br i1 %change.0.off0, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body
  %3 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 0), align 8
  call fastcc void @tk_setup_internals(%struct.clocksource* noundef %0) #18
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.body
  %old.0 = phi %struct.clocksource* [ %3, %if.then16 ], [ null, %do.body ]
  call fastcc void @timekeeping_update(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1), i32 noundef 7) #18
  call fastcc void @do_write_seqcount_end() #18
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call7) #18
  %tobool33.not = icmp eq %struct.clocksource* %old.0, null
  br i1 %tobool33.not, label %if.end40, label %if.then34

if.then34:                                        ; preds = %if.end17
  %disable = getelementptr inbounds %struct.clocksource, %struct.clocksource* %old.0, i64 0, i32 15
  %4 = load void (%struct.clocksource*)*, void (%struct.clocksource*)** %disable, align 8
  %tobool35.not = icmp eq void (%struct.clocksource*)* %4, null
  br i1 %tobool35.not, label %if.end40, label %if.then36

if.then36:                                        ; preds = %if.then34
  call void %4(%struct.clocksource* noundef nonnull %old.0) #17
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.then36, %if.end17
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ktime_get_raw_ts64(%struct.timespec64* nocapture noundef %ts) local_unnamed_addr #0 {
entry:
  %dividend.addr.i.i = alloca i64, align 8
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %while.end, %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and15 = and i32 %0, 1
  %tobool.not16 = icmp eq i32 %and15, 0
  br i1 %tobool.not16, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %0, %do.body ], [ %1, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !33
  %2 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 12), align 8
  store i64 %2, i64* %tv_sec, align 8
  %call3 = call fastcc i64 @timekeeping_get_ns(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1)) #18
  %call5 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  store i64 0, i64* %tv_nsec, align 8
  %3 = bitcast i64* %dividend.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #19
  store i64 %call3, i64* %dividend.addr.i.i, align 8
  %cmp1.i.i = icmp ugt i64 %call3, 999999999
  br i1 %cmp1.i.i, label %while.body.i.i, label %timespec64_add_ns.exit

while.body.i.i:                                   ; preds = %do.end, %while.body.i.i
  %ret.02.i.i = phi i32 [ %inc.i.i, %while.body.i.i ], [ 0, %do.end ]
  %4 = phi i64 [ %sub.i.i, %while.body.i.i ], [ %call3, %do.end ]
  call void asm "", "=*rm,0"(i64* nonnull elementtype(i64) %dividend.addr.i.i, i64 %4) #19, !srcloc !12
  %5 = load i64, i64* %dividend.addr.i.i, align 8
  %sub.i.i = add i64 %5, -1000000000
  store i64 %sub.i.i, i64* %dividend.addr.i.i, align 8
  %inc.i.i = add i32 %ret.02.i.i, 1
  %cmp.i.i = icmp ugt i64 %sub.i.i, 999999999
  br i1 %cmp.i.i, label %while.body.i.i, label %__iter_div_u64_rem.exit.loopexit.i

__iter_div_u64_rem.exit.loopexit.i:               ; preds = %while.body.i.i
  %phi.cast.i = zext i32 %inc.i.i to i64
  br label %timespec64_add_ns.exit

timespec64_add_ns.exit:                           ; preds = %do.end, %__iter_div_u64_rem.exit.loopexit.i
  %.lcssa.i.i = phi i64 [ %call3, %do.end ], [ %sub.i.i, %__iter_div_u64_rem.exit.loopexit.i ]
  %ret.0.lcssa.i.i = phi i64 [ 0, %do.end ], [ %phi.cast.i, %__iter_div_u64_rem.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #19
  %6 = load i64, i64* %tv_sec, align 8
  %add1.i = add i64 %6, %ret.0.lcssa.i.i
  store i64 %add1.i, i64* %tv_sec, align 8
  store i64 %.lcssa.i.i, i64* %tv_nsec, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @timekeeping_valid_for_hres() local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %while.end, %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and13 = and i32 %0, 1
  %tobool.not14 = icmp eq i32 %and13, 0
  br i1 %tobool.not14, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %0, %do.body ], [ %1, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !34
  %2 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 0), align 8
  %flags = getelementptr inbounds %struct.clocksource, %struct.clocksource* %2, i64 0, i32 13
  %3 = load i64, i64* %flags, align 8
  %call5 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %4 = trunc i64 %3 to i32
  %conv = and i32 %4, 32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @timekeeping_max_deferment() local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %while.end, %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and12 = and i32 %0, 1
  %tobool.not13 = icmp eq i32 %and12, 0
  br i1 %tobool.not13, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %0, %do.body ], [ %1, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !35
  %2 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 0), align 8
  %max_idle_ns = getelementptr inbounds %struct.clocksource, %struct.clocksource* %2, i64 0, i32 4
  %3 = load i64, i64* %max_idle_ns, align 8
  %call4 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  ret i64 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @read_persistent_clock64(%struct.timespec64* noundef %ts) local_unnamed_addr #0 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  store i64 0, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  store i64 0, i64* %tv_nsec, align 8
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local void @read_persistent_wall_and_boot_offset(%struct.timespec64* noundef %wall_time, %struct.timespec64* noundef %boot_offset) local_unnamed_addr #9 section ".init.text" {
entry:
  call void @read_persistent_clock64(%struct.timespec64* noundef %wall_time) #18
  %call = call fastcc i64 @local_clock() #18
  %call1 = call [2 x i64] @ns_to_timespec64(i64 noundef %call) #17
  %call1.fca.0.extract = extractvalue [2 x i64] %call1, 0
  %call1.fca.1.extract = extractvalue [2 x i64] %call1, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %boot_offset, i64 0, i32 0
  store i64 %call1.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx3 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %boot_offset, i64 0, i32 1
  store i64 %call1.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx3, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @ns_to_timespec64(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @local_clock() unnamed_addr #0 {
entry:
  %call = call i64 @sched_clock() #17
  ret i64 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @timekeeping_init() local_unnamed_addr #9 section ".init.text" {
entry:
  %wall_time = alloca %struct.timespec64, align 8
  %boot_offset = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %wall_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !30
  %1 = bitcast %struct.timespec64* %boot_offset to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !30
  call void @read_persistent_wall_and_boot_offset(%struct.timespec64* noundef nonnull %wall_time, %struct.timespec64* noundef nonnull %boot_offset) #20
  %call = call fastcc i1 @timespec64_valid_settod(%struct.timespec64* noundef nonnull %wall_time) #18
  br i1 %call, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i64 @timespec64_to_ns(%struct.timespec64* noundef nonnull %wall_time) #18
  %cmp = icmp sgt i64 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i1 true, i1* @persistent_clock_exists, align 1
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true, %entry
  %call2 = call fastcc i64 @timespec64_to_ns(%struct.timespec64* noundef nonnull %wall_time) #18
  %cmp3.not = icmp eq i64 %call2, 0
  br i1 %cmp3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.else
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0)) #21
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %wall_time, i64 0, i32 0
  store i64 0, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx53 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %wall_time, i64 0, i32 1
  store i64 0, i64* %.compoundliteral.sroa.2.0..sroa_idx53, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.end, %if.then
  %call7 = call fastcc i32 @timespec64_compare(%struct.timespec64* noundef nonnull %wall_time, %struct.timespec64* noundef nonnull %boot_offset) #18
  %cmp8 = icmp slt i32 %call7, 0
  %.compoundliteral10.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %boot_offset, i64 0, i32 0
  br i1 %cmp8, label %if.then9, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  %.fca.0.load.pre = load i64, i64* %.compoundliteral10.sroa.0.0..sroa_idx, align 8
  %.phi.trans.insert = getelementptr inbounds %struct.timespec64, %struct.timespec64* %boot_offset, i64 0, i32 1
  %.fca.1.load.pre = load i64, i64* %.phi.trans.insert, align 8
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  store i64 0, i64* %.compoundliteral10.sroa.0.0..sroa_idx, align 8
  %.compoundliteral10.sroa.2.0..sroa_idx52 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %boot_offset, i64 0, i32 1
  store i64 0, i64* %.compoundliteral10.sroa.2.0..sroa_idx52, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end6.if.end13_crit_edge, %if.then9
  %.fca.1.load = phi i64 [ %.fca.1.load.pre, %if.end6.if.end13_crit_edge ], [ 0, %if.then9 ]
  %.fca.0.load = phi i64 [ %.fca.0.load.pre, %if.end6.if.end13_crit_edge ], [ 0, %if.then9 ]
  %.fca.0.insert69 = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %.fca.1.insert70 = insertvalue [2 x i64] %.fca.0.insert69, i64 %.fca.1.load, 1
  %.fca.0.gep71 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %wall_time, i64 0, i32 0
  %.fca.0.load72 = load i64, i64* %.fca.0.gep71, align 8
  %.fca.0.insert73 = insertvalue [2 x i64] poison, i64 %.fca.0.load72, 0
  %2 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %wall_time, i64 0, i32 1
  %.fca.1.load75 = load i64, i64* %2, align 8
  %.fca.1.insert76 = insertvalue [2 x i64] %.fca.0.insert73, i64 %.fca.1.load75, 1
  %call15 = call fastcc [2 x i64] @timespec64_sub([2 x i64] %.fca.1.insert70, [2 x i64] %.fca.1.insert76) #18
  %call19 = call fastcc i64 @__raw_spin_lock_irqsave() #18
  call fastcc void @do_write_seqcount_begin() #18
  call void @ntp_init() #17
  %call29 = call %struct.clocksource* @clocksource_default_clock() #21
  %enable = getelementptr inbounds %struct.clocksource, %struct.clocksource* %call29, i64 0, i32 14
  %3 = load i32 (%struct.clocksource*)*, i32 (%struct.clocksource*)** %enable, align 8
  %tobool.not = icmp eq i32 (%struct.clocksource*)* %3, null
  br i1 %tobool.not, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.end13
  %call32 = call i32 %3(%struct.clocksource* noundef %call29) #17
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end13
  call fastcc void @tk_setup_internals(%struct.clocksource* noundef %call29) #18
  call fastcc void @tk_set_xtime(%struct.timespec64* noundef nonnull %wall_time) #18
  store i64 0, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 12), align 8
  call fastcc void @tk_set_wall_to_mono(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1), [2 x i64] %call15) #18
  call fastcc void @timekeeping_update(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1), i32 noundef 6) #18
  call fastcc void @do_write_seqcount_end() #18
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call19) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @timespec64_to_ns(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #4 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %cmp = icmp sgt i64 %0, 9223372035
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp slt i64 %0, -9223372035
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %mul = mul nsw i64 %0, 1000000000
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %add = add i64 %1, %mul
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i64 [ %add, %if.end4 ], [ 9223372036854775807, %entry ], [ -9223372036854775808, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntp_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local %struct.clocksource* @clocksource_default_clock() local_unnamed_addr #10 section ".init.text"

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tk_setup_internals(%struct.clocksource* noundef %clock) unnamed_addr #0 {
entry:
  %0 = load i8, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 10), align 8
  %inc = add i8 %0, 1
  store i8 %inc, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 10), align 8
  %1 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 0), align 8
  store %struct.clocksource* %clock, %struct.clocksource** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 0), align 8
  %mask = getelementptr inbounds %struct.clocksource, %struct.clocksource* %clock, i64 0, i32 1
  %2 = load i64, i64* %mask, align 8
  store i64 %2, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 1), align 16
  %call = call fastcc i64 @tk_clock_read(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0)) #18
  store i64 %call, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 2), align 8
  store %struct.clocksource* %clock, %struct.clocksource** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 0), align 64
  %3 = load i64, i64* %mask, align 8
  store i64 %3, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 1), align 8
  store i64 %call, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 2), align 16
  %shift = getelementptr inbounds %struct.clocksource, %struct.clocksource* %clock, i64 0, i32 3
  %4 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %4 to i64
  %shl = shl i64 4000000, %sh_prom
  %mult = getelementptr inbounds %struct.clocksource, %struct.clocksource* %clock, i64 0, i32 2
  %5 = load i32, i32* %mult, align 8
  %div = lshr i32 %5, 1
  %conv = zext i32 %div to i64
  %add = add i64 %shl, %conv
  %conv17 = zext i32 %5 to i64
  %div20 = udiv i64 %add, %conv17
  %cmp = icmp ult i64 %add, %conv17
  %spec.store.select = select i1 %cmp, i64 1, i64 %div20
  store i64 %spec.store.select, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 14), align 32
  %6 = load i32, i32* %mult, align 8
  %conv24 = zext i32 %6 to i64
  %mul = mul i64 %spec.store.select, %conv24
  store i64 %mul, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 15), align 8
  %sub = sub i64 %shl, %mul
  store i64 %sub, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 16), align 16
  %7 = load i32, i32* %mult, align 8
  %conv27 = zext i32 %7 to i64
  %mul28 = mul i64 %spec.store.select, %conv27
  store i64 %mul28, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 17), align 8
  %tobool.not = icmp eq %struct.clocksource* %1, null
  br i1 %tobool.not, label %if.end53, label %if.then29

if.then29:                                        ; preds = %entry
  %8 = load i32, i32* %shift, align 4
  %shift31 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %1, i64 0, i32 3
  %9 = load i32, i32* %shift31, align 4
  %sub32 = sub i32 %8, %9
  %cmp33 = icmp slt i32 %sub32, 0
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.then29
  %sub36 = sub i32 0, %sub32
  %10 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 5), align 8
  %sh_prom38 = zext i32 %sub36 to i64
  %shr = lshr i64 %10, %sh_prom38
  store i64 %shr, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 5), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 5), align 32
  %shr43 = lshr i64 %11, %sh_prom38
  br label %if.end52

if.else:                                          ; preds = %if.then29
  %12 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 5), align 8
  %sh_prom46 = zext i32 %sub32 to i64
  %shl47 = shl i64 %12, %sh_prom46
  store i64 %shl47, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 5), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 5), align 32
  %shl51 = shl i64 %13, %sh_prom46
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then35
  %storemerge = phi i64 [ %shr43, %if.then35 ], [ %shl51, %if.else ]
  store i64 %storemerge, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 5), align 32
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %entry
  %14 = load i32, i32* %shift, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 4), align 4
  %15 = load i32, i32* %shift, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 4), align 4
  store i64 0, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 19), align 8
  %16 = load i32, i32* %shift, align 4
  %sub61 = sub i32 32, %16
  store i32 %sub61, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 20), align 16
  %sh_prom63 = zext i32 %sub61 to i64
  %shl64 = shl i64 %shl, %sh_prom63
  store i64 %shl64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 18), align 64
  %17 = load i32, i32* %mult, align 8
  store i32 %17, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 3), align 32
  %18 = load i32, i32* %mult, align 8
  store i32 %18, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 21), align 4
  store i32 0, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 22), align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @timekeeping_resume() #0 {
entry:
  %ts_new = alloca %struct.timespec64, align 8
  %ts_delta = alloca %struct.timespec64, align 8
  %0 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 0), align 8
  %1 = bitcast %struct.timespec64* %ts_new to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !30
  %2 = bitcast %struct.timespec64* %ts_delta to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !30
  call void @read_persistent_clock64(%struct.timespec64* noundef nonnull %ts_new) #18
  call void @clockevents_resume() #17
  call void @clocksource_resume() #17
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #18
  call fastcc void @do_write_seqcount_begin() #18
  %call8 = call fastcc i64 @tk_clock_read(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0)) #18
  %call9 = call i64 @clocksource_stop_suspend_timing(%struct.clocksource* noundef %0, i64 noundef %call8) #17
  %cmp10.not = icmp eq i64 %call9, 0
  br i1 %cmp10.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %entry
  %call14 = call [2 x i64] @ns_to_timespec64(i64 noundef %call9) #17
  %call14.fca.0.extract = extractvalue [2 x i64] %call14, 0
  %tmp13.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts_delta, i64 0, i32 0
  store i64 %call14.fca.0.extract, i64* %tmp13.sroa.0.0..sroa_idx, align 8
  br label %if.then23

if.else:                                          ; preds = %entry
  %call15 = call fastcc i32 @timespec64_compare(%struct.timespec64* noundef nonnull %ts_new, %struct.timespec64* noundef nonnull @timekeeping_suspend_time) #18
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.else
  %.fca.0.gep = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts_new, i64 0, i32 0
  %.fca.0.load = load i64, i64* %.fca.0.gep, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %3 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts_new, i64 0, i32 1
  %.fca.1.load = load i64, i64* %3, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  %.unpack = load i64, i64* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @timekeeping_suspend_time, i64 0, i32 0), align 8
  %4 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.unpack62 = load i64, i64* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @timekeeping_suspend_time, i64 0, i32 1), align 8
  %5 = insertvalue [2 x i64] %4, i64 %.unpack62, 1
  %call20 = call fastcc [2 x i64] @timespec64_sub([2 x i64] %.fca.1.insert, [2 x i64] %5) #18
  %call20.fca.0.extract = extractvalue [2 x i64] %call20, 0
  %tmp19.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts_delta, i64 0, i32 0
  store i64 %call20.fca.0.extract, i64* %tmp19.sroa.0.0..sroa_idx, align 8
  br label %if.then23

if.then23:                                        ; preds = %if.then18, %if.then12
  %call20.pn = phi [2 x i64] [ %call20, %if.then18 ], [ %call14, %if.then12 ]
  %call20.fca.1.extract.sink = extractvalue [2 x i64] %call20.pn, 1
  %tmp19.sroa.4.0..sroa_idx43 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts_delta, i64 0, i32 1
  store i64 %call20.fca.1.extract.sink, i64* %tmp19.sroa.4.0..sroa_idx43, align 8
  call fastcc void @__timekeeping_inject_sleeptime(%struct.timespec64* noundef nonnull %ts_delta) #18
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then23
  store i64 %call8, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 2), align 8
  store i64 %call8, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 2), align 16
  store i64 0, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 19), align 8
  store i32 0, i32* @timekeeping_suspended, align 4
  call fastcc void @timekeeping_update(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1), i32 noundef 6) #18
  call fastcc void @do_write_seqcount_end() #18
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #18
  call void @tick_resume() #17
  call void @timerfd_resume() #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocksource_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_stop_suspend_timing(%struct.clocksource* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__timekeeping_inject_sleeptime(%struct.timespec64* nocapture noundef readonly %delta) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @timespec64_valid_strict(%struct.timespec64* noundef %delta) #18
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk_deferred(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0)) #21
  br label %return

if.end:                                           ; preds = %entry
  call fastcc void @tk_xtime_add(%struct.timespec64* noundef %delta) #18
  %.unpack = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 4, i32 0), align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.unpack1 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 4, i32 1), align 16
  %1 = insertvalue [2 x i64] %0, i64 %.unpack1, 1
  %.elt = getelementptr %struct.timespec64, %struct.timespec64* %delta, i64 0, i32 0
  %.unpack2 = load i64, i64* %.elt, align 8
  %2 = insertvalue [2 x i64] undef, i64 %.unpack2, 0
  %3 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %delta, i64 0, i32 1
  %.unpack4 = load i64, i64* %3, align 8
  %4 = insertvalue [2 x i64] %2, i64 %.unpack4, 1
  %call2 = call fastcc [2 x i64] @timespec64_sub([2 x i64] %1, [2 x i64] %4) #18
  call fastcc void @tk_set_wall_to_mono(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1), [2 x i64] %call2) #18
  %.unpack6 = load i64, i64* %.elt, align 8
  %5 = insertvalue [2 x i64] undef, i64 %.unpack6, 0
  %.unpack8 = load i64, i64* %3, align 8
  %6 = insertvalue [2 x i64] %5, i64 %.unpack8, 1
  %call3 = call fastcc i64 @timespec64_to_ktime([2 x i64] %6) #18
  call fastcc void @tk_update_sleep_time(i64 noundef %call3) #18
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timerfd_resume() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @timekeeping_suspend() #0 {
entry:
  call void @read_persistent_clock64(%struct.timespec64* noundef nonnull @timekeeping_suspend_time) #18
  %0 = load i64, i64* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @timekeeping_suspend_time, i64 0, i32 0), align 8
  %tobool = icmp ne i64 %0, 0
  %1 = load i64, i64* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @timekeeping_suspend_time, i64 0, i32 1), align 8
  %tobool1 = icmp ne i64 %1, 0
  %or.cond = select i1 %tobool, i1 true, i1 %tobool1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* @persistent_clock_exists, align 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #18
  call fastcc void @do_write_seqcount_begin() #18
  call fastcc void @timekeeping_forward_now() #18
  store i32 1, i32* @timekeeping_suspended, align 4
  %2 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 0), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 2), align 8
  call void @clocksource_start_suspend_timing(%struct.clocksource* noundef %2, i64 noundef %3) #17
  %.b78 = load i1, i1* @persistent_clock_exists, align 1
  br i1 %.b78, label %if.then11, label %if.end26

if.then11:                                        ; preds = %if.end
  %call13 = call fastcc [2 x i64] @tk_xtime() #18
  %.unpack = load i64, i64* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @timekeeping_suspend_time, i64 0, i32 0), align 8
  %4 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.unpack79 = load i64, i64* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @timekeeping_suspend_time, i64 0, i32 1), align 8
  %5 = insertvalue [2 x i64] %4, i64 %.unpack79, 1
  %call14 = call fastcc [2 x i64] @timespec64_sub([2 x i64] %call13, [2 x i64] %5) #18
  %.unpack80 = load i64, i64* @timekeeping_suspend.old_delta.0, align 8
  %6 = insertvalue [2 x i64] undef, i64 %.unpack80, 0
  %.unpack81 = load i64, i64* @timekeeping_suspend.old_delta.1, align 8
  %7 = insertvalue [2 x i64] %6, i64 %.unpack81, 1
  %call16 = call fastcc [2 x i64] @timespec64_sub([2 x i64] %call14, [2 x i64] %7) #18
  %call16.fca.0.extract = extractvalue [2 x i64] %call16, 0
  %8 = call i64 @llvm.abs.i64(i64 %call16.fca.0.extract, i1 false)
  %cmp20 = icmp sgt i64 %8, 1
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then11
  %call14.fca.1.extract = extractvalue [2 x i64] %call14, 1
  %call14.fca.0.extract = extractvalue [2 x i64] %call14, 0
  store i64 %call14.fca.0.extract, i64* @timekeeping_suspend.old_delta.0, align 8
  store i64 %call14.fca.1.extract, i64* @timekeeping_suspend.old_delta.1, align 8
  br label %if.end26

if.else:                                          ; preds = %if.then11
  %.unpack82 = load i64, i64* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @timekeeping_suspend_time, i64 0, i32 0), align 8
  %9 = insertvalue [2 x i64] undef, i64 %.unpack82, 0
  %.unpack83 = load i64, i64* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @timekeeping_suspend_time, i64 0, i32 1), align 8
  %10 = insertvalue [2 x i64] %9, i64 %.unpack83, 1
  %call24 = call fastcc [2 x i64] @timespec64_add([2 x i64] %10, [2 x i64] %call16) #18
  %call24.fca.0.extract = extractvalue [2 x i64] %call24, 0
  %call24.fca.1.extract = extractvalue [2 x i64] %call24, 1
  store i64 %call24.fca.0.extract, i64* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @timekeeping_suspend_time, i64 0, i32 0), align 8
  store i64 %call24.fca.1.extract, i64* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @timekeeping_suspend_time, i64 0, i32 1), align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.else, %if.end
  call fastcc void @timekeeping_update(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1), i32 noundef 2) #18
  call fastcc void @halt_fast_timekeeper() #18
  call fastcc void @do_write_seqcount_end() #18
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #18
  call void @tick_suspend() #17
  call void @clocksource_suspend() #17
  call void @clockevents_suspend() #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocksource_start_suspend_timing(%struct.clocksource* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @timespec64_add([2 x i64] %lhs.coerce, [2 x i64] %rhs.coerce) unnamed_addr #0 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %lhs.coerce.fca.0.extract = extractvalue [2 x i64] %lhs.coerce, 0
  %lhs.coerce.fca.1.extract = extractvalue [2 x i64] %lhs.coerce, 1
  %rhs.coerce.fca.0.extract = extractvalue [2 x i64] %rhs.coerce, 0
  %rhs.coerce.fca.1.extract = extractvalue [2 x i64] %rhs.coerce, 1
  %0 = bitcast %struct.timespec64* %retval to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !30
  %add = add i64 %rhs.coerce.fca.0.extract, %lhs.coerce.fca.0.extract
  %add3 = add i64 %rhs.coerce.fca.1.extract, %lhs.coerce.fca.1.extract
  call void @set_normalized_timespec64(%struct.timespec64* noundef nonnull %retval, i64 noundef %add, i64 noundef %add3) #17
  %.fca.0.gep = getelementptr inbounds %struct.timespec64, %struct.timespec64* %retval, i64 0, i32 0
  %.fca.0.load = load i64, i64* %.fca.0.gep, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %retval, i64 0, i32 1
  %.fca.1.load = load i64, i64* %1, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @halt_fast_timekeeper() unnamed_addr #0 {
entry:
  %call = call i8* @memcpy(i8* noundef bitcast (%struct.tk_read_base* @halt_fast_timekeeper.tkr_dummy to i8*), i8* noundef bitcast (%struct.tk_read_base* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0) to i8*), i64 noundef 56) #17
  %call1 = call fastcc i64 @tk_clock_read(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0)) #18
  store i64 %call1, i64* @cycles_at_suspend, align 8
  store %struct.clocksource* @dummy_clock, %struct.clocksource** getelementptr inbounds (%struct.tk_read_base, %struct.tk_read_base* @halt_fast_timekeeper.tkr_dummy, i64 0, i32 0), align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 6), align 16
  %1 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 5), align 8
  %add = add i64 %1, %0
  store i64 %add, i64* getelementptr inbounds (%struct.tk_read_base, %struct.tk_read_base* @halt_fast_timekeeper.tkr_dummy, i64 0, i32 7), align 8
  call fastcc void @update_fast_timekeeper(%struct.tk_read_base* noundef nonnull @halt_fast_timekeeper.tkr_dummy, %struct.tk_fast* noundef nonnull @tk_fast_mono) #18
  %call2 = call i8* @memcpy(i8* noundef bitcast (%struct.tk_read_base* @halt_fast_timekeeper.tkr_dummy to i8*), i8* noundef bitcast (%struct.tk_read_base* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1) to i8*), i64 noundef 56) #17
  store %struct.clocksource* @dummy_clock, %struct.clocksource** getelementptr inbounds (%struct.tk_read_base, %struct.tk_read_base* @halt_fast_timekeeper.tkr_dummy, i64 0, i32 0), align 8
  call fastcc void @update_fast_timekeeper(%struct.tk_read_base* noundef nonnull @halt_fast_timekeeper.tkr_dummy, %struct.tk_fast* noundef nonnull @tk_fast_raw) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocksource_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_suspend() local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @timekeeping_init_ops() #9 section ".init.text" {
entry:
  call void @register_syscore_ops(%struct.syscore_ops* noundef nonnull @timekeeping_syscore_ops) #17
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @update_wall_time() local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @timekeeping_advance(i32 noundef 0) #18
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @clock_was_set_delayed() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @timekeeping_advance(i32 noundef %mode) unnamed_addr #0 {
entry:
  %clock_set = alloca i32, align 4
  %0 = bitcast i32* %clock_set to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 0, i32* %clock_set, align 4
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #18
  %1 = load i32, i32* @timekeeping_suspended, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %do.body82, !prof !9

if.end:                                           ; preds = %entry
  %call4 = call fastcc i64 @tk_clock_read(%struct.tk_read_base* noundef getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0)) #18
  %2 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 2), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 1), align 8
  %call7 = call fastcc i64 @clocksource_delta(i64 noundef %call4, i64 noundef %2, i64 noundef %3) #18
  %4 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 14), align 32
  %cmp8 = icmp ult i64 %call7, %4
  %cmp10 = icmp eq i32 %mode, 0
  %or.cond = and i1 %cmp10, %cmp8
  br i1 %or.cond, label %do.body82, label %cond.false17

cond.false17:                                     ; preds = %if.end
  %call18 = call fastcc i32 @__ilog2_u64(i64 noundef %call7) #22
  %5 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 14), align 8
  %call35 = call fastcc i32 @__ilog2_u64(i64 noundef %5) #22
  %sub38 = sub i32 %call18, %call35
  %6 = icmp sgt i32 %sub38, 0
  %cond45 = select i1 %6, i32 %sub38, i32 0
  %call46 = call i64 @ntp_tick_length() #17
  %call47 = call fastcc i32 @__ilog2_u64(i64 noundef %call46) #22
  %sub49 = sub i32 62, %call47
  %7 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 14), align 8
  %cmp58.not137 = icmp ult i64 %call7, %7
  br i1 %cmp58.not137, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %cond.false17
  %cmp51 = icmp slt i32 %cond45, %sub49
  %cond56 = select i1 %cmp51, i32 %cond45, i32 %sub49
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %offset.0139 = phi i64 [ %call60, %while.body ], [ %call7, %while.body.preheader ]
  %shift.0138 = phi i32 [ %spec.select, %while.body ], [ %cond56, %while.body.preheader ]
  %call60 = call fastcc i64 @logarithmic_accumulation(i64 noundef %offset.0139, i32 noundef %shift.0138, i32* noundef nonnull %clock_set) #18
  %8 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 14), align 8
  %sh_prom = zext i32 %shift.0138 to i64
  %shl = shl i64 %8, %sh_prom
  %cmp62 = icmp ult i64 %call60, %shl
  %dec = sext i1 %cmp62 to i32
  %spec.select = add i32 %shift.0138, %dec
  %cmp58.not = icmp ult i64 %call60, %8
  br i1 %cmp58.not, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %while.body
  %.pre = load i32, i32* %clock_set, align 4
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %cond.false17
  %9 = phi i32 [ 0, %cond.false17 ], [ %.pre, %while.end.loopexit ]
  %offset.0.lcssa = phi i64 [ %call7, %cond.false17 ], [ %call60, %while.end.loopexit ]
  call fastcc void @timekeeping_adjust(i64 noundef %offset.0.lcssa) #18
  %call66 = call fastcc i32 @accumulate_nsecs_to_secs() #18
  %or = or i32 %9, %call66
  call fastcc void @do_write_seqcount_begin() #18
  call fastcc void @timekeeping_update(%struct.timekeeper* noundef nonnull @shadow_timekeeper, i32 noundef %or) #18
  %call74 = call i8* @memcpy(i8* noundef bitcast (%struct.timekeeper* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1) to i8*), i8* noundef bitcast (%struct.timekeeper* @shadow_timekeeper to i8*), i64 noundef 280) #17
  call fastcc void @do_write_seqcount_end() #18
  %phi.cmp = icmp ne i32 %or, 0
  br label %do.body82

do.body82:                                        ; preds = %while.end, %entry, %if.end
  %10 = phi i1 [ %phi.cmp, %while.end ], [ false, %entry ], [ false, %if.end ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clock_was_set_delayed() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @getboottime64(%struct.timespec64* nocapture noundef writeonly %ts) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 5), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 6), align 32
  %sub = sub i64 %0, %1
  %call = call [2 x i64] @ns_to_timespec64(i64 noundef %sub) #17
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %call.fca.1.extract = extractvalue [2 x i64] %call, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  store i64 %call.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx2 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  store i64 %call.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx2, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ktime_get_coarse_real_ts64(%struct.timespec64* nocapture noundef writeonly %ts) local_unnamed_addr #0 {
entry:
  %tmp3.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %tmp3.sroa.4.0..sroa_idx9 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  br label %do.body

do.body:                                          ; preds = %while.end, %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and15 = and i32 %0, 1
  %tobool.not16 = icmp eq i32 %and15, 0
  br i1 %tobool.not16, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %0, %do.body ], [ %1, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !36
  %call4 = call fastcc [2 x i64] @tk_xtime() #18
  %call4.fca.0.extract = extractvalue [2 x i64] %call4, 0
  %call4.fca.1.extract = extractvalue [2 x i64] %call4, 1
  store i64 %call4.fca.0.extract, i64* %tmp3.sroa.0.0..sroa_idx, align 8
  store i64 %call4.fca.1.extract, i64* %tmp3.sroa.4.0..sroa_idx9, align 8
  %call6 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ktime_get_coarse_ts64(%struct.timespec64* noundef %ts) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %while.end, %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and30 = and i32 %0, 1
  %tobool.not31 = icmp eq i32 %and30, 0
  br i1 %tobool.not31, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %0, %do.body ], [ %1, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !37
  %call4 = call fastcc [2 x i64] @tk_xtime() #18
  %mono.sroa.0.0.copyload = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 4, i32 0), align 8
  %mono.sroa.5.0.copyload = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 4, i32 1), align 16
  %call6 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  %call4.fca.1.extract = extractvalue [2 x i64] %call4, 1
  %call4.fca.0.extract = extractvalue [2 x i64] %call4, 0
  %add = add i64 %call4.fca.0.extract, %mono.sroa.0.0.copyload
  %add10 = add i64 %mono.sroa.5.0.copyload, %call4.fca.1.extract
  call void @set_normalized_timespec64(%struct.timespec64* noundef %ts, i64 noundef %add, i64 noundef %add10) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(%struct.timespec64* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_timer(i64 noundef %ticks) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* @jiffies_64, align 64
  %add = add i64 %0, %ticks
  store i64 %add, i64* @jiffies_64, align 64
  call void @calc_global_load() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @calc_global_load() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ktime_get_update_offsets_now(i32* nocapture noundef %cwsseq, i64* nocapture noundef writeonly %offs_real, i64* nocapture noundef writeonly %offs_boot, i64* nocapture noundef writeonly %offs_tai) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and38 = and i32 %0, 1
  %tobool.not39 = icmp eq i32 %and38, 0
  br i1 %tobool.not39, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %0, %do.body ], [ %1, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !38
  %2 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 6), align 16
  %call5 = call fastcc i64 @timekeeping_get_ns(%struct.tk_read_base* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0)) #18
  %add = add i64 %call5, %2
  %3 = load i32, i32* %cwsseq, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 9), align 4
  %cmp.not = icmp eq i32 %3, %4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  store i32 %4, i32* %cwsseq, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 5), align 8
  store i64 %5, i64* %offs_real, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 6), align 32
  store i64 %6, i64* %offs_boot, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 7), align 8
  store i64 %7, i64* %offs_tai, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %8 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 11), align 64
  %cmp10.not = icmp slt i64 %add, %8
  br i1 %cmp10.not, label %do.cond, label %if.then13, !prof !9

if.then13:                                        ; preds = %if.end
  %9 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 5), align 8
  %call15 = call fastcc i64 @ktime_set(i64 noundef 1, i64 noundef 0) #18
  %sub = sub i64 %9, %call15
  store i64 %sub, i64* %offs_real, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end, %if.then13
  %call18 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0), i32 noundef %.lcssa) #18
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  ret i64 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) unnamed_addr #6 {
entry:
  %cmp = icmp sgt i64 %secs, 9223372035
  %mul = mul i64 %secs, 1000000000
  %add = add i64 %mul, %nsecs
  %retval.0 = select i1 %cmp, i64 9223372036854775807, i64 %add, !prof !39
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_adjtimex(%struct.__kernel_timex* noundef %txc) local_unnamed_addr #0 {
entry:
  %ad = alloca %struct.audit_ntp_data, align 1
  %ts = alloca %struct.timespec64, align 8
  %tai = alloca i32, align 4
  %delta = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.audit_ntp_data* %ad to i8*
  call void @llvm.lifetime.start.p0i8(i64 0, i8* nonnull %0) #19
  %1 = bitcast %struct.timespec64* %ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !30
  %2 = bitcast i32* %tai to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #19
  %call = call fastcc i32 @timekeeping_validate_timex(%struct.__kernel_timex* noundef %txc) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup57

if.end:                                           ; preds = %entry
  %modes = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 0
  %3 = load i32, i32* %modes, align 8
  %and = and i32 %3, 256
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end15, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = bitcast %struct.timespec64* %delta to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #19
  %tv_sec = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 11, i32 0
  %5 = load i64, i64* %tv_sec, align 8
  %tv_sec3 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %delta, i64 0, i32 0
  store i64 %5, i64* %tv_sec3, align 8
  %tv_usec = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 11, i32 1
  %6 = load i64, i64* %tv_usec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %delta, i64 0, i32 1
  %and6 = and i32 %3, 8192
  %tobool7.not = icmp eq i32 %and6, 0
  %mul = mul i64 %6, 1000
  %spec.select = select i1 %tobool7.not, i64 %mul, i64 %6
  store i64 %spec.select, i64* %tv_nsec, align 8
  %call11 = call fastcc i32 @timekeeping_inject_offset(%struct.timespec64* noundef nonnull %delta) #18
  %tobool12.not = icmp eq i32 %call11, 0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #19
  br i1 %tobool12.not, label %if.end15, label %cleanup57

if.end15:                                         ; preds = %if.then2, %if.end
  call void @ktime_get_real_ts64(%struct.timespec64* noundef nonnull %ts) #18
  %call16 = call fastcc i64 @__raw_spin_lock_irqsave() #18
  call fastcc void @do_write_seqcount_begin() #18
  %7 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 8), align 16
  store i32 %7, i32* %tai, align 4
  %call24 = call i32 @__do_adjtimex(%struct.__kernel_timex* noundef %txc, %struct.timespec64* noundef nonnull %ts, i32* noundef nonnull %tai, %struct.audit_ntp_data* noundef nonnull %ad) #17
  %8 = load i32, i32* %tai, align 4
  %cmp25.not = icmp eq i32 %8, %7
  br i1 %cmp25.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end15
  call fastcc void @__timekeeping_set_tai_offset(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1), i32 noundef %8) #18
  call fastcc void @timekeeping_update(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1), i32 noundef 6) #18
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end15
  call fastcc void @tk_update_leap_state(%struct.timekeeper* noundef getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1)) #18
  call fastcc void @do_write_seqcount_end() #18
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call16) #18
  %9 = load i32, i32* %modes, align 8
  %and45 = and i32 %9, 16386
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end53, label %if.then47

if.then47:                                        ; preds = %if.end28
  %10 = xor i1 %cmp25.not, true
  %call48 = call fastcc i1 @timekeeping_advance(i32 noundef 1) #18
  %or84 = or i1 %call48, %10
  br i1 %or84, label %if.then55, label %cleanup57

if.end53:                                         ; preds = %if.end28
  br i1 %cmp25.not, label %cleanup57, label %if.then55

if.then55:                                        ; preds = %if.then47, %if.end53
  call void @clock_was_set(i32 noundef 0) #17
  br label %cleanup57

cleanup57:                                        ; preds = %if.then2, %if.end53, %if.then55, %if.then47, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ %call24, %if.then47 ], [ %call24, %if.then55 ], [ %call24, %if.end53 ], [ %call11, %if.then2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #19
  call void @llvm.lifetime.end.p0i8(i64 0, i8* nonnull %0) #19
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @timekeeping_validate_timex(%struct.__kernel_timex* nocapture noundef readonly %txc) unnamed_addr #0 {
entry:
  %modes = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 0
  %0 = load i32, i32* %modes, align 8
  %and = and i32 %0, 32768
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %0, 1
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %and6 = and i32 %0, 8192
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end
  %call = call i1 @capable(i32 noundef 25) #17
  br i1 %call, label %land.lhs.true.if.end24_crit_edge, label %return

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  %.pre81 = load i32, i32* %modes, align 8
  br label %if.end24

if.else:                                          ; preds = %entry
  %tobool11.not = icmp eq i32 %0, 0
  br i1 %tobool11.not, label %if.end63, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.else
  %call13 = call i1 @capable(i32 noundef 25) #17
  br i1 %call13, label %if.end15, label %return

if.end15:                                         ; preds = %land.lhs.true12
  %.pre = load i32, i32* %modes, align 8
  %and17 = and i32 %.pre, 16384
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end24, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end15
  %tick = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 12
  %1 = load i64, i64* %tick, align 8
  %2 = add i64 %1, -11001
  %3 = icmp ult i64 %2, -2001
  br i1 %3, label %return, label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %land.lhs.true19, %if.end15, %if.end
  %4 = phi i32 [ %.pre81, %land.lhs.true.if.end24_crit_edge ], [ %.pre, %land.lhs.true19 ], [ %.pre, %if.end15 ], [ %0, %if.end ]
  %and26 = and i32 %4, 256
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end51, label %if.then28

if.then28:                                        ; preds = %if.end24
  %call29 = call i1 @capable(i32 noundef 25) #17
  br i1 %call29, label %if.end31, label %return

if.end31:                                         ; preds = %if.then28
  %tv_usec = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 11, i32 1
  %5 = load i64, i64* %tv_usec, align 8
  %cmp32 = icmp slt i64 %5, 0
  br i1 %cmp32, label %return, label %if.end34

if.end34:                                         ; preds = %if.end31
  %6 = load i32, i32* %modes, align 8
  %and36 = and i32 %6, 8192
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else44, label %if.then38

if.then38:                                        ; preds = %if.end34
  %cmp41 = icmp ugt i64 %5, 999999999
  br i1 %cmp41, label %return, label %if.end51

if.else44:                                        ; preds = %if.end34
  %cmp47 = icmp ugt i64 %5, 999999
  br i1 %cmp47, label %return, label %if.end51

if.end51:                                         ; preds = %if.then38, %if.else44, %if.end24
  %7 = phi i32 [ %6, %if.then38 ], [ %6, %if.else44 ], [ %4, %if.end24 ]
  %and53 = and i32 %7, 2
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end63, label %if.then55

if.then55:                                        ; preds = %if.end51
  %freq = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 3
  %8 = load i64, i64* %freq, align 8
  %9 = add i64 %8, -140737488356
  %10 = icmp ult i64 %9, -281474976711
  br i1 %10, label %return, label %if.end63

if.end63:                                         ; preds = %if.else, %if.then55, %if.end51
  br label %return

return:                                           ; preds = %if.then55, %if.else44, %if.then38, %if.end31, %if.then28, %land.lhs.true19, %land.lhs.true12, %land.lhs.true, %if.then, %if.end63
  %retval.0 = phi i32 [ 0, %if.end63 ], [ -22, %if.then ], [ -1, %land.lhs.true ], [ -1, %land.lhs.true12 ], [ -22, %land.lhs.true19 ], [ -1, %if.then28 ], [ -22, %if.end31 ], [ -22, %if.then38 ], [ -22, %if.else44 ], [ -22, %if.then55 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__do_adjtimex(%struct.__kernel_timex* noundef, %struct.timespec64* noundef, i32* noundef, %struct.audit_ntp_data* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__timekeeping_set_tai_offset(%struct.timekeeper* nocapture noundef %tk, i32 noundef %tai_offset) unnamed_addr #8 {
entry:
  %tai_offset1 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 8
  store i32 %tai_offset, i32* %tai_offset1, align 8
  %offs_real = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 5
  %0 = load i64, i64* %offs_real, align 8
  %conv = sext i32 %tai_offset to i64
  %call = call fastcc i64 @ktime_set(i64 noundef %conv, i64 noundef 0) #18
  %add = add i64 %call, %0
  %offs_tai = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 7
  store i64 %add, i64* %offs_tai, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tk_update_leap_state(%struct.timekeeper* nocapture noundef %tk) unnamed_addr #0 {
entry:
  %call = call i64 @ntp_get_next_leap() #17
  %next_leap_ktime = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 11
  store i64 %call, i64* %next_leap_ktime, align 8
  %cmp.not = icmp eq i64 %call, 9223372036854775807
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %offs_real = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 5
  %0 = load i64, i64* %offs_real, align 8
  %sub = sub i64 %call, %0
  store i64 %sub, i64* %next_leap_ktime, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @raw_read_seqcount_latch(%struct.seqcount_latch_t* noundef %s) unnamed_addr #11 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount_latch_t, %struct.seqcount_latch_t* %s, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %sequence, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @timekeeping_delta_to_ns(%struct.tk_read_base* nocapture noundef readonly %tkr, i64 noundef %delta) unnamed_addr #4 {
entry:
  %mult = getelementptr inbounds %struct.tk_read_base, %struct.tk_read_base* %tkr, i64 0, i32 3
  %0 = load i32, i32* %mult, align 8
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, %delta
  %xtime_nsec = getelementptr inbounds %struct.tk_read_base, %struct.tk_read_base* %tkr, i64 0, i32 5
  %1 = load i64, i64* %xtime_nsec, align 8
  %add = add i64 %mul, %1
  %shift = getelementptr inbounds %struct.tk_read_base, %struct.tk_read_base* %tkr, i64 0, i32 4
  %2 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %2 to i64
  %shr = lshr i64 %add, %sh_prom
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @clocksource_delta(i64 noundef %now, i64 noundef %last, i64 noundef %mask) unnamed_addr #6 {
entry:
  %sub = sub i64 %now, %last
  %and = and i64 %sub, %mask
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @read_seqcount_latch_retry(%struct.seqcount_latch_t* noundef %s, i32 noundef %start) unnamed_addr #0 {
entry:
  %seqcount = getelementptr inbounds %struct.seqcount_latch_t, %struct.seqcount_latch_t* %s, i64 0, i32 0
  %call1 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount, i32 noundef %start) #18
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @dummy_clock_read(%struct.clocksource* nocapture noundef readnone %cs) #0 {
entry:
  %0 = load i32, i32* @timekeeping_suspended, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @cycles_at_suspend, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @local_clock() #18
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %1, %if.then ], [ %call, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #18
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #18
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @timekeeper_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #19, !srcloc !40
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #19, !srcloc !41
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #18
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !39

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #19, !srcloc !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #11 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @timekeeper_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @timekeeper_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #19, !srcloc !43
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(%struct.raw_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.raw_spinlock* @timekeeper_lock to i8*), i8 0) #19, !srcloc !44
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #19, !srcloc !45
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @timekeeping_get_delta(%struct.tk_read_base* noundef %tkr) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @tk_clock_read(%struct.tk_read_base* noundef %tkr) #18
  %cycle_last = getelementptr inbounds %struct.tk_read_base, %struct.tk_read_base* %tkr, i64 0, i32 2
  %0 = load i64, i64* %cycle_last, align 8
  %mask = getelementptr inbounds %struct.tk_read_base, %struct.tk_read_base* %tkr, i64 0, i32 1
  %1 = load i64, i64* %mask, align 8
  %call1 = call fastcc i64 @clocksource_delta(i64 noundef %call, i64 noundef %0, i64 noundef %1) #18
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #11 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load volatile i32, i32* %sequence, align 4
  %cmp = icmp ne i32 %0, %start
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @scale64_check_overflow(i64 noundef %mult, i64 noundef %div, i64* nocapture noundef %base) unnamed_addr #7 {
entry:
  %rem = alloca i64, align 8
  %0 = bitcast i64* %rem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  store i64 0, i64* %rem, align 8, !annotation !30
  %1 = load i64, i64* %base, align 8
  %call = call fastcc i64 @div64_u64_rem(i64 noundef %1, i64 noundef %div, i64* noundef nonnull %rem) #18
  %2 = call i64 @llvm.ctlz.i64(i64 %mult, i1 false) #19, !range !46
  %3 = trunc i64 %2 to i32
  %cmp.i18 = icmp eq i64 %call, 0
  %4 = call i64 @llvm.ctlz.i64(i64 %call, i1 false) #19, !range !46
  %5 = trunc i64 %4 to i32
  %conv.i19 = sub nuw nsw i32 64, %5
  %retval.0.i20 = select i1 %cmp.i18, i32 0, i32 %conv.i19
  %cmp = icmp ugt i32 %retval.0.i20, %3
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i64, i64* %rem, align 8
  %cmp.i24 = icmp eq i64 %6, 0
  %7 = call i64 @llvm.ctlz.i64(i64 %6, i1 false) #19, !range !46
  %8 = trunc i64 %7 to i32
  %conv.i25 = sub nuw nsw i32 64, %8
  %retval.0.i26 = select i1 %cmp.i24, i32 0, i32 %conv.i25
  %cmp6 = icmp ugt i32 %retval.0.i26, %3
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %mul = mul i64 %call, %mult
  %mul7 = mul i64 %6, %mult
  %call8 = call fastcc i64 @div64_u64(i64 noundef %mul7, i64 noundef %div) #18
  %add = add i64 %call8, %mul
  store i64 %add, i64* %base, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -75, %lor.lhs.false ], [ -75, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @mul_u64_u32_div(i64 noundef %a, i32 noundef %mul, i32 noundef %divisor) unnamed_addr #6 {
entry:
  %u.sroa.0.0.extract.trunc = trunc i64 %a to i32
  %u.sroa.5.0.extract.shift = lshr i64 %a, 32
  %u.sroa.5.0.extract.trunc = trunc i64 %u.sroa.5.0.extract.shift to i32
  %call = call fastcc i64 @mul_u32_u32(i32 noundef %u.sroa.0.0.extract.trunc, i32 noundef %mul) #18
  %rl.sroa.8.0.extract.shift = lshr i64 %call, 32
  %call3 = call fastcc i64 @mul_u32_u32(i32 noundef %u.sroa.5.0.extract.trunc, i32 noundef %mul) #18
  %add = add i64 %call3, %rl.sroa.8.0.extract.shift
  %conv8 = zext i32 %divisor to i64
  %add.frozen = freeze i64 %add
  %div = udiv i64 %add.frozen, %conv8
  %0 = mul i64 %div, %conv8
  %rem.decomposed = sub i64 %add.frozen, %0
  %rl.sroa.8.0.insert.shift = shl nuw i64 %rem.decomposed, 32
  %rl.sroa.0.0.insert.ext = and i64 %call, 4294967295
  %rl.sroa.0.0.insert.insert = or i64 %rl.sroa.8.0.insert.shift, %rl.sroa.0.0.insert.ext
  %div23 = udiv i64 %rl.sroa.0.0.insert.insert, %conv8
  %rl.sroa.8.0.insert.shift82 = shl i64 %div, 32
  %rl.sroa.0.0.insert.ext68 = and i64 %div23, 4294967295
  %rl.sroa.0.0.insert.insert70 = or i64 %rl.sroa.0.0.insert.ext68, %rl.sroa.8.0.insert.shift82
  ret i64 %rl.sroa.0.0.insert.insert70
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div64_u64_rem(i64 noundef %dividend, i64 noundef %divisor, i64* nocapture noundef writeonly %remainder) unnamed_addr #12 {
entry:
  %div = udiv i64 %dividend, %divisor
  %0 = mul i64 %div, %divisor
  %rem.decomposed = sub i64 %dividend, %0
  store i64 %rem.decomposed, i64* %remainder, align 8
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @div64_u64(i64 noundef %dividend, i64 noundef %divisor) unnamed_addr #6 {
entry:
  %div = udiv i64 %dividend, %divisor
  ret i64 %div
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @mul_u32_u32(i32 noundef %a, i32 noundef %b) unnamed_addr #6 {
entry:
  %conv = zext i32 %a to i64
  %conv1 = zext i32 %b to i64
  %mul = mul nuw i64 %conv1, %conv
  ret i64 %mul
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @timespec64_valid(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #4 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %cmp1 = icmp ult i64 %1, 1000000000
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin_nested() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_write_seqcount_begin() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_begin() unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %inc = add i32 %0, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !47
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @tk_normalize_xtime() unnamed_addr #14 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 4), align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl i64 1000000000, %sh_prom
  %.promoted = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 5), align 8
  %cmp.not4 = icmp ult i64 %.promoted, %shl
  br i1 %cmp.not4, label %while.cond8.preheader, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %.promoted2 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 2), align 8
  br label %while.body

while.cond.while.cond8.preheader_crit_edge:       ; preds = %while.body
  store i64 %sub, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 5), align 8
  store i64 %inc, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 2), align 8
  br label %while.cond8.preheader

while.cond8.preheader:                            ; preds = %while.cond.while.cond8.preheader_crit_edge, %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 4), align 4
  %sh_prom12 = zext i32 %1 to i64
  %shl13 = shl i64 1000000000, %sh_prom12
  %.promoted9 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 5), align 32
  %cmp14.not13 = icmp ult i64 %.promoted9, %shl13
  br i1 %cmp14.not13, label %while.end24, label %while.body15.preheader

while.body15.preheader:                           ; preds = %while.cond8.preheader
  %.promoted11 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 12), align 8
  br label %while.body15

while.body:                                       ; preds = %while.body.preheader, %while.body
  %sub16 = phi i64 [ %sub, %while.body ], [ %.promoted, %while.body.preheader ]
  %inc35 = phi i64 [ %inc, %while.body ], [ %.promoted2, %while.body.preheader ]
  %sub = sub i64 %sub16, %shl
  %inc = add i64 %inc35, 1
  %cmp.not = icmp ult i64 %sub, %shl
  br i1 %cmp.not, label %while.cond.while.cond8.preheader_crit_edge, label %while.body

while.body15:                                     ; preds = %while.body15.preheader, %while.body15
  %sub221015 = phi i64 [ %sub22, %while.body15 ], [ %.promoted9, %while.body15.preheader ]
  %inc231214 = phi i64 [ %inc23, %while.body15 ], [ %.promoted11, %while.body15.preheader ]
  %sub22 = sub i64 %sub221015, %shl13
  %inc23 = add i64 %inc231214, 1
  %cmp14.not = icmp ult i64 %sub22, %shl13
  br i1 %cmp14.not, label %while.cond8.while.end24_crit_edge, label %while.body15

while.cond8.while.end24_crit_edge:                ; preds = %while.body15
  store i64 %sub22, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 1, i32 5), align 32
  store i64 %inc23, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 12), align 8
  br label %while.end24

while.end24:                                      ; preds = %while.cond8.while.end24_crit_edge, %while.cond8.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @timespec64_to_ktime([2 x i64] %ts.coerce) unnamed_addr #6 {
entry:
  %ts.coerce.fca.0.extract = extractvalue [2 x i64] %ts.coerce, 0
  %ts.coerce.fca.1.extract = extractvalue [2 x i64] %ts.coerce, 1
  %call = call fastcc i64 @ktime_set(i64 noundef %ts.coerce.fca.0.extract, i64 noundef %ts.coerce.fca.1.extract) #18
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntp_clear() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @tk_update_ktime_data(%struct.timekeeper* nocapture noundef %tk) unnamed_addr #8 {
entry:
  %xtime_sec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 2
  %0 = load i64, i64* %xtime_sec, align 8
  %tv_sec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 4, i32 0
  %1 = load i64, i64* %tv_sec, align 8
  %add = add i64 %1, %0
  %tv_nsec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 4, i32 1
  %2 = load i64, i64* %tv_nsec, align 8
  %mul = mul i64 %add, 1000000000
  %conv2 = and i64 %2, 4294967295
  %add3 = add i64 %mul, %conv2
  %base = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0, i32 6
  store i64 %add3, i64* %base, align 8
  %xtime_nsec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0, i32 5
  %3 = load i64, i64* %xtime_nsec, align 8
  %shift = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0, i32 4
  %4 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %4 to i64
  %shr = lshr i64 %3, %sh_prom
  %add7 = add i64 %shr, %2
  %conv8 = and i64 %add7, 4294966784
  %cmp = icmp ugt i64 %conv8, 999999999
  %inc = zext i1 %cmp to i64
  %spec.select = add i64 %add, %inc
  %ktime_sec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 3
  store i64 %spec.select, i64* %ktime_sec, align 8
  %raw_sec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 12
  %5 = load i64, i64* %raw_sec, align 8
  %mul10 = mul i64 %5, 1000000000
  %base12 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 1, i32 6
  store i64 %mul10, i64* %base12, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_vsyscall(%struct.timekeeper* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_fast_timekeeper(%struct.tk_read_base* noundef %tkr, %struct.tk_fast* noundef %tkf) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.tk_fast, %struct.tk_fast* %tkf, i64 0, i32 1, i64 0
  %seq = getelementptr inbounds %struct.tk_fast, %struct.tk_fast* %tkf, i64 0, i32 0
  call fastcc void @raw_write_seqcount_latch(%struct.seqcount_latch_t* noundef %seq) #18
  %0 = bitcast %struct.tk_read_base* %arraydecay to i8*
  %1 = bitcast %struct.tk_read_base* %tkr to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 56) #17
  call fastcc void @raw_write_seqcount_latch(%struct.seqcount_latch_t* noundef %seq) #18
  %add.ptr = getelementptr %struct.tk_fast, %struct.tk_fast* %tkf, i64 0, i32 1, i64 1
  %2 = bitcast %struct.tk_read_base* %add.ptr to i8*
  %call3 = call i8* @memcpy(i8* noundef %2, i8* noundef %0, i64 noundef 56) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @raw_write_seqcount_latch(%struct.seqcount_latch_t* nocapture noundef %s) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !48
  %sequence = getelementptr inbounds %struct.seqcount_latch_t, %struct.seqcount_latch_t* %s, i64 0, i32 0, i32 0
  %0 = load i32, i32* %sequence, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %sequence, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !49
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_end() unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !50
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  %inc = add i32 %0, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 0, i32 0, i32 0), align 64
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @tk_xtime_add(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #14 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 2), align 8
  %add = add i64 %1, %0
  store i64 %add, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 2), align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %2 = load i64, i64* %tv_nsec, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 4), align 4
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 %2, %sh_prom
  %4 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 5), align 8
  %add2 = add i64 %shl, %4
  store i64 %add2, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 0, i32 5), align 8
  call fastcc void @tk_normalize_xtime() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @timespec64_valid_strict(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @timespec64_valid(%struct.timespec64* noundef %ts) #18
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %cmp = icmp ult i64 %0, 9223372036
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tk_update_sleep_time(i64 noundef %delta) unnamed_addr #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 6), align 32
  %add = add i64 %0, %delta
  store i64 %add, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 6), align 32
  %call = call [2 x i64] @ns_to_timespec64(i64 noundef %add) #17
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %call.fca.1.extract = extractvalue [2 x i64] %call, 1
  store i64 %call.fca.0.extract, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 13, i32 0), align 16
  store i64 %call.fca.1.extract, i64* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @tk_core, i64 0, i32 1, i32 13, i32 1), align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(%struct.syscore_ops* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u64(i64 noundef %n) unnamed_addr #15 {
entry:
  %cmp.i = icmp eq i64 %n, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %n, i1 false) #19, !range !46
  %1 = trunc i64 %0 to i32
  %conv.i.op = sub nsw i32 63, %1
  %sub = select i1 %cmp.i, i32 -1, i32 %conv.i.op
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntp_tick_length() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @logarithmic_accumulation(i64 noundef %offset, i32 noundef %shift, i32* nocapture noundef %clock_set) unnamed_addr #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 14), align 8
  %sh_prom = zext i32 %shift to i64
  %shl = shl i64 %0, %sh_prom
  %cmp = icmp ugt i64 %shl, %offset
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %offset, %shl
  %1 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 2), align 8
  %add = add i64 %1, %shl
  store i64 %add, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 2), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 1, i32 2), align 8
  %add2 = add i64 %2, %shl
  store i64 %add2, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 1, i32 2), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 15), align 8
  %shl4 = shl i64 %3, %sh_prom
  %4 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 5), align 8
  %add6 = add i64 %4, %shl4
  store i64 %add6, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 5), align 8
  %call = call fastcc i32 @accumulate_nsecs_to_secs() #18
  %5 = load i32, i32* %clock_set, align 4
  %or = or i32 %5, %call
  store i32 %or, i32* %clock_set, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 17), align 8
  %shl8 = shl i64 %6, %sh_prom
  %7 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 1, i32 5), align 8
  %add11 = add i64 %7, %shl8
  store i64 %add11, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 1, i32 5), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 1, i32 4), align 4
  %sh_prom14 = zext i32 %8 to i64
  %shl15 = shl i64 1000000000, %sh_prom14
  %cmp18.not4 = icmp ult i64 %add11, %shl15
  br i1 %cmp18.not4, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end
  %.promoted2 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 12), align 8
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %sub2116 = phi i64 [ %sub21, %while.body ], [ %add11, %while.body.preheader ]
  %inc35 = phi i64 [ %inc, %while.body ], [ %.promoted2, %while.body.preheader ]
  %sub21 = sub i64 %sub2116, %shl15
  %inc = add i64 %inc35, 1
  %cmp18.not = icmp ult i64 %sub21, %shl15
  br i1 %cmp18.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  store i64 %sub21, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 1, i32 5), align 8
  store i64 %inc, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 12), align 8
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end
  %9 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 18), align 8
  %shl23 = shl i64 %9, %sh_prom
  %10 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 19), align 8
  %add24 = add i64 %10, %shl23
  %11 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 15), align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 16), align 8
  %add26 = add i64 %12, %11
  %13 = load i32, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 20), align 8
  %add27 = add i32 %13, %shift
  %sh_prom28 = zext i32 %add27 to i64
  %shl29 = shl i64 %add26, %sh_prom28
  %sub31 = sub i64 %add24, %shl29
  store i64 %sub31, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 19), align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i64 [ %sub, %while.end ], [ %offset, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @timekeeping_adjust(i64 noundef %offset) unnamed_addr #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 18), align 8
  %call = call i64 @ntp_tick_length() #17
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else, !prof !9

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 3), align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 21), align 4
  %sub = sub i32 %1, %2
  %.pre2 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 14), align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call i64 @ntp_tick_length() #17
  store i64 %call3, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 18), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 20), align 8
  %sh_prom = zext i32 %3 to i64
  %shr = lshr i64 %call3, %sh_prom
  %4 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 16), align 8
  %sub6 = sub i64 %shr, %4
  %5 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 14), align 8
  %call7 = call fastcc i64 @div64_u64(i64 noundef %sub6, i64 noundef %5) #18
  %conv8 = trunc i64 %call7 to i32
  %.pre = load i32, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 3), align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = phi i64 [ %.pre2, %if.then ], [ %5, %if.else ]
  %7 = phi i32 [ %1, %if.then ], [ %.pre, %if.else ]
  %mult.0 = phi i32 [ %sub, %if.then ], [ %conv8, %if.else ]
  %8 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 19), align 8
  %cmp9 = icmp sgt i64 %8, 0
  %cond = zext i1 %cmp9 to i32
  store i32 %cond, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 21), align 4
  %add = add i32 %mult.0, %cond
  %sub15 = sub i32 %add, %7
  switch i32 %sub15, label %if.end10.i [
    i32 0, label %timekeeping_apply_adjustment.exit
    i32 -1, label %if.end10.thread8.i
    i32 1, label %land.lhs.true.i
  ]

if.end10.thread8.i:                               ; preds = %if.end
  %sub.i = sub i64 0, %6
  %sub3.i = sub i64 0, %offset
  br label %if.end28.i

if.end10.i:                                       ; preds = %if.end
  %conv.i = sext i32 %sub15 to i64
  %mul.i = mul i64 %6, %conv.i
  %mul8.i = mul i64 %conv.i, %offset
  %cmp11.i = icmp sgt i32 %sub15, 0
  br i1 %cmp11.i, label %land.lhs.true.i, label %if.end28.i

land.lhs.true.i:                                  ; preds = %if.end10.i, %if.end
  %offset.addr.07.i = phi i64 [ %mul8.i, %if.end10.i ], [ %offset, %if.end ]
  %interval.05.i = phi i64 [ %mul.i, %if.end10.i ], [ %6, %if.end ]
  %9 = xor i32 %sub15, -1
  %cmp13.i = icmp ugt i32 %7, %9
  br i1 %cmp13.i, label %if.then19.i, label %if.end28.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timekeeping.c\22; .popsection; .long 14472b - 14470b; .short 1969; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !51
  br label %timekeeping_apply_adjustment.exit

if.end28.i:                                       ; preds = %land.lhs.true.i, %if.end10.i, %if.end10.thread8.i
  %offset.addr.06.i = phi i64 [ %offset.addr.07.i, %land.lhs.true.i ], [ %mul8.i, %if.end10.i ], [ %sub3.i, %if.end10.thread8.i ]
  %interval.04.i = phi i64 [ %interval.05.i, %land.lhs.true.i ], [ %mul.i, %if.end10.i ], [ %sub.i, %if.end10.thread8.i ]
  store i32 %add, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 3), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 15), align 8
  %add32.i = add i64 %10, %interval.04.i
  store i64 %add32.i, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 15), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 5), align 8
  %sub34.i = sub i64 %11, %offset.addr.06.i
  store i64 %sub34.i, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 5), align 8
  br label %timekeeping_apply_adjustment.exit

timekeeping_apply_adjustment.exit:                ; preds = %if.end, %if.then19.i, %if.end28.i
  %12 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 0), align 8
  %maxadj = getelementptr inbounds %struct.clocksource, %struct.clocksource* %12, i64 0, i32 5
  %13 = load i32, i32* %maxadj, align 8
  %tobool17.not = icmp eq i32 %13, 0
  br i1 %tobool17.not, label %if.end81, label %land.rhs

land.rhs:                                         ; preds = %timekeeping_apply_adjustment.exit
  %14 = load i32, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 3), align 8
  %mult22 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %12, i64 0, i32 2
  %15 = load i32, i32* %mult22, align 8
  %sub23 = sub i32 %14, %15
  %16 = call i32 @llvm.abs.i32(i32 %sub23, i1 false)
  %cmp31 = icmp ugt i32 %16, %13
  br i1 %cmp31, label %if.then40, label %if.end81, !prof !39

if.then40:                                        ; preds = %land.rhs
  %.b1 = load i1, i1* @timekeeping_adjust.__already_done, align 1
  br i1 %.b1, label %if.end81, label %if.then55, !prof !9

if.then55:                                        ; preds = %if.then40
  store i1 true, i1* @timekeeping_adjust.__already_done, align 1
  %name = getelementptr inbounds %struct.clocksource, %struct.clocksource* %12, i64 0, i32 8
  %17 = load i8*, i8** %name, align 8
  %conv61 = zext i32 %14 to i64
  %conv65 = zext i32 %15 to i64
  %conv69 = zext i32 %13 to i64
  %add70 = add nuw nsw i64 %conv65, %conv69
  %call71 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* noundef %17, i64 noundef %conv61, i64 noundef %add70) #21
  br label %if.end81

if.end81:                                         ; preds = %timekeeping_apply_adjustment.exit, %if.then40, %if.then55, %land.rhs
  %18 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 5), align 8
  %cmp83 = icmp slt i64 %18, 0
  br i1 %cmp83, label %if.then92, label %if.end98, !prof !39

if.then92:                                        ; preds = %if.end81
  %19 = load i32, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 4), align 4
  %sh_prom94 = zext i32 %19 to i64
  %shl = shl i64 1000000000, %sh_prom94
  %add97 = add i64 %shl, %18
  store i64 %add97, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 5), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 2), align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 22), align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %if.end81
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @accumulate_nsecs_to_secs() unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 4), align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl i64 1000000000, %sh_prom
  %1 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 5), align 8
  %cmp.not2 = icmp ult i64 %1, %shl
  br i1 %cmp.not2, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %2 = phi i64 [ %9, %cleanup ], [ %1, %entry ]
  %clock_set.04 = phi i32 [ %clock_set.2, %cleanup ], [ 0, %entry ]
  %sub = sub i64 %2, %shl
  store i64 %sub, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 5), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 2), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 2), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 22), align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %while.body
  store i32 0, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 22), align 8
  br label %cleanup

if.end:                                           ; preds = %while.body
  %call = call i32 @second_overflow(i64 noundef %inc) #17
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %cleanup, label %if.then16, !prof !9

if.then16:                                        ; preds = %if.end
  %conv17 = sext i32 %call to i64
  %5 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 2), align 8
  %add = add i64 %5, %conv17
  store i64 %add, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 2), align 8
  %.unpack = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 4, i32 0), align 8
  %6 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.unpack1 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 4, i32 1), align 8
  %7 = insertvalue [2 x i64] %6, i64 %.unpack1, 1
  %.fca.0.insert25 = insertvalue [2 x i64] poison, i64 %conv17, 0
  %.fca.1.insert26 = insertvalue [2 x i64] %.fca.0.insert25, i64 0, 1
  %call20 = call fastcc [2 x i64] @timespec64_sub([2 x i64] %7, [2 x i64] %.fca.1.insert26) #18
  call fastcc void @tk_set_wall_to_mono(%struct.timekeeper* noundef nonnull @shadow_timekeeper, [2 x i64] %call20) #18
  %8 = load i32, i32* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 8), align 8
  %sub21 = sub i32 %8, %call
  call fastcc void @__timekeeping_set_tai_offset(%struct.timekeeper* noundef nonnull @shadow_timekeeper, i32 noundef %sub21) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then16, %if.then
  %clock_set.2 = phi i32 [ %clock_set.04, %if.then ], [ 4, %if.then16 ], [ %clock_set.04, %if.end ]
  %9 = load i64, i64* getelementptr inbounds (%struct.timekeeper, %struct.timekeeper* @shadow_timekeeper, i64 0, i32 0, i32 5), align 8
  %cmp.not = icmp ult i64 %9, %shl
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %entry
  %clock_set.0.lcssa = phi i32 [ 0, %entry ], [ %clock_set.2, %cleanup ]
  ret i32 %clock_set.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @second_overflow(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntp_get_next_leap() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline noprofile norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nobuiltin "no-builtins" }
attributes #19 = { nounwind }
attributes #20 = { cold nobuiltin "no-builtins" }
attributes #21 = { cold nobuiltin nounwind "no-builtins" }
attributes #22 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149516490}
!8 = !{i64 2149542333}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153714948}
!11 = !{i64 2153717047}
!12 = !{i64 990203}
!13 = !{i64 1869548}
!14 = !{i64 2150157441}
!15 = !{i64 2153719740}
!16 = !{i64 2153721839}
!17 = !{i64 2153724548}
!18 = !{i64 2153726647}
!19 = !{i64 2153733417}
!20 = !{i64 2153735516}
!21 = !{i64 2153738291}
!22 = !{i64 2153740390}
!23 = !{i64 2153743646}
!24 = !{i64 2153750901}
!25 = !{i64 2153753618}
!26 = !{i64 2153755717}
!27 = !{i64 2153758408}
!28 = !{i64 2153768272}
!29 = !{i64 2153770383}
!30 = !{!"auto-init"}
!31 = !{i64 2153773945}
!32 = !{i64 2153701157}
!33 = !{i64 2153808687}
!34 = !{i64 2153815906}
!35 = !{i64 2153818974}
!36 = !{i64 2153891435}
!37 = !{i64 2153898670}
!38 = !{i64 2153901834}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2149292931, i64 2149292978, i64 2149292984, i64 2149293021, i64 2149293039, i64 2149294350, i64 2149294398, i64 2149294446, i64 2149294509, i64 2149294558, i64 2149293117, i64 2149293142, i64 2149293168, i64 2149293174, i64 2149294016, i64 2149294056, i64 2149294074, i64 2149294106, i64 2149294134, i64 2149294188, i64 2149294208, i64 2149294305, i64 2149293197, i64 2149293211, i64 2149293217, i64 2149293267, i64 2149293313, i64 2149293346}
!41 = !{i64 2149295110, i64 2149295157, i64 2149295163, i64 2149295200, i64 2149295218, i64 2149296161, i64 2149296209, i64 2149296257, i64 2149296320, i64 2149296369, i64 2149295296, i64 2149295321, i64 2149295347, i64 2149295353, i64 2149295390, i64 2149295396, i64 2149295446, i64 2149295492, i64 2149295525}
!42 = !{i64 2149283167, i64 2149283214, i64 2149283220, i64 2149283257, i64 2149283275, i64 2149288677, i64 2149288725, i64 2149288773, i64 2149288836, i64 2149288885, i64 2149283353, i64 2149283378, i64 2149283404, i64 2149283410, i64 2149288343, i64 2149288383, i64 2149288401, i64 2149288433, i64 2149288461, i64 2149288515, i64 2149288535, i64 2149288632, i64 2149283433, i64 2149283447, i64 2149283453, i64 2149283503, i64 2149283549, i64 2149283582}
!43 = !{i64 2147974629, i64 2147974662, i64 2147974715, i64 2147974774, i64 2147974808, i64 2147974863, i64 2147974892, i64 2147974912}
!44 = !{i64 2149335063}
!45 = !{i64 2149298944, i64 2149298991, i64 2149298997, i64 2149299034, i64 2149299052, i64 2149300363, i64 2149300411, i64 2149300459, i64 2149300522, i64 2149300571, i64 2149299130, i64 2149299155, i64 2149299181, i64 2149299187, i64 2149300029, i64 2149300069, i64 2149300087, i64 2149300119, i64 2149300147, i64 2149300201, i64 2149300221, i64 2149300318, i64 2149299210, i64 2149299224, i64 2149299230, i64 2149299280, i64 2149299326, i64 2149299359}
!46 = !{i64 0, i64 65}
!47 = !{i64 2150157682}
!48 = !{i64 2150170561}
!49 = !{i64 2150170633}
!50 = !{i64 2150157923}
!51 = !{i64 2153863265}
