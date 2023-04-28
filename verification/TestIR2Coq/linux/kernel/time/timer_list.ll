; ModuleID = 'kernel/time/timer_list.c'
source_filename = "kernel/time/timer_list.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_timer_list__252_359_init_timer_list_procfs6:\09\09\09"
module asm ".long\09init_timer_list_procfs - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpumask = type { [4 x i64] }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [8 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.5, i32 }
%union.anon.5 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.51, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.8 = type { i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics, [24 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.mm_struct = type { %struct.anon.9, [0 x i64] }
%struct.anon.9 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.10, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.10 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.11, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.12, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.11 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.12 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.13, %union.anon.29, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.29 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.36, %union.anon.37, i32 }
%struct.request_queue = type opaque
%union.anon.36 = type { %struct.list_head }
%union.anon.37 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.42 }
%struct.anon.42 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.50, i32, [12 x i8] }
%union.anon.50 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.52, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.52 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { i64 }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.60, i32, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.53 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.54 = type { %struct.callback_head }
%union.anon.55 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.15 }
%union.anon.15 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.56, %struct.qspinlock }
%union.anon.56 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.tick_device = type { %struct.clock_event_device*, i32 }
%struct.clock_event_device = type { void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }
%struct.proc_dir_entry = type opaque
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.timer_list_iter = type { i32, i8, i64 }

@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__UNIQUE_ID___addressable_init_timer_list_procfs253 = internal global i8* bitcast (i32 ()* @init_timer_list_procfs to i8*), section ".discard.addressable", align 8
@.str = private unnamed_addr constant [26 x i8] c"Timer List Version: v0.9\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"HRTIMER_MAX_CLOCK_BASES: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"now at %Ld nsecs\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@hrtimer_bases = external dso_local global %struct.hrtimer_cpu_base, section ".data..percpu", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"cpu: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" clock %d:\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"  .base:       %pK\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"  .index:      %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"  .resolution: %u nsecs\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"  .get_time:   %ps\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"active timers:\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c" #%d: <%pK>, %ps\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c", S:%02x\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c" # expires at %Lu-%Lu nsecs [in %Ld to %Ld nsecs]\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"tick_broadcast_mask: %*pb\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Tick Device: mode:     %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Broadcast device\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Per CPU device: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Clock Event Device: \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"<NULL>\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c" max_delta_ns:   %llu\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c" min_delta_ns:   %llu\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c" mult:           %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c" shift:          %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c" mode:           %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c" next_event:     %Ld nsecs\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c" set_next_event: %ps\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c" shutdown:       %ps\0A\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c" periodic:       %ps\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c" oneshot:        %ps\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c" oneshot stopped: %ps\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c" resume:         %ps\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c" event_handler:  %ps\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c" retries:        %lu\0A\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Wakeup Device: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"timer_list\00", align 1
@timer_list_sops = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @timer_list_start, void (%struct.seq_file*, i8*)* @timer_list_stop, i8* (%struct.seq_file*, i8*, i64*)* @timer_list_next, i32 (%struct.seq_file*, i8*)* @timer_list_show }, align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_init_timer_list_procfs253 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sysrq_timer_list_show() local_unnamed_addr #0 {
entry:
  %call = call i64 @ktime_get() #12
  call fastcc void @timer_list_header(%struct.seq_file* noundef null, i64 noundef %call) #13
  %call218 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #14
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp19 = icmp ult i32 %call218, %0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call220 = phi i32 [ %call2, %for.body ], [ %call218, %entry ]
  call fastcc void @print_cpu(%struct.seq_file* noundef null, i32 noundef %call220, i64 noundef %call) #13
  %call2 = call i32 @cpumask_next(i32 noundef %call220, %struct.cpumask* noundef nonnull @__cpu_online_mask) #14
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  call fastcc void @timer_list_show_tickdevices_header(%struct.seq_file* noundef null) #13
  %call421 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #14
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp522 = icmp ult i32 %call421, %2
  br i1 %cmp522, label %for.body6, label %for.end8

for.body6:                                        ; preds = %for.end, %for.body6
  %call423 = phi i32 [ %call4, %for.body6 ], [ %call421, %for.end ]
  %call7 = call %struct.tick_device* @tick_get_device(i32 noundef %call423) #12
  call fastcc void @print_tickdevice(%struct.seq_file* noundef null, %struct.tick_device* noundef %call7, i32 noundef %call423) #13
  %call4 = call i32 @cpumask_next(i32 noundef %call423, %struct.cpumask* noundef nonnull @__cpu_online_mask) #14
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp5 = icmp ult i32 %call4, %3
  br i1 %cmp5, label %for.body6, label %for.end8

for.end8:                                         ; preds = %for.body6, %for.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @timer_list_header(%struct.seq_file* noundef %m, i64 noundef %now) unnamed_addr #0 {
entry:
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 8) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 noundef %now) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_cpu(%struct.seq_file* noundef %m, i32 noundef %cpu, i64 noundef %now) unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.hrtimer_cpu_base* @hrtimer_bases to i64)
  %1 = inttoptr i64 %add to %struct.hrtimer_cpu_base*
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %cpu) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 noundef 0) #13
  %add.ptr = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 0
  call fastcc void @print_base(%struct.seq_file* noundef %m, %struct.hrtimer_clock_base* noundef %add.ptr, i64 noundef %now) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 noundef 1) #13
  %add.ptr.1 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 1
  call fastcc void @print_base(%struct.seq_file* noundef %m, %struct.hrtimer_clock_base* noundef %add.ptr.1, i64 noundef %now) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2) #13
  %add.ptr.2 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 2
  call fastcc void @print_base(%struct.seq_file* noundef %m, %struct.hrtimer_clock_base* noundef %add.ptr.2, i64 noundef %now) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 noundef 3) #13
  %add.ptr.3 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 3
  call fastcc void @print_base(%struct.seq_file* noundef %m, %struct.hrtimer_clock_base* noundef %add.ptr.3, i64 noundef %now) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 noundef 4) #13
  %add.ptr.4 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 4
  call fastcc void @print_base(%struct.seq_file* noundef %m, %struct.hrtimer_clock_base* noundef %add.ptr.4, i64 noundef %now) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #13
  %add.ptr.5 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 5
  call fastcc void @print_base(%struct.seq_file* noundef %m, %struct.hrtimer_clock_base* noundef %add.ptr.5, i64 noundef %now) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 noundef 6) #13
  %add.ptr.6 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 6
  call fastcc void @print_base(%struct.seq_file* noundef %m, %struct.hrtimer_clock_base* noundef %add.ptr.6, i64 noundef %now) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 noundef 7) #13
  %add.ptr.7 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 7
  call fastcc void @print_base(%struct.seq_file* noundef %m, %struct.hrtimer_clock_base* noundef %add.ptr.7, i64 noundef %now) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @timer_list_show_tickdevices_header(%struct.seq_file* noundef %m) unnamed_addr #0 {
entry:
  %call = call %struct.tick_device* @tick_get_broadcast_device() #12
  call fastcc void @print_tickdevice(%struct.seq_file* noundef %m, %struct.tick_device* noundef %call, i32 noundef -1) #13
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call1 = call %struct.cpumask* @tick_get_broadcast_mask() #12
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %call1, i64 0, i32 0, i64 0
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 noundef %0, i64* noundef %arraydecay) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_tickdevice(%struct.seq_file* noundef %m, %struct.tick_device* nocapture noundef readonly %td, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %evtdev = getelementptr inbounds %struct.tick_device, %struct.tick_device* %td, i64 0, i32 0
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  %mode = getelementptr inbounds %struct.tick_device, %struct.tick_device* %td, i64 0, i32 1
  %1 = load i32, i32* %mode, align 8
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 noundef %1) #13
  %cmp = icmp slt i32 %cpu, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0)) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 noundef %cpu) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0)) #13
  %tobool.not = icmp eq %struct.clock_event_device* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 21
  %2 = load i8*, i8** %name, align 8
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* noundef %2) #13
  %max_delta_ns = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 4
  %3 = load i64, i64* %max_delta_ns, align 32
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i64 noundef %3) #13
  %min_delta_ns = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 5
  %4 = load i64, i64* %min_delta_ns, align 8
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i64 noundef %4) #13
  %mult = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 6
  %5 = load i32, i32* %mult, align 16
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i32 noundef %5) #13
  %shift = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 7
  %6 = load i32, i32* %shift, align 4
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 noundef %6) #13
  %call = call fastcc i32 @clockevent_get_state(%struct.clock_event_device* noundef nonnull %0) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call) #13
  %next_event = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 3
  %7 = load i64, i64* %next_event, align 8
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i64 noundef %7) #13
  %set_next_event = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 1
  %8 = load i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)** %set_next_event, align 8
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i32 (i64, %struct.clock_event_device*)* noundef %8) #13
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 14
  %9 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %set_state_shutdown, align 32
  %tobool4.not = icmp eq i32 (%struct.clock_event_device*)* %9, null
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i32 (%struct.clock_event_device*)* noundef nonnull %9) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end2
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 11
  %10 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %set_state_periodic, align 8
  %tobool8.not = icmp eq i32 (%struct.clock_event_device*)* %10, null
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i32 (%struct.clock_event_device*)* noundef nonnull %10) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 12
  %11 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %set_state_oneshot, align 16
  %tobool12.not = icmp eq i32 (%struct.clock_event_device*)* %11, null
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i32 (%struct.clock_event_device*)* noundef nonnull %11) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  %set_state_oneshot_stopped = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 13
  %12 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %set_state_oneshot_stopped, align 8
  %tobool16.not = icmp eq i32 (%struct.clock_event_device*)* %12, null
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 (%struct.clock_event_device*)* noundef nonnull %12) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  %tick_resume = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 15
  %13 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %tick_resume, align 8
  %tobool20.not = icmp eq i32 (%struct.clock_event_device*)* %13, null
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i32 (%struct.clock_event_device*)* noundef nonnull %13) #13
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  %event_handler = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 0
  %14 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %event_handler, align 64
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), void (%struct.clock_event_device*)* noundef %14) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13
  %retries = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 10
  %15 = load i64, i64* %retries, align 64
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0), i64 noundef %15) #13
  %cmp24 = icmp sgt i32 %cpu, -1
  br i1 %cmp24, label %if.then25, label %cleanup

if.then25:                                        ; preds = %if.end23
  %call26 = call %struct.clock_event_device* @tick_get_wakeup_device(i32 noundef %cpu) #12
  %tobool27.not = icmp eq %struct.clock_event_device* %call26, null
  br i1 %tobool27.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then25
  %name28 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %call26, i64 0, i32 21
  %16 = load i8*, i8** %name28, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.then25, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), %if.then25 ]
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i8* noundef %cond) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %cond.end, %if.end
  %.sink = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %cond.end ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %if.end23 ]
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef %.sink) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tick_device* @tick_get_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @init_timer_list_procfs() #4 section ".init.text" {
entry:
  %call = call %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i16 noundef 256, %struct.proc_dir_entry* noundef null, %struct.seq_operations* noundef nonnull @timer_list_sops, i32 noundef 16, i8* noundef null) #12
  %tobool.not = icmp eq %struct.proc_dir_entry* %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef %fmt, ...) unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %byval-temp2 = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call void @llvm.va_start(i8* nonnull %0)
  %tobool.not = icmp eq %struct.seq_file* %m, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @seq_vprintf(%struct.seq_file* noundef nonnull %m, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = bitcast %"struct.std::__va_list"* %byval-temp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vprintk(i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp2) #12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_vprintf(%struct.seq_file* noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_base(%struct.seq_file* noundef %m, %struct.hrtimer_clock_base* noundef %base, i64 noundef %now) unnamed_addr #0 {
entry:
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), %struct.hrtimer_clock_base* noundef %base) #13
  %index = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 1
  %0 = load i32, i32* %index, align 8
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 noundef %0) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 4000000) #13
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 6
  %1 = load i64 ()*, i64 ()** %get_time, align 16
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 ()* noundef %1) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)) #13
  %offset = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 7
  %2 = load i64, i64* %offset, align 8
  %add = add i64 %2, %now
  call fastcc void @print_active_timers(%struct.seq_file* noundef %m, %struct.hrtimer_clock_base* noundef %base, i64 noundef %add) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_active_timers(%struct.seq_file* noundef %m, %struct.hrtimer_clock_base* nocapture noundef readonly %base, i64 noundef %now) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.hrtimer, align 8
  %0 = bitcast %struct.hrtimer* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #15
  %cpu_base = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 0
  %active = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 5
  br label %next_one

next_one:                                         ; preds = %if.then, %entry
  %next.0 = phi i64 [ 0, %entry ], [ %inc22, %if.then ]
  %1 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base, align 64
  %lock = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #13
  %call2 = call fastcc %struct.timerqueue_node* @timerqueue_getnext(%struct.timerqueue_head* noundef %active) #13
  %tobool50 = icmp ne %struct.timerqueue_node* %call2, null
  %cmp351 = icmp ne i64 %next.0, 0
  %2 = select i1 %tobool50, i1 %cmp351, i1 false
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %next_one, %while.body
  %i.053 = phi i64 [ %inc, %while.body ], [ 0, %next_one ]
  %curr.052 = phi %struct.timerqueue_node* [ %call5, %while.body ], [ %call2, %next_one ]
  %call5 = call %struct.timerqueue_node* @timerqueue_iterate_next(%struct.timerqueue_node* noundef nonnull %curr.052) #12
  %inc = add nuw i64 %i.053, 1
  %tobool = icmp ne %struct.timerqueue_node* %call5, null
  %cmp3 = icmp ult i64 %inc, %next.0
  %3 = select i1 %tobool, i1 %cmp3, i1 false
  br i1 %3, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %next_one
  %curr.0.lcssa = phi %struct.timerqueue_node* [ %call2, %next_one ], [ %call5, %while.body ]
  %i.0.lcssa = phi i64 [ 0, %next_one ], [ %inc, %while.body ]
  %tobool.lcssa = phi i1 [ %tobool50, %next_one ], [ %tobool, %while.body ]
  br i1 %tobool.lcssa, label %if.then, label %do.body23

if.then:                                          ; preds = %while.end
  %4 = bitcast %struct.timerqueue_node* %curr.0.lcssa to i8*
  %5 = bitcast %struct.timerqueue_node* %curr.0.lcssa to %struct.hrtimer*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8* noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  %6 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base, align 64
  %lock18 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %6, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock18, i64 noundef %call) #13
  %conv21 = trunc i64 %i.0.lcssa to i32
  call fastcc void @print_timer(%struct.seq_file* noundef %m, %struct.hrtimer* noundef nonnull %5, %struct.hrtimer* noundef nonnull %tmp, i32 noundef %conv21, i64 noundef %now) #13
  %inc22 = add i64 %next.0, 1
  br label %next_one

do.body23:                                        ; preds = %while.end
  %7 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base, align 64
  %lock30 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %7, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock30, i64 noundef %call) #13
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #13
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #13
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.timerqueue_node* @timerqueue_getnext(%struct.timerqueue_head* nocapture noundef readonly %head) unnamed_addr #8 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.timerqueue_head, %struct.timerqueue_head* %head, i64 0, i32 0, i32 1
  %0 = bitcast %struct.rb_node** %rb_leftmost to %struct.timerqueue_node**
  %1 = load %struct.timerqueue_node*, %struct.timerqueue_node** %0, align 8
  ret %struct.timerqueue_node* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.timerqueue_node* @timerqueue_iterate_next(%struct.timerqueue_node* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #13
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #13
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_timer(%struct.seq_file* noundef %m, %struct.hrtimer* noundef %taddr, %struct.hrtimer* nocapture noundef readonly %timer, i32 noundef %idx, i64 noundef %now) unnamed_addr #0 {
entry:
  %function = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 2
  %0 = load i32 (%struct.hrtimer*)*, i32 (%struct.hrtimer*)** %function, align 8
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 noundef %idx, %struct.hrtimer* noundef %taddr, i32 (%struct.hrtimer*)* noundef %0) #13
  %state = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 4
  %1 = load i8, i8* %state, align 8
  %conv = zext i8 %1 to i32
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv) #13
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13
  %call = call fastcc i64 @hrtimer_get_softexpires(%struct.hrtimer* noundef %timer) #13
  %call2 = call fastcc i64 @hrtimer_get_expires(%struct.hrtimer* noundef %timer) #13
  %sub = sub i64 %call, %now
  %sub8 = sub i64 %call2, %now
  call void (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i64 noundef %call, i64 noundef %call2, i64 noundef %sub, i64 noundef %sub8) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #13
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #15, !srcloc !11
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #15, !srcloc !12
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #13
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !13

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #15, !srcloc !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #9 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #15, !srcloc !15
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #15, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #15, !srcloc !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_softexpires(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #8 {
entry:
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  %0 = load i64, i64* %_softexpires, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_expires(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #8 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tick_device* @tick_get_broadcast_device() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cpumask* @tick_get_broadcast_mask() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @clockevent_get_state(%struct.clock_event_device* nocapture noundef readonly %dev) unnamed_addr #8 {
entry:
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 8
  %0 = load i32, i32* %state_use_accessors, align 8
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clock_event_device* @tick_get_wakeup_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, %struct.seq_operations* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @timer_list_start(%struct.seq_file* nocapture noundef readonly %file, i64* nocapture noundef readonly %offset) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %file, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.timer_list_iter**
  %1 = load %struct.timer_list_iter*, %struct.timer_list_iter** %0, align 8
  %2 = load i64, i64* %offset, align 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @ktime_get() #12
  %now = getelementptr inbounds %struct.timer_list_iter, %struct.timer_list_iter* %1, i64 0, i32 2
  store i64 %call, i64* %now, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cpu = getelementptr inbounds %struct.timer_list_iter, %struct.timer_list_iter* %1, i64 0, i32 0
  store i32 -1, i32* %cpu, align 8
  %second_pass = getelementptr inbounds %struct.timer_list_iter, %struct.timer_list_iter* %1, i64 0, i32 1
  store i8 0, i8* %second_pass, align 4
  %3 = load i64, i64* %offset, align 8
  %call2 = call fastcc i8* @move_iter(%struct.timer_list_iter* noundef %1, i64 noundef %3) #13
  ret i8* %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @timer_list_stop(%struct.seq_file* nocapture noundef %seq, i8* nocapture noundef %v) #10 {
entry:
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal i8* @timer_list_next(%struct.seq_file* nocapture noundef readonly %file, i8* nocapture noundef readnone %v, i64* nocapture noundef %offset) #11 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %file, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.timer_list_iter**
  %1 = load %struct.timer_list_iter*, %struct.timer_list_iter** %0, align 8
  %2 = load i64, i64* %offset, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %offset, align 8
  %call = call fastcc i8* @move_iter(%struct.timer_list_iter* noundef %1, i64 noundef 1) #13
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @timer_list_show(%struct.seq_file* noundef %m, i8* nocapture noundef readonly %v) #0 {
entry:
  %cpu = bitcast i8* %v to i32*
  %0 = load i32, i32* %cpu, align 8
  %cmp = icmp eq i32 %0, -1
  %1 = getelementptr inbounds i8, i8* %v, i64 4
  %2 = load i8, i8* %1, align 4, !range !18
  %tobool.not = icmp eq i8 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.else.thread

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool.not, label %if.then, label %if.then12

if.then:                                          ; preds = %land.lhs.true
  %now = getelementptr inbounds i8, i8* %v, i64 8
  %3 = bitcast i8* %now to i64*
  %4 = load i64, i64* %3, align 8
  call fastcc void @timer_list_header(%struct.seq_file* noundef %m, i64 noundef %4) #13
  br label %if.end17

if.else.thread:                                   ; preds = %entry
  br i1 %tobool.not, label %if.then3, label %if.else13

if.then3:                                         ; preds = %if.else.thread
  %now5 = getelementptr inbounds i8, i8* %v, i64 8
  %5 = bitcast i8* %now5 to i64*
  %6 = load i64, i64* %5, align 8
  call fastcc void @print_cpu(%struct.seq_file* noundef %m, i32 noundef %0, i64 noundef %6) #13
  br label %if.end17

if.then12:                                        ; preds = %land.lhs.true
  call fastcc void @timer_list_show_tickdevices_header(%struct.seq_file* noundef %m) #13
  br label %if.end17

if.else13:                                        ; preds = %if.else.thread
  %call = call %struct.tick_device* @tick_get_device(i32 noundef %0) #12
  %7 = load i32, i32* %cpu, align 8
  call fastcc void @print_tickdevice(%struct.seq_file* noundef %m, %struct.tick_device* noundef %call, i32 noundef %7) #13
  br label %if.end17

if.end17:                                         ; preds = %if.then3, %if.else13, %if.then12, %if.then
  ret i32 0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i8* @move_iter(%struct.timer_list_iter* noundef %iter, i64 noundef %offset) unnamed_addr #11 {
entry:
  %tobool.not15 = icmp eq i64 %offset, 0
  br i1 %tobool.not15, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %cpu = getelementptr inbounds %struct.timer_list_iter, %struct.timer_list_iter* %iter, i64 0, i32 0
  %second_pass = getelementptr inbounds %struct.timer_list_iter, %struct.timer_list_iter* %iter, i64 0, i32 1
  %.pre = load i32, i32* %cpu, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %0 = phi i32 [ %.pre, %for.body.lr.ph ], [ %3, %for.inc ]
  %offset.addr.016 = phi i64 [ %offset, %for.body.lr.ph ], [ %dec, %for.inc ]
  %call = call i32 @cpumask_next(i32 noundef %0, %struct.cpumask* noundef nonnull @__cpu_online_mask) #14
  store i32 %call, i32* %cpu, align 8
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp.not = icmp ult i32 %call, %1
  br i1 %cmp.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %2 = load i8, i8* %second_pass, align 4, !range !18
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %if.then4, label %return

if.then4:                                         ; preds = %if.then
  store i32 -1, i32* %cpu, align 8
  store i8 1, i8* %second_pass, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then4
  %3 = phi i32 [ %call, %for.body ], [ -1, %if.then4 ]
  %dec = add i64 %offset.addr.016, -1
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %4 = bitcast %struct.timer_list_iter* %iter to i8*
  br label %return

return:                                           ; preds = %if.then, %for.end
  %retval.0 = phi i8* [ %4, %for.end ], [ null, %if.then ]
  ret i8* %retval.0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #15 = { nounwind }

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
!8 = !{i64 2149534030}
!9 = !{i64 2149559873}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2149099857, i64 2149099904, i64 2149099910, i64 2149099947, i64 2149099965, i64 2149101276, i64 2149101324, i64 2149101372, i64 2149101435, i64 2149101484, i64 2149100043, i64 2149100068, i64 2149100094, i64 2149100100, i64 2149100942, i64 2149100982, i64 2149101000, i64 2149101032, i64 2149101060, i64 2149101114, i64 2149101134, i64 2149101231, i64 2149100123, i64 2149100137, i64 2149100143, i64 2149100193, i64 2149100239, i64 2149100272}
!12 = !{i64 2149102036, i64 2149102083, i64 2149102089, i64 2149102126, i64 2149102144, i64 2149103087, i64 2149103135, i64 2149103183, i64 2149103246, i64 2149103295, i64 2149102222, i64 2149102247, i64 2149102273, i64 2149102279, i64 2149102316, i64 2149102322, i64 2149102372, i64 2149102418, i64 2149102451}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2149094154, i64 2149094201, i64 2149094207, i64 2149094244, i64 2149094262, i64 2149095603, i64 2149095651, i64 2149095699, i64 2149095762, i64 2149095811, i64 2149094340, i64 2149094365, i64 2149094391, i64 2149094397, i64 2149095269, i64 2149095309, i64 2149095327, i64 2149095359, i64 2149095387, i64 2149095441, i64 2149095461, i64 2149095558, i64 2149094420, i64 2149094434, i64 2149094440, i64 2149094490, i64 2149094536, i64 2149094569}
!15 = !{i64 2148041816, i64 2148041849, i64 2148041902, i64 2148041961, i64 2148041995, i64 2148042050, i64 2148042079, i64 2148042099}
!16 = !{i64 2149348542}
!17 = !{i64 2149105870, i64 2149105917, i64 2149105923, i64 2149105960, i64 2149105978, i64 2149111350, i64 2149111398, i64 2149111446, i64 2149111509, i64 2149111558, i64 2149106056, i64 2149106081, i64 2149106107, i64 2149106113, i64 2149111016, i64 2149111056, i64 2149111074, i64 2149111106, i64 2149111134, i64 2149111188, i64 2149111208, i64 2149111305, i64 2149106136, i64 2149106150, i64 2149106156, i64 2149106206, i64 2149106252, i64 2149106285}
!18 = !{i8 0, i8 2}
