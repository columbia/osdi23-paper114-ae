; ModuleID = 'kernel/locking/mutex.c'
source_filename = "kernel/locking/mutex.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.lock_class_key = type {}
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
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.4, [0 x i64] }
%struct.anon.4 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.5, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.5 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
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
%struct.futex_pi_state = type opaque
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
%struct.wake_q_head = type { %struct.wake_q_node*, %struct.wake_q_node** }
%struct.mutex_waiter = type { %struct.list_head, %struct.task_struct*, %struct.ww_acquire_ctx* }
%struct.ww_acquire_ctx = type { %struct.task_struct*, i64, i32, i16, i16 }
%struct.ww_mutex = type { %struct.mutex, %struct.ww_acquire_ctx* }

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @__mutex_init(%struct.mutex* noundef %lock, i8* nocapture noundef readnone %name, %struct.lock_class_key* nocapture noundef readnone %key) local_unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 0, i32 0
  store volatile i64 0, i64* %counter.i.i, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %wait_list = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %wait_list) #9
  %osq = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 2
  call fastcc void @osq_lock_init(%struct.optimistic_spin_queue* noundef %osq) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @osq_lock_init(%struct.optimistic_spin_queue* noundef %lock) unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.optimistic_spin_queue, %struct.optimistic_spin_queue* %lock, i64 0, i32 0, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i1 @mutex_is_locked(%struct.mutex* noundef %lock) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.task_struct* @__mutex_owner(%struct.mutex* noundef %lock) #9
  %cmp = icmp ne %struct.task_struct* %call, null
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.task_struct* @__mutex_owner(%struct.mutex* noundef %lock) unnamed_addr #1 {
entry:
  %counter.i.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %and = and i64 %0, -8
  %1 = inttoptr i64 %and to %struct.task_struct*
  ret %struct.task_struct* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mutex_lock(%struct.mutex* noundef %lock) local_unnamed_addr #2 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = bitcast %struct.mutex* %lock to i8*
  %call14.i.i.i.i.i = call fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %1, i64 noundef 0, i64 noundef %0) #11
  %cmp.not.i.i.i.i = icmp eq i64 %call14.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__mutex_lock_slowpath(%struct.mutex* noundef %lock) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mutex_lock_slowpath(%struct.mutex* noundef %lock) unnamed_addr #2 section ".sched.text" {
entry:
  %0 = call fastcc i32 @__mutex_lock(%struct.mutex* noundef %lock, i32 noundef 2) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mutex_unlock(%struct.mutex* noundef %lock) local_unnamed_addr #2 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = bitcast %struct.mutex* %lock to i8*
  %call14.i.i.i.i.i = call fastcc i64 @__cmpxchg_case_rel_64(i8* noundef %1, i64 noundef %0, i64 noundef 0) #11
  %cmp.not.i.i.i.i = icmp eq i64 %call14.i.i.i.i.i, %0
  br i1 %cmp.not.i.i.i.i, label %return, label %cond.end

cond.end:                                         ; preds = %entry
  call fastcc void @__mutex_unlock_slowpath(%struct.mutex* noundef %lock) #9
  br label %return

return:                                           ; preds = %entry, %cond.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mutex_unlock_slowpath(%struct.mutex* noundef %lock) unnamed_addr #2 section ".sched.text" {
entry:
  %wake_q = alloca %struct.wake_q_head, align 8
  %0 = bitcast %struct.wake_q_head* %wake_q to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  %counter.i.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %2 = bitcast %struct.mutex* %lock to i8*
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %owner.0 = phi i64 [ %1, %entry ], [ %call14.i.i.i.i, %if.end ]
  %and = and i64 %owner.0, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %for.end

if.end:                                           ; preds = %for.cond
  %call4 = call fastcc i64 @__owner_flags(i64 noundef %owner.0) #9, !range !8
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_rel_64(i8* noundef %2, i64 noundef %owner.0, i64 noundef %call4) #11
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, %owner.0
  br i1 %cmp.not.i.i.i, label %if.then6, label %for.cond, !prof !9

if.then6:                                         ; preds = %if.end
  %and7 = and i64 %owner.0, 1
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %cleanup, label %for.end

for.end:                                          ; preds = %for.cond, %if.then6
  %wait_lock = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 1
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %wait_lock) #9
  %wait_list = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 3
  %call15 = call fastcc i32 @list_empty(%struct.list_head* noundef %wait_list) #9
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end26

if.then17:                                        ; preds = %for.end
  %3 = bitcast %struct.list_head* %wait_list to %struct.mutex_waiter**
  %4 = load %struct.mutex_waiter*, %struct.mutex_waiter** %3, align 8
  %task = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %4, i64 0, i32 1
  %5 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  call void @wake_q_add(%struct.wake_q_head* noundef nonnull %wake_q, %struct.task_struct* noundef %5) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then17, %for.end
  %next.0 = phi %struct.task_struct* [ null, %for.end ], [ %5, %if.then17 ]
  br i1 %tobool.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end26
  call fastcc void @__mutex_handoff(%struct.mutex* noundef %lock, %struct.task_struct* noundef %next.0) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %wait_lock) #9
  call void @wake_up_q(%struct.wake_q_head* noundef nonnull %wake_q) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ww_mutex_unlock(%struct.ww_mutex* noundef %lock) local_unnamed_addr #2 section ".sched.text" {
entry:
  call fastcc void @__ww_mutex_unlock(%struct.ww_mutex* noundef %lock) #9
  %base = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %lock, i64 0, i32 0
  call void @mutex_unlock(%struct.mutex* noundef %base) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__ww_mutex_unlock(%struct.ww_mutex* nocapture noundef %lock) unnamed_addr #3 {
entry:
  %ctx = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %lock, i64 0, i32 1
  %0 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %ctx, align 8
  %tobool.not = icmp eq %struct.ww_acquire_ctx* %0, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %0, i64 0, i32 2
  %1 = load i32, i32* %acquired, align 8
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %dec = add i32 %1, -1
  store i32 %dec, i32* %acquired, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store %struct.ww_acquire_ctx* null, %struct.ww_acquire_ctx** %ctx, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @mutex_lock_interruptible(%struct.mutex* noundef %lock) local_unnamed_addr #2 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = bitcast %struct.mutex* %lock to i8*
  %call14.i.i.i.i.i = call fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %1, i64 noundef 0, i64 noundef %0) #11
  %cmp.not.i.i.i.i = icmp eq i64 %call14.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @__mutex_lock_interruptible_slowpath(%struct.mutex* noundef %lock) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__mutex_lock_interruptible_slowpath(%struct.mutex* noundef %lock) unnamed_addr #2 section ".sched.text" {
entry:
  %call = call fastcc i32 @__mutex_lock(%struct.mutex* noundef %lock, i32 noundef 1) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @mutex_lock_killable(%struct.mutex* noundef %lock) local_unnamed_addr #2 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = bitcast %struct.mutex* %lock to i8*
  %call14.i.i.i.i.i = call fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %1, i64 noundef 0, i64 noundef %0) #11
  %cmp.not.i.i.i.i = icmp eq i64 %call14.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @__mutex_lock_killable_slowpath(%struct.mutex* noundef %lock) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__mutex_lock_killable_slowpath(%struct.mutex* noundef %lock) unnamed_addr #2 section ".sched.text" {
entry:
  %call = call fastcc i32 @__mutex_lock(%struct.mutex* noundef %lock, i32 noundef 258) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mutex_lock_io(%struct.mutex* noundef %lock) local_unnamed_addr #2 section ".sched.text" {
entry:
  %call = call i32 @io_schedule_prepare() #11
  call void @mutex_lock(%struct.mutex* noundef %lock) #9
  call void @io_schedule_finish(i32 noundef %call) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_prepare() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule_finish(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @mutex_trylock(%struct.mutex* noundef %lock) local_unnamed_addr #2 section ".sched.text" {
entry:
  %call = call fastcc i1 @__mutex_trylock(%struct.mutex* noundef %lock) #9
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__mutex_trylock(%struct.mutex* noundef %lock) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.task_struct* @__mutex_trylock_common(%struct.mutex* noundef %lock, i1 noundef false) #9
  %tobool.not = icmp eq %struct.task_struct* %call, null
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ww_mutex_lock(%struct.ww_mutex* noundef %lock, %struct.ww_acquire_ctx* noundef %ctx) local_unnamed_addr #2 section ".sched.text" {
entry:
  %base = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %lock, i64 0, i32 0
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = bitcast %struct.ww_mutex* %lock to i8*
  %call14.i.i.i.i.i = call fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %1, i64 noundef 0, i64 noundef %0) #11
  %cmp.not.i.i.i.i = icmp eq i64 %call14.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq %struct.ww_acquire_ctx* %ctx, null
  br i1 %tobool.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.then
  %acquired.i.i = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ctx, i64 0, i32 2
  %2 = load i32, i32* %acquired.i.i, align 8
  %inc.i.i = add i32 %2, 1
  store i32 %inc.i.i, i32* %acquired.i.i, align 8
  %ctx.i.i = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %lock, i64 0, i32 1
  store %struct.ww_acquire_ctx* %ctx, %struct.ww_acquire_ctx** %ctx.i.i, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %call.i = call fastcc i1 @__ww_mutex_has_waiters(%struct.mutex* noundef %base) #11
  br i1 %call.i, label %if.end.i, label %return, !prof !11

if.end.i:                                         ; preds = %if.then3
  call fastcc void @lock_wait_lock(%struct.mutex* noundef %base) #11
  call fastcc void @__ww_mutex_check_waiters(%struct.mutex* noundef %base, %struct.ww_acquire_ctx* noundef nonnull %ctx) #11
  call fastcc void @unlock_wait_lock(%struct.mutex* noundef %base) #11
  br label %return

if.end4:                                          ; preds = %entry
  %call5 = call fastcc i32 @__ww_mutex_lock_slowpath(%struct.ww_mutex* noundef %lock, %struct.ww_acquire_ctx* noundef %ctx) #9
  br label %return

return:                                           ; preds = %if.end.i, %if.then3, %if.then, %if.end4
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ww_mutex_lock_slowpath(%struct.ww_mutex* noundef %lock, %struct.ww_acquire_ctx* noundef %ctx) unnamed_addr #2 section ".sched.text" {
entry:
  %base = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %lock, i64 0, i32 0
  %call = call fastcc i32 @__ww_mutex_lock(%struct.mutex* noundef %base, i32 noundef 2, %struct.ww_acquire_ctx* noundef %ctx) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ww_mutex_lock_interruptible(%struct.ww_mutex* noundef %lock, %struct.ww_acquire_ctx* noundef %ctx) local_unnamed_addr #2 section ".sched.text" {
entry:
  %base = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %lock, i64 0, i32 0
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = bitcast %struct.ww_mutex* %lock to i8*
  %call14.i.i.i.i.i = call fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %1, i64 noundef 0, i64 noundef %0) #11
  %cmp.not.i.i.i.i = icmp eq i64 %call14.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq %struct.ww_acquire_ctx* %ctx, null
  br i1 %tobool.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.then
  %acquired.i.i = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ctx, i64 0, i32 2
  %2 = load i32, i32* %acquired.i.i, align 8
  %inc.i.i = add i32 %2, 1
  store i32 %inc.i.i, i32* %acquired.i.i, align 8
  %ctx.i.i = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %lock, i64 0, i32 1
  store %struct.ww_acquire_ctx* %ctx, %struct.ww_acquire_ctx** %ctx.i.i, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %call.i = call fastcc i1 @__ww_mutex_has_waiters(%struct.mutex* noundef %base) #11
  br i1 %call.i, label %if.end.i, label %return, !prof !11

if.end.i:                                         ; preds = %if.then3
  call fastcc void @lock_wait_lock(%struct.mutex* noundef %base) #11
  call fastcc void @__ww_mutex_check_waiters(%struct.mutex* noundef %base, %struct.ww_acquire_ctx* noundef nonnull %ctx) #11
  call fastcc void @unlock_wait_lock(%struct.mutex* noundef %base) #11
  br label %return

if.end4:                                          ; preds = %entry
  %call5 = call fastcc i32 @__ww_mutex_lock_interruptible_slowpath(%struct.ww_mutex* noundef %lock, %struct.ww_acquire_ctx* noundef %ctx) #9
  br label %return

return:                                           ; preds = %if.end.i, %if.then3, %if.then, %if.end4
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ww_mutex_lock_interruptible_slowpath(%struct.ww_mutex* noundef %lock, %struct.ww_acquire_ctx* noundef %ctx) unnamed_addr #2 section ".sched.text" {
entry:
  %base = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %lock, i64 0, i32 0
  %call = call fastcc i32 @__ww_mutex_lock(%struct.mutex* noundef %base, i32 noundef 1, %struct.ww_acquire_ctx* noundef %ctx) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @atomic_dec_and_mutex_lock(%struct.atomic_t* noundef %cnt, %struct.mutex* noundef %lock) local_unnamed_addr #2 {
entry:
  %counter.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %cnt, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i.i, align 4
  %1 = bitcast %struct.atomic_t* %cnt to i8*
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond.i.i.i, %entry
  %c.0.i.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i.i, %do.cond.i.i.i ]
  %cmp.i.i.i = icmp eq i32 %c.0.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %do.cond.i.i.i, !prof !11

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %c.0.i.i.i, -1
  %call11.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i.i, i32 noundef %add.i.i.i) #11
  %cmp.not.i.i.i.i = icmp eq i32 %c.0.i.i.i, %call11.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %return, label %do.body.i.i.i, !prof !9

if.end:                                           ; preds = %do.body.i.i.i
  call void @mutex_lock(%struct.mutex* noundef %lock) #9
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %cnt) #11
  %cmp.i.i6 = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i6, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @mutex_unlock(%struct.mutex* noundef %lock) #9
  br label %return

return:                                           ; preds = %do.cond.i.i.i, %if.end, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end ], [ 0, %do.cond.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #2 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_acq_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #12, !srcloc !12
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_acq_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #12, !srcloc !13
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_rel_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_rel_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_rel_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #12, !srcloc !14
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__owner_flags(i64 noundef %owner) unnamed_addr #7 {
entry:
  %and = and i64 %owner, 7
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #1 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(%struct.wake_q_head* noundef, %struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mutex_handoff(%struct.mutex* noundef %lock, %struct.task_struct* noundef %task) unnamed_addr #2 {
entry:
  %counter.i.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = ptrtoint %struct.task_struct* %task to i64
  %tobool.not = icmp eq %struct.task_struct* %task, null
  %2 = bitcast %struct.mutex* %lock to i8*
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %owner.0 = phi i64 [ %0, %entry ], [ %call14.i.i.i.i, %for.cond ]
  %and = and i64 %owner.0, 1
  %or = or i64 %and, %1
  %or2 = or i64 %or, 4
  %spec.select = select i1 %tobool.not, i64 %or, i64 %or2
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_rel_64(i8* noundef %2, i64 noundef %owner.0, i64 noundef %spec.select) #11
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, %owner.0
  br i1 %cmp.not.i.i.i, label %for.end, label %for.cond, !prof !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(%struct.wake_q_head* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #12, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__mutex_lock(%struct.mutex* noundef %lock, i32 noundef %state) unnamed_addr #2 section ".sched.text" {
entry:
  %waiter.i = alloca %struct.mutex_waiter, align 8
  %0 = bitcast %struct.mutex_waiter* %waiter.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false) #12, !annotation !18
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %call.i = call fastcc i1 @__mutex_trylock(%struct.mutex* noundef %lock) #11
  br i1 %call.i, label %do.end31.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %call.i.i = call fastcc i32 @mutex_can_spin_on_owner(%struct.mutex* noundef %lock) #11
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %fail.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i
  %osq.i.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 2
  %call3.i.i = call i1 @osq_lock(%struct.optimistic_spin_queue* noundef %osq.i.i) #11
  br i1 %call3.i.i, label %if.end6.i.i, label %fail.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call747.i.i = call fastcc %struct.task_struct* @__mutex_trylock_or_owner(%struct.mutex* noundef %lock) #11
  %tobool8.not48.i.i = icmp eq %struct.task_struct* %call747.i.i, null
  br i1 %tobool8.not48.i.i, label %mutex_optimistic_spin.exit.i, label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end6.i.i, %cleanup.i.i
  %call749.i.i = phi %struct.task_struct* [ %call7.i.i, %cleanup.i.i ], [ %call747.i.i, %if.end6.i.i ]
  %call11.i.i = call fastcc i1 @mutex_spin_on_owner(%struct.mutex* noundef %lock, %struct.task_struct* noundef nonnull %call749.i.i, %struct.ww_acquire_ctx* noundef null, %struct.mutex_waiter* noundef null) #11
  br i1 %call11.i.i, label %cleanup.i.i, label %fail_unlock.i.i

cleanup.i.i:                                      ; preds = %if.end10.i.i
  call fastcc void @cpu_relax() #11
  %call7.i.i = call fastcc %struct.task_struct* @__mutex_trylock_or_owner(%struct.mutex* noundef %lock) #11
  %tobool8.not.i.i = icmp eq %struct.task_struct* %call7.i.i, null
  br i1 %tobool8.not.i.i, label %mutex_optimistic_spin.exit.i, label %if.end10.i.i

fail_unlock.i.i:                                  ; preds = %if.end10.i.i
  call void @osq_unlock(%struct.optimistic_spin_queue* noundef %osq.i.i) #11
  br label %fail.i.i

fail.i.i:                                         ; preds = %fail_unlock.i.i, %if.end.i.i, %lor.lhs.false.i
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = getelementptr %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0
  %call1.i.i.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %3, i32 noundef 1) #11
  %tobool.i.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end35.i, label %do.body28.i.i

do.body28.i.i:                                    ; preds = %fail.i.i
  %__state.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 1
  store volatile i32 0, i32* %__state.i.i, align 16
  call void @schedule_preempt_disabled() #11
  br label %if.end35.i

mutex_optimistic_spin.exit.i:                     ; preds = %cleanup.i.i, %if.end6.i.i
  call void @osq_unlock(%struct.optimistic_spin_queue* noundef %osq.i.i) #11
  br label %do.end31.i

do.end31.i:                                       ; preds = %mutex_optimistic_spin.exit.i, %entry
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %__mutex_lock_common.exit

if.end35.i:                                       ; preds = %do.body28.i.i, %fail.i.i
  %wait_lock.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 1
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %wait_lock.i) #11
  %call36.i = call fastcc i1 @__mutex_trylock(%struct.mutex* noundef %lock) #11
  br i1 %call36.i, label %if.end163.i, label %do.end44.i

do.end44.i:                                       ; preds = %if.end35.i
  %task.i = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %waiter.i, i64 0, i32 1
  store %struct.task_struct* %2, %struct.task_struct** %task.i, align 8
  %wait_list.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 3
  call fastcc void @__mutex_add_waiter(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %waiter.i, %struct.list_head* noundef %wait_list.i) #11
  %__state.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 1
  store volatile i32 %state, i32* %__state.i, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %call7935.i = call fastcc i1 @__mutex_trylock(%struct.mutex* noundef %lock) #11
  br i1 %call7935.i, label %do.body138.i, label %if.end81.i

if.end81.i:                                       ; preds = %do.end44.i, %cleanup.i
  %call83.i = call fastcc i32 @signal_pending_state(i32 noundef %state, %struct.task_struct* noundef %2) #11
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.end86.i, label %do.body173.i

if.end86.i:                                       ; preds = %if.end81.i
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %wait_lock.i) #11
  call void @schedule_preempt_disabled() #11
  %call95.i = call fastcc i1 @__mutex_waiter_is_first(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %waiter.i) #11
  store volatile i32 %state, i32* %__state.i, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  %call118.i = call fastcc i1 @__mutex_trylock_or_handoff(%struct.mutex* noundef %lock, i1 noundef %call95.i) #11
  br i1 %call118.i, label %for.end.i, label %lor.lhs.false120.i

lor.lhs.false120.i:                               ; preds = %if.end86.i
  br i1 %call95.i, label %land.lhs.true.i, label %cleanup.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false120.i
  %call747.i3.i = call fastcc %struct.task_struct* @__mutex_trylock_or_owner(%struct.mutex* noundef %lock) #11
  %tobool8.not48.i4.i = icmp eq %struct.task_struct* %call747.i3.i, null
  br i1 %tobool8.not48.i4.i, label %for.end.i, label %if.end10.i8.i

if.end10.i8.i:                                    ; preds = %land.lhs.true.i, %cleanup.i11.i
  %call749.i6.i = phi %struct.task_struct* [ %call7.i9.i, %cleanup.i11.i ], [ %call747.i3.i, %land.lhs.true.i ]
  %call11.i7.i = call fastcc i1 @mutex_spin_on_owner(%struct.mutex* noundef %lock, %struct.task_struct* noundef nonnull %call749.i6.i, %struct.ww_acquire_ctx* noundef null, %struct.mutex_waiter* noundef nonnull %waiter.i) #11
  br i1 %call11.i7.i, label %cleanup.i11.i, label %fail_unlock.i13.i

cleanup.i11.i:                                    ; preds = %if.end10.i8.i
  call fastcc void @cpu_relax() #11
  %call7.i9.i = call fastcc %struct.task_struct* @__mutex_trylock_or_owner(%struct.mutex* noundef %lock) #11
  %tobool8.not.i10.i = icmp eq %struct.task_struct* %call7.i9.i, null
  br i1 %tobool8.not.i10.i, label %for.end.i, label %if.end10.i8.i

fail_unlock.i13.i:                                ; preds = %if.end10.i8.i
  %call1.i.i14.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %3, i32 noundef 1) #11
  %tobool.i.not.i15.i = icmp eq i32 %call1.i.i14.i, 0
  br i1 %tobool.i.not.i15.i, label %cleanup.i, label %do.body28.i18.i

do.body28.i18.i:                                  ; preds = %fail_unlock.i13.i
  store volatile i32 0, i32* %__state.i, align 16
  call void @schedule_preempt_disabled() #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body28.i18.i, %fail_unlock.i13.i, %lor.lhs.false120.i
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %wait_lock.i) #11
  %call79.i = call fastcc i1 @__mutex_trylock(%struct.mutex* noundef %lock) #11
  br i1 %call79.i, label %do.body138.i, label %if.end81.i

for.end.i:                                        ; preds = %land.lhs.true.i, %if.end86.i, %cleanup.i11.i
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %wait_lock.i) #11
  br label %do.body138.i

do.body138.i:                                     ; preds = %cleanup.i, %for.end.i, %do.end44.i
  store volatile i32 0, i32* %__state.i, align 16
  call fastcc void @__mutex_remove_waiter(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %waiter.i) #11
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.end35.i, %do.body138.i
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %wait_lock.i) #11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  br label %__mutex_lock_common.exit

do.body173.i:                                     ; preds = %if.end81.i
  store volatile i32 0, i32* %__state.i, align 16
  call fastcc void @__mutex_remove_waiter(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %waiter.i) #11
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %wait_lock.i) #11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  br label %__mutex_lock_common.exit

__mutex_lock_common.exit:                         ; preds = %do.end31.i, %if.end163.i, %do.body173.i
  %retval.0.i = phi i32 [ 0, %do.end31.i ], [ 0, %if.end163.i ], [ -4, %do.body173.i ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #12
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ww_mutex_check_waiters(%struct.mutex* noundef %lock, %struct.ww_acquire_ctx* noundef %ww_ctx) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.mutex_waiter* @__ww_waiter_first(%struct.mutex* noundef %lock) #9
  %tobool.not19 = icmp eq %struct.mutex_waiter* %call, null
  br i1 %tobool.not19, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %cur.020 = phi %struct.mutex_waiter* [ %call8, %for.inc ], [ %call, %entry ]
  %ww_ctx1 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %cur.020, i64 0, i32 2
  %0 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %ww_ctx1, align 8
  %tobool2.not = icmp eq %struct.ww_acquire_ctx* %0, null
  br i1 %tobool2.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call3 = call fastcc i1 @__ww_mutex_die(%struct.mutex_waiter* noundef nonnull %cur.020, %struct.ww_acquire_ctx* noundef %ww_ctx) #9
  br i1 %call3, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %ww_ctx1, align 8
  %call5 = call fastcc i1 @__ww_mutex_wound(%struct.mutex* noundef %lock, %struct.ww_acquire_ctx* noundef %1, %struct.ww_acquire_ctx* noundef %ww_ctx) #9
  br i1 %call5, label %for.end, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %for.body
  %call8 = call fastcc %struct.mutex_waiter* @__ww_waiter_next(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %cur.020) #9
  %tobool.not = icmp eq %struct.mutex_waiter* %call8, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %lor.lhs.false, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mutex_add_waiter(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef %waiter, %struct.list_head* noundef %list) unnamed_addr #2 {
entry:
  %list1 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %waiter, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %list1, %struct.list_head* noundef %list) #9
  %call = call fastcc i1 @__mutex_waiter_is_first(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef %waiter) #9
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__mutex_set_flag(%struct.mutex* noundef %lock) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ww_mutex_add_waiter(%struct.mutex_waiter* noundef %waiter, %struct.mutex* noundef %lock, %struct.ww_acquire_ctx* noundef readonly %ww_ctx) unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.ww_acquire_ctx* %ww_ctx, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__ww_waiter_add(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef %waiter, %struct.mutex_waiter* noundef null) #9
  br label %cleanup25

if.end:                                           ; preds = %entry
  %is_wait_die1 = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ww_ctx, i64 0, i32 4
  %0 = load i16, i16* %is_wait_die1, align 2
  %tobool2.not = icmp eq i16 %0, 0
  %call = call fastcc %struct.mutex_waiter* @__ww_waiter_last(%struct.mutex* noundef %lock) #9
  %tobool3.not54 = icmp eq %struct.mutex_waiter* %call, null
  br i1 %tobool3.not54, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %cur.056 = phi %struct.mutex_waiter* [ %call20, %for.inc ], [ %call, %if.end ]
  %pos.055 = phi %struct.mutex_waiter* [ %pos.1, %for.inc ], [ null, %if.end ]
  %ww_ctx4 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %cur.056, i64 0, i32 2
  %1 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %ww_ctx4, align 8
  %tobool5.not = icmp eq %struct.ww_acquire_ctx* %1, null
  br i1 %tobool5.not, label %for.inc, label %if.end7

if.end7:                                          ; preds = %for.body
  %call9 = call fastcc i1 @__ww_ctx_less(%struct.ww_acquire_ctx* noundef nonnull %ww_ctx, %struct.ww_acquire_ctx* noundef nonnull %1) #9
  br i1 %call9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end7
  br i1 %tobool2.not, label %if.then22.critedge, label %if.then12

if.then12:                                        ; preds = %if.then10
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ww_ctx, i64 0, i32 2
  %2 = load i32, i32* %acquired.i, align 8
  %cmp.not.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i, label %for.end.thread, label %cleanup25

for.end.thread:                                   ; preds = %if.then12
  call fastcc void @__ww_waiter_add(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef %waiter, %struct.mutex_waiter* noundef %pos.055) #9
  br label %cleanup25

if.end18:                                         ; preds = %if.end7
  %3 = call fastcc i1 @__ww_mutex_die(%struct.mutex_waiter* noundef nonnull %cur.056, %struct.ww_acquire_ctx* noundef nonnull %ww_ctx) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end18
  %pos.1 = phi %struct.mutex_waiter* [ %cur.056, %if.end18 ], [ %pos.055, %for.body ]
  %call20 = call fastcc %struct.mutex_waiter* @__ww_waiter_prev(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %cur.056) #9
  %tobool3.not = icmp eq %struct.mutex_waiter* %call20, null
  br i1 %tobool3.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  %pos.0.lcssa = phi %struct.mutex_waiter* [ null, %if.end ], [ %pos.1, %for.inc ]
  call fastcc void @__ww_waiter_add(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef %waiter, %struct.mutex_waiter* noundef %pos.0.lcssa) #9
  br i1 %tobool2.not, label %if.then22, label %cleanup25

if.then22.critedge:                               ; preds = %if.then10
  call fastcc void @__ww_waiter_add(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef %waiter, %struct.mutex_waiter* noundef %pos.055) #9
  br label %if.then22

if.then22:                                        ; preds = %if.then22.critedge, %for.end
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %ctx = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 1
  %4 = bitcast %struct.mutex* %ctx to %struct.ww_acquire_ctx**
  %5 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %4, align 8
  %call23 = call fastcc i1 @__ww_mutex_wound(%struct.mutex* noundef %lock, %struct.ww_acquire_ctx* noundef nonnull %ww_ctx, %struct.ww_acquire_ctx* noundef %5) #9
  br label %cleanup25

cleanup25:                                        ; preds = %for.end.thread, %for.end, %if.then22, %if.then12, %if.then
  %retval.1 = phi i32 [ -35, %if.then12 ], [ 0, %if.then ], [ 0, %if.then22 ], [ 0, %for.end ], [ 0, %for.end.thread ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending_state(i32 noundef %state, %struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %and = and i32 %state, 257
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @signal_pending(%struct.task_struct* noundef %p) #9
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %state, 1
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.rhs, label %return

lor.rhs:                                          ; preds = %if.end3
  %call6 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #9
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %return

return:                                           ; preds = %if.end3, %lor.rhs, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end3 ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i32 @__ww_mutex_check_kill(%struct.mutex* noundef %lock, %struct.mutex_waiter* nocapture noundef readonly %waiter, %struct.ww_acquire_ctx* nocapture noundef readonly %ctx) unnamed_addr #0 {
entry:
  %ctx5 = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 1
  %0 = bitcast %struct.mutex* %ctx5 to %struct.ww_acquire_ctx**
  %1 = load volatile %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %0, align 8
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ctx, i64 0, i32 2
  %2 = load i32, i32* %acquired, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %is_wait_die = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ctx, i64 0, i32 4
  %3 = load i16, i16* %is_wait_die, align 2
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  %wounded = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ctx, i64 0, i32 3
  %4 = load i16, i16* %wounded, align 4
  %tobool7.not = icmp eq i16 %4, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 -35
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %tobool11.not = icmp eq %struct.ww_acquire_ctx* %1, null
  br i1 %tobool11.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %call12 = call fastcc i1 @__ww_ctx_less(%struct.ww_acquire_ctx* noundef %ctx, %struct.ww_acquire_ctx* noundef nonnull %1) #9
  br i1 %call12, label %cleanup, label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %if.end10
  %call16 = call fastcc %struct.mutex_waiter* @__ww_waiter_prev(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef %waiter) #9
  %tobool17.not49 = icmp eq %struct.mutex_waiter* %call16, null
  br i1 %tobool17.not49, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end15, %for.inc
  %cur.050 = phi %struct.mutex_waiter* [ %call22, %for.inc ], [ %call16, %if.end15 ]
  %ww_ctx = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %cur.050, i64 0, i32 2
  %5 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %ww_ctx, align 8
  %tobool18.not = icmp eq %struct.ww_acquire_ctx* %5, null
  br i1 %tobool18.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %call22 = call fastcc %struct.mutex_waiter* @__ww_waiter_prev(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %cur.050) #9
  %tobool17.not = icmp eq %struct.mutex_waiter* %call22, null
  br i1 %tobool17.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %for.body, %if.end15, %if.then6, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -35, %land.lhs.true ], [ %spec.select, %if.then6 ], [ 0, %if.end15 ], [ 0, %for.inc ], [ -35, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_preempt_disabled() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__mutex_waiter_is_first(%struct.mutex* nocapture noundef readonly %lock, %struct.mutex_waiter* noundef readnone %waiter) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 3, i32 0
  %0 = bitcast %struct.list_head** %next to %struct.mutex_waiter**
  %1 = load %struct.mutex_waiter*, %struct.mutex_waiter** %0, align 8
  %cmp = icmp eq %struct.mutex_waiter* %1, %waiter
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__mutex_trylock_or_handoff(%struct.mutex* noundef %lock, i1 noundef %handoff) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.task_struct* @__mutex_trylock_common(%struct.mutex* noundef %lock, i1 noundef %handoff) #9
  %tobool1.not = icmp eq %struct.task_struct* %call, null
  ret i1 %tobool1.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mutex_remove_waiter(%struct.mutex* noundef %lock, %struct.mutex_waiter* nocapture noundef %waiter) unnamed_addr #2 {
entry:
  %list = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %waiter, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %list) #9
  %wait_list = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 3
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %wait_list) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call fastcc void @__mutex_clear_flag(%struct.mutex* noundef %lock) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mutex_can_spin_on_owner(%struct.mutex* noundef %lock) unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 1) #11
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #11
  %call2 = call fastcc %struct.task_struct* @__mutex_owner(%struct.mutex* noundef %lock) #9
  %tobool.not = icmp eq %struct.task_struct* %call2, null
  br i1 %tobool.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call2, i64 0, i32 6
  %3 = load i32, i32* %on_cpu, align 4
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then3
  call fastcc void @task_cpu(%struct.task_struct* noundef nonnull %call2) #9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then3
  %4 = xor i1 %tobool4.not, true
  %land.ext = zext i1 %4 to i32
  br label %if.end7

if.end7:                                          ; preds = %land.end, %if.end
  %retval1.0 = phi i32 [ %land.ext, %land.end ], [ 1, %if.end ]
  call fastcc void @rcu_read_unlock() #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7
  %retval.0 = phi i32 [ %retval1.0, %if.end7 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @osq_lock(%struct.optimistic_spin_queue* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @__mutex_trylock_or_owner(%struct.mutex* noundef %lock) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.task_struct* @__mutex_trylock_common(%struct.mutex* noundef %lock, i1 noundef false) #9
  ret %struct.task_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @mutex_spin_on_owner(%struct.mutex* noundef %lock, %struct.task_struct* noundef %owner, %struct.ww_acquire_ctx* noundef readonly %ww_ctx, %struct.mutex_waiter* noundef %waiter) unnamed_addr #2 {
entry:
  call fastcc void @__rcu_read_lock() #11
  %call14 = call fastcc %struct.task_struct* @__mutex_owner(%struct.mutex* noundef %lock) #9
  %cmp15 = icmp eq %struct.task_struct* %call14, %owner
  br i1 %cmp15, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %owner, i64 0, i32 6
  %tobool5.not = icmp eq %struct.ww_acquire_ctx* %ww_ctx, null
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  %0 = load i32, i32* %on_cpu, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %while.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = getelementptr %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %3, i32 noundef 1) #11
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false2, label %while.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  call fastcc void @task_cpu(%struct.task_struct* noundef %owner) #9
  br i1 %tobool5.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %call6 = call fastcc i1 @ww_mutex_spin_on_owner(%struct.mutex* noundef %lock, %struct.ww_acquire_ctx* noundef nonnull %ww_ctx, %struct.mutex_waiter* noundef %waiter) #9
  br i1 %call6, label %if.end8, label %while.end

if.end8:                                          ; preds = %land.lhs.true, %lor.lhs.false2
  call fastcc void @cpu_relax() #9
  %call = call fastcc %struct.task_struct* @__mutex_owner(%struct.mutex* noundef %lock) #9
  %cmp = icmp eq %struct.task_struct* %call, %owner
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %if.end8, %lor.lhs.false, %while.body, %land.lhs.true, %entry
  %ret.0.off0 = phi i1 [ true, %entry ], [ false, %land.lhs.true ], [ false, %while.body ], [ false, %lor.lhs.false ], [ true, %if.end8 ]
  call fastcc void @rcu_read_unlock() #9
  ret i1 %ret.0.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #2 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #12, !srcloc !27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @osq_unlock(%struct.optimistic_spin_queue* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @task_cpu(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 8
  %0 = load volatile i32, i32* %cpu, align 64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #2 {
entry:
  call fastcc void @__rcu_read_unlock() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  call void @rcu_read_unlock_strict() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @__mutex_trylock_common(%struct.mutex* noundef %lock, i1 noundef %handoff) unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %counter.i.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %2 = bitcast %struct.mutex* %lock to i8*
  br label %for.cond

for.cond:                                         ; preds = %if.end19, %entry
  %owner.0 = phi i64 [ %1, %entry ], [ %call14.i.i.i.i, %if.end19 ]
  %call3 = call fastcc i64 @__owner_flags(i64 noundef %owner.0) #9
  %and = and i64 %owner.0, -8
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end19, label %if.then

if.then:                                          ; preds = %for.cond
  %and4 = and i64 %call3, 4
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %cmp.not = icmp eq i64 %and, %0
  br i1 %cmp.not, label %if.end, label %for.end

if.end:                                           ; preds = %if.then6
  %and8 = and i64 %call3, -5
  br label %if.end19

if.else:                                          ; preds = %if.then
  %and11 = and i64 %call3, 2
  %tobool12.not = icmp eq i64 %and11, 0
  %or.cond = select i1 %handoff, i1 %tobool12.not, i1 false
  br i1 %or.cond, label %if.end14, label %for.end

if.end14:                                         ; preds = %if.else
  %or = or i64 %call3, 2
  br label %if.end19

if.end19:                                         ; preds = %for.cond, %if.end, %if.end14
  %flags.0 = phi i64 [ %and8, %if.end ], [ %or, %if.end14 ], [ %call3, %for.cond ]
  %task.0 = phi i64 [ %0, %if.end ], [ %and, %if.end14 ], [ %0, %for.cond ]
  %or21 = or i64 %task.0, %flags.0
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %2, i64 noundef %owner.0, i64 noundef %or21) #11
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, %owner.0
  br i1 %cmp.not.i.i.i, label %if.then23, label %for.cond, !prof !9

if.then23:                                        ; preds = %if.end19
  %cmp24 = icmp eq i64 %task.0, %0
  br i1 %cmp24, label %cleanup30, label %for.end

for.end:                                          ; preds = %if.then6, %if.else, %if.then23
  %call29 = call fastcc %struct.task_struct* @__owner_task(i64 noundef %owner.0) #9
  br label %cleanup30

cleanup30:                                        ; preds = %if.then23, %for.end
  %retval.2 = phi %struct.task_struct* [ %call29, %for.end ], [ null, %if.then23 ]
  ret %struct.task_struct* %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.task_struct* @__owner_task(i64 noundef %owner) unnamed_addr #7 {
entry:
  %and = and i64 %owner, -8
  %0 = inttoptr i64 %and to %struct.task_struct*
  ret %struct.task_struct* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @ww_mutex_spin_on_owner(%struct.mutex* noundef %lock, %struct.ww_acquire_ctx* nocapture noundef readonly %ww_ctx, %struct.mutex_waiter* noundef %waiter) unnamed_addr #1 {
entry:
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ww_ctx, i64 0, i32 2
  %0 = load i32, i32* %acquired, align 8
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %do.end3

do.end3:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 1
  %1 = bitcast %struct.mutex* %ctx to %struct.ww_acquire_ctx**
  %2 = load volatile %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %1, align 8
  %tobool.not = icmp eq %struct.ww_acquire_ctx* %2, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %do.end3, %entry
  %tobool5.not = icmp eq %struct.mutex_waiter* %waiter, null
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true11

land.lhs.true6:                                   ; preds = %if.end
  %counter.i.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 0, i32 0
  %3 = load volatile i64, i64* %counter.i.i, align 8
  %and = and i64 %3, 1
  %tobool7.not = icmp eq i64 %and, 0
  br i1 %tobool7.not, label %if.end14, label %cleanup

land.lhs.true11:                                  ; preds = %if.end
  %call12 = call fastcc i1 @__mutex_waiter_is_first(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %waiter) #9
  br i1 %call12, label %if.end14, label %cleanup

if.end14:                                         ; preds = %land.lhs.true6, %land.lhs.true11
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true11, %land.lhs.true6, %do.end3, %if.end14
  %retval.0 = phi i1 [ true, %if.end14 ], [ false, %do.end3 ], [ false, %land.lhs.true6 ], [ false, %land.lhs.true11 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #1 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.mutex_waiter* @__ww_waiter_first(%struct.mutex* noundef readonly %lock) unnamed_addr #8 {
entry:
  %wait_list = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 3
  %0 = bitcast %struct.list_head* %wait_list to %struct.mutex_waiter**
  %1 = load %struct.mutex_waiter*, %struct.mutex_waiter** %0, align 8
  %list = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %1, i64 0, i32 0
  %cmp = icmp eq %struct.list_head* %list, %wait_list
  %. = select i1 %cmp, %struct.mutex_waiter* null, %struct.mutex_waiter* %1
  ret %struct.mutex_waiter* %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__ww_mutex_die(%struct.mutex_waiter* nocapture noundef readonly %waiter, %struct.ww_acquire_ctx* nocapture noundef readonly %ww_ctx) unnamed_addr #2 {
entry:
  %is_wait_die = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ww_ctx, i64 0, i32 4
  %0 = load i16, i16* %is_wait_die, align 2
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %ww_ctx1 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %waiter, i64 0, i32 2
  %1 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %ww_ctx1, align 8
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %1, i64 0, i32 2
  %2 = load i32, i32* %acquired, align 8
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = call fastcc i1 @__ww_ctx_less(%struct.ww_acquire_ctx* noundef %1, %struct.ww_acquire_ctx* noundef %ww_ctx) #9
  br i1 %call, label %do.end, label %return

do.end:                                           ; preds = %land.lhs.true
  %task = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %waiter, i64 0, i32 1
  %3 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call4 = call i32 @wake_up_process(%struct.task_struct* noundef %3) #11
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true, %do.end, %entry
  %4 = xor i1 %tobool.not, true
  ret i1 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__ww_mutex_wound(%struct.mutex* noundef %lock, %struct.ww_acquire_ctx* nocapture noundef readonly %ww_ctx, %struct.ww_acquire_ctx* noundef %hold_ctx) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.task_struct* @__ww_mutex_owner(%struct.mutex* noundef %lock) #9
  %tobool.not = icmp eq %struct.ww_acquire_ctx* %hold_ctx, null
  %tobool1.not = icmp eq %struct.task_struct* %call, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ww_ctx, i64 0, i32 2
  %0 = load i32, i32* %acquired, align 8
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %call4 = call fastcc i1 @__ww_ctx_less(%struct.ww_acquire_ctx* noundef nonnull %hold_ctx, %struct.ww_acquire_ctx* noundef %ww_ctx) #9
  br i1 %call4, label %if.then5, label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  %wounded = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %hold_ctx, i64 0, i32 3
  store i16 1, i16* %wounded, align 4
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cmp7.not = icmp eq %struct.task_struct* %call, %2
  br i1 %cmp7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.then5
  %call9 = call i32 @wake_up_process(%struct.task_struct* noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %land.lhs.true, %if.then5, %if.then8, %entry
  %retval.0 = phi i1 [ false, %entry ], [ true, %if.then8 ], [ true, %if.then5 ], [ false, %land.lhs.true ], [ false, %if.end3 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.mutex_waiter* @__ww_waiter_next(%struct.mutex* noundef readnone %lock, %struct.mutex_waiter* nocapture noundef readonly %w) unnamed_addr #8 {
entry:
  %0 = bitcast %struct.mutex_waiter* %w to %struct.mutex_waiter**
  %1 = load %struct.mutex_waiter*, %struct.mutex_waiter** %0, align 8
  %list1 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %1, i64 0, i32 0
  %wait_list = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 3
  %cmp = icmp eq %struct.list_head* %list1, %wait_list
  %. = select i1 %cmp, %struct.mutex_waiter* null, %struct.mutex_waiter* %1
  ret %struct.mutex_waiter* %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__ww_ctx_less(%struct.ww_acquire_ctx* nocapture noundef readonly %a, %struct.ww_acquire_ctx* nocapture noundef readonly %b) unnamed_addr #8 {
entry:
  %stamp = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %a, i64 0, i32 1
  %0 = load i64, i64* %stamp, align 8
  %stamp1 = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %b, i64 0, i32 1
  %1 = load i64, i64* %stamp1, align 8
  %sub = sub i64 %0, %1
  %cmp = icmp sgt i64 %sub, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.task_struct* @__ww_mutex_owner(%struct.mutex* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.task_struct* @__mutex_owner(%struct.mutex* noundef %lock) #9
  ret %struct.task_struct* %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mutex_set_flag(%struct.mutex* noundef %lock) unnamed_addr #2 {
entry:
  %owner = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 0
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %owner) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #0 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #12, !srcloc !30
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ww_waiter_add(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef %waiter, %struct.mutex_waiter* noundef %pos) unnamed_addr #2 {
entry:
  %wait_list = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 3
  %tobool.not = icmp eq %struct.mutex_waiter* %pos, null
  %list = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %pos, i64 0, i32 0
  %spec.select = select i1 %tobool.not, %struct.list_head* %wait_list, %struct.list_head* %list
  call fastcc void @__mutex_add_waiter(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef %waiter, %struct.list_head* noundef %spec.select) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.mutex_waiter* @__ww_waiter_last(%struct.mutex* noundef readonly %lock) unnamed_addr #8 {
entry:
  %wait_list = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 3
  %prev = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 3, i32 1
  %0 = bitcast %struct.list_head** %prev to %struct.mutex_waiter**
  %1 = load %struct.mutex_waiter*, %struct.mutex_waiter** %0, align 8
  %list = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %1, i64 0, i32 0
  %cmp = icmp eq %struct.list_head* %list, %wait_list
  %. = select i1 %cmp, %struct.mutex_waiter* null, %struct.mutex_waiter* %1
  ret %struct.mutex_waiter* %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.mutex_waiter* @__ww_waiter_prev(%struct.mutex* noundef readnone %lock, %struct.mutex_waiter* nocapture noundef readonly %w) unnamed_addr #8 {
entry:
  %prev = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %w, i64 0, i32 0, i32 1
  %0 = bitcast %struct.list_head** %prev to %struct.mutex_waiter**
  %1 = load %struct.mutex_waiter*, %struct.mutex_waiter** %0, align 8
  %list1 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %1, i64 0, i32 0
  %wait_list = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 3
  %cmp = icmp eq %struct.list_head* %list1, %wait_list
  %. = select i1 %cmp, %struct.mutex_waiter* null, %struct.mutex_waiter* %1
  ret %struct.mutex_waiter* %.
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !9

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #8 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #9
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #9
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #9
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #9
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #7 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #8 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #0 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #9
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mutex_clear_flag(%struct.mutex* noundef %lock) unnamed_addr #2 {
entry:
  %owner = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 0
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %owner) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #0 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #0 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 7, i64* elementtype(i64) %counter) #12, !srcloc !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @__ww_mutex_has_waiters(%struct.mutex* noundef %lock) unnamed_addr #1 {
entry:
  %counter.i.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_wait_lock(%struct.mutex* noundef %lock) unnamed_addr #2 {
entry:
  %wait_lock = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 1
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %wait_lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_wait_lock(%struct.mutex* noundef %lock) unnamed_addr #2 {
entry:
  %wait_lock = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 1
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %wait_lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ww_mutex_lock(%struct.mutex* noundef %lock, i32 noundef %state, %struct.ww_acquire_ctx* noundef %ww_ctx) unnamed_addr #2 section ".sched.text" {
entry:
  %waiter.i = alloca %struct.mutex_waiter, align 8
  %0 = bitcast %struct.mutex_waiter* %waiter.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false) #12, !annotation !18
  %tobool7.not.i = icmp eq %struct.ww_acquire_ctx* %ww_ctx, null
  br i1 %tobool7.not.i, label %if.end21.i, label %if.then8.i

if.then8.i:                                       ; preds = %entry
  %ctx.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 1
  %1 = bitcast %struct.mutex* %ctx.i to %struct.ww_acquire_ctx**
  %2 = load volatile %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %1, align 8
  %cmp.i = icmp eq %struct.ww_acquire_ctx* %2, %ww_ctx
  br i1 %cmp.i, label %__mutex_lock_common.exit, label %if.end16.i, !prof !11

if.end16.i:                                       ; preds = %if.then8.i
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ww_ctx, i64 0, i32 2
  %3 = load i32, i32* %acquired.i, align 8
  %cmp17.i = icmp eq i32 %3, 0
  br i1 %cmp17.i, label %if.then19.i, label %if.end21.i

if.then19.i:                                      ; preds = %if.end16.i
  %wounded.i = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ww_ctx, i64 0, i32 3
  store i16 0, i16* %wounded.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end16.i, %entry
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %call.i = call fastcc i1 @__mutex_trylock(%struct.mutex* noundef %lock) #11
  br i1 %call.i, label %do.end31.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end21.i
  %call.i.i = call fastcc i32 @mutex_can_spin_on_owner(%struct.mutex* noundef %lock) #11
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %fail.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i
  %osq.i.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 2
  %call3.i.i = call i1 @osq_lock(%struct.optimistic_spin_queue* noundef %osq.i.i) #11
  br i1 %call3.i.i, label %if.end6.i.i, label %fail.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call747.i.i = call fastcc %struct.task_struct* @__mutex_trylock_or_owner(%struct.mutex* noundef %lock) #11
  %tobool8.not48.i.i = icmp eq %struct.task_struct* %call747.i.i, null
  br i1 %tobool8.not48.i.i, label %mutex_optimistic_spin.exit.i, label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end6.i.i, %cleanup.i.i
  %call749.i.i = phi %struct.task_struct* [ %call7.i.i, %cleanup.i.i ], [ %call747.i.i, %if.end6.i.i ]
  %call11.i.i = call fastcc i1 @mutex_spin_on_owner(%struct.mutex* noundef %lock, %struct.task_struct* noundef nonnull %call749.i.i, %struct.ww_acquire_ctx* noundef %ww_ctx, %struct.mutex_waiter* noundef null) #11
  br i1 %call11.i.i, label %cleanup.i.i, label %fail_unlock.i.i

cleanup.i.i:                                      ; preds = %if.end10.i.i
  call fastcc void @cpu_relax() #11
  %call7.i.i = call fastcc %struct.task_struct* @__mutex_trylock_or_owner(%struct.mutex* noundef %lock) #11
  %tobool8.not.i.i = icmp eq %struct.task_struct* %call7.i.i, null
  br i1 %tobool8.not.i.i, label %mutex_optimistic_spin.exit.i, label %if.end10.i.i

fail_unlock.i.i:                                  ; preds = %if.end10.i.i
  call void @osq_unlock(%struct.optimistic_spin_queue* noundef %osq.i.i) #11
  br label %fail.i.i

fail.i.i:                                         ; preds = %fail_unlock.i.i, %if.end.i.i, %lor.lhs.false.i
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #10
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %6 = getelementptr %struct.task_struct, %struct.task_struct* %5, i64 0, i32 0
  %call1.i.i.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %6, i32 noundef 1) #11
  %tobool.i.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end35.i, label %do.body28.i.i

do.body28.i.i:                                    ; preds = %fail.i.i
  %__state.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 1
  store volatile i32 0, i32* %__state.i.i, align 16
  call void @schedule_preempt_disabled() #11
  br label %if.end35.i

mutex_optimistic_spin.exit.i:                     ; preds = %cleanup.i.i, %if.end6.i.i
  call void @osq_unlock(%struct.optimistic_spin_queue* noundef %osq.i.i) #11
  br label %do.end31.i

do.end31.i:                                       ; preds = %mutex_optimistic_spin.exit.i, %if.end21.i
  br i1 %tobool7.not.i, label %if.end34.i, label %if.then33.i

if.then33.i:                                      ; preds = %do.end31.i
  %acquired.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ww_ctx, i64 0, i32 2
  %7 = load i32, i32* %acquired.i.i.i, align 8
  %inc.i.i.i = add i32 %7, 1
  store i32 %inc.i.i.i, i32* %acquired.i.i.i, align 8
  %ctx.i.i.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 1
  %8 = bitcast %struct.mutex* %ctx.i.i.i to %struct.ww_acquire_ctx**
  store %struct.ww_acquire_ctx* %ww_ctx, %struct.ww_acquire_ctx** %8, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %call.i1.i = call fastcc i1 @__ww_mutex_has_waiters(%struct.mutex* noundef %lock) #11
  br i1 %call.i1.i, label %if.end.i2.i, label %if.end34.i, !prof !11

if.end.i2.i:                                      ; preds = %if.then33.i
  call fastcc void @lock_wait_lock(%struct.mutex* noundef %lock) #11
  call fastcc void @__ww_mutex_check_waiters(%struct.mutex* noundef %lock, %struct.ww_acquire_ctx* noundef nonnull %ww_ctx) #11
  call fastcc void @unlock_wait_lock(%struct.mutex* noundef %lock) #11
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end.i2.i, %if.then33.i, %do.end31.i
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %__mutex_lock_common.exit

if.end35.i:                                       ; preds = %do.body28.i.i, %fail.i.i
  %wait_lock.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 0, i32 1
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %wait_lock.i) #11
  %call36.i = call fastcc i1 @__mutex_trylock(%struct.mutex* noundef %lock) #11
  br i1 %call36.i, label %if.then37.i, label %do.end44.i

if.then37.i:                                      ; preds = %if.end35.i
  br i1 %tobool7.not.i, label %if.end163.i, label %do.end160.thread.i

do.end160.thread.i:                               ; preds = %if.then37.i
  call fastcc void @__ww_mutex_check_waiters(%struct.mutex* noundef %lock, %struct.ww_acquire_ctx* noundef nonnull %ww_ctx) #11
  br label %if.then162.i

do.end44.i:                                       ; preds = %if.end35.i
  %task.i = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %waiter.i, i64 0, i32 1
  store %struct.task_struct* %5, %struct.task_struct** %task.i, align 8
  %ww_ctx48.i = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %waiter.i, i64 0, i32 2
  store %struct.ww_acquire_ctx* %ww_ctx, %struct.ww_acquire_ctx** %ww_ctx48.i, align 8
  %call55.i = call fastcc i32 @__ww_mutex_add_waiter(%struct.mutex_waiter* noundef nonnull %waiter.i, %struct.mutex* noundef %lock, %struct.ww_acquire_ctx* noundef %ww_ctx) #11
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %do.body69.i, label %err_early_kill.i

do.body69.i:                                      ; preds = %do.end44.i
  %__state.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 1
  store volatile i32 %state, i32* %__state.i, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %call7935.i = call fastcc i1 @__mutex_trylock(%struct.mutex* noundef %lock) #11
  br i1 %call7935.i, label %do.body138.i, label %if.end81.i

if.end81.i:                                       ; preds = %do.body69.i, %cleanup.i
  %call83.i = call fastcc i32 @signal_pending_state(i32 noundef %state, %struct.task_struct* noundef %5) #11
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.end86.i, label %do.body173.i

if.end86.i:                                       ; preds = %if.end81.i
  br i1 %tobool7.not.i, label %if.end93.i, label %if.then88.i

if.then88.i:                                      ; preds = %if.end86.i
  %call89.i = call fastcc i32 @__ww_mutex_check_kill(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %waiter.i, %struct.ww_acquire_ctx* noundef nonnull %ww_ctx) #11
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %if.end93.i, label %do.body173.i

if.end93.i:                                       ; preds = %if.then88.i, %if.end86.i
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %wait_lock.i) #11
  call void @schedule_preempt_disabled() #11
  %call95.i = call fastcc i1 @__mutex_waiter_is_first(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %waiter.i) #11
  store volatile i32 %state, i32* %__state.i, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  %call118.i = call fastcc i1 @__mutex_trylock_or_handoff(%struct.mutex* noundef %lock, i1 noundef %call95.i) #11
  br i1 %call118.i, label %for.end.i, label %lor.lhs.false120.i

lor.lhs.false120.i:                               ; preds = %if.end93.i
  br i1 %call95.i, label %land.lhs.true.i, label %cleanup.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false120.i
  %call747.i3.i = call fastcc %struct.task_struct* @__mutex_trylock_or_owner(%struct.mutex* noundef %lock) #11
  %tobool8.not48.i4.i = icmp eq %struct.task_struct* %call747.i3.i, null
  br i1 %tobool8.not48.i4.i, label %for.end.i, label %if.end10.i8.i

if.end10.i8.i:                                    ; preds = %land.lhs.true.i, %cleanup.i11.i
  %call749.i6.i = phi %struct.task_struct* [ %call7.i9.i, %cleanup.i11.i ], [ %call747.i3.i, %land.lhs.true.i ]
  %call11.i7.i = call fastcc i1 @mutex_spin_on_owner(%struct.mutex* noundef %lock, %struct.task_struct* noundef nonnull %call749.i6.i, %struct.ww_acquire_ctx* noundef %ww_ctx, %struct.mutex_waiter* noundef nonnull %waiter.i) #11
  br i1 %call11.i7.i, label %cleanup.i11.i, label %fail_unlock.i13.i

cleanup.i11.i:                                    ; preds = %if.end10.i8.i
  call fastcc void @cpu_relax() #11
  %call7.i9.i = call fastcc %struct.task_struct* @__mutex_trylock_or_owner(%struct.mutex* noundef %lock) #11
  %tobool8.not.i10.i = icmp eq %struct.task_struct* %call7.i9.i, null
  br i1 %tobool8.not.i10.i, label %for.end.i, label %if.end10.i8.i

fail_unlock.i13.i:                                ; preds = %if.end10.i8.i
  %call1.i.i14.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %6, i32 noundef 1) #11
  %tobool.i.not.i15.i = icmp eq i32 %call1.i.i14.i, 0
  br i1 %tobool.i.not.i15.i, label %cleanup.i, label %do.body28.i18.i

do.body28.i18.i:                                  ; preds = %fail_unlock.i13.i
  store volatile i32 0, i32* %__state.i, align 16
  call void @schedule_preempt_disabled() #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body28.i18.i, %fail_unlock.i13.i, %lor.lhs.false120.i
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %wait_lock.i) #11
  %call79.i = call fastcc i1 @__mutex_trylock(%struct.mutex* noundef %lock) #11
  br i1 %call79.i, label %do.body138.i, label %if.end81.i

for.end.i:                                        ; preds = %land.lhs.true.i, %if.end93.i, %cleanup.i11.i
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %wait_lock.i) #11
  br label %do.body138.i

do.body138.i:                                     ; preds = %cleanup.i, %for.end.i, %do.body69.i
  store volatile i32 0, i32* %__state.i, align 16
  br i1 %tobool7.not.i, label %do.end160.i, label %if.then148.i

if.then148.i:                                     ; preds = %do.body138.i
  %is_wait_die.i = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ww_ctx, i64 0, i32 4
  %9 = load i16, i16* %is_wait_die.i, align 2
  %tobool149.not.i = icmp eq i16 %9, 0
  br i1 %tobool149.not.i, label %land.lhs.true150.i, label %do.end160.thread33.i

land.lhs.true150.i:                               ; preds = %if.then148.i
  %call151.i = call fastcc i1 @__mutex_waiter_is_first(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %waiter.i) #11
  br i1 %call151.i, label %do.end160.thread33.i, label %if.then152.i

if.then152.i:                                     ; preds = %land.lhs.true150.i
  call fastcc void @__ww_mutex_check_waiters(%struct.mutex* noundef %lock, %struct.ww_acquire_ctx* noundef nonnull %ww_ctx) #11
  br label %do.end160.thread33.i

do.end160.thread33.i:                             ; preds = %if.then152.i, %land.lhs.true150.i, %if.then148.i
  call fastcc void @__mutex_remove_waiter(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %waiter.i) #11
  br label %if.then162.i

do.end160.i:                                      ; preds = %do.body138.i
  call fastcc void @__mutex_remove_waiter(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %waiter.i) #11
  br label %if.end163.i

if.then162.i:                                     ; preds = %do.end160.thread33.i, %do.end160.thread.i
  %acquired.i.i = getelementptr inbounds %struct.ww_acquire_ctx, %struct.ww_acquire_ctx* %ww_ctx, i64 0, i32 2
  %10 = load i32, i32* %acquired.i.i, align 8
  %inc.i.i = add i32 %10, 1
  store i32 %inc.i.i, i32* %acquired.i.i, align 8
  %ctx.i.i = getelementptr inbounds %struct.mutex, %struct.mutex* %lock, i64 1
  %11 = bitcast %struct.mutex* %ctx.i.i to %struct.ww_acquire_ctx**
  store %struct.ww_acquire_ctx* %ww_ctx, %struct.ww_acquire_ctx** %11, align 8
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.then162.i, %do.end160.i, %if.then37.i
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %wait_lock.i) #11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  br label %__mutex_lock_common.exit

do.body173.i:                                     ; preds = %if.then88.i, %if.end81.i
  %ret.3.ph.i = phi i32 [ %call89.i, %if.then88.i ], [ -4, %if.end81.i ]
  store volatile i32 0, i32* %__state.i, align 16
  call fastcc void @__mutex_remove_waiter(%struct.mutex* noundef %lock, %struct.mutex_waiter* noundef nonnull %waiter.i) #11
  br label %err_early_kill.i

err_early_kill.i:                                 ; preds = %do.body173.i, %do.end44.i
  %ret.4.i = phi i32 [ %call55.i, %do.end44.i ], [ %ret.3.ph.i, %do.body173.i ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %wait_lock.i) #11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  br label %__mutex_lock_common.exit

__mutex_lock_common.exit:                         ; preds = %if.then8.i, %if.end34.i, %if.end163.i, %err_early_kill.i
  %retval.0.i = phi i32 [ 0, %if.end34.i ], [ 0, %if.end163.i ], [ %ret.4.i, %err_early_kill.i ], [ -114, %if.then8.i ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #12
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #2 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #12, !srcloc !32
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !33
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

attributes #0 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind readnone }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 98459}
!8 = !{i64 0, i64 8}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2152266872}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2147883980, i64 2147884013, i64 2147884066, i64 2147884125, i64 2147884159, i64 2147884214, i64 2147884243, i64 2147884263}
!13 = !{i64 2147889679, i64 2147889712, i64 2147889764, i64 2147889820, i64 2147889853, i64 2147889907, i64 2147889936, i64 2147889956}
!14 = !{i64 2147896238, i64 2147896271, i64 2147896322, i64 2147896378, i64 2147896411, i64 2147896466, i64 2147896495, i64 2147896515}
!15 = !{i64 2149810502}
!16 = !{i64 2149817783}
!17 = !{i64 2149760570}
!18 = !{!"auto-init"}
!19 = !{i64 2152290022}
!20 = !{i64 2152290265}
!21 = !{i64 2152292881}
!22 = !{i64 2152295487}
!23 = !{i64 2152298134}
!24 = !{i64 2152300648}
!25 = !{i64 2152274001}
!26 = !{i64 2152279008}
!27 = !{i64 1491797}
!28 = !{i64 2149437315}
!29 = !{i64 2149437532}
!30 = !{i64 2147857198, i64 2147857709, i64 2147857739, i64 2147857765, i64 2147857797, i64 2147857826}
!31 = !{i64 2147867768, i64 2147868289, i64 2147868319, i64 2147868345, i64 2147868377, i64 2147868406}
!32 = !{i64 2147901188, i64 2147901221, i64 2147901273, i64 2147901332, i64 2147901366, i64 2147901422, i64 2147901451, i64 2147901478}
!33 = !{i64 2147798691, i64 2147799339, i64 2147799369, i64 2147799401, i64 2147799435, i64 2147799471, i64 2147799496}
