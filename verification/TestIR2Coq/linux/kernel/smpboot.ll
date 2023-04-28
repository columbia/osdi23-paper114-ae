; ModuleID = 'kernel/smpboot.c'
source_filename = "kernel/smpboot.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.25, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.0 = type { i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics, [24 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [8 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.1, [0 x i64] }
%struct.anon.1 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.2, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.2 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type opaque
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type opaque
%struct.sighand_struct = type opaque
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.kernel_siginfo = type { %struct.anon.12 }
%struct.anon.12 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.16 }
%struct.anon.16 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.24, i32, [12 x i8] }
%union.anon.24 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.25 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.26, %union.anon.40, %struct.atomic_t, [8 x i8] }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.40 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.41, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.41 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kmem_cache = type opaque
%struct.smp_hotplug_thread = type { %struct.task_struct**, %struct.list_head, i32 (i32)*, void (i32)*, void (i32)*, void (i32)*, void (i32, i1)*, void (i32)*, void (i32)*, i8, i8* }

@idle_threads = internal global %struct.task_struct* null, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@smpboot_threads_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @smpboot_threads_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @smpboot_threads_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@hotplug_threads = internal global %struct.list_head { %struct.list_head* @hotplug_threads, %struct.list_head* @hotplug_threads }, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@cpu_hotplug_state = internal global %struct.atomic_t { i32 9 }, section ".data..percpu", align 4
@.str = private unnamed_addr constant [38 x i8] c"\013SMP: fork_idle() failed for CPU %u\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.task_struct* @idle_thread_get(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.task_struct** @idle_threads to i64)
  %1 = inttoptr i64 %add to %struct.task_struct**
  %2 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %tobool.not = icmp eq %struct.task_struct* %2, null
  %spec.select = select i1 %tobool.not, %struct.task_struct* inttoptr (i64 -12 to %struct.task_struct*), %struct.task_struct* %2
  ret %struct.task_struct* %spec.select
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @idle_thread_set_boot_cpu() local_unnamed_addr #1 section ".init.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call8 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call8, ptrtoint (i32* @cpu_number to i64)
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add9 = add i64 %4, ptrtoint (%struct.task_struct** @idle_threads to i64)
  %5 = inttoptr i64 %add9 to %struct.task_struct**
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #2 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #13, !srcloc !9
  ret i64 %2
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @idle_threads_init() local_unnamed_addr #1 section ".init.text" {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call211 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp12 = icmp ult i32 %call211, %2
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %if.end
  %call213 = phi i32 [ %call2, %if.end ], [ %call211, %entry ]
  %cmp3.not = icmp eq i32 %call213, %1
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %idxprom.i = zext i32 %call213 to i64
  %arrayidx.i = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom.i
  %3 = load i64, i64* %arrayidx.i, align 8
  %add.i = add i64 %3, ptrtoint (%struct.task_struct** @idle_threads to i64)
  %4 = inttoptr i64 %add.i to %struct.task_struct**
  %5 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %tobool.not.i = icmp eq %struct.task_struct* %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then
  %call.i = call %struct.task_struct* @fork_idle(i32 noundef %call213) #15
  %6 = bitcast %struct.task_struct* %call.i to i8*
  %call2.i = call fastcc i1 @IS_ERR(i8* noundef %6) #15
  br i1 %call2.i, label %do.end6.i, label %if.else.i

do.end6.i:                                        ; preds = %if.then.i
  %call8.i = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 noundef %call213) #16
  br label %if.end

if.else.i:                                        ; preds = %if.then.i
  %7 = load i64, i64* %arrayidx.i, align 8
  %add18.i = add i64 %7, ptrtoint (%struct.task_struct** @idle_threads to i64)
  %8 = inttoptr i64 %add18.i to %struct.task_struct**
  store %struct.task_struct* %call.i, %struct.task_struct** %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.i, %do.end6.i, %if.then, %for.body
  %call2 = call i32 @cpumask_next(i32 noundef %call213, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %9 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %9
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @smpboot_create_threads(i32 noundef %cpu) local_unnamed_addr #4 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @smpboot_threads_lock) #15
  %.pn15 = load i8*, i8** bitcast (%struct.list_head* @hotplug_threads to i8**), align 8
  %cmp.not16 = icmp eq i8* %.pn15, bitcast (%struct.list_head* @hotplug_threads to i8*)
  br i1 %cmp.not16, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn17 = phi i8* [ %.pn, %for.inc ], [ %.pn15, %entry ]
  %cur.0.in = getelementptr i8, i8* %.pn17, i64 -8
  %cur.0 = bitcast i8* %cur.0.in to %struct.smp_hotplug_thread*
  %call = call fastcc i32 @__smpboot_create_thread(%struct.smp_hotplug_thread* noundef %cur.0, i32 noundef %cpu) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %0 = bitcast i8* %.pn17 to i8**
  %.pn = load i8*, i8** %0, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @hotplug_threads to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %ret.1 = phi i32 [ 0, %entry ], [ %call, %for.body ], [ 0, %for.inc ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @smpboot_threads_lock) #15
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__smpboot_create_thread(%struct.smp_hotplug_thread* noundef %ht, i32 noundef %cpu) unnamed_addr #4 {
entry:
  %store = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %ht, i64 0, i32 0
  %0 = load %struct.task_struct**, %struct.task_struct*** %store, align 8
  %1 = ptrtoint %struct.task_struct** %0 to i64
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, %1
  %3 = inttoptr i64 %add to %struct.task_struct**
  %4 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %tobool.not = icmp eq %struct.task_struct* %4, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @kzalloc_node() #12
  %tobool2.not = icmp eq i8* %call, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %cpu5 = bitcast i8* %call to i32*
  store i32 %cpu, i32* %cpu5, align 8
  %ht6 = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %ht6 to %struct.smp_hotplug_thread**
  store %struct.smp_hotplug_thread* %ht, %struct.smp_hotplug_thread** %5, align 8
  %thread_comm = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %ht, i64 0, i32 10
  %6 = load i8*, i8** %thread_comm, align 8
  %call7 = call %struct.task_struct* @kthread_create_on_cpu(i32 (i8*)* noundef nonnull @smpboot_thread_fn, i8* noundef nonnull %call, i32 noundef %cpu, i8* noundef %6) #15
  %7 = bitcast %struct.task_struct* %call7 to i8*
  %call8 = call fastcc i1 @IS_ERR(i8* noundef %7) #12
  br i1 %call8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  call void @kfree(i8* noundef nonnull %call) #15
  %call10 = call fastcc i64 @PTR_ERR(i8* noundef %7) #12
  %conv = trunc i64 %call10 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  call void @kthread_set_per_cpu(%struct.task_struct* noundef %call7, i32 noundef %cpu) #15
  %call12 = call i32 @kthread_park(%struct.task_struct* noundef %call7) #15
  call fastcc void @get_task_struct(%struct.task_struct* noundef %call7) #12
  %8 = load %struct.task_struct**, %struct.task_struct*** %store, align 8
  %9 = ptrtoint %struct.task_struct** %8 to i64
  %10 = load i64, i64* %arrayidx, align 8
  %add24 = add i64 %10, %9
  %11 = inttoptr i64 %add24 to %struct.task_struct**
  store %struct.task_struct* %call7, %struct.task_struct** %11, align 8
  %create = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %ht, i64 0, i32 4
  %12 = load void (i32)*, void (i32)** %create, align 8
  %tobool25.not = icmp eq void (i32)* %12, null
  br i1 %tobool25.not, label %cleanup, label %if.then26

if.then26:                                        ; preds = %if.end11
  %call27 = call i64 @wait_task_inactive(%struct.task_struct* noundef %call7, i32 noundef 64) #15
  %tobool28.not = icmp eq i64 %call27, 0
  br i1 %tobool28.not, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.then26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/smpboot.c\22; .popsection; .long 14472b - 14470b; .short 206; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !10
  br label %cleanup

if.else:                                          ; preds = %if.then26
  %13 = load void (i32)*, void (i32)** %create, align 8
  call void %13(i32 noundef %cpu) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else, %if.then34, %if.end, %entry, %if.then9
  %retval.0 = phi i32 [ %conv, %if.then9 ], [ 0, %entry ], [ -12, %if.end ], [ 0, %if.then34 ], [ 0, %if.else ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @smpboot_unpark_threads(i32 noundef %cpu) local_unnamed_addr #4 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @smpboot_threads_lock) #15
  %.pn13 = load i8*, i8** bitcast (%struct.list_head* @hotplug_threads to i8**), align 8
  %cmp.not14 = icmp eq i8* %.pn13, bitcast (%struct.list_head* @hotplug_threads to i8*)
  br i1 %cmp.not14, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn15 = phi i8* [ %.pn, %for.body ], [ %.pn13, %entry ]
  %cur.0.in = getelementptr i8, i8* %.pn15, i64 -8
  %cur.0 = bitcast i8* %cur.0.in to %struct.smp_hotplug_thread*
  call fastcc void @smpboot_unpark_thread(%struct.smp_hotplug_thread* noundef %cur.0, i32 noundef %cpu) #12
  %0 = bitcast i8* %.pn15 to i8**
  %.pn = load i8*, i8** %0, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @hotplug_threads to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @smpboot_threads_lock) #15
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @smpboot_unpark_thread(%struct.smp_hotplug_thread* nocapture noundef readonly %ht, i32 noundef %cpu) unnamed_addr #4 {
entry:
  %selfparking = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %ht, i64 0, i32 9
  %0 = load i8, i8* %selfparking, align 8, !range !11
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %store = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %ht, i64 0, i32 0
  %2 = load %struct.task_struct**, %struct.task_struct*** %store, align 8
  %3 = ptrtoint %struct.task_struct** %2 to i64
  %add = add i64 %1, %3
  %4 = inttoptr i64 %add to %struct.task_struct**
  %5 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  call void @kthread_unpark(%struct.task_struct* noundef %5) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @smpboot_park_threads(i32 noundef %cpu) local_unnamed_addr #4 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @smpboot_threads_lock) #15
  %.pn13 = load i8*, i8** bitcast (%struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @hotplug_threads, i64 0, i32 1) to i8**), align 8
  %cmp.not14 = icmp eq i8* %.pn13, bitcast (%struct.list_head* @hotplug_threads to i8*)
  br i1 %cmp.not14, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn15 = phi i8* [ %.pn, %for.body ], [ %.pn13, %entry ]
  %cur.0.in = getelementptr i8, i8* %.pn15, i64 -8
  %cur.0 = bitcast i8* %cur.0.in to %struct.smp_hotplug_thread*
  call fastcc void @smpboot_park_thread(%struct.smp_hotplug_thread* noundef %cur.0, i32 noundef %cpu) #12
  %prev = getelementptr inbounds i8, i8* %.pn15, i64 8
  %0 = bitcast i8* %prev to i8**
  %.pn = load i8*, i8** %0, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @hotplug_threads to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @smpboot_threads_lock) #15
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @smpboot_park_thread(%struct.smp_hotplug_thread* nocapture noundef readonly %ht, i32 noundef %cpu) unnamed_addr #4 {
entry:
  %store = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %ht, i64 0, i32 0
  %0 = load %struct.task_struct**, %struct.task_struct*** %store, align 8
  %1 = ptrtoint %struct.task_struct** %0 to i64
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, %1
  %3 = inttoptr i64 %add to %struct.task_struct**
  %4 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %tobool.not = icmp eq %struct.task_struct* %4, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %selfparking = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %ht, i64 0, i32 9
  %5 = load i8, i8* %selfparking, align 8, !range !11
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @kthread_park(%struct.task_struct* noundef nonnull %4) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @smpboot_register_percpu_thread(%struct.smp_hotplug_thread* noundef %plug_thread) local_unnamed_addr #4 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @smpboot_threads_lock) #15
  %call11 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #14
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp12 = icmp ult i32 %call11, %0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %if.end
  %call13 = phi i32 [ %call, %if.end ], [ %call11, %entry ]
  %call1 = call fastcc i32 @__smpboot_create_thread(%struct.smp_hotplug_thread* noundef %plug_thread, i32 noundef %call13) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call fastcc void @smpboot_destroy_threads(%struct.smp_hotplug_thread* noundef %plug_thread) #12
  br label %out

if.end:                                           ; preds = %for.body
  call fastcc void @smpboot_unpark_thread(%struct.smp_hotplug_thread* noundef %plug_thread, i32 noundef %call13) #12
  %call = call i32 @cpumask_next(i32 noundef %call13, %struct.cpumask* noundef nonnull @__cpu_online_mask) #14
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  %list = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %plug_thread, i64 0, i32 1
  call fastcc void @list_add(%struct.list_head* noundef %list) #12
  br label %out

out:                                              ; preds = %for.end, %if.then
  %ret.1 = phi i32 [ %call1, %if.then ], [ 0, %for.end ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @smpboot_threads_lock) #15
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @smpboot_destroy_threads(%struct.smp_hotplug_thread* nocapture noundef readonly %ht) unnamed_addr #4 {
entry:
  %call26 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp27 = icmp ult i32 %call26, %0
  br i1 %cmp27, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %store = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %ht, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %11, %if.end ]
  %call28 = phi i32 [ %call26, %for.body.lr.ph ], [ %call, %if.end ]
  %2 = load %struct.task_struct**, %struct.task_struct*** %store, align 8
  %3 = ptrtoint %struct.task_struct** %2 to i64
  %idxprom = zext i32 %call28 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, %3
  %5 = inttoptr i64 %add to %struct.task_struct**
  %6 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %tobool.not = icmp eq %struct.task_struct* %6, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call2 = call i32 @kthread_stop(%struct.task_struct* noundef nonnull %6) #15
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %6) #12
  %7 = load %struct.task_struct**, %struct.task_struct*** %store, align 8
  %8 = ptrtoint %struct.task_struct** %7 to i64
  %9 = load i64, i64* %arrayidx, align 8
  %add13 = add i64 %9, %8
  %10 = inttoptr i64 %add13 to %struct.task_struct**
  store %struct.task_struct* null, %struct.task_struct** %10, align 8
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = phi i32 [ %.pre, %if.then ], [ %1, %for.body ]
  %call = call i32 @cpumask_next(i32 noundef %call28, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %cmp = icmp ult i32 %call, %11
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #6 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @hotplug_threads, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @smpboot_unregister_percpu_thread(%struct.smp_hotplug_thread* nocapture noundef %plug_thread) local_unnamed_addr #4 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @smpboot_threads_lock) #15
  %list = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %plug_thread, i64 0, i32 1
  call fastcc void @list_del(%struct.list_head* noundef %list) #12
  call fastcc void @smpboot_destroy_threads(%struct.smp_hotplug_thread* noundef %plug_thread) #12
  call void @mutex_unlock(%struct.mutex* noundef nonnull @smpboot_threads_lock) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #12
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @cpu_report_state(i32 noundef %cpu) local_unnamed_addr #7 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.atomic_t* @cpu_hotplug_state to i64)
  %1 = inttoptr i64 %add to %struct.atomic_t*
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %1, i64 0, i32 0
  %2 = load volatile i32, i32* %counter.i, align 4
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i32 @cpu_check_up_prepare(i32 noundef %cpu) local_unnamed_addr #6 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.atomic_t* @cpu_hotplug_state to i64)
  %1 = inttoptr i64 %add to %struct.atomic_t*
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %1, i64 0, i32 0
  store volatile i32 3, i32* %counter.i, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cpu_set_state_online(i32 noundef %cpu) local_unnamed_addr #4 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.atomic_t* @cpu_hotplug_state to i64)
  %1 = inttoptr i64 %add to i8*
  %call8.i.i = call fastcc i32 @__xchg_case_mb_32(i8* noundef %1) #15
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @fork_idle(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #9 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc_node() unnamed_addr #4 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #15
  ret i8* %call.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @kthread_create_on_cpu(i32 (i8*)* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @smpboot_thread_fn(i8* noundef %data) #4 {
entry:
  %ht1 = getelementptr inbounds i8, i8* %data, i64 8
  %0 = bitcast i8* %ht1 to %struct.smp_hotplug_thread**
  %1 = load %struct.smp_hotplug_thread*, %struct.smp_hotplug_thread** %0, align 8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 1
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %call17227 = call i1 @kthread_should_stop() #15
  br i1 %call17227, label %do.body26, label %if.end39.lr.ph

if.end39.lr.ph:                                   ; preds = %entry
  %cpu90 = bitcast i8* %data to i32*
  %status119 = getelementptr inbounds i8, i8* %data, i64 4
  %4 = bitcast i8* %status119 to i32*
  %unpark = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %1, i64 0, i32 8
  %setup = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %1, i64 0, i32 5
  %thread_should_run = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %1, i64 0, i32 2
  %thread_fn = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %1, i64 0, i32 3
  %park = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %1, i64 0, i32 7
  br label %if.end39

do.body26:                                        ; preds = %while.cond.backedge, %entry
  store volatile i32 0, i32* %__state, align 16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %cleanup = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %1, i64 0, i32 6
  %5 = load void (i32, i1)*, void (i32, i1)** %cleanup, align 8
  %tobool.not = icmp eq void (i32, i1)* %5, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body26
  %status = getelementptr inbounds i8, i8* %data, i64 4
  %6 = bitcast i8* %status to i32*
  %7 = load i32, i32* %6, align 4
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  %cpu = bitcast i8* %data to i32*
  %8 = load i32, i32* %cpu, align 8
  %call38 = call fastcc i1 @cpu_online(i32 noundef %8) #12
  call void %5(i32 noundef %8, i1 noundef %call38) #15
  br label %if.end

if.end:                                           ; preds = %if.then35, %land.lhs.true, %do.body26
  call void @kfree(i8* noundef %data) #15
  ret i32 0

if.end39:                                         ; preds = %if.end39.lr.ph, %while.cond.backedge
  %call40 = call i1 @kthread_should_park() #15
  br i1 %call40, label %do.body50, label %do.body89

do.body50:                                        ; preds = %if.end39
  store volatile i32 0, i32* %__state, align 16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  %9 = load void (i32)*, void (i32)** %park, align 8
  %tobool59.not = icmp eq void (i32)* %9, null
  br i1 %tobool59.not, label %if.end87, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %do.body50
  %10 = load i32, i32* %4, align 4
  %cmp62 = icmp eq i32 %10, 1
  br i1 %cmp62, label %do.body64, label %if.end87

do.body64:                                        ; preds = %land.lhs.true60
  %11 = load i32, i32* %cpu90, align 8
  %call70 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call70, ptrtoint (i32* @cpu_number to i64)
  %12 = inttoptr i64 %add to i32*
  %13 = load i32, i32* %12, align 4
  %cmp71.not = icmp eq i32 %11, %13
  br i1 %cmp71.not, label %do.end83, label %do.body75, !prof !16

do.body75:                                        ; preds = %do.body64
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/smpboot.c\22; .popsection; .long 14472b - 14470b; .short 128; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !17
  unreachable

do.end83:                                         ; preds = %do.body64
  call void %9(i32 noundef %11) #15
  store i32 2, i32* %4, align 4
  br label %if.end87

if.end87:                                         ; preds = %do.end83, %land.lhs.true60, %do.body50
  call void @kthread_parkme() #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then170, %do.body179, %if.end87, %if.end141, %if.end165
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %call17 = call i1 @kthread_should_stop() #15
  br i1 %call17, label %do.body26, label %if.end39

do.body89:                                        ; preds = %if.end39
  %14 = load i32, i32* %cpu90, align 8
  %call98 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add99 = add i64 %call98, ptrtoint (i32* @cpu_number to i64)
  %15 = inttoptr i64 %add99 to i32*
  %16 = load i32, i32* %15, align 4
  %cmp100.not = icmp eq i32 %14, %16
  br i1 %cmp100.not, label %do.end118, label %do.body110, !prof !16

do.body110:                                       ; preds = %do.body89
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/smpboot.c\22; .popsection; .long 14472b - 14470b; .short 137; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !18
  unreachable

do.end118:                                        ; preds = %do.body89
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %sw.epilog [
    i32 0, label %do.body128
    i32 2, label %do.body152
  ]

do.body128:                                       ; preds = %do.end118
  store volatile i32 0, i32* %__state, align 16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  %18 = load void (i32)*, void (i32)** %setup, align 8
  %tobool137.not = icmp eq void (i32)* %18, null
  br i1 %tobool137.not, label %if.end141, label %if.then138

if.then138:                                       ; preds = %do.body128
  %19 = load i32, i32* %cpu90, align 8
  call void %18(i32 noundef %19) #15
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %do.body128
  store i32 1, i32* %4, align 4
  br label %while.cond.backedge

do.body152:                                       ; preds = %do.end118
  store volatile i32 0, i32* %__state, align 16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  %20 = load void (i32)*, void (i32)** %unpark, align 8
  %tobool161.not = icmp eq void (i32)* %20, null
  br i1 %tobool161.not, label %if.end165, label %if.then162

if.then162:                                       ; preds = %do.body152
  %21 = load i32, i32* %cpu90, align 8
  call void %20(i32 noundef %21) #15
  br label %if.end165

if.end165:                                        ; preds = %if.then162, %do.body152
  store i32 1, i32* %4, align 4
  br label %while.cond.backedge

sw.epilog:                                        ; preds = %do.end118
  %22 = load i32 (i32)*, i32 (i32)** %thread_should_run, align 8
  %call168 = call i32 %22(i32 noundef %14) #15
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then170, label %do.body179

if.then170:                                       ; preds = %sw.epilog
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  call void @schedule() #15
  br label %while.cond.backedge

do.body179:                                       ; preds = %sw.epilog
  store volatile i32 0, i32* %__state, align 16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !22
  %23 = load void (i32)*, void (i32)** %thread_fn, align 8
  %24 = load i32, i32* %cpu90, align 8
  call void %23(i32 noundef %24) #15
  br label %while.cond.backedge
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #9 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_set_per_cpu(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_task_struct(%struct.task_struct* noundef %t) unnamed_addr #4 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @wait_task_inactive(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @kthread_should_stop() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_online(i32 noundef %cpu) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) #12
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @kthread_should_park() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_parkme() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) unnamed_addr #7 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #15
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !23

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !16

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #15
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #4 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !24
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #4 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #12
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #12
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #12
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #15
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #17, !srcloc !25
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !16

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #4 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !26
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* @hotplug_threads, %struct.list_head** %prev3, align 8
  store volatile %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @hotplug_threads, i64 0, i32 0), align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__xchg_case_mb_32(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i32, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09stlxr\09${1:w}, ${3:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i32* elementtype(i32) %0, i32 2, i32* elementtype(i32) %0) #17, !srcloc !27
  %asmresult = extractvalue { i32, i64 } %1, 0
  ret i32 %asmresult
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree nounwind readonly }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { nounwind readnone }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind readonly }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind }

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
!8 = !{i64 331402}
!9 = !{i64 2149128864, i64 2149128911, i64 2149128917, i64 2149128954, i64 2149128972, i64 2149129899, i64 2149129947, i64 2149129995, i64 2149130058, i64 2149130107, i64 2149129050, i64 2149129075, i64 2149129101, i64 2149129107, i64 2149129144, i64 2149129150, i64 2149129200, i64 2149129246, i64 2149129279}
!10 = !{i64 2151673415}
!11 = !{i8 0, i8 2}
!12 = !{i64 2151652722}
!13 = !{i64 2151652787}
!14 = !{i64 2151655149}
!15 = !{i64 2151657511}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2151660151}
!18 = !{i64 2151663096}
!19 = !{i64 2151665763}
!20 = !{i64 2151668125}
!21 = !{i64 2151668173}
!22 = !{i64 2151670535}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2148003937, i64 2148004601, i64 2148004631, i64 2148004663, i64 2148004697, i64 2148004732, i64 2148004757}
!25 = !{i64 2149906045}
!26 = !{i64 2148015719, i64 2148016393, i64 2148016423, i64 2148016455, i64 2148016489, i64 2148016525, i64 2148016550}
!27 = !{i64 2148131752, i64 2148131784, i64 2148131829, i64 2148131877, i64 2148131903}
