; ModuleID = 'kernel/smp.c'
source_filename = "kernel/smp.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.call_function_data = type { %struct.cfd_percpu*, [1 x %struct.cpumask], [1 x %struct.cpumask] }
%struct.cfd_percpu = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon = type { i32 }
%struct.cpumask = type { [4 x i64] }
%struct.llist_head = type { %struct.llist_node* }
%struct.irq_cpustat_t = type { i32, [60 x i8] }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.workqueue_struct = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.26, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.3 }
%union.anon.3 = type { i64 }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.5, [0 x i64] }
%struct.anon.5 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.6, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.6 = type { %struct.rb_node, i64 }
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
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.kernel_siginfo = type { %struct.anon.13 }
%struct.anon.13 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.17 }
%struct.anon.17 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.25, i32, [12 x i8] }
%union.anon.25 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.26 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.27, %union.anon.41, %struct.atomic_t, [8 x i8] }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.41 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.42, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.42 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.smp_call_on_cpu_struct = type { %struct.work_struct, %struct.completion, i32 (i8*)*, i8*, i32, i32 }

@cfd_data = internal global %struct.call_function_data zeroinitializer, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = dso_local local_unnamed_addr global i32 256, section ".data..read_mostly", align 4
@call_single_queue = internal global %struct.llist_head zeroinitializer, section ".data..percpu..shared_aligned", align 64
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@irq_stat = external dso_local global %struct.irq_cpustat_t, section ".data..percpu..shared_aligned", align 64
@__const.smp_call_function_single.csd_stack = private unnamed_addr constant %struct.__call_single_data { %struct.__call_single_node { %struct.llist_node zeroinitializer, %union.anon { i32 17 }, i16 0, i16 0 }, void (i8*)* null, i8* null }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@csd_data = internal global %struct.__call_single_data zeroinitializer, section ".data..percpu..shared_aligned", align 64
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@setup_max_cpus = dso_local global i32 256, align 4
@__setup_str_nosmp = internal constant [6 x i8] c"nosmp\00", section ".init.rodata", align 1
@__setup_nosmp = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__setup_str_nosmp, i32 0, i32 0), i32 (i8*)* @nosmp, i32 1 }, section ".init.setup", align 8
@__setup_str_nrcpus = internal constant [8 x i8] c"nr_cpus\00", section ".init.rodata", align 1
@__setup_nrcpus = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__setup_str_nrcpus, i32 0, i32 0), i32 (i8*)* @nrcpus, i32 1 }, section ".init.setup", align 8
@__setup_str_maxcpus = internal constant [8 x i8] c"maxcpus\00", section ".init.rodata", align 1
@__setup_maxcpus = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__setup_str_maxcpus, i32 0, i32 0), i32 (i8*)* @maxcpus, i32 1 }, section ".init.setup", align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"\016smp: Bringing up secondary CPUs ...\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\016smp: Brought up %d node%s, %d CPU%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@flush_smp_call_function_queue.warned = internal unnamed_addr global i1 false, align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"IPI on offline CPU %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"\014smp: IPI callback %pS sent to offline CPU\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"\014smp: IPI task-wakeup sent to offline CPU\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"\014smp: IPI callback, unknown type %d, sent to offline CPU\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_maxcpus to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_nosmp to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_nrcpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @smpcfd_prepare_cpu(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.call_function_data* @cfd_data to i64)
  %1 = inttoptr i64 %add to %struct.call_function_data*
  %cpumask = getelementptr inbounds %struct.call_function_data, %struct.call_function_data* %1, i64 0, i32 1
  call fastcc void @zalloc_cpumask_var_node([1 x %struct.cpumask]* noundef %cpumask) #15
  %cpumask_ipi = getelementptr inbounds %struct.call_function_data, %struct.call_function_data* %1, i64 0, i32 2
  call fastcc void @zalloc_cpumask_var_node([1 x %struct.cpumask]* noundef %cpumask_ipi) #15
  %call6 = call i8* @__alloc_percpu(i64 noundef 32, i64 noundef 32) #16
  %2 = inttoptr i64 %add to i8**
  store i8* %call6, i8** %2, align 8
  %tobool.not = icmp eq i8* %call6, null
  %spec.select = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %spec.select
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zalloc_cpumask_var_node([1 x %struct.cpumask]* noundef %mask) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %arraydecay) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @smpcfd_dead_cpu(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.call_function_data* @cfd_data to i64)
  %1 = inttoptr i64 %add to i8**
  %2 = load i8*, i8** %1, align 8
  call void @free_percpu(i8* noundef %2) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @smpcfd_dying_cpu(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  call fastcc void @flush_smp_call_function_queue(i1 noundef false) #15
  call void @irq_work_run() #16
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_smp_call_function_queue(i1 noundef %warn_cpu_offline) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.llist_head* @call_single_queue to i64)
  %0 = inttoptr i64 %add to %struct.llist_head*
  %call6 = call fastcc %struct.llist_node* @llist_del_all(%struct.llist_head* noundef %0) #15
  %call7 = call %struct.llist_node* @llist_reverse_order(%struct.llist_node* noundef %call6) #16
  br i1 %warn_cpu_offline, label %do.body8, label %if.end91

do.body8:                                         ; preds = %entry
  %call15 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add16 = add i64 %call15, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add16 to i32*
  %2 = load i32, i32* %1, align 4
  %call17 = call fastcc i1 @cpu_online(i32 noundef %2) #15
  br i1 %call17, label %if.end91, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %do.body8
  %.b265 = load i1, i1* @flush_smp_call_function_queue.warned, align 1
  br i1 %.b265, label %if.end91, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true18
  %call20 = call fastcc i1 @llist_empty(%struct.llist_head* noundef %0) #15
  br i1 %call20, label %if.end91, label %if.then, !prof !8

if.then:                                          ; preds = %land.rhs
  store i1 true, i1* @flush_smp_call_function_queue.warned, align 1
  %call44 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add45 = add i64 %call44, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add45 to i32*
  %4 = load i32, i32* %3, align 4
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 noundef %4) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/smp.c\22; .popsection; .long 14472b - 14470b; .short 584; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !9
  %cmp.not273 = icmp eq %struct.llist_node* %call7, null
  br i1 %cmp.not273, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %5 = bitcast %struct.llist_node* %call7 to %struct.__call_single_data*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %csd.0274 = phi %struct.__call_single_data* [ %10, %for.inc ], [ %5, %for.body.preheader ]
  %u_flags = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd.0274, i64 0, i32 0, i32 1, i32 0
  %6 = load i32, i32* %u_flags, align 8
  %and = and i32 %6, 240
  %7 = lshr exact i32 %and, 4
  switch i32 %7, label %do.end78 [
    i32 0, label %do.end67
    i32 1, label %do.end67
    i32 2, label %do.end67
    i32 3, label %do.end73
  ]

do.end67:                                         ; preds = %for.body, %for.body, %for.body
  %func = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd.0274, i64 0, i32 1
  %8 = load void (i8*)*, void (i8*)** %func, align 16
  %call69 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), void (i8*)* noundef %8) #18
  br label %for.inc

do.end73:                                         ; preds = %for.body
  %call75 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0)) #18
  br label %for.inc

do.end78:                                         ; preds = %for.body
  %call83 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i32 noundef %and) #18
  br label %for.inc

for.inc:                                          ; preds = %do.end67, %do.end73, %do.end78
  %9 = bitcast %struct.__call_single_data* %csd.0274 to %struct.__call_single_data**
  %10 = load %struct.__call_single_data*, %struct.__call_single_data** %9, align 32
  %cmp.not = icmp eq %struct.__call_single_data* %10, null
  br i1 %cmp.not, label %if.end91, label %for.body

if.end91:                                         ; preds = %for.inc, %entry, %do.body8, %land.lhs.true18, %land.rhs
  %cmp100.not275 = icmp eq %struct.llist_node* %call7, null
  br i1 %cmp100.not275, label %cleanup, label %land.rhs102.preheader

land.rhs102.preheader:                            ; preds = %if.end91
  %11 = bitcast %struct.llist_node* %call7 to %struct.__call_single_data*
  br label %land.rhs102

land.rhs102:                                      ; preds = %land.rhs102.preheader, %for.inc135
  %csd.1279 = phi %struct.__call_single_data* [ %13, %for.inc135 ], [ %11, %land.rhs102.preheader ]
  %entry1.0278 = phi %struct.llist_node* [ %entry1.2, %for.inc135 ], [ %call7, %land.rhs102.preheader ]
  %prev.0276 = phi %struct.llist_node* [ %prev.1, %for.inc135 ], [ null, %land.rhs102.preheader ]
  %12 = bitcast %struct.__call_single_data* %csd.1279 to %struct.__call_single_data**
  %13 = load %struct.__call_single_data*, %struct.__call_single_data** %12, align 32
  %u_flags115 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd.1279, i64 0, i32 0, i32 1, i32 0
  %14 = load i32, i32* %u_flags115, align 8
  %and116 = and i32 %14, 240
  %cmp117 = icmp eq i32 %and116, 16
  br i1 %cmp117, label %if.then119, label %if.else131

if.then119:                                       ; preds = %land.rhs102
  %func121 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd.1279, i64 0, i32 1
  %15 = load void (i8*)*, void (i8*)** %func121, align 16
  %info122 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd.1279, i64 0, i32 2
  %16 = load i8*, i8** %info122, align 8
  %tobool123.not = icmp eq %struct.llist_node* %prev.0276, null
  %llist129 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %13, i64 0, i32 0, i32 0
  br i1 %tobool123.not, label %if.end130, label %if.then124

if.then124:                                       ; preds = %if.then119
  %next127 = getelementptr inbounds %struct.llist_node, %struct.llist_node* %prev.0276, i64 0, i32 0
  store %struct.llist_node* %llist129, %struct.llist_node** %next127, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.then119, %if.then124
  %entry1.1 = phi %struct.llist_node* [ %entry1.0278, %if.then124 ], [ %llist129, %if.then119 ]
  call void %15(i8* noundef %16) #16
  %17 = load i32, i32* %u_flags115, align 8
  %and.i = and i32 %17, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %csd_unlock.exit, !prof !10

if.then.i:                                        ; preds = %if.end130
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/smp.c\22; .popsection; .long 14472b - 14470b; .short 459; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !11
  br label %csd_unlock.exit

csd_unlock.exit:                                  ; preds = %if.end130, %if.then.i
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) %u_flags115, i32 0) #17, !srcloc !12
  br label %for.inc135

if.else131:                                       ; preds = %land.rhs102
  %llist105 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd.1279, i64 0, i32 0, i32 0
  br label %for.inc135

for.inc135:                                       ; preds = %csd_unlock.exit, %if.else131
  %prev.1 = phi %struct.llist_node* [ %prev.0276, %csd_unlock.exit ], [ %llist105, %if.else131 ]
  %entry1.2 = phi %struct.llist_node* [ %entry1.1, %csd_unlock.exit ], [ %entry1.0278, %if.else131 ]
  %cmp100.not = icmp eq %struct.__call_single_data* %13, null
  br i1 %cmp100.not, label %for.end136, label %land.rhs102

for.end136:                                       ; preds = %for.inc135
  %tobool137.not = icmp eq %struct.llist_node* %entry1.2, null
  br i1 %tobool137.not, label %cleanup, label %if.end139

if.end139:                                        ; preds = %for.end136
  %18 = bitcast %struct.llist_node* %entry1.2 to %struct.__call_single_data*
  br label %land.rhs150

land.rhs150:                                      ; preds = %if.end139, %if.end193
  %csd.2282 = phi %struct.__call_single_data* [ %18, %if.end139 ], [ %20, %if.end193 ]
  %entry1.3281 = phi %struct.llist_node* [ %entry1.2, %if.end139 ], [ %entry1.5, %if.end193 ]
  %prev.2280 = phi %struct.llist_node* [ null, %if.end139 ], [ %prev.3, %if.end193 ]
  %19 = bitcast %struct.__call_single_data* %csd.2282 to %struct.__call_single_data**
  %20 = load %struct.__call_single_data*, %struct.__call_single_data** %19, align 32
  %u_flags163 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd.2282, i64 0, i32 0, i32 1, i32 0
  %21 = load i32, i32* %u_flags163, align 8
  %and164 = and i32 %21, 240
  %cmp165.not = icmp eq i32 %and164, 48
  br i1 %cmp165.not, label %if.else190, label %if.then167

if.then167:                                       ; preds = %land.rhs150
  %tobool168.not = icmp eq %struct.llist_node* %prev.2280, null
  %llist175 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %20, i64 0, i32 0, i32 0
  br i1 %tobool168.not, label %if.end176, label %if.then169

if.then169:                                       ; preds = %if.then167
  %next172 = getelementptr inbounds %struct.llist_node, %struct.llist_node* %prev.2280, i64 0, i32 0
  store %struct.llist_node* %llist175, %struct.llist_node** %next172, align 8
  br label %if.end176

if.end176:                                        ; preds = %if.then167, %if.then169
  %entry1.4 = phi %struct.llist_node* [ %entry1.3281, %if.then169 ], [ %llist175, %if.then167 ]
  %trunc = trunc i32 %and164 to i8
  switch i8 %trunc, label %if.end193 [
    i8 0, label %if.then179
    i8 32, label %if.then187
  ]

if.then179:                                       ; preds = %if.end176
  %func181 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd.2282, i64 0, i32 1
  %22 = load void (i8*)*, void (i8*)** %func181, align 16
  %info183 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd.2282, i64 0, i32 2
  %23 = load i8*, i8** %info183, align 8
  %24 = load i32, i32* %u_flags163, align 8
  %and.i269 = and i32 %24, 1
  %tobool.not.i270 = icmp eq i32 %and.i269, 0
  br i1 %tobool.not.i270, label %if.then.i271, label %csd_unlock.exit272, !prof !10

if.then.i271:                                     ; preds = %if.then179
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/smp.c\22; .popsection; .long 14472b - 14470b; .short 459; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !11
  br label %csd_unlock.exit272

csd_unlock.exit272:                               ; preds = %if.then179, %if.then.i271
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) %u_flags163, i32 0) #17, !srcloc !12
  call void %22(i8* noundef %23) #16
  br label %if.end193

if.then187:                                       ; preds = %if.end176
  %25 = bitcast %struct.__call_single_data* %csd.2282 to i8*
  call void @irq_work_single(i8* noundef nonnull %25) #16
  br label %if.end193

if.else190:                                       ; preds = %land.rhs150
  %llist153 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd.2282, i64 0, i32 0, i32 0
  br label %if.end193

if.end193:                                        ; preds = %if.end176, %csd_unlock.exit272, %if.then187, %if.else190
  %prev.3 = phi %struct.llist_node* [ %prev.2280, %csd_unlock.exit272 ], [ %prev.2280, %if.then187 ], [ %llist153, %if.else190 ], [ %prev.2280, %if.end176 ]
  %entry1.5 = phi %struct.llist_node* [ %entry1.4, %csd_unlock.exit272 ], [ %entry1.4, %if.then187 ], [ %entry1.3281, %if.else190 ], [ %entry1.4, %if.end176 ]
  %cmp148.not = icmp eq %struct.__call_single_data* %20, null
  br i1 %cmp148.not, label %for.end195, label %land.rhs150

for.end195:                                       ; preds = %if.end193
  %tobool196.not = icmp eq %struct.llist_node* %entry1.5, null
  br i1 %tobool196.not, label %cleanup, label %if.then197

if.then197:                                       ; preds = %for.end195
  %26 = bitcast %struct.llist_node* %entry1.5 to i8*
  call void @sched_ttwu_pending(i8* noundef nonnull %26) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end91, %for.end195, %if.then197, %for.end136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_run() local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @call_function_init() local_unnamed_addr #3 section ".init.text" {
entry:
  %call19 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp20 = icmp ult i32 %call19, %0
  br i1 %cmp20, label %do.body, label %do.body2

do.body:                                          ; preds = %entry, %do.body
  %call21 = phi i32 [ %call, %do.body ], [ %call19, %entry ]
  %idxprom = sext i32 %call21 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.llist_head* @call_single_queue to i64)
  %2 = inttoptr i64 %add to %struct.llist_head*
  call fastcc void @init_llist_head(%struct.llist_head* noundef %2) #15
  %call = call i32 @cpumask_next(i32 noundef %call21, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %do.body, label %do.body2

do.body2:                                         ; preds = %do.body, %entry
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add10 = add i64 %call9, ptrtoint (i32* @cpu_number to i64)
  %4 = inttoptr i64 %add10 to i32*
  %5 = load i32, i32* %4, align 4
  %call11 = call i32 @smpcfd_prepare_cpu(i32 noundef %5) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_llist_head(%struct.llist_head* nocapture noundef writeonly %list) unnamed_addr #5 {
entry:
  %first = getelementptr inbounds %struct.llist_head, %struct.llist_head* %list, i64 0, i32 0
  store %struct.llist_node* null, %struct.llist_node** %first, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #6 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #20, !srcloc !13
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__smp_call_single_queue(i32 noundef %cpu, %struct.llist_node* noundef %node) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.llist_head* @call_single_queue to i64)
  %1 = inttoptr i64 %add to %struct.llist_head*
  %call = call fastcc i1 @llist_add(%struct.llist_node* noundef %node, %struct.llist_head* noundef %1) #15
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @send_call_function_single_ipi(i32 noundef %cpu) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @llist_add(%struct.llist_node* noundef %new, %struct.llist_head* noundef %head) unnamed_addr #0 {
entry:
  %call = call i1 @llist_add_batch(%struct.llist_node* noundef %new, %struct.llist_node* noundef %new, %struct.llist_head* noundef %head) #16
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @send_call_function_single_ipi(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @generic_smp_call_function_single_interrupt() local_unnamed_addr #0 {
entry:
  call fastcc void @flush_smp_call_function_queue(i1 noundef true) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @flush_smp_call_function_from_idle() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.llist_head* @call_single_queue to i64)
  %0 = inttoptr i64 %add to %struct.llist_head*
  %call2 = call fastcc i1 @llist_empty(%struct.llist_head* noundef %0) #15
  br i1 %call2, label %cleanup, label %do.body4

do.body4:                                         ; preds = %entry
  %call6 = call fastcc i64 @arch_local_irq_save() #15
  call fastcc void @flush_smp_call_function_queue(i1 noundef true) #15
  %call24 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add25 = add i64 %call24, ptrtoint (%struct.irq_cpustat_t* @irq_stat to i64)
  %1 = inttoptr i64 %add25 to i32*
  %2 = load i32, i32* %1, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body30, label %if.then27

if.then27:                                        ; preds = %do.body4
  call void @do_softirq() #16
  br label %do.body30

do.body30:                                        ; preds = %if.then27, %do.body4
  call fastcc void @arch_local_irq_restore(i64 noundef %call6) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @llist_empty(%struct.llist_head* noundef %head) unnamed_addr #7 {
entry:
  %first = getelementptr inbounds %struct.llist_head, %struct.llist_head* %head, i64 0, i32 0
  %0 = load volatile %struct.llist_node*, %struct.llist_node** %first, align 8
  %cmp = icmp eq %struct.llist_node* %0, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #15
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_softirq() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #17, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @smp_call_function_single(i32 noundef %cpu, void (i8*)* noundef %func, i8* noundef %info, i32 noundef %wait) local_unnamed_addr #0 {
entry:
  %csd_stack = alloca %struct.__call_single_data, align 32
  %csd_stack.sroa.gep127 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd_stack, i64 0, i32 0, i32 1, i32 0
  %csd_stack.sroa.gep118 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd_stack, i64 0, i32 2
  %csd_stack.sroa.gep = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd_stack, i64 0, i32 1
  %0 = bitcast %struct.__call_single_data* %csd_stack to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 32 dereferenceable(32) %0, i8* noundef align 32 dereferenceable(32) bitcast (%struct.__call_single_data* @__const.smp_call_function_single.csd_stack to i8*), i64 32, i1 false)
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %call3 = call fastcc i1 @cpu_online(i32 noundef %2) #15
  br i1 %call3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call6 = call fastcc i64 @arch_local_save_flags() #15
  %call16 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call6) #15
  %tobool.not = icmp ne i32 %call16, 0
  %3 = load i32, i32* @oops_in_progress, align 4
  %tobool17.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool17.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !16

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/smp.c\22; .popsection; .long 14472b - 14470b; .short 732; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !17
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %call36 = call fastcc i32 @preempt_count() #15
  %4 = and i32 %call36, 15728640
  %call38 = call fastcc i32 @preempt_count() #15
  %5 = and i32 %call38, 983040
  %or113 = or i32 %5, %4
  %call41 = call fastcc i32 @preempt_count() #15
  %6 = and i32 %call41, 256
  %or45115 = or i32 %or113, %6
  %tobool46.not = icmp eq i32 %or45115, 0
  br i1 %tobool46.not, label %if.end64, label %if.then63, !prof !8

if.then63:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/smp.c\22; .popsection; .long 14472b - 14470b; .short 740; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !18
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end
  %tobool73.not = icmp eq i32 %wait, 0
  br i1 %tobool73.not, label %do.body75, label %if.then89

do.body75:                                        ; preds = %if.end64
  %call82 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add83 = add i64 %call82, ptrtoint (%struct.__call_single_data* @csd_data to i64)
  %7 = inttoptr i64 %add83 to %struct.__call_single_data*
  %.sroa.gep128 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %7, i64 0, i32 0, i32 1, i32 0
  %.sroa.gep119 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %7, i64 0, i32 2
  %.sroa.gep = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %7, i64 0, i32 1
  %8 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %.sroa.gep128) #17, !srcloc !19
  %and10.i.i = and i32 %8, 1
  %tobool.not11.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool.not11.i.i, label %if.end84, label %if.end.lr.ph.i.i

if.end.lr.ph.i.i:                                 ; preds = %do.body75
  %9 = bitcast i32* %.sroa.gep128 to i8*
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i, %if.end.lr.ph.i.i
  %10 = phi i32 [ %8, %if.end.lr.ph.i.i ], [ %11, %if.end.i.i ]
  %conv.i.i = zext i32 %10 to i64
  call fastcc void @__cmpwait_case_32(i8* noundef %9, i64 noundef %conv.i.i) #16
  %11 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %.sroa.gep128) #17, !srcloc !19
  %and.i.i = and i32 %11, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end84, label %if.end.i.i

if.end84:                                         ; preds = %if.end.i.i, %do.body75
  %12 = load i32, i32* %.sroa.gep128, align 8
  %or.i = or i32 %12, 1
  store i32 %or.i, i32* %.sroa.gep128, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !20
  store void (i8*)* %func, void (i8*)** %.sroa.gep, align 16
  store i8* %info, i8** %.sroa.gep119, align 8
  %call87 = call fastcc i32 @generic_exec_single(i32 noundef %cpu, %struct.__call_single_data* noundef %7) #15
  br label %if.end90

if.then89:                                        ; preds = %if.end64
  store void (i8*)* %func, void (i8*)** %csd_stack.sroa.gep, align 16
  store i8* %info, i8** %csd_stack.sroa.gep118, align 8
  %call87123 = call fastcc i32 @generic_exec_single(i32 noundef %cpu, %struct.__call_single_data* noundef nonnull %csd_stack) #15
  %13 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %csd_stack.sroa.gep127) #17, !srcloc !19
  %and10.i = and i32 %13, 1
  %tobool.not11.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not11.i, label %if.end90, label %if.end.lr.ph.i

if.end.lr.ph.i:                                   ; preds = %if.then89
  %14 = bitcast i32* %csd_stack.sroa.gep127 to i8*
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i, %if.end.lr.ph.i
  %15 = phi i32 [ %13, %if.end.lr.ph.i ], [ %16, %if.end.i ]
  %conv.i = zext i32 %15 to i64
  call fastcc void @__cmpwait_case_32(i8* noundef %14, i64 noundef %conv.i) #16
  %16 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %csd_stack.sroa.gep127) #17, !srcloc !19
  %and.i = and i32 %16, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end90, label %if.end.i

if.end90:                                         ; preds = %if.end.i, %if.end84, %if.then89
  %call87126 = phi i32 [ %call87, %if.end84 ], [ %call87123, %if.then89 ], [ %call87123, %if.end.i ]
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #17
  ret i32 %call87126
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_online(i32 noundef %cpu) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_online_mask) #15
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #17, !srcloc !22
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #17, !srcloc !23
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !24
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.3* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @generic_exec_single(i32 noundef %cpu, %struct.__call_single_data* noundef %csd) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %cmp = icmp eq i32 %1, %cpu
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %func2 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd, i64 0, i32 1
  %2 = load void (i8*)*, void (i8*)** %func2, align 8
  %info3 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd, i64 0, i32 2
  %3 = load i8*, i8** %info3, align 8
  %u_flags.i = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd, i64 0, i32 0, i32 1, i32 0
  %4 = load i32, i32* %u_flags.i, align 8
  %and.i = and i32 %4, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %csd_unlock.exit, !prof !10

if.then.i:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/smp.c\22; .popsection; .long 14472b - 14470b; .short 459; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !11
  br label %csd_unlock.exit

csd_unlock.exit:                                  ; preds = %if.then, %if.then.i
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) %u_flags.i, i32 0) #17, !srcloc !12
  %call8 = call fastcc i64 @arch_local_irq_save() #15
  call void %2(i8* noundef %3) #16
  call fastcc void @arch_local_irq_restore(i64 noundef %call8) #15
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp26.not = icmp ugt i32 %5, %cpu
  br i1 %cmp26.not, label %lor.lhs.false, label %if.then29

lor.lhs.false:                                    ; preds = %if.end
  %call28 = call fastcc i1 @cpu_online(i32 noundef %cpu) #15
  br i1 %call28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %lor.lhs.false, %if.end
  %u_flags.i44 = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd, i64 0, i32 0, i32 1, i32 0
  %6 = load i32, i32* %u_flags.i44, align 8
  %and.i45 = and i32 %6, 1
  %tobool.not.i46 = icmp eq i32 %and.i45, 0
  br i1 %tobool.not.i46, label %if.then.i47, label %csd_unlock.exit48, !prof !10

if.then.i47:                                      ; preds = %if.then29
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/smp.c\22; .popsection; .long 14472b - 14470b; .short 459; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !11
  br label %csd_unlock.exit48

csd_unlock.exit48:                                ; preds = %if.then29, %if.then.i47
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) %u_flags.i44, i32 0) #17, !srcloc !12
  br label %return

if.end30:                                         ; preds = %lor.lhs.false
  %llist = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd, i64 0, i32 0, i32 0
  call void @__smp_call_single_queue(i32 noundef %cpu, %struct.llist_node* noundef %llist) #15
  br label %return

return:                                           ; preds = %if.end30, %csd_unlock.exit48, %csd_unlock.exit
  %retval.0 = phi i32 [ 0, %csd_unlock.exit ], [ -6, %csd_unlock.exit48 ], [ 0, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @smp_call_function_single_async(i32 noundef %cpu, %struct.__call_single_data* noundef %csd) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %u_flags = getelementptr inbounds %struct.__call_single_data, %struct.__call_single_data* %csd, i64 0, i32 0, i32 1, i32 0
  %0 = load i32, i32* %u_flags, align 8
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  store i32 1, i32* %u_flags, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !26
  %call = call fastcc i32 @generic_exec_single(i32 noundef %cpu, %struct.__call_single_data* noundef %csd) #15
  br label %out

out:                                              ; preds = %entry, %if.end
  %err.0 = phi i32 [ %call, %if.end ], [ -16, %entry ]
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @smp_call_function_any(%struct.cpumask* noundef %mask, void (i8*)* noundef %func, i8* noundef %info, i32 noundef %wait) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call3 = call fastcc i32 @cpumask_test_cpu(i32 noundef %1, %struct.cpumask* noundef %mask) #15
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %call10

if.end:                                           ; preds = %entry
  %call4 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask, %struct.cpumask* noundef %mask) #19
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp27 = icmp ult i32 %call4, %2
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.inc
  %cpu.028 = phi i32 [ %call8, %for.inc ], [ %call4, %if.end ]
  %call5 = call fastcc i1 @cpu_online(i32 noundef %cpu.028) #15
  br i1 %call5, label %call10, label %for.inc

for.inc:                                          ; preds = %for.body
  %call8 = call i32 @cpumask_next_and(i32 noundef %cpu.028, %struct.cpumask* noundef nonnull @__cpu_online_mask, %struct.cpumask* noundef %mask) #19
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call8, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %call9 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %mask, %struct.cpumask* noundef nonnull @__cpu_online_mask) #19
  br label %call10

call10:                                           ; preds = %for.body, %entry, %for.end
  %cpu.1 = phi i32 [ %1, %entry ], [ %call9, %for.end ], [ %cpu.028, %for.body ]
  %call11 = call i32 @smp_call_function_single(i32 noundef %cpu.1, void (i8*)* noundef %func, i8* noundef %info, i32 noundef %wait) #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !29
  ret i32 %call11
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, %struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @smp_call_function_many(%struct.cpumask* noundef %mask, void (i8*)* noundef %func, i8* noundef %info, i1 noundef %wait) local_unnamed_addr #0 {
entry:
  %conv = zext i1 %wait to i32
  call fastcc void @smp_call_function_many_cond(%struct.cpumask* noundef %mask, void (i8*)* noundef %func, i8* noundef %info, i32 noundef %conv, i1 (i32, i8*)* noundef null) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @smp_call_function_many_cond(%struct.cpumask* noundef %mask, void (i8*)* noundef %func, i8* noundef %info, i32 noundef %scf_flags, i1 (i32, i8*)* noundef readonly %cond_func) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %and = and i32 %scf_flags, 1
  %tobool.not = icmp eq i32 %and, 0
  %call5 = call fastcc i1 @cpu_online(i32 noundef %1) #15
  %call12 = call fastcc i32 @preempt_count() #15
  %2 = and i32 %call12, 15728640
  %call14 = call fastcc i32 @preempt_count() #15
  %3 = and i32 %call14, 983040
  %or262 = or i32 %3, %2
  %call17 = call fastcc i32 @preempt_count() #15
  %4 = and i32 %call17, 256
  %or21264 = or i32 %or262, %4
  %tobool22.not = icmp eq i32 %or21264, 0
  br i1 %tobool22.not, label %if.end34, label %if.then33, !prof !8

if.then33:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/smp.c\22; .popsection; .long 14472b - 14470b; .short 894; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !30
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %entry
  %and43 = and i32 %scf_flags, 2
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end49, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.end34
  %call46 = call fastcc i32 @cpumask_test_cpu(i32 noundef %1, %struct.cpumask* noundef %mask) #15
  %tobool47.not = icmp ne i32 %call46, 0
  br label %if.end49

if.end49:                                         ; preds = %land.lhs.true45, %if.end34
  %run_local.0.off0 = phi i1 [ false, %if.end34 ], [ %tobool47.not, %land.lhs.true45 ]
  %call50 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %mask, %struct.cpumask* noundef nonnull @__cpu_online_mask) #19
  %cmp = icmp eq i32 %call50, %1
  br i1 %cmp, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end49
  %call53 = call i32 @cpumask_next_and(i32 noundef %1, %struct.cpumask* noundef %mask, %struct.cpumask* noundef nonnull @__cpu_online_mask) #19
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end49
  %cpu.0 = phi i32 [ %call53, %if.then52 ], [ %call50, %if.end49 ]
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp55 = icmp ult i32 %cpu.0, %5
  br i1 %cmp55, label %do.body61, label %if.end135

do.body61:                                        ; preds = %if.end54
  %call68 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add69 = add i64 %call68, ptrtoint (%struct.call_function_data* @cfd_data to i64)
  %6 = inttoptr i64 %add69 to %struct.call_function_data*
  %arraydecay = getelementptr inbounds %struct.call_function_data, %struct.call_function_data* %6, i64 0, i32 1, i64 0
  call fastcc void @cpumask_and(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %mask) #15
  call fastcc void @__cpumask_clear_cpu(i32 noundef %1, %struct.cpumask* noundef %arraydecay) #15
  %arraydecay73 = getelementptr inbounds %struct.call_function_data, %struct.call_function_data* %6, i64 0, i32 2, i64 0
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %arraydecay73) #15
  %call76265 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %arraydecay) #19
  %7 = load i32, i32* @nr_cpu_ids, align 4
  %cmp77266 = icmp ult i32 %call76265, %7
  br i1 %cmp77266, label %for.body.lr.ph, label %if.end135

for.body.lr.ph:                                   ; preds = %do.body61
  %pcpu85 = getelementptr inbounds %struct.call_function_data, %struct.call_function_data* %6, i64 0, i32 0
  %tobool89.not = icmp eq i1 (i32, i8*)* %cond_func, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %call76269 = phi i32 [ %call76265, %for.body.lr.ph ], [ %call76, %cleanup ]
  %last_cpu.0268 = phi i32 [ 0, %for.body.lr.ph ], [ %last_cpu.2, %cleanup ]
  %nr_cpus.0267 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_cpus.2, %cleanup ]
  %8 = load %struct.cfd_percpu*, %struct.cfd_percpu** %pcpu85, align 8
  %9 = ptrtoint %struct.cfd_percpu* %8 to i64
  %idxprom = sext i32 %call76269 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8
  %add87 = add i64 %10, %9
  %11 = inttoptr i64 %add87 to %struct.cfd_percpu*
  br i1 %tobool89.not, label %if.end93, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %for.body
  %call91 = call i1 %cond_func(i32 noundef %call76269, i8* noundef %info) #16
  br i1 %call91, label %if.end93, label %cleanup

if.end93:                                         ; preds = %land.lhs.true90, %for.body
  %u_flags.i.i = getelementptr inbounds %struct.cfd_percpu, %struct.cfd_percpu* %11, i64 0, i32 0, i32 0, i32 1, i32 0
  %12 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %u_flags.i.i) #17, !srcloc !19
  %and10.i.i = and i32 %12, 1
  %tobool.not11.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool.not11.i.i, label %csd_lock.exit, label %if.end.lr.ph.i.i

if.end.lr.ph.i.i:                                 ; preds = %if.end93
  %13 = bitcast i32* %u_flags.i.i to i8*
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i, %if.end.lr.ph.i.i
  %14 = phi i32 [ %12, %if.end.lr.ph.i.i ], [ %15, %if.end.i.i ]
  %conv.i.i = zext i32 %14 to i64
  call fastcc void @__cmpwait_case_32(i8* noundef %13, i64 noundef %conv.i.i) #16
  %15 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %u_flags.i.i) #17, !srcloc !19
  %and.i.i = and i32 %15, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %csd_lock.exit, label %if.end.i.i

csd_lock.exit:                                    ; preds = %if.end.i.i, %if.end93
  %16 = load i32, i32* %u_flags.i.i, align 8
  %or.i = or i32 %16, 1
  store i32 %or.i, i32* %u_flags.i.i, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !20
  br i1 %tobool.not, label %if.end97, label %if.then95

if.then95:                                        ; preds = %csd_lock.exit
  %17 = load i32, i32* %u_flags.i.i, align 8
  %or96 = or i32 %17, 16
  store i32 %or96, i32* %u_flags.i.i, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %csd_lock.exit
  %func98 = getelementptr inbounds %struct.cfd_percpu, %struct.cfd_percpu* %11, i64 0, i32 0, i32 1
  store void (i8*)* %func, void (i8*)** %func98, align 16
  %info99 = getelementptr inbounds %struct.cfd_percpu, %struct.cfd_percpu* %11, i64 0, i32 0, i32 2
  store i8* %info, i8** %info99, align 8
  %llist = getelementptr inbounds %struct.cfd_percpu, %struct.cfd_percpu* %11, i64 0, i32 0, i32 0, i32 0
  %18 = load i64, i64* %arrayidx, align 8
  %add110 = add i64 %18, ptrtoint (%struct.llist_head* @call_single_queue to i64)
  %19 = inttoptr i64 %add110 to %struct.llist_head*
  %call111 = call fastcc i1 @llist_add(%struct.llist_node* noundef %llist, %struct.llist_head* noundef %19) #15
  br i1 %call111, label %if.then112, label %cleanup

if.then112:                                       ; preds = %if.end97
  call fastcc void @__cpumask_set_cpu(i32 noundef %call76269, %struct.cpumask* noundef %arraydecay73) #15
  %inc = add i32 %nr_cpus.0267, 1
  br label %cleanup

cleanup:                                          ; preds = %if.then112, %if.end97, %land.lhs.true90
  %nr_cpus.2 = phi i32 [ %nr_cpus.0267, %land.lhs.true90 ], [ %inc, %if.then112 ], [ %nr_cpus.0267, %if.end97 ]
  %last_cpu.2 = phi i32 [ %last_cpu.0268, %land.lhs.true90 ], [ %call76269, %if.then112 ], [ %last_cpu.0268, %if.end97 ]
  %call76 = call i32 @cpumask_next(i32 noundef %call76269, %struct.cpumask* noundef %arraydecay) #19
  %20 = load i32, i32* @nr_cpu_ids, align 4
  %cmp77 = icmp ult i32 %call76, %20
  br i1 %cmp77, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup
  %cmp117 = icmp eq i32 %nr_cpus.2, 1
  br i1 %cmp117, label %if.then119, label %if.else120

if.then119:                                       ; preds = %for.end
  call void @send_call_function_single_ipi(i32 noundef %last_cpu.2) #16
  br label %if.end135

if.else120:                                       ; preds = %for.end
  %cmp121 = icmp sgt i32 %nr_cpus.2, 1
  br i1 %cmp121, label %if.then130, label %if.end135, !prof !8

if.then130:                                       ; preds = %if.else120
  call void @arch_send_call_function_ipi_mask(%struct.cpumask* noundef %arraydecay73) #16
  br label %if.end135

if.end135:                                        ; preds = %do.body61, %if.then119, %if.then130, %if.else120, %if.end54
  %cfd.0 = phi %struct.call_function_data* [ %6, %if.then119 ], [ %6, %if.then130 ], [ %6, %if.else120 ], [ null, %if.end54 ], [ %6, %do.body61 ]
  br i1 %run_local.0.off0, label %land.lhs.true138, label %if.end167

land.lhs.true138:                                 ; preds = %if.end135
  %tobool139.not = icmp eq i1 (i32, i8*)* %cond_func, null
  br i1 %tobool139.not, label %if.then142, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true138
  %call140 = call i1 %cond_func(i32 noundef %1, i8* noundef %info) #16
  br i1 %call140, label %if.then142, label %if.end167

if.then142:                                       ; preds = %lor.lhs.false, %land.lhs.true138
  %call148 = call fastcc i64 @arch_local_irq_save() #15
  call void %func(i8* noundef %info) #16
  call fastcc void @arch_local_irq_restore(i64 noundef %call148) #15
  br label %if.end167

if.end167:                                        ; preds = %if.then142, %lor.lhs.false, %if.end135
  %cmp55.not = xor i1 %cmp55, true
  %brmerge = or i1 %tobool.not, %cmp55.not
  br i1 %brmerge, label %if.end195, label %for.cond174.preheader

for.cond174.preheader:                            ; preds = %if.end167
  %arraydecay176 = getelementptr inbounds %struct.call_function_data, %struct.call_function_data* %cfd.0, i64 0, i32 1, i64 0
  %call177271 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %arraydecay176) #19
  %21 = load i32, i32* @nr_cpu_ids, align 4
  %cmp178272 = icmp ult i32 %call177271, %21
  br i1 %cmp178272, label %for.body180.lr.ph, label %if.end195

for.body180.lr.ph:                                ; preds = %for.cond174.preheader
  %pcpu188 = getelementptr inbounds %struct.call_function_data, %struct.call_function_data* %cfd.0, i64 0, i32 0
  br label %for.body180

for.body180:                                      ; preds = %for.body180.lr.ph, %csd_lock_wait.exit
  %call177273 = phi i32 [ %call177271, %for.body180.lr.ph ], [ %call177, %csd_lock_wait.exit ]
  %22 = load %struct.cfd_percpu*, %struct.cfd_percpu** %pcpu188, align 8
  %23 = ptrtoint %struct.cfd_percpu* %22 to i64
  %idxprom190 = sext i32 %call177273 to i64
  %arrayidx191 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom190
  %24 = load i64, i64* %arrayidx191, align 8
  %add192 = add i64 %24, %23
  %25 = inttoptr i64 %add192 to %struct.cfd_percpu*
  %u_flags.i = getelementptr inbounds %struct.cfd_percpu, %struct.cfd_percpu* %25, i64 0, i32 0, i32 0, i32 1, i32 0
  %26 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %u_flags.i) #17, !srcloc !19
  %and10.i = and i32 %26, 1
  %tobool.not11.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not11.i, label %csd_lock_wait.exit, label %if.end.lr.ph.i

if.end.lr.ph.i:                                   ; preds = %for.body180
  %27 = bitcast i32* %u_flags.i to i8*
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i, %if.end.lr.ph.i
  %28 = phi i32 [ %26, %if.end.lr.ph.i ], [ %29, %if.end.i ]
  %conv.i = zext i32 %28 to i64
  call fastcc void @__cmpwait_case_32(i8* noundef %27, i64 noundef %conv.i) #16
  %29 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %u_flags.i) #17, !srcloc !19
  %and.i = and i32 %29, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %csd_lock_wait.exit, label %if.end.i

csd_lock_wait.exit:                               ; preds = %if.end.i, %for.body180
  %call177 = call i32 @cpumask_next(i32 noundef %call177273, %struct.cpumask* noundef %arraydecay176) #19
  %30 = load i32, i32* @nr_cpu_ids, align 4
  %cmp178 = icmp ult i32 %call177, %30
  br i1 %cmp178, label %for.body180, label %if.end195

if.end195:                                        ; preds = %csd_lock_wait.exit, %for.cond174.preheader, %if.end167
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @smp_call_function(void (i8*)* noundef %func, i8* noundef %info, i32 noundef %wait) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %tobool = icmp ne i32 %wait, 0
  call void @smp_call_function_many(%struct.cpumask* noundef nonnull @__cpu_online_mask, void (i8*)* noundef %func, i8* noundef %info, i1 noundef %tobool) #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @arch_disable_smp_support() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @nosmp(i8* nocapture noundef readnone %str) #3 section ".init.text" {
entry:
  store i32 0, i32* @setup_max_cpus, align 4
  call void @arch_disable_smp_support() #15
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @nrcpus(i8* noundef %str) #3 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  %nr_cpus = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = bitcast i32* %nr_cpus to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %nr_cpus, align 4, !annotation !33
  %call = call i32 @get_option(i8** noundef nonnull %str.addr, i32* noundef nonnull %nr_cpus) #16
  %tobool = icmp ne i32 %call, 0
  %1 = load i32, i32* %nr_cpus, align 4
  %cmp = icmp sgt i32 %1, 0
  %or.cond = select i1 %tobool, i1 %cmp, i1 false
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %1, %2
  %or.cond3 = select i1 %or.cond, i1 %cmp2, i1 false
  br i1 %or.cond3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %1, i32* @nr_cpu_ids, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @maxcpus(i8* noundef %str) #3 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %call = call i32 @get_option(i8** noundef nonnull %str.addr, i32* noundef nonnull @setup_max_cpus) #16
  %0 = load i32, i32* @setup_max_cpus, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @arch_disable_smp_support() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @setup_nr_cpu_ids() local_unnamed_addr #3 section ".init.text" {
entry:
  %call = call fastcc i64 @find_last_bit() #15
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  store i32 %conv, i32* @nr_cpu_ids, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_last_bit() unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_last_bit(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i64 noundef 256) #16
  ret i64 %call5
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @smp_init() local_unnamed_addr #3 section ".init.text" {
entry:
  call void @idle_threads_init() #16
  call void @cpuhp_threads_init() #18
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0)) #18
  %0 = load i32, i32* @setup_max_cpus, align 4
  call void @bringup_nonboot_cpus(i32 noundef %0) #16
  %call2 = call fastcc i32 @num_online_cpus() #15
  %cmp7 = icmp sgt i32 %call2, 1
  %cond8 = select i1 %cmp7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 noundef %call2, i8* noundef %cond8) #18
  %1 = load i32, i32* @setup_max_cpus, align 4
  call void @smp_cpus_done(i32 noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idle_threads_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cpuhp_threads_init() local_unnamed_addr #9 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @bringup_nonboot_cpus(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #7 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_cpus_done(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @on_each_cpu_cond_mask(i1 (i32, i8*)* noundef %cond_func, void (i8*)* noundef %func, i8* noundef %info, i1 noundef %wait, %struct.cpumask* noundef %mask) local_unnamed_addr #0 {
entry:
  %spec.select = select i1 %wait, i32 3, i32 2
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  call fastcc void @smp_call_function_many_cond(%struct.cpumask* noundef %mask, void (i8*)* noundef %func, i8* noundef %info, i32 noundef %spec.select, i1 (i32, i8*)* noundef %cond_func) #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kick_all_cpus_sync() local_unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  call void @smp_call_function(void (i8*)* noundef nonnull @do_nothing, i8* noundef null, i32 noundef 1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @do_nothing(i8* nocapture noundef %unused) #10 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wake_up_all_idle_cpus() local_unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %call10 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #19
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp11 = icmp ult i32 %call10, %0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond.backedge
  %1 = phi i32 [ %4, %for.cond.backedge ], [ %0, %entry ]
  %call12 = phi i32 [ %call, %for.cond.backedge ], [ %call10, %entry ]
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call2, ptrtoint (i32* @cpu_number to i64)
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %cmp3 = icmp eq i32 %call12, %3
  br i1 %cmp3, label %for.cond.backedge, label %if.end

if.end:                                           ; preds = %for.body
  call void @wake_up_if_idle(i32 noundef %call12) #16
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end, %for.body
  %4 = phi i32 [ %.pre, %if.end ], [ %1, %for.body ]
  %call = call i32 @cpumask_next(i32 noundef %call12, %struct.cpumask* noundef nonnull @__cpu_online_mask) #19
  %cmp = icmp ult i32 %call, %4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.cond.backedge, %entry
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_if_idle(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @smp_call_on_cpu(i32 noundef %cpu, i32 (i8*)* noundef %func, i8* noundef %par, i1 noundef %phys) local_unnamed_addr #0 {
entry:
  %sscs = alloca %struct.smp_call_on_cpu_struct, align 8
  %0 = bitcast %struct.smp_call_on_cpu_struct* %sscs to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #17
  %work = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %sscs, i64 0, i32 0
  %done = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %sscs, i64 0, i32 1
  %1 = bitcast %struct.smp_call_on_cpu_struct* %sscs to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %1, i8 0, i64 88, i1 false)
  call fastcc void @init_completion(%struct.completion* noundef %done) #15
  %func3 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %sscs, i64 0, i32 2
  store i32 (i8*)* %func, i32 (i8*)** %func3, align 8
  %data = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %sscs, i64 0, i32 3
  store i8* %par, i8** %data, align 8
  %ret = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %sscs, i64 0, i32 4
  store i32 0, i32* %ret, align 8
  %cpu4 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %sscs, i64 0, i32 5
  %cond = select i1 %phys, i32 %cpu, i32 -1
  store i32 %cond, i32* %cpu4, align 4
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %sscs, i64 0, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry9 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %sscs, i64 0, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry9) #15
  %func11 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %sscs, i64 0, i32 0, i32 2
  store void (%struct.work_struct*)* @smp_call_on_cpu_callback, void (%struct.work_struct*)** %func11, align 8
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp.not = icmp ugt i32 %2, %cpu
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i1 @cpu_online(i32 noundef %cpu) #15
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  %call13 = call i1 @queue_work_on(i32 noundef %cpu, %struct.workqueue_struct* noundef %3, %struct.work_struct* noundef nonnull %work) #16
  call void @wait_for_completion(%struct.completion* noundef %done) #16
  %4 = load i32, i32* %ret, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %4, %if.end ], [ -6, %lor.lhs.false ], [ -6, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #0 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #12 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @smp_call_on_cpu_callback(%struct.work_struct* noundef %work) #0 {
entry:
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 2
  %0 = bitcast %struct.work_struct* %func to i32 (i8*)**
  %1 = load i32 (i8*)*, i32 (i8*)** %0, align 8
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 2, i32 1
  %2 = bitcast %struct.list_head* %data to i8**
  %3 = load i8*, i8** %2, align 8
  %call = call i32 %1(i8* noundef %3) #16
  %ret = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 2, i32 1, i32 1
  %4 = bitcast %struct.list_head** %ret to i32*
  store i32 %call, i32* %4, align 8
  %done = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 1
  %5 = bitcast %struct.work_struct* %done to %struct.completion*
  call void @complete(%struct.completion* noundef %5) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear(%struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @llist_add_batch(%struct.llist_node* noundef, %struct.llist_node* noundef, %struct.llist_head* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.llist_node* @llist_del_all(%struct.llist_head* noundef %head) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.llist_head* %head to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %0) #16
  %1 = inttoptr i64 %call11.i to %struct.llist_node*
  ret %struct.llist_node* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.llist_node* @llist_reverse_order(%struct.llist_node* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_single(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_ttwu_pending(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #17, !srcloc !39
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #15
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !10

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #17, !srcloc !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #7 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cmpwait_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call i64 asm sideeffect "\09sevl\0A\09wfe\0A\09ldxr\09${0:w}, $1\0A\09eor\09${0:w}, ${0:w}, ${2:w}\0A\09cbnz\09${0:w}, 1f\0A\09wfe\0A1:", "=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #17, !srcloc !41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_and(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %src1p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  call fastcc void @bitmap_and(i64* noundef %arraydecay, i64* noundef %arraydecay2) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* nocapture noundef %dstp) unnamed_addr #14 {
entry:
  %rem.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %cpu, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 %idx.ext.i
  %neg.i = xor i64 %shl.i, -1
  %0 = load i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %neg.i
  store i64 %and.i, i64* %add.ptr.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* nocapture noundef %dstp) unnamed_addr #14 {
entry:
  %rem.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %cpu, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 %idx.ext.i
  %0 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %0, %shl.i
  store i64 %or.i, i64* %add.ptr.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_call_function_ipi_mask(%struct.cpumask* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_and(i64* noundef %dst, i64* noundef %src1) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_and(i64* noundef %dst, i64* noundef %src1, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 0), i32 noundef 256) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(i8** noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_last_bit(i64* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { cold nobuiltin nounwind "no-builtins" }
attributes #19 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #20 = { nounwind readonly }
attributes #21 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2152381106}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152368628}
!12 = !{i64 2152369596}
!13 = !{i64 2149003696, i64 2149003743, i64 2149003749, i64 2149003786, i64 2149003804, i64 2149004731, i64 2149004779, i64 2149004827, i64 2149004890, i64 2149004939, i64 2149003882, i64 2149003907, i64 2149003933, i64 2149003939, i64 2149003976, i64 2149003982, i64 2149004032, i64 2149004078, i64 2149004111}
!14 = !{i64 2148779695, i64 2148779742, i64 2148779748, i64 2148779785, i64 2148779803, i64 2148781114, i64 2148781162, i64 2148781210, i64 2148781273, i64 2148781322, i64 2148779881, i64 2148779906, i64 2148779932, i64 2148779938, i64 2148780780, i64 2148780820, i64 2148780838, i64 2148780870, i64 2148780898, i64 2148780952, i64 2148780972, i64 2148781069, i64 2148779961, i64 2148779975, i64 2148779981, i64 2148780031, i64 2148780077, i64 2148780110}
!15 = !{i64 2152405158}
!16 = !{!"branch_weights", i32 1, i32 4001}
!17 = !{i64 2152408182}
!18 = !{i64 2152410719}
!19 = !{i64 2152364334}
!20 = !{i64 2152367102}
!21 = !{i64 2152411782}
!22 = !{i64 2148773682, i64 2148773729, i64 2148773735, i64 2148773772, i64 2148773790, i64 2148775101, i64 2148775149, i64 2148775197, i64 2148775260, i64 2148775309, i64 2148773868, i64 2148773893, i64 2148773919, i64 2148773925, i64 2148774767, i64 2148774807, i64 2148774825, i64 2148774857, i64 2148774885, i64 2148774939, i64 2148774959, i64 2148775056, i64 2148773948, i64 2148773962, i64 2148773968, i64 2148774018, i64 2148774064, i64 2148774097}
!23 = !{i64 2148775861, i64 2148775908, i64 2148775914, i64 2148775951, i64 2148775969, i64 2148776912, i64 2148776960, i64 2148777008, i64 2148777071, i64 2148777120, i64 2148776047, i64 2148776072, i64 2148776098, i64 2148776104, i64 2148776141, i64 2148776147, i64 2148776197, i64 2148776243, i64 2148776276}
!24 = !{i64 1449462}
!25 = !{i64 2152411937}
!26 = !{i64 2152411993}
!27 = !{i64 2152412060}
!28 = !{i64 2152412282}
!29 = !{i64 2152413489}
!30 = !{i64 2152416649}
!31 = !{i64 2152421168}
!32 = !{i64 2152421261}
!33 = !{!"auto-init"}
!34 = !{i64 2152426155}
!35 = !{i64 2152426203}
!36 = !{i64 2152426354}
!37 = !{i64 2152426534}
!38 = !{i64 2152427598}
!39 = !{i64 2147827524, i64 2147827556, i64 2147827600, i64 2147827647, i64 2147827673}
!40 = !{i64 2148767979, i64 2148768026, i64 2148768032, i64 2148768069, i64 2148768087, i64 2148769428, i64 2148769476, i64 2148769524, i64 2148769587, i64 2148769636, i64 2148768165, i64 2148768190, i64 2148768216, i64 2148768222, i64 2148769094, i64 2148769134, i64 2148769152, i64 2148769184, i64 2148769212, i64 2148769266, i64 2148769286, i64 2148769383, i64 2148768245, i64 2148768259, i64 2148768265, i64 2148768315, i64 2148768361, i64 2148768394}
!41 = !{i64 2147855332, i64 2147855352, i64 2147855370, i64 2147855413, i64 2147855466, i64 2147855499, i64 2147855517}
