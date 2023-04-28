; ModuleID = 'kernel/user.c'
source_filename = "kernel/user.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_user__204_251_uid_cache_init4:\09\09\09"
module asm ".long\09uid_cache_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { %struct.anon, [48 x i8] }
%struct.anon = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.27, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.2 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.3, [0 x i64] }
%struct.anon.3 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.4, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.4 = type { %struct.rb_node, i64 }
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
%struct.file = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.9 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
%struct.signal_struct = type opaque
%struct.sighand_struct = type opaque
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.kernel_siginfo = type { %struct.anon.14 }
%struct.anon.14 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.18 }
%struct.anon.18 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.26, i32, [12 x i8] }
%union.anon.26 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.27 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.28, %union.anon.42, %struct.atomic_t, [8 x i8] }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.42 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.43, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.43 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.nsset = type { i32, %struct.nsproxy*, %struct.fs_struct*, %struct.cred* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.44, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.kmem_cache = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.lock_class_key = type {}

@init_user_ns = dso_local local_unnamed_addr global { { i32, [4 x i8], { [5 x %struct.uid_gid_extent], [4 x i8] } }, { i32, [4 x i8], { [5 x %struct.uid_gid_extent], [4 x i8] } }, { i32, [4 x i8], { [5 x %struct.uid_gid_extent], [4 x i8] } }, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] } { { i32, [4 x i8], { [5 x %struct.uid_gid_extent], [4 x i8] } } { i32 1, [4 x i8] undef, { [5 x %struct.uid_gid_extent], [4 x i8] } { [5 x %struct.uid_gid_extent] [%struct.uid_gid_extent { i32 0, i32 0, i32 -1 }, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer], [4 x i8] undef } }, { i32, [4 x i8], { [5 x %struct.uid_gid_extent], [4 x i8] } } { i32 1, [4 x i8] undef, { [5 x %struct.uid_gid_extent], [4 x i8] } { [5 x %struct.uid_gid_extent] [%struct.uid_gid_extent { i32 0, i32 0, i32 -1 }, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer], [4 x i8] undef } }, { i32, [4 x i8], { [5 x %struct.uid_gid_extent], [4 x i8] } } { i32 1, [4 x i8] undef, { [5 x %struct.uid_gid_extent], [4 x i8] } { [5 x %struct.uid_gid_extent] [%struct.uid_gid_extent { i32 0, i32 0, i32 -1 }, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer], [4 x i8] undef } }, %struct.user_namespace* null, i32 0, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.ns_common { %struct.atomic64_t zeroinitializer, %struct.proc_ns_operations* null, i32 -268435459, %struct.refcount_struct { %struct.atomic_t { i32 3 } } }, i64 1, i8 0, %struct.work_struct zeroinitializer, %struct.ctl_table_set zeroinitializer, %struct.ctl_table_header* null, %struct.ucounts* null, [12 x i64] zeroinitializer }, align 8
@root_user = dso_local global %struct.user_struct { %struct.refcount_struct { %struct.atomic_t { i32 1 } }, %struct.percpu_counter zeroinitializer, i64 0, %struct.atomic64_t zeroinitializer, %struct.hlist_node zeroinitializer, %struct.kuid_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.ratelimit_state zeroinitializer }, align 8
@uidhash_lock = internal global %struct.spinlock zeroinitializer, align 4
@uidhash_table = internal global [128 x %struct.hlist_head] zeroinitializer, align 8
@uid_cachep = internal unnamed_addr global %struct.kmem_cache* null, align 8
@__UNIQUE_ID___addressable_uid_cache_init205 = internal global i8* bitcast (i32 ()* @uid_cache_init to i8*), section ".discard.addressable", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@user_epoll_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [10 x i8] c"uid_cache\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"root_user epoll percpu counter alloc failed\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_uid_cache_init205 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.user_struct* @find_user(i64 %uid.coerce) local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #10
  %coerce.val.ii6 = and i64 %uid.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #10
  %shr = lshr i32 %call7, 7
  %add = add i32 %shr, %call7
  %and = and i32 %add, 127
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr [128 x %struct.hlist_head], [128 x %struct.hlist_head]* @uidhash_table, i64 0, i64 %idx.ext
  %call13 = call fastcc %struct.user_struct* @uid_hash_find(i64 %coerce.val.ii6, %struct.hlist_head* noundef %add.ptr) #10
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #11
  ret %struct.user_struct* %call13
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !7
  call fastcc void @do_raw_spin_lock_flags() #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_struct* @uid_hash_find(i64 %uid.coerce, %struct.hlist_head* nocapture noundef readonly %hashent) unnamed_addr #0 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %hashent, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr34 = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -3
  %tobool2.not3942 = icmp eq %struct.hlist_node* %add.ptr34, null
  %tobool2.not39 = or i1 %tobool.not, %tobool2.not3942
  br i1 %tobool2.not39, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %1 = bitcast %struct.hlist_node* %add.ptr34 to %struct.user_struct*
  %coerce.val.ii7 = and i64 %uid.coerce, 4294967295
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %user.040 = phi %struct.user_struct* [ %1, %for.body.lr.ph ], [ %spec.select36, %for.inc ]
  %coerce.dive4 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %user.040, i64 0, i32 5, i32 0
  %2 = load i32, i32* %coerce.dive4, align 8
  %coerce.val.ii5 = zext i32 %2 to i64
  %call = call fastcc i1 @uid_eq(i64 %coerce.val.ii5, i64 %coerce.val.ii7) #10
  br i1 %call, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %__count = getelementptr inbounds %struct.user_struct, %struct.user_struct* %user.040, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %__count) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.user_struct, %struct.user_struct* %user.040, i64 0, i32 4, i32 0
  %3 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool10.not = icmp eq %struct.hlist_node* %3, null
  %add.ptr1733 = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -3
  %4 = bitcast %struct.hlist_node* %add.ptr1733 to %struct.user_struct*
  %spec.select36 = select i1 %tobool10.not, %struct.user_struct* null, %struct.user_struct* %4
  %tobool2.not = icmp eq %struct.user_struct* %spec.select36, null
  br i1 %tobool2.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %user.038 = phi %struct.user_struct* [ %user.040, %if.then ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.user_struct* %user.038
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_uid(%struct.user_struct* noundef %up) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %flags, align 8, !annotation !8
  %tobool.not = icmp eq %struct.user_struct* %up, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %__count = getelementptr inbounds %struct.user_struct, %struct.user_struct* %up, i64 0, i32 0
  %call = call i1 @refcount_dec_and_lock_irqsave(%struct.refcount_struct* noundef %__count, %struct.spinlock* noundef nonnull @uidhash_lock, i64* noundef nonnull %flags) #11
  br i1 %call, label %if.then1, label %cleanup

if.then1:                                         ; preds = %if.end
  %1 = load i64, i64* %flags, align 8
  call fastcc void @free_user(%struct.user_struct* noundef nonnull %up, i64 noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then1, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @refcount_dec_and_lock_irqsave(%struct.refcount_struct* noundef, %struct.spinlock* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_user(%struct.user_struct* noundef %up, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @uid_hash_remove(%struct.user_struct* noundef %up) #10
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) #11
  call fastcc void @user_epoll_free(%struct.user_struct* noundef %up) #10
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @uid_cachep, align 8
  %1 = bitcast %struct.user_struct* %up to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.user_struct* @alloc_uid(i64 %uid.coerce) local_unnamed_addr #0 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #10
  %shr = lshr i32 %call, 7
  %add = add i32 %shr, %call
  %and = and i32 %add, 127
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr [128 x %struct.hlist_head], [128 x %struct.hlist_head]* @uidhash_table, i64 0, i64 %idx.ext
  call fastcc void @__raw_spin_lock_irq() #11
  %call8 = call fastcc %struct.user_struct* @uid_hash_find(i64 %coerce.val.ii2, %struct.hlist_head* noundef %add.ptr) #10
  call fastcc void @__raw_spin_unlock_irq() #11
  %tobool.not = icmp eq %struct.user_struct* %call8, null
  br i1 %tobool.not, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @uid_cachep, align 8
  %call9 = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %0) #10
  %1 = bitcast i8* %call9 to %struct.user_struct*
  %tobool10.not = icmp eq i8* %call9, null
  br i1 %tobool10.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %uid.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call9, i64 64
  %2 = bitcast i8* %uid.sroa.0.0..sroa_idx to i32*
  store i32 %coerce.val.ii, i32* %2, align 8
  %__count = bitcast i8* %call9 to %struct.refcount_struct*
  call fastcc void @refcount_set(%struct.refcount_struct* noundef nonnull %__count) #10
  %call13 = call fastcc i32 @user_epoll_alloc(%struct.user_struct* noundef nonnull %1) #10
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @uid_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %3, i8* noundef nonnull %call9) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %ratelimit = getelementptr inbounds i8, i8* %call9, i64 80
  %4 = bitcast i8* %ratelimit to %struct.ratelimit_state*
  call fastcc void @ratelimit_state_init(%struct.ratelimit_state* noundef %4) #10
  call fastcc void @ratelimit_set_flags(%struct.ratelimit_state* noundef %4) #10
  call fastcc void @__raw_spin_lock_irq() #11
  %call20 = call fastcc %struct.user_struct* @uid_hash_find(i64 %coerce.val.ii2, %struct.hlist_head* noundef %add.ptr) #10
  %tobool21.not = icmp eq %struct.user_struct* %call20, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end16
  call fastcc void @user_epoll_free(%struct.user_struct* noundef nonnull %1) #10
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** @uid_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %5, i8* noundef nonnull %call9) #11
  br label %if.end23

if.else:                                          ; preds = %if.end16
  call fastcc void @uid_hash_insert(%struct.user_struct* noundef nonnull %1, %struct.hlist_head* noundef %add.ptr) #10
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then22
  %up.0 = phi %struct.user_struct* [ %call20, %if.then22 ], [ %1, %if.else ]
  call fastcc void @__raw_spin_unlock_irq() #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end23, %if.then, %if.then15
  %retval.0 = phi %struct.user_struct* [ null, %if.then15 ], [ null, %if.then ], [ %call8, %entry ], [ %up.0, %if.end23 ]
  ret %struct.user_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #0 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 3520) #11
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @user_epoll_alloc(%struct.user_struct* noundef %up) unnamed_addr #0 {
entry:
  %epoll_watches = getelementptr inbounds %struct.user_struct, %struct.user_struct* %up, i64 0, i32 1
  %call = call i32 @__percpu_counter_init(%struct.percpu_counter* noundef %epoll_watches, i64 noundef 0, i32 noundef 3264, %struct.lock_class_key* noundef nonnull @user_epoll_alloc.__key) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ratelimit_state_init(%struct.ratelimit_state* noundef %rs) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ratelimit_state* %rs to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 40) #11
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %interval1 = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 1
  store i32 250, i32* %interval1, align 4
  %burst2 = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 2
  store i32 100, i32* %burst2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @ratelimit_set_flags(%struct.ratelimit_state* nocapture noundef writeonly %rs) unnamed_addr #5 {
entry:
  %flags1 = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 6
  store i64 1, i64* %flags1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @user_epoll_free(%struct.user_struct* noundef %up) unnamed_addr #0 {
entry:
  %epoll_watches = getelementptr inbounds %struct.user_struct, %struct.user_struct* %up, i64 0, i32 1
  call void @percpu_counter_destroy(%struct.percpu_counter* noundef %epoll_watches) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @uid_hash_insert(%struct.user_struct* noundef %up, %struct.hlist_head* noundef %hashent) unnamed_addr #4 {
entry:
  %uidhash_node = getelementptr inbounds %struct.user_struct, %struct.user_struct* %up, i64 0, i32 4
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %uidhash_node, %struct.hlist_head* noundef %hashent) #10
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @uid_cache_init() #6 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 120, i32 noundef 0, i32 noundef 270336, void (i8*)* noundef null) #11
  store %struct.kmem_cache* %call, %struct.kmem_cache** @uid_cachep, align 8
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %first = getelementptr [128 x %struct.hlist_head], [128 x %struct.hlist_head]* @uidhash_table, i64 0, i64 %indvars.iv, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 128
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call1 = call fastcc i32 @user_epoll_alloc(%struct.user_struct* noundef nonnull @root_user) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)) #13
  unreachable

if.end:                                           ; preds = %for.end
  call fastcc void @__raw_spin_lock_irq() #11
  %call2 = call fastcc i32 @__kuid_val(i64 0) #10
  %shr = lshr i32 %call2, 7
  %add = add i32 %shr, %call2
  %and = and i32 %add, 127
  %idx.ext8 = zext i32 %and to i64
  %add.ptr9 = getelementptr [128 x %struct.hlist_head], [128 x %struct.hlist_head]* @uidhash_table, i64 0, i64 %idx.ext8
  call fastcc void @uid_hash_insert(%struct.user_struct* noundef nonnull @root_user, %struct.hlist_head* noundef %add.ptr9) #10
  call fastcc void @__raw_spin_unlock_irq() #11
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
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
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @uidhash_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #12, !srcloc !10
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #12, !srcloc !11
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #10
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !12

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #12, !srcloc !13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #7 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @uidhash_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @uidhash_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #12, !srcloc !14
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #10
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #10
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #11
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !12

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !9

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #11
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !15
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #10
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @uidhash_lock to i8*), i8 0) #12, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #12, !srcloc !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @uid_hash_remove(%struct.user_struct* nocapture noundef %up) unnamed_addr #4 {
entry:
  %uidhash_node = getelementptr inbounds %struct.user_struct, %struct.user_struct* %up, i64 0, i32 4
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %uidhash_node) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init(%struct.hlist_node* nocapture noundef %n) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #10
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %n) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #8 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #4 {
entry:
  %next1 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %next1, align 8
  %pprev2 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  %1 = load %struct.hlist_node**, %struct.hlist_node*** %pprev2, align 8
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %1, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end, label %do.body13

do.body13:                                        ; preds = %entry
  %pprev14 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %1, %struct.hlist_node*** %pprev14, align 8
  br label %if.end

if.end:                                           ; preds = %do.body13, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  call fastcc void @do_raw_spin_lock() #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @uidhash_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #10
  call fastcc void @arch_local_irq_enable() #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #12, !srcloc !21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(%struct.percpu_counter* noundef, i64 noundef, i32 noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(%struct.percpu_counter* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #4 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %do.body22, label %do.body12

do.body12:                                        ; preds = %entry
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev, align 8
  br label %do.body22

do.body22:                                        ; preds = %entry, %do.body12
  store volatile %struct.hlist_node* %n, %struct.hlist_node** %first1, align 8
  %pprev34 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev34, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #9

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { cold nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149668787}
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148923335, i64 2148923382, i64 2148923388, i64 2148923425, i64 2148923443, i64 2148924754, i64 2148924802, i64 2148924850, i64 2148924913, i64 2148924962, i64 2148923521, i64 2148923546, i64 2148923572, i64 2148923578, i64 2148924420, i64 2148924460, i64 2148924478, i64 2148924510, i64 2148924538, i64 2148924592, i64 2148924612, i64 2148924709, i64 2148923601, i64 2148923615, i64 2148923621, i64 2148923671, i64 2148923717, i64 2148923750}
!11 = !{i64 2148925514, i64 2148925561, i64 2148925567, i64 2148925604, i64 2148925622, i64 2148926565, i64 2148926613, i64 2148926661, i64 2148926724, i64 2148926773, i64 2148925700, i64 2148925725, i64 2148925751, i64 2148925757, i64 2148925794, i64 2148925800, i64 2148925850, i64 2148925896, i64 2148925929}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2148917632, i64 2148917679, i64 2148917685, i64 2148917722, i64 2148917740, i64 2148919081, i64 2148919129, i64 2148919177, i64 2148919240, i64 2148919289, i64 2148917818, i64 2148917843, i64 2148917869, i64 2148917875, i64 2148918747, i64 2148918787, i64 2148918805, i64 2148918837, i64 2148918865, i64 2148918919, i64 2148918939, i64 2148919036, i64 2148917898, i64 2148917912, i64 2148917918, i64 2148917968, i64 2148918014, i64 2148918047}
!14 = !{i64 2147975975, i64 2147976008, i64 2147976061, i64 2147976120, i64 2147976154, i64 2147976209, i64 2147976238, i64 2147976258}
!15 = !{i64 2147886077, i64 2147886741, i64 2147886771, i64 2147886803, i64 2147886837, i64 2147886872, i64 2147886897}
!16 = !{i64 2149694630}
!17 = !{i64 2149637917}
!18 = !{i64 2148929348, i64 2148929395, i64 2148929401, i64 2148929438, i64 2148929456, i64 2148930767, i64 2148930815, i64 2148930863, i64 2148930926, i64 2148930975, i64 2148929534, i64 2148929559, i64 2148929585, i64 2148929591, i64 2148930433, i64 2148930473, i64 2148930491, i64 2148930523, i64 2148930551, i64 2148930605, i64 2148930625, i64 2148930722, i64 2148929614, i64 2148929628, i64 2148929634, i64 2148929684, i64 2148929730, i64 2148929763}
!19 = !{i64 2149673080}
!20 = !{i64 2149697933}
!21 = !{i64 2148908176, i64 2148908223, i64 2148908229, i64 2148908266, i64 2148908284, i64 2148909624, i64 2148909672, i64 2148909720, i64 2148909783, i64 2148909832, i64 2148908362, i64 2148908387, i64 2148908413, i64 2148908419, i64 2148909290, i64 2148909330, i64 2148909348, i64 2148909380, i64 2148909408, i64 2148909462, i64 2148909482, i64 2148909579, i64 2148908442, i64 2148908456, i64 2148908462, i64 2148908512, i64 2148908558, i64 2148908591}
