; ModuleID = 'kernel/locking/qrwlock.c'
source_filename = "kernel/locking/qrwlock.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.qrwlock = type { %union.anon, %struct.qspinlock }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.29, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.5 }
%union.anon.5 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.7, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.7 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.8, [0 x i64] }
%struct.anon.8 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.9, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.9 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.11 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.kernel_siginfo = type { %struct.anon.16 }
%struct.anon.16 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.20 }
%struct.anon.20 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.28, i32, [12 x i8] }
%union.anon.28 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.29 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.30, %union.anon.44, %struct.atomic_t, [8 x i8] }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.44 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.45, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.45 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef %lock) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @preempt_count() #2
  %0 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #2
  %1 = and i32 %call1, 983040
  %or66 = or i32 %1, %0
  %call4 = call fastcc i32 @preempt_count() #2
  %2 = and i32 %call4, 65280
  %or768 = or i32 %or66, %2
  %tobool.not = icmp eq i32 %or768, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  %counter = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0, i32 0
  %3 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %counter) #3, !srcloc !8
  %and1269 = and i32 %3, 255
  %tobool13.not70 = icmp eq i32 %and1269, 0
  br i1 %tobool13.not70, label %return, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %if.then
  %4 = bitcast %struct.qrwlock* %lock to i8*
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %if.end
  %5 = phi i32 [ %3, %if.end.lr.ph ], [ %6, %if.end ]
  %conv15 = sext i32 %5 to i64
  call fastcc void @__cmpwait_case_32(i8* noundef %4, i64 noundef %conv15) #4
  %6 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %counter) #3, !srcloc !8
  %and12 = and i32 %6, 255
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %return, label %if.end

if.end17:                                         ; preds = %entry
  %cnts18 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %cnts18) #4
  %wait_lock = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 1
  %7 = bitcast %struct.qspinlock* %wait_lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %7, i32 noundef 0, i32 noundef 1) #4
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %if.end17
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %wait_lock, i32 noundef %call11.i.i.i.i) #4
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %if.end17, %if.end.i
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %cnts18) #4
  %counter22 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0, i32 0
  %8 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %counter22) #3, !srcloc !9
  %and3571 = and i32 %8, 255
  %tobool36.not72 = icmp eq i32 %and3571, 0
  br i1 %tobool36.not72, label %for.end40, label %if.end38.lr.ph

if.end38.lr.ph:                                   ; preds = %queued_spin_lock.exit
  %9 = bitcast %struct.qrwlock* %lock to i8*
  br label %if.end38

if.end38:                                         ; preds = %if.end38.lr.ph, %if.end38
  %10 = phi i32 [ %8, %if.end38.lr.ph ], [ %11, %if.end38 ]
  %conv39 = sext i32 %10 to i64
  call fastcc void @__cmpwait_case_32(i8* noundef %9, i64 noundef %conv39) #4
  %11 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %counter22) #3, !srcloc !9
  %and35 = and i32 %11, 255
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %for.end40, label %if.end38

for.end40:                                        ; preds = %if.end38, %queued_spin_lock.exit
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %7, i8 0) #3, !srcloc !10
  br label %return

return:                                           ; preds = %if.end, %if.then, %for.end40
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #5, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.5* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @queued_write_lock_slowpath(%struct.qrwlock* noundef %lock) local_unnamed_addr #0 {
entry:
  %wait_lock = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 1
  %0 = bitcast %struct.qspinlock* %wait_lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #4
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %wait_lock, i32 noundef %call11.i.i.i.i) #4
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  %cnts1 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0
  %counter.i = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %queued_spin_lock.exit
  %2 = bitcast %struct.qrwlock* %lock to i8*
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %2, i32 noundef 0, i32 noundef 255) #4
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp.not.i.i, label %unlock, label %if.end

if.end:                                           ; preds = %queued_spin_lock.exit, %land.lhs.true
  %.pre-phi = bitcast %struct.qrwlock* %lock to i8*
  call fastcc void @__ll_sc_atomic_or(%struct.atomic_t* noundef %cnts1) #4
  br label %do.body

do.body:                                          ; preds = %for.end, %if.end
  %3 = load volatile i32, i32* %counter.i, align 4
  %cmp32 = icmp eq i32 %3, 256
  br i1 %cmp32, label %for.end, label %if.end8

if.end8:                                          ; preds = %do.body, %if.end8
  %4 = phi i32 [ %5, %if.end8 ], [ %3, %do.body ]
  %conv = sext i32 %4 to i64
  call fastcc void @__cmpwait_case_32(i8* noundef %.pre-phi, i64 noundef %conv) #4
  %5 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp eq i32 %5, 256
  br i1 %cmp, label %for.end, label %if.end8

for.end:                                          ; preds = %if.end8, %do.body
  %call11.i.i.i26 = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %.pre-phi, i32 noundef 256, i32 noundef 255) #4
  %cmp.not.i.i27 = icmp eq i32 %call11.i.i.i26, 256
  br i1 %cmp.not.i.i27, label %unlock, label %do.body

unlock:                                           ; preds = %for.end, %land.lhs.true
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %0, i8 0) #3, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cmpwait_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call i64 asm sideeffect "\09sevl\0A\09wfe\0A\09ldxr\09${0:w}, $1\0A\09eor\09${0:w}, ${0:w}, ${2:w}\0A\09cbnz\09${0:w}, 1f\0A\09wfe\0A1:", "=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #3, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 512, i32* elementtype(i32) %counter) #3, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 512, i32* elementtype(i32) %counter) #3, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #3, !srcloc !15
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_or(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09orr\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Kr,*Q"(i32* elementtype(i32) %counter, i32 256, i32* elementtype(i32) %counter) #3, !srcloc !16
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind readnone }

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
!8 = !{i64 2151905068}
!9 = !{i64 2151909499}
!10 = !{i64 2149641309}
!11 = !{i64 1266070}
!12 = !{i64 2147934117, i64 2147934137, i64 2147934155, i64 2147934198, i64 2147934251, i64 2147934284, i64 2147934302}
!13 = !{i64 2147781152, i64 2147781668, i64 2147781698, i64 2147781725, i64 2147781759, i64 2147781789}
!14 = !{i64 2147771431, i64 2147771947, i64 2147771977, i64 2147772004, i64 2147772038, i64 2147772068}
!15 = !{i64 2147867293, i64 2147867326, i64 2147867379, i64 2147867438, i64 2147867472, i64 2147867527, i64 2147867556, i64 2147867576}
!16 = !{i64 2147795871, i64 2147796384, i64 2147796414, i64 2147796441, i64 2147796475, i64 2147796505}
