; ModuleID = 'kernel/locking/osq_lock.c'
source_filename = "kernel/locking/osq_lock.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.optimistic_spin_node = type { %struct.optimistic_spin_node*, %struct.optimistic_spin_node*, i32, i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.24, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.kernel_siginfo = type { %struct.anon.11 }
%struct.anon.11 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.15 }
%struct.anon.15 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.rseq = type { i32, i32, %union.anon.23, i32, [12 x i8] }
%union.anon.23 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.24 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type opaque
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.25, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.25 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}

@osq_node = internal global %struct.optimistic_spin_node zeroinitializer, section ".data..percpu..shared_aligned", align 64
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @osq_lock(%struct.optimistic_spin_queue* noundef %lock) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #6
  %add = add i64 %call, ptrtoint (%struct.optimistic_spin_node* @osq_node to i64)
  %0 = inttoptr i64 %add to %struct.optimistic_spin_node*
  %add10 = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add10 to i32*
  %2 = load i32, i32* %1, align 4
  %call11 = call fastcc i32 @encode_cpu(i32 noundef %2) #6
  %locked = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %0, i64 0, i32 2
  store i32 0, i32* %locked, align 8
  %next12 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %0, i64 0, i32 0
  store %struct.optimistic_spin_node* null, %struct.optimistic_spin_node** %next12, align 8
  %cpu = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %0, i64 0, i32 3
  store i32 %call11, i32* %cpu, align 4
  %3 = bitcast %struct.optimistic_spin_queue* %lock to i8*
  %call8.i.i = call fastcc i32 @__xchg_case_mb_32(i32 noundef %call11, i8* noundef %3) #7
  %cmp = icmp eq i32 %call8.i.i, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call14 = call fastcc %struct.optimistic_spin_node* @decode_cpu(i32 noundef %call8.i.i) #6
  %prev15 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %0, i64 0, i32 1
  store %struct.optimistic_spin_node* %call14, %struct.optimistic_spin_node** %prev15, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !8
  %next21 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %call14, i64 0, i32 0
  store volatile %struct.optimistic_spin_node* %0, %struct.optimistic_spin_node** %next21, align 8
  %4 = load volatile i32, i32* %locked, align 4
  %tobool.not147 = icmp eq i32 %4, 0
  br i1 %tobool.not147, label %lor.lhs.false.lr.ph, label %cleanup

lor.lhs.false.lr.ph:                              ; preds = %if.end
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #9, !srcloc !9
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %7 = getelementptr %struct.task_struct, %struct.task_struct* %6, i64 0, i32 0
  %8 = bitcast i32* %locked to i8*
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.false.lr.ph, %lor.lhs.false32
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %7) #7
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false32, label %for.cond42

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  call fastcc void @__cmpwait_case_32(i8* noundef %8) #7
  %9 = load volatile i32, i32* %locked, align 4
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

for.cond42:                                       ; preds = %lor.lhs.false, %if.end64
  %prev.0 = phi %struct.optimistic_spin_node* [ %14, %if.end64 ], [ %call14, %lor.lhs.false ]
  %next44 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %prev.0, i64 0, i32 0
  %10 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %next44, align 8
  %cmp46 = icmp eq %struct.optimistic_spin_node* %10, %0
  br i1 %cmp46, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %for.cond42
  %11 = bitcast %struct.optimistic_spin_node* %prev.0 to i8*
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %11, i64 noundef %add) #7
  %12 = inttoptr i64 %call14.i to %struct.optimistic_spin_node*
  %cmp52 = icmp eq %struct.optimistic_spin_node* %12, %0
  br i1 %cmp52, label %for.end70, label %if.end55

if.end55:                                         ; preds = %land.lhs.true, %for.cond42
  %13 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %locked) #8, !srcloc !10
  %tobool62.not = icmp eq i32 %13, 0
  br i1 %tobool62.not, label %if.end64, label %cleanup

if.end64:                                         ; preds = %if.end55
  call fastcc void @cpu_relax() #6
  %14 = load volatile %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %prev15, align 8
  br label %for.cond42

for.end70:                                        ; preds = %land.lhs.true
  %call71 = call fastcc %struct.optimistic_spin_node* @osq_wait_next(%struct.optimistic_spin_queue* noundef %lock, %struct.optimistic_spin_node* noundef %0, %struct.optimistic_spin_node* noundef %prev.0) #6
  %tobool72.not = icmp eq %struct.optimistic_spin_node* %call71, null
  br i1 %tobool72.not, label %cleanup, label %do.body79

do.body79:                                        ; preds = %for.end70
  %next44.le = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %prev.0, i64 0, i32 0
  %prev80 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %call71, i64 0, i32 1
  store volatile %struct.optimistic_spin_node* %prev.0, %struct.optimistic_spin_node** %prev80, align 8
  store volatile %struct.optimistic_spin_node* %call71, %struct.optimistic_spin_node** %next44.le, align 8
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false32, %if.end55, %if.end, %for.end70, %entry, %do.body79
  %retval.0 = phi i1 [ false, %do.body79 ], [ true, %entry ], [ false, %for.end70 ], [ true, %if.end ], [ true, %if.end55 ], [ true, %lor.lhs.false32 ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #1 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #10, !srcloc !11
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @encode_cpu(i32 noundef %cpu_nr) unnamed_addr #2 {
entry:
  %add = add i32 %cpu_nr, 1
  ret i32 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.optimistic_spin_node* @decode_cpu(i32 noundef %encoded_cpu_val) unnamed_addr #3 {
entry:
  %sub = add i32 %encoded_cpu_val, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.optimistic_spin_node* @osq_node to i64)
  %1 = inttoptr i64 %add to %struct.optimistic_spin_node*
  ret %struct.optimistic_spin_node* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #8, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.optimistic_spin_node* @osq_wait_next(%struct.optimistic_spin_queue* noundef %lock, %struct.optimistic_spin_node* noundef %node, %struct.optimistic_spin_node* noundef readonly %prev) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #6
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc i32 @encode_cpu(i32 noundef %1) #6
  %tobool.not = icmp eq %struct.optimistic_spin_node* %prev, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %cpu = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %prev, i64 0, i32 3
  %2 = load i32, i32* %cpu, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %entry ]
  %3 = bitcast %struct.optimistic_spin_queue* %lock to i8*
  %4 = bitcast %struct.optimistic_spin_node* %node to i8*
  %counter.i = getelementptr inbounds %struct.optimistic_spin_queue, %struct.optimistic_spin_queue* %lock, i64 0, i32 0, i32 0
  %next7 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %node, i64 0, i32 0
  br label %for.cond

for.cond:                                         ; preds = %if.end17, %cond.end
  %5 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp eq i32 %5, %call2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %call11.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %3, i32 noundef %call2, i32 noundef %cond) #7
  %cmp6 = icmp eq i32 %call11.i.i, %call2
  br i1 %cmp6, label %for.end, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.cond
  %6 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %next7, align 8
  %tobool8.not = icmp eq %struct.optimistic_spin_node* %6, null
  br i1 %tobool8.not, label %if.end17, label %if.then9

if.then9:                                         ; preds = %if.end
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i64 noundef 0, i8* noundef %4) #7
  %tobool14.not = icmp eq i64 %call11.i, 0
  br i1 %tobool14.not, label %if.end17, label %for.end.split.loop.exit

if.end17:                                         ; preds = %if.then9, %if.end
  call fastcc void @cpu_relax() #6
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %if.then9
  %7 = inttoptr i64 %call11.i to %struct.optimistic_spin_node*
  br label %for.end

for.end:                                          ; preds = %land.lhs.true, %for.end.split.loop.exit
  %next.2 = phi %struct.optimistic_spin_node* [ %7, %for.end.split.loop.exit ], [ null, %land.lhs.true ]
  ret %struct.optimistic_spin_node* %next.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @osq_unlock(%struct.optimistic_spin_queue* noundef %lock) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #6
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc i32 @encode_cpu(i32 noundef %1) #6
  %2 = bitcast %struct.optimistic_spin_queue* %lock to i8*
  %call11.i.i = call fastcc i32 @__cmpxchg_case_rel_32(i8* noundef %2, i32 noundef %call2) #7
  %cmp = icmp eq i32 %call11.i.i, %call2
  br i1 %cmp, label %cleanup, label %do.body5, !prof !13

do.body5:                                         ; preds = %entry
  %call12 = call fastcc i64 @__kern_my_cpu_offset() #6
  %add13 = add i64 %call12, ptrtoint (%struct.optimistic_spin_node* @osq_node to i64)
  %3 = inttoptr i64 %add13 to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i64 noundef 0, i8* noundef %3) #7
  %tobool18.not = icmp eq i64 %call11.i, 0
  br i1 %tobool18.not, label %if.end29, label %do.body24

do.body24:                                        ; preds = %do.body5
  %4 = inttoptr i64 %call11.i to %struct.optimistic_spin_node*
  br label %cleanup.sink.split

if.end29:                                         ; preds = %do.body5
  %5 = inttoptr i64 %add13 to %struct.optimistic_spin_node*
  %call30 = call fastcc %struct.optimistic_spin_node* @osq_wait_next(%struct.optimistic_spin_queue* noundef %lock, %struct.optimistic_spin_node* noundef %5, %struct.optimistic_spin_node* noundef null) #6
  %tobool31.not = icmp eq %struct.optimistic_spin_node* %call30, null
  br i1 %tobool31.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end29, %do.body24
  %call30.sink = phi %struct.optimistic_spin_node* [ %4, %do.body24 ], [ %call30, %if.end29 ]
  %locked38 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %call30.sink, i64 0, i32 2
  store volatile i32 1, i32* %locked38, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end29, %entry
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 1
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cmpwait_case_32(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call i64 asm sideeffect "\09sevl\0A\09wfe\0A\09ldxr\09${0:w}, $1\0A\09eor\09${0:w}, ${0:w}, ${2:w}\0A\09cbnz\09${0:w}, 1f\0A\09wfe\0A1:", "=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #8, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old) #6
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 0, i64* elementtype(i64) %0) #8, !srcloc !15
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #8, !srcloc !16
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_rel_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_rel_32(i8* noundef %ptr, i64 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_rel_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 0, i32* elementtype(i32) %0) #8, !srcloc !17
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__xchg_case_mb_32(i32 noundef %x, i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i32, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09stlxr\09${1:w}, ${3:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i32* elementtype(i32) %0, i32 %x, i32* elementtype(i32) %0) #8, !srcloc !18
  %asmresult = extractvalue { i32, i64 } %1, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i64 noundef %x, i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %x, i64* elementtype(i64) %0) #8, !srcloc !19
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree nounwind readonly }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

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
!8 = !{i64 2150455343}
!9 = !{i64 1165395}
!10 = !{i64 2150462930}
!11 = !{i64 2148836716, i64 2148836763, i64 2148836769, i64 2148836806, i64 2148836824, i64 2148837751, i64 2148837799, i64 2148837847, i64 2148837910, i64 2148837959, i64 2148836902, i64 2148836927, i64 2148836953, i64 2148836959, i64 2148836996, i64 2148837002, i64 2148837052, i64 2148837098, i64 2148837131}
!12 = !{i64 1816542}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148004741, i64 2148004761, i64 2148004779, i64 2148004822, i64 2148004875, i64 2148004908, i64 2148004926}
!15 = !{i64 2147956775, i64 2147956808, i64 2147956859, i64 2147956915, i64 2147956948, i64 2147957003, i64 2147957032, i64 2147957059}
!16 = !{i64 2147941978, i64 2147942011, i64 2147942064, i64 2147942123, i64 2147942157, i64 2147942212, i64 2147942241, i64 2147942261}
!17 = !{i64 2147948537, i64 2147948570, i64 2147948622, i64 2147948681, i64 2147948715, i64 2147948771, i64 2147948800, i64 2147948820}
!18 = !{i64 2147975834, i64 2147975866, i64 2147975911, i64 2147975959, i64 2147975985}
!19 = !{i64 2147976933, i64 2147976965, i64 2147977009, i64 2147977056, i64 2147977082}
