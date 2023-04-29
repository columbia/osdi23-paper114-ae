; ModuleID = 'lib/radix-tree.c'
source_filename = "lib/radix-tree.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.radix_tree_preload = type { %struct.local_lock_t, i32, %struct.xa_node* }
%struct.local_lock_t = type {}
%struct.xa_node = type { i8, i8, i8, i8, %struct.xa_node*, %struct.xarray*, %union.anon.2, [64 x i8*], %union.anon.3 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.3 = type { [3 x [1 x i64]] }
%struct.kmem_cache = type opaque
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.radix_tree_iter = type { i64, i64, i64, %struct.xa_node* }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.32, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.9 }
%union.anon.9 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.11, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.11 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.12, [0 x i64] }
%struct.anon.12 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.13, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.13 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.kernel_siginfo = type { %struct.anon.19 }
%struct.anon.19 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.23 }
%struct.anon.23 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.31, i32, [12 x i8] }
%union.anon.31 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.32 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.33, %union.anon.47, %struct.atomic_t, [8 x i8] }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.47 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.48, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.48 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}

@radix_tree_preloads = dso_local global %struct.radix_tree_preload { %struct.local_lock_t undef, i32 0, %struct.xa_node* null }, section ".data..percpu", align 8
@radix_tree_node_cachep = dso_local local_unnamed_addr global %struct.kmem_cache* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"radix_tree_node\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"lib/radix:dead\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @radix_tree_node_rcu_free(%struct.callback_head* noundef %head) #0 {
entry:
  %add.ptr = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 -2, i32 1
  %0 = bitcast void (%struct.callback_head*)** %add.ptr to i8*
  %slots = getelementptr inbounds void (%struct.callback_head*)*, void (%struct.callback_head*)** %add.ptr, i64 5
  %1 = bitcast void (%struct.callback_head*)** %slots to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 512) #15
  %2 = getelementptr inbounds void (%struct.callback_head*)*, void (%struct.callback_head*)** %add.ptr, i64 69
  %3 = bitcast void (%struct.callback_head*)** %2 to i8*
  %call2 = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef 24) #15
  %4 = getelementptr inbounds void (%struct.callback_head*)*, void (%struct.callback_head*)** %add.ptr, i64 3
  %private_list = bitcast void (%struct.callback_head*)** %4 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %private_list) #16
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** @radix_tree_node_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %5, i8* noundef %0) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @radix_tree_preload(i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @gfpflags_allow_blocking(i32 noundef %gfp_mask) #16
  br i1 %call, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 366; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call15 = call fastcc i32 @__radix_tree_preload(i32 noundef %gfp_mask, i32 noundef 21) #16
  ret i32 %call15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gfpflags_allow_blocking(i32 noundef %gfp_flags) unnamed_addr #4 {
entry:
  %and = and i32 %gfp_flags, 1024
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__radix_tree_preload(i32 noundef %gfp_mask, i32 noundef %nr) unnamed_addr #0 {
entry:
  %and = and i32 %gfp_mask, -4194305
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  %add13 = add i64 %call, ptrtoint (%struct.radix_tree_preload* @radix_tree_preloads to i64)
  %0 = inttoptr i64 %add13 to %struct.radix_tree_preload*
  %nr1478 = getelementptr inbounds %struct.radix_tree_preload, %struct.radix_tree_preload* %0, i64 0, i32 1
  %1 = load i32, i32* %nr1478, align 8
  %cmp79 = icmp ult i32 %1, %nr
  br i1 %cmp79, label %do.body16, label %out

do.body16:                                        ; preds = %entry, %if.end55
  %call23 = call fastcc i64 @__kern_my_cpu_offset() #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** @radix_tree_node_cachep, align 8
  %call27 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %2, i32 noundef %and) #15
  %cmp28 = icmp eq i8* %call27, null
  br i1 %cmp28, label %out, label %do.body29

do.body29:                                        ; preds = %do.body16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %call37 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add49 = add i64 %call37, ptrtoint (%struct.radix_tree_preload* @radix_tree_preloads to i64)
  %3 = inttoptr i64 %add49 to %struct.radix_tree_preload*
  %nr50 = getelementptr inbounds %struct.radix_tree_preload, %struct.radix_tree_preload* %3, i64 0, i32 1
  %4 = load i32, i32* %nr50, align 8
  %cmp51 = icmp ult i32 %4, %nr
  br i1 %cmp51, label %if.then52, label %if.else

if.then52:                                        ; preds = %do.body29
  %nodes = getelementptr inbounds %struct.radix_tree_preload, %struct.radix_tree_preload* %3, i64 0, i32 2
  %5 = load %struct.xa_node*, %struct.xa_node** %nodes, align 8
  %parent = getelementptr inbounds i8, i8* %call27, i64 8
  %6 = bitcast i8* %parent to %struct.xa_node**
  store %struct.xa_node* %5, %struct.xa_node** %6, align 8
  %7 = bitcast %struct.xa_node** %nodes to i8**
  store i8* %call27, i8** %7, align 8
  %8 = load i32, i32* %nr50, align 8
  %inc = add i32 %8, 1
  store i32 %inc, i32* %nr50, align 8
  br label %if.end55

if.else:                                          ; preds = %do.body29
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** @radix_tree_node_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %9, i8* noundef nonnull %call27) #15
  %.pre = load i32, i32* %nr50, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then52
  %10 = phi i32 [ %.pre, %if.else ], [ %inc, %if.then52 ]
  %cmp = icmp ult i32 %10, %nr
  br i1 %cmp, label %do.body16, label %out

out:                                              ; preds = %do.body16, %if.end55, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end55 ], [ -12, %do.body16 ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @radix_tree_maybe_preload(i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @gfpflags_allow_blocking(i32 noundef %gfp_mask) #16
  br i1 %call, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @__radix_tree_preload(i32 noundef %gfp_mask, i32 noundef 21) #16
  br label %return

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %call4 = call fastcc i64 @__kern_my_cpu_offset() #16
  br label %return

return:                                           ; preds = %do.body, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #5 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #18, !srcloc !14
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @radix_tree_insert(%struct.xarray* noundef %root, i64 noundef %index, i8* noundef %item) local_unnamed_addr #0 {
entry:
  %node = alloca %struct.xa_node*, align 8
  %slot = alloca i8**, align 8
  %0 = bitcast %struct.xa_node** %node to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.xa_node* null, %struct.xa_node** %node, align 8, !annotation !15
  %1 = bitcast i8*** %slot to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i8** null, i8*** %slot, align 8, !annotation !15
  %call = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %item) #16
  br i1 %call, label %do.body2, label %do.end7, !prof !16

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 708; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !17
  unreachable

do.end7:                                          ; preds = %entry
  %call8 = call fastcc i32 @__radix_tree_create(%struct.xarray* noundef %root, i64 noundef %index, %struct.xa_node** noundef nonnull %node, i8*** noundef nonnull %slot) #16
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %do.end7
  %2 = load %struct.xa_node*, %struct.xa_node** %node, align 8
  %3 = load i8**, i8*** %slot, align 8
  %call12 = call fastcc i32 @insert_entries(%struct.xa_node* noundef %2, i8** noundef %3, i8* noundef %item) #16
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end11
  %4 = load %struct.xa_node*, %struct.xa_node** %node, align 8
  %tobool16.not = icmp eq %struct.xa_node* %4, null
  br i1 %tobool16.not, label %do.body80, label %if.then17

if.then17:                                        ; preds = %if.end15
  %5 = load i8**, i8*** %slot, align 8
  %call18 = call fastcc i64 @get_slot_offset(%struct.xa_node* noundef nonnull %4, i8** noundef %5) #16
  %conv19 = trunc i64 %call18 to i32
  %call21 = call fastcc i32 @tag_get(%struct.xa_node* noundef nonnull %4, i32 noundef 0, i32 noundef %conv19) #16
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body40, label %do.body31, !prof !8

do.body31:                                        ; preds = %if.then17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 720; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !18
  unreachable

do.body40:                                        ; preds = %if.then17
  %6 = load %struct.xa_node*, %struct.xa_node** %node, align 8
  %call41 = call fastcc i32 @tag_get(%struct.xa_node* noundef %6, i32 noundef 1, i32 noundef %conv19) #16
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.body60, label %do.body51, !prof !8

do.body51:                                        ; preds = %do.body40
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 721; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !19
  unreachable

do.body60:                                        ; preds = %do.body40
  %7 = load %struct.xa_node*, %struct.xa_node** %node, align 8
  %call61 = call fastcc i32 @tag_get(%struct.xa_node* noundef %7, i32 noundef 2, i32 noundef %conv19) #16
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %cleanup, label %do.body71, !prof !8

do.body71:                                        ; preds = %do.body60
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 722; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !20
  unreachable

do.body80:                                        ; preds = %if.end15
  %call81 = call fastcc i32 @root_tags_get(%struct.xarray* noundef %root) #16
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %cleanup, label %do.body91, !prof !8

do.body91:                                        ; preds = %do.body80
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 724; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !21
  unreachable

cleanup:                                          ; preds = %do.body80, %do.body60, %if.end11, %do.end7
  %retval.0 = phi i32 [ %call8, %do.end7 ], [ %call12, %if.end11 ], [ 0, %do.body60 ], [ 0, %do.body80 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @radix_tree_is_internal_node(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %and = and i64 %0, 3
  %cmp = icmp eq i64 %and, 2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__radix_tree_create(%struct.xarray* noundef %root, i64 noundef %index, %struct.xa_node** noundef writeonly %nodep, i8*** noundef writeonly %slotp) unnamed_addr #0 {
entry:
  %child = alloca %struct.xa_node*, align 8
  %maxindex = alloca i64, align 8
  %0 = bitcast %struct.xa_node** %child to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.xa_node* null, %struct.xa_node** %child, align 8, !annotation !15
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 2
  %1 = bitcast i64* %maxindex to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %maxindex, align 8, !annotation !15
  %call = call fastcc i32 @root_gfp_mask(%struct.xarray* noundef %root) #16
  %call1 = call fastcc i32 @radix_tree_load_root(%struct.xarray* noundef %root, %struct.xa_node** noundef nonnull %child, i64* noundef nonnull %maxindex) #16
  %2 = load i64, i64* %maxindex, align 8
  %cmp = icmp ult i64 %2, %index
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call2 = call fastcc i32 @radix_tree_extend(%struct.xarray* noundef %root, i32 noundef %call, i64 noundef %index, i32 noundef %call1) #16
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %cleanup40, label %cleanup

cleanup:                                          ; preds = %if.then
  %3 = load volatile i8*, i8** %xa_head, align 8
  %4 = bitcast %struct.xa_node** %child to i8**
  store i8* %3, i8** %4, align 8
  br label %if.end7

if.end7:                                          ; preds = %cleanup, %entry
  %shift.1 = phi i32 [ %call2, %cleanup ], [ %call1, %entry ]
  %cmp8.not85 = icmp eq i32 %shift.1, 0
  br i1 %cmp8.not85, label %while.end, label %while.body

while.body:                                       ; preds = %if.end7, %if.end31
  %node.089 = phi %struct.xa_node* [ %call32, %if.end31 ], [ null, %if.end7 ]
  %slot.088 = phi i8** [ %arrayidx, %if.end31 ], [ %xa_head, %if.end7 ]
  %shift.287 = phi i32 [ %sub, %if.end31 ], [ %shift.1, %if.end7 ]
  %offset.086 = phi i32 [ %call33, %if.end31 ], [ 0, %if.end7 ]
  %sub = add i32 %shift.287, -6
  %5 = load %struct.xa_node*, %struct.xa_node** %child, align 8
  %cmp9 = icmp eq %struct.xa_node* %5, null
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  %call11 = call fastcc %struct.xa_node* @radix_tree_node_alloc(i32 noundef %call, %struct.xa_node* noundef %node.089, %struct.xarray* noundef %root, i32 noundef %sub, i32 noundef %offset.086, i32 noundef 0) #16
  store %struct.xa_node* %call11, %struct.xa_node** %child, align 8
  %tobool.not = icmp eq %struct.xa_node* %call11, null
  %6 = getelementptr %struct.xa_node, %struct.xa_node* %call11, i64 0, i32 0
  br i1 %tobool.not, label %cleanup40, label %do.body14

do.body14:                                        ; preds = %if.then10
  %7 = getelementptr %struct.xa_node, %struct.xa_node* %call11, i64 0, i32 0
  %call15 = call fastcc i8* @node_to_entry(i8* noundef %7) #16
  %8 = ptrtoint i8* %call15 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i8** elementtype(i8*) %slot.088, i64 %8) #17, !srcloc !22
  %tobool25.not = icmp eq %struct.xa_node* %node.089, null
  br i1 %tobool25.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %do.body14
  %count = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.089, i64 0, i32 2
  %9 = load i8, i8* %count, align 2
  %inc = add i8 %9, 1
  store i8 %inc, i8* %count, align 2
  br label %if.end31

if.else:                                          ; preds = %while.body
  %10 = getelementptr %struct.xa_node, %struct.xa_node* %5, i64 0, i32 0
  %11 = getelementptr %struct.xa_node, %struct.xa_node* %5, i64 0, i32 0
  %call28 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %11) #16
  br i1 %call28, label %if.end31, label %while.end

if.end31:                                         ; preds = %if.else, %do.body14, %if.then26
  %12 = phi i8* [ %10, %if.else ], [ %6, %do.body14 ], [ %6, %if.then26 ]
  %call32 = call fastcc %struct.xa_node* @entry_to_node(i8* noundef %12) #16
  %call33 = call fastcc i32 @radix_tree_descend(%struct.xa_node* noundef %call32, %struct.xa_node** noundef nonnull %child, i64 noundef %index) #16
  %idxprom = zext i32 %call33 to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %call32, i64 0, i32 7, i64 %idxprom
  %cmp8.not = icmp eq i32 %sub, 0
  br i1 %cmp8.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end31, %if.else, %if.end7
  %slot.0.lcssa = phi i8** [ %xa_head, %if.end7 ], [ %slot.088, %if.else ], [ %arrayidx, %if.end31 ]
  %node.0.lcssa = phi %struct.xa_node* [ null, %if.end7 ], [ %node.089, %if.else ], [ %call32, %if.end31 ]
  %tobool34.not = icmp eq %struct.xa_node** %nodep, null
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %while.end
  store %struct.xa_node* %node.0.lcssa, %struct.xa_node** %nodep, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %while.end
  %tobool37.not = icmp eq i8*** %slotp, null
  br i1 %tobool37.not, label %cleanup40, label %if.then38

if.then38:                                        ; preds = %if.end36
  store i8** %slot.0.lcssa, i8*** %slotp, align 8
  br label %cleanup40

cleanup40:                                        ; preds = %if.then10, %if.then, %if.end36, %if.then38
  %retval.1 = phi i32 [ 0, %if.then38 ], [ 0, %if.end36 ], [ %call2, %if.then ], [ -12, %if.then10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @insert_entries(%struct.xa_node* noundef %node, i8** noundef %slot, i8* noundef %item) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %slot, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %do.body, label %return

do.body:                                          ; preds = %entry
  %1 = ptrtoint i8* %item to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i8** elementtype(i8*) %slot, i64 %1) #17, !srcloc !23
  %tobool18.not = icmp eq %struct.xa_node* %node, null
  br i1 %tobool18.not, label %return, label %if.then19

if.then19:                                        ; preds = %do.body
  %count = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 2
  %2 = load i8, i8* %count, align 2
  %inc = add i8 %2, 1
  store i8 %inc, i8* %count, align 2
  %call20 = call fastcc i1 @xa_is_value(i8* noundef %item) #16
  br i1 %call20, label %if.then21, label %return

if.then21:                                        ; preds = %if.then19
  %nr_values = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 3
  %3 = load i8, i8* %nr_values, align 1
  %inc22 = add i8 %3, 1
  store i8 %inc22, i8* %nr_values, align 1
  br label %return

return:                                           ; preds = %do.body, %if.then21, %if.then19, %entry
  %retval.0 = phi i32 [ -17, %entry ], [ 1, %if.then19 ], [ 1, %if.then21 ], [ 1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @get_slot_offset(%struct.xa_node* noundef %parent, i8** noundef %slot) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.xa_node* %parent, null
  %arraydecay = getelementptr inbounds %struct.xa_node, %struct.xa_node* %parent, i64 0, i32 7, i64 0
  %sub.ptr.lhs.cast = ptrtoint i8** %slot to i64
  %sub.ptr.rhs.cast = ptrtoint i8** %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %cond = select i1 %tobool.not, i64 0, i64 %sub.ptr.div
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @tag_get(%struct.xa_node* noundef %node, i32 noundef %tag, i32 noundef %offset) unnamed_addr #6 {
entry:
  %idxprom = zext i32 %tag to i64
  %div.i = lshr i32 %offset, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.xa_node, %struct.xa_node* %node, i64 0, i32 8, i32 0, i64 %idxprom, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %offset, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @root_tags_get(%struct.xarray* nocapture noundef readonly %root) unnamed_addr #7 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %shr = lshr i32 %0, 25
  ret i32 %shr
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i8* @__radix_tree_lookup(%struct.xarray* noundef %root, i64 noundef %index, %struct.xa_node** noundef writeonly %nodep, i8*** noundef writeonly %slotp) local_unnamed_addr #8 {
entry:
  %node = alloca %struct.xa_node*, align 8
  %maxindex = alloca i64, align 8
  %0 = bitcast %struct.xa_node** %node to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.xa_node* null, %struct.xa_node** %node, align 8, !annotation !15
  %1 = bitcast i64* %maxindex to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %maxindex, align 8, !annotation !15
  %call39 = call fastcc i32 @radix_tree_load_root(%struct.xarray* noundef %root, %struct.xa_node** noundef nonnull %node, i64* noundef nonnull %maxindex) #16
  %2 = load i64, i64* %maxindex, align 8
  %cmp40 = icmp ult i64 %2, %index
  br i1 %cmp40, label %cleanup17, label %while.cond.preheader.lr.ph

while.cond.preheader.lr.ph:                       ; preds = %entry
  %3 = bitcast %struct.xa_node** %node to i8**
  br label %while.cond.preheader

restart.loopexit:                                 ; preds = %while.body
  %call = call fastcc i32 @radix_tree_load_root(%struct.xarray* noundef %root, %struct.xa_node** noundef nonnull %node, i64* noundef nonnull %maxindex) #16
  %4 = load i64, i64* %maxindex, align 8
  %cmp = icmp ult i64 %4, %index
  br i1 %cmp, label %cleanup17, label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %restart.loopexit
  %5 = load i8*, i8** %3, align 8
  %call133 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %5) #16
  br i1 %call133, label %while.body, label %while.cond.preheader.while.end_crit_edge

while.cond:                                       ; preds = %if.end7
  %call1 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %8) #16
  br i1 %call1, label %while.body, label %while.end.loopexit

while.body:                                       ; preds = %while.cond.preheader, %while.cond
  %6 = phi i8* [ %8, %while.cond ], [ %5, %while.cond.preheader ]
  %call2 = call fastcc %struct.xa_node* @entry_to_node(i8* noundef %6) #16
  %call3 = call fastcc i32 @radix_tree_descend(%struct.xa_node* noundef %call2, %struct.xa_node** noundef nonnull %node, i64 noundef %index) #16
  %7 = load %struct.xa_node*, %struct.xa_node** %node, align 8
  %cmp5 = icmp eq %struct.xa_node* %7, inttoptr (i64 1026 to %struct.xa_node*)
  %8 = getelementptr %struct.xa_node, %struct.xa_node* %7, i64 0, i32 0
  br i1 %cmp5, label %restart.loopexit, label %if.end7

if.end7:                                          ; preds = %while.body
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call2, i64 0, i32 0
  %9 = load i8, i8* %shift, align 8
  %cmp8 = icmp eq i8 %9, 0
  br i1 %cmp8, label %while.end.loopexit, label %while.cond

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  %xa_head.le = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 2
  br label %while.end

while.end.loopexit:                               ; preds = %if.end7, %while.cond
  %idx.ext.le = zext i32 %call3 to i64
  %add.ptr.le = getelementptr %struct.xa_node, %struct.xa_node* %call2, i64 0, i32 7, i64 %idx.ext.le
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader.while.end_crit_edge
  %10 = phi i8* [ %5, %while.cond.preheader.while.end_crit_edge ], [ %8, %while.end.loopexit ]
  %parent.1 = phi %struct.xa_node* [ null, %while.cond.preheader.while.end_crit_edge ], [ %call2, %while.end.loopexit ]
  %slot.1 = phi i8** [ %xa_head.le, %while.cond.preheader.while.end_crit_edge ], [ %add.ptr.le, %while.end.loopexit ]
  %tobool.not = icmp eq %struct.xa_node** %nodep, null
  br i1 %tobool.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %while.end
  store %struct.xa_node* %parent.1, %struct.xa_node** %nodep, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %while.end
  %tobool14.not = icmp eq i8*** %slotp, null
  br i1 %tobool14.not, label %cleanup17, label %if.then15

if.then15:                                        ; preds = %if.end13
  store i8** %slot.1, i8*** %slotp, align 8
  br label %cleanup17

cleanup17:                                        ; preds = %restart.loopexit, %if.end13, %if.then15, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %10, %if.then15 ], [ %10, %if.end13 ], [ null, %restart.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @radix_tree_load_root(%struct.xarray* noundef %root, %struct.xa_node** nocapture noundef writeonly %nodep, i64* nocapture noundef writeonly %maxindex) unnamed_addr #6 {
entry:
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 2
  %0 = load volatile i8*, i8** %xa_head, align 8
  %1 = bitcast %struct.xa_node** %nodep to i8**
  store i8* %0, i8** %1, align 8
  %call = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %0) #16
  br i1 %call, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  %call3 = call fastcc %struct.xa_node* @entry_to_node(i8* noundef %0) #16
  %call4 = call fastcc i64 @node_maxindex(%struct.xa_node* noundef %call3) #16
  store i64 %call4, i64* %maxindex, align 8
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call3, i64 0, i32 0
  %2 = load i8, i8* %shift, align 8
  %conv5 = zext i8 %2 to i32
  %add = add nuw nsw i32 %conv5, 6
  br label %cleanup

if.end:                                           ; preds = %entry
  store i64 0, i64* %maxindex, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %add, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.xa_node* @entry_to_node(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %and = and i64 %0, -3
  %1 = inttoptr i64 %and to %struct.xa_node*
  ret %struct.xa_node* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @radix_tree_descend(%struct.xa_node* noundef %parent, %struct.xa_node** nocapture noundef writeonly %nodep, i64 noundef %index) unnamed_addr #6 {
entry:
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %parent, i64 0, i32 0
  %0 = load i8, i8* %shift, align 8
  %sh_prom = zext i8 %0 to i64
  %shr = lshr i64 %index, %sh_prom
  %1 = trunc i64 %shr to i32
  %conv1 = and i32 %1, 63
  %idxprom = zext i32 %conv1 to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %parent, i64 0, i32 7, i64 %idxprom
  %2 = load volatile i8*, i8** %arrayidx, align 8
  %3 = bitcast %struct.xa_node** %nodep to i8**
  store i8* %2, i8** %3, align 8
  ret i32 %conv1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i8** @radix_tree_lookup_slot(%struct.xarray* noundef %root, i64 noundef %index) local_unnamed_addr #8 {
entry:
  %slot = alloca i8**, align 8
  %0 = bitcast i8*** %slot to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i8** null, i8*** %slot, align 8, !annotation !15
  %call = call i8* @__radix_tree_lookup(%struct.xarray* noundef %root, i64 noundef %index, %struct.xa_node** noundef null, i8*** noundef nonnull %slot) #16
  %tobool.not = icmp eq i8* %call, null
  %1 = load i8**, i8*** %slot, align 8
  %retval.0 = select i1 %tobool.not, i8** null, i8** %1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i8** %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i8* @radix_tree_lookup(%struct.xarray* noundef %root, i64 noundef %index) local_unnamed_addr #8 {
entry:
  %call = call i8* @__radix_tree_lookup(%struct.xarray* noundef %root, i64 noundef %index, %struct.xa_node** noundef null, i8*** noundef null) #16
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__radix_tree_replace(%struct.xarray* noundef %root, %struct.xa_node* noundef %node, i8** noundef %slot, i8* noundef %item) local_unnamed_addr #0 {
entry:
  %0 = load volatile i8*, i8** %slot, align 8
  %call = call fastcc i1 @xa_is_value(i8* noundef %item) #16
  %lnot.ext = zext i1 %call to i32
  %call3 = call fastcc i1 @xa_is_value(i8* noundef %0) #16
  %lnot.ext7.neg = sext i1 %call3 to i32
  %sub = add nsw i32 %lnot.ext7.neg, %lnot.ext
  %call8 = call fastcc i32 @calculate_count(%struct.xarray* noundef %root, %struct.xa_node* noundef %node, i8** noundef %slot, i8* noundef %item, i8* noundef %0) #16
  %tobool.not = icmp eq %struct.xa_node* %node, null
  %tobool.not.not = xor i1 %tobool.not, true
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 2
  %cmp.not = icmp eq i8** %xa_head, %slot
  %or.cond = select i1 %tobool.not.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %tobool9 = icmp ne i32 %call8, 0
  %tobool10 = icmp ne i32 %sub, 0
  %1 = select i1 %tobool9, i1 true, i1 %tobool10
  br i1 %1, label %if.then, label %if.end, !prof !16

if.then:                                          ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 887; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %land.rhs
  call fastcc void @replace_slot(i8** noundef %slot, i8* noundef %item, %struct.xa_node* noundef %node, i32 noundef %call8, i32 noundef %sub) #16
  br i1 %tobool.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end
  %call32 = call fastcc i1 @delete_node(%struct.xarray* noundef %root, %struct.xa_node* noundef nonnull %node) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_value(i8* noundef %entry1) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @calculate_count(%struct.xarray* nocapture noundef readonly %root, %struct.xa_node* noundef %node, i8** noundef %slot, i8* noundef readnone %item, i8* noundef readnone %old) unnamed_addr #6 {
entry:
  %call = call fastcc i1 @is_idr(%struct.xarray* noundef %root) #16
  br i1 %call, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @get_slot_offset(%struct.xa_node* noundef %node, i8** noundef %slot) #16
  %conv = trunc i64 %call1 to i32
  %call2 = call fastcc i1 @node_tag_get(%struct.xarray* noundef %root, %struct.xa_node* noundef %node, i32 noundef %conv) #16
  %tobool4.not = icmp ne i8* %old, null
  %retval.0 = zext i1 %call2 to i32
  %0 = and i1 %tobool4.not, %call2
  br i1 %0, label %if.end8, label %return

if.end8:                                          ; preds = %if.then, %entry
  %tobool9 = icmp ne i8* %item, null
  %lnot.ext = zext i1 %tobool9 to i32
  %tobool11 = icmp ne i8* %old, null
  %lnot.ext15.neg = sext i1 %tobool11 to i32
  %sub = add nsw i32 %lnot.ext15.neg, %lnot.ext
  br label %return

return:                                           ; preds = %if.then, %if.end8
  %retval.1 = phi i32 [ %retval.0, %if.then ], [ %sub, %if.end8 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @replace_slot(i8** noundef %slot, i8* noundef %item, %struct.xa_node* noundef %node, i32 noundef %count, i32 noundef %values) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.xa_node* %node, null
  %0 = or i32 %values, %count
  %.not = icmp eq i32 %0, 0
  %or.cond = or i1 %tobool.not, %.not
  br i1 %or.cond, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %count3 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 2
  %1 = load i8, i8* %count3, align 2
  %2 = trunc i32 %count to i8
  %conv4 = add i8 %1, %2
  store i8 %conv4, i8* %count3, align 2
  %nr_values = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 3
  %3 = load i8, i8* %nr_values, align 1
  %4 = trunc i32 %values to i8
  %conv7 = add i8 %3, %4
  store i8 %conv7, i8* %nr_values, align 1
  br label %do.body

do.body:                                          ; preds = %entry, %if.then
  %5 = ptrtoint i8* %item to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i8** elementtype(i8*) %slot, i64 %5) #17, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @delete_node(%struct.xarray* noundef %root, %struct.xa_node* noundef %node) unnamed_addr #0 {
entry:
  %count73 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 2
  %0 = load i8, i8* %count73, align 2
  %tobool.not74 = icmp eq i8 %0, 0
  br i1 %tobool.not74, label %if.end9.lr.ph, label %if.then

if.end9.lr.ph:                                    ; preds = %entry
  %xa_head17 = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 2
  br label %if.end9

do.body:                                          ; preds = %do.cond40
  %count = getelementptr inbounds %struct.xa_node, %struct.xa_node* %4, i64 0, i32 2
  %1 = load i8, i8* %count, align 2
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %do.body, %entry
  %node.addr.0.lcssa = phi %struct.xa_node* [ %node, %entry ], [ %4, %do.body ]
  %2 = getelementptr %struct.xa_node, %struct.xa_node* %node.addr.0.lcssa, i64 0, i32 0
  %call = call fastcc i8* @node_to_entry(i8* noundef %2) #16
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 2
  %3 = load volatile i8*, i8** %xa_head, align 8
  %cmp = icmp eq i8* %call, %3
  br i1 %cmp, label %if.then3, label %cleanup44

if.then3:                                         ; preds = %if.then
  %call4 = call fastcc i1 @radix_tree_shrink(%struct.xarray* noundef %root) #16
  %or67 = or i1 %tobool.not74, %call4
  br label %cleanup44

if.end9:                                          ; preds = %if.end9.lr.ph, %do.body
  %node.addr.075 = phi %struct.xa_node* [ %node, %if.end9.lr.ph ], [ %4, %do.body ]
  %parent10 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.addr.075, i64 0, i32 4
  %4 = load %struct.xa_node*, %struct.xa_node** %parent10, align 8
  %tobool11.not = icmp eq %struct.xa_node* %4, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  %offset = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.addr.075, i64 0, i32 1
  %5 = load i8, i8* %offset, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %4, i64 0, i32 7, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  %count13 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %4, i64 0, i32 2
  %6 = load i8, i8* %count13, align 2
  %dec = add i8 %6, -1
  store i8 %dec, i8* %count13, align 2
  br label %if.end18

if.else:                                          ; preds = %if.end9
  %call14 = call fastcc i1 @is_idr(%struct.xarray* noundef %root) #16
  br i1 %call14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.else
  call fastcc void @root_tag_clear_all(%struct.xarray* noundef %root) #16
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.else
  store i8* null, i8** %xa_head17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.then12
  %private_list = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.addr.075, i64 0, i32 6, i32 0
  %call19 = call fastcc i32 @list_empty(%struct.list_head* noundef %private_list) #16
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then30, label %do.cond40, !prof !16

if.then30:                                        ; preds = %if.end18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 570; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !26
  br label %do.cond40

do.cond40:                                        ; preds = %if.then30, %if.end18
  call fastcc void @radix_tree_node_free(%struct.xa_node* noundef %node.addr.075) #16
  br i1 %tobool11.not, label %cleanup44, label %do.body

cleanup44:                                        ; preds = %do.cond40, %if.then3, %if.then
  %retval.2 = phi i1 [ %tobool.not74, %if.then ], [ %or67, %if.then3 ], [ true, %do.cond40 ]
  ret i1 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @radix_tree_replace_slot(%struct.xarray* noundef %root, i8** noundef %slot, i8* noundef %item) local_unnamed_addr #0 {
entry:
  call void @__radix_tree_replace(%struct.xarray* noundef %root, %struct.xa_node* noundef null, i8** noundef %slot, i8* noundef %item) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @radix_tree_iter_replace(%struct.xarray* noundef %root, %struct.radix_tree_iter* nocapture noundef readonly %iter, i8** noundef %slot, i8* noundef %item) local_unnamed_addr #0 {
entry:
  %node = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 3
  %0 = load %struct.xa_node*, %struct.xa_node** %node, align 8
  call void @__radix_tree_replace(%struct.xarray* noundef %root, %struct.xa_node* noundef %0, i8** noundef %slot, i8* noundef %item) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @radix_tree_tag_set(%struct.xarray* noundef %root, i64 noundef %index, i32 noundef %tag) local_unnamed_addr #0 {
entry:
  %node = alloca %struct.xa_node*, align 8
  %maxindex = alloca i64, align 8
  %0 = bitcast %struct.xa_node** %node to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.xa_node* null, %struct.xa_node** %node, align 8, !annotation !15
  %1 = bitcast i64* %maxindex to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %maxindex, align 8, !annotation !15
  %call = call fastcc i32 @radix_tree_load_root(%struct.xarray* noundef %root, %struct.xa_node** noundef nonnull %node, i64* noundef nonnull %maxindex) #16
  %2 = load i64, i64* %maxindex, align 8
  %cmp = icmp ult i64 %2, %index
  br i1 %cmp, label %do.body2, label %while.cond.preheader, !prof !16

while.cond.preheader:                             ; preds = %entry
  %3 = bitcast %struct.xa_node** %node to i8**
  %4 = load i8*, i8** %3, align 8
  %call852 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %4) #16
  br i1 %call852, label %while.body, label %while.end

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 972; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !27
  unreachable

while.body:                                       ; preds = %while.cond.preheader, %if.end35
  %5 = phi i8* [ %7, %if.end35 ], [ %4, %while.cond.preheader ]
  %call9 = call fastcc %struct.xa_node* @entry_to_node(i8* noundef %5) #16
  %call10 = call fastcc i32 @radix_tree_descend(%struct.xa_node* noundef %call9, %struct.xa_node** noundef nonnull %node, i64 noundef %index) #16
  %6 = load %struct.xa_node*, %struct.xa_node** %node, align 8
  %tobool12.not = icmp eq %struct.xa_node* %6, null
  %7 = getelementptr %struct.xa_node, %struct.xa_node* %6, i64 0, i32 0
  br i1 %tobool12.not, label %do.body23, label %do.end31, !prof !16

do.body23:                                        ; preds = %while.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 979; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !28
  unreachable

do.end31:                                         ; preds = %while.body
  %call32 = call fastcc i32 @tag_get(%struct.xa_node* noundef %call9, i32 noundef %tag, i32 noundef %call10) #16
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %do.end31
  call fastcc void @tag_set(%struct.xa_node* noundef %call9, i32 noundef %tag, i32 noundef %call10) #16
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %do.end31
  %call8 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %7) #16
  br i1 %call8, label %while.body, label %while.end

while.end:                                        ; preds = %if.end35, %while.cond.preheader
  %.lcssa = phi i8* [ %4, %while.cond.preheader ], [ %7, %if.end35 ]
  %call36 = call fastcc i32 @root_tag_get(%struct.xarray* noundef %root, i32 noundef %tag) #16
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %while.end
  call fastcc void @root_tag_set(%struct.xarray* noundef %root, i32 noundef %tag) #16
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %while.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i8* %.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @tag_set(%struct.xa_node* nocapture noundef %node, i32 noundef %tag, i32 noundef %offset) unnamed_addr #9 {
entry:
  %idxprom = zext i32 %tag to i64
  %rem.i = and i32 %offset, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %offset, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.xa_node, %struct.xa_node* %node, i64 0, i32 8, i32 0, i64 %idxprom, i64 %idx.ext.i
  %0 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %0, %shl.i
  store i64 %or.i, i64* %add.ptr.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @root_tag_get(%struct.xarray* nocapture noundef readonly %root, i32 noundef %tag) unnamed_addr #7 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %add = add i32 %tag, 25
  %shl = shl nuw i32 1, %add
  %and = and i32 %0, %shl
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @root_tag_set(%struct.xarray* nocapture noundef %root, i32 noundef %tag) unnamed_addr #9 {
entry:
  %add = add i32 %tag, 25
  %shl = shl nuw i32 1, %add
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %or = or i32 %0, %shl
  store i32 %or, i32* %xa_flags, align 4
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i8* @radix_tree_tag_clear(%struct.xarray* noundef %root, i64 noundef %index, i32 noundef %tag) local_unnamed_addr #8 {
entry:
  %node = alloca %struct.xa_node*, align 8
  %maxindex = alloca i64, align 8
  %0 = bitcast %struct.xa_node** %node to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.xa_node* null, %struct.xa_node** %node, align 8, !annotation !15
  %1 = bitcast i64* %maxindex to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %maxindex, align 8, !annotation !15
  %call = call fastcc i32 @radix_tree_load_root(%struct.xarray* noundef %root, %struct.xa_node** noundef nonnull %node, i64* noundef nonnull %maxindex) #16
  %2 = load i64, i64* %maxindex, align 8
  %cmp = icmp ult i64 %2, %index
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %3 = bitcast %struct.xa_node** %node to i8**
  %4 = load i8*, i8** %3, align 8
  %call114 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %4) #16
  br i1 %call114, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %5 = phi i8* [ %6, %while.body ], [ %4, %while.cond.preheader ]
  %call2 = call fastcc %struct.xa_node* @entry_to_node(i8* noundef %5) #16
  %call3 = call fastcc i32 @radix_tree_descend(%struct.xa_node* noundef %call2, %struct.xa_node** noundef nonnull %node, i64 noundef %index) #16
  %6 = load i8*, i8** %3, align 8
  %call1 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %6) #16
  br i1 %call1, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %parent.0.lcssa = phi %struct.xa_node* [ null, %while.cond.preheader ], [ %call2, %while.body ]
  %offset.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %call3, %while.body ]
  %.lcssa = phi i8* [ %4, %while.cond.preheader ], [ %6, %while.body ]
  %tobool.not = icmp eq i8* %.lcssa, null
  br i1 %tobool.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %while.end
  call fastcc void @node_tag_clear(%struct.xarray* noundef %root, %struct.xa_node* noundef %parent.0.lcssa, i32 noundef %tag, i32 noundef %offset.0.lcssa) #16
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then4, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %.lcssa, %if.then4 ], [ null, %while.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i8* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @node_tag_clear(%struct.xarray* nocapture noundef %root, %struct.xa_node* noundef %node, i32 noundef %tag, i32 noundef %offset) unnamed_addr #3 {
entry:
  %tobool.not22 = icmp eq %struct.xa_node* %node, null
  br i1 %tobool.not22, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end5
  %offset.addr.024 = phi i32 [ %conv, %if.end5 ], [ %offset, %entry ]
  %node.addr.023 = phi %struct.xa_node* [ %1, %if.end5 ], [ %node, %entry ]
  %call = call fastcc i32 @tag_get(%struct.xa_node* noundef nonnull %node.addr.023, i32 noundef %tag, i32 noundef %offset.addr.024) #16
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end10, label %if.end

if.end:                                           ; preds = %while.body
  call fastcc void @tag_clear(%struct.xa_node* noundef nonnull %node.addr.023, i32 noundef %tag, i32 noundef %offset.addr.024) #16
  %call2 = call fastcc i32 @any_tag_set(%struct.xa_node* noundef nonnull %node.addr.023, i32 noundef %tag) #16
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end10

if.end5:                                          ; preds = %if.end
  %offset6 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.addr.023, i64 0, i32 1
  %0 = load i8, i8* %offset6, align 1
  %conv = zext i8 %0 to i32
  %parent = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.addr.023, i64 0, i32 4
  %1 = load %struct.xa_node*, %struct.xa_node** %parent, align 8
  %tobool.not = icmp eq %struct.xa_node* %1, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end5, %entry
  %call7 = call fastcc i32 @root_tag_get(%struct.xarray* noundef %root, i32 noundef %tag) #16
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %while.end
  call fastcc void @root_tag_clear(%struct.xarray* noundef %root, i32 noundef %tag) #16
  br label %if.end10

if.end10:                                         ; preds = %if.end, %while.body, %if.then9, %while.end
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @radix_tree_iter_tag_clear(%struct.xarray* nocapture noundef %root, %struct.radix_tree_iter* nocapture noundef readonly %iter, i32 noundef %tag) local_unnamed_addr #3 {
entry:
  %node = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 3
  %0 = load %struct.xa_node*, %struct.xa_node** %node, align 8
  %call = call fastcc i32 @iter_offset(%struct.radix_tree_iter* noundef %iter) #16, !range !29
  call fastcc void @node_tag_clear(%struct.xarray* noundef %root, %struct.xa_node* noundef %0, i32 noundef %tag, i32 noundef %call) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iter_offset(%struct.radix_tree_iter* nocapture noundef readonly %iter) unnamed_addr #7 {
entry:
  %index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  %0 = load i64, i64* %index, align 8
  %1 = trunc i64 %0 to i32
  %conv = and i32 %1, 63
  ret i32 %conv
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i32 @radix_tree_tag_get(%struct.xarray* noundef %root, i64 noundef %index, i32 noundef %tag) local_unnamed_addr #8 {
entry:
  %node = alloca %struct.xa_node*, align 8
  %maxindex = alloca i64, align 8
  %0 = bitcast %struct.xa_node** %node to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.xa_node* null, %struct.xa_node** %node, align 8, !annotation !15
  %1 = bitcast i64* %maxindex to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %maxindex, align 8, !annotation !15
  %call = call fastcc i32 @root_tag_get(%struct.xarray* noundef %root, i32 noundef %tag) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup15, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @radix_tree_load_root(%struct.xarray* noundef %root, %struct.xa_node** noundef nonnull %node, i64* noundef nonnull %maxindex) #16
  %2 = load i64, i64* %maxindex, align 8
  %cmp = icmp ult i64 %2, %index
  br i1 %cmp, label %cleanup15, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %3 = bitcast %struct.xa_node** %node to i8**
  %.pre = load i8*, i8** %3, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end10
  %4 = phi i8* [ %.pre, %while.cond.preheader ], [ %6, %if.end10 ]
  %call4 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %4) #16
  br i1 %call4, label %while.body, label %cleanup15

while.body:                                       ; preds = %while.cond
  %call5 = call fastcc %struct.xa_node* @entry_to_node(i8* noundef %4) #16
  %call6 = call fastcc i32 @radix_tree_descend(%struct.xa_node* noundef %call5, %struct.xa_node** noundef nonnull %node, i64 noundef %index) #16, !range !29
  %call7 = call fastcc i32 @tag_get(%struct.xa_node* noundef %call5, i32 noundef %tag, i32 noundef %call6) #16
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup15, label %if.end10

if.end10:                                         ; preds = %while.body
  %5 = load %struct.xa_node*, %struct.xa_node** %node, align 8
  %cmp12 = icmp eq %struct.xa_node* %5, inttoptr (i64 1026 to %struct.xa_node*)
  %6 = getelementptr %struct.xa_node, %struct.xa_node* %5, i64 0, i32 0
  br i1 %cmp12, label %cleanup15, label %while.cond

cleanup15:                                        ; preds = %if.end10, %while.body, %while.cond, %if.end, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end10 ], [ 0, %while.body ], [ 1, %while.cond ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local noalias i8** @radix_tree_iter_resume(i8** nocapture noundef readnone %slot, %struct.radix_tree_iter* nocapture noundef %iter) local_unnamed_addr #9 {
entry:
  %call = call fastcc i64 @__radix_tree_iter_add(%struct.radix_tree_iter* noundef %iter, i64 noundef 1) #16
  %index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  store i64 %call, i64* %index, align 8
  %next_index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 1
  store i64 %call, i64* %next_index, align 8
  %tags = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 2
  store i64 0, i64* %tags, align 8
  ret i8** null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @__radix_tree_iter_add(%struct.radix_tree_iter* nocapture noundef readonly %iter, i64 noundef %slots) unnamed_addr #7 {
entry:
  %index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  %0 = load i64, i64* %index, align 8
  %add = add i64 %0, %slots
  ret i64 %add
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i8** @radix_tree_next_chunk(%struct.xarray* noundef %root, %struct.radix_tree_iter* nocapture noundef %iter, i32 noundef %flags) local_unnamed_addr #8 {
entry:
  %child = alloca %struct.xa_node*, align 8
  %maxindex = alloca i64, align 8
  %and = and i32 %flags, 15
  %0 = bitcast %struct.xa_node** %child to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.xa_node* null, %struct.xa_node** %child, align 8, !annotation !15
  %1 = bitcast i64* %maxindex to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %maxindex, align 8, !annotation !15
  %and1 = and i32 %flags, 16
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i32 @root_tag_get(%struct.xarray* noundef %root, i32 noundef %and) #16
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %cleanup97, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %next_index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 1
  %2 = load i64, i64* %next_index, align 8
  %tobool3.not = icmp eq i64 %2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %index5 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  %3 = load i64, i64* %index5, align 8
  %tobool6.not = icmp eq i64 %3, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup97

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  %call9176 = call fastcc i32 @radix_tree_load_root(%struct.xarray* noundef %root, %struct.xa_node** noundef nonnull %child, i64* noundef nonnull %maxindex) #16
  %4 = load i64, i64* %maxindex, align 8
  %cmp177 = icmp ugt i64 %2, %4
  br i1 %cmp177, label %cleanup97, label %if.end11.lr.ph

if.end11.lr.ph:                                   ; preds = %if.end8
  %5 = bitcast %struct.xa_node** %child to i8**
  %and30159 = and i32 %flags, 32
  %tobool31.not160 = icmp eq i32 %and30159, 0
  %idxprom.i = zext i32 %and to i64
  br label %if.end11

restart.loopexit:                                 ; preds = %if.end53, %if.end66
  %index.0.ph = phi i64 [ %add50, %if.end53 ], [ %index.2, %if.end66 ]
  %call9 = call fastcc i32 @radix_tree_load_root(%struct.xarray* noundef %root, %struct.xa_node** noundef nonnull %child, i64* noundef nonnull %maxindex) #16
  %6 = load i64, i64* %maxindex, align 8
  %cmp = icmp ugt i64 %index.0.ph, %6
  br i1 %cmp, label %cleanup97, label %if.end11

if.end11:                                         ; preds = %if.end11.lr.ph, %restart.loopexit
  %7 = phi i64 [ %4, %if.end11.lr.ph ], [ %6, %restart.loopexit ]
  %index.0178 = phi i64 [ %2, %if.end11.lr.ph ], [ %index.0.ph, %restart.loopexit ]
  %8 = load %struct.xa_node*, %struct.xa_node** %child, align 8
  %tobool12.not = icmp eq %struct.xa_node* %8, null
  br i1 %tobool12.not, label %cleanup97, label %if.end14

if.end14:                                         ; preds = %if.end11
  %9 = getelementptr %struct.xa_node, %struct.xa_node* %8, i64 0, i32 0
  %call15 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %9) #16
  br i1 %call15, label %do.body.preheader, label %if.then16

do.body.preheader:                                ; preds = %if.end14
  %10 = getelementptr %struct.xa_node, %struct.xa_node* %8, i64 0, i32 0
  br label %do.body

if.then16:                                        ; preds = %if.end14
  %index17 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  store i64 %index.0178, i64* %index17, align 8
  %add = add i64 %7, 1
  store i64 %add, i64* %next_index, align 8
  %tags = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 2
  store i64 1, i64* %tags, align 8
  %node19 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 3
  store %struct.xa_node* null, %struct.xa_node** %node19, align 8
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 2
  br label %cleanup97

do.body:                                          ; preds = %do.body.preheader, %land.rhs
  %11 = phi i8* [ %23, %land.rhs ], [ %10, %do.body.preheader ]
  %index.1 = phi i64 [ %index.2166, %land.rhs ], [ %index.0178, %do.body.preheader ]
  %call21 = call fastcc %struct.xa_node* @entry_to_node(i8* noundef %11) #16
  %call22 = call fastcc i32 @radix_tree_descend(%struct.xa_node* noundef %call21, %struct.xa_node** noundef nonnull %child, i64 noundef %index.1) #16
  %conv = zext i32 %call22 to i64
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %do.body
  %call26 = call fastcc i32 @tag_get(%struct.xa_node* noundef %call21, i32 noundef %and, i32 noundef %call22) #16
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then29.thread, label %if.end66thread-pre-split

cond.false:                                       ; preds = %do.body
  %12 = load %struct.xa_node*, %struct.xa_node** %child, align 8
  %tobool28.not = icmp eq %struct.xa_node* %12, null
  %13 = getelementptr %struct.xa_node, %struct.xa_node* %12, i64 0, i32 0
  br i1 %tobool28.not, label %if.then29, label %if.end69

if.then29:                                        ; preds = %cond.false
  br i1 %tobool31.not160, label %while.cond, label %cleanup97

if.then29.thread:                                 ; preds = %cond.true
  br i1 %tobool31.not160, label %if.then36, label %cleanup97

if.then36:                                        ; preds = %if.then29.thread
  %add37 = add nuw nsw i64 %conv, 1
  %cmp.i = icmp ult i32 %call22, 63
  br i1 %cmp.i, label %if.then.i, label %if.end46

if.then.i:                                        ; preds = %if.then36
  %arraydecay.i = getelementptr %struct.xa_node, %struct.xa_node* %call21, i64 0, i32 8, i32 0, i64 %idxprom.i, i64 0
  %14 = load i64, i64* %arraydecay.i, align 8
  %shr.i = lshr i64 %14, %add37
  %tobool.not.i = icmp eq i64 %shr.i, 0
  br i1 %tobool.not.i, label %if.end46, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  %15 = call i64 @llvm.cttz.i64(i64 %shr.i, i1 true) #17, !range !30
  %add.i = add nuw nsw i64 %15, %add37
  br label %if.end46

while.cond:                                       ; preds = %if.then29, %while.body
  %offset.0 = phi i64 [ %inc, %while.body ], [ %conv, %if.then29 ]
  %inc = add nuw nsw i64 %offset.0, 1
  %cmp39 = icmp ult i64 %offset.0, 63
  br i1 %cmp39, label %while.body, label %if.end46

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %call21, i64 0, i32 7, i64 %inc
  %16 = load volatile i8*, i8** %arrayidx, align 8
  %tobool43.not = icmp eq i8* %16, null
  br i1 %tobool43.not, label %while.cond, label %if.end46

if.end46:                                         ; preds = %while.body, %while.cond, %if.then1.i, %if.then.i, %if.then36
  %offset.1 = phi i64 [ 64, %if.then36 ], [ %add.i, %if.then1.i ], [ 64, %if.then.i ], [ %inc, %while.cond ], [ %inc, %while.body ]
  %call47 = call fastcc i64 @node_maxindex(%struct.xa_node* noundef %call21) #16
  %neg = xor i64 %call47, -1
  %and48 = and i64 %index.1, %neg
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call21, i64 0, i32 0
  %17 = load i8, i8* %shift, align 8
  %sh_prom = zext i8 %17 to i64
  %shl = shl i64 %offset.1, %sh_prom
  %add50 = add i64 %shl, %and48
  %tobool51.not = icmp eq i64 %add50, 0
  br i1 %tobool51.not, label %cleanup97, label %if.end53

if.end53:                                         ; preds = %if.end46
  %cmp54 = icmp eq i64 %offset.1, 64
  br i1 %cmp54, label %restart.loopexit, label %if.end57

if.end57:                                         ; preds = %if.end53
  %arrayidx64 = getelementptr %struct.xa_node, %struct.xa_node* %call21, i64 0, i32 7, i64 %offset.1
  %18 = load volatile i8*, i8** %arrayidx64, align 8
  store i8* %18, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.xa_node*
  br label %if.end66

if.end66thread-pre-split:                         ; preds = %cond.true
  %.pr = load %struct.xa_node*, %struct.xa_node** %child, align 8
  %20 = getelementptr %struct.xa_node, %struct.xa_node* %.pr, i64 0, i32 0
  br label %if.end66

if.end66:                                         ; preds = %if.end66thread-pre-split, %if.end57
  %21 = phi i8* [ %20, %if.end66thread-pre-split ], [ %18, %if.end57 ]
  %22 = phi %struct.xa_node* [ %.pr, %if.end66thread-pre-split ], [ %19, %if.end57 ]
  %offset.2 = phi i64 [ %conv, %if.end66thread-pre-split ], [ %offset.1, %if.end57 ]
  %index.2 = phi i64 [ %index.1, %if.end66thread-pre-split ], [ %add50, %if.end57 ]
  %tobool67.not = icmp eq %struct.xa_node* %22, null
  br i1 %tobool67.not, label %restart.loopexit, label %if.end69

if.end69:                                         ; preds = %cond.false, %if.end66
  %23 = phi i8* [ %21, %if.end66 ], [ %13, %cond.false ]
  %index.2166 = phi i64 [ %index.2, %if.end66 ], [ %index.1, %cond.false ]
  %offset.2164 = phi i64 [ %offset.2, %if.end66 ], [ %conv, %cond.false ]
  %24 = phi %struct.xa_node* [ %22, %if.end66 ], [ %12, %cond.false ]
  %cmp71 = icmp eq %struct.xa_node* %24, inttoptr (i64 1026 to %struct.xa_node*)
  br i1 %cmp71, label %do.end81, label %do.cond75

do.cond75:                                        ; preds = %if.end69
  %shift76 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call21, i64 0, i32 0
  %25 = load i8, i8* %shift76, align 8
  %tobool78.not = icmp eq i8 %25, 0
  br i1 %tobool78.not, label %do.end81, label %land.rhs

land.rhs:                                         ; preds = %do.cond75
  %call79 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %23) #16
  br i1 %call79, label %do.body, label %do.end81

do.end81:                                         ; preds = %do.cond75, %if.end69, %land.rhs
  %call82 = call fastcc i64 @node_maxindex(%struct.xa_node* noundef %call21) #16
  %neg83 = xor i64 %call82, -1
  %and84 = and i64 %index.2166, %neg83
  %or = or i64 %and84, %offset.2164
  %index85 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  store i64 %or, i64* %index85, align 8
  %call86 = call fastcc i64 @node_maxindex(%struct.xa_node* noundef %call21) #16
  %or87 = or i64 %call86, %index.2166
  %add88 = add i64 %or87, 1
  store i64 %add88, i64* %next_index, align 8
  %node90 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 3
  store %struct.xa_node* %call21, %struct.xa_node** %node90, align 8
  br i1 %tobool.not, label %if.end95, label %if.then93

if.then93:                                        ; preds = %do.end81
  %conv94 = trunc i64 %offset.2164 to i32
  call fastcc void @set_iter_tags(%struct.radix_tree_iter* noundef %iter, %struct.xa_node* noundef %call21, i32 noundef %conv94, i32 noundef %and) #16
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %do.end81
  %add.ptr = getelementptr %struct.xa_node, %struct.xa_node* %call21, i64 0, i32 7, i64 %offset.2164
  br label %cleanup97

cleanup97:                                        ; preds = %restart.loopexit, %if.end11, %if.then29.thread, %if.end46, %if.then29, %if.end8, %land.lhs.true4, %land.lhs.true, %if.end95, %if.then16
  %retval.0 = phi i8** [ %add.ptr, %if.end95 ], [ %xa_head, %if.then16 ], [ null, %land.lhs.true ], [ null, %land.lhs.true4 ], [ null, %if.end8 ], [ null, %if.then29 ], [ null, %if.end46 ], [ null, %if.then29.thread ], [ null, %if.end11 ], [ null, %restart.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i8** %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @node_maxindex(%struct.xa_node* nocapture noundef readonly %node) unnamed_addr #7 {
entry:
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 0
  %0 = load i8, i8* %shift, align 8
  %conv = zext i8 %0 to i32
  %call = call fastcc i64 @shift_maxindex(i32 noundef %conv) #16
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_iter_tags(%struct.radix_tree_iter* nocapture noundef writeonly %iter, %struct.xa_node* noundef readonly %node, i32 noundef %offset, i32 noundef %tag) unnamed_addr #9 {
entry:
  %tobool.not = icmp eq %struct.xa_node* %node, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rem = and i32 %offset, 63
  %div = lshr i32 %offset, 6
  %idxprom = zext i32 %tag to i64
  %idxprom2 = zext i32 %div to i64
  %arrayidx3 = getelementptr %struct.xa_node, %struct.xa_node* %node, i64 0, i32 8, i32 0, i64 %idxprom, i64 %idxprom2
  %0 = load i64, i64* %arrayidx3, align 8
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %0, %sh_prom
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %shr.sink = phi i64 [ %shr, %if.end ], [ 1, %entry ]
  %1 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 2
  store i64 %shr.sink, i64* %1, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i32 @radix_tree_gang_lookup(%struct.xarray* noundef %root, i8** nocapture noundef writeonly %results, i64 noundef %first_index, i32 noundef %max_items) local_unnamed_addr #8 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 8
  %0 = bitcast %struct.radix_tree_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #17
  %1 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 2
  %2 = bitcast i64* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false), !annotation !15
  %tobool.not = icmp eq i32 %max_items, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !16

if.end:                                           ; preds = %entry
  %index.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  store i64 0, i64* %index.i, align 8
  %next_index.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 1
  store i64 %first_index, i64* %next_index.i, align 8
  br label %for.cond

for.cond.loopexit:                                ; preds = %while.cond.i, %while.body.i
  %slot.0.ph = phi i8** [ %incdec.ptr33.i, %while.body.i ], [ null, %while.cond.i ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.loopexit, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ %ret.1, %for.cond.loopexit ]
  %slot.0 = phi i8** [ null, %if.end ], [ %slot.0.ph, %for.cond.loopexit ]
  %tobool4.not = icmp eq i8** %slot.0, null
  br i1 %tobool4.not, label %lor.rhs, label %for.body

lor.rhs:                                          ; preds = %for.cond
  %call5 = call i8** @radix_tree_next_chunk(%struct.xarray* noundef %root, %struct.radix_tree_iter* noundef nonnull %iter, i32 noundef 0) #16
  %tobool6.not = icmp eq i8** %call5, null
  br i1 %tobool6.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond, %lor.rhs
  %slot.1 = phi i8** [ %slot.0, %for.cond ], [ %call5, %lor.rhs ]
  %3 = load volatile i8*, i8** %slot.1, align 8
  %idxprom = zext i32 %ret.0 to i64
  %arrayidx = getelementptr i8*, i8** %results, i64 %idxprom
  store i8* %3, i8** %arrayidx, align 8
  %tobool10.not = icmp eq i8* %3, null
  br i1 %tobool10.not, label %for.inc, label %if.end12

if.end12:                                         ; preds = %for.body
  %call15 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef nonnull %3) #16
  br i1 %call15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  call fastcc void @radix_tree_iter_retry(%struct.radix_tree_iter* noundef nonnull %iter) #16
  br label %for.inc

if.end18:                                         ; preds = %if.end12
  %inc = add i32 %ret.0, 1
  %cmp = icmp eq i32 %inc, %max_items
  br i1 %cmp, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end18, %for.body, %if.then16
  %ret.1 = phi i32 [ %ret.0, %if.then16 ], [ %inc, %if.end18 ], [ %ret.0, %for.body ]
  %slot.2 = phi i8** [ null, %if.then16 ], [ %slot.1, %if.end18 ], [ %slot.1, %for.body ]
  %4 = load i64, i64* %next_index.i, align 8
  %5 = load i64, i64* %index.i, align 8
  %sub.i.i = sub i64 %4, %5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %for.inc
  %slot.addr.0.i = phi i8** [ %slot.2, %for.inc ], [ %incdec.ptr33.i, %while.body.i ]
  %count.0.i = phi i64 [ %sub.i.i, %for.inc ], [ %dec.i, %while.body.i ]
  %dec.i = add i64 %count.0.i, -1
  %cmp.i = icmp sgt i64 %dec.i, 0
  br i1 %cmp.i, label %while.body.i, label %for.cond.loopexit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr33.i = getelementptr i8*, i8** %slot.addr.0.i, i64 1
  %call34.i = call fastcc i64 @__radix_tree_iter_add(%struct.radix_tree_iter* noundef nonnull %iter, i64 noundef 1) #15
  store i64 %call34.i, i64* %index.i, align 8
  %6 = load i8*, i8** %incdec.ptr33.i, align 8
  %tobool36.not.i = icmp eq i8* %6, null
  br i1 %tobool36.not.i, label %while.cond.i, label %for.cond.loopexit, !prof !16

cleanup:                                          ; preds = %lor.rhs, %if.end18, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %ret.0, %lor.rhs ], [ %max_items, %if.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @radix_tree_iter_retry(%struct.radix_tree_iter* nocapture noundef %iter) unnamed_addr #9 {
entry:
  %index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  %0 = load i64, i64* %index, align 8
  %next_index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 1
  store i64 %0, i64* %next_index, align 8
  %tags = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 2
  store i64 0, i64* %tags, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i32 @radix_tree_gang_lookup_tag(%struct.xarray* noundef %root, i8** nocapture noundef writeonly %results, i64 noundef %first_index, i32 noundef %max_items, i32 noundef %tag) local_unnamed_addr #8 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 8
  %0 = bitcast %struct.radix_tree_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #17
  %1 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 2
  %2 = bitcast i64* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false), !annotation !15
  %tobool.not = icmp eq i32 %max_items, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !16

if.end:                                           ; preds = %entry
  %index.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  store i64 0, i64* %index.i, align 8
  %next_index.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 1
  store i64 %first_index, i64* %next_index.i, align 8
  %or = or i32 %tag, 16
  %tags.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 2
  %and19.i = and i32 %tag, 32
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ %ret.1, %for.cond.backedge ]
  %slot.0 = phi i8** [ null, %if.end ], [ %slot.0.be, %for.cond.backedge ]
  %tobool4.not = icmp eq i8** %slot.0, null
  br i1 %tobool4.not, label %lor.rhs, label %for.body

lor.rhs:                                          ; preds = %for.cond
  %call5 = call i8** @radix_tree_next_chunk(%struct.xarray* noundef %root, %struct.radix_tree_iter* noundef nonnull %iter, i32 noundef %or) #16
  %tobool6.not = icmp eq i8** %call5, null
  br i1 %tobool6.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond, %lor.rhs
  %slot.1 = phi i8** [ %slot.0, %for.cond ], [ %call5, %lor.rhs ]
  %3 = load volatile i8*, i8** %slot.1, align 8
  %idxprom = zext i32 %ret.0 to i64
  %arrayidx = getelementptr i8*, i8** %results, i64 %idxprom
  store i8* %3, i8** %arrayidx, align 8
  %tobool10.not = icmp eq i8* %3, null
  br i1 %tobool10.not, label %for.inc, label %if.end12

if.end12:                                         ; preds = %for.body
  %call15 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef nonnull %3) #16
  br i1 %call15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  call fastcc void @radix_tree_iter_retry(%struct.radix_tree_iter* noundef nonnull %iter) #16
  br label %for.inc

if.end18:                                         ; preds = %if.end12
  %inc = add i32 %ret.0, 1
  %cmp = icmp eq i32 %inc, %max_items
  br i1 %cmp, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end18, %for.body, %if.then16
  %ret.1 = phi i32 [ %ret.0, %if.then16 ], [ %inc, %if.end18 ], [ %ret.0, %for.body ]
  %slot.2 = phi i8** [ null, %if.then16 ], [ %slot.1, %if.end18 ], [ %slot.1, %for.body ]
  %4 = load i64, i64* %tags.i, align 8
  %shr.i = lshr i64 %4, 1
  store i64 %shr.i, i64* %tags.i, align 8
  %tobool2.not.i = icmp ult i64 %4, 2
  br i1 %tobool2.not.i, label %for.cond.backedge, label %if.end.i, !prof !16

for.cond.backedge:                                ; preds = %for.inc, %if.then17.i, %if.end18.i, %if.then21.i
  %slot.0.be = phi i8** [ null, %for.inc ], [ %incdec.ptr.i, %if.then17.i ], [ null, %if.end18.i ], [ %add.ptr.i, %if.then21.i ]
  br label %for.cond

if.end.i:                                         ; preds = %for.inc
  %5 = and i64 %4, 2
  %tobool9.not.i = icmp eq i64 %5, 0
  br i1 %tobool9.not.i, label %if.end18.i, label %if.then17.i, !prof !16

if.then17.i:                                      ; preds = %if.end.i
  %call.i = call fastcc i64 @__radix_tree_iter_add(%struct.radix_tree_iter* noundef nonnull %iter, i64 noundef 1) #15
  store i64 %call.i, i64* %index.i, align 8
  %incdec.ptr.i = getelementptr i8*, i8** %slot.2, i64 1
  br label %for.cond.backedge

if.end18.i:                                       ; preds = %if.end.i
  br i1 %tobool20.not.i, label %if.then21.i, label %for.cond.backedge

if.then21.i:                                      ; preds = %if.end18.i
  %6 = call i64 @llvm.cttz.i64(i64 %shr.i, i1 false) #17, !range !30
  %inc.i = add nuw nsw i64 %6, 1
  %shr26.i = lshr i64 %shr.i, %6
  store i64 %shr26.i, i64* %tags.i, align 8
  %call28.i = call fastcc i64 @__radix_tree_iter_add(%struct.radix_tree_iter* noundef nonnull %iter, i64 noundef %inc.i) #15
  store i64 %call28.i, i64* %index.i, align 8
  %add.ptr.i = getelementptr i8*, i8** %slot.2, i64 %inc.i
  br label %for.cond.backedge

cleanup:                                          ; preds = %lor.rhs, %if.end18, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %ret.0, %lor.rhs ], [ %max_items, %if.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i32 @radix_tree_gang_lookup_tag_slot(%struct.xarray* noundef %root, i8*** nocapture noundef writeonly %results, i64 noundef %first_index, i32 noundef %max_items, i32 noundef %tag) local_unnamed_addr #8 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 8
  %0 = bitcast %struct.radix_tree_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #17
  %1 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 2
  %2 = bitcast i64* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false), !annotation !15
  %tobool.not = icmp eq i32 %max_items, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !16

if.end:                                           ; preds = %entry
  %index.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  store i64 0, i64* %index.i, align 8
  %next_index.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 1
  store i64 %first_index, i64* %next_index.i, align 8
  %or = or i32 %tag, 16
  %tags.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 2
  %and19.i = and i32 %tag, 32
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %3 = zext i32 %max_items to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.cond.backedge ]
  %slot.0 = phi i8** [ null, %if.end ], [ %slot.0.be, %for.cond.backedge ]
  %tobool4.not = icmp eq i8** %slot.0, null
  br i1 %tobool4.not, label %lor.rhs, label %for.body

lor.rhs:                                          ; preds = %for.cond
  %call5 = call i8** @radix_tree_next_chunk(%struct.xarray* noundef %root, %struct.radix_tree_iter* noundef nonnull %iter, i32 noundef %or) #16
  %tobool6.not = icmp eq i8** %call5, null
  br i1 %tobool6.not, label %cleanup.loopexit.split.loop.exit24, label %for.body

for.body:                                         ; preds = %for.cond, %lor.rhs
  %slot.1 = phi i8** [ %slot.0, %for.cond ], [ %call5, %lor.rhs ]
  %arrayidx = getelementptr i8**, i8*** %results, i64 %indvars.iv
  store i8** %slot.1, i8*** %arrayidx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp = icmp eq i64 %indvars.iv.next, %3
  br i1 %cmp, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %tags.i, align 8
  %shr.i = lshr i64 %4, 1
  store i64 %shr.i, i64* %tags.i, align 8
  %tobool2.not.i = icmp ult i64 %4, 2
  br i1 %tobool2.not.i, label %for.cond.backedge, label %if.end.i, !prof !16

for.cond.backedge:                                ; preds = %for.inc, %if.then17.i, %if.end18.i, %if.then21.i
  %slot.0.be = phi i8** [ null, %for.inc ], [ %incdec.ptr.i, %if.then17.i ], [ null, %if.end18.i ], [ %add.ptr.i, %if.then21.i ]
  br label %for.cond

if.end.i:                                         ; preds = %for.inc
  %5 = and i64 %4, 2
  %tobool9.not.i = icmp eq i64 %5, 0
  br i1 %tobool9.not.i, label %if.end18.i, label %if.then17.i, !prof !16

if.then17.i:                                      ; preds = %if.end.i
  %call.i = call fastcc i64 @__radix_tree_iter_add(%struct.radix_tree_iter* noundef nonnull %iter, i64 noundef 1) #15
  store i64 %call.i, i64* %index.i, align 8
  %incdec.ptr.i = getelementptr i8*, i8** %slot.1, i64 1
  br label %for.cond.backedge

if.end18.i:                                       ; preds = %if.end.i
  br i1 %tobool20.not.i, label %if.then21.i, label %for.cond.backedge

if.then21.i:                                      ; preds = %if.end18.i
  %6 = call i64 @llvm.cttz.i64(i64 %shr.i, i1 false) #17, !range !30
  %inc.i = add nuw nsw i64 %6, 1
  %shr26.i = lshr i64 %shr.i, %6
  store i64 %shr26.i, i64* %tags.i, align 8
  %call28.i = call fastcc i64 @__radix_tree_iter_add(%struct.radix_tree_iter* noundef nonnull %iter, i64 noundef %inc.i) #15
  store i64 %call28.i, i64* %index.i, align 8
  %add.ptr.i = getelementptr i8*, i8** %slot.1, i64 %inc.i
  br label %for.cond.backedge

cleanup.loopexit.split.loop.exit24:               ; preds = %lor.rhs
  %7 = trunc i64 %indvars.iv to i32
  br label %cleanup

cleanup:                                          ; preds = %for.body, %cleanup.loopexit.split.loop.exit24, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %7, %cleanup.loopexit.split.loop.exit24 ], [ %max_items, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @radix_tree_iter_delete(%struct.xarray* noundef %root, %struct.radix_tree_iter* nocapture noundef %iter, i8** noundef %slot) local_unnamed_addr #0 {
entry:
  %node = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 3
  %0 = load %struct.xa_node*, %struct.xa_node** %node, align 8
  %call = call fastcc i1 @__radix_tree_delete(%struct.xarray* noundef %root, %struct.xa_node* noundef %0, i8** noundef %slot) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next_index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 1
  %1 = load i64, i64* %next_index, align 8
  %index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  store i64 %1, i64* %index, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__radix_tree_delete(%struct.xarray* noundef %root, %struct.xa_node* noundef %node, i8** noundef %slot) unnamed_addr #0 {
entry:
  %0 = load volatile i8*, i8** %slot, align 8
  %call = call fastcc i1 @xa_is_value(i8* noundef %0) #16
  %cond = sext i1 %call to i32
  %call2 = call fastcc i64 @get_slot_offset(%struct.xa_node* noundef %node, i8** noundef %slot) #16
  %conv = trunc i64 %call2 to i32
  %call3 = call fastcc i1 @is_idr(%struct.xarray* noundef %root) #16
  br i1 %call3, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  call fastcc void @node_tag_clear(%struct.xarray* noundef %root, %struct.xa_node* noundef %node, i32 noundef 0, i32 noundef %conv) #16
  call fastcc void @node_tag_clear(%struct.xarray* noundef %root, %struct.xa_node* noundef %node, i32 noundef 1, i32 noundef %conv) #16
  call fastcc void @node_tag_clear(%struct.xarray* noundef %root, %struct.xa_node* noundef %node, i32 noundef 2, i32 noundef %conv) #16
  br label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @node_tag_set(%struct.xarray* noundef %root, %struct.xa_node* noundef %node, i32 noundef %conv) #16
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %if.then
  call fastcc void @replace_slot(i8** noundef %slot, i8* noundef null, %struct.xa_node* noundef %node, i32 noundef -1, i32 noundef %cond) #16
  %tobool.not = icmp eq %struct.xa_node* %node, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %call5 = call fastcc i1 @delete_node(%struct.xarray* noundef %root, %struct.xa_node* noundef nonnull %node) #16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %1 = phi i1 [ false, %if.end ], [ %call5, %land.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @radix_tree_delete_item(%struct.xarray* noundef %root, i64 noundef %index, i8* noundef readnone %item) local_unnamed_addr #0 {
entry:
  %node = alloca %struct.xa_node*, align 8
  %slot = alloca i8**, align 8
  %0 = bitcast %struct.xa_node** %node to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.xa_node* null, %struct.xa_node** %node, align 8
  %1 = bitcast i8*** %slot to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i8** null, i8*** %slot, align 8
  %call = call i8* @__radix_tree_lookup(%struct.xarray* noundef %root, i64 noundef %index, %struct.xa_node** noundef nonnull %node, i8*** noundef nonnull %slot) #16
  %2 = load i8**, i8*** %slot, align 8
  %tobool.not = icmp eq i8** %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq i8* %call, null
  br i1 %tobool2.not, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %call3 = call fastcc i1 @is_idr(%struct.xarray* noundef %root) #16
  br i1 %call3, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load %struct.xa_node*, %struct.xa_node** %node, align 8
  %call4 = call fastcc i64 @get_slot_offset(%struct.xa_node* noundef %3, i8** noundef nonnull %2) #16
  %conv = trunc i64 %call4 to i32
  %call5 = call fastcc i1 @node_tag_get(%struct.xarray* noundef %root, %struct.xa_node* noundef %3, i32 noundef %conv) #16
  br i1 %call5, label %cleanup, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false, %if.end
  %tobool9.not = icmp eq i8* %item, null
  %cmp.not = icmp eq i8* %call, %item
  %or.cond = select i1 %tobool9.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end8
  %4 = load %struct.xa_node*, %struct.xa_node** %node, align 8
  %5 = load i8**, i8*** %slot, align 8
  %call14 = call fastcc i1 @__radix_tree_delete(%struct.xarray* noundef %root, %struct.xa_node* noundef %4, i8** noundef %5) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true, %lor.lhs.false, %entry, %if.end13
  %retval.0 = phi i8* [ %call, %if.end13 ], [ null, %entry ], [ null, %lor.lhs.false ], [ null, %land.lhs.true ], [ null, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_idr(%struct.xarray* nocapture noundef readonly %root) unnamed_addr #7 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @node_tag_get(%struct.xarray* nocapture noundef readonly %root, %struct.xa_node* noundef %node, i32 noundef %offset) unnamed_addr #6 {
entry:
  %tobool.not = icmp eq %struct.xa_node* %node, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @tag_get(%struct.xa_node* noundef nonnull %node, i32 noundef 0, i32 noundef %offset) #16
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @root_tag_get(%struct.xarray* noundef %root, i32 noundef 0) #16
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0.in = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  %retval.0 = icmp ne i32 %retval.0.in, 0
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @radix_tree_delete(%struct.xarray* noundef %root, i64 noundef %index) local_unnamed_addr #0 {
entry:
  %call = call i8* @radix_tree_delete_item(%struct.xarray* noundef %root, i64 noundef %index, i8* noundef null) #16
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @radix_tree_tagged(%struct.xarray* nocapture noundef readonly %root, i32 noundef %tag) local_unnamed_addr #7 {
entry:
  %call = call fastcc i32 @root_tag_get(%struct.xarray* noundef %root, i32 noundef %tag) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @idr_preload(i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__radix_tree_preload(i32 noundef %gfp_mask, i32 noundef 11) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %call3 = call fastcc i64 @__kern_my_cpu_offset() #16
  br label %if.end

if.end:                                           ; preds = %do.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8** @idr_get_free(%struct.xarray* noundef %root, %struct.radix_tree_iter* nocapture noundef %iter, i32 noundef %gfp, i64 noundef %max) local_unnamed_addr #0 {
entry:
  %child = alloca %struct.xa_node*, align 8
  %maxindex = alloca i64, align 8
  %0 = bitcast %struct.xa_node** %child to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.xa_node* null, %struct.xa_node** %child, align 8, !annotation !15
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 2
  %1 = bitcast i64* %maxindex to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %maxindex, align 8, !annotation !15
  %next_index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 1
  %2 = load i64, i64* %next_index, align 8
  %call237 = call fastcc i32 @radix_tree_load_root(%struct.xarray* noundef %root, %struct.xa_node** noundef nonnull %child, i64* noundef nonnull %maxindex) #16
  %call1238 = call i32 @radix_tree_tagged(%struct.xarray* noundef %root, i32 noundef 0) #16
  %tobool.not239 = icmp eq i32 %call1238, 0
  %3 = load i64, i64* %maxindex, align 8
  %add240 = add i64 %3, 1
  %cmp241 = icmp ugt i64 %2, %add240
  %cond242 = select i1 %cmp241, i64 %2, i64 %add240
  %start.1243 = select i1 %tobool.not239, i64 %cond242, i64 %2
  %cmp2244 = icmp ugt i64 %start.1243, %max
  br i1 %cmp2244, label %if.then3, label %if.end5.lr.ph

if.end5.lr.ph:                                    ; preds = %entry
  %4 = bitcast %struct.xa_node** %child to i8**
  br label %if.end5

grow.loopexit:                                    ; preds = %while.body72
  %call = call fastcc i32 @radix_tree_load_root(%struct.xarray* noundef %root, %struct.xa_node** noundef nonnull %child, i64* noundef nonnull %maxindex) #16
  %call1 = call i32 @radix_tree_tagged(%struct.xarray* noundef %root, i32 noundef 0) #16
  %tobool.not = icmp eq i32 %call1, 0
  %5 = load i64, i64* %maxindex, align 8
  %add = add i64 %5, 1
  %cmp = icmp ugt i64 %call60, %add
  %cond = select i1 %cmp, i64 %call60, i64 %add
  %start.1 = select i1 %tobool.not, i64 %cond, i64 %call60
  %cmp2 = icmp ugt i64 %start.1, %max
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %grow.loopexit, %entry
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef -28) #16
  %6 = bitcast i8* %call4 to i8**
  br label %cleanup108

if.end5:                                          ; preds = %if.end5.lr.ph, %grow.loopexit
  %start.1249 = phi i64 [ %start.1243, %if.end5.lr.ph ], [ %start.1, %grow.loopexit ]
  %7 = phi i64 [ %3, %if.end5.lr.ph ], [ %5, %grow.loopexit ]
  %call248 = phi i32 [ %call237, %if.end5.lr.ph ], [ %call, %grow.loopexit ]
  %slot.0247 = phi i8** [ %xa_head, %if.end5.lr.ph ], [ %slot.1222, %grow.loopexit ]
  %offset.0246 = phi i32 [ 0, %if.end5.lr.ph ], [ %add75, %grow.loopexit ]
  %cmp6 = icmp ugt i64 %start.1249, %7
  br i1 %cmp6, label %if.then7, label %if.end16

if.then7:                                         ; preds = %if.end5
  %call8 = call fastcc i32 @radix_tree_extend(%struct.xarray* noundef %root, i32 noundef %gfp, i64 noundef %start.1249, i32 noundef %call248) #16
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then7
  %conv = sext i32 %call8 to i64
  %call11 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #16
  %8 = bitcast i8* %call11 to i8**
  br label %cleanup108

cleanup:                                          ; preds = %if.then7
  %9 = load volatile i8*, i8** %xa_head, align 8
  store i8* %9, i8** %4, align 8
  br label %if.end16

if.end16:                                         ; preds = %cleanup, %if.end5
  %shift.1 = phi i32 [ %call8, %cleanup ], [ %call248, %if.end5 ]
  %cmp17 = icmp eq i64 %start.1249, 0
  %cmp19 = icmp eq i32 %shift.1, 0
  %or.cond = select i1 %cmp17, i1 %cmp19, i1 false
  %spec.select = select i1 %or.cond, i32 6, i32 %shift.1
  %spec.select193 = select i1 %or.cond, i64 0, i64 %start.1249
  %tobool23.not216 = icmp eq i32 %spec.select, 0
  br i1 %tobool23.not216, label %while.end91.thread, label %while.body

while.end91.thread:                               ; preds = %if.end16
  %index277 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  store i64 %spec.select193, i64* %index277, align 8
  br label %if.end106

while.body:                                       ; preds = %if.end16, %if.end87
  %node.1224 = phi %struct.xa_node* [ %node.3, %if.end87 ], [ null, %if.end16 ]
  %slot.1222 = phi i8** [ %arrayidx90, %if.end87 ], [ %slot.0247, %if.end16 ]
  %start.2220 = phi i64 [ %start.3, %if.end87 ], [ %spec.select193, %if.end16 ]
  %shift.2219 = phi i32 [ %shift.4, %if.end87 ], [ %spec.select, %if.end16 ]
  %offset.1218 = phi i32 [ %offset.3, %if.end87 ], [ %offset.0246, %if.end16 ]
  %sub = add i32 %shift.2219, -6
  %10 = load %struct.xa_node*, %struct.xa_node** %child, align 8
  %cmp24 = icmp eq %struct.xa_node* %10, null
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %while.body
  %call27 = call fastcc %struct.xa_node* @radix_tree_node_alloc(i32 noundef %gfp, %struct.xa_node* noundef %node.1224, %struct.xarray* noundef %root, i32 noundef %sub, i32 noundef %offset.1218, i32 noundef 0) #16
  store %struct.xa_node* %call27, %struct.xa_node** %child, align 8
  %tobool28.not = icmp eq %struct.xa_node* %call27, null
  %11 = getelementptr %struct.xa_node, %struct.xa_node* %call27, i64 0, i32 0
  br i1 %tobool28.not, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then26
  %call30 = call fastcc i8* @ERR_PTR(i64 noundef -12) #16
  %12 = bitcast i8* %call30 to i8**
  br label %cleanup108

if.end31:                                         ; preds = %if.then26
  call fastcc void @all_tag_set(%struct.xa_node* noundef nonnull %call27) #16
  %call33 = call fastcc i8* @node_to_entry(i8* noundef %11) #16
  %13 = ptrtoint i8* %call33 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i8** elementtype(i8*) %slot.1222, i64 %13) #17, !srcloc !32
  %tobool43.not = icmp eq %struct.xa_node* %node.1224, null
  br i1 %tobool43.not, label %if.end49, label %if.then44

if.then44:                                        ; preds = %if.end31
  %count = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.1224, i64 0, i32 2
  %14 = load i8, i8* %count, align 2
  %inc = add i8 %14, 1
  store i8 %inc, i8* %count, align 2
  %.pre = load i8*, i8** %4, align 8
  br label %if.end49

if.else:                                          ; preds = %while.body
  %15 = getelementptr %struct.xa_node, %struct.xa_node* %10, i64 0, i32 0
  %16 = getelementptr %struct.xa_node, %struct.xa_node* %10, i64 0, i32 0
  %call46 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %16) #16
  br i1 %call46, label %if.end49, label %while.end91

if.end49:                                         ; preds = %if.else, %if.end31, %if.then44
  %17 = phi i8* [ %.pre, %if.then44 ], [ %11, %if.end31 ], [ %15, %if.else ]
  %call50 = call fastcc %struct.xa_node* @entry_to_node(i8* noundef %17) #16
  %call51 = call fastcc i32 @radix_tree_descend(%struct.xa_node* noundef %call50, %struct.xa_node** noundef nonnull %child, i64 noundef %start.2220) #16, !range !29
  %call52 = call fastcc i32 @tag_get(%struct.xa_node* noundef %call50, i32 noundef 0, i32 noundef %call51) #16
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end49.if.end87_crit_edge

if.end49.if.end87_crit_edge:                      ; preds = %if.end49
  %.pre272 = zext i32 %call51 to i64
  br label %if.end87

if.then54:                                        ; preds = %if.end49
  %add55 = add nuw nsw i32 %call51, 1
  %conv56 = zext i32 %add55 to i64
  %cmp.i.not = icmp eq i32 %call51, 63
  br i1 %cmp.i.not, label %radix_tree_find_next_bit.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then54
  %arraydecay.i = getelementptr %struct.xa_node, %struct.xa_node* %call50, i64 0, i32 8, i32 0, i64 0, i64 0
  %18 = load i64, i64* %arraydecay.i, align 8
  %shr.i = lshr i64 %18, %conv56
  %tobool.not.i = icmp eq i64 %shr.i, 0
  br i1 %tobool.not.i, label %radix_tree_find_next_bit.exit, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  %19 = call i64 @llvm.cttz.i64(i64 %shr.i, i1 true) #17, !range !30
  %add.i = add nuw nsw i64 %19, %conv56
  br label %radix_tree_find_next_bit.exit

radix_tree_find_next_bit.exit:                    ; preds = %if.then54, %if.then.i, %if.then1.i
  %retval.1.i = phi i64 [ 64, %if.then54 ], [ %add.i, %if.then1.i ], [ 64, %if.then.i ]
  %conv58 = trunc i64 %retval.1.i to i32
  %call60 = call fastcc i64 @next_index(i64 noundef %start.2220, %struct.xa_node* noundef %call50, i64 noundef %retval.1.i) #16
  %20 = add i64 %call60, -1
  %.not = icmp ult i64 %20, %max
  br i1 %.not, label %while.cond68.preheader, label %if.then65

while.cond68.preheader:                           ; preds = %radix_tree_find_next_bit.exit
  %cmp70212 = icmp eq i32 %conv58, 64
  br i1 %cmp70212, label %while.body72, label %while.end

if.then65:                                        ; preds = %radix_tree_find_next_bit.exit
  %call66 = call fastcc i8* @ERR_PTR(i64 noundef -28) #16
  %21 = bitcast i8* %call66 to i8**
  br label %cleanup108

while.body72:                                     ; preds = %while.cond68.preheader, %if.end78
  %node.2213 = phi %struct.xa_node* [ %23, %if.end78 ], [ %call50, %while.cond68.preheader ]
  %offset73 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.2213, i64 0, i32 1
  %22 = load i8, i8* %offset73, align 1
  %conv74 = zext i8 %22 to i32
  %add75 = add nuw nsw i32 %conv74, 1
  %parent = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.2213, i64 0, i32 4
  %23 = load %struct.xa_node*, %struct.xa_node** %parent, align 8
  %tobool76.not = icmp eq %struct.xa_node* %23, null
  br i1 %tobool76.not, label %grow.loopexit, label %if.end78

if.end78:                                         ; preds = %while.body72
  %cmp70 = icmp eq i32 %add75, 64
  br i1 %cmp70, label %while.body72, label %while.cond68.while.end_crit_edge

while.cond68.while.end_crit_edge:                 ; preds = %if.end78
  %shift79.le = getelementptr inbounds %struct.xa_node, %struct.xa_node* %23, i64 0, i32 0
  %24 = load i8, i8* %shift79.le, align 8
  %conv80.le = zext i8 %24 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond68.while.end_crit_edge, %while.cond68.preheader
  %offset.2.lcssa = phi i32 [ %add75, %while.cond68.while.end_crit_edge ], [ %conv58, %while.cond68.preheader ]
  %shift.3.lcssa = phi i32 [ %conv80.le, %while.cond68.while.end_crit_edge ], [ %sub, %while.cond68.preheader ]
  %node.2.lcssa = phi %struct.xa_node* [ %23, %while.cond68.while.end_crit_edge ], [ %call50, %while.cond68.preheader ]
  %conv69 = zext i32 %offset.2.lcssa to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %node.2.lcssa, i64 0, i32 7, i64 %conv69
  %25 = load volatile i8*, i8** %arrayidx, align 8
  store i8* %25, i8** %4, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.end49.if.end87_crit_edge, %while.end
  %idxprom89.pre-phi = phi i64 [ %.pre272, %if.end49.if.end87_crit_edge ], [ %conv69, %while.end ]
  %offset.3 = phi i32 [ %call51, %if.end49.if.end87_crit_edge ], [ %offset.2.lcssa, %while.end ]
  %shift.4 = phi i32 [ %sub, %if.end49.if.end87_crit_edge ], [ %shift.3.lcssa, %while.end ]
  %start.3 = phi i64 [ %start.2220, %if.end49.if.end87_crit_edge ], [ %call60, %while.end ]
  %node.3 = phi %struct.xa_node* [ %call50, %if.end49.if.end87_crit_edge ], [ %node.2.lcssa, %while.end ]
  %arrayidx90 = getelementptr %struct.xa_node, %struct.xa_node* %node.3, i64 0, i32 7, i64 %idxprom89.pre-phi
  %tobool23.not = icmp eq i32 %shift.4, 0
  br i1 %tobool23.not, label %while.end91, label %while.body

while.end91:                                      ; preds = %if.end87, %if.else
  %offset.1.lcssa = phi i32 [ %offset.3, %if.end87 ], [ %offset.1218, %if.else ]
  %start.2.lcssa = phi i64 [ %start.3, %if.end87 ], [ %start.2220, %if.else ]
  %slot.1.lcssa = phi i8** [ %arrayidx90, %if.end87 ], [ %slot.1222, %if.else ]
  %node.1.lcssa = phi %struct.xa_node* [ %node.3, %if.end87 ], [ %node.1224, %if.else ]
  %index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  store i64 %start.2.lcssa, i64* %index, align 8
  %tobool92.not = icmp eq %struct.xa_node* %node.1.lcssa, null
  br i1 %tobool92.not, label %if.end106, label %if.then93

if.then93:                                        ; preds = %while.end91
  %call94 = call fastcc i64 @node_maxindex(%struct.xa_node* noundef nonnull %node.1.lcssa) #16
  %or = or i64 %call94, %start.2.lcssa
  %cmp96 = icmp ugt i64 %or, %max
  %cond101 = select i1 %cmp96, i64 %max, i64 %or
  %add102 = add i64 %cond101, 1
  br label %if.end106

if.end106:                                        ; preds = %while.end91.thread, %while.end91, %if.then93
  %node.1.lcssa281 = phi %struct.xa_node* [ %node.1.lcssa, %if.then93 ], [ null, %while.end91 ], [ null, %while.end91.thread ]
  %slot.1.lcssa280 = phi i8** [ %slot.1.lcssa, %if.then93 ], [ %slot.1.lcssa, %while.end91 ], [ %slot.0247, %while.end91.thread ]
  %offset.1.lcssa279 = phi i32 [ %offset.1.lcssa, %if.then93 ], [ %offset.1.lcssa, %while.end91 ], [ %offset.0246, %while.end91.thread ]
  %storemerge = phi i64 [ %add102, %if.then93 ], [ 1, %while.end91 ], [ 1, %while.end91.thread ]
  store i64 %storemerge, i64* %next_index, align 8
  %node107 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 3
  store %struct.xa_node* %node.1.lcssa281, %struct.xa_node** %node107, align 8
  call fastcc void @set_iter_tags(%struct.radix_tree_iter* noundef %iter, %struct.xa_node* noundef %node.1.lcssa281, i32 noundef %offset.1.lcssa279, i32 noundef 0) #16
  br label %cleanup108

cleanup108:                                       ; preds = %cleanup.thread, %if.end106, %if.then65, %if.then29, %if.then3
  %retval.3 = phi i8** [ %6, %if.then3 ], [ %21, %if.then65 ], [ %12, %if.then29 ], [ %slot.1.lcssa280, %if.end106 ], [ %8, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i8** %retval.3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @radix_tree_extend(%struct.xarray* noundef %root, i32 noundef %gfp, i64 noundef %index, i32 noundef %shift) unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %maxshift.0 = phi i32 [ %shift, %entry ], [ %add, %while.cond ]
  %call = call fastcc i64 @shift_maxindex(i32 noundef %maxshift.0) #16
  %cmp = icmp ult i64 %call, %index
  %add = add i32 %maxshift.0, 6
  br i1 %cmp, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 2
  %0 = load volatile i8*, i8** %xa_head, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %land.lhs.true, label %do.body6.preheader

land.lhs.true:                                    ; preds = %while.end
  %call3 = call fastcc i1 @is_idr(%struct.xarray* noundef %root) #16
  br i1 %call3, label %lor.lhs.false, label %cleanup79

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call4 = call fastcc i32 @root_tag_get(%struct.xarray* noundef %root, i32 noundef 0) #16
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body6.preheader, label %cleanup79

do.body6.preheader:                               ; preds = %lor.lhs.false, %while.end
  br label %do.body6

do.body6:                                         ; preds = %do.body6.preheader, %do.cond74
  %entry1.0 = phi i8* [ %call45, %do.cond74 ], [ %0, %do.body6.preheader ]
  %shift.addr.0 = phi i32 [ %add73, %do.cond74 ], [ %shift, %do.body6.preheader ]
  %call7 = call fastcc %struct.xa_node* @radix_tree_node_alloc(i32 noundef %gfp, %struct.xa_node* noundef null, %struct.xarray* noundef %root, i32 noundef %shift.addr.0, i32 noundef 0, i32 noundef 1) #16
  %tobool8.not = icmp eq %struct.xa_node* %call7, null
  br i1 %tobool8.not, label %cleanup79, label %if.end10

if.end10:                                         ; preds = %do.body6
  %call11 = call fastcc i1 @is_idr(%struct.xarray* noundef %root) #16
  br i1 %call11, label %if.then12, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end10
  %call18 = call fastcc i32 @root_tag_get(%struct.xarray* noundef %root, i32 noundef 0) #16
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.inc, label %if.then20

if.then12:                                        ; preds = %if.end10
  call fastcc void @all_tag_set(%struct.xa_node* noundef nonnull %call7) #16
  %call13 = call fastcc i32 @root_tag_get(%struct.xarray* noundef %root, i32 noundef 0) #16
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %do.body23

if.then15:                                        ; preds = %if.then12
  call fastcc void @tag_clear(%struct.xa_node* noundef nonnull %call7, i32 noundef 0, i32 noundef 0) #16
  call fastcc void @root_tag_set(%struct.xarray* noundef %root, i32 noundef 0) #16
  br label %do.body23

if.then20:                                        ; preds = %for.body.preheader
  call fastcc void @tag_set(%struct.xa_node* noundef nonnull %call7, i32 noundef 0, i32 noundef 0) #16
  br label %for.inc

for.inc:                                          ; preds = %for.body.preheader, %if.then20
  %call18.1 = call fastcc i32 @root_tag_get(%struct.xarray* noundef %root, i32 noundef 1) #16
  %tobool19.not.1 = icmp eq i32 %call18.1, 0
  br i1 %tobool19.not.1, label %for.inc.1, label %if.then20.1

if.then20.1:                                      ; preds = %for.inc
  call fastcc void @tag_set(%struct.xa_node* noundef nonnull %call7, i32 noundef 1, i32 noundef 0) #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then20.1, %for.inc
  %call18.2 = call fastcc i32 @root_tag_get(%struct.xarray* noundef %root, i32 noundef 2) #16
  %tobool19.not.2 = icmp eq i32 %call18.2, 0
  br i1 %tobool19.not.2, label %do.body23, label %if.then20.2

if.then20.2:                                      ; preds = %for.inc.1
  call fastcc void @tag_set(%struct.xa_node* noundef nonnull %call7, i32 noundef 2, i32 noundef 0) #16
  br label %do.body23

do.body23:                                        ; preds = %for.inc.1, %if.then20.2, %if.then15, %if.then12
  %cmp24 = icmp ugt i32 %shift.addr.0, 64
  br i1 %cmp24, label %do.body28, label %do.end36, !prof !16

do.body28:                                        ; preds = %do.body23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 442; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !33
  unreachable

do.end36:                                         ; preds = %do.body23
  %call37 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %entry1.0) #16
  br i1 %call37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %do.end36
  %call39 = call fastcc %struct.xa_node* @entry_to_node(i8* noundef %entry1.0) #16
  %parent = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call39, i64 0, i32 4
  store %struct.xa_node* %call7, %struct.xa_node** %parent, align 8
  br label %do.cond74

if.else40:                                        ; preds = %do.end36
  %call41 = call fastcc i1 @xa_is_value(i8* noundef %entry1.0) #16
  br i1 %call41, label %if.then42, label %do.cond74

if.then42:                                        ; preds = %if.else40
  %nr_values = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call7, i64 0, i32 3
  store i8 1, i8* %nr_values, align 1
  br label %do.cond74

do.cond74:                                        ; preds = %if.else40, %if.then42, %if.then38
  %arrayidx = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call7, i64 0, i32 7, i64 0
  store i8* %entry1.0, i8** %arrayidx, align 8
  %1 = getelementptr %struct.xa_node, %struct.xa_node* %call7, i64 0, i32 0
  %call45 = call fastcc i8* @node_to_entry(i8* noundef %1) #16
  %2 = ptrtoint i8* %call45 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i8** elementtype(i8*) %xa_head, i64 %2) #17, !srcloc !34
  %add73 = add nuw nsw i32 %shift.addr.0, 6
  %cmp75.not = icmp ugt i32 %add73, %maxshift.0
  br i1 %cmp75.not, label %cleanup79, label %do.body6

cleanup79:                                        ; preds = %do.body6, %do.cond74, %lor.lhs.false, %land.lhs.true
  %retval.2 = phi i32 [ %add, %land.lhs.true ], [ %add, %lor.lhs.false ], [ -12, %do.body6 ], [ %add, %do.cond74 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.xa_node* @radix_tree_node_alloc(i32 noundef %gfp_mask, %struct.xa_node* noundef %parent, %struct.xarray* noundef %root, i32 noundef %shift, i32 noundef %offset, i32 noundef %count) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @gfpflags_allow_blocking(i32 noundef %gfp_mask) #16
  br i1 %call, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i32 @preempt_count() #16
  %0 = and i32 %call1, 15728640
  %call2 = call fastcc i32 @preempt_count() #16
  %1 = and i32 %call2, 983040
  %or3 = or i32 %1, %0
  %call5 = call fastcc i32 @preempt_count() #16
  %2 = and i32 %call5, 65280
  %or85 = or i32 %or3, %2
  %tobool.not = icmp eq i32 %or85, 0
  br i1 %tobool.not, label %if.then, label %if.end21

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @radix_tree_node_cachep, align 8
  %or9 = or i32 %gfp_mask, 8192
  %call10 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %3, i32 noundef %or9) #15
  %tobool11.not = icmp eq i8* %call10, null
  br i1 %tobool11.not, label %do.body, label %if.then12

if.then12:                                        ; preds = %if.then
  %4 = bitcast i8* %call10 to %struct.xa_node*
  br label %do.body23

do.body:                                          ; preds = %if.then
  %call14 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call14, ptrtoint (%struct.radix_tree_preload* @radix_tree_preloads to i64)
  %5 = inttoptr i64 %add to %struct.radix_tree_preload*
  %nr = getelementptr inbounds %struct.radix_tree_preload, %struct.radix_tree_preload* %5, i64 0, i32 1
  %6 = load i32, i32* %nr, align 8
  %tobool15.not = icmp eq i32 %6, 0
  br i1 %tobool15.not, label %do.body23.thread, label %if.then16

if.then16:                                        ; preds = %do.body
  %nodes = getelementptr inbounds %struct.radix_tree_preload, %struct.radix_tree_preload* %5, i64 0, i32 2
  %7 = load %struct.xa_node*, %struct.xa_node** %nodes, align 8
  %parent17 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %7, i64 0, i32 4
  %8 = load %struct.xa_node*, %struct.xa_node** %parent17, align 8
  store %struct.xa_node* %8, %struct.xa_node** %nodes, align 8
  %dec = add i32 %6, -1
  store i32 %dec, i32* %nr, align 8
  br label %do.body23

if.end21:                                         ; preds = %land.lhs.true, %entry
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** @radix_tree_node_cachep, align 8
  %call22 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %9, i32 noundef %gfp_mask) #15
  %10 = bitcast i8* %call22 to %struct.xa_node*
  br label %do.body23

do.body23:                                        ; preds = %if.then16, %if.then12, %if.end21
  %ret.2 = phi %struct.xa_node* [ %10, %if.end21 ], [ %4, %if.then12 ], [ %7, %if.then16 ]
  %11 = getelementptr %struct.xa_node, %struct.xa_node* %ret.2, i64 0, i32 0
  %call24 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %11) #16
  br i1 %call24, label %do.body29, label %do.end37, !prof !16

do.body23.thread:                                 ; preds = %do.body
  %call247 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef null) #16
  br i1 %call247, label %do.body29, label %cleanup50, !prof !16

do.body29:                                        ; preds = %do.body23.thread, %do.body23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 276; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !35
  unreachable

do.end37:                                         ; preds = %do.body23
  %tobool38.not = icmp eq %struct.xa_node* %ret.2, null
  br i1 %tobool38.not, label %cleanup50, label %if.then39

if.then39:                                        ; preds = %do.end37
  %conv40 = trunc i32 %shift to i8
  store i8 %conv40, i8* %11, align 8
  %conv42 = trunc i32 %offset to i8
  %offset43 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %ret.2, i64 0, i32 1
  store i8 %conv42, i8* %offset43, align 1
  %conv44 = trunc i32 %count to i8
  %count45 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %ret.2, i64 0, i32 2
  store i8 %conv44, i8* %count45, align 2
  %nr_values47 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %ret.2, i64 0, i32 3
  store i8 0, i8* %nr_values47, align 1
  %parent48 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %ret.2, i64 0, i32 4
  store %struct.xa_node* %parent, %struct.xa_node** %parent48, align 8
  %array = getelementptr inbounds %struct.xa_node, %struct.xa_node* %ret.2, i64 0, i32 5
  store %struct.xarray* %root, %struct.xarray** %array, align 8
  br label %cleanup50

cleanup50:                                        ; preds = %do.body23.thread, %do.end37, %if.then39
  %ret.2811 = phi %struct.xa_node* [ null, %do.end37 ], [ %ret.2, %if.then39 ], [ null, %do.body23.thread ]
  ret %struct.xa_node* %ret.2811
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @all_tag_set(%struct.xa_node* noundef %node) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 8, i32 0, i64 0, i64 0
  call fastcc void @bitmap_fill(i64* noundef %arraydecay) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull i8* @node_to_entry(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %or = or i64 %0, 2
  %1 = inttoptr i64 %or to i8*
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @next_index(i64 noundef %index, %struct.xa_node* nocapture noundef readonly %node, i64 noundef %offset) unnamed_addr #7 {
entry:
  %call = call fastcc i64 @node_maxindex(%struct.xa_node* noundef %node) #16
  %neg = xor i64 %call, -1
  %and = and i64 %neg, %index
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 0
  %0 = load i8, i8* %shift, align 8
  %sh_prom = zext i8 %0 to i64
  %shl = shl i64 %offset, %sh_prom
  %add = add i64 %shl, %and
  ret i64 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @idr_destroy(%struct.idr* noundef %idr) local_unnamed_addr #0 {
entry:
  %xa_head = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 0, i32 2
  %0 = load volatile i8*, i8** %xa_head, align 8
  %call = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %0) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast i8* %0 to %struct.xa_node*
  call fastcc void @radix_tree_free_nodes(%struct.xa_node* noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %idr_rt = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 0
  store i8* null, i8** %xa_head, align 8
  call fastcc void @root_tag_set(%struct.xarray* noundef %idr_rt, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @radix_tree_free_nodes(%struct.xa_node* noundef %node) unnamed_addr #0 {
entry:
  %0 = getelementptr %struct.xa_node, %struct.xa_node* %node, i64 0, i32 0
  %call = call fastcc %struct.xa_node* @entry_to_node(i8* noundef %0) #16
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %child.0 = phi %struct.xa_node* [ %call, %entry ], [ %child.0.be, %for.cond.backedge ]
  %offset.0 = phi i32 [ 0, %entry ], [ %offset.0.be, %for.cond.backedge ]
  %idxprom = zext i32 %offset.0 to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %child.0, i64 0, i32 7, i64 %idxprom
  %1 = load volatile i8*, i8** %arrayidx, align 8
  %call3 = call fastcc i1 @xa_is_node(i8* noundef %1) #16
  br i1 %call3, label %land.lhs.true, label %while.cond.preheader

while.cond.preheader:                             ; preds = %land.lhs.true, %for.cond
  br label %while.cond

land.lhs.true:                                    ; preds = %for.cond
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %child.0, i64 0, i32 0
  %2 = load i8, i8* %shift, align 8
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call4 = call fastcc %struct.xa_node* @entry_to_node(i8* noundef %1) #16
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %while.cond, %if.then
  %child.0.be = phi %struct.xa_node* [ %call4, %if.then ], [ %child.1, %while.cond ]
  %offset.0.be = phi i32 [ 0, %if.then ], [ %offset.1, %while.cond ]
  br label %for.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end21
  %child.1 = phi %struct.xa_node* [ %4, %if.end21 ], [ %child.0, %while.cond.preheader ]
  %offset.1.in = phi i32 [ %conv8, %if.end21 ], [ %offset.0, %while.cond.preheader ]
  %offset.1 = add i32 %offset.1.in, 1
  %cmp = icmp eq i32 %offset.1, 64
  br i1 %cmp, label %while.body, label %for.cond.backedge

while.body:                                       ; preds = %while.cond
  %offset7 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %child.1, i64 0, i32 1
  %3 = load i8, i8* %offset7, align 1
  %conv8 = zext i8 %3 to i32
  %parent = getelementptr inbounds %struct.xa_node, %struct.xa_node* %child.1, i64 0, i32 4
  %4 = load %struct.xa_node*, %struct.xa_node** %parent, align 8
  %private_list = getelementptr inbounds %struct.xa_node, %struct.xa_node* %child.1, i64 0, i32 6, i32 0
  %call9 = call fastcc i32 @list_empty(%struct.list_head* noundef %private_list) #16
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then20, label %if.end21, !prof !16

if.then20:                                        ; preds = %while.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 671; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !36
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %while.body
  call fastcc void @radix_tree_node_free(%struct.xa_node* noundef %child.1) #16
  %cmp31 = icmp eq %struct.xa_node* %child.1, %call
  br i1 %cmp31, label %cleanup38, label %while.cond

cleanup38:                                        ; preds = %if.end21
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @radix_tree_init() local_unnamed_addr #11 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef 576, i32 noundef 0, i32 noundef 393216, void (i8*)* noundef nonnull @radix_tree_node_ctor) #15
  store %struct.kmem_cache* %call, %struct.kmem_cache** @radix_tree_node_cachep, align 8
  %call7 = call fastcc i32 @cpuhp_setup_state_nocalls() #16
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 1606; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @radix_tree_node_ctor(i8* noundef %arg) #0 {
entry:
  %call = call i8* @memset(i8* noundef %arg, i32 noundef 0, i64 noundef 576) #15
  %0 = getelementptr inbounds i8, i8* %arg, i64 24
  %private_list = bitcast i8* %0 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %private_list) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state_nocalls() unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 32, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i1 noundef false, i32 (i32)* noundef null, i32 (i32)* noundef nonnull @radix_tree_cpu_dead, i1 noundef false) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @radix_tree_cpu_dead(i32 noundef %cpu) #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.radix_tree_preload* @radix_tree_preloads to i64)
  %1 = inttoptr i64 %add to %struct.radix_tree_preload*
  %nr = getelementptr inbounds %struct.radix_tree_preload, %struct.radix_tree_preload* %1, i64 0, i32 1
  %2 = load i32, i32* %nr, align 8
  %tobool.not12 = icmp eq i32 %2, 0
  br i1 %tobool.not12, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %nodes = getelementptr inbounds %struct.radix_tree_preload, %struct.radix_tree_preload* %1, i64 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %3 = load %struct.xa_node*, %struct.xa_node** %nodes, align 8
  %parent = getelementptr inbounds %struct.xa_node, %struct.xa_node* %3, i64 0, i32 4
  %4 = load %struct.xa_node*, %struct.xa_node** %parent, align 8
  store %struct.xa_node* %4, %struct.xa_node** %nodes, align 8
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** @radix_tree_node_cachep, align 8
  %6 = getelementptr %struct.xa_node, %struct.xa_node* %3, i64 0, i32 0
  call void @kmem_cache_free(%struct.kmem_cache* noundef %5, i8* noundef %6) #15
  %7 = load i32, i32* %nr, align 8
  %dec = add i32 %7, -1
  store i32 %dec, i32* %nr, align 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @root_gfp_mask(%struct.xarray* nocapture noundef readonly %root) unnamed_addr #7 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %and = and i32 %0, 33554416
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @radix_tree_shrink(%struct.xarray* noundef %root) unnamed_addr #0 {
entry:
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 2
  %0 = load volatile i8*, i8** %xa_head, align 8
  %call93 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %0) #16
  br i1 %call93, label %if.end.preheader, label %for.end

if.end.preheader:                                 ; preds = %entry
  %call298 = call fastcc %struct.xa_node* @entry_to_node(i8* noundef %0) #16
  %count99 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call298, i64 0, i32 2
  %1 = load i8, i8* %count99, align 2
  %cmp.not100 = icmp eq i8 %1, 1
  br i1 %cmp.not100, label %if.end5, label %for.end

if.end:                                           ; preds = %cleanup
  %call2 = call fastcc %struct.xa_node* @entry_to_node(i8* noundef %5) #16
  %count = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call2, i64 0, i32 2
  %2 = load i8, i8* %count, align 2
  %cmp.not = icmp eq i8 %2, 1
  br i1 %cmp.not, label %if.end5, label %for.end

if.end5:                                          ; preds = %if.end.preheader, %if.end
  %count103 = phi i8* [ %count, %if.end ], [ %count99, %if.end.preheader ]
  %call2102 = phi %struct.xa_node* [ %call2, %if.end ], [ %call298, %if.end.preheader ]
  %shrunk.0.off094101 = phi i1 [ true, %if.end ], [ false, %if.end.preheader ]
  %arrayidx = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call2102, i64 0, i32 7, i64 0
  %3 = load volatile i8*, i8** %arrayidx, align 8
  %tobool.not = icmp eq i8* %3, null
  br i1 %tobool.not, label %for.end, label %if.end13

if.end13:                                         ; preds = %if.end5
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call2102, i64 0, i32 0
  %4 = load i8, i8* %shift, align 8
  %tobool14.not = icmp eq i8 %4, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end13
  %call15 = call fastcc i1 @is_idr(%struct.xarray* noundef %root) #16
  br i1 %call15, label %for.end, label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.end13
  %call19 = call fastcc i1 @radix_tree_is_internal_node(i8* noundef nonnull %3) #16
  br i1 %call19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  %call21 = call fastcc %struct.xa_node* @entry_to_node(i8* noundef nonnull %3) #16
  %parent = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call21, i64 0, i32 4
  store %struct.xa_node* null, %struct.xa_node** %parent, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18
  store i8* %3, i8** %xa_head, align 8
  %call24 = call fastcc i1 @is_idr(%struct.xarray* noundef %root) #16
  br i1 %call24, label %land.lhs.true26, label %if.end30

land.lhs.true26:                                  ; preds = %if.end22
  %call27 = call fastcc i32 @tag_get(%struct.xa_node* noundef %call2102, i32 noundef 0, i32 noundef 0) #16
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true26
  call fastcc void @root_tag_clear(%struct.xarray* noundef %root, i32 noundef 0) #16
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true26, %if.end22
  store i8 0, i8* %count103, align 2
  br i1 %call19, label %if.end37, label %if.then33

if.then33:                                        ; preds = %if.end30
  store i8* inttoptr (i64 1026 to i8*), i8** %arrayidx, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end30
  %private_list = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call2102, i64 0, i32 6, i32 0
  %call38 = call fastcc i32 @list_empty(%struct.list_head* noundef %private_list) #16
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then49, label %cleanup, !prof !16

if.then49:                                        ; preds = %if.end37
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/radix-tree.c\22; .popsection; .long 14472b - 14470b; .short 533; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !38
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then49
  call fastcc void @radix_tree_node_free(%struct.xa_node* noundef %call2102) #16
  %5 = load volatile i8*, i8** %xa_head, align 8
  %call = call fastcc i1 @radix_tree_is_internal_node(i8* noundef %5) #16
  br i1 %call, label %if.end, label %for.end

for.end:                                          ; preds = %cleanup, %if.end, %if.end5, %land.lhs.true, %if.end.preheader, %entry
  %shrunk.0.off0.lcssa = phi i1 [ false, %entry ], [ false, %if.end.preheader ], [ %shrunk.0.off094101, %land.lhs.true ], [ %shrunk.0.off094101, %if.end5 ], [ true, %if.end ], [ true, %cleanup ]
  ret i1 %shrunk.0.off0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @root_tag_clear_all(%struct.xarray* nocapture noundef %root) unnamed_addr #9 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %and = and i32 %0, 33554431
  store i32 %and, i32* %xa_flags, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @radix_tree_node_free(%struct.xa_node* noundef %node) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 6
  %callback_head = bitcast %union.anon.2* %0 to %struct.callback_head*
  call void @call_rcu(%struct.callback_head* noundef %callback_head, void (%struct.callback_head*)* noundef nonnull @radix_tree_node_rcu_free) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @root_tag_clear(%struct.xarray* nocapture noundef %root, i32 noundef %tag) unnamed_addr #9 {
entry:
  %add = add i32 %tag, 25
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %and = and i32 %0, %neg
  store i32 %and, i32* %xa_flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @tag_clear(%struct.xa_node* nocapture noundef %node, i32 noundef %tag, i32 noundef %offset) unnamed_addr #9 {
entry:
  %idxprom = zext i32 %tag to i64
  %rem.i = and i32 %offset, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %offset, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.xa_node, %struct.xa_node* %node, i64 0, i32 8, i32 0, i64 %idxprom, i64 %idx.ext.i
  %neg.i = xor i64 %shl.i, -1
  %0 = load i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %neg.i
  store i64 %and.i, i64* %add.ptr.i, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @any_tag_set(%struct.xa_node* nocapture noundef readonly %node, i32 noundef %tag) unnamed_addr #13 {
entry:
  %idxprom = zext i32 %tag to i64
  %arrayidx3 = getelementptr %struct.xa_node, %struct.xa_node* %node, i64 0, i32 8, i32 0, i64 %idxprom, i64 0
  %0 = load i64, i64* %arrayidx3, align 8
  %tobool.not = icmp ne i64 %0, 0
  %retval.0 = zext i1 %tobool.not to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @shift_maxindex(i32 noundef %shift) unnamed_addr #4 {
entry:
  %sh_prom = zext i32 %shift to i64
  %shl = shl i64 64, %sh_prom
  %sub = add i64 %shl, -1
  ret i64 %sub
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @node_tag_set(%struct.xarray* nocapture noundef %root, %struct.xa_node* noundef %node, i32 noundef %offset) unnamed_addr #3 {
entry:
  %tobool.not1 = icmp eq %struct.xa_node* %node, null
  br i1 %tobool.not1, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %offset.addr.03 = phi i32 [ %conv, %if.end ], [ %offset, %entry ]
  %node.addr.02 = phi %struct.xa_node* [ %1, %if.end ], [ %node, %entry ]
  %call = call fastcc i32 @tag_get(%struct.xa_node* noundef nonnull %node.addr.02, i32 noundef 0, i32 noundef %offset.addr.03) #16
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.end6

if.end:                                           ; preds = %while.body
  call fastcc void @tag_set(%struct.xa_node* noundef nonnull %node.addr.02, i32 noundef 0, i32 noundef %offset.addr.03) #16
  %offset2 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.addr.02, i64 0, i32 1
  %0 = load i8, i8* %offset2, align 1
  %conv = zext i8 %0 to i32
  %parent = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.addr.02, i64 0, i32 4
  %1 = load %struct.xa_node*, %struct.xa_node** %parent, align 8
  %tobool.not = icmp eq %struct.xa_node* %1, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  %call3 = call fastcc i32 @root_tag_get(%struct.xarray* noundef %root, i32 noundef 0) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.end
  call fastcc void @root_tag_set(%struct.xarray* noundef %root, i32 noundef 0) #16
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then5, %while.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !39
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.9* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_fill(i64* noundef %dst) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 255, i64 noundef 8) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_node(i8* noundef %entry1) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @xa_is_internal(i8* noundef %entry1) #16
  %cmp = icmp ugt i8* %entry1, inttoptr (i64 4096 to i8*)
  %0 = and i1 %cmp, %call
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_internal(i8* noundef %entry1) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 3
  %cmp = icmp eq i64 %and, 2
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { nounwind readonly }
attributes #19 = { nounwind readnone }

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
!9 = !{i64 2151602995}
!10 = !{i64 2151596893}
!11 = !{i64 2151599686}
!12 = !{i64 2151599914}
!13 = !{i64 2151604211}
!14 = !{i64 2149204600, i64 2149204647, i64 2149204653, i64 2149204690, i64 2149204708, i64 2149205635, i64 2149205683, i64 2149205731, i64 2149205794, i64 2149205843, i64 2149204786, i64 2149204811, i64 2149204837, i64 2149204843, i64 2149204880, i64 2149204886, i64 2149204936, i64 2149204982, i64 2149205015}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2151653238}
!18 = !{i64 2151654612}
!19 = !{i64 2151655986}
!20 = !{i64 2151657360}
!21 = !{i64 2151658724}
!22 = !{i64 2151637572}
!23 = !{i64 2151648944}
!24 = !{i64 2151673961}
!25 = !{i64 2151662694}
!26 = !{i64 2151631133}
!27 = !{i64 2151675476}
!28 = !{i64 2151676812}
!29 = !{i32 0, i32 64}
!30 = !{i64 0, i64 65}
!31 = !{i64 2151694152}
!32 = !{i64 2151702689}
!33 = !{i64 2151612042}
!34 = !{i64 2151615869}
!35 = !{i64 2151589958}
!36 = !{i64 2151645239}
!37 = !{i64 2151720613}
!38 = !{i64 2151626618}
!39 = !{i64 1171953}
