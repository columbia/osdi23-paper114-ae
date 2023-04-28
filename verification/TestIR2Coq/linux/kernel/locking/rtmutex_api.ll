; ModuleID = 'kernel/locking/rtmutex_api.c'
source_filename = "kernel/locking/rtmutex_api.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.26, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.3 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.4, [0 x i64] }
%struct.anon.4 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.5, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.5 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.12 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.12 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type { %struct.rb_node, %struct.rb_node, %struct.task_struct*, %struct.rt_mutex_base*, i32, i32, i64, %struct.ww_acquire_ctx* }
%struct.ww_acquire_ctx = type { %struct.task_struct*, i64, i32, i16, i16 }
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
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_wake_q_head = type { %struct.wake_q_head, %struct.task_struct* }
%struct.wake_q_head = type { %struct.wake_q_node*, %struct.wake_q_node** }
%struct.lock_class_key = type {}
%struct.hrtimer_sleeper = type { %struct.hrtimer, %struct.task_struct* }

@max_lock_depth = dso_local local_unnamed_addr global i32 1024, align 4
@.str = private unnamed_addr constant [27 x i8] c"rtmutex deadlock detected\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@rt_mutex_adjust_prio_chain.prev_max = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"\014Maximum lock depth %d reached task: %s (%d)\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @rt_mutex_base_init(%struct.rt_mutex_base* nocapture noundef writeonly %rtb) local_unnamed_addr #0 {
entry:
  call fastcc void @__rt_mutex_base_init(%struct.rt_mutex_base* noundef %rtb) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @__rt_mutex_base_init(%struct.rt_mutex_base* nocapture noundef writeonly %lock) unnamed_addr #0 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral1.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 1, i32 0, i32 0
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral1.sroa.0.0..sroa_idx, align 8
  %.compoundliteral1.sroa.2.0..sroa_idx2 = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 1, i32 1
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral1.sroa.2.0..sroa_idx2, align 8
  %owner = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 2
  store %struct.task_struct* null, %struct.task_struct** %owner, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rt_mutex_lock(%struct.rt_mutex* noundef %lock) local_unnamed_addr #1 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %owner.i.i.i = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %lock, i64 0, i32 0, i32 2
  %1 = bitcast %struct.task_struct** %owner.i.i.i to i8*
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %1, i64 noundef 0, i64 noundef %0) #12
  %cmp4.i.i.i = icmp eq i64 %call14.i.i.i.i, 0
  br i1 %cmp4.i.i.i, label %__rt_mutex_lock_common.exit, label %if.end.i.i, !prof !8

if.end.i.i:                                       ; preds = %entry
  %rtmutex.i = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %lock, i64 0, i32 0
  %call3.i.i = call fastcc i32 @rt_mutex_slowlock(%struct.rt_mutex_base* noundef %rtmutex.i, i32 noundef 2) #12
  br label %__rt_mutex_lock_common.exit

__rt_mutex_lock_common.exit:                      ; preds = %entry, %if.end.i.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @rt_mutex_lock_interruptible(%struct.rt_mutex* noundef %lock) local_unnamed_addr #1 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %owner.i.i.i = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %lock, i64 0, i32 0, i32 2
  %1 = bitcast %struct.task_struct** %owner.i.i.i to i8*
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %1, i64 noundef 0, i64 noundef %0) #12
  %cmp4.i.i.i = icmp eq i64 %call14.i.i.i.i, 0
  br i1 %cmp4.i.i.i, label %__rt_mutex_lock_common.exit, label %if.end.i.i, !prof !8

if.end.i.i:                                       ; preds = %entry
  %rtmutex.i = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %lock, i64 0, i32 0
  %call3.i.i = call fastcc i32 @rt_mutex_slowlock(%struct.rt_mutex_base* noundef %rtmutex.i, i32 noundef 1) #12
  br label %__rt_mutex_lock_common.exit

__rt_mutex_lock_common.exit:                      ; preds = %entry, %if.end.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.end.i.i ], [ 0, %entry ]
  ret i32 %retval.0.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @rt_mutex_trylock(%struct.rt_mutex* noundef %lock) local_unnamed_addr #1 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %owner.i.i = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %lock, i64 0, i32 0, i32 2
  %1 = bitcast %struct.task_struct** %owner.i.i to i8*
  %call14.i.i.i = call fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %1, i64 noundef 0, i64 noundef %0) #12
  %cmp4.i.i = icmp eq i64 %call14.i.i.i, 0
  br i1 %cmp4.i.i, label %__rt_mutex_trylock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %rtmutex = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %lock, i64 0, i32 0
  %call3.i = call fastcc i32 @rt_mutex_slowtrylock(%struct.rt_mutex_base* noundef %rtmutex) #12
  br label %__rt_mutex_trylock.exit

__rt_mutex_trylock.exit:                          ; preds = %entry, %if.end.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ 1, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rt_mutex_unlock(%struct.rt_mutex* noundef %lock) local_unnamed_addr #1 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %owner.i.i = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %lock, i64 0, i32 0, i32 2
  %2 = bitcast %struct.task_struct** %owner.i.i to i8*
  %call14.i.i.i = call fastcc i64 @__cmpxchg_case_rel_64(i8* noundef %2, i64 noundef %0) #12
  %3 = inttoptr i64 %call14.i.i.i to %struct.task_struct*
  %cmp4.i.i = icmp eq %struct.task_struct* %3, %1
  br i1 %cmp4.i.i, label %__rt_mutex_unlock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %rtmutex = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %lock, i64 0, i32 0
  call fastcc void @rt_mutex_slowunlock(%struct.rt_mutex_base* noundef %rtmutex) #12
  br label %__rt_mutex_unlock.exit

__rt_mutex_unlock.exit:                           ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @rt_mutex_futex_trylock(%struct.rt_mutex_base* noundef %lock) local_unnamed_addr #1 section ".sched.text" {
entry:
  %call = call fastcc i32 @rt_mutex_slowtrylock(%struct.rt_mutex_base* noundef %lock) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rt_mutex_slowtrylock(%struct.rt_mutex_base* noundef %lock) unnamed_addr #1 section ".sched.text" {
entry:
  %call = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %lock) #10
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %do.body, label %cleanup

do.body:                                          ; preds = %entry
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 0
  %call1 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %wait_lock) #10
  %call2 = call fastcc i32 @__rt_mutex_slowtrylock(%struct.rt_mutex_base* noundef %lock) #10
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %wait_lock, i64 noundef %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body
  %retval.0 = phi i32 [ %call2, %do.body ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__rt_mutex_futex_trylock(%struct.rt_mutex_base* noundef %lock) local_unnamed_addr #1 section ".sched.text" {
entry:
  %call = call fastcc i32 @__rt_mutex_slowtrylock(%struct.rt_mutex_base* noundef %lock) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__rt_mutex_slowtrylock(%struct.rt_mutex_base* noundef %lock) unnamed_addr #1 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @try_to_take_rt_mutex(%struct.rt_mutex_base* noundef %lock, %struct.task_struct* noundef %1, %struct.rt_mutex_waiter* noundef null) #10
  %owner1.i = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 2
  %2 = bitcast %struct.task_struct** %owner1.i to i64*
  %call.i = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #12
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %fixup_rt_mutex_waiters.exit

do.end.i:                                         ; preds = %entry
  %3 = load volatile i64, i64* %2, align 8
  %and.i = and i64 %3, 1
  %tobool2.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool2.not.i, label %fixup_rt_mutex_waiters.exit, label %do.body8.i

do.body8.i:                                       ; preds = %do.end.i
  %and9.i = and i64 %3, -2
  store volatile i64 %and9.i, i64* %2, align 8
  br label %fixup_rt_mutex_waiters.exit

fixup_rt_mutex_waiters.exit:                      ; preds = %entry, %do.end.i, %do.body8.i
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @__rt_mutex_futex_unlock(%struct.rt_mutex_base* noundef %lock, %struct.rt_wake_q_head* noundef %wqh) local_unnamed_addr #1 section ".sched.text" {
entry:
  %call = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %owner = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 2
  store %struct.task_struct* null, %struct.task_struct** %owner, align 8
  br label %return

if.end:                                           ; preds = %entry
  call fastcc void @mark_wakeup_next_waiter(%struct.rt_wake_q_head* noundef %wqh, %struct.rt_mutex_base* noundef %lock) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = xor i1 %tobool.not, true
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) unnamed_addr #3 {
entry:
  %rb_node = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 1, i32 0, i32 0
  %0 = load volatile %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %cmp = icmp ne %struct.rb_node* %0, null
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_wakeup_next_waiter(%struct.rt_wake_q_head* noundef %wqh, %struct.rt_mutex_base* noundef %lock) unnamed_addr #1 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 102
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %pi_lock) #10
  %call1 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %lock) #10
  %pi_tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %call1, i64 0, i32 1
  %__rb_parent_color.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %pi_tree_entry.i, i64 0, i32 0
  %2 = load i64, i64* %__rb_parent_color.i, align 8
  %3 = ptrtoint %struct.rb_node* %pi_tree_entry.i to i64
  %cmp.i = icmp eq i64 %2, %3
  br i1 %cmp.i, label %rt_mutex_dequeue_pi.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %pi_waiters.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 104
  call fastcc void @rb_erase_cached(%struct.rb_node* noundef %pi_tree_entry.i, %struct.rb_root_cached* noundef %pi_waiters.i) #12
  store i64 %3, i64* %__rb_parent_color.i, align 8
  br label %rt_mutex_dequeue_pi.exit

rt_mutex_dequeue_pi.exit:                         ; preds = %entry, %if.end.i
  %call.i = call fastcc i32 @task_has_pi_waiters(%struct.task_struct* noundef %1) #12
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %rt_mutex_adjust_prio.exit, label %if.then.i

if.then.i:                                        ; preds = %rt_mutex_dequeue_pi.exit
  %call1.i = call fastcc %struct.rt_mutex_waiter* @task_top_pi_waiter(%struct.task_struct* noundef %1) #12
  %task.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %call1.i, i64 0, i32 2
  %4 = load %struct.task_struct*, %struct.task_struct** %task.i, align 8
  br label %rt_mutex_adjust_prio.exit

rt_mutex_adjust_prio.exit:                        ; preds = %rt_mutex_dequeue_pi.exit, %if.then.i
  %pi_task.0.i = phi %struct.task_struct* [ %4, %if.then.i ], [ null, %rt_mutex_dequeue_pi.exit ]
  call void @rt_mutex_setprio(%struct.task_struct* noundef %1, %struct.task_struct* noundef %pi_task.0.i) #12
  %owner = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 2
  store %struct.task_struct* inttoptr (i64 1 to %struct.task_struct*), %struct.task_struct** %owner, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %head.i = getelementptr inbounds %struct.rt_wake_q_head, %struct.rt_wake_q_head* %wqh, i64 0, i32 0
  %task.i10 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %call1, i64 0, i32 2
  %5 = load %struct.task_struct*, %struct.task_struct** %task.i10, align 8
  call void @wake_q_add(%struct.wake_q_head* noundef %head.i, %struct.task_struct* noundef %5) #12
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rt_mutex_futex_unlock(%struct.rt_mutex_base* noundef %lock) local_unnamed_addr #1 section ".sched.text" {
entry:
  %wqh = alloca %struct.rt_wake_q_head, align 8
  %0 = bitcast %struct.rt_wake_q_head* %wqh to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #13
  %first = getelementptr inbounds %struct.rt_wake_q_head, %struct.rt_wake_q_head* %wqh, i64 0, i32 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.rt_wake_q_head, %struct.rt_wake_q_head* %wqh, i64 0, i32 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  %rtlock_task = getelementptr inbounds %struct.rt_wake_q_head, %struct.rt_wake_q_head* %wqh, i64 0, i32 1
  store %struct.task_struct* null, %struct.task_struct** %rtlock_task, align 8
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %wait_lock) #10
  %call3 = call i1 @__rt_mutex_futex_unlock(%struct.rt_mutex_base* noundef %lock, %struct.rt_wake_q_head* noundef nonnull %wqh) #10
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %wait_lock, i64 noundef %call) #10
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @rt_mutex_postunlock(%struct.rt_wake_q_head* noundef nonnull %wqh) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #10
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rt_mutex_postunlock(%struct.rt_wake_q_head* noundef %wqh) local_unnamed_addr #1 section ".sched.text" {
entry:
  %head.i = getelementptr inbounds %struct.rt_wake_q_head, %struct.rt_wake_q_head* %wqh, i64 0, i32 0
  %call.i = call fastcc i1 @wake_q_empty(%struct.wake_q_head* noundef %head.i) #12
  br i1 %call.i, label %rt_mutex_wake_up_q.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @wake_up_q(%struct.wake_q_head* noundef %head.i) #12
  br label %rt_mutex_wake_up_q.exit

rt_mutex_wake_up_q.exit:                          ; preds = %entry, %if.then.i
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @__rt_mutex_init(%struct.rt_mutex* nocapture noundef writeonly %lock, i8* nocapture noundef readnone %name, %struct.lock_class_key* nocapture noundef readnone %key) local_unnamed_addr #0 section ".sched.text" {
entry:
  %rtmutex = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %lock, i64 0, i32 0
  call fastcc void @__rt_mutex_base_init(%struct.rt_mutex_base* noundef %rtmutex) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @rt_mutex_init_proxy_locked(%struct.rt_mutex_base* noundef %lock, %struct.task_struct* noundef %proxy_owner) local_unnamed_addr #5 section ".sched.text" {
entry:
  call fastcc void @__rt_mutex_base_init(%struct.rt_mutex_base* noundef %lock) #10
  %0 = ptrtoint %struct.task_struct* %proxy_owner to i64
  %call.i = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #12
  %tobool.not.i = icmp ne i32 %call.i, 0
  %or.i = zext i1 %tobool.not.i to i64
  %spec.select.i = or i64 %or.i, %0
  %1 = inttoptr i64 %spec.select.i to %struct.task_struct*
  %owner3.i = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 2
  store volatile %struct.task_struct* %1, %struct.task_struct** %owner3.i, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @rt_mutex_proxy_unlock(%struct.rt_mutex_base* noundef %lock) local_unnamed_addr #5 section ".sched.text" {
entry:
  %call.i = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #12
  %tobool.not.i = icmp ne i32 %call.i, 0
  %or.i = zext i1 %tobool.not.i to i64
  %0 = inttoptr i64 %or.i to %struct.task_struct*
  %owner3.i = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 2
  store volatile %struct.task_struct* %0, %struct.task_struct** %owner3.i, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__rt_mutex_start_proxy_lock(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter, %struct.task_struct* noundef %task) local_unnamed_addr #1 section ".sched.text" {
entry:
  %call = call fastcc i32 @try_to_take_rt_mutex(%struct.rt_mutex_base* noundef %lock, %struct.task_struct* noundef %task, %struct.rt_mutex_waiter* noundef null) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @task_blocks_on_rt_mutex(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter, %struct.task_struct* noundef %task, i32 noundef 1) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %lock) #10
  %tobool4.not = icmp eq %struct.task_struct* %call3, null
  %spec.select = select i1 %tobool4.not, i32 0, i32 %call1
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ %spec.select, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @try_to_take_rt_mutex(%struct.rt_mutex_base* noundef %lock, %struct.task_struct* noundef %task, %struct.rt_mutex_waiter* noundef %waiter) unnamed_addr #1 section ".sched.text" {
entry:
  %.compoundliteral = alloca %struct.rt_mutex_waiter, align 8
  %owner1.i = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 2
  %0 = bitcast %struct.task_struct** %owner1.i to i64*
  %1 = bitcast %struct.task_struct** %owner1.i to i8*
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %entry
  %2 = load i64, i64* %0, align 8
  %or.i = or i64 %2, 1
  %call14.i.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %1, i64 noundef %2, i64 noundef %or.i) #12
  %cmp.not.i = icmp eq i64 %call14.i.i, %2
  br i1 %cmp.not.i, label %mark_rt_mutex_waiters.exit, label %do.body.i

mark_rt_mutex_waiters.exit:                       ; preds = %do.body.i
  %call = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %lock) #10
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %mark_rt_mutex_waiters.exit
  %tobool1.not = icmp eq %struct.rt_mutex_waiter* %waiter, null
  br i1 %tobool1.not, label %if.else7, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %lock) #10
  %cmp = icmp eq %struct.rt_mutex_waiter* %call3, %waiter
  br i1 %cmp, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %call4 = call fastcc i1 @rt_mutex_steal(%struct.rt_mutex_waiter* noundef nonnull %waiter, %struct.rt_mutex_waiter* noundef %call3) #10
  br i1 %call4, label %if.then5, label %return

if.then5:                                         ; preds = %lor.lhs.false, %if.then2
  %__rb_parent_color.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 0, i32 0
  %3 = load i64, i64* %__rb_parent_color.i, align 8
  %4 = ptrtoint %struct.rt_mutex_waiter* %waiter to i64
  %cmp.i = icmp eq i64 %3, %4
  br i1 %cmp.i, label %if.end21, label %if.end.i

if.end.i:                                         ; preds = %if.then5
  %tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 0
  %waiters.i = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 1
  call fastcc void @rb_erase_cached(%struct.rb_node* noundef %tree_entry.i, %struct.rb_root_cached* noundef %waiters.i) #12
  store i64 %4, i64* %__rb_parent_color.i, align 8
  br label %if.end21

if.else7:                                         ; preds = %if.end
  %call8 = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #10
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %takeit, label %if.then10

if.then10:                                        ; preds = %if.else7
  %5 = bitcast %struct.rt_mutex_waiter* %.compoundliteral to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %5, i8 0, i64 88, i1 false)
  %prio = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %.compoundliteral, i64 0, i32 5
  %prio1.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 15
  %6 = load i32, i32* %prio1.i, align 4
  %call.i = call fastcc i32 @rt_prio(i32 noundef %6) #12
  %tobool.not.i = icmp eq i32 %call.i, 0
  %..i = select i1 %tobool.not.i, i32 120, i32 %6
  store i32 %..i, i32* %prio, align 4
  %deadline = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %.compoundliteral, i64 0, i32 6
  %deadline14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 22, i32 7
  %7 = load i64, i64* %deadline14, align 8
  store i64 %7, i64* %deadline, align 8
  %call15 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %lock) #10
  %call16 = call fastcc i1 @rt_mutex_steal(%struct.rt_mutex_waiter* noundef nonnull %.compoundliteral, %struct.rt_mutex_waiter* noundef %call15) #10
  br i1 %call16, label %if.end21, label %return

if.end21:                                         ; preds = %if.end.i, %if.then5, %if.then10
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 102
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %pi_lock) #10
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 106
  store %struct.rt_mutex_waiter* null, %struct.rt_mutex_waiter** %pi_blocked_on, align 32
  %call22 = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #10
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end21
  %call25 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %lock) #10
  %pi_tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %call25, i64 0, i32 1
  %pi_waiters.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 104
  %rb_node.i.i = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %pi_waiters.i, i64 0, i32 0, i32 0
  %8 = load %struct.rb_node*, %struct.rb_node** %rb_node.i.i, align 8
  %tobool.not2.i.i = icmp eq %struct.rb_node* %8, null
  br i1 %tobool.not2.i.i, label %rt_mutex_enqueue_pi.exit, label %while.body.i.preheader.i

while.body.i.preheader.i:                         ; preds = %if.then24
  %add.ptr9.i.i = getelementptr %struct.rb_node, %struct.rb_node* %pi_tree_entry.i, i64 -1
  %9 = bitcast %struct.rb_node* %add.ptr9.i.i to %struct.rt_mutex_waiter*
  %prio.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %9, i64 0, i32 5
  %10 = load i32, i32* %prio.i.i.i, align 4
  %11 = getelementptr %struct.rb_node, %struct.rb_node* %pi_tree_entry.i, i64 2, i32 0
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %18, %while.body.i.preheader.i
  %12 = phi %struct.rb_node* [ %20, %18 ], [ %8, %while.body.i.preheader.i ]
  %leftmost.0.off03.i.i = phi i1 [ %retval.0.i.i4.i, %18 ], [ true, %while.body.i.preheader.i ]
  %add.ptr610.i.i = getelementptr %struct.rb_node, %struct.rb_node* %12, i64 -1
  %13 = bitcast %struct.rb_node* %add.ptr610.i.i to %struct.rt_mutex_waiter*
  %prio1.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %13, i64 0, i32 5
  %14 = load i32, i32* %prio1.i.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %10, %14
  br i1 %cmp.i.i.i, label %__pi_waiter_less.exit.thread.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i
  %call.i.i.i = call fastcc i32 @dl_prio(i32 noundef %10) #12
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__pi_waiter_less.exit.thread7.i, label %__pi_waiter_less.exit.i

__pi_waiter_less.exit.thread7.i:                  ; preds = %if.end.i.i.i
  %rb_right.i10.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %12, i64 0, i32 1
  br label %18

__pi_waiter_less.exit.i:                          ; preds = %if.end.i.i.i
  %15 = load i64, i64* %11, align 8
  %16 = getelementptr %struct.rb_node, %struct.rb_node* %12, i64 2, i32 0
  %17 = load i64, i64* %16, align 8
  %call5.i.i.i = call fastcc i1 @dl_time_before(i64 noundef %15, i64 noundef %17) #12
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %12, i64 0, i32 1
  br i1 %call5.i.i.i, label %__pi_waiter_less.exit.thread.i, label %18

__pi_waiter_less.exit.thread.i:                   ; preds = %__pi_waiter_less.exit.i, %while.body.i.i
  %rb_left.i6.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %12, i64 0, i32 2
  br label %18

18:                                               ; preds = %__pi_waiter_less.exit.thread.i, %__pi_waiter_less.exit.i, %__pi_waiter_less.exit.thread7.i
  %retval.0.i.i4.i = phi i1 [ %leftmost.0.off03.i.i, %__pi_waiter_less.exit.thread.i ], [ false, %__pi_waiter_less.exit.i ], [ false, %__pi_waiter_less.exit.thread7.i ]
  %19 = phi %struct.rb_node** [ %rb_left.i6.i, %__pi_waiter_less.exit.thread.i ], [ %rb_right.i.i, %__pi_waiter_less.exit.i ], [ %rb_right.i10.i, %__pi_waiter_less.exit.thread7.i ]
  %20 = load %struct.rb_node*, %struct.rb_node** %19, align 8
  %tobool.not.i.i = icmp eq %struct.rb_node* %20, null
  br i1 %tobool.not.i.i, label %rt_mutex_enqueue_pi.exit, label %while.body.i.i

rt_mutex_enqueue_pi.exit:                         ; preds = %18, %if.then24
  %link.0.lcssa.i.i = phi %struct.rb_node** [ %rb_node.i.i, %if.then24 ], [ %19, %18 ]
  %parent.0.lcssa.i.i = phi %struct.rb_node* [ null, %if.then24 ], [ %12, %18 ]
  %leftmost.0.off0.lcssa.i.i = phi i1 [ true, %if.then24 ], [ %retval.0.i.i4.i, %18 ]
  call fastcc void @rb_link_node(%struct.rb_node* noundef %pi_tree_entry.i, %struct.rb_node* noundef %parent.0.lcssa.i.i, %struct.rb_node** noundef %link.0.lcssa.i.i) #12
  call fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %pi_tree_entry.i, %struct.rb_root_cached* noundef %pi_waiters.i, i1 noundef %leftmost.0.off0.lcssa.i.i) #12
  br label %if.end26

if.end26:                                         ; preds = %rt_mutex_enqueue_pi.exit, %if.end21
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock) #10
  br label %takeit

takeit:                                           ; preds = %if.else7, %if.end26
  %21 = ptrtoint %struct.task_struct* %task to i64
  %call.i48 = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #12
  %tobool.not.i49 = icmp ne i32 %call.i48, 0
  %or.i50 = zext i1 %tobool.not.i49 to i64
  %spec.select.i = or i64 %or.i50, %21
  %22 = inttoptr i64 %spec.select.i to %struct.task_struct*
  store volatile %struct.task_struct* %22, %struct.task_struct** %owner1.i, align 8
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.then10, %mark_rt_mutex_waiters.exit, %takeit
  %retval.1 = phi i32 [ 1, %takeit ], [ 0, %mark_rt_mutex_waiters.exit ], [ 0, %if.then10 ], [ 0, %lor.lhs.false ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_blocks_on_rt_mutex(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter, %struct.task_struct* noundef %task, i32 noundef %chwalk) unnamed_addr #1 section ".sched.text" {
entry:
  %call = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %lock) #10
  %cmp = icmp eq %struct.task_struct* %call, %task
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 102
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %pi_lock) #10
  %task1 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 2
  store %struct.task_struct* %task, %struct.task_struct** %task1, align 8
  %lock2 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 3
  store %struct.rt_mutex_base* %lock, %struct.rt_mutex_base** %lock2, align 8
  %prio1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 15
  %0 = load i32, i32* %prio1.i.i, align 4
  %call.i.i = call fastcc i32 @rt_prio(i32 noundef %0) #12
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 120, i32 %0
  %prio.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 5
  store i32 %..i.i, i32* %prio.i, align 4
  %deadline.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 22, i32 7
  %1 = load i64, i64* %deadline.i, align 8
  %deadline1.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 6
  store i64 %1, i64* %deadline1.i, align 8
  %call3 = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #10
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %lock) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %top_waiter.0 = phi %struct.rt_mutex_waiter* [ %call5, %if.then4 ], [ %waiter, %if.end ]
  %tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 0
  %waiters.i = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 1
  %rb_node.i.i = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %waiters.i, i64 0, i32 0, i32 0
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_node.i.i, align 8
  %tobool.not2.i.i = icmp eq %struct.rb_node* %2, null
  br i1 %tobool.not2.i.i, label %rt_mutex_enqueue.exit, label %while.body.i.preheader.i

while.body.i.preheader.i:                         ; preds = %if.end6
  %3 = load i32, i32* %prio.i, align 4
  %4 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tree_entry.i, i64 3, i32 0
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %11, %while.body.i.preheader.i
  %5 = phi %struct.rb_node* [ %13, %11 ], [ %2, %while.body.i.preheader.i ]
  %leftmost.0.off03.i.i = phi i1 [ %retval.0.i.i4.i, %11 ], [ true, %while.body.i.preheader.i ]
  %6 = bitcast %struct.rb_node* %5 to %struct.rt_mutex_waiter*
  %prio1.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %6, i64 0, i32 5
  %7 = load i32, i32* %prio1.i.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %3, %7
  br i1 %cmp.i.i.i, label %__waiter_less.exit.thread.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i
  %call.i.i.i = call fastcc i32 @dl_prio(i32 noundef %3) #12
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__waiter_less.exit.thread7.i, label %__waiter_less.exit.i

__waiter_less.exit.thread7.i:                     ; preds = %if.end.i.i.i
  %rb_right.i10.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i64 0, i32 1
  br label %11

__waiter_less.exit.i:                             ; preds = %if.end.i.i.i
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i64 3, i32 0
  %10 = load i64, i64* %9, align 8
  %call5.i.i.i = call fastcc i1 @dl_time_before(i64 noundef %8, i64 noundef %10) #12
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i64 0, i32 1
  br i1 %call5.i.i.i, label %__waiter_less.exit.thread.i, label %11

__waiter_less.exit.thread.i:                      ; preds = %__waiter_less.exit.i, %while.body.i.i
  %rb_left.i6.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i64 0, i32 2
  br label %11

11:                                               ; preds = %__waiter_less.exit.thread.i, %__waiter_less.exit.i, %__waiter_less.exit.thread7.i
  %retval.0.i.i4.i = phi i1 [ %leftmost.0.off03.i.i, %__waiter_less.exit.thread.i ], [ false, %__waiter_less.exit.i ], [ false, %__waiter_less.exit.thread7.i ]
  %12 = phi %struct.rb_node** [ %rb_left.i6.i, %__waiter_less.exit.thread.i ], [ %rb_right.i.i, %__waiter_less.exit.i ], [ %rb_right.i10.i, %__waiter_less.exit.thread7.i ]
  %13 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %tobool.not.i.i2 = icmp eq %struct.rb_node* %13, null
  br i1 %tobool.not.i.i2, label %rt_mutex_enqueue.exit, label %while.body.i.i

rt_mutex_enqueue.exit:                            ; preds = %11, %if.end6
  %link.0.lcssa.i.i = phi %struct.rb_node** [ %rb_node.i.i, %if.end6 ], [ %12, %11 ]
  %parent.0.lcssa.i.i = phi %struct.rb_node* [ null, %if.end6 ], [ %5, %11 ]
  %leftmost.0.off0.lcssa.i.i = phi i1 [ true, %if.end6 ], [ %retval.0.i.i4.i, %11 ]
  call fastcc void @rb_link_node(%struct.rb_node* noundef %tree_entry.i, %struct.rb_node* noundef %parent.0.lcssa.i.i, %struct.rb_node** noundef %link.0.lcssa.i.i) #12
  call fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %tree_entry.i, %struct.rb_root_cached* noundef %waiters.i, i1 noundef %leftmost.0.off0.lcssa.i.i) #12
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 106
  store %struct.rt_mutex_waiter* %waiter, %struct.rt_mutex_waiter** %pi_blocked_on, align 32
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock) #10
  %tobool8.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %rt_mutex_enqueue.exit
  %pi_lock11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 102
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %pi_lock11) #10
  %call12 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %lock) #10
  %cmp13 = icmp eq %struct.rt_mutex_waiter* %call12, %waiter
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end10
  %pi_tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %top_waiter.0, i64 0, i32 1
  %__rb_parent_color.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %pi_tree_entry.i, i64 0, i32 0
  %14 = load i64, i64* %__rb_parent_color.i, align 8
  %15 = ptrtoint %struct.rb_node* %pi_tree_entry.i to i64
  %cmp.i = icmp eq i64 %14, %15
  br i1 %cmp.i, label %rt_mutex_dequeue_pi.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then14
  %pi_waiters.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 104
  call fastcc void @rb_erase_cached(%struct.rb_node* noundef %pi_tree_entry.i, %struct.rb_root_cached* noundef %pi_waiters.i) #12
  store i64 %15, i64* %__rb_parent_color.i, align 8
  br label %rt_mutex_dequeue_pi.exit

rt_mutex_dequeue_pi.exit:                         ; preds = %if.then14, %if.end.i
  %pi_tree_entry.i3 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 1
  %pi_waiters.i4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 104
  %rb_node.i.i5 = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %pi_waiters.i4, i64 0, i32 0, i32 0
  %16 = load %struct.rb_node*, %struct.rb_node** %rb_node.i.i5, align 8
  %tobool.not2.i.i6 = icmp eq %struct.rb_node* %16, null
  br i1 %tobool.not2.i.i6, label %rt_mutex_enqueue_pi.exit, label %while.body.i.preheader.i8

while.body.i.preheader.i8:                        ; preds = %rt_mutex_dequeue_pi.exit
  %add.ptr9.i.i = getelementptr %struct.rb_node, %struct.rb_node* %pi_tree_entry.i3, i64 -1
  %17 = bitcast %struct.rb_node* %add.ptr9.i.i to %struct.rt_mutex_waiter*
  %prio.i.i.i7 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %17, i64 0, i32 5
  %18 = load i32, i32* %prio.i.i.i7, align 4
  %19 = getelementptr %struct.rb_node, %struct.rb_node* %pi_tree_entry.i3, i64 2, i32 0
  br label %while.body.i.i12

while.body.i.i12:                                 ; preds = %26, %while.body.i.preheader.i8
  %20 = phi %struct.rb_node* [ %28, %26 ], [ %16, %while.body.i.preheader.i8 ]
  %leftmost.0.off03.i.i9 = phi i1 [ %retval.0.i.i4.i20, %26 ], [ true, %while.body.i.preheader.i8 ]
  %add.ptr610.i.i = getelementptr %struct.rb_node, %struct.rb_node* %20, i64 -1
  %21 = bitcast %struct.rb_node* %add.ptr610.i.i to %struct.rt_mutex_waiter*
  %prio1.i.i.i10 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %21, i64 0, i32 5
  %22 = load i32, i32* %prio1.i.i.i10, align 4
  %cmp.i.i.i11 = icmp slt i32 %18, %22
  br i1 %cmp.i.i.i11, label %__pi_waiter_less.exit.thread.i, label %if.end.i.i.i15

if.end.i.i.i15:                                   ; preds = %while.body.i.i12
  %call.i.i.i13 = call fastcc i32 @dl_prio(i32 noundef %18) #12
  %tobool.not.i.i.i14 = icmp eq i32 %call.i.i.i13, 0
  br i1 %tobool.not.i.i.i14, label %__pi_waiter_less.exit.thread7.i, label %__pi_waiter_less.exit.i

__pi_waiter_less.exit.thread7.i:                  ; preds = %if.end.i.i.i15
  %rb_right.i10.i16 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %20, i64 0, i32 1
  br label %26

__pi_waiter_less.exit.i:                          ; preds = %if.end.i.i.i15
  %23 = load i64, i64* %19, align 8
  %24 = getelementptr %struct.rb_node, %struct.rb_node* %20, i64 2, i32 0
  %25 = load i64, i64* %24, align 8
  %call5.i.i.i17 = call fastcc i1 @dl_time_before(i64 noundef %23, i64 noundef %25) #12
  %rb_right.i.i18 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %20, i64 0, i32 1
  br i1 %call5.i.i.i17, label %__pi_waiter_less.exit.thread.i, label %26

__pi_waiter_less.exit.thread.i:                   ; preds = %__pi_waiter_less.exit.i, %while.body.i.i12
  %rb_left.i6.i19 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %20, i64 0, i32 2
  br label %26

26:                                               ; preds = %__pi_waiter_less.exit.thread.i, %__pi_waiter_less.exit.i, %__pi_waiter_less.exit.thread7.i
  %retval.0.i.i4.i20 = phi i1 [ %leftmost.0.off03.i.i9, %__pi_waiter_less.exit.thread.i ], [ false, %__pi_waiter_less.exit.i ], [ false, %__pi_waiter_less.exit.thread7.i ]
  %27 = phi %struct.rb_node** [ %rb_left.i6.i19, %__pi_waiter_less.exit.thread.i ], [ %rb_right.i.i18, %__pi_waiter_less.exit.i ], [ %rb_right.i10.i16, %__pi_waiter_less.exit.thread7.i ]
  %28 = load %struct.rb_node*, %struct.rb_node** %27, align 8
  %tobool.not.i.i21 = icmp eq %struct.rb_node* %28, null
  br i1 %tobool.not.i.i21, label %rt_mutex_enqueue_pi.exit, label %while.body.i.i12

rt_mutex_enqueue_pi.exit:                         ; preds = %26, %rt_mutex_dequeue_pi.exit
  %link.0.lcssa.i.i22 = phi %struct.rb_node** [ %rb_node.i.i5, %rt_mutex_dequeue_pi.exit ], [ %27, %26 ]
  %parent.0.lcssa.i.i23 = phi %struct.rb_node* [ null, %rt_mutex_dequeue_pi.exit ], [ %20, %26 ]
  %leftmost.0.off0.lcssa.i.i24 = phi i1 [ true, %rt_mutex_dequeue_pi.exit ], [ %retval.0.i.i4.i20, %26 ]
  call fastcc void @rb_link_node(%struct.rb_node* noundef %pi_tree_entry.i3, %struct.rb_node* noundef %parent.0.lcssa.i.i23, %struct.rb_node** noundef %link.0.lcssa.i.i22) #12
  call fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %pi_tree_entry.i3, %struct.rb_root_cached* noundef %pi_waiters.i4, i1 noundef %leftmost.0.off0.lcssa.i.i24) #12
  %call.i = call fastcc i32 @task_has_pi_waiters(%struct.task_struct* noundef nonnull %call) #12
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %rt_mutex_adjust_prio.exit, label %if.then.i

if.then.i:                                        ; preds = %rt_mutex_enqueue_pi.exit
  %call1.i = call fastcc %struct.rt_mutex_waiter* @task_top_pi_waiter(%struct.task_struct* noundef nonnull %call) #12
  %task.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %call1.i, i64 0, i32 2
  %29 = load %struct.task_struct*, %struct.task_struct** %task.i, align 8
  br label %rt_mutex_adjust_prio.exit

rt_mutex_adjust_prio.exit:                        ; preds = %rt_mutex_enqueue_pi.exit, %if.then.i
  %pi_task.0.i = phi %struct.task_struct* [ %29, %if.then.i ], [ null, %rt_mutex_enqueue_pi.exit ]
  call void @rt_mutex_setprio(%struct.task_struct* noundef nonnull %call, %struct.task_struct* noundef %pi_task.0.i) #12
  %pi_blocked_on15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 106
  %30 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %pi_blocked_on15, align 32
  %tobool16.not = icmp ne %struct.rt_mutex_waiter* %30, null
  br label %if.end22

if.else:                                          ; preds = %if.end10
  %cmp.i26 = icmp eq i32 %chwalk, 1
  %pi_blocked_on.i.phi.trans.insert = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 106
  %.pre = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %pi_blocked_on.i.phi.trans.insert, align 32
  br label %if.end22

if.end22:                                         ; preds = %if.else, %rt_mutex_adjust_prio.exit
  %31 = phi %struct.rt_mutex_waiter* [ %30, %rt_mutex_adjust_prio.exit ], [ %.pre, %if.else ]
  %tobool25 = phi i1 [ %tobool16.not, %rt_mutex_adjust_prio.exit ], [ %cmp.i26, %if.else ]
  %tobool.not.i27 = icmp eq %struct.rt_mutex_waiter* %31, null
  br i1 %tobool.not.i27, label %task_blocked_on_lock.exit.thread, label %task_blocked_on_lock.exit

task_blocked_on_lock.exit.thread:                 ; preds = %if.end22
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock11) #10
  br label %cleanup

task_blocked_on_lock.exit:                        ; preds = %if.end22
  %lock.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %31, i64 0, i32 3
  %32 = load %struct.rt_mutex_base*, %struct.rt_mutex_base** %lock.i, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock11) #10
  %tobool26 = icmp ne %struct.rt_mutex_base* %32, null
  %or.cond = select i1 %tobool25, i1 %tobool26, i1 false
  br i1 %or.cond, label %if.end28, label %cleanup

if.end28:                                         ; preds = %task_blocked_on_lock.exit
  %call29 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef nonnull %call) #10
  %wait_lock30 = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock30) #10
  %call31 = call fastcc i32 @rt_mutex_adjust_prio_chain(%struct.task_struct* noundef nonnull %call, i32 noundef %chwalk, %struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_base* noundef nonnull %32, %struct.rt_mutex_waiter* noundef %waiter, %struct.task_struct* noundef %task) #10
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock30) #10
  br label %cleanup

cleanup:                                          ; preds = %task_blocked_on_lock.exit.thread, %task_blocked_on_lock.exit, %rt_mutex_enqueue.exit, %entry, %if.end28
  %retval.0 = phi i32 [ %call31, %if.end28 ], [ -35, %entry ], [ 0, %rt_mutex_enqueue.exit ], [ 0, %task_blocked_on_lock.exit ], [ 0, %task_blocked_on_lock.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %lock) unnamed_addr #3 {
entry:
  %owner1 = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 2
  %0 = load volatile %struct.task_struct*, %struct.task_struct** %owner1, align 8
  %1 = ptrtoint %struct.task_struct* %0 to i64
  %and = and i64 %1, -2
  %2 = inttoptr i64 %and to %struct.task_struct*
  ret %struct.task_struct* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @rt_mutex_start_proxy_lock(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter, %struct.task_struct* noundef %task) local_unnamed_addr #1 section ".sched.text" {
entry:
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #10
  %call = call i32 @__rt_mutex_start_proxy_lock(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter, %struct.task_struct* noundef %task) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call fastcc void @remove_waiter(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @remove_waiter(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter) unnamed_addr #1 section ".sched.text" {
entry:
  %call = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %lock) #10
  %call1 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %lock) #10
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 102
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %pi_lock) #10
  %__rb_parent_color.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 0, i32 0
  %2 = load i64, i64* %__rb_parent_color.i, align 8
  %3 = ptrtoint %struct.rt_mutex_waiter* %waiter to i64
  %cmp.i = icmp eq i64 %2, %3
  br i1 %cmp.i, label %rt_mutex_dequeue.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 0
  %waiters.i = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 1
  call fastcc void @rb_erase_cached(%struct.rb_node* noundef %tree_entry.i, %struct.rb_root_cached* noundef %waiters.i) #12
  store i64 %3, i64* %__rb_parent_color.i, align 8
  br label %rt_mutex_dequeue.exit

rt_mutex_dequeue.exit:                            ; preds = %entry, %if.end.i
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 106
  store %struct.rt_mutex_waiter* null, %struct.rt_mutex_waiter** %pi_blocked_on, align 32
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock) #10
  %tobool.not = icmp ne %struct.task_struct* %call1, null
  %cmp = icmp eq %struct.rt_mutex_waiter* %call, %waiter
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %rt_mutex_dequeue.exit
  %pi_lock7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 102
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %pi_lock7) #10
  %pi_tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 1
  %__rb_parent_color.i46 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %pi_tree_entry.i, i64 0, i32 0
  %4 = load i64, i64* %__rb_parent_color.i46, align 8
  %5 = ptrtoint %struct.rb_node* %pi_tree_entry.i to i64
  %cmp.i47 = icmp eq i64 %4, %5
  br i1 %cmp.i47, label %rt_mutex_dequeue_pi.exit, label %if.end.i48

if.end.i48:                                       ; preds = %if.end
  %pi_waiters.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 104
  call fastcc void @rb_erase_cached(%struct.rb_node* noundef %pi_tree_entry.i, %struct.rb_root_cached* noundef %pi_waiters.i) #12
  store i64 %5, i64* %__rb_parent_color.i46, align 8
  br label %rt_mutex_dequeue_pi.exit

rt_mutex_dequeue_pi.exit:                         ; preds = %if.end, %if.end.i48
  %call8 = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #10
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %rt_mutex_dequeue_pi.exit
  %call11 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %lock) #10
  %pi_tree_entry.i49 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %call11, i64 0, i32 1
  %pi_waiters.i50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 104
  %rb_node.i.i = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %pi_waiters.i50, i64 0, i32 0, i32 0
  %6 = load %struct.rb_node*, %struct.rb_node** %rb_node.i.i, align 8
  %tobool.not2.i.i = icmp eq %struct.rb_node* %6, null
  br i1 %tobool.not2.i.i, label %rt_mutex_enqueue_pi.exit, label %while.body.i.preheader.i

while.body.i.preheader.i:                         ; preds = %if.then10
  %add.ptr9.i.i = getelementptr %struct.rb_node, %struct.rb_node* %pi_tree_entry.i49, i64 -1
  %7 = bitcast %struct.rb_node* %add.ptr9.i.i to %struct.rt_mutex_waiter*
  %prio.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %7, i64 0, i32 5
  %8 = load i32, i32* %prio.i.i.i, align 4
  %9 = getelementptr %struct.rb_node, %struct.rb_node* %pi_tree_entry.i49, i64 2, i32 0
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %16, %while.body.i.preheader.i
  %10 = phi %struct.rb_node* [ %18, %16 ], [ %6, %while.body.i.preheader.i ]
  %leftmost.0.off03.i.i = phi i1 [ %retval.0.i.i4.i, %16 ], [ true, %while.body.i.preheader.i ]
  %add.ptr610.i.i = getelementptr %struct.rb_node, %struct.rb_node* %10, i64 -1
  %11 = bitcast %struct.rb_node* %add.ptr610.i.i to %struct.rt_mutex_waiter*
  %prio1.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %11, i64 0, i32 5
  %12 = load i32, i32* %prio1.i.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %8, %12
  br i1 %cmp.i.i.i, label %__pi_waiter_less.exit.thread.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i
  %call.i.i.i = call fastcc i32 @dl_prio(i32 noundef %8) #12
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__pi_waiter_less.exit.thread7.i, label %__pi_waiter_less.exit.i

__pi_waiter_less.exit.thread7.i:                  ; preds = %if.end.i.i.i
  %rb_right.i10.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i64 0, i32 1
  br label %16

__pi_waiter_less.exit.i:                          ; preds = %if.end.i.i.i
  %13 = load i64, i64* %9, align 8
  %14 = getelementptr %struct.rb_node, %struct.rb_node* %10, i64 2, i32 0
  %15 = load i64, i64* %14, align 8
  %call5.i.i.i = call fastcc i1 @dl_time_before(i64 noundef %13, i64 noundef %15) #12
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i64 0, i32 1
  br i1 %call5.i.i.i, label %__pi_waiter_less.exit.thread.i, label %16

__pi_waiter_less.exit.thread.i:                   ; preds = %__pi_waiter_less.exit.i, %while.body.i.i
  %rb_left.i6.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i64 0, i32 2
  br label %16

16:                                               ; preds = %__pi_waiter_less.exit.thread.i, %__pi_waiter_less.exit.i, %__pi_waiter_less.exit.thread7.i
  %retval.0.i.i4.i = phi i1 [ %leftmost.0.off03.i.i, %__pi_waiter_less.exit.thread.i ], [ false, %__pi_waiter_less.exit.i ], [ false, %__pi_waiter_less.exit.thread7.i ]
  %17 = phi %struct.rb_node** [ %rb_left.i6.i, %__pi_waiter_less.exit.thread.i ], [ %rb_right.i.i, %__pi_waiter_less.exit.i ], [ %rb_right.i10.i, %__pi_waiter_less.exit.thread7.i ]
  %18 = load %struct.rb_node*, %struct.rb_node** %17, align 8
  %tobool.not.i.i = icmp eq %struct.rb_node* %18, null
  br i1 %tobool.not.i.i, label %rt_mutex_enqueue_pi.exit, label %while.body.i.i

rt_mutex_enqueue_pi.exit:                         ; preds = %16, %if.then10
  %link.0.lcssa.i.i = phi %struct.rb_node** [ %rb_node.i.i, %if.then10 ], [ %17, %16 ]
  %parent.0.lcssa.i.i = phi %struct.rb_node* [ null, %if.then10 ], [ %10, %16 ]
  %leftmost.0.off0.lcssa.i.i = phi i1 [ true, %if.then10 ], [ %retval.0.i.i4.i, %16 ]
  call fastcc void @rb_link_node(%struct.rb_node* noundef %pi_tree_entry.i49, %struct.rb_node* noundef %parent.0.lcssa.i.i, %struct.rb_node** noundef %link.0.lcssa.i.i) #12
  call fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %pi_tree_entry.i49, %struct.rb_root_cached* noundef %pi_waiters.i50, i1 noundef %leftmost.0.off0.lcssa.i.i) #12
  br label %if.end12

if.end12:                                         ; preds = %rt_mutex_enqueue_pi.exit, %rt_mutex_dequeue_pi.exit
  %call.i = call fastcc i32 @task_has_pi_waiters(%struct.task_struct* noundef nonnull %call1) #12
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %rt_mutex_adjust_prio.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end12
  %call1.i = call fastcc %struct.rt_mutex_waiter* @task_top_pi_waiter(%struct.task_struct* noundef nonnull %call1) #12
  %task.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %call1.i, i64 0, i32 2
  %19 = load %struct.task_struct*, %struct.task_struct** %task.i, align 8
  br label %rt_mutex_adjust_prio.exit

rt_mutex_adjust_prio.exit:                        ; preds = %if.end12, %if.then.i
  %pi_task.0.i = phi %struct.task_struct* [ %19, %if.then.i ], [ null, %if.end12 ]
  call void @rt_mutex_setprio(%struct.task_struct* noundef nonnull %call1, %struct.task_struct* noundef %pi_task.0.i) #12
  %pi_blocked_on.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 106
  %20 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %pi_blocked_on.i, align 32
  %tobool.not.i52 = icmp eq %struct.rt_mutex_waiter* %20, null
  br i1 %tobool.not.i52, label %task_blocked_on_lock.exit.thread, label %task_blocked_on_lock.exit

task_blocked_on_lock.exit.thread:                 ; preds = %rt_mutex_adjust_prio.exit
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock7) #10
  br label %cleanup

task_blocked_on_lock.exit:                        ; preds = %rt_mutex_adjust_prio.exit
  %lock.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %20, i64 0, i32 3
  %21 = load %struct.rt_mutex_base*, %struct.rt_mutex_base** %lock.i, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock7) #10
  %tobool15.not = icmp eq %struct.rt_mutex_base* %21, null
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %task_blocked_on_lock.exit
  %call18 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef nonnull %call1) #10
  %wait_lock19 = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock19) #10
  %call21 = call fastcc i32 @rt_mutex_adjust_prio_chain(%struct.task_struct* noundef nonnull %call1, i32 noundef 0, %struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_base* noundef nonnull %21, %struct.rt_mutex_waiter* noundef null, %struct.task_struct* noundef %1) #10
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock19) #10
  br label %cleanup

cleanup:                                          ; preds = %task_blocked_on_lock.exit.thread, %task_blocked_on_lock.exit, %rt_mutex_dequeue.exit, %if.end17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #10
  call fastcc void @arch_local_irq_enable() #10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @rt_mutex_wait_proxy_lock(%struct.rt_mutex_base* noundef %lock, %struct.hrtimer_sleeper* noundef %to, %struct.rt_mutex_waiter* noundef %waiter) local_unnamed_addr #1 section ".sched.text" {
entry:
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #10
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  %call16 = call fastcc i32 @rt_mutex_slowlock_block(%struct.rt_mutex_base* noundef %lock, i32 noundef 1, %struct.hrtimer_sleeper* noundef %to, %struct.rt_mutex_waiter* noundef %waiter) #10
  %owner1.i = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 2
  %2 = bitcast %struct.task_struct** %owner1.i to i64*
  %call.i = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #12
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %fixup_rt_mutex_waiters.exit

do.end.i:                                         ; preds = %entry
  %3 = load volatile i64, i64* %2, align 8
  %and.i = and i64 %3, 1
  %tobool2.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool2.not.i, label %fixup_rt_mutex_waiters.exit, label %do.body8.i

do.body8.i:                                       ; preds = %do.end.i
  %and9.i = and i64 %3, -2
  store volatile i64 %and9.i, i64* %2, align 8
  br label %fixup_rt_mutex_waiters.exit

fixup_rt_mutex_waiters.exit:                      ; preds = %entry, %do.end.i, %do.body8.i
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #10
  ret i32 %call16
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rt_mutex_slowlock_block(%struct.rt_mutex_base* noundef %lock, i32 noundef %state, %struct.hrtimer_sleeper* noundef readonly %timeout, %struct.rt_mutex_waiter* noundef %waiter) unnamed_addr #1 section ".sched.text" {
entry:
  %task = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %timeout, i64 0, i32 1
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call17 = call fastcc i32 @try_to_take_rt_mutex(%struct.rt_mutex_base* noundef %lock, %struct.task_struct* noundef %1, %struct.rt_mutex_waiter* noundef %waiter) #10
  %tobool.not8 = icmp eq i32 %call17, 0
  br i1 %tobool.not8, label %if.end.lr.ph, label %do.body47

if.end.lr.ph:                                     ; preds = %entry
  %tobool2.not = icmp eq %struct.hrtimer_sleeper* %timeout, null
  %wait_lock2 = getelementptr %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 0
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %if.end18
  br i1 %tobool2.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool3.not = icmp eq %struct.task_struct* %2, null
  br i1 %tobool3.not, label %do.body47, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %call7 = call fastcc i32 @signal_pending_state(i32 noundef %state, %struct.task_struct* noundef %1) #10
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.body47

if.end10:                                         ; preds = %if.end5
  %call11 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %lock) #10
  %cmp = icmp eq %struct.rt_mutex_waiter* %call11, %waiter
  br i1 %cmp, label %if.end14, label %if.end14.thread

if.end14.thread:                                  ; preds = %if.end10
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock2) #10
  br label %if.then17

if.end14:                                         ; preds = %if.end10
  %call13 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %lock) #10
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock2) #10
  %tobool15.not = icmp eq %struct.task_struct* %call13, null
  br i1 %tobool15.not, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %call16 = call fastcc i1 @rtmutex_spin_on_owner(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter, %struct.task_struct* noundef nonnull %call13) #10
  br i1 %call16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14.thread, %lor.lhs.false, %if.end14
  call void @schedule() #12
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %lor.lhs.false
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock2) #10
  store volatile i32 %state, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %call1 = call fastcc i32 @try_to_take_rt_mutex(%struct.rt_mutex_base* noundef %lock, %struct.task_struct* noundef %1, %struct.rt_mutex_waiter* noundef %waiter) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.body47

do.body47:                                        ; preds = %if.end18, %land.lhs.true, %if.end5, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ -4, %if.end5 ], [ -110, %land.lhs.true ], [ 0, %if.end18 ]
  %__state49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 0, i32* %__state49, align 16
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @rt_mutex_cleanup_proxy_lock(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter) local_unnamed_addr #1 section ".sched.text" {
entry:
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #10
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @try_to_take_rt_mutex(%struct.rt_mutex_base* noundef %lock, %struct.task_struct* noundef %1, %struct.rt_mutex_waiter* noundef %waiter) #10
  %call2 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %lock) #10
  %cmp.not = icmp eq %struct.task_struct* %call2, %1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @remove_waiter(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %owner1.i = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 2
  %2 = bitcast %struct.task_struct** %owner1.i to i64*
  %call.i = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #12
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %fixup_rt_mutex_waiters.exit

do.end.i:                                         ; preds = %if.end
  %3 = load volatile i64, i64* %2, align 8
  %and.i = and i64 %3, 1
  %tobool2.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool2.not.i, label %fixup_rt_mutex_waiters.exit, label %do.body8.i

do.body8.i:                                       ; preds = %do.end.i
  %and9.i = and i64 %3, -2
  store volatile i64 %and9.i, i64* %2, align 8
  br label %fixup_rt_mutex_waiters.exit

fixup_rt_mutex_waiters.exit:                      ; preds = %if.end, %do.end.i, %do.body8.i
  %4 = xor i1 %cmp.not, true
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #10
  ret i1 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rt_mutex_adjust_pi(%struct.task_struct* noundef %task) local_unnamed_addr #1 section ".sched.text" {
entry:
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 102
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #10
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 106
  %0 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %pi_blocked_on, align 32
  %tobool.not = icmp eq %struct.rt_mutex_waiter* %0, null
  br i1 %tobool.not, label %do.body6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %prio1.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 15
  %1 = load i32, i32* %prio1.i, align 4
  %call.i = call fastcc i32 @rt_prio(i32 noundef %1) #12
  %tobool.not.i = icmp eq i32 %call.i, 0
  %..i = select i1 %tobool.not.i, i32 120, i32 %1
  %deadline3 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 22, i32 7
  %2 = load i64, i64* %deadline3, align 8
  %prio.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %0, i64 0, i32 5
  %3 = load i32, i32* %prio.i, align 4
  %cmp.not.i = icmp eq i32 %3, %..i
  br i1 %cmp.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %lor.lhs.false
  %call.i43 = call fastcc i32 @dl_prio(i32 noundef %..i) #12
  %tobool.not.i44 = icmp eq i32 %call.i43, 0
  br i1 %tobool.not.i44, label %do.body6, label %rt_mutex_waiter_equal.exit

rt_mutex_waiter_equal.exit:                       ; preds = %if.end.i
  %deadline.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %0, i64 0, i32 6
  %4 = load i64, i64* %deadline.i, align 8
  %cmp5.i.not = icmp eq i64 %4, %2
  br i1 %cmp5.i.not, label %do.body6, label %if.end

do.body6:                                         ; preds = %if.end.i, %entry, %rt_mutex_waiter_equal.exit
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %rt_mutex_waiter_equal.exit
  %lock = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %0, i64 0, i32 3
  %5 = load %struct.rt_mutex_base*, %struct.rt_mutex_base** %lock, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call) #10
  %call24 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef %task) #10
  %call25 = call fastcc i32 @rt_mutex_adjust_prio_chain(%struct.task_struct* noundef %task, i32 noundef 0, %struct.rt_mutex_base* noundef null, %struct.rt_mutex_base* noundef %5, %struct.rt_mutex_waiter* noundef null, %struct.task_struct* noundef %task) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef returned %t) unnamed_addr #1 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #10
  ret %struct.task_struct* %t
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rt_mutex_adjust_prio_chain(%struct.task_struct* noundef %task, i32 noundef %chwalk, %struct.rt_mutex_base* noundef %orig_lock, %struct.rt_mutex_base* noundef readnone %next_lock, %struct.rt_mutex_waiter* noundef readnone %orig_waiter, %struct.task_struct* noundef %top_task) unnamed_addr #1 section ".sched.text" {
entry:
  %cmp.i = icmp eq i32 %chwalk, 1
  %0 = load i32, i32* @max_lock_depth, align 4
  %cmp349 = icmp slt i32 %0, 1
  br i1 %cmp349, label %if.then, label %retry.preheader.lr.ph

retry.preheader.lr.ph:                            ; preds = %entry
  %tobool8.not = icmp eq %struct.rt_mutex_waiter* %orig_waiter, null
  br label %retry.preheader

retry.preheader:                                  ; preds = %retry.preheader.lr.ph, %again.backedge
  %inc354 = phi i32 [ 1, %retry.preheader.lr.ph ], [ %inc, %again.backedge ]
  %requeue.0.off0353 = phi i1 [ true, %retry.preheader.lr.ph ], [ %requeue.2.off0.mux299, %again.backedge ]
  %top_waiter.0352 = phi %struct.rt_mutex_waiter* [ %orig_waiter, %retry.preheader.lr.ph ], [ %top_waiter.0.be, %again.backedge ]
  %task.addr.0351 = phi %struct.task_struct* [ %task, %retry.preheader.lr.ph ], [ %task.addr.0.be, %again.backedge ]
  %next_lock.addr.0350 = phi %struct.rt_mutex_base* [ %next_lock, %retry.preheader.lr.ph ], [ %next_lock.addr.0.be, %again.backedge ]
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task.addr.0351, i64 0, i32 102
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %pi_lock) #10
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task.addr.0351, i64 0, i32 106
  %1 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %pi_blocked_on, align 32
  %tobool.not334 = icmp eq %struct.rt_mutex_waiter* %1, null
  br i1 %tobool.not334, label %out_unlock_pi, label %if.end7.lr.ph

if.end7.lr.ph:                                    ; preds = %retry.preheader
  %tobool17.not = icmp eq %struct.rt_mutex_waiter* %top_waiter.0352, null
  %prio1.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task.addr.0351, i64 0, i32 15
  %deadline34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task.addr.0351, i64 0, i32 22, i32 7
  br label %if.end7

if.then:                                          ; preds = %again.backedge, %entry
  %task.addr.0.lcssa = phi %struct.task_struct* [ %task, %entry ], [ %task.addr.0.be, %again.backedge ]
  %.lcssa321 = phi i32 [ %0, %entry ], [ %13, %again.backedge ]
  %2 = load i32, i32* @rt_mutex_adjust_prio_chain.prev_max, align 4
  %cmp1.not = icmp eq i32 %2, %.lcssa321
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 %.lcssa321, i32* @rt_mutex_adjust_prio_chain.prev_max, align 4
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %top_task, i64 0, i32 81, i64 0
  %call3 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %top_task) #10
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.lcssa321, i8* noundef %arraydecay, i32 noundef %call3) #14
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  call fastcc void @put_task_struct(%struct.task_struct* noundef %task.addr.0.lcssa) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end7.lr.ph, %if.then46
  %3 = phi %struct.rt_mutex_waiter* [ %1, %if.end7.lr.ph ], [ %10, %if.then46 ]
  %requeue.1.off0335 = phi i1 [ %requeue.0.off0353, %if.end7.lr.ph ], [ %requeue.2.off0.mux299, %if.then46 ]
  br i1 %tobool8.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %call9 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %orig_lock) #10
  %tobool10.not = icmp eq %struct.task_struct* %call9, null
  br i1 %tobool10.not, label %out_unlock_pi, label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %lock13 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %3, i64 0, i32 3
  %4 = load %struct.rt_mutex_base*, %struct.rt_mutex_base** %lock13, align 8
  %cmp14.not = icmp eq %struct.rt_mutex_base* %next_lock.addr.0350, %4
  br i1 %cmp14.not, label %if.end16, label %out_unlock_pi

if.end16:                                         ; preds = %if.end12
  br i1 %tobool17.not, label %if.end30, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call19 = call fastcc i32 @task_has_pi_waiters(%struct.task_struct* noundef %task.addr.0351) #10
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %out_unlock_pi, label %if.end22

if.end22:                                         ; preds = %if.then18
  %call23 = call fastcc %struct.rt_mutex_waiter* @task_top_pi_waiter(%struct.task_struct* noundef %task.addr.0351) #10
  %cmp24.not = icmp eq %struct.rt_mutex_waiter* %top_waiter.0352, %call23
  %brmerge = or i1 %cmp.i, %cmp24.not
  %requeue.1.off0.mux = select i1 %cmp24.not, i1 %requeue.1.off0335, i1 false
  br i1 %brmerge, label %if.end30, label %out_unlock_pi

if.end30:                                         ; preds = %if.end22, %if.end16
  %requeue.2.off0 = phi i1 [ %requeue.1.off0.mux, %if.end22 ], [ %requeue.1.off0335, %if.end16 ]
  %5 = load i32, i32* %prio1.i, align 4
  %call.i = call fastcc i32 @rt_prio(i32 noundef %5) #12
  %tobool.not.i = icmp eq i32 %call.i, 0
  %..i = select i1 %tobool.not.i, i32 120, i32 %5
  %6 = load i64, i64* %deadline34, align 8
  %prio.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %3, i64 0, i32 5
  %7 = load i32, i32* %prio.i, align 4
  %cmp.not.i = icmp eq i32 %7, %..i
  br i1 %cmp.not.i, label %if.end.i, label %if.end42

if.end.i:                                         ; preds = %if.end30
  %call.i208 = call fastcc i32 @dl_prio(i32 noundef %..i) #12
  %tobool.not.i209 = icmp eq i32 %call.i208, 0
  br i1 %tobool.not.i209, label %rt_mutex_waiter_equal.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %deadline.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %3, i64 0, i32 6
  %8 = load i64, i64* %deadline.i, align 8
  %cmp5.i = icmp eq i64 %8, %6
  %conv.i = zext i1 %cmp5.i to i32
  br label %rt_mutex_waiter_equal.exit

rt_mutex_waiter_equal.exit:                       ; preds = %if.end.i, %if.then3.i
  %retval.0.i = phi i32 [ %conv.i, %if.then3.i ], [ 1, %if.end.i ]
  %tobool36.not = icmp eq i32 %retval.0.i, 0
  %brmerge206 = or i1 %cmp.i, %tobool36.not
  %requeue.2.off0.mux = select i1 %tobool36.not, i1 %requeue.2.off0, i1 false
  br i1 %brmerge206, label %if.end42, label %out_unlock_pi

if.end42:                                         ; preds = %if.end30, %rt_mutex_waiter_equal.exit
  %requeue.2.off0.mux299 = phi i1 [ %requeue.2.off0.mux, %rt_mutex_waiter_equal.exit ], [ %requeue.2.off0, %if.end30 ]
  %9 = load %struct.rt_mutex_base*, %struct.rt_mutex_base** %lock13, align 8
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %9, i64 0, i32 0
  %call44 = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %wait_lock) #10
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end42
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %pi_lock) #10
  call fastcc void @cpu_relax() #10
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %pi_lock) #10
  %10 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %pi_blocked_on, align 32
  %tobool.not = icmp eq %struct.rt_mutex_waiter* %10, null
  br i1 %tobool.not, label %out_unlock_pi, label %if.end7

if.end48:                                         ; preds = %if.end42
  %prio.i.le = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %3, i64 0, i32 5
  %cmp49 = icmp eq %struct.rt_mutex_base* %9, %orig_lock
  br i1 %cmp49, label %if.then52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end48
  %call50 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %9) #10
  %cmp51 = icmp eq %struct.task_struct* %call50, %top_task
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %lor.lhs.false, %if.end48
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %wait_lock) #10
  br label %out_unlock_pi

if.end54:                                         ; preds = %lor.lhs.false
  br i1 %requeue.2.off0.mux299, label %if.end73, label %if.then56

if.then56:                                        ; preds = %if.end54
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock) #10
  call fastcc void @put_task_struct(%struct.task_struct* noundef %task.addr.0351) #10
  %call58 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %9) #10
  %tobool59.not = icmp eq %struct.task_struct* %call58, null
  br i1 %tobool59.not, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.then56
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #10
  br label %cleanup

if.end62:                                         ; preds = %if.then56
  %call63 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %9) #10
  %call64 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef %call63) #10
  %pi_lock65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call63, i64 0, i32 102
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %pi_lock65) #10
  %pi_blocked_on.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call63, i64 0, i32 106
  %11 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %pi_blocked_on.i, align 32
  %tobool.not.i210 = icmp eq %struct.rt_mutex_waiter* %11, null
  br i1 %tobool.not.i210, label %task_blocked_on_lock.exit, label %cond.true.i

cond.true.i:                                      ; preds = %if.end62
  %lock.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %11, i64 0, i32 3
  %12 = load %struct.rt_mutex_base*, %struct.rt_mutex_base** %lock.i, align 8
  br label %task_blocked_on_lock.exit

task_blocked_on_lock.exit:                        ; preds = %if.end62, %cond.true.i
  %cond.i = phi %struct.rt_mutex_base* [ %12, %cond.true.i ], [ null, %if.end62 ]
  %call67 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %9) #10
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock65) #10
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #10
  %tobool70.not = icmp eq %struct.rt_mutex_base* %cond.i, null
  br i1 %tobool70.not, label %out_put_task, label %again.backedge

again.backedge:                                   ; preds = %task_blocked_on_lock.exit, %if.end106
  %next_lock.addr.0.be = phi %struct.rt_mutex_base* [ %cond.i, %task_blocked_on_lock.exit ], [ %cond.i292, %if.end106 ]
  %task.addr.0.be = phi %struct.task_struct* [ %call63, %task_blocked_on_lock.exit ], [ %call87, %if.end106 ]
  %top_waiter.0.be = phi %struct.rt_mutex_waiter* [ %call67, %task_blocked_on_lock.exit ], [ %call101, %if.end106 ]
  %inc = add i32 %inc354, 1
  %13 = load i32, i32* @max_lock_depth, align 4
  %cmp = icmp sgt i32 %inc, %13
  br i1 %cmp, label %if.then, label %retry.preheader

if.end73:                                         ; preds = %if.end54
  %call74 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %9) #10
  %__rb_parent_color.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %3, i64 0, i32 0, i32 0
  %14 = load i64, i64* %__rb_parent_color.i, align 8
  %15 = ptrtoint %struct.rt_mutex_waiter* %3 to i64
  %cmp.i211 = icmp eq i64 %14, %15
  br i1 %cmp.i211, label %rt_mutex_dequeue.exit, label %if.end.i212

if.end.i212:                                      ; preds = %if.end73
  %tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %3, i64 0, i32 0
  %waiters.i = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %9, i64 0, i32 1
  call fastcc void @rb_erase_cached(%struct.rb_node* noundef %tree_entry.i, %struct.rb_root_cached* noundef %waiters.i) #12
  store i64 %15, i64* %__rb_parent_color.i, align 8
  br label %rt_mutex_dequeue.exit

rt_mutex_dequeue.exit:                            ; preds = %if.end73, %if.end.i212
  %16 = load i32, i32* %prio1.i, align 4
  %call.i.i = call fastcc i32 @rt_prio(i32 noundef %16) #12
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 120, i32 %16
  store i32 %..i.i, i32* %prio.i.le, align 4
  %17 = load i64, i64* %deadline34, align 8
  %deadline1.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %3, i64 0, i32 6
  store i64 %17, i64* %deadline1.i, align 8
  %tree_entry.i215 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %3, i64 0, i32 0
  %waiters.i216 = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %9, i64 0, i32 1
  %rb_node.i.i = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %waiters.i216, i64 0, i32 0, i32 0
  %18 = load %struct.rb_node*, %struct.rb_node** %rb_node.i.i, align 8
  %tobool.not2.i.i = icmp eq %struct.rb_node* %18, null
  br i1 %tobool.not2.i.i, label %rt_mutex_enqueue.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %rt_mutex_dequeue.exit, %24
  %19 = phi %struct.rb_node* [ %26, %24 ], [ %18, %rt_mutex_dequeue.exit ]
  %leftmost.0.off03.i.i = phi i1 [ %retval.0.i.i4.i, %24 ], [ true, %rt_mutex_dequeue.exit ]
  %20 = bitcast %struct.rb_node* %19 to %struct.rt_mutex_waiter*
  %prio1.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %20, i64 0, i32 5
  %21 = load i32, i32* %prio1.i.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %..i.i, %21
  br i1 %cmp.i.i.i, label %__waiter_less.exit.thread.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i
  %call.i.i.i = call fastcc i32 @dl_prio(i32 noundef %..i.i) #12
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__waiter_less.exit.thread7.i, label %__waiter_less.exit.i

__waiter_less.exit.thread7.i:                     ; preds = %if.end.i.i.i
  %rb_right.i10.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i64 0, i32 1
  br label %24

__waiter_less.exit.i:                             ; preds = %if.end.i.i.i
  %22 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i64 3, i32 0
  %23 = load i64, i64* %22, align 8
  %call5.i.i.i = call fastcc i1 @dl_time_before(i64 noundef %17, i64 noundef %23) #12
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i64 0, i32 1
  br i1 %call5.i.i.i, label %__waiter_less.exit.thread.i, label %24

__waiter_less.exit.thread.i:                      ; preds = %__waiter_less.exit.i, %while.body.i.i
  %rb_left.i6.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i64 0, i32 2
  br label %24

24:                                               ; preds = %__waiter_less.exit.thread.i, %__waiter_less.exit.i, %__waiter_less.exit.thread7.i
  %retval.0.i.i4.i = phi i1 [ %leftmost.0.off03.i.i, %__waiter_less.exit.thread.i ], [ false, %__waiter_less.exit.i ], [ false, %__waiter_less.exit.thread7.i ]
  %25 = phi %struct.rb_node** [ %rb_left.i6.i, %__waiter_less.exit.thread.i ], [ %rb_right.i.i, %__waiter_less.exit.i ], [ %rb_right.i10.i, %__waiter_less.exit.thread7.i ]
  %26 = load %struct.rb_node*, %struct.rb_node** %25, align 8
  %tobool.not.i.i217 = icmp eq %struct.rb_node* %26, null
  br i1 %tobool.not.i.i217, label %rt_mutex_enqueue.exit, label %while.body.i.i

rt_mutex_enqueue.exit:                            ; preds = %24, %rt_mutex_dequeue.exit
  %link.0.lcssa.i.i = phi %struct.rb_node** [ %rb_node.i.i, %rt_mutex_dequeue.exit ], [ %25, %24 ]
  %parent.0.lcssa.i.i = phi %struct.rb_node* [ null, %rt_mutex_dequeue.exit ], [ %19, %24 ]
  %leftmost.0.off0.lcssa.i.i = phi i1 [ true, %rt_mutex_dequeue.exit ], [ %retval.0.i.i4.i, %24 ]
  call fastcc void @rb_link_node(%struct.rb_node* noundef %tree_entry.i215, %struct.rb_node* noundef %parent.0.lcssa.i.i, %struct.rb_node** noundef %link.0.lcssa.i.i) #12
  call fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %tree_entry.i215, %struct.rb_root_cached* noundef %waiters.i216, i1 noundef %leftmost.0.off0.lcssa.i.i) #12
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock) #10
  call fastcc void @put_task_struct(%struct.task_struct* noundef %task.addr.0351) #10
  %call76 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %9) #10
  %tobool77.not = icmp eq %struct.task_struct* %call76, null
  br i1 %tobool77.not, label %if.then78, label %if.end86

if.then78:                                        ; preds = %rt_mutex_enqueue.exit
  %call79 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %9) #10
  %cmp80.not = icmp eq %struct.rt_mutex_waiter* %call74, %call79
  br i1 %cmp80.not, label %if.end84, label %if.then81

if.then81:                                        ; preds = %if.then78
  %task82 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %3, i64 0, i32 2
  %27 = load %struct.task_struct*, %struct.task_struct** %task82, align 8
  %wake_state = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %3, i64 0, i32 4
  %28 = load i32, i32* %wake_state, align 8
  %call83 = call i32 @wake_up_state(%struct.task_struct* noundef %27, i32 noundef %28) #12
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.then78
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #10
  br label %cleanup

if.end86:                                         ; preds = %rt_mutex_enqueue.exit
  %call87 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %9) #10
  %call88 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef %call87) #10
  %pi_lock89 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call87, i64 0, i32 102
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %pi_lock89) #10
  %call90 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %9) #10
  %cmp91 = icmp eq %struct.rt_mutex_waiter* %3, %call90
  br i1 %cmp91, label %if.then92, label %if.else93

if.then92:                                        ; preds = %if.end86
  %pi_tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %call74, i64 0, i32 1
  %__rb_parent_color.i218 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %pi_tree_entry.i, i64 0, i32 0
  %29 = load i64, i64* %__rb_parent_color.i218, align 8
  %30 = ptrtoint %struct.rb_node* %pi_tree_entry.i to i64
  %cmp.i219 = icmp eq i64 %29, %30
  br i1 %cmp.i219, label %rt_mutex_dequeue_pi.exit, label %if.end.i220

if.end.i220:                                      ; preds = %if.then92
  %pi_waiters.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call87, i64 0, i32 104
  call fastcc void @rb_erase_cached(%struct.rb_node* noundef %pi_tree_entry.i, %struct.rb_root_cached* noundef %pi_waiters.i) #12
  store i64 %30, i64* %__rb_parent_color.i218, align 8
  br label %rt_mutex_dequeue_pi.exit

rt_mutex_dequeue_pi.exit:                         ; preds = %if.then92, %if.end.i220
  %pi_tree_entry.i221 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %3, i64 0, i32 1
  %pi_waiters.i222 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call87, i64 0, i32 104
  %rb_node.i.i223 = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %pi_waiters.i222, i64 0, i32 0, i32 0
  %31 = load %struct.rb_node*, %struct.rb_node** %rb_node.i.i223, align 8
  %tobool.not2.i.i224 = icmp eq %struct.rb_node* %31, null
  br i1 %tobool.not2.i.i224, label %rt_mutex_enqueue_pi.exit, label %while.body.i.preheader.i226

while.body.i.preheader.i226:                      ; preds = %rt_mutex_dequeue_pi.exit
  %add.ptr9.i.i = getelementptr %struct.rb_node, %struct.rb_node* %pi_tree_entry.i221, i64 -1
  %32 = bitcast %struct.rb_node* %add.ptr9.i.i to %struct.rt_mutex_waiter*
  %prio.i.i.i225 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %32, i64 0, i32 5
  %33 = load i32, i32* %prio.i.i.i225, align 4
  %34 = getelementptr %struct.rb_node, %struct.rb_node* %pi_tree_entry.i221, i64 2, i32 0
  br label %while.body.i.i230

while.body.i.i230:                                ; preds = %41, %while.body.i.preheader.i226
  %35 = phi %struct.rb_node* [ %43, %41 ], [ %31, %while.body.i.preheader.i226 ]
  %leftmost.0.off03.i.i227 = phi i1 [ %retval.0.i.i4.i238, %41 ], [ true, %while.body.i.preheader.i226 ]
  %add.ptr610.i.i = getelementptr %struct.rb_node, %struct.rb_node* %35, i64 -1
  %36 = bitcast %struct.rb_node* %add.ptr610.i.i to %struct.rt_mutex_waiter*
  %prio1.i.i.i228 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %36, i64 0, i32 5
  %37 = load i32, i32* %prio1.i.i.i228, align 4
  %cmp.i.i.i229 = icmp slt i32 %33, %37
  br i1 %cmp.i.i.i229, label %__pi_waiter_less.exit.thread.i, label %if.end.i.i.i233

if.end.i.i.i233:                                  ; preds = %while.body.i.i230
  %call.i.i.i231 = call fastcc i32 @dl_prio(i32 noundef %33) #12
  %tobool.not.i.i.i232 = icmp eq i32 %call.i.i.i231, 0
  br i1 %tobool.not.i.i.i232, label %__pi_waiter_less.exit.thread7.i, label %__pi_waiter_less.exit.i

__pi_waiter_less.exit.thread7.i:                  ; preds = %if.end.i.i.i233
  %rb_right.i10.i234 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %35, i64 0, i32 1
  br label %41

__pi_waiter_less.exit.i:                          ; preds = %if.end.i.i.i233
  %38 = load i64, i64* %34, align 8
  %39 = getelementptr %struct.rb_node, %struct.rb_node* %35, i64 2, i32 0
  %40 = load i64, i64* %39, align 8
  %call5.i.i.i235 = call fastcc i1 @dl_time_before(i64 noundef %38, i64 noundef %40) #12
  %rb_right.i.i236 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %35, i64 0, i32 1
  br i1 %call5.i.i.i235, label %__pi_waiter_less.exit.thread.i, label %41

__pi_waiter_less.exit.thread.i:                   ; preds = %__pi_waiter_less.exit.i, %while.body.i.i230
  %rb_left.i6.i237 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %35, i64 0, i32 2
  br label %41

41:                                               ; preds = %__pi_waiter_less.exit.thread.i, %__pi_waiter_less.exit.i, %__pi_waiter_less.exit.thread7.i
  %retval.0.i.i4.i238 = phi i1 [ %leftmost.0.off03.i.i227, %__pi_waiter_less.exit.thread.i ], [ false, %__pi_waiter_less.exit.i ], [ false, %__pi_waiter_less.exit.thread7.i ]
  %42 = phi %struct.rb_node** [ %rb_left.i6.i237, %__pi_waiter_less.exit.thread.i ], [ %rb_right.i.i236, %__pi_waiter_less.exit.i ], [ %rb_right.i10.i234, %__pi_waiter_less.exit.thread7.i ]
  %43 = load %struct.rb_node*, %struct.rb_node** %42, align 8
  %tobool.not.i.i239 = icmp eq %struct.rb_node* %43, null
  br i1 %tobool.not.i.i239, label %rt_mutex_enqueue_pi.exit, label %while.body.i.i230

rt_mutex_enqueue_pi.exit:                         ; preds = %41, %rt_mutex_dequeue_pi.exit
  %link.0.lcssa.i.i240 = phi %struct.rb_node** [ %rb_node.i.i223, %rt_mutex_dequeue_pi.exit ], [ %42, %41 ]
  %parent.0.lcssa.i.i241 = phi %struct.rb_node* [ null, %rt_mutex_dequeue_pi.exit ], [ %35, %41 ]
  %leftmost.0.off0.lcssa.i.i242 = phi i1 [ true, %rt_mutex_dequeue_pi.exit ], [ %retval.0.i.i4.i238, %41 ]
  call fastcc void @rb_link_node(%struct.rb_node* noundef %pi_tree_entry.i221, %struct.rb_node* noundef %parent.0.lcssa.i.i241, %struct.rb_node** noundef %link.0.lcssa.i.i240) #12
  call fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %pi_tree_entry.i221, %struct.rb_root_cached* noundef %pi_waiters.i222, i1 noundef %leftmost.0.off0.lcssa.i.i242) #12
  %call.i243 = call fastcc i32 @task_has_pi_waiters(%struct.task_struct* noundef %call87) #12
  %tobool.not.i244 = icmp eq i32 %call.i243, 0
  br i1 %tobool.not.i244, label %if.end99.sink.split, label %if.end99.sink.split.sink.split

if.else93:                                        ; preds = %if.end86
  %cmp94 = icmp eq %struct.rt_mutex_waiter* %call74, %3
  br i1 %cmp94, label %if.then95, label %if.end99

if.then95:                                        ; preds = %if.else93
  %pi_tree_entry.i246 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %3, i64 0, i32 1
  %__rb_parent_color.i247 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %pi_tree_entry.i246, i64 0, i32 0
  %44 = load i64, i64* %__rb_parent_color.i247, align 8
  %45 = ptrtoint %struct.rb_node* %pi_tree_entry.i246 to i64
  %cmp.i248 = icmp eq i64 %44, %45
  br i1 %cmp.i248, label %rt_mutex_dequeue_pi.exit251, label %if.end.i250

if.end.i250:                                      ; preds = %if.then95
  %pi_waiters.i249 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call87, i64 0, i32 104
  call fastcc void @rb_erase_cached(%struct.rb_node* noundef %pi_tree_entry.i246, %struct.rb_root_cached* noundef %pi_waiters.i249) #12
  store i64 %45, i64* %__rb_parent_color.i247, align 8
  br label %rt_mutex_dequeue_pi.exit251

rt_mutex_dequeue_pi.exit251:                      ; preds = %if.then95, %if.end.i250
  %call96 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %9) #10
  %pi_tree_entry.i252 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %call96, i64 0, i32 1
  %pi_waiters.i253 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call87, i64 0, i32 104
  %rb_node.i.i254 = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %pi_waiters.i253, i64 0, i32 0, i32 0
  %46 = load %struct.rb_node*, %struct.rb_node** %rb_node.i.i254, align 8
  %tobool.not2.i.i255 = icmp eq %struct.rb_node* %46, null
  br i1 %tobool.not2.i.i255, label %rt_mutex_enqueue_pi.exit279, label %while.body.i.preheader.i258

while.body.i.preheader.i258:                      ; preds = %rt_mutex_dequeue_pi.exit251
  %add.ptr9.i.i256 = getelementptr %struct.rb_node, %struct.rb_node* %pi_tree_entry.i252, i64 -1
  %47 = bitcast %struct.rb_node* %add.ptr9.i.i256 to %struct.rt_mutex_waiter*
  %prio.i.i.i257 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %47, i64 0, i32 5
  %48 = load i32, i32* %prio.i.i.i257, align 4
  %49 = getelementptr %struct.rb_node, %struct.rb_node* %pi_tree_entry.i252, i64 2, i32 0
  br label %while.body.i.i263

while.body.i.i263:                                ; preds = %56, %while.body.i.preheader.i258
  %50 = phi %struct.rb_node* [ %58, %56 ], [ %46, %while.body.i.preheader.i258 ]
  %leftmost.0.off03.i.i259 = phi i1 [ %retval.0.i.i4.i274, %56 ], [ true, %while.body.i.preheader.i258 ]
  %add.ptr610.i.i260 = getelementptr %struct.rb_node, %struct.rb_node* %50, i64 -1
  %51 = bitcast %struct.rb_node* %add.ptr610.i.i260 to %struct.rt_mutex_waiter*
  %prio1.i.i.i261 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %51, i64 0, i32 5
  %52 = load i32, i32* %prio1.i.i.i261, align 4
  %cmp.i.i.i262 = icmp slt i32 %48, %52
  br i1 %cmp.i.i.i262, label %__pi_waiter_less.exit.thread.i273, label %if.end.i.i.i266

if.end.i.i.i266:                                  ; preds = %while.body.i.i263
  %call.i.i.i264 = call fastcc i32 @dl_prio(i32 noundef %48) #12
  %tobool.not.i.i.i265 = icmp eq i32 %call.i.i.i264, 0
  br i1 %tobool.not.i.i.i265, label %__pi_waiter_less.exit.thread7.i268, label %__pi_waiter_less.exit.i271

__pi_waiter_less.exit.thread7.i268:               ; preds = %if.end.i.i.i266
  %rb_right.i10.i267 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %50, i64 0, i32 1
  br label %56

__pi_waiter_less.exit.i271:                       ; preds = %if.end.i.i.i266
  %53 = load i64, i64* %49, align 8
  %54 = getelementptr %struct.rb_node, %struct.rb_node* %50, i64 2, i32 0
  %55 = load i64, i64* %54, align 8
  %call5.i.i.i269 = call fastcc i1 @dl_time_before(i64 noundef %53, i64 noundef %55) #12
  %rb_right.i.i270 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %50, i64 0, i32 1
  br i1 %call5.i.i.i269, label %__pi_waiter_less.exit.thread.i273, label %56

__pi_waiter_less.exit.thread.i273:                ; preds = %__pi_waiter_less.exit.i271, %while.body.i.i263
  %rb_left.i6.i272 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %50, i64 0, i32 2
  br label %56

56:                                               ; preds = %__pi_waiter_less.exit.thread.i273, %__pi_waiter_less.exit.i271, %__pi_waiter_less.exit.thread7.i268
  %retval.0.i.i4.i274 = phi i1 [ %leftmost.0.off03.i.i259, %__pi_waiter_less.exit.thread.i273 ], [ false, %__pi_waiter_less.exit.i271 ], [ false, %__pi_waiter_less.exit.thread7.i268 ]
  %57 = phi %struct.rb_node** [ %rb_left.i6.i272, %__pi_waiter_less.exit.thread.i273 ], [ %rb_right.i.i270, %__pi_waiter_less.exit.i271 ], [ %rb_right.i10.i267, %__pi_waiter_less.exit.thread7.i268 ]
  %58 = load %struct.rb_node*, %struct.rb_node** %57, align 8
  %tobool.not.i.i275 = icmp eq %struct.rb_node* %58, null
  br i1 %tobool.not.i.i275, label %rt_mutex_enqueue_pi.exit279, label %while.body.i.i263

rt_mutex_enqueue_pi.exit279:                      ; preds = %56, %rt_mutex_dequeue_pi.exit251
  %link.0.lcssa.i.i276 = phi %struct.rb_node** [ %rb_node.i.i254, %rt_mutex_dequeue_pi.exit251 ], [ %57, %56 ]
  %parent.0.lcssa.i.i277 = phi %struct.rb_node* [ null, %rt_mutex_dequeue_pi.exit251 ], [ %50, %56 ]
  %leftmost.0.off0.lcssa.i.i278 = phi i1 [ true, %rt_mutex_dequeue_pi.exit251 ], [ %retval.0.i.i4.i274, %56 ]
  call fastcc void @rb_link_node(%struct.rb_node* noundef %pi_tree_entry.i252, %struct.rb_node* noundef %parent.0.lcssa.i.i277, %struct.rb_node** noundef %link.0.lcssa.i.i276) #12
  call fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %pi_tree_entry.i252, %struct.rb_root_cached* noundef %pi_waiters.i253, i1 noundef %leftmost.0.off0.lcssa.i.i278) #12
  %call.i280 = call fastcc i32 @task_has_pi_waiters(%struct.task_struct* noundef %call87) #12
  %tobool.not.i281 = icmp eq i32 %call.i280, 0
  br i1 %tobool.not.i281, label %if.end99.sink.split, label %if.end99.sink.split.sink.split

if.end99.sink.split.sink.split:                   ; preds = %rt_mutex_enqueue_pi.exit279, %rt_mutex_enqueue_pi.exit
  %waiter.0.ph.ph = phi %struct.rt_mutex_waiter* [ %3, %rt_mutex_enqueue_pi.exit ], [ %call96, %rt_mutex_enqueue_pi.exit279 ]
  %call1.i282 = call fastcc %struct.rt_mutex_waiter* @task_top_pi_waiter(%struct.task_struct* noundef %call87) #12
  %task.i283 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %call1.i282, i64 0, i32 2
  %59 = load %struct.task_struct*, %struct.task_struct** %task.i283, align 8
  br label %if.end99.sink.split

if.end99.sink.split:                              ; preds = %if.end99.sink.split.sink.split, %rt_mutex_enqueue_pi.exit279, %rt_mutex_enqueue_pi.exit
  %pi_task.0.i285.sink = phi %struct.task_struct* [ null, %rt_mutex_enqueue_pi.exit ], [ null, %rt_mutex_enqueue_pi.exit279 ], [ %59, %if.end99.sink.split.sink.split ]
  %waiter.0.ph = phi %struct.rt_mutex_waiter* [ %3, %rt_mutex_enqueue_pi.exit ], [ %call96, %rt_mutex_enqueue_pi.exit279 ], [ %waiter.0.ph.ph, %if.end99.sink.split.sink.split ]
  call void @rt_mutex_setprio(%struct.task_struct* noundef %call87, %struct.task_struct* noundef %pi_task.0.i285.sink) #12
  br label %if.end99

if.end99:                                         ; preds = %if.end99.sink.split, %if.else93
  %waiter.0 = phi %struct.rt_mutex_waiter* [ %3, %if.else93 ], [ %waiter.0.ph, %if.end99.sink.split ]
  %pi_blocked_on.i288 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call87, i64 0, i32 106
  %60 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %pi_blocked_on.i288, align 32
  %tobool.not.i289 = icmp eq %struct.rt_mutex_waiter* %60, null
  br i1 %tobool.not.i289, label %task_blocked_on_lock.exit293, label %cond.true.i291

cond.true.i291:                                   ; preds = %if.end99
  %lock.i290 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %60, i64 0, i32 3
  %61 = load %struct.rt_mutex_base*, %struct.rt_mutex_base** %lock.i290, align 8
  br label %task_blocked_on_lock.exit293

task_blocked_on_lock.exit293:                     ; preds = %if.end99, %cond.true.i291
  %cond.i292 = phi %struct.rt_mutex_base* [ %61, %cond.true.i291 ], [ null, %if.end99 ]
  %call101 = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %9) #10
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock89) #10
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #10
  %tobool104.not = icmp eq %struct.rt_mutex_base* %cond.i292, null
  br i1 %tobool104.not, label %out_put_task, label %if.end106

if.end106:                                        ; preds = %task_blocked_on_lock.exit293
  %cmp109.not = icmp eq %struct.rt_mutex_waiter* %waiter.0, %call101
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp109.not
  br i1 %or.cond, label %again.backedge, label %out_put_task

out_unlock_pi:                                    ; preds = %retry.preheader, %if.then46, %land.lhs.true, %if.end12, %if.then18, %if.end22, %rt_mutex_waiter_equal.exit, %if.then52
  %ret.0 = phi i32 [ -35, %if.then52 ], [ 0, %rt_mutex_waiter_equal.exit ], [ 0, %if.end22 ], [ 0, %if.then18 ], [ 0, %if.end12 ], [ 0, %land.lhs.true ], [ 0, %if.then46 ], [ 0, %retry.preheader ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %pi_lock) #10
  br label %out_put_task

out_put_task:                                     ; preds = %if.end106, %task_blocked_on_lock.exit293, %task_blocked_on_lock.exit, %out_unlock_pi
  %task.addr.1 = phi %struct.task_struct* [ %task.addr.0351, %out_unlock_pi ], [ %call87, %if.end106 ], [ %call63, %task_blocked_on_lock.exit ], [ %call87, %task_blocked_on_lock.exit293 ]
  %ret.1 = phi i32 [ %ret.0, %out_unlock_pi ], [ 0, %task_blocked_on_lock.exit ], [ 0, %task_blocked_on_lock.exit293 ], [ 0, %if.end106 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef %task.addr.1) #10
  br label %cleanup

cleanup:                                          ; preds = %out_put_task, %if.end84, %if.then60, %if.end
  %retval.0 = phi i32 [ -35, %if.end ], [ %ret.1, %out_put_task ], [ 0, %if.end84 ], [ 0, %if.then60 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rt_mutex_slowlock(%struct.rt_mutex_base* noundef %lock, i32 noundef %state) unnamed_addr #1 section ".sched.text" {
entry:
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %wait_lock) #10
  %call1 = call fastcc i32 @__rt_mutex_slowlock_locked(%struct.rt_mutex_base* noundef %lock, i32 noundef %state) #10
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %wait_lock, i64 noundef %call) #10
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_acq_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #13, !srcloc !17
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_acq_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #13, !srcloc !18
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__rt_mutex_slowlock_locked(%struct.rt_mutex_base* noundef %lock, i32 noundef %state) unnamed_addr #1 {
entry:
  %waiter = alloca %struct.rt_mutex_waiter, align 8
  %0 = bitcast %struct.rt_mutex_waiter* %waiter to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 80, i1 false), !annotation !19
  call fastcc void @rt_mutex_init_waiter(%struct.rt_mutex_waiter* noundef nonnull %waiter) #10
  %ww_ctx1 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 7
  store %struct.ww_acquire_ctx* null, %struct.ww_acquire_ctx** %ww_ctx1, align 8
  %call = call fastcc i32 @__rt_mutex_slowlock(%struct.rt_mutex_base* noundef %lock, i32 noundef %state, %struct.rt_mutex_waiter* noundef nonnull %waiter) #10
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #13
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rt_mutex_init_waiter(%struct.rt_mutex_waiter* noundef %waiter) unnamed_addr #0 {
entry:
  %pi_tree_entry = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 1
  %0 = ptrtoint %struct.rb_node* %pi_tree_entry to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %pi_tree_entry, i64 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  %1 = ptrtoint %struct.rt_mutex_waiter* %waiter to i64
  %__rb_parent_color3 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 0, i32 0
  store i64 %1, i64* %__rb_parent_color3, align 8
  %wake_state = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 4
  store i32 3, i32* %wake_state, align 8
  %task = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 2
  store %struct.task_struct* null, %struct.task_struct** %task, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__rt_mutex_slowlock(%struct.rt_mutex_base* noundef %lock, i32 noundef %state, %struct.rt_mutex_waiter* noundef %waiter) unnamed_addr #1 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call4 = call fastcc i32 @try_to_take_rt_mutex(%struct.rt_mutex_base* noundef %lock, %struct.task_struct* noundef %1, %struct.rt_mutex_waiter* noundef null) #10
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.body14, label %cleanup

do.body14:                                        ; preds = %entry
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 %state, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  %call25 = call fastcc i32 @task_blocks_on_rt_mutex(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter, %struct.task_struct* noundef %1, i32 noundef 0) #10
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %do.body52, !prof !8

if.end32:                                         ; preds = %do.body14
  %call31 = call fastcc i32 @rt_mutex_slowlock_block(%struct.rt_mutex_base* noundef %lock, i32 noundef %state, %struct.hrtimer_sleeper* noundef null, %struct.rt_mutex_waiter* noundef %waiter) #10
  %tobool33.not = icmp eq i32 %call31, 0
  br i1 %tobool33.not, label %if.end61, label %do.body52, !prof !8

do.body52:                                        ; preds = %do.body14, %if.end32
  %ret.03 = phi i32 [ %call31, %if.end32 ], [ %call25, %do.body14 ]
  store volatile i32 0, i32* %__state, align 16
  call fastcc void @remove_waiter(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter) #10
  call fastcc void @rt_mutex_handle_deadlock(i32 noundef %ret.03) #10
  br label %if.end61

if.end61:                                         ; preds = %if.end32, %do.body52
  %ret.04 = phi i32 [ 0, %if.end32 ], [ %ret.03, %do.body52 ]
  %owner1.i = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 2
  %2 = bitcast %struct.task_struct** %owner1.i to i64*
  %call.i = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #12
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %cleanup

do.end.i:                                         ; preds = %if.end61
  %3 = load volatile i64, i64* %2, align 8
  %and.i = and i64 %3, 1
  %tobool2.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool2.not.i, label %cleanup, label %do.body8.i

do.body8.i:                                       ; preds = %do.end.i
  %and9.i = and i64 %3, -2
  store volatile i64 %and9.i, i64* %2, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body8.i, %do.end.i, %if.end61, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %ret.04, %if.end61 ], [ %ret.04, %do.end.i ], [ %ret.04, %do.body8.i ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rt_mutex_handle_deadlock(i32 noundef %res) unnamed_addr #1 section ".sched.text" {
entry:
  %cmp.not = icmp eq i32 %res, -35
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  ret void

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/locking/rtmutex.c\22; .popsection; .long 14472b - 14470b; .short 1535; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !21
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %do.end, %while.body
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  call void @schedule() #12
  br label %while.body
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rt_mutex_slowunlock(%struct.rt_mutex_base* noundef %lock) unnamed_addr #1 section ".sched.text" {
entry:
  %wqh = alloca %struct.rt_wake_q_head, align 8
  %0 = bitcast %struct.rt_wake_q_head* %wqh to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #13
  %first = getelementptr inbounds %struct.rt_wake_q_head, %struct.rt_wake_q_head* %wqh, i64 0, i32 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.rt_wake_q_head, %struct.rt_wake_q_head* %wqh, i64 0, i32 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  %rtlock_task = getelementptr inbounds %struct.rt_wake_q_head, %struct.rt_wake_q_head* %wqh, i64 0, i32 1
  store %struct.task_struct* null, %struct.task_struct** %rtlock_task, align 8
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %wait_lock) #10
  %call338 = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #10
  %tobool.not39 = icmp eq i32 %call338, 0
  br i1 %tobool.not39, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %owner.i.i = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 2
  %1 = bitcast %struct.task_struct** %owner.i.i to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %do.body8
  %flags.040 = phi i64 [ %call, %while.body.lr.ph ], [ %call15, %do.body8 ]
  %call.i = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %lock) #12
  %2 = load %struct.task_struct*, %struct.task_struct** %owner.i.i, align 8
  %3 = ptrtoint %struct.task_struct* %2 to i64
  %and.i.i = and i64 %3, -2
  %4 = inttoptr i64 %and.i.i to %struct.task_struct*
  store %struct.task_struct* %4, %struct.task_struct** %owner.i.i, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %wait_lock, i64 noundef %flags.040) #12
  %5 = ptrtoint %struct.task_struct* %call.i to i64
  %call14.i.i.i = call fastcc i64 @__cmpxchg_case_rel_64(i8* noundef %1, i64 noundef %5) #12
  %6 = inttoptr i64 %call14.i.i.i to %struct.task_struct*
  %cmp4.i.i = icmp eq %struct.task_struct* %call.i, %6
  br i1 %cmp4.i.i, label %cleanup, label %do.body8

do.body8:                                         ; preds = %while.body
  %call15 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %wait_lock) #10
  %call3 = call fastcc i32 @rt_mutex_has_waiters(%struct.rt_mutex_base* noundef %lock) #10
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %do.body8, %entry
  %flags.0.lcssa = phi i64 [ %call, %entry ], [ %call15, %do.body8 ]
  call fastcc void @mark_wakeup_next_waiter(%struct.rt_wake_q_head* noundef nonnull %wqh, %struct.rt_mutex_base* noundef %lock) #10
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %wait_lock, i64 noundef %flags.0.lcssa) #10
  %head.i = getelementptr inbounds %struct.rt_wake_q_head, %struct.rt_wake_q_head* %wqh, i64 0, i32 0
  %call.i36 = call fastcc i1 @wake_q_empty(%struct.wake_q_head* noundef nonnull %head.i) #12
  br i1 %call.i36, label %rt_mutex_wake_up_q.exit, label %if.then.i

if.then.i:                                        ; preds = %while.end
  call void @wake_up_q(%struct.wake_q_head* noundef nonnull %head.i) #12
  br label %rt_mutex_wake_up_q.exit

rt_mutex_wake_up_q.exit:                          ; preds = %while.end, %if.then.i
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %while.body, %rt_mutex_wake_up_q.exit
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_rel_64(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_rel_64(i8* noundef %ptr, i64 noundef %old) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_rel_64(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 0, i64* elementtype(i64) %0) #13, !srcloc !23
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef readonly %lock) unnamed_addr #1 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 1, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.rb_node* %0 to %struct.rt_mutex_waiter*
  %lock2 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %0, i64 2, i32 1
  %2 = bitcast %struct.rb_node** %lock2 to %struct.rt_mutex_base**
  %3 = load %struct.rt_mutex_base*, %struct.rt_mutex_base** %2, align 8
  %cmp.not = icmp eq %struct.rt_mutex_base* %3, %lock
  br i1 %cmp.not, label %if.end14, label %do.body6, !prof !8

do.body6:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/locking/rtmutex_common.h\22; .popsection; .long 14472b - 14470b; .short 118; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !25
  unreachable

if.end14:                                         ; preds = %if.then, %entry
  %w.0 = phi %struct.rt_mutex_waiter* [ %1, %if.then ], [ null, %entry ]
  ret %struct.rt_mutex_waiter* %w.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rb_erase_cached(%struct.rb_node* noundef %node, %struct.rb_root_cached* noundef %root) unnamed_addr #1 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %cmp = icmp eq %struct.rb_node* %0, %node
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %node) #12
  store %struct.rb_node* %call, %struct.rb_node** %rb_leftmost, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  call void @rb_erase(%struct.rb_node* noundef %node, %struct.rb_root* noundef %rb_root) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_next(%struct.rb_node* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_has_pi_waiters(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %rb_node = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 104, i32 0, i32 0
  %0 = load volatile %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %cmp = icmp ne %struct.rb_node* %0, null
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.rt_mutex_waiter* @task_top_pi_waiter(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #7 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 104, i32 1
  %0 = bitcast %struct.rb_node** %rb_leftmost to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -24
  %2 = bitcast i8* %add.ptr to %struct.rt_mutex_waiter*
  ret %struct.rt_mutex_waiter* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_setprio(%struct.task_struct* noundef, %struct.task_struct* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(%struct.wake_q_head* noundef, %struct.task_struct* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #13, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
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
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #13, !srcloc !28
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #13, !srcloc !29
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #10
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !30

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #13, !srcloc !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #13, !srcloc !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @rt_mutex_steal(%struct.rt_mutex_waiter* nocapture noundef readonly %waiter, %struct.rt_mutex_waiter* nocapture noundef readonly %top_waiter) unnamed_addr #7 {
entry:
  %prio.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 5
  %0 = load i32, i32* %prio.i, align 4
  %prio1.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %top_waiter, i64 0, i32 5
  %1 = load i32, i32* %prio1.i, align 4
  %cmp.i = icmp slt i32 %0, %1
  br i1 %cmp.i, label %rt_mutex_waiter_less.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call.i = call fastcc i32 @dl_prio(i32 noundef %0) #12
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %rt_mutex_waiter_less.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %deadline.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 6
  %2 = load i64, i64* %deadline.i, align 8
  %deadline4.i = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %top_waiter, i64 0, i32 6
  %3 = load i64, i64* %deadline4.i, align 8
  %call5.i = call fastcc i1 @dl_time_before(i64 noundef %2, i64 noundef %3) #12
  br label %rt_mutex_waiter_less.exit

rt_mutex_waiter_less.exit:                        ; preds = %entry, %if.end.i, %if.then3.i
  %retval.0.i = phi i1 [ %call5.i, %if.then3.i ], [ true, %entry ], [ false, %if.end.i ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #13, !srcloc !33
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @dl_prio(i32 noundef %prio) unnamed_addr #8 {
entry:
  %prio.lobit = lshr i32 %prio, 31
  ret i32 %prio.lobit
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @dl_time_before(i64 noundef %a, i64 noundef %b) unnamed_addr #8 {
entry:
  %sub = sub i64 %a, %b
  %cmp = icmp slt i64 %sub, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_link_node(%struct.rb_node* noundef %node, %struct.rb_node* noundef %parent, %struct.rb_node** nocapture noundef writeonly %rb_link) unnamed_addr #0 {
entry:
  %0 = ptrtoint %struct.rb_node* %parent to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %rb_right, align 8
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 2
  store %struct.rb_node* null, %struct.rb_node** %rb_left, align 8
  store %struct.rb_node* %node, %struct.rb_node** %rb_link, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %node, %struct.rb_root_cached* noundef %root, i1 noundef %leftmost) unnamed_addr #1 {
entry:
  br i1 %leftmost, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  store %struct.rb_node* %node, %struct.rb_node** %rb_leftmost, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  call void @rb_insert_color(%struct.rb_node* noundef %node, %struct.rb_root* noundef %rb_root) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #13, !srcloc !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending_state(i32 noundef %state, %struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %and = and i32 %state, 257
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @signal_pending(%struct.task_struct* noundef %p) #10
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %state, 1
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.rhs, label %return

lor.rhs:                                          ; preds = %if.end3
  %call6 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #10
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %return

return:                                           ; preds = %if.end3, %lor.rhs, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end3 ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rtmutex_spin_on_owner(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter, %struct.task_struct* noundef %owner) unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %call13 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %lock) #10
  %cmp.not14 = icmp eq %struct.task_struct* %call13, %owner
  br i1 %cmp.not14, label %if.end.lr.ph, label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %owner, i64 0, i32 6
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %lor.lhs.false4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  %0 = load i32, i32* %on_cpu, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = getelementptr %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %3, i32 noundef 1) #12
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false2, label %for.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = call fastcc i1 @rt_mutex_waiter_is_top_waiter(%struct.rt_mutex_base* noundef %lock, %struct.rt_mutex_waiter* noundef %waiter) #10
  br i1 %call3, label %for.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  call fastcc void @task_cpu(%struct.task_struct* noundef %owner) #10
  call fastcc void @cpu_relax() #10
  %call = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %lock) #10
  %cmp.not = icmp eq %struct.task_struct* %call, %owner
  br i1 %cmp.not, label %if.end, label %for.end

for.end:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %if.end, %entry
  %cmp.not.lcssa = phi i1 [ true, %entry ], [ false, %if.end ], [ false, %lor.lhs.false ], [ false, %lor.lhs.false2 ], [ true, %lor.lhs.false4 ]
  call fastcc void @rcu_read_unlock() #10
  ret i1 %cmp.not.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !8

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #7 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #10
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #10
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #10
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #10
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #8 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #7 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @rt_mutex_waiter_is_top_waiter(%struct.rt_mutex_base* nocapture noundef readonly %lock, %struct.rt_mutex_waiter* noundef readnone %waiter) unnamed_addr #7 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 1, i32 1
  %0 = bitcast %struct.rb_node** %rb_leftmost to %struct.rt_mutex_waiter**
  %1 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %0, align 8
  %cmp = icmp eq %struct.rt_mutex_waiter* %1, %waiter
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @task_cpu(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 8
  %0 = load volatile i32, i32* %cpu, align 64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #1 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #13, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  call void @rcu_read_unlock_strict() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rt_prio(i32 noundef %prio) unnamed_addr #8 {
entry:
  %cmp = icmp slt i32 %prio, 100
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #12
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !30

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !8

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #12
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !39
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #7 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #1 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #10
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  %call = call fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !41
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #10
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #10
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #12
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #13, !srcloc !42
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !8

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !43
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %counter.i.i = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %queued_spin_trylock.exit, !prof !8

if.end.i:                                         ; preds = %entry
  %1 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %1, i32 noundef 0, i32 noundef 1) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  %lnot.ext9.i = zext i1 %cmp.not.i.i.i to i32
  br label %queued_spin_trylock.exit

queued_spin_trylock.exit:                         ; preds = %entry, %if.end.i
  %retval.0.i = phi i32 [ %lnot.ext9.i, %if.end.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @wake_q_empty(%struct.wake_q_head* nocapture noundef readonly %head) unnamed_addr #7 {
entry:
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %head, i64 0, i32 0
  %0 = load %struct.wake_q_node*, %struct.wake_q_node** %first, align 8
  %cmp = icmp eq %struct.wake_q_node* %0, inttoptr (i64 1 to %struct.wake_q_node*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(%struct.wake_q_head* noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind readnone }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 1182850}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2151372659}
!10 = !{i64 2149356584}
!11 = !{i64 2149382427}
!12 = !{i64 2151364401}
!13 = !{i64 2149360877}
!14 = !{i64 2149385730}
!15 = !{i64 2151419403}
!16 = !{i64 2151380927}
!17 = !{i64 2147891057, i64 2147891090, i64 2147891143, i64 2147891202, i64 2147891236, i64 2147891291, i64 2147891320, i64 2147891340}
!18 = !{i64 2147896756, i64 2147896789, i64 2147896841, i64 2147896897, i64 2147896930, i64 2147896984, i64 2147897013, i64 2147897033}
!19 = !{!"auto-init"}
!20 = !{i64 2151392459}
!21 = !{i64 2151384965}
!22 = !{i64 2151387796}
!23 = !{i64 2147903315, i64 2147903348, i64 2147903399, i64 2147903455, i64 2147903488, i64 2147903543, i64 2147903572, i64 2147903592}
!24 = !{i64 2149371585}
!25 = !{i64 2151313716}
!26 = !{i64 2149378866}
!27 = !{i64 2149171096}
!28 = !{i64 2148922411, i64 2148922458, i64 2148922464, i64 2148922501, i64 2148922519, i64 2148923830, i64 2148923878, i64 2148923926, i64 2148923989, i64 2148924038, i64 2148922597, i64 2148922622, i64 2148922648, i64 2148922654, i64 2148923496, i64 2148923536, i64 2148923554, i64 2148923586, i64 2148923614, i64 2148923668, i64 2148923688, i64 2148923785, i64 2148922677, i64 2148922691, i64 2148922697, i64 2148922747, i64 2148922793, i64 2148922826}
!29 = !{i64 2148924590, i64 2148924637, i64 2148924643, i64 2148924680, i64 2148924698, i64 2148925641, i64 2148925689, i64 2148925737, i64 2148925800, i64 2148925849, i64 2148924776, i64 2148924801, i64 2148924827, i64 2148924833, i64 2148924870, i64 2148924876, i64 2148924926, i64 2148924972, i64 2148925005}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2148916708, i64 2148916755, i64 2148916761, i64 2148916798, i64 2148916816, i64 2148918157, i64 2148918205, i64 2148918253, i64 2148918316, i64 2148918365, i64 2148916894, i64 2148916919, i64 2148916945, i64 2148916951, i64 2148917823, i64 2148917863, i64 2148917881, i64 2148917913, i64 2148917941, i64 2148917995, i64 2148918015, i64 2148918112, i64 2148916974, i64 2148916988, i64 2148916994, i64 2148917044, i64 2148917090, i64 2148917123}
!32 = !{i64 2148928424, i64 2148928471, i64 2148928477, i64 2148928514, i64 2148928532, i64 2148933904, i64 2148933952, i64 2148934000, i64 2148934063, i64 2148934112, i64 2148928610, i64 2148928635, i64 2148928661, i64 2148928667, i64 2148933570, i64 2148933610, i64 2148933628, i64 2148933660, i64 2148933688, i64 2148933742, i64 2148933762, i64 2148933859, i64 2148928690, i64 2148928704, i64 2148928710, i64 2148928760, i64 2148928806, i64 2148928839}
!33 = !{i64 2147886137, i64 2147886170, i64 2147886221, i64 2147886277, i64 2147886310, i64 2147886364, i64 2147886393, i64 2147886413}
!34 = !{i64 2148907252, i64 2148907299, i64 2148907305, i64 2148907342, i64 2148907360, i64 2148908700, i64 2148908748, i64 2148908796, i64 2148908859, i64 2148908908, i64 2148907438, i64 2148907463, i64 2148907489, i64 2148907495, i64 2148908366, i64 2148908406, i64 2148908424, i64 2148908456, i64 2148908484, i64 2148908538, i64 2148908558, i64 2148908655, i64 2148907518, i64 2148907532, i64 2148907538, i64 2148907588, i64 2148907634, i64 2148907667}
!35 = !{i64 2151375407}
!36 = !{i64 1705581}
!37 = !{i64 2149698052}
!38 = !{i64 2149698269}
!39 = !{i64 2147801159, i64 2147801823, i64 2147801853, i64 2147801885, i64 2147801919, i64 2147801954, i64 2147801979}
!40 = !{i64 2149352043}
!41 = !{i64 2149356100}
!42 = !{i64 2149900519}
!43 = !{i64 2147812941, i64 2147813615, i64 2147813645, i64 2147813677, i64 2147813711, i64 2147813747, i64 2147813772}
