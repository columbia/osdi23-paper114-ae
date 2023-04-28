; ModuleID = 'kernel/irq_work.c'
source_filename = "kernel/irq_work.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.cpumask = type { [4 x i64] }
%struct.irq_work = type { %struct.__call_single_node, void (%struct.irq_work*)* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon, i16, i16 }
%union.anon = type { i32 }
%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.25, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
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

@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@raised_list = internal global %struct.llist_head zeroinitializer, section ".data..percpu", align 8
@lazy_list = internal global %struct.llist_head zeroinitializer, section ".data..percpu", align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @arch_irq_work_raise() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @irq_work_queue(%struct.irq_work* noundef %work) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @irq_work_claim(%struct.irq_work* noundef %work) #5
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  call fastcc void @__irq_work_queue_local(%struct.irq_work* noundef %work) #5
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @irq_work_claim(%struct.irq_work* noundef %work) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %work, i64 0, i32 0, i32 1
  %a_flags = bitcast %union.anon* %0 to %struct.atomic_t*
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_or(%struct.atomic_t* noundef %a_flags) #7
  %and = and i32 %call.i.i, 1
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__irq_work_queue_local(%struct.irq_work* noundef %work) unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.irq_work, %struct.irq_work* %work, i64 0, i32 0, i32 1, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  %llist9 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %work, i64 0, i32 0, i32 0
  %call16 = call fastcc i64 @__kern_my_cpu_offset() #5
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add = add i64 %call16, ptrtoint (%struct.llist_head* @lazy_list to i64)
  %1 = inttoptr i64 %add to %struct.llist_head*
  %call4 = call fastcc i1 @llist_add(%struct.llist_node* noundef %llist9, %struct.llist_head* noundef %1) #5
  br label %if.end21

if.else:                                          ; preds = %entry
  %add17 = add i64 %call16, ptrtoint (%struct.llist_head* @raised_list to i64)
  %2 = inttoptr i64 %add17 to %struct.llist_head*
  %call18 = call fastcc i1 @llist_add(%struct.llist_node* noundef %llist9, %struct.llist_head* noundef %2) #5
  br i1 %call18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.else
  call void @arch_irq_work_raise() #5
  br label %if.end21

if.end21:                                         ; preds = %if.then, %if.else, %if.then19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @irq_work_queue_on(%struct.irq_work* noundef %work, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @cpu_online(i32 noundef %cpu) #5
  br i1 %call, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq_work.c\22; .popsection; .long 14472b - 14470b; .short 95; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call22 = call fastcc i1 @irq_work_claim(%struct.irq_work* noundef %work) #5
  br i1 %call22, label %if.end24, label %return

if.end24:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %call27 = call fastcc i64 @__kern_my_cpu_offset() #5
  %add = add i64 %call27, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %cmp.not = icmp eq i32 %1, %cpu
  br i1 %cmp.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end24
  %call31 = call fastcc i32 @preempt_count() #5
  %2 = and i32 %call31, 15728640
  %tobool33.not = icmp eq i32 %2, 0
  br i1 %tobool33.not, label %if.end47, label %if.then46, !prof !10

if.then46:                                        ; preds = %if.then29
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq_work.c\22; .popsection; .long 14472b - 14470b; .short 106; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !13
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.then29
  %llist = getelementptr inbounds %struct.irq_work, %struct.irq_work* %work, i64 0, i32 0, i32 0
  call void @__smp_call_single_queue(i32 noundef %cpu, %struct.llist_node* noundef %llist) #7
  br label %if.end56

if.else:                                          ; preds = %if.end24
  call fastcc void @__irq_work_queue_local(%struct.irq_work* noundef %work) #5
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.end47
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  br label %return

return:                                           ; preds = %if.end, %if.end56
  ret i1 %call22
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_online(i32 noundef %cpu) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) #5
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #2 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #8, !srcloc !15
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #9, !srcloc !16
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.0* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__smp_call_single_queue(i32 noundef, %struct.llist_node* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @irq_work_needs_cpu() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #5
  %add = add i64 %call, ptrtoint (%struct.llist_head* @raised_list to i64)
  %0 = inttoptr i64 %add to %struct.llist_head*
  %add10 = add i64 %call, ptrtoint (%struct.llist_head* @lazy_list to i64)
  %1 = inttoptr i64 %add10 to %struct.llist_head*
  %call11 = call fastcc i1 @llist_empty(%struct.llist_head* noundef %0) #5
  %call13 = call fastcc i1 @llist_empty(%struct.llist_head* noundef %1) #5
  br i1 %call13, label %cleanup, label %if.end15

if.end15:                                         ; preds = %entry
  %call23 = call fastcc i64 @__kern_my_cpu_offset() #5
  %add24 = add i64 %call23, ptrtoint (i32* @cpu_number to i64)
  %2 = inttoptr i64 %add24 to i32*
  %3 = load i32, i32* %2, align 4
  %call25 = call fastcc i1 @cpu_online(i32 noundef %3) #5
  br i1 %call25, label %cleanup, label %if.then40, !prof !10

if.then40:                                        ; preds = %if.end15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq_work.c\22; .popsection; .long 14472b - 14470b; .short 130; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !17
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then40, %entry
  %4 = xor i1 %call13, true
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @llist_empty(%struct.llist_head* noundef %head) unnamed_addr #1 {
entry:
  %first = getelementptr inbounds %struct.llist_head, %struct.llist_head* %head, i64 0, i32 0
  %0 = load volatile %struct.llist_node*, %struct.llist_node** %first, align 8
  %cmp = icmp eq %struct.llist_node* %0, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_work_single(i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %arg to %struct.irq_work*
  %1 = getelementptr inbounds i8, i8* %arg, i64 8
  %counter.i = bitcast i8* %1 to i32*
  %2 = load volatile i32, i32* %counter.i, align 4
  %and = and i32 %2, -2
  store volatile i32 %and, i32* %counter.i, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !18
  %func = getelementptr inbounds i8, i8* %arg, i64 16
  %3 = bitcast i8* %func to void (%struct.irq_work*)**
  %4 = load void (%struct.irq_work*)*, void (%struct.irq_work*)** %3, align 8
  call void %4(%struct.irq_work* noundef %0) #7
  %and8 = and i32 %2, -4
  %call11.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %and, i32 noundef %and8) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_work_run() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #5
  %add = add i64 %call, ptrtoint (%struct.llist_head* @raised_list to i64)
  %0 = inttoptr i64 %add to %struct.llist_head*
  call fastcc void @irq_work_run_list(%struct.llist_head* noundef %0) #5
  %call8 = call fastcc i64 @__kern_my_cpu_offset() #5
  %add9 = add i64 %call8, ptrtoint (%struct.llist_head* @lazy_list to i64)
  %1 = inttoptr i64 %add9 to %struct.llist_head*
  call fastcc void @irq_work_run_list(%struct.llist_head* noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_work_run_list(%struct.llist_head* noundef %list) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #5
  %call10 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #5
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %do.body15, label %do.end22, !prof !19

do.body15:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq_work.c\22; .popsection; .long 14472b - 14470b; .short 170; .short 0; .popsection; 14471: brk 0x800", ""() #6, !srcloc !20
  unreachable

do.end22:                                         ; preds = %entry
  %call23 = call fastcc i1 @llist_empty(%struct.llist_head* noundef %list) #5
  br i1 %call23, label %cleanup, label %if.end25

if.end25:                                         ; preds = %do.end22
  %call26 = call fastcc %struct.llist_node* @llist_del_all(%struct.llist_head* noundef %list) #5
  %cmp31.not50 = icmp eq %struct.llist_node* %call26, null
  br i1 %cmp31.not50, label %cleanup, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.end25
  %0 = bitcast %struct.llist_node* %call26 to %struct.irq_work*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %land.rhs
  %work.051 = phi %struct.irq_work* [ %2, %land.rhs ], [ %0, %land.rhs.preheader ]
  %1 = bitcast %struct.irq_work* %work.051 to %struct.irq_work**
  %2 = load %struct.irq_work*, %struct.irq_work** %1, align 8
  %3 = bitcast %struct.irq_work* %work.051 to i8*
  call void @irq_work_single(i8* noundef nonnull %3) #5
  %cmp31.not = icmp eq %struct.irq_work* %2, null
  br i1 %cmp31.not, label %cleanup, label %land.rhs

cleanup:                                          ; preds = %land.rhs, %if.end25, %do.end22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_work_tick() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #5
  %add = add i64 %call, ptrtoint (%struct.llist_head* @raised_list to i64)
  %0 = inttoptr i64 %add to %struct.llist_head*
  %call2 = call fastcc i1 @llist_empty(%struct.llist_head* noundef %0) #5
  %call11 = call fastcc i64 @__kern_my_cpu_offset() #5
  %add12 = add i64 %call11, ptrtoint (%struct.llist_head* @lazy_list to i64)
  %1 = inttoptr i64 %add12 to %struct.llist_head*
  call fastcc void @irq_work_run_list(%struct.llist_head* noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_work_sync(%struct.irq_work* noundef %work) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i1 @irq_work_is_busy(%struct.irq_work* noundef %work) #5
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  call fastcc void @cpu_relax() #5
  %call = call fastcc i1 @irq_work_is_busy(%struct.irq_work* noundef %work) #5
  br i1 %call, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @irq_work_is_busy(%struct.irq_work* noundef %work) unnamed_addr #1 {
entry:
  %counter.i = getelementptr inbounds %struct.irq_work, %struct.irq_work* %work, i64 0, i32 0, i32 1, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #6, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_or(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09orr\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Kr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 35, i32* elementtype(i32) %counter) #6, !srcloc !22
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @llist_add(%struct.llist_node* noundef %new, %struct.llist_head* noundef %head) unnamed_addr #0 {
entry:
  %call = call i1 @llist_add_batch(%struct.llist_node* noundef %new, %struct.llist_node* noundef %new, %struct.llist_head* noundef %head) #7
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @llist_add_batch(%struct.llist_node* noundef, %struct.llist_node* noundef, %struct.llist_head* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) unnamed_addr #1 {
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

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #6, !srcloc !23
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #6, !srcloc !24
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #6, !srcloc !25
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.llist_node* @llist_del_all(%struct.llist_head* noundef %head) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.llist_head* %head to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %0) #7
  %1 = inttoptr i64 %call11.i to %struct.llist_node*
  ret %struct.llist_node* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #6, !srcloc !26
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { nofree nounwind readonly }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

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
!8 = !{i64 2152318140}
!9 = !{i64 2152318188}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152319753}
!12 = !{i64 2152320102}
!13 = !{i64 2152322502}
!14 = !{i64 2152322852}
!15 = !{i64 2148838582, i64 2148838629, i64 2148838635, i64 2148838672, i64 2148838690, i64 2148839617, i64 2148839665, i64 2148839713, i64 2148839776, i64 2148839825, i64 2148838768, i64 2148838793, i64 2148838819, i64 2148838825, i64 2148838862, i64 2148838868, i64 2148838918, i64 2148838964, i64 2148838997}
!16 = !{i64 1182340}
!17 = !{i64 2152327775}
!18 = !{i64 2152328127}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2152330464}
!21 = !{i64 1825472}
!22 = !{i64 2147859277, i64 2147859930, i64 2147859960, i64 2147859992, i64 2147860026, i64 2147860062, i64 2147860087}
!23 = !{i64 2147947057, i64 2147947090, i64 2147947142, i64 2147947201, i64 2147947235, i64 2147947291, i64 2147947320, i64 2147947347}
!24 = !{i64 2149287993, i64 2149288040, i64 2149288046, i64 2149288083, i64 2149288101, i64 2149289412, i64 2149289460, i64 2149289508, i64 2149289571, i64 2149289620, i64 2149288179, i64 2149288204, i64 2149288230, i64 2149288236, i64 2149289078, i64 2149289118, i64 2149289136, i64 2149289168, i64 2149289196, i64 2149289250, i64 2149289270, i64 2149289367, i64 2149288259, i64 2149288273, i64 2149288279, i64 2149288329, i64 2149288375, i64 2149288408}
!25 = !{i64 2149290172, i64 2149290219, i64 2149290225, i64 2149290262, i64 2149290280, i64 2149291223, i64 2149291271, i64 2149291319, i64 2149291382, i64 2149291431, i64 2149290358, i64 2149290383, i64 2149290409, i64 2149290415, i64 2149290452, i64 2149290458, i64 2149290508, i64 2149290554, i64 2149290587}
!26 = !{i64 2147968865, i64 2147968897, i64 2147968941, i64 2147968988, i64 2147969014}
