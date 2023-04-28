; ModuleID = 'kernel/locking/rwsem.c'
source_filename = "kernel/locking/rwsem.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.lock_class_key = type {}
%struct.rwsem_waiter = type { %struct.list_head, %struct.task_struct*, i32, i64 }
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
%struct.wake_q_head = type { %struct.wake_q_node*, %struct.wake_q_node** }

@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @__init_rwsem(%struct.rw_semaphore* noundef %sem, i8* nocapture noundef readnone %name, %struct.lock_class_key* nocapture noundef readnone %key) local_unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0, i32 0
  store volatile i64 0, i64* %counter.i.i, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %wait_list = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 4
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %wait_list) #9
  %counter.i.i5 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 1, i32 0
  store volatile i64 0, i64* %counter.i.i5, align 8
  %osq = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 2
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @down_read(%struct.rw_semaphore* noundef %sem) local_unnamed_addr #1 section ".sched.text" {
entry:
  call fastcc void @__down_read(%struct.rw_semaphore* noundef %sem) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__down_read(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__down_read_common(%struct.rw_semaphore* noundef %sem, i32 noundef 2) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @down_read_interruptible(%struct.rw_semaphore* noundef %sem) local_unnamed_addr #1 section ".sched.text" {
entry:
  %call = call fastcc i32 @__down_read_interruptible(%struct.rw_semaphore* noundef %sem) #9
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -4
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__down_read_interruptible(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__down_read_common(%struct.rw_semaphore* noundef %sem, i32 noundef 1) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @down_read_killable(%struct.rw_semaphore* noundef %sem) local_unnamed_addr #1 section ".sched.text" {
entry:
  %call = call fastcc i32 @__down_read_killable(%struct.rw_semaphore* noundef %sem) #9
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -4
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__down_read_killable(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__down_read_common(%struct.rw_semaphore* noundef %sem, i32 noundef 258) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @down_read_trylock(%struct.rw_semaphore* noundef %sem) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__down_read_trylock(%struct.rw_semaphore* noundef %sem) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__down_read_trylock(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rw_semaphore* %sem to i8*
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %tmp.0 = phi i64 [ 0, %entry ], [ %call14.i.i.i.i, %do.cond ]
  %add = add nuw i64 %tmp.0, 256
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %0, i64 noundef %tmp.0, i64 noundef %add) #10
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, %tmp.0
  br i1 %cmp.not.i.i.i, label %if.then, label %do.cond, !prof !7

if.then:                                          ; preds = %do.body
  call fastcc void @rwsem_set_reader_owned(%struct.rw_semaphore* noundef %sem) #9
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %and = and i64 %call14.i.i.i.i, -9223372036854775801
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body, label %cleanup

cleanup:                                          ; preds = %do.cond, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %do.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @down_write(%struct.rw_semaphore* noundef %sem) local_unnamed_addr #1 section ".sched.text" {
entry:
  call fastcc void @__down_write(%struct.rw_semaphore* noundef %sem) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__down_write(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__down_write_common(%struct.rw_semaphore* noundef %sem, i32 noundef 2) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef %sem) local_unnamed_addr #1 section ".sched.text" {
entry:
  %call = call fastcc i32 @__down_write_killable(%struct.rw_semaphore* noundef %sem) #9
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -4
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__down_write_killable(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__down_write_common(%struct.rw_semaphore* noundef %sem, i32 noundef 258) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @down_write_trylock(%struct.rw_semaphore* noundef %sem) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__down_write_trylock(%struct.rw_semaphore* noundef %sem) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__down_write_trylock(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @rwsem_write_trylock(%struct.rw_semaphore* noundef %sem) #9
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @up_read(%struct.rw_semaphore* noundef %sem) local_unnamed_addr #1 {
entry:
  call fastcc void @__up_read(%struct.rw_semaphore* noundef %sem) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__up_read(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %count = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return_release(%struct.atomic64_t* noundef %count) #10
  %and = and i64 %call.i.i.i, -253
  %cmp = icmp eq i64 %and, 2
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call fastcc void @clear_nonspinnable(%struct.rw_semaphore* noundef %sem) #9
  call fastcc void @rwsem_wake(%struct.rw_semaphore* noundef %sem) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @up_write(%struct.rw_semaphore* noundef %sem) local_unnamed_addr #1 {
entry:
  call fastcc void @__up_write(%struct.rw_semaphore* noundef %sem) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__up_write(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  call fastcc void @rwsem_clear_owner(%struct.rw_semaphore* noundef %sem) #9
  %count = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_add_release(i64 noundef -1, %struct.atomic64_t* noundef %count) #10
  %and = and i64 %call.i.i.i, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call fastcc void @rwsem_wake(%struct.rw_semaphore* noundef %sem) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @downgrade_write(%struct.rw_semaphore* noundef %sem) local_unnamed_addr #1 {
entry:
  call fastcc void @__downgrade_write(%struct.rw_semaphore* noundef %sem) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__downgrade_write(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %count = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_add_release(i64 noundef 255, %struct.atomic64_t* noundef %count) #10
  call fastcc void @rwsem_set_reader_owned(%struct.rw_semaphore* noundef %sem) #9
  %and = and i64 %call.i.i.i, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @rwsem_downgrade_wake(%struct.rw_semaphore* noundef %sem) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__down_read_common(%struct.rw_semaphore* noundef %sem, i32 noundef %state) unnamed_addr #1 {
entry:
  %count = alloca i64, align 8
  %0 = bitcast i64* %count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 0, i64* %count, align 8, !annotation !9
  %call = call fastcc i1 @rwsem_read_trylock(%struct.rw_semaphore* noundef %sem, i64* noundef nonnull %count) #9
  br i1 %call, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %count, align 8
  %call1 = call fastcc %struct.rw_semaphore* @rwsem_down_read_slowpath(%struct.rw_semaphore* noundef %sem, i64 noundef %1, i32 noundef %state) #9
  %2 = bitcast %struct.rw_semaphore* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %2) #9
  br i1 %call2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -4, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rwsem_read_trylock(%struct.rw_semaphore* noundef %sem, i64* nocapture noundef %cntp) unnamed_addr #1 {
entry:
  %count = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return_acquire(%struct.atomic64_t* noundef %count) #10
  store i64 %call.i.i.i, i64* %cntp, align 8
  %cmp = icmp slt i64 %call.i.i.i, 0
  br i1 %cmp, label %if.then, label %if.end16, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/locking/rwsem.c\22; .popsection; .long 14472b - 14470b; .short 240; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !10
  call fastcc void @rwsem_set_nonspinnable(%struct.rw_semaphore* noundef %sem) #9
  %.pre = load i64, i64* %cntp, align 8
  br label %if.end16

if.end16:                                         ; preds = %entry, %if.then
  %0 = phi i64 [ %call.i.i.i, %entry ], [ %.pre, %if.then ]
  %and = and i64 %0, -9223372036854775801
  %tobool17.not = icmp eq i64 %and, 0
  br i1 %tobool17.not, label %if.then18, label %return

if.then18:                                        ; preds = %if.end16
  call fastcc void @rwsem_set_reader_owned(%struct.rw_semaphore* noundef %sem) #9
  br label %return

return:                                           ; preds = %if.end16, %if.then18
  ret i1 %tobool17.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.rw_semaphore* @rwsem_down_read_slowpath(%struct.rw_semaphore* noundef %sem, i64 noundef %count, i32 noundef %state) unnamed_addr #1 section ".sched.text" {
entry:
  %waiter = alloca %struct.rwsem_waiter, align 8
  %wake_q = alloca %struct.wake_q_head, align 8
  %0 = bitcast %struct.rwsem_waiter* %waiter to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false), !annotation !9
  %1 = bitcast %struct.wake_q_head* %wake_q to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #11
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 1, i32 0
  %2 = load volatile i64, i64* %counter.i.i, align 8
  %and = and i64 %2, 1
  %tobool = icmp ne i64 %and, 0
  %cmp = icmp sgt i64 %count, 511
  %or.cond = and i1 %cmp, %tobool
  %and3 = and i64 %count, 1
  %tobool4.not = icmp eq i64 %and3, 0
  %or.cond170 = and i1 %tobool4.not, %or.cond
  %and5 = and i64 %count, 5
  %tobool6.not = icmp ne i64 %and5, 0
  %3 = or i1 %tobool6.not, %or.cond170
  br i1 %3, label %queue, label %if.then7

if.then7:                                         ; preds = %entry
  call fastcc void @rwsem_set_reader_owned(%struct.rw_semaphore* noundef %sem) #9
  %4 = and i64 %count, -254
  %.not = icmp eq i64 %4, 258
  br i1 %.not, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.then7
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 3
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #9
  %wait_list = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 4
  %call13 = call fastcc i32 @list_empty(%struct.list_head* noundef %wait_list) #9
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  call fastcc void @rwsem_mark_wake(%struct.rw_semaphore* noundef %sem, i32 noundef 2, %struct.wake_q_head* noundef nonnull %wake_q) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then12
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #9
  call void @wake_up_q(%struct.wake_q_head* noundef nonnull %wake_q) #10
  br label %cleanup

queue:                                            ; preds = %entry
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !11
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %task = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %waiter, i64 0, i32 1
  store %struct.task_struct* %6, %struct.task_struct** %task, align 8
  %type = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %waiter, i64 0, i32 2
  store i32 1, i32* %type, align 8
  %7 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %7, 1
  %timeout = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %waiter, i64 0, i32 3
  store i64 %add, i64* %timeout, align 8
  %wait_lock21 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 3
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock21) #9
  %wait_list22 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 4
  %call23 = call fastcc i32 @list_empty(%struct.list_head* noundef %wait_list22) #9
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end34, label %if.then25

if.then25:                                        ; preds = %queue
  %counter.i.i174 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0, i32 0
  %8 = load volatile i64, i64* %counter.i.i174, align 8
  %and28 = and i64 %8, 5
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.then25
  call void asm sideeffect "dmb ishld", "~{memory}"() #11, !srcloc !12
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock21) #9
  call fastcc void @rwsem_set_reader_owned(%struct.rw_semaphore* noundef %sem) #9
  br label %cleanup

if.end34:                                         ; preds = %if.then25, %queue
  %adjustment.0 = phi i64 [ -256, %queue ], [ -254, %if.then25 ]
  %list = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %waiter, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef nonnull %list, %struct.list_head* noundef %wait_list22) #9
  %count36 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %adjustment.0, %struct.atomic64_t* noundef %count36) #10
  %and38 = and i64 %call.i.i.i, -255
  %tobool39.not = icmp eq i64 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %lor.lhs.false

if.then40:                                        ; preds = %if.end34
  call fastcc void @clear_nonspinnable(%struct.rw_semaphore* noundef %sem) #9
  br label %if.then48

lor.lhs.false:                                    ; preds = %if.end34
  %and43 = and i64 %call.i.i.i, 1
  %tobool44.not = icmp ne i64 %and43, 0
  %and46 = and i64 %adjustment.0, 2
  %tobool47.not = icmp eq i64 %and46, 0
  %or.cond173 = or i1 %tobool47.not, %tobool44.not
  br i1 %or.cond173, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.then40, %lor.lhs.false
  call fastcc void @rwsem_mark_wake(%struct.rw_semaphore* noundef %sem, i32 noundef 0, %struct.wake_q_head* noundef nonnull %wake_q) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %lor.lhs.false
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock21) #9
  call void @wake_up_q(%struct.wake_q_head* noundef nonnull %wake_q) #10
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 1
  store volatile i32 %state, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %9 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.task_struct** elementtype(%struct.task_struct*) %task) #11, !srcloc !14
  %tobool72.not178 = icmp eq i64 %9, 0
  br i1 %tobool72.not178, label %do.body94, label %if.end74

if.end74:                                         ; preds = %if.end49, %if.end85
  %call76 = call fastcc i32 @signal_pending_state(i32 noundef %state, %struct.task_struct* noundef %6) #9
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end85, label %if.then78

if.then78:                                        ; preds = %if.end74
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock21) #9
  %10 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool81.not = icmp eq %struct.task_struct* %10, null
  br i1 %tobool81.not, label %if.end83, label %out_nolock

if.end83:                                         ; preds = %if.then78
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock21) #9
  br label %do.body94

if.end85:                                         ; preds = %if.end74
  call void @schedule() #10
  store volatile i32 %state, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %11 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.task_struct** elementtype(%struct.task_struct*) %task) #11, !srcloc !14
  %tobool72.not = icmp eq i64 %11, 0
  br i1 %tobool72.not, label %do.body94, label %if.end74

do.body94:                                        ; preds = %if.end85, %if.end49, %if.end83
  store volatile i32 0, i32* %__state, align 16
  br label %cleanup

out_nolock:                                       ; preds = %if.then78
  call fastcc void @list_del(%struct.list_head* noundef nonnull %list) #9
  %call105 = call fastcc i32 @list_empty(%struct.list_head* noundef %wait_list22) #9
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end109, label %if.then107

if.then107:                                       ; preds = %out_nolock
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef 6, %struct.atomic64_t* noundef %count36) #10
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %out_nolock
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock21) #9
  store volatile i32 0, i32* %__state, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end16, %if.end109, %do.body94, %if.then30
  %retval.0 = phi %struct.rw_semaphore* [ inttoptr (i64 -4 to %struct.rw_semaphore*), %if.end109 ], [ %sem, %do.body94 ], [ %sem, %if.then30 ], [ %sem, %if.end16 ], [ %sem, %if.then7 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #11
  ret %struct.rw_semaphore* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rwsem_set_nonspinnable(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %owner1 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 1
  %counter.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %owner1, i64 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = bitcast %struct.atomic64_t* %owner1 to i8*
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %owner.0 = phi i64 [ %0, %entry ], [ %call14.i.i.i.i, %do.cond ]
  %2 = and i64 %owner.0, 3
  %3 = icmp eq i64 %2, 1
  br i1 %3, label %do.cond, label %do.end

do.cond:                                          ; preds = %do.body
  %or = or i64 %owner.0, 2
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %1, i64 noundef %owner.0, i64 noundef %or) #10
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, %owner.0
  br i1 %cmp.not.i.i.i, label %do.end, label %do.body, !prof !7

do.end:                                           ; preds = %do.cond, %do.body
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rwsem_set_reader_owned(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  call fastcc void @__rwsem_set_reader_owned(%struct.rw_semaphore* noundef %sem, %struct.task_struct* noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return_acquire(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 256, i64* elementtype(i64) %counter) #11, !srcloc !15
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #11, !srcloc !16
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__rwsem_set_reader_owned(%struct.rw_semaphore* noundef %sem, %struct.task_struct* noundef %owner) unnamed_addr #0 {
entry:
  %0 = ptrtoint %struct.task_struct* %owner to i64
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 1, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %and = and i64 %1, 2
  %or = or i64 %and, %0
  %or2 = or i64 %or, 1
  store volatile i64 %or2, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rwsem_mark_wake(%struct.rw_semaphore* noundef %sem, i32 noundef %wake_type, %struct.wake_q_head* noundef %wake_q) unnamed_addr #1 {
entry:
  %wlist = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %wlist to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  %wait_list = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 4
  %1 = bitcast %struct.list_head* %wait_list to %struct.rwsem_waiter**
  %2 = load %struct.rwsem_waiter*, %struct.rwsem_waiter** %1, align 8
  %type = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %2, i64 0, i32 2
  %3 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %wake_type, 0
  br i1 %cmp5, label %if.then6, label %cleanup139

if.then6:                                         ; preds = %if.then
  %task = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %2, i64 0, i32 1
  %4 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  call void @wake_q_add(%struct.wake_q_head* noundef %wake_q, %struct.task_struct* noundef %4) #10
  br label %cleanup139

if.end7:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0, i32 0
  %5 = load volatile i64, i64* %counter.i.i, align 8
  %cmp8 = icmp slt i64 %5, 0
  br i1 %cmp8, label %cleanup139, label %if.end11, !prof !8

if.end11:                                         ; preds = %if.end7
  %cmp12.not = icmp eq i32 %wake_type, 2
  br i1 %cmp12.not, label %if.end37, label %if.then14

if.then14:                                        ; preds = %if.end11
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_add(%struct.atomic64_t* noundef %count) #10
  %and = and i64 %call.i.i.i, 1
  %tobool17.not = icmp eq i64 %and, 0
  br i1 %tobool17.not, label %cleanup.thread, label %if.then25, !prof !7

if.then25:                                        ; preds = %if.then14
  %and26 = and i64 %call.i.i.i, 4
  %tobool27.not = icmp eq i64 %and26, 0
  br i1 %tobool27.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.then25
  %timeout = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %2, i64 0, i32 3
  %6 = load i64, i64* %timeout, align 8
  %7 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %6, %7
  %cmp28 = icmp slt i64 %sub, 0
  %spec.select.neg = select i1 %cmp28, i64 -252, i64 -256
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then14
  %task36 = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %2, i64 0, i32 1
  %8 = load %struct.task_struct*, %struct.task_struct** %task36, align 8
  call fastcc void @__rwsem_set_reader_owned(%struct.rw_semaphore* noundef %sem, %struct.task_struct* noundef %8) #9
  br label %if.end37

cleanup:                                          ; preds = %if.then25, %land.lhs.true
  %adjustment.0.neg = phi i64 [ -256, %if.then25 ], [ %spec.select.neg, %land.lhs.true ]
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %adjustment.0.neg, %struct.atomic64_t* noundef %count) #10
  br label %cleanup139

if.end37:                                         ; preds = %cleanup.thread, %if.end11
  %adjustment.2.neg = phi i64 [ 0, %if.end11 ], [ -256, %cleanup.thread ]
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %wlist) #9
  %9 = load %struct.rwsem_waiter*, %struct.rwsem_waiter** %1, align 8
  %list53208 = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %9, i64 0, i32 0
  %cmp55.not209 = icmp eq %struct.list_head* %list53208, %wait_list
  br i1 %cmp55.not209, label %for.end, label %for.body

for.body:                                         ; preds = %if.end37, %for.inc
  %list53213 = phi %struct.list_head* [ %list53, %for.inc ], [ %list53208, %if.end37 ]
  %waiter.0211 = phi %struct.rwsem_waiter* [ %tmp.0212, %for.inc ], [ %9, %if.end37 ]
  %woken.0210 = phi i64 [ %woken.1, %for.inc ], [ 0, %if.end37 ]
  %tmp.0212.in = bitcast %struct.rwsem_waiter* %waiter.0211 to %struct.rwsem_waiter**
  %tmp.0212 = load %struct.rwsem_waiter*, %struct.rwsem_waiter** %tmp.0212.in, align 8
  %type59 = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %waiter.0211, i64 0, i32 2
  %10 = load i32, i32* %type59, align 8
  %cmp60 = icmp eq i32 %10, 0
  br i1 %cmp60, label %for.inc, label %if.end63

if.end63:                                         ; preds = %for.body
  %inc = add i64 %woken.0210, 1
  call fastcc void @list_move_tail(%struct.list_head* noundef %list53213, %struct.list_head* noundef nonnull %wlist) #9
  %cmp65 = icmp sgt i64 %inc, 255
  br i1 %cmp65, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end63, %for.body
  %woken.1 = phi i64 [ %woken.0210, %for.body ], [ %inc, %if.end63 ]
  %list53 = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %tmp.0212, i64 0, i32 0
  %cmp55.not = icmp eq %struct.list_head* %list53, %wait_list
  br i1 %cmp55.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end63, %if.end37
  %woken.2 = phi i64 [ 0, %if.end37 ], [ %inc, %if.end63 ], [ %woken.1, %for.inc ]
  %mul = shl i64 %woken.2, 8
  %sub77 = add i64 %mul, %adjustment.2.neg
  %call79 = call fastcc i32 @list_empty(%struct.list_head* noundef %wait_list) #9
  %tobool80.not = icmp eq i32 %call79, 0
  %sub82 = add i64 %sub77, -2
  %spec.select202 = select i1 %tobool80.not, i64 %sub77, i64 %sub82
  %tobool84.not = icmp eq i64 %woken.2, 0
  br i1 %tobool84.not, label %if.end92, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %for.end
  %11 = load volatile i64, i64* %counter.i.i, align 8
  %and88 = and i64 %11, 4
  %tobool89.not = icmp eq i64 %and88, 0
  %sub91 = add i64 %spec.select202, -4
  %spec.select203 = select i1 %tobool89.not, i64 %spec.select202, i64 %sub91
  br label %if.end92

if.end92:                                         ; preds = %land.lhs.true85, %for.end
  %adjustment.4 = phi i64 [ %spec.select202, %for.end ], [ %spec.select203, %land.lhs.true85 ]
  %tobool93.not = icmp eq i64 %adjustment.4, 0
  br i1 %tobool93.not, label %if.end96, label %if.then94

if.then94:                                        ; preds = %if.end92
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %adjustment.4, %struct.atomic64_t* noundef %count) #10
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end92
  %12 = bitcast %struct.list_head* %wlist to %struct.rwsem_waiter**
  %13 = load %struct.rwsem_waiter*, %struct.rwsem_waiter** %12, align 8
  %list113215 = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %13, i64 0, i32 0
  %cmp114.not216 = icmp eq %struct.list_head* %list113215, %wlist
  br i1 %cmp114.not216, label %cleanup139, label %for.body118

for.body118:                                      ; preds = %if.end96, %for.body118
  %waiter.1217 = phi %struct.rwsem_waiter* [ %tmp.1, %for.body118 ], [ %13, %if.end96 ]
  %tmp.1.in = bitcast %struct.rwsem_waiter* %waiter.1217 to %struct.rwsem_waiter**
  %tmp.1 = load %struct.rwsem_waiter*, %struct.rwsem_waiter** %tmp.1.in, align 8
  %task119 = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %waiter.1217, i64 0, i32 1
  %14 = load %struct.task_struct*, %struct.task_struct** %task119, align 8
  call fastcc void @get_task_struct(%struct.task_struct* noundef %14) #9
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.task_struct** elementtype(%struct.task_struct*) %task119, i64 0) #11, !srcloc !18
  call void @wake_q_add_safe(%struct.wake_q_head* noundef %wake_q, %struct.task_struct* noundef %14) #10
  %list113 = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %tmp.1, i64 0, i32 0
  %cmp114.not = icmp eq %struct.list_head* %list113, %wlist
  br i1 %cmp114.not, label %cleanup139, label %for.body118

cleanup139:                                       ; preds = %for.body118, %if.end96, %cleanup, %if.end7, %if.then, %if.then6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call fastcc void @arch_local_irq_enable() #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(%struct.wake_q_head* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_nonspinnable(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @rwsem_test_oflags(%struct.rw_semaphore* noundef %sem) #9
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %owner = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 1
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef 2, %struct.atomic64_t* noundef %owner) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending_state(i32 noundef %state, %struct.task_struct* noundef %p) unnamed_addr #5 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #6

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
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #9
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #11, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_acq_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #11, !srcloc !21
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_acq_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #11, !srcloc !22
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(%struct.wake_q_head* noundef, %struct.task_struct* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #9
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_task_struct(%struct.task_struct* noundef %t) unnamed_addr #1 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add_safe(%struct.wake_q_head* noundef, %struct.task_struct* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_add(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_add\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09add\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 256, i64* elementtype(i64) %counter) #11, !srcloc !23
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #11, !srcloc !24
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
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #10
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !8

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !7

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #10
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
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #11, !srcloc !25
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #11, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #11, !srcloc !27
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
define internal fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #11, !srcloc !28
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rwsem_test_oflags(%struct.rw_semaphore* noundef %sem) unnamed_addr #5 {
entry:
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 1, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %and = and i64 %0, 2
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !7

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #7 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #9
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #9
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #9
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #9
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #5 {
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
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #3 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #11, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__down_write_common(%struct.rw_semaphore* noundef %sem, i32 noundef %state) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @rwsem_write_trylock(%struct.rw_semaphore* noundef %sem) #9
  br i1 %call, label %if.end6, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  %call3 = call fastcc %struct.rw_semaphore* @rwsem_down_write_slowpath(%struct.rw_semaphore* noundef %sem, i32 noundef %state) #9
  %0 = bitcast %struct.rw_semaphore* %call3 to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %0) #9
  br i1 %call4, label %return, label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  br label %return

return:                                           ; preds = %if.then, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -4, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rwsem_write_trylock(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.rw_semaphore* %sem to i8*
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %0, i64 noundef 0, i64 noundef 1) #10
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  call fastcc void @rwsem_set_owner(%struct.rw_semaphore* noundef %sem) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  ret i1 %cmp.not.i.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.rw_semaphore* @rwsem_down_write_slowpath(%struct.rw_semaphore* noundef %sem, i32 noundef %state) unnamed_addr #1 {
entry:
  %waiter = alloca %struct.rwsem_waiter, align 8
  %wake_q = alloca %struct.wake_q_head, align 8
  %0 = bitcast %struct.rwsem_waiter* %waiter to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false), !annotation !9
  %1 = bitcast %struct.wake_q_head* %wake_q to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #11
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  %call = call fastcc i1 @rwsem_can_spin_on_owner(%struct.rw_semaphore* noundef %sem) #9
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call fastcc i1 @rwsem_optimistic_spin(%struct.rw_semaphore* noundef %sem) #9
  br i1 %call2, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !11
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %task = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %waiter, i64 0, i32 1
  store %struct.task_struct* %3, %struct.task_struct** %task, align 8
  %type = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %waiter, i64 0, i32 2
  store i32 0, i32* %type, align 8
  %4 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %4, 1
  %timeout = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %waiter, i64 0, i32 3
  store i64 %add, i64* %timeout, align 8
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 3
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #9
  %wait_list = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 4
  %call4 = call fastcc i32 @list_empty(%struct.list_head* noundef %wait_list) #9
  %tobool.not = icmp ne i32 %call4, 0
  %cond = zext i1 %tobool.not to i32
  %list = getelementptr inbounds %struct.rwsem_waiter, %struct.rwsem_waiter* %waiter, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef nonnull %list, %struct.list_head* noundef %wait_list) #9
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0, i32 0
  %5 = load volatile i64, i64* %counter.i.i, align 8
  %and = and i64 %5, 1
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %if.end11, label %do.body28

if.end11:                                         ; preds = %if.then6
  %tobool13.not = icmp ugt i64 %5, 255
  %cond14 = zext i1 %tobool13.not to i32
  call fastcc void @rwsem_mark_wake(%struct.rw_semaphore* noundef %sem, i32 noundef %cond14, %struct.wake_q_head* noundef nonnull %wake_q) #9
  %call15 = call fastcc i1 @wake_q_empty(%struct.wake_q_head* noundef nonnull %wake_q) #9
  br i1 %call15, label %do.body28, label %if.then16

if.then16:                                        ; preds = %if.end11
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #9
  call void @wake_up_q(%struct.wake_q_head* noundef nonnull %wake_q) #10
  call fastcc void @wake_q_init(%struct.wake_q_head* noundef nonnull %wake_q) #9
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #9
  br label %do.body28

if.else:                                          ; preds = %if.end
  %count20 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %count20) #10
  br label %do.body28

do.body28:                                        ; preds = %if.else, %if.then16, %if.end11, %if.then6
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 1
  store volatile i32 %state, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !30
  %call38217 = call fastcc i1 @rwsem_try_write_lock(%struct.rw_semaphore* noundef %sem, i32 noundef %cond) #9
  br i1 %call38217, label %do.body111, label %if.end40.lr.ph

if.end40.lr.ph:                                   ; preds = %do.body28
  %6 = bitcast %struct.list_head* %wait_list to %struct.rwsem_waiter**
  %counter.i.i199 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0, i32 0
  br label %if.end40

if.end40:                                         ; preds = %if.end40.lr.ph, %trylock_again
  %wstate.0218 = phi i32 [ %cond, %if.end40.lr.ph ], [ %wstate.3, %trylock_again ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #9
  %cmp42 = icmp eq i32 %wstate.0218, 2
  br i1 %cmp42, label %land.lhs.true43, label %if.end47

land.lhs.true43:                                  ; preds = %if.end40
  %call44 = call fastcc i32 @rwsem_spin_on_owner(%struct.rw_semaphore* noundef %sem) #9
  %cmp45 = icmp eq i32 %call44, 1
  br i1 %cmp45, label %trylock_again, label %if.end47

if.end47:                                         ; preds = %land.lhs.true43, %if.end40
  %call50213 = call fastcc i32 @signal_pending_state(i32 noundef %state, %struct.task_struct* noundef %3) #9
  %tobool51.not214 = icmp eq i32 %call50213, 0
  br i1 %tobool51.not214, label %if.end53, label %do.body130

if.end53:                                         ; preds = %if.end47, %if.end100
  %wstate.1215 = phi i32 [ %wstate.2207210, %if.end100 ], [ %wstate.0218, %if.end47 ]
  call void @schedule() #10
  store volatile i32 %state, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !31
  switch i32 %wstate.1215, label %if.end85.thread [
    i32 2, label %trylock_again
    i32 0, label %if.end85
  ]

if.end85:                                         ; preds = %if.end53
  %7 = load %struct.rwsem_waiter*, %struct.rwsem_waiter** %6, align 8
  %cmp83 = icmp eq %struct.rwsem_waiter* %7, %waiter
  %8 = load volatile i64, i64* %counter.i.i199, align 8
  %and88 = and i64 %8, -255
  %tobool89.not = icmp eq i64 %and88, 0
  br i1 %tobool89.not, label %trylock_again.loopexit.split.loop.exit, label %if.end91

if.end85.thread:                                  ; preds = %if.end53
  %9 = load volatile i64, i64* %counter.i.i199, align 8
  %and88204 = and i64 %9, -255
  %tobool89.not205 = icmp eq i64 %and88204, 0
  br i1 %tobool89.not205, label %trylock_again, label %land.lhs.true93

if.end91:                                         ; preds = %if.end85
  br i1 %cmp83, label %land.lhs.true93, label %if.end100

land.lhs.true93:                                  ; preds = %if.end85.thread, %if.end91
  %call95 = call fastcc i32 @rt_task(%struct.task_struct* noundef %3) #9
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %lor.lhs.false, label %trylock_again

lor.lhs.false:                                    ; preds = %land.lhs.true93
  %10 = load i64, i64* %timeout, align 8
  %11 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %10, %11
  %cmp98 = icmp slt i64 %sub, 0
  br i1 %cmp98, label %trylock_again, label %if.end100

if.end100:                                        ; preds = %lor.lhs.false, %if.end91
  %wstate.2207210 = phi i32 [ 1, %lor.lhs.false ], [ 0, %if.end91 ]
  %call50 = call fastcc i32 @signal_pending_state(i32 noundef %state, %struct.task_struct* noundef %3) #9
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %do.body130

trylock_again.loopexit.split.loop.exit:           ; preds = %if.end85
  %spec.select198.le = zext i1 %cmp83 to i32
  br label %trylock_again

trylock_again:                                    ; preds = %if.end53, %lor.lhs.false, %land.lhs.true93, %if.end85.thread, %trylock_again.loopexit.split.loop.exit, %land.lhs.true43
  %wstate.3 = phi i32 [ 2, %land.lhs.true43 ], [ %spec.select198.le, %trylock_again.loopexit.split.loop.exit ], [ %wstate.1215, %if.end53 ], [ 2, %lor.lhs.false ], [ 2, %land.lhs.true93 ], [ 1, %if.end85.thread ]
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #9
  %call38 = call fastcc i1 @rwsem_try_write_lock(%struct.rw_semaphore* noundef %sem, i32 noundef %wstate.3) #9
  br i1 %call38, label %do.body111, label %if.end40

do.body111:                                       ; preds = %trylock_again, %do.body28
  store volatile i32 0, i32* %__state, align 16
  call fastcc void @list_del(%struct.list_head* noundef nonnull %list) #9
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #9
  br label %cleanup

do.body130:                                       ; preds = %if.end47, %if.end100
  %wstate.1.lcssa = phi i32 [ %wstate.2207210, %if.end100 ], [ %wstate.0218, %if.end47 ]
  store volatile i32 0, i32* %__state, align 16
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #9
  call fastcc void @list_del(%struct.list_head* noundef nonnull %list) #9
  %cmp141 = icmp eq i32 %wstate.1.lcssa, 2
  br i1 %cmp141, label %if.then144, label %if.end146, !prof !8

if.then144:                                       ; preds = %do.body130
  %count145 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0
  call fastcc void @__ll_sc_atomic64_add(i64 noundef -4, %struct.atomic64_t* noundef %count145) #10
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %do.body130
  %call148 = call fastcc i32 @list_empty(%struct.list_head* noundef %wait_list) #9
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.else152, label %if.then150

if.then150:                                       ; preds = %if.end146
  %count151 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef 2, %struct.atomic64_t* noundef %count151) #10
  br label %if.end153

if.else152:                                       ; preds = %if.end146
  call fastcc void @rwsem_mark_wake(%struct.rw_semaphore* noundef %sem, i32 noundef 0, %struct.wake_q_head* noundef nonnull %wake_q) #9
  br label %if.end153

if.end153:                                        ; preds = %if.else152, %if.then150
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #9
  call void @wake_up_q(%struct.wake_q_head* noundef nonnull %wake_q) #10
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end153, %do.body111
  %retval.0 = phi %struct.rw_semaphore* [ %sem, %do.body111 ], [ inttoptr (i64 -4 to %struct.rw_semaphore*), %if.end153 ], [ %sem, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #11
  ret %struct.rw_semaphore* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rwsem_set_owner(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !11
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 1, i32 0
  store volatile i64 %0, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rwsem_can_spin_on_owner(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 0, i64* %flags, align 8, !annotation !9
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !11
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = getelementptr %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %3, i32 noundef 1) #10
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !32
  call fastcc void @__rcu_read_lock() #10
  %call1 = call fastcc %struct.task_struct* @rwsem_owner_flags(%struct.rw_semaphore* noundef %sem, i64* noundef nonnull %flags) #9
  %4 = load i64, i64* %flags, align 8
  %and = and i64 %4, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %tobool2.not = icmp ne %struct.task_struct* %call1, null
  %and3 = and i64 %4, 1
  %tobool4.not = icmp eq i64 %and3, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %land.lhs.true5, label %if.end8

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %call6 = call fastcc i1 @owner_on_cpu(%struct.task_struct* noundef nonnull %call1) #9
  br i1 %call6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %land.lhs.true5, %if.end
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true5, %lor.lhs.false
  %ret.0.off0 = phi i1 [ false, %if.then7 ], [ true, %land.lhs.true5 ], [ true, %lor.lhs.false ]
  call fastcc void @rcu_read_unlock() #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !33
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i1 [ %ret.0.off0, %if.end8 ], [ false, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rwsem_optimistic_spin(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %osq = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 2
  %call = call i1 @osq_lock(%struct.optimistic_spin_queue* noundef %osq) #10
  br i1 %call, label %for.cond.preheader, label %done

for.cond.preheader:                               ; preds = %entry
  %call171 = call fastcc i32 @rwsem_spin_on_owner(%struct.rw_semaphore* noundef %sem) #9
  %and72 = and i32 %call171, 7
  %tobool.not73 = icmp eq i32 %and72, 0
  br i1 %tobool.not73, label %for.end, label %if.end3

if.end3:                                          ; preds = %for.cond.preheader, %cleanup
  %call177 = phi i32 [ %call1, %cleanup ], [ %call171, %for.cond.preheader ]
  %rspin_threshold.076 = phi i64 [ %rspin_threshold.163, %cleanup ], [ 0, %for.cond.preheader ]
  %loop.075 = phi i32 [ %loop.161, %cleanup ], [ 0, %for.cond.preheader ]
  %prev_owner_state.074 = phi i32 [ %call177, %cleanup ], [ 1, %for.cond.preheader ]
  %call4 = call fastcc i1 @rwsem_try_write_lock_unqueued(%struct.rw_semaphore* noundef %sem) #9
  br i1 %call4, label %for.end, label %if.end7

if.end7:                                          ; preds = %if.end3
  switch i32 %call177, label %if.then24 [
    i32 4, label %if.then8
    i32 2, label %cleanup
  ]

if.then8:                                         ; preds = %if.end7
  %cmp9.not = icmp eq i32 %prev_owner_state.074, 4
  br i1 %cmp9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then8
  %call11 = call fastcc i1 @rwsem_test_oflags(%struct.rw_semaphore* noundef %sem) #9
  br i1 %call11, label %for.end, label %if.end13

if.end13:                                         ; preds = %if.then10
  %call14 = call fastcc i64 @rwsem_rspin_threshold(%struct.rw_semaphore* noundef %sem) #9
  br label %if.then24

if.else:                                          ; preds = %if.then8
  %inc = add i32 %loop.075, 1
  %and15 = and i32 %inc, 15
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %land.lhs.true, label %if.then24

land.lhs.true:                                    ; preds = %if.else
  %call17 = call i64 @sched_clock() #10
  %cmp18 = icmp ugt i64 %call17, %rspin_threshold.076
  br i1 %cmp18, label %if.then19, label %if.then24

if.then19:                                        ; preds = %land.lhs.true
  call fastcc void @rwsem_set_nonspinnable(%struct.rw_semaphore* noundef %sem) #9
  br label %for.end

if.then24:                                        ; preds = %if.end7, %if.else, %land.lhs.true, %if.end13
  %rspin_threshold.162 = phi i64 [ %rspin_threshold.076, %land.lhs.true ], [ %rspin_threshold.076, %if.else ], [ %call14, %if.end13 ], [ %rspin_threshold.076, %if.end7 ]
  %loop.160 = phi i32 [ %inc, %land.lhs.true ], [ %inc, %if.else ], [ 0, %if.end13 ], [ %loop.075, %if.end7 ]
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 1) #10
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %if.end27, label %for.end

if.end27:                                         ; preds = %if.then24
  %call29 = call fastcc i32 @rt_task(%struct.task_struct* noundef %1) #9
  %tobool30 = icmp ne i32 %call29, 0
  %cmp32 = icmp ne i32 %prev_owner_state.074, 2
  %or.cond = select i1 %tobool30, i1 %cmp32, i1 false
  br i1 %or.cond, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end27
  %rspin_threshold.163 = phi i64 [ %rspin_threshold.162, %if.end27 ], [ %rspin_threshold.076, %if.end7 ]
  %loop.161 = phi i32 [ %loop.160, %if.end27 ], [ %loop.075, %if.end7 ]
  call fastcc void @cpu_relax() #9
  %call1 = call fastcc i32 @rwsem_spin_on_owner(%struct.rw_semaphore* noundef %sem) #9
  %and = and i32 %call1, 7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end, label %if.end3

for.end:                                          ; preds = %if.end27, %if.then24, %if.then10, %if.end3, %cleanup, %for.cond.preheader, %if.then19
  %extract.t = phi i1 [ false, %if.then19 ], [ false, %for.cond.preheader ], [ false, %if.end27 ], [ false, %if.then24 ], [ false, %if.then10 ], [ true, %if.end3 ], [ false, %cleanup ]
  call void @osq_unlock(%struct.optimistic_spin_queue* noundef %osq) #10
  br label %done

done:                                             ; preds = %entry, %for.end
  %taken.2.off0 = phi i1 [ %extract.t, %for.end ], [ false, %entry ]
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !35
  ret i1 %taken.2.off0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @wake_q_empty(%struct.wake_q_head* nocapture noundef readonly %head) unnamed_addr #7 {
entry:
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %head, i64 0, i32 0
  %0 = load %struct.wake_q_node*, %struct.wake_q_node** %first, align 8
  %cmp = icmp eq %struct.wake_q_node* %0, inttoptr (i64 1 to %struct.wake_q_node*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @wake_q_init(%struct.wake_q_head* noundef %head) unnamed_addr #8 {
entry:
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %head, i64 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %head, i64 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rwsem_try_write_lock(%struct.rw_semaphore* noundef %sem, i32 noundef %wstate) unnamed_addr #1 {
entry:
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %cmp = icmp eq i32 %wstate, 0
  %cmp9 = icmp ne i32 %wstate, 2
  %wait_list = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 4
  %1 = bitcast %struct.rw_semaphore* %sem to i8*
  br label %do.body2

do.body2:                                         ; preds = %do.cond20, %entry
  %count.0 = phi i64 [ %0, %entry ], [ %call14.i.i.i.i, %do.cond20 ]
  %and = and i64 %count.0, 4
  %tobool = icmp ne i64 %and, 0
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %cleanup29, label %if.end

if.end:                                           ; preds = %do.body2
  %and5 = and i64 %count.0, -255
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end
  %or12 = and i64 %count.0, -6
  %and13 = or i64 %or12, 1
  %call14 = call fastcc i32 @list_is_singular(%struct.list_head* noundef %wait_list) #9
  %tobool15.not = icmp eq i32 %call14, 0
  %and17 = and i64 %and13, -7
  %spec.select = select i1 %tobool15.not, i64 %and13, i64 %and17
  br label %do.cond20

cleanup:                                          ; preds = %if.end
  %or.cond31 = or i1 %cmp9, %tobool
  %or = or i64 %count.0, 4
  br i1 %or.cond31, label %cleanup29, label %do.cond20

do.cond20:                                        ; preds = %cleanup.thread, %cleanup
  %new.250 = phi i64 [ %spec.select, %cleanup.thread ], [ %or, %cleanup ]
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %1, i64 noundef %count.0, i64 noundef %new.250) #10
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, %count.0
  br i1 %cmp.not.i.i.i, label %do.end24, label %do.body2, !prof !7

do.end24:                                         ; preds = %do.cond20
  %and25 = and i64 %new.250, 4
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %if.end28, label %cleanup29

if.end28:                                         ; preds = %do.end24
  call fastcc void @rwsem_set_owner(%struct.rw_semaphore* noundef %sem) #9
  br label %cleanup29

cleanup29:                                        ; preds = %do.body2, %cleanup, %do.end24, %if.end28
  %retval.2 = phi i1 [ true, %if.end28 ], [ false, %do.end24 ], [ false, %cleanup ], [ false, %do.body2 ]
  ret i1 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rwsem_spin_on_owner(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %new_flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 0, i64* %flags, align 8, !annotation !9
  %1 = bitcast i64* %new_flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  store i64 0, i64* %new_flags, align 8, !annotation !9
  %call = call fastcc %struct.task_struct* @rwsem_owner_flags(%struct.rw_semaphore* noundef %sem, i64* noundef nonnull %flags) #9
  %2 = load i64, i64* %flags, align 8
  %call1 = call fastcc i32 @rwsem_owner_state(%struct.task_struct* noundef %call, i64 noundef %2) #9
  %cmp.not = icmp eq i32 %call1, 2
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #10
  %call227 = call fastcc %struct.task_struct* @rwsem_owner_flags(%struct.rw_semaphore* noundef %sem, i64* noundef nonnull %new_flags) #9
  %cmp3.not28 = icmp eq %struct.task_struct* %call227, %call
  %3 = load i64, i64* %new_flags, align 8
  %cmp4.not29 = icmp eq i64 %3, %2
  %or.cond30 = select i1 %cmp3.not28, i1 %cmp4.not29, i1 false
  br i1 %or.cond30, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end12, %if.end
  %4 = phi i64 [ %3, %if.end ], [ %8, %if.end12 ]
  %call2.lcssa = phi %struct.task_struct* [ %call227, %if.end ], [ %call2, %if.end12 ]
  %call6 = call fastcc i32 @rwsem_owner_state(%struct.task_struct* noundef %call2.lcssa, i64 noundef %4) #9
  br label %for.end

if.end7:                                          ; preds = %if.end, %if.end12
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !11
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %7 = getelementptr %struct.task_struct, %struct.task_struct* %6, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %7, i32 noundef 1) #10
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false9, label %for.end

lor.lhs.false9:                                   ; preds = %if.end7
  %call10 = call fastcc i1 @owner_on_cpu(%struct.task_struct* noundef %call) #9
  br i1 %call10, label %if.end12, label %for.end

if.end12:                                         ; preds = %lor.lhs.false9
  call fastcc void @cpu_relax() #9
  %call2 = call fastcc %struct.task_struct* @rwsem_owner_flags(%struct.rw_semaphore* noundef %sem, i64* noundef nonnull %new_flags) #9
  %cmp3.not = icmp eq %struct.task_struct* %call2, %call
  %8 = load i64, i64* %new_flags, align 8
  %cmp4.not = icmp eq i64 %8, %2
  %or.cond = select i1 %cmp3.not, i1 %cmp4.not, i1 false
  br i1 %or.cond, label %if.end7, label %if.then5

for.end:                                          ; preds = %if.end7, %lor.lhs.false9, %if.then5
  %state.0 = phi i32 [ %call6, %if.then5 ], [ 8, %lor.lhs.false9 ], [ 8, %if.end7 ]
  call fastcc void @rcu_read_unlock() #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %state.0, %for.end ], [ %call1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rt_task(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #7 {
entry:
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %call = call fastcc i32 @rt_prio(i32 noundef %0) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.task_struct* @rwsem_owner_flags(%struct.rw_semaphore* noundef %sem, i64* nocapture noundef writeonly %pflags) unnamed_addr #5 {
entry:
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 1, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %and = and i64 %0, 3
  store i64 %and, i64* %pflags, align 8
  %and2 = and i64 %0, -4
  %1 = inttoptr i64 %and2 to %struct.task_struct*
  ret %struct.task_struct* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @owner_on_cpu(%struct.task_struct* noundef %owner) unnamed_addr #5 {
entry:
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %owner, i64 0, i32 6
  %0 = load i32, i32* %on_cpu, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  call fastcc void @task_cpu(%struct.task_struct* noundef %owner) #9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = xor i1 %tobool.not, true
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @task_cpu(%struct.task_struct* noundef %p) unnamed_addr #5 {
entry:
  %cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 8
  %0 = load volatile i32, i32* %cpu, align 64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !38
  call void @rcu_read_unlock_strict() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @osq_lock(%struct.optimistic_spin_queue* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rwsem_try_write_lock_unqueued(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = bitcast %struct.rw_semaphore* %sem to i8*
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %count.0 = phi i64 [ %0, %entry ], [ %call14.i.i.i.i, %while.body ]
  %and = and i64 %count.0, -251
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %while.body, label %cleanup

while.body:                                       ; preds = %while.cond
  %or = or i64 %count.0, 1
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_acq_64(i8* noundef %1, i64 noundef %count.0, i64 noundef %or) #10
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, %count.0
  br i1 %cmp.not.i.i.i, label %if.then, label %while.cond, !prof !7

if.then:                                          ; preds = %while.body
  call fastcc void @rwsem_set_owner(%struct.rw_semaphore* noundef %sem) #9
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.then
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rwsem_rspin_threshold(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = lshr i64 %0, 8
  %conv = trunc i64 %1 to i32
  %2 = icmp slt i32 %conv, 30
  %.op = shl i64 %1, 32
  %.op.op = add i64 %.op, 85899345920
  %.op.op.op = ashr exact i64 %.op.op, 32
  %.op.op.op.op.op = mul nsw i64 %.op.op.op, 500
  %div = select i1 %2, i64 %.op.op.op.op.op, i64 25000
  %call4 = call i64 @sched_clock() #10
  %add5 = add i64 %div, %call4
  ret i64 %add5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #1 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #11, !srcloc !39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @osq_unlock(%struct.optimistic_spin_queue* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 2, i64* elementtype(i64) %counter) #11, !srcloc !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_is_singular(%struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %cmp = icmp eq %struct.list_head* %0, %1
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rwsem_owner_state(%struct.task_struct* noundef readnone %owner, i64 noundef %flags) unnamed_addr #3 {
entry:
  %and = and i64 %flags, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %and1 = and i64 %flags, 1
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq %struct.task_struct* %owner, null
  %cond = select i1 %tobool5.not, i32 1, i32 2
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %cond, %if.end4 ], [ 8, %entry ], [ 4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rt_prio(i32 noundef %prio) unnamed_addr #3 {
entry:
  %cmp = icmp slt i32 %prio, 100
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rwsem_wake(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %wake_q = alloca %struct.wake_q_head, align 8
  %0 = bitcast %struct.wake_q_head* %wake_q to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 3
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %wait_lock) #9
  %wait_list = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 4
  %call2 = call fastcc i32 @list_empty(%struct.list_head* noundef %wait_list) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %do.body3

if.then:                                          ; preds = %entry
  call fastcc void @rwsem_mark_wake(%struct.rw_semaphore* noundef %sem, i32 noundef 0, %struct.wake_q_head* noundef nonnull %wake_q) #9
  br label %do.body3

do.body3:                                         ; preds = %entry, %if.then
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %wait_lock, i64 noundef %call) #9
  call void @wake_up_q(%struct.wake_q_head* noundef nonnull %wake_q) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return_release(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 -256, i64* elementtype(i64) %counter) #11, !srcloc !41
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !42
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !43
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #9
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #11, !srcloc !44
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #11, !srcloc !45
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #11, !srcloc !46
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @rwsem_clear_owner(%struct.rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 1, i32 0
  store volatile i64 0, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_add_release(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_add_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09add\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #11, !srcloc !47
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rwsem_downgrade_wake(%struct.rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  %wake_q = alloca %struct.wake_q_head, align 8
  %0 = bitcast %struct.wake_q_head* %wake_q to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 3
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %wait_lock) #9
  %wait_list = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 4
  %call2 = call fastcc i32 @list_empty(%struct.list_head* noundef %wait_list) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %do.body3

if.then:                                          ; preds = %entry
  call fastcc void @rwsem_mark_wake(%struct.rw_semaphore* noundef %sem, i32 noundef 2, %struct.wake_q_head* noundef nonnull %wake_q) #9
  br label %do.body3

do.body3:                                         ; preds = %entry, %if.then
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %wait_lock, i64 noundef %call) #9
  call void @wake_up_q(%struct.wake_q_head* noundef nonnull %wake_q) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret void
}

attributes #0 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 2151291627}
!11 = !{i64 1109078}
!12 = !{i64 2151318136}
!13 = !{i64 2151321000}
!14 = !{i64 2151321740}
!15 = !{i64 2147808154, i64 2147808820, i64 2147808850, i64 2147808882, i64 2147808914, i64 2147808948, i64 2147808973}
!16 = !{i64 2147879308, i64 2147879341, i64 2147879392, i64 2147879448, i64 2147879481, i64 2147879536, i64 2147879565, i64 2147879592}
!17 = !{i64 2149712223}
!18 = !{i64 2151312099}
!19 = !{i64 2149737076}
!20 = !{i64 2148956775, i64 2148956822, i64 2148956828, i64 2148956865, i64 2148956883, i64 2148958224, i64 2148958272, i64 2148958320, i64 2148958383, i64 2148958432, i64 2148956961, i64 2148956986, i64 2148957012, i64 2148957018, i64 2148957890, i64 2148957930, i64 2148957948, i64 2148957980, i64 2148958008, i64 2148958062, i64 2148958082, i64 2148958179, i64 2148957041, i64 2148957055, i64 2148957061, i64 2148957111, i64 2148957157, i64 2148957190}
!21 = !{i64 2147860450, i64 2147860483, i64 2147860536, i64 2147860595, i64 2147860629, i64 2147860684, i64 2147860713, i64 2147860733}
!22 = !{i64 2147866149, i64 2147866182, i64 2147866234, i64 2147866290, i64 2147866323, i64 2147866377, i64 2147866406, i64 2147866426}
!23 = !{i64 2147814270, i64 2147814925, i64 2147814955, i64 2147814986, i64 2147815018, i64 2147815053, i64 2147815078}
!24 = !{i64 2147805274, i64 2147805788, i64 2147805818, i64 2147805844, i64 2147805876, i64 2147805905}
!25 = !{i64 2147770552, i64 2147771216, i64 2147771246, i64 2147771278, i64 2147771312, i64 2147771347, i64 2147771372}
!26 = !{i64 2149677060}
!27 = !{i64 2148947319, i64 2148947366, i64 2148947372, i64 2148947409, i64 2148947427, i64 2148948767, i64 2148948815, i64 2148948863, i64 2148948926, i64 2148948975, i64 2148947505, i64 2148947530, i64 2148947556, i64 2148947562, i64 2148948433, i64 2148948473, i64 2148948491, i64 2148948523, i64 2148948551, i64 2148948605, i64 2148948625, i64 2148948722, i64 2148947585, i64 2148947599, i64 2148947605, i64 2148947655, i64 2148947701, i64 2148947734}
!28 = !{i64 2147806122, i64 2147806770, i64 2147806800, i64 2147806831, i64 2147806863, i64 2147806898, i64 2147806923}
!29 = !{i64 2147844238, i64 2147844759, i64 2147844789, i64 2147844815, i64 2147844847, i64 2147844876}
!30 = !{i64 2151332228}
!31 = !{i64 2151334838}
!32 = !{i64 2151316509}
!33 = !{i64 2151316579}
!34 = !{i64 2151317063}
!35 = !{i64 2151317179}
!36 = !{i64 2151316838}
!37 = !{i64 2149478442}
!38 = !{i64 2149478659}
!39 = !{i64 1850245}
!40 = !{i64 2147833668, i64 2147834179, i64 2147834209, i64 2147834235, i64 2147834267, i64 2147834296}
!41 = !{i64 2147809181, i64 2147813908, i64 2147813938, i64 2147813969, i64 2147814001, i64 2147814036, i64 2147814061}
!42 = !{i64 2149707930}
!43 = !{i64 2149733773}
!44 = !{i64 2148962478, i64 2148962525, i64 2148962531, i64 2148962568, i64 2148962586, i64 2148963897, i64 2148963945, i64 2148963993, i64 2148964056, i64 2148964105, i64 2148962664, i64 2148962689, i64 2148962715, i64 2148962721, i64 2148963563, i64 2148963603, i64 2148963621, i64 2148963653, i64 2148963681, i64 2148963735, i64 2148963755, i64 2148963852, i64 2148962744, i64 2148962758, i64 2148962764, i64 2148962814, i64 2148962860, i64 2148962893}
!45 = !{i64 2148964657, i64 2148964704, i64 2148964710, i64 2148964747, i64 2148964765, i64 2148965708, i64 2148965756, i64 2148965804, i64 2148965867, i64 2148965916, i64 2148964843, i64 2148964868, i64 2148964894, i64 2148964900, i64 2148964937, i64 2148964943, i64 2148964993, i64 2148965039, i64 2148965072}
!46 = !{i64 2148968491, i64 2148968538, i64 2148968544, i64 2148968581, i64 2148968599, i64 2148969910, i64 2148969958, i64 2148970006, i64 2148970069, i64 2148970118, i64 2148968677, i64 2148968702, i64 2148968728, i64 2148968734, i64 2148969576, i64 2148969616, i64 2148969634, i64 2148969666, i64 2148969694, i64 2148969748, i64 2148969768, i64 2148969865, i64 2148968757, i64 2148968771, i64 2148968777, i64 2148968827, i64 2148968873, i64 2148968906}
!47 = !{i64 2147817353, i64 2147818026, i64 2147818056, i64 2147818087, i64 2147818119, i64 2147818154, i64 2147818179}
