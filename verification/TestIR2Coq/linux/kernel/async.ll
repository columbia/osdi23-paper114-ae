; ModuleID = 'kernel/async.c'
source_filename = "kernel/async.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.workqueue_struct = type opaque
%struct.async_domain = type { %struct.list_head, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kmem_cache = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.25, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
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
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.async_entry = type { %struct.list_head, %struct.list_head, %struct.work_struct, i64, void (i8*, i64)*, i8*, %struct.async_domain* }
%struct.worker = type { %union.anon.42, %struct.work_struct*, void (%struct.work_struct*)*, %struct.pool_workqueue*, i32, %struct.list_head, %struct.task_struct*, %struct.worker_pool*, %struct.list_head, i64, i32, i32, i32, [24 x i8], %struct.workqueue_struct*, void (%struct.work_struct*)* }
%union.anon.42 = type { %struct.list_head }
%struct.pool_workqueue = type opaque
%struct.worker_pool = type opaque

@entry_count = internal global %struct.atomic_t zeroinitializer, align 4
@async_lock = internal global %struct.spinlock zeroinitializer, align 4
@next_cookie = internal unnamed_addr global i64 1, align 8
@async_global_pending = internal global %struct.list_head { %struct.list_head* @async_global_pending, %struct.list_head* @async_global_pending }, align 8
@system_unbound_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@async_dfl_domain = internal global %struct.async_domain { %struct.list_head { %struct.list_head* getelementptr inbounds (%struct.async_domain, %struct.async_domain* @async_dfl_domain, i32 0, i32 0), %struct.list_head* getelementptr inbounds (%struct.async_domain, %struct.async_domain* @async_dfl_domain, i32 0, i32 0) }, i8 1 }, align 8
@async_done = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @async_done to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @async_done to i8*), i64 8) to %struct.list_head*) } }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @async_schedule_node_domain(void (i8*, i64)* noundef %func, i8* noundef %data, i32 noundef %node, %struct.async_domain* noundef %domain) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc() #6
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @entry_count, i64 0, i32 0), align 4
  %cmp = icmp sgt i32 %0, 32768
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @kfree(i8* noundef %call) #7
  %call6 = call fastcc i64 @__raw_spin_lock_irqsave() #6
  %1 = load i64, i64* @next_cookie, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* @next_cookie, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call6) #7
  call void %func(i8* noundef %data, i64 noundef %1) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %domain_list = bitcast i8* %call to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %domain_list) #6
  %global_list = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %global_list to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %2) #6
  %work = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %work to %struct.work_struct*
  %4 = bitcast i8* %work to i64*
  store i64 68719476704, i64* %4, align 8
  %entry13 = getelementptr inbounds i8, i8* %call, i64 40
  %5 = bitcast i8* %entry13 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %5) #6
  %func15 = getelementptr inbounds i8, i8* %call, i64 56
  %6 = bitcast i8* %func15 to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @async_run_entry_fn, void (%struct.work_struct*)** %6, align 8
  %func18 = getelementptr inbounds i8, i8* %call, i64 72
  %7 = bitcast i8* %func18 to void (i8*, i64)**
  store void (i8*, i64)* %func, void (i8*, i64)** %7, align 8
  %data19 = getelementptr inbounds i8, i8* %call, i64 80
  %8 = bitcast i8* %data19 to i8**
  store i8* %data, i8** %8, align 8
  %domain20 = getelementptr inbounds i8, i8* %call, i64 88
  %9 = bitcast i8* %domain20 to %struct.async_domain**
  store %struct.async_domain* %domain, %struct.async_domain** %9, align 8
  %call29 = call fastcc i64 @__raw_spin_lock_irqsave() #6
  %10 = load i64, i64* @next_cookie, align 8
  %inc34 = add i64 %10, 1
  store i64 %inc34, i64* @next_cookie, align 8
  %cookie = getelementptr inbounds i8, i8* %call, i64 64
  %11 = bitcast i8* %cookie to i64*
  store i64 %10, i64* %11, align 8
  %pending = getelementptr inbounds %struct.async_domain, %struct.async_domain* %domain, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef nonnull %domain_list, %struct.list_head* noundef %pending) #6
  %registered = getelementptr inbounds %struct.async_domain, %struct.async_domain* %domain, i64 0, i32 1
  %bf.load = load i8, i8* %registered, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool36.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end
  call fastcc void @list_add_tail(%struct.list_head* noundef %2, %struct.list_head* noundef nonnull @async_global_pending) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end
  call fastcc void @__ll_sc_atomic_add() #7
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call29) #7
  %12 = call i64 asm "mrs $0, sp_el0", "=r"() #8, !srcloc !7
  %13 = inttoptr i64 %12 to %struct.task_struct*
  %flags41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i64 0, i32 4
  %14 = load i32, i32* %flags41, align 4
  %or = or i32 %14, 16384
  store i32 %or, i32* %flags41, align 4
  %15 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_unbound_wq, align 8
  %call43 = call i1 @queue_work_node(i32 noundef %node, %struct.workqueue_struct* noundef %15, %struct.work_struct* noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then
  %retval.0 = phi i64 [ %1, %if.then ], [ %10, %if.end39 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 2848) #7
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #6
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  call fastcc void @do_raw_spin_lock_flags() #6
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @async_run_entry_fn(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr22 = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -1
  %add.ptr = bitcast %struct.work_struct* %add.ptr22 to i8*
  %call = call i64 @ktime_get() #7
  %func = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 1, i32 1
  %0 = bitcast %struct.list_head* %func to void (i8*, i64)**
  %1 = load void (i8*, i64)*, void (i8*, i64)** %0, align 8
  %data = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 1, i32 1, i32 1
  %2 = bitcast %struct.list_head** %data to i8**
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  call void %1(i8* noundef %3, i64 noundef %5) #7
  %call8 = call fastcc i64 @__raw_spin_lock_irqsave() #6
  %domain_list = bitcast %struct.work_struct* %add.ptr22 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %domain_list) #6
  %global_list = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -1, i32 1, i32 1
  %6 = bitcast %struct.list_head** %global_list to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %6) #6
  call void @kfree(i8* noundef %add.ptr) #7
  call fastcc void @__ll_sc_atomic_sub() #7
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call8) #7
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @async_done, i32 noundef 3, i32 noundef 1, i8* noundef null) #7
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_node(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @async_schedule_node(void (i8*, i64)* noundef %func, i8* noundef %data, i32 noundef %node) local_unnamed_addr #0 {
entry:
  %call = call i64 @async_schedule_node_domain(void (i8*, i64)* noundef %func, i8* noundef %data, i32 noundef %node, %struct.async_domain* noundef nonnull @async_dfl_domain) #6
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @async_synchronize_full() local_unnamed_addr #0 {
entry:
  call void @async_synchronize_full_domain(%struct.async_domain* noundef null) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @async_synchronize_full_domain(%struct.async_domain* noundef %domain) local_unnamed_addr #0 {
entry:
  call void @async_synchronize_cookie_domain(i64 noundef -1, %struct.async_domain* noundef %domain) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @async_synchronize_cookie_domain(i64 noundef %cookie, %struct.async_domain* noundef %domain) local_unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %call = call i64 @ktime_get() #7
  %call5 = call fastcc i64 @lowest_in_progress(%struct.async_domain* noundef %domain) #6
  %cmp.not = icmp ult i64 %call5, %cookie
  br i1 %cmp.not, label %if.end, label %do.end13

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !9
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call622 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @async_done, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call723 = call fastcc i64 @lowest_in_progress(%struct.async_domain* noundef %domain) #6
  %cmp8.not24 = icmp ult i64 %call723, %cookie
  br i1 %cmp8.not24, label %cleanup, label %for.end

cleanup:                                          ; preds = %if.end, %cleanup
  call void @schedule() #7
  %call6 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @async_done, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call7 = call fastcc i64 @lowest_in_progress(%struct.async_domain* noundef %domain) #6
  %cmp8.not = icmp ult i64 %call7, %cookie
  br i1 %cmp8.not, label %cleanup, label %for.end

for.end:                                          ; preds = %cleanup, %if.end
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @async_done, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9
  br label %do.end13

do.end13:                                         ; preds = %entry, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @lowest_in_progress(%struct.async_domain* noundef %domain) unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #6
  %tobool.not = icmp eq %struct.async_domain* %domain, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %pending = getelementptr inbounds %struct.async_domain, %struct.async_domain* %domain, i64 0, i32 0
  %call5 = call fastcc i32 @list_empty(%struct.list_head* noundef %pending) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end26

if.then7:                                         ; preds = %if.then
  %0 = bitcast %struct.async_domain* %domain to %struct.async_entry**
  %1 = load %struct.async_entry*, %struct.async_entry** %0, align 8
  br label %if.end23

if.else:                                          ; preds = %entry
  %call13 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull @async_global_pending) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end26

if.then15:                                        ; preds = %if.else
  %2 = load i8*, i8** bitcast (%struct.list_head* @async_global_pending to i8**), align 8
  %add.ptr21 = getelementptr i8, i8* %2, i64 -16
  %3 = bitcast i8* %add.ptr21 to %struct.async_entry*
  br label %if.end23

if.end23:                                         ; preds = %if.then15, %if.then7
  %first.0 = phi %struct.async_entry* [ %1, %if.then7 ], [ %3, %if.then15 ]
  %tobool24.not = icmp eq %struct.async_entry* %first.0, null
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  %cookie = getelementptr inbounds %struct.async_entry, %struct.async_entry* %first.0, i64 0, i32 3
  %4 = load i64, i64* %cookie, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then, %if.then25, %if.end23
  %ret.0 = phi i64 [ %4, %if.then25 ], [ -1, %if.end23 ], [ -1, %if.then ], [ -1, %if.else ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #7
  ret i64 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @async_synchronize_cookie(i64 noundef %cookie) local_unnamed_addr #0 {
entry:
  call void @async_synchronize_cookie_domain(i64 noundef %cookie, %struct.async_domain* noundef nonnull @async_dfl_domain) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @current_is_async() local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.worker* @current_wq_worker() #6
  %tobool.not = icmp eq %struct.worker* %call, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %current_func = getelementptr inbounds %struct.worker, %struct.worker* %call, i64 0, i32 2
  %0 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %current_func, align 8
  %cmp = icmp eq void (%struct.work_struct*)* %0, @async_run_entry_fn
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.worker* @current_wq_worker() unnamed_addr #0 {
entry:
  %call = call fastcc i32 @preempt_count() #6
  %0 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #6
  %1 = and i32 %call1, 983040
  %or16 = or i32 %1, %0
  %call4 = call fastcc i32 @preempt_count() #6
  %2 = and i32 %call4, 256
  %or818 = or i32 %or16, %2
  %tobool.not = icmp eq i32 %or818, 0
  br i1 %tobool.not, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %entry
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #8, !srcloc !7
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 4
  %5 = load i32, i32* %flags, align 4
  %and10 = and i32 %5, 32
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call13 = call i8* @kthread_data(%struct.task_struct* noundef %4) #7
  %6 = bitcast i8* %call13 to %struct.worker*
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.worker* [ %6, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.worker* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #6
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #7
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @async_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #7
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #9, !srcloc !11
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #9, !srcloc !12
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #6
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !13

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #9, !srcloc !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @async_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @async_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #9, !srcloc !15
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #6
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #6
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @async_lock to i8*), i8 0) #9, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #9, !srcloc !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #6
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #6
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @entry_count, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @entry_count, i64 0, i32 0)) #9, !srcloc !19
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
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
define internal fastcc void @__ll_sc_atomic_add() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @entry_count, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @entry_count, i64 0, i32 0)) #9, !srcloc !20
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
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #8, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.2* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kthread_data(%struct.task_struct* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 1214998}
!8 = !{i64 2149723081}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148977629, i64 2148977676, i64 2148977682, i64 2148977719, i64 2148977737, i64 2148979048, i64 2148979096, i64 2148979144, i64 2148979207, i64 2148979256, i64 2148977815, i64 2148977840, i64 2148977866, i64 2148977872, i64 2148978714, i64 2148978754, i64 2148978772, i64 2148978804, i64 2148978832, i64 2148978886, i64 2148978906, i64 2148979003, i64 2148977895, i64 2148977909, i64 2148977915, i64 2148977965, i64 2148978011, i64 2148978044}
!12 = !{i64 2148979808, i64 2148979855, i64 2148979861, i64 2148979898, i64 2148979916, i64 2148980859, i64 2148980907, i64 2148980955, i64 2148981018, i64 2148981067, i64 2148979994, i64 2148980019, i64 2148980045, i64 2148980051, i64 2148980088, i64 2148980094, i64 2148980144, i64 2148980190, i64 2148980223}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2148971926, i64 2148971973, i64 2148971979, i64 2148972016, i64 2148972034, i64 2148973375, i64 2148973423, i64 2148973471, i64 2148973534, i64 2148973583, i64 2148972112, i64 2148972137, i64 2148972163, i64 2148972169, i64 2148973041, i64 2148973081, i64 2148973099, i64 2148973131, i64 2148973159, i64 2148973213, i64 2148973233, i64 2148973330, i64 2148972192, i64 2148972206, i64 2148972212, i64 2148972262, i64 2148972308, i64 2148972341}
!15 = !{i64 2147862133, i64 2147862166, i64 2147862219, i64 2147862278, i64 2147862312, i64 2147862367, i64 2147862396, i64 2147862416}
!16 = !{i64 2149748924}
!17 = !{i64 2149692211}
!18 = !{i64 2148983642, i64 2148983689, i64 2148983695, i64 2148983732, i64 2148983750, i64 2148985061, i64 2148985109, i64 2148985157, i64 2148985220, i64 2148985269, i64 2148983828, i64 2148983853, i64 2148983879, i64 2148983885, i64 2148984727, i64 2148984767, i64 2148984785, i64 2148984817, i64 2148984845, i64 2148984899, i64 2148984919, i64 2148985016, i64 2148983908, i64 2148983922, i64 2148983928, i64 2148983978, i64 2148984024, i64 2148984057}
!19 = !{i64 2147775992, i64 2147776508, i64 2147776538, i64 2147776565, i64 2147776599, i64 2147776629}
!20 = !{i64 2147766271, i64 2147766787, i64 2147766817, i64 2147766844, i64 2147766878, i64 2147766908}
