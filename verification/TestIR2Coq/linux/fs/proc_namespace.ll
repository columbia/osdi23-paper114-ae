; ModuleID = 'fs/proc_namespace.c'
source_filename = "fs/proc_namespace.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.module = type opaque
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.53, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.rb_root = type { %struct.rb_node* }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { %union.anon.43, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.43 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type { %struct.ns_common, %struct.mount*, %struct.list_head, %struct.spinlock, %struct.user_namespace*, %struct.ucounts*, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.nsset = type { i32, %struct.nsproxy*, %struct.fs_struct*, %struct.cred* }
%struct.mount = type { %struct.hlist_node, %struct.mount*, %struct.dentry*, %struct.vfsmount, %union.anon.67, %struct.mnt_pcp*, %struct.list_head, %struct.list_head, %struct.list_head, i8*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mount*, %struct.mnt_namespace*, %struct.mountpoint*, %union.anon.68, %struct.list_head, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%union.anon.67 = type { %struct.callback_head }
%struct.mnt_pcp = type { i32, i32 }
%struct.mountpoint = type { %struct.hlist_node, %struct.dentry*, %struct.hlist_head, i32 }
%union.anon.68 = type { %struct.hlist_node }
%struct.ucounts = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
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
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.50, %union.anon.51, i32 }
%struct.request_queue = type opaque
%union.anon.50 = type { %struct.list_head }
%union.anon.51 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.31 }
%struct.anon.31 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.35 }
%struct.anon.35 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.52, i32, [12 x i8] }
%union.anon.52 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.54, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.54 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { i64 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.55 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.56 = type { %struct.callback_head }
%union.anon.57 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, {}*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.58, %struct.qspinlock }
%union.anon.58 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.15 }
%union.anon.15 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.60 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.60 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.proc_mounts = type { %struct.mnt_namespace*, %struct.path, i32 (%struct.seq_file*, %struct.vfsmount*)*, %struct.mount }
%struct.proc_inode = type { %struct.pid*, i32, %union.proc_op, %struct.proc_dir_entry*, %struct.ctl_table_header*, %struct.ctl_table*, %struct.hlist_node, %struct.proc_ns_operations*, %struct.inode }
%union.proc_op = type { i32 (%struct.dentry*, %struct.path*)* }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, %union.anon.69, %struct.dentry_operations*, %union.anon.70, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }
%union.anon.69 = type { %struct.proc_ops* }
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%union.anon.70 = type { %struct.seq_operations* }
%struct.ctl_table_header = type { %union.anon.71, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }

@proc_mounts_operations = dso_local local_unnamed_addr constant { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* } { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @seq_read_iter, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @mounts_poll, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @mounts_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @mounts_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* @generic_file_splice_read, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@proc_mountinfo_operations = dso_local local_unnamed_addr constant { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* } { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @seq_read_iter, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @mounts_poll, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @mountinfo_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @mounts_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* @generic_file_splice_read, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@proc_mountstats_operations = dso_local local_unnamed_addr constant { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* } { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @seq_read_iter, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @mountstats_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @mounts_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* @generic_file_splice_read, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@mounts_op = external dso_local constant %struct.seq_operations, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" \09\0A\\\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" ro\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" rw\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" 0 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c",sync\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c",dirsync\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c",mand\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c",lazytime\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c",nosuid\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c",nodev\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c",noexec\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c",noatime\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c",nodiratime\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c",relatime\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c",nosymfollow\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.16 = private unnamed_addr constant [10 x i8] c",idmapped\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"%i %i %u:%u \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c" shared:%i\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c" master:%i\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c" propagate_from:%i\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c" unbindable\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"device \00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"no device\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c" mounted on \00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"with fstype \00", align 1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(%struct.file* noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_read_iter(%struct.kiocb* noundef, %struct.iov_iter* noundef) #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @mounts_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %wait) #1 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.seq_file**
  %1 = load %struct.seq_file*, %struct.seq_file** %0, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 11
  %2 = bitcast i8** %private to %struct.proc_mounts**
  %3 = load %struct.proc_mounts*, %struct.proc_mounts** %2, align 8
  %ns1 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %3, i64 0, i32 0
  %4 = load %struct.mnt_namespace*, %struct.mnt_namespace** %ns1, align 8
  %poll = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %4, i64 0, i32 7
  call fastcc void @poll_wait(%struct.file* noundef %file, %struct.wait_queue_head* noundef %poll, %struct.poll_table_struct* noundef %wait) #8
  %event3 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %4, i64 0, i32 8
  %5 = load volatile i64, i64* %event3, align 8
  %conv = trunc i64 %5 to i32
  %poll_event = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 9
  %6 = load i32, i32* %poll_event, align 8
  %cmp.not = icmp eq i32 %6, %conv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 %conv, i32* %poll_event, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i32 [ 75, %if.then ], [ 65, %entry ]
  ret i32 %res.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @mounts_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #1 {
entry:
  %call = call fastcc i32 @mounts_open_common(%struct.inode* noundef %inode, %struct.file* noundef %file, i32 (%struct.seq_file*, %struct.vfsmount*)* noundef nonnull @show_vfsmnt) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @mounts_release(%struct.inode* noundef %inode, %struct.file* noundef %file) #1 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.seq_file**
  %1 = load %struct.seq_file*, %struct.seq_file** %0, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 11
  %2 = bitcast i8** %private to %struct.proc_mounts**
  %3 = load %struct.proc_mounts*, %struct.proc_mounts** %2, align 8
  %root = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %3, i64 0, i32 1
  call void @path_put(%struct.path* noundef %root) #9
  %ns = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %3, i64 0, i32 0
  %4 = load %struct.mnt_namespace*, %struct.mnt_namespace** %ns, align 8
  %cursor = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %3, i64 0, i32 3
  call void @mnt_cursor_del(%struct.mnt_namespace* noundef %4, %struct.mount* noundef %cursor) #9
  %5 = load %struct.mnt_namespace*, %struct.mnt_namespace** %ns, align 8
  call void @put_mnt_ns(%struct.mnt_namespace* noundef %5) #9
  %call = call i32 @seq_release_private(%struct.inode* noundef %inode, %struct.file* noundef %file) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_splice_read(%struct.file* noundef, i64* noundef, %struct.pipe_inode_info* noundef, i64 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @mountinfo_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #1 {
entry:
  %call = call fastcc i32 @mounts_open_common(%struct.inode* noundef %inode, %struct.file* noundef %file, i32 (%struct.seq_file*, %struct.vfsmount*)* noundef nonnull @show_mountinfo) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @mountstats_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #1 {
entry:
  %call = call fastcc i32 @mounts_open_common(%struct.inode* noundef %inode, %struct.file* noundef %file, i32 (%struct.seq_file*, %struct.vfsmount*)* noundef nonnull @show_vfsstat) #8
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @poll_wait(%struct.file* noundef %filp, %struct.wait_queue_head* noundef %wait_address, %struct.poll_table_struct* noundef %p) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.poll_table_struct* %p, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %p, i64 0, i32 0
  %0 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %0, null
  %tobool3 = icmp ne %struct.wait_queue_head* %wait_address, null
  %or.cond = and i1 %tobool3, %tobool1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void %0(%struct.file* noundef %filp, %struct.wait_queue_head* noundef nonnull %wait_address, %struct.poll_table_struct* noundef nonnull %p) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mounts_open_common(%struct.inode* noundef %inode, %struct.file* noundef %file, i32 (%struct.seq_file*, %struct.vfsmount*)* noundef %show) unnamed_addr #1 {
entry:
  %root = alloca %struct.path, align 8
  %call = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %inode) #8
  %0 = bitcast %struct.path* %root to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @task_lock(%struct.task_struct* noundef nonnull %call) #8
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 86
  %1 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %tobool1.not = icmp eq %struct.nsproxy* %1, null
  br i1 %tobool1.not, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %1, i64 0, i32 3
  %2 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %tobool2.not = icmp eq %struct.mnt_namespace* %2, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call) #8
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #8
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call fastcc void @get_mnt_ns(%struct.mnt_namespace* noundef nonnull %2) #8
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 83
  %3 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %tobool6.not = icmp eq %struct.fs_struct* %3, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call) #8
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #8
  br label %err_put_ns

if.end8:                                          ; preds = %if.end4
  call fastcc void @get_fs_root(%struct.fs_struct* noundef nonnull %3, %struct.path* noundef nonnull %root) #8
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call) #8
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #8
  %call10 = call i32 @seq_open_private(%struct.file* noundef %file, %struct.seq_operations* noundef nonnull @mounts_op, i32 noundef 344) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %err_put_path

if.end13:                                         ; preds = %if.end8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %4 = bitcast i8** %private_data to %struct.seq_file**
  %5 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %event = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %2, i64 0, i32 8
  %6 = load i64, i64* %event, align 8
  %conv = trunc i64 %6 to i32
  %poll_event = getelementptr inbounds %struct.seq_file, %struct.seq_file* %5, i64 0, i32 9
  store i32 %conv, i32* %poll_event, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %5, i64 0, i32 11
  %7 = bitcast i8** %private to %struct.proc_mounts**
  %8 = load %struct.proc_mounts*, %struct.proc_mounts** %7, align 8
  %ns14 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %8, i64 0, i32 0
  store %struct.mnt_namespace* %2, %struct.mnt_namespace** %ns14, align 8
  %root15 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %8, i64 0, i32 1
  %9 = bitcast %struct.path* %root15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %9, i8* noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %show16 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %8, i64 0, i32 2
  store i32 (%struct.seq_file*, %struct.vfsmount*)* %show, i32 (%struct.seq_file*, %struct.vfsmount*)** %show16, align 8
  %mnt_list = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %8, i64 0, i32 3, i32 10
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %mnt_list) #8
  %mnt_flags = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %8, i64 0, i32 3, i32 3, i32 2
  store i32 268435456, i32* %mnt_flags, align 8
  br label %cleanup

err_put_path:                                     ; preds = %if.end8
  call void @path_put(%struct.path* noundef nonnull %root) #9
  br label %err_put_ns

err_put_ns:                                       ; preds = %err_put_path, %if.then7
  %ret.0 = phi i32 [ %call10, %err_put_path ], [ -2, %if.then7 ]
  call void @put_mnt_ns(%struct.mnt_namespace* noundef nonnull %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %err_put_ns, %entry, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %ret.0, %err_put_ns ], [ -22, %if.then3 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @show_vfsmnt(%struct.seq_file* noundef %m, %struct.vfsmount* noundef %mnt) #1 {
entry:
  %mnt_path = alloca %struct.path, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.proc_mounts**
  %1 = load %struct.proc_mounts*, %struct.proc_mounts** %0, align 8
  %2 = bitcast %struct.path* %mnt_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #10
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %mnt_path, i64 0, i32 0
  store %struct.vfsmount* %mnt, %struct.vfsmount** %mnt1, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %mnt_path, i64 0, i32 1
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 0
  %3 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  store %struct.dentry* %3, %struct.dentry** %dentry, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i64 0, i32 9
  %4 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 6
  %5 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %show_devname = getelementptr inbounds %struct.super_operations, %struct.super_operations* %5, i64 0, i32 17
  %6 = load i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)** %show_devname, align 8
  %tobool.not = icmp eq i32 (%struct.seq_file*, %struct.dentry*)* %6, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call6 = call i32 %6(%struct.seq_file* noundef %m, %struct.dentry* noundef %3) #9
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end11, label %out

if.else:                                          ; preds = %entry
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %mnt) #8
  %mnt_devname = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 9
  %7 = load i8*, i8** %mnt_devname, align 8
  %tobool9.not = icmp eq i8* %7, null
  %spec.select = select i1 %tobool9.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %7
  call fastcc void @mangle(%struct.seq_file* noundef %m, i8* noundef %spec.select) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then, %if.else
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 32) #9
  %root = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %1, i64 0, i32 1
  %call12 = call i32 @seq_path_root(%struct.seq_file* noundef %m, %struct.path* noundef nonnull %mnt_path, %struct.path* noundef %root, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #9
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %out

if.end15:                                         ; preds = %if.end11
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 32) #9
  call fastcc void @show_type(%struct.seq_file* noundef %m, %struct.super_block* noundef %4) #8
  %call16 = call i1 @__mnt_is_readonly(%struct.vfsmount* noundef %mnt) #9
  %cond17 = select i1 %call16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef %cond17) #9
  call fastcc void @show_sb_opts(%struct.seq_file* noundef %m, %struct.super_block* noundef %4) #8
  call fastcc void @show_mnt_opts(%struct.seq_file* noundef %m, %struct.vfsmount* noundef %mnt) #8
  %8 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %show_options = getelementptr inbounds %struct.super_operations, %struct.super_operations* %8, i64 0, i32 16
  %9 = load i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)** %show_options, align 8
  %tobool23.not = icmp eq i32 (%struct.seq_file*, %struct.dentry*)* %9, null
  br i1 %tobool23.not, label %if.end29, label %if.then24

if.then24:                                        ; preds = %if.end15
  %10 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call28 = call i32 %9(%struct.seq_file* noundef %m, %struct.dentry* noundef %10) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end15
  %err.0 = phi i32 [ %call28, %if.then24 ], [ 0, %if.end15 ]
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #9
  br label %out

out:                                              ; preds = %if.end11, %if.then, %if.end29
  %err.1 = phi i32 [ %call6, %if.then ], [ %call12, %if.end11 ], [ %err.0, %if.end29 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #10
  ret i32 %err.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %inode) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.pid* @proc_pid(%struct.inode* noundef %inode) #8
  %call1 = call %struct.task_struct* @get_pid_task(%struct.pid* noundef %call, i32 noundef 0) #9
  ret %struct.task_struct* %call1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #1 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #8
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_mnt_ns(%struct.mnt_namespace* noundef %ns) unnamed_addr #1 {
entry:
  %count = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %count) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_fs_root(%struct.fs_struct* noundef %fs, %struct.path* noundef %root) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  %root1 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 5
  %0 = bitcast %struct.path* %root to i8*
  %1 = bitcast %struct.path* %root1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @path_get(%struct.path* noundef %root) #9
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open_private(%struct.file* noundef, %struct.seq_operations* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mnt_ns(%struct.mnt_namespace* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @get_pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @proc_pid(%struct.inode* noundef readonly %inode) unnamed_addr #6 {
entry:
  %call = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #8
  %pid = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call, i64 0, i32 0
  %0 = load %struct.pid*, %struct.pid** %pid, align 8
  ret %struct.pid* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef readnone %inode) unnamed_addr #7 {
entry:
  %add.ptr = getelementptr %struct.inode, %struct.inode* %inode, i64 -1, i32 38, i32 11
  %0 = bitcast i32* %add.ptr to %struct.proc_inode*
  ret %struct.proc_inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #9
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #0

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !10
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #8
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #0

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
  call void asm sideeffect "dmb ishld", "~{memory}"() #10, !srcloc !13
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !9

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #10, !srcloc !14
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
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
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !15

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !9

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
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #10, !srcloc !16
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(%struct.path* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef readnone %mnt) unnamed_addr #7 {
entry:
  %add.ptr2 = getelementptr %struct.vfsmount, %struct.vfsmount* %mnt, i64 -1
  %0 = bitcast %struct.vfsmount* %add.ptr2 to %struct.mount*
  ret %struct.mount* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mangle(%struct.seq_file* noundef %m, i8* noundef %s) unnamed_addr #1 {
entry:
  call void @seq_escape(%struct.seq_file* noundef %m, i8* noundef %s, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(%struct.seq_file* noundef, i8 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_path_root(%struct.seq_file* noundef, %struct.path* noundef, %struct.path* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_type(%struct.seq_file* noundef %m, %struct.super_block* nocapture noundef readonly %sb) unnamed_addr #1 {
entry:
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 5
  %0 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %0, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call fastcc void @mangle(%struct.seq_file* noundef %m, i8* noundef %1) #8
  %s_subtype = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 36
  %2 = load i8*, i8** %s_subtype, align 32
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 46) #9
  %3 = load i8*, i8** %s_subtype, align 32
  call fastcc void @mangle(%struct.seq_file* noundef %m, i8* noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(%struct.seq_file* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__mnt_is_readonly(%struct.vfsmount* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_sb_opts(%struct.seq_file* noundef %m, %struct.super_block* nocapture noundef readonly %sb) unnamed_addr #1 {
entry:
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %0 = load i64, i64* %s_flags, align 16
  %and = and i64 %0, 16
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %entry
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #9
  %.pre = load i64, i64* %s_flags, align 16
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %1 = phi i64 [ %0, %entry ], [ %.pre, %if.then ]
  %and.1 = and i64 %1, 128
  %tobool2.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool2.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #9
  %.pre2 = load i64, i64* %s_flags, align 16
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %2 = phi i64 [ %.pre2, %if.then.1 ], [ %1, %for.inc ]
  %and.2 = and i64 %2, 64
  %tobool2.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool2.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #9
  %.pre3 = load i64, i64* %s_flags, align 16
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %3 = phi i64 [ %.pre3, %if.then.2 ], [ %2, %for.inc.1 ]
  %and.3 = and i64 %3, 33554432
  %tobool2.not.3 = icmp eq i64 %and.3, 0
  br i1 %tobool2.not.3, label %for.inc.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_mnt_opts(%struct.seq_file* noundef %m, %struct.vfsmount* noundef %mnt) unnamed_addr #1 {
entry:
  %mnt_flags = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, 1
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %entry
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #9
  %.pre = load i32, i32* %mnt_flags, align 8
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %1 = phi i32 [ %0, %entry ], [ %.pre, %if.then ]
  %and.1 = and i32 %1, 2
  %tobool2.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool2.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #9
  %.pre12 = load i32, i32* %mnt_flags, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %2 = phi i32 [ %.pre12, %if.then.1 ], [ %1, %for.inc ]
  %and.2 = and i32 %2, 4
  %tobool2.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool2.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #9
  %.pre13 = load i32, i32* %mnt_flags, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %3 = phi i32 [ %.pre13, %if.then.2 ], [ %2, %for.inc.1 ]
  %and.3 = and i32 %3, 8
  %tobool2.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool2.not.3, label %for.inc.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #9
  %.pre14 = load i32, i32* %mnt_flags, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %4 = phi i32 [ %.pre14, %if.then.3 ], [ %3, %for.inc.2 ]
  %and.4 = and i32 %4, 16
  %tobool2.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool2.not.4, label %for.inc.4, label %if.then.4

if.then.4:                                        ; preds = %for.inc.3
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0)) #9
  %.pre15 = load i32, i32* %mnt_flags, align 8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3
  %5 = phi i32 [ %.pre15, %if.then.4 ], [ %4, %for.inc.3 ]
  %and.5 = and i32 %5, 32
  %tobool2.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool2.not.5, label %for.inc.5, label %if.then.5

if.then.5:                                        ; preds = %for.inc.4
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #9
  %.pre16 = load i32, i32* %mnt_flags, align 8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4
  %6 = phi i32 [ %.pre16, %if.then.5 ], [ %5, %for.inc.4 ]
  %and.6 = and i32 %6, 128
  %tobool2.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool2.not.6, label %for.inc.6, label %if.then.6

if.then.6:                                        ; preds = %for.inc.5
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #9
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) #8
  %cmp.not = icmp eq %struct.user_namespace* %call, @init_user_ns
  br i1 %cmp.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %for.inc.6
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.inc.6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape(%struct.seq_file* noundef, i8* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #1 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #10, !srcloc !17
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_cursor_del(%struct.mnt_namespace* noundef, %struct.mount* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(%struct.inode* noundef, %struct.file* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @show_mountinfo(%struct.seq_file* noundef %m, %struct.vfsmount* noundef %mnt) #1 {
entry:
  %mnt_path = alloca %struct.path, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.proc_mounts**
  %1 = load %struct.proc_mounts*, %struct.proc_mounts** %0, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %mnt) #8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 1
  %2 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %3 = bitcast %struct.path* %mnt_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #10
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %mnt_path, i64 0, i32 0
  store %struct.vfsmount* %mnt, %struct.vfsmount** %mnt1, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %mnt_path, i64 0, i32 1
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 0
  %4 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  store %struct.dentry* %4, %struct.dentry** %dentry, align 8
  %mnt_id = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 20
  %5 = load i32, i32* %mnt_id, align 8
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 1
  %6 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %mnt_id2 = getelementptr inbounds %struct.mount, %struct.mount* %6, i64 0, i32 20
  %7 = load i32, i32* %mnt_id2, align 8
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 1
  %8 = load i32, i32* %s_dev, align 16
  %shr = lshr i32 %8, 20
  %and = and i32 %8, 1048575
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 noundef %5, i32 noundef %7, i32 noundef %shr, i32 noundef %and) #9
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 6
  %9 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %show_path = getelementptr inbounds %struct.super_operations, %struct.super_operations* %9, i64 0, i32 18
  %10 = load i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)** %show_path, align 8
  %tobool.not = icmp eq i32 (%struct.seq_file*, %struct.dentry*)* %10, null
  %11 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call7 = call i32 %10(%struct.seq_file* noundef %m, %struct.dentry* noundef %11) #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end12, label %out

if.else:                                          ; preds = %entry
  %call11 = call i32 @seq_dentry(%struct.seq_file* noundef %m, %struct.dentry* noundef %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.else
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 32) #9
  %root = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %1, i64 0, i32 1
  %call13 = call i32 @seq_path_root(%struct.seq_file* noundef %m, %struct.path* noundef nonnull %mnt_path, %struct.path* noundef %root, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #9
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %out

if.end16:                                         ; preds = %if.end12
  %mnt_flags = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 2
  %12 = load i32, i32* %mnt_flags, align 8
  %and17 = and i32 %12, 64
  %tobool18.not = icmp eq i32 %and17, 0
  %cond = select i1 %tobool18.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef %cond) #9
  call fastcc void @show_mnt_opts(%struct.seq_file* noundef %m, %struct.vfsmount* noundef %mnt) #8
  %mnt_flags20 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3, i32 2
  %13 = load i32, i32* %mnt_flags20, align 8
  %and21 = and i32 %13, 4096
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end16
  %mnt_group_id = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 21
  %14 = load i32, i32* %mnt_group_id, align 4
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 noundef %14) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end16
  %mnt_master = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 15
  %15 = load %struct.mount*, %struct.mount** %mnt_master, align 8
  %tobool25.not = icmp eq %struct.mount* %15, null
  br i1 %tobool25.not, label %if.end34, label %if.then26

if.then26:                                        ; preds = %if.end24
  %mnt_group_id28 = getelementptr inbounds %struct.mount, %struct.mount* %15, i64 0, i32 21
  %16 = load i32, i32* %mnt_group_id28, align 4
  %call30 = call i32 @get_dominating_id(%struct.mount* noundef %call, %struct.path* noundef %root) #9
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 noundef %16) #9
  %tobool31.not = icmp eq i32 %call30, 0
  %cmp.not = icmp eq i32 %call30, %16
  %or.cond = select i1 %tobool31.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.then26
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call30) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %if.then32, %if.end24
  %17 = load i32, i32* %mnt_flags20, align 8
  %and37 = and i32 %17, 8192
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end34
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end34
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #9
  call fastcc void @show_type(%struct.seq_file* noundef %m, %struct.super_block* noundef %2) #8
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 32) #9
  %18 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %show_devname = getelementptr inbounds %struct.super_operations, %struct.super_operations* %18, i64 0, i32 17
  %19 = load i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)** %show_devname, align 8
  %tobool42.not = icmp eq i32 (%struct.seq_file*, %struct.dentry*)* %19, null
  br i1 %tobool42.not, label %if.else51, label %if.then43

if.then43:                                        ; preds = %if.end40
  %20 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call47 = call i32 %19(%struct.seq_file* noundef %m, %struct.dentry* noundef %20) #9
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end55, label %out

if.else51:                                        ; preds = %if.end40
  %mnt_devname = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 9
  %21 = load i8*, i8** %mnt_devname, align 8
  %tobool52.not = icmp eq i8* %21, null
  %spec.select = select i1 %tobool52.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %21
  call fastcc void @mangle(%struct.seq_file* noundef %m, i8* noundef %spec.select) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then43, %if.else51
  %call56 = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %2) #8
  %cond57 = select i1 %call56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef %cond57) #9
  call fastcc void @show_sb_opts(%struct.seq_file* noundef %m, %struct.super_block* noundef %2) #8
  %22 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %show_options = getelementptr inbounds %struct.super_operations, %struct.super_operations* %22, i64 0, i32 16
  %23 = load i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)** %show_options, align 8
  %tobool63.not = icmp eq i32 (%struct.seq_file*, %struct.dentry*)* %23, null
  br i1 %tobool63.not, label %if.end69, label %if.then64

if.then64:                                        ; preds = %if.end55
  %24 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call68 = call i32 %23(%struct.seq_file* noundef %m, %struct.dentry* noundef %24) #9
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.end55
  %err.0 = phi i32 [ %call68, %if.then64 ], [ 0, %if.end55 ]
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #9
  br label %out

out:                                              ; preds = %if.then43, %if.end12, %if.then, %if.end69
  %err.1 = phi i32 [ %call7, %if.then ], [ %call13, %if.end12 ], [ %call47, %if.then43 ], [ %err.0, %if.end69 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #10
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_dentry(%struct.seq_file* noundef, %struct.dentry* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_dominating_id(%struct.mount* noundef, %struct.path* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sb_rdonly(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #6 {
entry:
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %0 = load i64, i64* %s_flags, align 16
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @show_vfsstat(%struct.seq_file* noundef %m, %struct.vfsmount* noundef %mnt) #1 {
entry:
  %mnt_path = alloca %struct.path, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.proc_mounts**
  %1 = load %struct.proc_mounts*, %struct.proc_mounts** %0, align 8
  %2 = bitcast %struct.path* %mnt_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #10
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %mnt_path, i64 0, i32 0
  store %struct.vfsmount* %mnt, %struct.vfsmount** %mnt1, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %mnt_path, i64 0, i32 1
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 0
  %3 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  store %struct.dentry* %3, %struct.dentry** %dentry, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i64 0, i32 9
  %4 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 6
  %5 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %show_devname = getelementptr inbounds %struct.super_operations, %struct.super_operations* %5, i64 0, i32 17
  %6 = load i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)** %show_devname, align 8
  %tobool.not = icmp eq i32 (%struct.seq_file*, %struct.dentry*)* %6, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0)) #9
  %7 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %show_devname4 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %7, i64 0, i32 17
  %8 = load i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)** %show_devname4, align 8
  %call6 = call i32 %8(%struct.seq_file* noundef %m, %struct.dentry* noundef %3) #9
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end14, label %out

if.else:                                          ; preds = %entry
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %mnt) #8
  %mnt_devname = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 9
  %9 = load i8*, i8** %mnt_devname, align 8
  %tobool9.not = icmp eq i8* %9, null
  br i1 %tobool9.not, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0)) #9
  %10 = load i8*, i8** %mnt_devname, align 8
  call fastcc void @mangle(%struct.seq_file* noundef %m, i8* noundef %10) #8
  br label %if.end14

if.else12:                                        ; preds = %if.else
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.else12, %if.then
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0)) #9
  %root = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %1, i64 0, i32 1
  %call15 = call i32 @seq_path_root(%struct.seq_file* noundef %m, %struct.path* noundef nonnull %mnt_path, %struct.path* noundef %root, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #9
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %out

if.end18:                                         ; preds = %if.end14
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 32) #9
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0)) #9
  call fastcc void @show_type(%struct.seq_file* noundef %m, %struct.super_block* noundef %4) #8
  %11 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %show_stats = getelementptr inbounds %struct.super_operations, %struct.super_operations* %11, i64 0, i32 19
  %12 = load i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)** %show_stats, align 8
  %tobool20.not = icmp eq i32 (%struct.seq_file*, %struct.dentry*)* %12, null
  br i1 %tobool20.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 32) #9
  %13 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %show_stats23 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %13, i64 0, i32 19
  %14 = load i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)** %show_stats23, align 8
  %15 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call25 = call i32 %14(%struct.seq_file* noundef %m, %struct.dentry* noundef %15) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end18
  %err.0 = phi i32 [ %call25, %if.then21 ], [ 0, %if.end18 ]
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #9
  br label %out

out:                                              ; preds = %if.end14, %if.then, %if.end26
  %err.1 = phi i32 [ %call6, %if.then ], [ %call15, %if.end14 ], [ %err.0, %if.end26 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #10
  ret i32 %err.1
}

attributes #0 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }

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
!8 = !{i64 2149367652}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2147887124, i64 2147887157, i64 2147887210, i64 2147887269, i64 2147887303, i64 2147887358, i64 2147887387, i64 2147887407}
!11 = !{i64 2149374933}
!12 = !{i64 2149167163}
!13 = !{i64 2149849184}
!14 = !{i64 2147809008, i64 2147809682, i64 2147809712, i64 2147809744, i64 2147809778, i64 2147809814, i64 2147809839}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2147797226, i64 2147797890, i64 2147797920, i64 2147797952, i64 2147797986, i64 2147798021, i64 2147798046}
!17 = !{i64 2151770827}
