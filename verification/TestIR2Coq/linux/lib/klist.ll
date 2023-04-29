; ModuleID = 'lib/klist.c'
source_filename = "lib/klist.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.klist_waiter = type { %struct.list_head, %struct.klist_node*, %struct.task_struct*, i32 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.23, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.4 = type { i32 }
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
%struct.mm_struct = type opaque
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.vm_area_struct = type opaque
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.completion = type opaque
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.kernel_siginfo = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.14 }
%struct.anon.14 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rseq = type { i32, i32, %union.anon.22, i32, [12 x i8] }
%union.anon.22 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.23 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type opaque
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.24, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.24 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.klist_iter = type { %struct.klist*, %struct.klist_node* }

@klist_remove_lock = internal global %struct.spinlock zeroinitializer, align 4
@klist_remove_waiters = internal global %struct.list_head { %struct.list_head* @klist_remove_waiters, %struct.list_head* @klist_remove_waiters }, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @klist_init(%struct.klist* noundef %k, void (%struct.klist_node*)* noundef %get, void (%struct.klist_node*)* noundef %put) local_unnamed_addr #0 {
entry:
  %k_list = getelementptr inbounds %struct.klist, %struct.klist* %k, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %k_list) #8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.klist, %struct.klist* %k, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %get2 = getelementptr inbounds %struct.klist, %struct.klist* %k, i64 0, i32 2
  store void (%struct.klist_node*)* %get, void (%struct.klist_node*)** %get2, align 8
  %put3 = getelementptr inbounds %struct.klist, %struct.klist* %k, i64 0, i32 3
  store void (%struct.klist_node*)* %put, void (%struct.klist_node*)** %put3, align 8
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @klist_add_head(%struct.klist_node* noundef %n, %struct.klist* noundef %k) local_unnamed_addr #1 {
entry:
  call fastcc void @klist_node_init(%struct.klist* noundef %k, %struct.klist_node* noundef %n) #8
  call fastcc void @add_head(%struct.klist* noundef %k, %struct.klist_node* noundef %n) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @klist_node_init(%struct.klist* noundef %k, %struct.klist_node* noundef %n) unnamed_addr #1 {
entry:
  %n_node = getelementptr inbounds %struct.klist_node, %struct.klist_node* %n, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %n_node) #8
  %n_ref = getelementptr inbounds %struct.klist_node, %struct.klist_node* %n, i64 0, i32 2
  call fastcc void @kref_init(%struct.kref* noundef %n_ref) #8
  call fastcc void @knode_set_klist(%struct.klist_node* noundef %n, %struct.klist* noundef %k) #8
  %get = getelementptr inbounds %struct.klist, %struct.klist* %k, i64 0, i32 2
  %0 = load void (%struct.klist_node*)*, void (%struct.klist_node*)** %get, align 8
  %tobool.not = icmp eq void (%struct.klist_node*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %0(%struct.klist_node* noundef %n) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @add_head(%struct.klist* noundef %k, %struct.klist_node* noundef %n) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.klist, %struct.klist* %k, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  %n_node = getelementptr inbounds %struct.klist_node, %struct.klist_node* %n, i64 0, i32 1
  %k_list = getelementptr inbounds %struct.klist, %struct.klist* %k, i64 0, i32 1
  call fastcc void @list_add(%struct.list_head* noundef %n_node, %struct.list_head* noundef %k_list) #8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @klist_add_tail(%struct.klist_node* noundef %n, %struct.klist* noundef %k) local_unnamed_addr #1 {
entry:
  call fastcc void @klist_node_init(%struct.klist* noundef %k, %struct.klist_node* noundef %n) #8
  call fastcc void @add_tail(%struct.klist* noundef %k, %struct.klist_node* noundef %n) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @add_tail(%struct.klist* noundef %k, %struct.klist_node* noundef %n) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.klist, %struct.klist* %k, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  %n_node = getelementptr inbounds %struct.klist_node, %struct.klist_node* %n, i64 0, i32 1
  %k_list = getelementptr inbounds %struct.klist, %struct.klist* %k, i64 0, i32 1
  call fastcc void @list_add_tail(%struct.list_head* noundef %n_node, %struct.list_head* noundef %k_list) #8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @klist_add_behind(%struct.klist_node* noundef %n, %struct.klist_node* noundef %pos) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.klist* @knode_klist(%struct.klist_node* noundef %pos) #8
  call fastcc void @klist_node_init(%struct.klist* noundef %call, %struct.klist_node* noundef %n) #8
  %rlock.i = getelementptr inbounds %struct.klist, %struct.klist* %call, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  %n_node = getelementptr inbounds %struct.klist_node, %struct.klist_node* %n, i64 0, i32 1
  %n_node1 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %pos, i64 0, i32 1
  call fastcc void @list_add(%struct.list_head* noundef %n_node, %struct.list_head* noundef %n_node1) #8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.klist* @knode_klist(%struct.klist_node* nocapture noundef readonly %knode) unnamed_addr #3 {
entry:
  %n_klist = getelementptr inbounds %struct.klist_node, %struct.klist_node* %knode, i64 0, i32 0
  %0 = load i8*, i8** %n_klist, align 8
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, -2
  %2 = inttoptr i64 %and to %struct.klist*
  ret %struct.klist* %2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @klist_add_before(%struct.klist_node* noundef %n, %struct.klist_node* noundef %pos) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.klist* @knode_klist(%struct.klist_node* noundef %pos) #8
  call fastcc void @klist_node_init(%struct.klist* noundef %call, %struct.klist_node* noundef %n) #8
  %rlock.i = getelementptr inbounds %struct.klist, %struct.klist* %call, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  %n_node = getelementptr inbounds %struct.klist_node, %struct.klist_node* %n, i64 0, i32 1
  %n_node1 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %pos, i64 0, i32 1
  call fastcc void @list_add_tail(%struct.list_head* noundef %n_node, %struct.list_head* noundef %n_node1) #8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @klist_del(%struct.klist_node* noundef %n) local_unnamed_addr #1 {
entry:
  call fastcc void @klist_put(%struct.klist_node* noundef %n, i1 noundef true) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @klist_put(%struct.klist_node* noundef %n, i1 noundef %kill) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.klist* @knode_klist(%struct.klist_node* noundef %n) #8
  %put1 = getelementptr inbounds %struct.klist, %struct.klist* %call, i64 0, i32 3
  %0 = load void (%struct.klist_node*)*, void (%struct.klist_node*)** %put1, align 8
  %rlock.i = getelementptr inbounds %struct.klist, %struct.klist* %call, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  br i1 %kill, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @knode_kill(%struct.klist_node* noundef %n) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call fastcc i32 @klist_dec_and_del(%struct.klist_node* noundef %n) #8
  %tobool3.not = icmp eq i32 %call2, 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #9
  %tobool7.not19 = icmp eq void (%struct.klist_node*)* %0, null
  %tobool7.not = select i1 %tobool3.not, i1 true, i1 %tobool7.not19
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void %0(%struct.klist_node* noundef %n) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @klist_remove(%struct.klist_node* noundef %n) local_unnamed_addr #1 {
entry:
  %waiter = alloca %struct.klist_waiter, align 8
  %0 = bitcast %struct.klist_waiter* %waiter to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !7
  %node = getelementptr inbounds %struct.klist_waiter, %struct.klist_waiter* %waiter, i64 0, i32 1
  store %struct.klist_node* %n, %struct.klist_node** %node, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %process = getelementptr inbounds %struct.klist_waiter, %struct.klist_waiter* %waiter, i64 0, i32 2
  store %struct.task_struct* %2, %struct.task_struct** %process, align 8
  %woken = getelementptr inbounds %struct.klist_waiter, %struct.klist_waiter* %waiter, i64 0, i32 3
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @klist_remove_lock, i64 0, i32 0, i32 0)) #9
  %list = getelementptr inbounds %struct.klist_waiter, %struct.klist_waiter* %waiter, i64 0, i32 0
  call fastcc void @list_add(%struct.list_head* noundef nonnull %list, %struct.list_head* noundef nonnull @klist_remove_waiters) #8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @klist_remove_lock, i64 0, i32 0, i32 0)) #9
  call void @klist_del(%struct.klist_node* noundef %n) #8
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 1
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %3 = load i32, i32* %woken, align 8
  %tobool.not36 = icmp eq i32 %3, 0
  br i1 %tobool.not36, label %if.end, label %do.body26

if.end:                                           ; preds = %entry, %if.end
  call void @schedule() #9
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %4 = load i32, i32* %woken, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %do.body26

do.body26:                                        ; preds = %if.end, %entry
  store volatile i32 0, i32* %__state, align 16
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @klist_node_attached(%struct.klist_node* nocapture noundef readonly %n) local_unnamed_addr #3 {
entry:
  %n_klist = getelementptr inbounds %struct.klist_node, %struct.klist_node* %n, i64 0, i32 0
  %0 = load i8*, i8** %n_klist, align 8
  %cmp = icmp ne i8* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @klist_iter_init_node(%struct.klist* noundef %k, %struct.klist_iter* nocapture noundef writeonly %i, %struct.klist_node* noundef %n) local_unnamed_addr #1 {
entry:
  %i_klist = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %i, i64 0, i32 0
  store %struct.klist* %k, %struct.klist** %i_klist, align 8
  %i_cur = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %i, i64 0, i32 1
  store %struct.klist_node* null, %struct.klist_node** %i_cur, align 8
  %tobool.not = icmp eq %struct.klist_node* %n, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %n_ref = getelementptr inbounds %struct.klist_node, %struct.klist_node* %n, i64 0, i32 2
  %call = call fastcc i32 @kref_get_unless_zero(%struct.kref* noundef %n_ref) #8
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct.klist_node* %n, %struct.klist_node** %i_cur, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kref_get_unless_zero(%struct.kref* noundef %kref) unnamed_addr #1 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %refcount) #8
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @klist_iter_init(%struct.klist* noundef %k, %struct.klist_iter* nocapture noundef writeonly %i) local_unnamed_addr #1 {
entry:
  call void @klist_iter_init_node(%struct.klist* noundef %k, %struct.klist_iter* noundef %i, %struct.klist_node* noundef null) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @klist_iter_exit(%struct.klist_iter* nocapture noundef %i) local_unnamed_addr #1 {
entry:
  %i_cur = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %i, i64 0, i32 1
  %0 = load %struct.klist_node*, %struct.klist_node** %i_cur, align 8
  %tobool.not = icmp eq %struct.klist_node* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @klist_put(%struct.klist_node* noundef nonnull %0, i1 noundef false) #8
  store %struct.klist_node* null, %struct.klist_node** %i_cur, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.klist_node* @klist_prev(%struct.klist_iter* nocapture noundef %i) local_unnamed_addr #1 {
entry:
  %i_klist = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %i, i64 0, i32 0
  %0 = load %struct.klist*, %struct.klist** %i_klist, align 8
  %put1 = getelementptr inbounds %struct.klist, %struct.klist* %0, i64 0, i32 3
  %1 = load void (%struct.klist_node*)*, void (%struct.klist_node*)** %put1, align 8
  %i_cur = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %i, i64 0, i32 1
  %2 = load %struct.klist_node*, %struct.klist_node** %i_cur, align 8
  %rlock.i = getelementptr inbounds %struct.klist, %struct.klist* %0, i64 0, i32 0, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %tobool = icmp ne %struct.klist_node* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %prev7 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %2, i64 0, i32 1, i32 1
  %3 = load %struct.list_head*, %struct.list_head** %prev7, align 8
  %call8 = call fastcc %struct.klist_node* @to_klist_node(%struct.list_head* noundef %3) #8
  %call9 = call fastcc i32 @klist_dec_and_del(%struct.klist_node* noundef nonnull %2) #8
  %tobool10.not = icmp eq i32 %call9, 0
  %spec.select = select i1 %tobool10.not, void (%struct.klist_node*)* null, void (%struct.klist_node*)* %1
  %.pre = load %struct.klist*, %struct.klist** %i_klist, align 8
  br label %if.end15

if.else:                                          ; preds = %entry
  %4 = load %struct.klist*, %struct.klist** %i_klist, align 8
  %prev13 = getelementptr inbounds %struct.klist, %struct.klist* %4, i64 0, i32 1, i32 1
  %5 = load %struct.list_head*, %struct.list_head** %prev13, align 8
  %call14 = call fastcc %struct.klist_node* @to_klist_node(%struct.list_head* noundef %5) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then, %if.else
  %6 = phi %struct.klist* [ %4, %if.else ], [ %.pre, %if.then ]
  %prev.0 = phi %struct.klist_node* [ %call14, %if.else ], [ %call8, %if.then ]
  %put.0 = phi void (%struct.klist_node*)* [ %1, %if.else ], [ %spec.select, %if.then ]
  store %struct.klist_node* null, %struct.klist_node** %i_cur, align 8
  %k_list18 = getelementptr inbounds %struct.klist, %struct.klist* %6, i64 0, i32 1
  %call19 = call fastcc %struct.klist_node* @to_klist_node(%struct.list_head* noundef %k_list18) #8
  %cmp20.not63 = icmp eq %struct.klist_node* %prev.0, %call19
  br i1 %cmp20.not63, label %while.end, label %while.body

while.body:                                       ; preds = %if.end15, %if.end29
  %prev.164 = phi %struct.klist_node* [ %call32, %if.end29 ], [ %prev.0, %if.end15 ]
  %call22 = call fastcc i1 @knode_dead(%struct.klist_node* noundef %prev.164) #8
  br i1 %call22, label %if.end29, label %if.then27, !prof !10

if.then27:                                        ; preds = %while.body
  %n_ref = getelementptr inbounds %struct.klist_node, %struct.klist_node* %prev.164, i64 0, i32 2
  call fastcc void @kref_get(%struct.kref* noundef %n_ref) #8
  store %struct.klist_node* %prev.164, %struct.klist_node** %i_cur, align 8
  %.pre66 = load %struct.klist*, %struct.klist** %i_klist, align 8
  br label %while.end

if.end29:                                         ; preds = %while.body
  %prev31 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %prev.164, i64 0, i32 1, i32 1
  %7 = load %struct.list_head*, %struct.list_head** %prev31, align 8
  %call32 = call fastcc %struct.klist_node* @to_klist_node(%struct.list_head* noundef %7) #8
  %cmp20.not = icmp eq %struct.klist_node* %call32, %call19
  br i1 %cmp20.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end29, %if.end15, %if.then27
  %8 = phi %struct.klist* [ %6, %if.end15 ], [ %.pre66, %if.then27 ], [ %6, %if.end29 ]
  %rlock.i61 = getelementptr inbounds %struct.klist, %struct.klist* %8, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i61, i64 noundef %call4) #9
  %tobool35 = icmp ne void (%struct.klist_node*)* %put.0, null
  %or.cond = select i1 %tobool35, i1 %tobool, i1 false
  br i1 %or.cond, label %if.then37, label %if.end38

if.then37:                                        ; preds = %while.end
  call void %put.0(%struct.klist_node* noundef nonnull %2) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %while.end
  %9 = load %struct.klist_node*, %struct.klist_node** %i_cur, align 8
  ret %struct.klist_node* %9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #8
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.klist_node* @to_klist_node(%struct.list_head* noundef readnone %n) unnamed_addr #6 {
entry:
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %n, i64 -1, i32 1
  %0 = bitcast %struct.list_head** %add.ptr to %struct.klist_node*
  ret %struct.klist_node* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @klist_dec_and_del(%struct.klist_node* noundef %n) unnamed_addr #1 {
entry:
  %n_ref = getelementptr inbounds %struct.klist_node, %struct.klist_node* %n, i64 0, i32 2
  %call = call fastcc i32 @kref_put(%struct.kref* noundef %n_ref) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @knode_dead(%struct.klist_node* nocapture noundef readonly %knode) unnamed_addr #3 {
entry:
  %n_klist = getelementptr inbounds %struct.klist_node, %struct.klist_node* %knode, i64 0, i32 0
  %0 = load i8*, i8** %n_klist, align 8
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_get(%struct.kref* noundef %kref) unnamed_addr #1 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refcount) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.klist_node* @klist_next(%struct.klist_iter* nocapture noundef %i) local_unnamed_addr #1 {
entry:
  %i_klist = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %i, i64 0, i32 0
  %0 = load %struct.klist*, %struct.klist** %i_klist, align 8
  %put1 = getelementptr inbounds %struct.klist, %struct.klist* %0, i64 0, i32 3
  %1 = load void (%struct.klist_node*)*, void (%struct.klist_node*)** %put1, align 8
  %i_cur = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %i, i64 0, i32 1
  %2 = load %struct.klist_node*, %struct.klist_node** %i_cur, align 8
  %rlock.i = getelementptr inbounds %struct.klist, %struct.klist* %0, i64 0, i32 0, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %tobool = icmp ne %struct.klist_node* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %next7 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %2, i64 0, i32 1, i32 0
  %3 = load %struct.list_head*, %struct.list_head** %next7, align 8
  %call8 = call fastcc %struct.klist_node* @to_klist_node(%struct.list_head* noundef %3) #8
  %call9 = call fastcc i32 @klist_dec_and_del(%struct.klist_node* noundef nonnull %2) #8
  %tobool10.not = icmp eq i32 %call9, 0
  %spec.select = select i1 %tobool10.not, void (%struct.klist_node*)* null, void (%struct.klist_node*)* %1
  %.pre = load %struct.klist*, %struct.klist** %i_klist, align 8
  br label %if.end15

if.else:                                          ; preds = %entry
  %4 = load %struct.klist*, %struct.klist** %i_klist, align 8
  %next13 = getelementptr inbounds %struct.klist, %struct.klist* %4, i64 0, i32 1, i32 0
  %5 = load %struct.list_head*, %struct.list_head** %next13, align 8
  %call14 = call fastcc %struct.klist_node* @to_klist_node(%struct.list_head* noundef %5) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then, %if.else
  %6 = phi %struct.klist* [ %4, %if.else ], [ %.pre, %if.then ]
  %next.0 = phi %struct.klist_node* [ %call14, %if.else ], [ %call8, %if.then ]
  %put.0 = phi void (%struct.klist_node*)* [ %1, %if.else ], [ %spec.select, %if.then ]
  store %struct.klist_node* null, %struct.klist_node** %i_cur, align 8
  %k_list18 = getelementptr inbounds %struct.klist, %struct.klist* %6, i64 0, i32 1
  %call19 = call fastcc %struct.klist_node* @to_klist_node(%struct.list_head* noundef %k_list18) #8
  %cmp20.not63 = icmp eq %struct.klist_node* %next.0, %call19
  br i1 %cmp20.not63, label %while.end, label %while.body

while.body:                                       ; preds = %if.end15, %if.end29
  %next.164 = phi %struct.klist_node* [ %call32, %if.end29 ], [ %next.0, %if.end15 ]
  %call22 = call fastcc i1 @knode_dead(%struct.klist_node* noundef %next.164) #8
  br i1 %call22, label %if.end29, label %if.then27, !prof !10

if.then27:                                        ; preds = %while.body
  %n_ref = getelementptr inbounds %struct.klist_node, %struct.klist_node* %next.164, i64 0, i32 2
  call fastcc void @kref_get(%struct.kref* noundef %n_ref) #8
  store %struct.klist_node* %next.164, %struct.klist_node** %i_cur, align 8
  %.pre66 = load %struct.klist*, %struct.klist** %i_klist, align 8
  br label %while.end

if.end29:                                         ; preds = %while.body
  %next31 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %next.164, i64 0, i32 1, i32 0
  %7 = load %struct.list_head*, %struct.list_head** %next31, align 8
  %call32 = call fastcc %struct.klist_node* @to_klist_node(%struct.list_head* noundef %7) #8
  %cmp20.not = icmp eq %struct.klist_node* %call32, %call19
  br i1 %cmp20.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end29, %if.end15, %if.then27
  %8 = phi %struct.klist* [ %6, %if.end15 ], [ %.pre66, %if.then27 ], [ %6, %if.end29 ]
  %rlock.i61 = getelementptr inbounds %struct.klist, %struct.klist* %8, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i61, i64 noundef %call4) #9
  %tobool35 = icmp ne void (%struct.klist_node*)* %put.0, null
  %or.cond = select i1 %tobool35, i1 %tobool, i1 false
  br i1 %or.cond, label %if.then37, label %if.end38

if.then37:                                        ; preds = %while.end
  call void %put.0(%struct.klist_node* noundef nonnull %2) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %while.end
  %9 = load %struct.klist_node*, %struct.klist_node** %i_cur, align 8
  ret %struct.klist_node* %9
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @kref_init(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %refcount) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @knode_set_klist(%struct.klist_node* nocapture noundef %knode, %struct.klist* noundef %klist) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.klist_node* %knode to %struct.klist**
  store %struct.klist* %klist, %struct.klist** %0, align 8
  %call = call fastcc i1 @knode_dead(%struct.klist_node* noundef %knode) #8
  br i1 %call, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/klist.c\22; .popsection; .long 14472b - 14470b; .short 62; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #9
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !15
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
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
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @knode_kill(%struct.klist_node* nocapture noundef %knode) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @knode_dead(%struct.klist_node* noundef %knode) #8
  br i1 %call, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/klist.c\22; .popsection; .long 14472b - 14470b; .short 68; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = bitcast %struct.klist_node* %knode to i64*
  %1 = load i64, i64* %0, align 8
  %or = or i64 %1, 1
  store i64 %or, i64* %0, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) #8
  %tobool.old.not = icmp eq i32 %call, 0
  br i1 %tobool.old.not, label %if.end4, label %do.cond.preheader

do.cond.preheader:                                ; preds = %entry
  %0 = bitcast %struct.refcount_struct* %r to i8*
  br label %do.cond

do.cond:                                          ; preds = %do.cond.preheader, %atomic_try_cmpxchg_relaxed.exit
  %old.0 = phi i32 [ %call11.i.i.i, %atomic_try_cmpxchg_relaxed.exit ], [ %call, %do.cond.preheader ]
  %add = add i32 %old.0, 1
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_32(i8* noundef %0, i32 noundef %old.0, i32 noundef %add) #9
  %cmp.not.i.i = icmp eq i32 %old.0, %call11.i.i.i
  br i1 %cmp.not.i.i, label %if.end4, label %atomic_try_cmpxchg_relaxed.exit, !prof !14

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond
  %tobool = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool, label %if.end4, label %do.cond

if.end4:                                          ; preds = %do.cond, %atomic_try_cmpxchg_relaxed.exit, %entry
  %old.2 = phi i32 [ 0, %entry ], [ %old.0, %do.cond ], [ 0, %atomic_try_cmpxchg_relaxed.exit ]
  %add5 = add i32 %old.2, 1
  %1 = or i32 %add5, %old.2
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %if.end11, label %if.then10, !prof !14

if.then10:                                        ; preds = %if.end4
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 0) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end4
  %tobool12 = icmp ne i32 %old.2, 0
  ret i1 %tobool12
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #7 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #10, !srcloc !19
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #8
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #9
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #10, !srcloc !20
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #10, !srcloc !21
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #8
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !10

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #10, !srcloc !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #7 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kref_put(%struct.kref* noundef %kref) unnamed_addr #1 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %refcount) #8
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  call fastcc void @klist_release(%struct.kref* noundef %kref) #8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @klist_release(%struct.kref* noundef %kref) unnamed_addr #1 {
entry:
  %add.ptr65 = getelementptr %struct.kref, %struct.kref* %kref, i64 -6
  %0 = bitcast %struct.kref* %add.ptr65 to %struct.klist_node*
  %call = call fastcc i1 @knode_dead(%struct.klist_node* noundef %0) #8
  br i1 %call, label %if.end, label %if.then, !prof !14

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/klist.c\22; .popsection; .long 14472b - 14470b; .short 188; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %n_node = getelementptr %struct.kref, %struct.kref* %kref, i64 -4
  %1 = bitcast %struct.kref* %n_node to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %1) #8
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @klist_remove_lock, i64 0, i32 0, i32 0)) #9
  %2 = load %struct.klist_waiter*, %struct.klist_waiter** bitcast (%struct.list_head* @klist_remove_waiters to %struct.klist_waiter**), align 8
  %list2968 = getelementptr inbounds %struct.klist_waiter, %struct.klist_waiter* %2, i64 0, i32 0
  %cmp.not69 = icmp eq %struct.list_head* %list2968, @klist_remove_waiters
  br i1 %cmp.not69, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %list2972 = phi %struct.list_head* [ %list29, %for.inc ], [ %list2968, %if.end ]
  %waiter.070 = phi %struct.klist_waiter* [ %tmp.071, %for.inc ], [ %2, %if.end ]
  %tmp.071.in = bitcast %struct.klist_waiter* %waiter.070 to %struct.klist_waiter**
  %tmp.071 = load %struct.klist_waiter*, %struct.klist_waiter** %tmp.071.in, align 8
  %node = getelementptr inbounds %struct.klist_waiter, %struct.klist_waiter* %waiter.070, i64 0, i32 1
  %3 = load %struct.klist_node*, %struct.klist_node** %node, align 8
  %cmp33.not = icmp eq %struct.klist_node* %3, %0
  br i1 %cmp33.not, label %if.end36, label %for.inc

if.end36:                                         ; preds = %for.body
  call fastcc void @list_del(%struct.list_head* noundef %list2972) #8
  %woken = getelementptr inbounds %struct.klist_waiter, %struct.klist_waiter* %waiter.070, i64 0, i32 3
  store i32 1, i32* %woken, align 8
  call void asm sideeffect "dsb sy", "~{memory}"() #10, !srcloc !24
  %process = getelementptr inbounds %struct.klist_waiter, %struct.klist_waiter* %waiter.070, i64 0, i32 2
  %4 = load %struct.task_struct*, %struct.task_struct** %process, align 8
  %call38 = call i32 @wake_up_process(%struct.task_struct* noundef %4) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end36
  %list29 = getelementptr inbounds %struct.klist_waiter, %struct.klist_waiter* %tmp.071, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list29, @klist_remove_waiters
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @klist_remove_lock, i64 0, i32 0, i32 0)) #9
  call fastcc void @knode_set_klist(%struct.klist_node* noundef %0, %struct.klist* noundef null) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #9
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #10, !srcloc !25
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !14

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #10, !srcloc !26
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #0 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #0 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #8
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
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #9
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !10

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !14

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #9
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #10, !srcloc !27
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #10, !srcloc !29
  ret void
}

attributes #0 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"auto-init"}
!8 = !{i64 1179354}
!9 = !{i64 2150484140}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2149353088}
!12 = !{i64 2150462985}
!13 = !{i64 2149368089}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2147887561, i64 2147887594, i64 2147887647, i64 2147887706, i64 2147887740, i64 2147887795, i64 2147887824, i64 2147887844}
!16 = !{i64 2149375370}
!17 = !{i64 2149167600}
!18 = !{i64 2150464538}
!19 = !{i64 2147881023, i64 2147881056, i64 2147881108, i64 2147881167, i64 2147881201, i64 2147881256, i64 2147881285, i64 2147881305}
!20 = !{i64 2148918915, i64 2148918962, i64 2148918968, i64 2148919005, i64 2148919023, i64 2148920334, i64 2148920382, i64 2148920430, i64 2148920493, i64 2148920542, i64 2148919101, i64 2148919126, i64 2148919152, i64 2148919158, i64 2148920000, i64 2148920040, i64 2148920058, i64 2148920090, i64 2148920118, i64 2148920172, i64 2148920192, i64 2148920289, i64 2148919181, i64 2148919195, i64 2148919201, i64 2148919251, i64 2148919297, i64 2148919330}
!21 = !{i64 2148921094, i64 2148921141, i64 2148921147, i64 2148921184, i64 2148921202, i64 2148922145, i64 2148922193, i64 2148922241, i64 2148922304, i64 2148922353, i64 2148921280, i64 2148921305, i64 2148921331, i64 2148921337, i64 2148921374, i64 2148921380, i64 2148921430, i64 2148921476, i64 2148921509}
!22 = !{i64 2148913212, i64 2148913259, i64 2148913265, i64 2148913302, i64 2148913320, i64 2148914661, i64 2148914709, i64 2148914757, i64 2148914820, i64 2148914869, i64 2148913398, i64 2148913423, i64 2148913449, i64 2148913455, i64 2148914327, i64 2148914367, i64 2148914385, i64 2148914417, i64 2148914445, i64 2148914499, i64 2148914519, i64 2148914616, i64 2148913478, i64 2148913492, i64 2148913498, i64 2148913548, i64 2148913594, i64 2148913627}
!23 = !{i64 2150473586}
!24 = !{i64 2150481496}
!25 = !{i64 2149519072}
!26 = !{i64 2147809445, i64 2147810119, i64 2147810149, i64 2147810181, i64 2147810215, i64 2147810251, i64 2147810276}
!27 = !{i64 2147797663, i64 2147798327, i64 2147798357, i64 2147798389, i64 2147798423, i64 2147798458, i64 2147798483}
!28 = !{i64 2149378931}
!29 = !{i64 2148924928, i64 2148924975, i64 2148924981, i64 2148925018, i64 2148925036, i64 2148930408, i64 2148930456, i64 2148930504, i64 2148930567, i64 2148930616, i64 2148925114, i64 2148925139, i64 2148925165, i64 2148925171, i64 2148930074, i64 2148930114, i64 2148930132, i64 2148930164, i64 2148930192, i64 2148930246, i64 2148930266, i64 2148930363, i64 2148925194, i64 2148925208, i64 2148925214, i64 2148925264, i64 2148925310, i64 2148925343}
