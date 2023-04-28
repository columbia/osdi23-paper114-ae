; ModuleID = 'fs/kernfs/file.c'
source_filename = "fs/kernfs/file.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.3, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.10, i64, i32 }
%union.anon.10 = type { i8* }
%struct.net = type opaque
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.kqid = type { %union.anon.12, i32 }
%union.anon.12 = type { %struct.kuid_t }
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
%struct.xattr_handler = type { i8*, i8*, i32, i1 (%struct.dentry*)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* }
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
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.60, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.15 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.18, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.19, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.18 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.19 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.20, %union.anon.39, %struct.atomic_t, [8 x i8] }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.39 = type { %struct.atomic_t }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.45, %union.anon.46, i32 }
%struct.request_queue = type opaque
%union.anon.45 = type { %struct.list_head }
%union.anon.46 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.59, i32, [12 x i8] }
%union.anon.59 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.60 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.61, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.61 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.4, i8* }
%union.anon.4 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7, [48 x i8] }
%struct.anon.7 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.8, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }
%struct.lockref = type { %union.anon.70 }
%union.anon.70 = type { i64 }
%union.anon.72 = type { %struct.list_head }
%union.anon.73 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.69, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.63 = type { %struct.callback_head }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.22 }
%union.anon.22 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.23, %union.anon.24 }
%union.anon.23 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.24 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.69 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.67 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.65, %struct.qspinlock }
%union.anon.65 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.67 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.11 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.11 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type { %struct.kuid_t, %struct.kgid_t, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.simple_xattrs, %struct.atomic_t, %struct.atomic_t }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.kernfs_open_node = type { %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.list_head }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }

@kernfs_open_node_lock = internal global %struct.spinlock zeroinitializer, align 4
@kernfs_open_file_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @kernfs_open_file_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @kernfs_open_file_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@kernfs_notify.kernfs_notify_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @kernfs_notify.kernfs_notify_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @kernfs_notify.kernfs_notify_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @kernfs_notify_workfn }, align 8
@kernfs_notify_lock = internal global %struct.spinlock zeroinitializer, align 4
@kernfs_notify_list = internal global %struct.kernfs_node* bitcast (%struct.kernfs_node** @kernfs_notify_list to %struct.kernfs_node*), align 8
@kernfs_file_fops = dso_local local_unnamed_addr constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @kernfs_fop_read_iter, i64 (%struct.kiocb*, %struct.iov_iter*)* @kernfs_fop_write_iter, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @kernfs_fop_poll, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* @kernfs_fop_mmap, i64 0, i32 (%struct.inode*, %struct.file*)* @kernfs_fop_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @kernfs_fop_release, i32 (%struct.file*, i64, i64, i32)* @noop_fsync, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* @iter_file_splice_write, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* @generic_file_splice_read, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@kernfs_rwsem = external dso_local global %struct.rw_semaphore, align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@kernfs_vm_ops = internal constant %struct.vm_operations_struct { void (%struct.vm_area_struct*)* @kernfs_vma_open, void (%struct.vm_area_struct*)* null, i32 (%struct.vm_area_struct*, i64)* null, i32 (%struct.vm_area_struct*)* null, i32 (%struct.vm_area_struct*, i64, i64, i64)* null, i32 (%struct.vm_fault*)* @kernfs_vma_fault, i32 (%struct.vm_fault*, i32)* null, i32 (%struct.vm_fault*, i64, i64)* null, i64 (%struct.vm_area_struct*)* null, i32 (%struct.vm_fault*)* @kernfs_vma_page_mkwrite, i32 (%struct.vm_fault*)* null, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* @kernfs_vma_access, i8* (%struct.vm_area_struct*)* null, %struct.page* (%struct.vm_area_struct*, i64)* null }, align 8
@kernfs_fop_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&of->mutex\00", align 1
@kernfs_fop_open.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1
@kernfs_fop_open.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"&of->prealloc_mutex\00", align 1
@kernfs_seq_ops = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @kernfs_seq_start, void (%struct.seq_file*, i8*)* @kernfs_seq_stop, i8* (%struct.seq_file*, i8*, i64*)* @kernfs_seq_next, i32 (%struct.seq_file*, i8*)* @kernfs_seq_show }, align 8
@kernfs_get_open_node.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"&new_on->poll\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernfs_drain_open_files(%struct.kernfs_node* nocapture noundef %kn) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 10
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, 8320
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_open_node_lock, i64 0, i32 0, i32 0)) #6
  %open = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 7, i32 0, i32 1
  %2 = bitcast %struct.rb_root* %open to %struct.kernfs_open_node**
  %3 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %2, align 8
  %tobool1.not = icmp eq %struct.kernfs_open_node* %3, null
  br i1 %tobool1.not, label %if.then5.critedge, label %if.then2

if.then2:                                         ; preds = %if.end
  %refcnt = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %3, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %refcnt) #6
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_open_node_lock, i64 0, i32 0, i32 0)) #6
  call void @mutex_lock(%struct.mutex* noundef nonnull @kernfs_open_file_mutex) #6
  %files = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %3, i64 0, i32 3
  %4 = bitcast %struct.list_head* %files to i8**
  %.pn47 = load i8*, i8** %4, align 8
  %5 = bitcast i8* %.pn47 to %struct.list_head*
  %cmp.not50 = icmp eq %struct.list_head* %files, %5
  br i1 %cmp.not50, label %for.end, label %for.body

if.then5.critedge:                                ; preds = %if.end
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_open_node_lock, i64 0, i32 0, i32 0)) #6
  br label %cleanup

for.body:                                         ; preds = %if.then2, %if.end20
  %.pn51 = phi i8* [ %.pn, %if.end20 ], [ %.pn47, %if.then2 ]
  %of.053.in = getelementptr i8, i8* %.pn51, i64 -104
  %of.053 = bitcast i8* %of.053.in to %struct.kernfs_open_file*
  %6 = load i16, i16* %flags, align 8
  %7 = and i16 %6, 128
  %tobool12.not = icmp eq i16 %7, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %for.body
  %file = getelementptr i8, i8* %.pn51, i64 -96
  %8 = bitcast i8* %file to %struct.file**
  %9 = load %struct.file*, %struct.file** %8, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %9) #7
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 7
  %10 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  call void @unmap_mapping_range(%struct.address_space* noundef %10, i64 noundef 0, i64 noundef 0, i32 noundef 1) #6
  %.pre = load i16, i16* %flags, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.body
  %11 = phi i16 [ %.pre, %if.then13 ], [ %6, %for.body ]
  %12 = and i16 %11, 8192
  %tobool18.not = icmp eq i16 %12, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end14
  call fastcc void @kernfs_release_file(%struct.kernfs_node* noundef %kn, %struct.kernfs_open_file* noundef %of.053) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end14
  %13 = bitcast i8* %.pn51 to i8**
  %.pn = load i8*, i8** %13, align 8
  %14 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %files, %14
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end20, %if.then2
  call void @mutex_unlock(%struct.mutex* noundef nonnull @kernfs_open_file_mutex) #6
  call fastcc void @kernfs_put_open_node(%struct.kernfs_node* noundef %kn, %struct.kernfs_open_file* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5.critedge, %entry, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #2 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(%struct.address_space* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kernfs_release_file(%struct.kernfs_node* nocapture noundef readonly %kn, %struct.kernfs_open_file* noundef %of) unnamed_addr #0 {
entry:
  %released = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 10
  %bf.load = load i8, i8* %released, align 8
  %0 = and i8 %bf.load, 2
  %bf.cast.not = icmp eq i8 %0, 0
  br i1 %bf.cast.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 7
  %ops = bitcast %union.anon* %1 to %struct.kernfs_ops**
  %2 = load %struct.kernfs_ops*, %struct.kernfs_ops** %ops, align 8
  %release = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %2, i64 0, i32 1
  %3 = load void (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)** %release, align 8
  call void %3(%struct.kernfs_open_file* noundef %of) #6
  %bf.load2 = load i8, i8* %released, align 8
  %bf.set = or i8 %bf.load2, 2
  store i8 %bf.set, i8* %released, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kernfs_put_open_node(%struct.kernfs_node* nocapture noundef %kn, %struct.kernfs_open_file* noundef %of) unnamed_addr #0 {
entry:
  %open = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 7, i32 0, i32 1
  %0 = bitcast %struct.rb_root* %open to %struct.kernfs_open_node**
  %1 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %0, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @kernfs_open_file_mutex) #6
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_open_node_lock, i64 0, i32 0, i32 0)) #7
  %tobool.not = icmp eq %struct.kernfs_open_file* %of, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 7
  call fastcc void @list_del(%struct.list_head* noundef %list) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %refcnt = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %1, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %refcnt) #6
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  store %struct.kernfs_open_node* null, %struct.kernfs_open_node** %0, align 8
  %phi.cast = bitcast %struct.kernfs_open_node* %1 to i8*
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then6
  %on.0 = phi i8* [ %phi.cast, %if.then6 ], [ null, %if.end ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_open_node_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #6
  call void @mutex_unlock(%struct.mutex* noundef nonnull @kernfs_open_file_mutex) #6
  call void @kfree(i8* noundef %on.0) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernfs_generic_poll(%struct.kernfs_open_file* nocapture noundef readonly %of, %struct.poll_table_struct* noundef %wait) local_unnamed_addr #0 {
entry:
  %file = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 1
  %0 = load %struct.file*, %struct.file** %file, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* noundef %1) #7
  %open = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 7, i32 0, i32 1
  %2 = bitcast %struct.rb_root* %open to %struct.kernfs_open_node**
  %3 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %2, align 8
  %poll = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %3, i64 0, i32 2
  call fastcc void @poll_wait(%struct.file* noundef %0, %struct.wait_queue_head* noundef %poll, %struct.poll_table_struct* noundef %wait) #7
  %event = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 6
  %4 = load i32, i32* %event, align 8
  %counter.i = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %3, i64 0, i32 1, i32 0
  %5 = load volatile i32, i32* %counter.i, align 4
  %cmp.not = icmp eq i32 %4, %5
  %. = select i1 %cmp.not, i32 325, i32 335
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @d_really_is_negative(%struct.dentry* noundef %dentry) #7
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #7
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.kernfs_node* [ %1, %if.end ], [ null, %entry ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @poll_wait(%struct.file* noundef %filp, %struct.wait_queue_head* noundef %wait_address, %struct.poll_table_struct* noundef %p) unnamed_addr #0 {
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
  call void %0(%struct.file* noundef %filp, %struct.wait_queue_head* noundef nonnull %wait_address, %struct.poll_table_struct* noundef nonnull %p) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernfs_notify(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @kernfs_type(%struct.kernfs_node* noundef %kn) #7
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %do.body17, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/file.c\22; .popsection; .long 14472b - 14470b; .short 919; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !8
  br label %cleanup

do.body17:                                        ; preds = %entry
  %call22 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_open_node_lock, i64 0, i32 0, i32 0)) #7
  %open = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 7, i32 0, i32 1
  %0 = bitcast %struct.rb_root* %open to %struct.kernfs_open_node**
  %1 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %0, align 8
  %tobool25.not = icmp eq %struct.kernfs_open_node* %1, null
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %do.body17
  %event = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %1, i64 0, i32 1
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %event) #6
  %poll = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %1, i64 0, i32 2
  call void @__wake_up(%struct.wait_queue_head* noundef %poll, i32 noundef 1, i32 noundef 1, i8* noundef null) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %do.body17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_open_node_lock, i64 0, i32 0, i32 0), i64 noundef %call22) #6
  %call36 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_notify_lock, i64 0, i32 0, i32 0)) #7
  %notify_next = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 7, i32 0, i32 3
  %2 = bitcast i64* %notify_next to %struct.kernfs_node**
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %tobool42.not = icmp eq %struct.kernfs_node* %3, null
  br i1 %tobool42.not, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end27
  call void @kernfs_get(%struct.kernfs_node* noundef %kn) #6
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** @kernfs_notify_list, align 8
  store %struct.kernfs_node* %4, %struct.kernfs_node** %2, align 8
  store %struct.kernfs_node* %kn, %struct.kernfs_node** @kernfs_notify_list, align 8
  call fastcc void @schedule_work() #7
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end27
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_notify_lock, i64 0, i32 0, i32 0), i64 noundef %call36) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kernfs_notify_workfn(%struct.work_struct* nocapture noundef readnone %work) #0 {
entry:
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_notify_lock, i64 0, i32 0, i32 0)) #6
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** @kernfs_notify_list, align 8
  %cmp79 = icmp eq %struct.kernfs_node* %0, bitcast (%struct.kernfs_node** @kernfs_notify_list to %struct.kernfs_node*)
  br i1 %cmp79, label %if.then, label %if.end

if.then:                                          ; preds = %for.end, %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_notify_lock, i64 0, i32 0, i32 0)) #6
  ret void

if.end:                                           ; preds = %entry, %for.end
  %1 = phi %struct.kernfs_node* [ %11, %for.end ], [ %0, %entry ]
  %notify_next = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %1, i64 0, i32 7, i32 0, i32 3
  %2 = bitcast i64* %notify_next to %struct.kernfs_node**
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  store %struct.kernfs_node* %3, %struct.kernfs_node** @kernfs_notify_list, align 8
  store %struct.kernfs_node* null, %struct.kernfs_node** %2, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_notify_lock, i64 0, i32 0, i32 0)) #6
  call void @down_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #6
  %call = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %1) #7
  %next = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call, i64 0, i32 6, i32 0
  %4 = bitcast %struct.list_head** %next to i8**
  %.pn74 = load i8*, i8** %4, align 8
  %5 = bitcast i8* %.pn74 to %struct.list_head*
  %call375 = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %1) #7
  %supers476 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call375, i64 0, i32 6
  %cmp5.not77 = icmp eq %struct.list_head* %supers476, %5
  br i1 %cmp5.not77, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %name10 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %1, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %.pn78 = phi i8* [ %.pn74, %for.body.lr.ph ], [ %.pn, %cleanup ]
  %info.0.in = getelementptr i8, i8* %.pn78, i64 -24
  %sb = bitcast i8* %info.0.in to %struct.super_block**
  %6 = load %struct.super_block*, %struct.super_block** %sb, align 8
  %call6 = call fastcc i64 @kernfs_ino(%struct.kernfs_node* noundef %1) #7
  %call7 = call %struct.inode* @ilookup(%struct.super_block* noundef %6, i64 noundef %call6) #6
  %tobool.not = icmp eq %struct.inode* %call7, null
  br i1 %tobool.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %for.body
  %7 = load i8*, i8** %name10, align 8
  %call11 = call i64 @strlen(i8* noundef %7) #6
  %call14 = call %struct.kernfs_node* @kernfs_get_parent(%struct.kernfs_node* noundef %1) #6
  %tobool15.not = icmp eq %struct.kernfs_node* %call14, null
  br i1 %tobool15.not, label %if.then26, label %if.then16

if.then16:                                        ; preds = %if.end9
  %8 = load %struct.super_block*, %struct.super_block** %sb, align 8
  %call18 = call fastcc i64 @kernfs_ino(%struct.kernfs_node* noundef nonnull %call14) #7
  %call19 = call %struct.inode* @ilookup(%struct.super_block* noundef %8, i64 noundef %call18) #6
  %tobool20.not = icmp eq %struct.inode* %call19, null
  br i1 %tobool20.not, label %if.end24.thread72, label %if.end24

if.end24.thread72:                                ; preds = %if.then16
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call14) #6
  br label %if.then26

if.end24:                                         ; preds = %if.then16
  call void @iput(%struct.inode* noundef nonnull %call19) #6
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call14) #6
  br label %if.end27

if.then26:                                        ; preds = %if.end9, %if.end24.thread72
  call fastcc void @fsnotify_inode(%struct.inode* noundef nonnull %call7) #7
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.then26
  call void @iput(%struct.inode* noundef nonnull %call7) #6
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end27
  %9 = bitcast i8* %.pn78 to i8**
  %.pn = load i8*, i8** %9, align 8
  %10 = bitcast i8* %.pn to %struct.list_head*
  %call3 = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %1) #7
  %supers4 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call3, i64 0, i32 6
  %cmp5.not = icmp eq %struct.list_head* %supers4, %10
  br i1 %cmp5.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %if.end
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #6
  call void @kernfs_put(%struct.kernfs_node* noundef %1) #6
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_notify_lock, i64 0, i32 0, i32 0)) #6
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** @kernfs_notify_list, align 8
  %cmp = icmp eq %struct.kernfs_node* %11, bitcast (%struct.kernfs_node** @kernfs_notify_list to %struct.kernfs_node*)
  br i1 %cmp, label %if.then, label %if.end
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @kernfs_type(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 10
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, 15
  %and = zext i16 %1 to i32
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #7
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #7
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(%struct.kernfs_node* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work() unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @kernfs_fop_read_iter(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #0 {
entry:
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %call = call fastcc %struct.kernfs_open_file* @kernfs_of(%struct.file* noundef %0) #7
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 0
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %1, i64 0, i32 10
  %2 = load i16, i16* %flags, align 8
  %3 = and i16 %2, 64
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @seq_read_iter(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #6
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call fastcc i64 @kernfs_file_read_iter(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @kernfs_fop_write_iter(%struct.kiocb* nocapture noundef %iocb, %struct.iov_iter* noundef %iter) #0 {
entry:
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %call = call fastcc %struct.kernfs_open_file* @kernfs_of(%struct.file* noundef %0) #7
  %call1 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #7
  %atomic_write_len = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 9
  %1 = load i64, i64* %atomic_write_len, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp ugt i64 %call1, %1
  br i1 %cmp, label %cleanup, label %if.end5

if.else:                                          ; preds = %entry
  %cmp4 = icmp ult i64 %call1, 4096
  %cond = select i1 %cmp4, i64 %call1, i64 4096
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.else
  %len.0 = phi i64 [ %call1, %if.then ], [ %cond, %if.else ]
  %prealloc_buf = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 8
  %2 = load i8*, i8** %prealloc_buf, align 8
  %tobool6.not = icmp eq i8* %2, null
  br i1 %tobool6.not, label %if.end9.i, label %if.then7

if.then7:                                         ; preds = %if.end5
  %prealloc_mutex = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 5
  call void @mutex_lock(%struct.mutex* noundef %prealloc_mutex) #6
  br label %if.end13

if.end9.i:                                        ; preds = %if.end5
  %add = add i64 %len.0, 1
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %add, i32 noundef 3264) #6
  %tobool11.not = icmp eq i8* %call10.i, null
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end9.i
  %buf.090 = phi i8* [ %call10.i, %if.end9.i ], [ %2, %if.then7 ]
  %cmp11.i.i = icmp ugt i64 %len.0, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.else.i, !prof !10

check_copy_size.exit.i:                           ; preds = %if.end13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !11
  br label %copy_from_iter.exit

if.else.i:                                        ; preds = %if.end13
  %call3.i = call i64 @_copy_from_iter(i8* noundef nonnull %buf.090, i64 noundef %len.0, %struct.iov_iter* noundef %iter) #6
  br label %copy_from_iter.exit

copy_from_iter.exit:                              ; preds = %check_copy_size.exit.i, %if.else.i
  %retval.0.i = phi i64 [ %call3.i, %if.else.i ], [ 0, %check_copy_size.exit.i ]
  %cmp15.not = icmp eq i64 %retval.0.i, %len.0
  br i1 %cmp15.not, label %if.end17, label %out_free

if.end17:                                         ; preds = %copy_from_iter.exit
  %arrayidx = getelementptr i8, i8* %buf.090, i64 %len.0
  store i8 0, i8* %arrayidx, align 1
  %mutex = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 4
  call void @mutex_lock(%struct.mutex* noundef %mutex) #6
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 0
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call18 = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %3) #6
  %tobool19.not = icmp eq %struct.kernfs_node* %call18, null
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #6
  br label %out_free

if.end22:                                         ; preds = %if.end17
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call24 = call fastcc %struct.kernfs_ops* @kernfs_ops(%struct.kernfs_node* noundef %4) #7
  %write = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call24, i64 0, i32 9
  %5 = load i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)** %write, align 8
  %tobool25.not = icmp eq i64 (%struct.kernfs_open_file*, i8*, i64, i64)* %5, null
  br i1 %tobool25.not, label %if.end30, label %if.then26

if.then26:                                        ; preds = %if.end22
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %6 = load i64, i64* %ki_pos, align 8
  %call28 = call i64 %5(%struct.kernfs_open_file* noundef %call, i8* noundef nonnull %buf.090, i64 noundef %len.0, i64 noundef %6) #6
  %.pre = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end22, %if.then26
  %7 = phi %struct.kernfs_node* [ %.pre, %if.then26 ], [ %4, %if.end22 ]
  %len.1 = phi i64 [ %call28, %if.then26 ], [ -22, %if.end22 ]
  call void @kernfs_put_active(%struct.kernfs_node* noundef %7) #6
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #6
  %cmp33 = icmp sgt i64 %len.1, 0
  br i1 %cmp33, label %if.then34, label %out_free

if.then34:                                        ; preds = %if.end30
  %ki_pos35 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %8 = load i64, i64* %ki_pos35, align 8
  %add36 = add i64 %8, %len.1
  store i64 %add36, i64* %ki_pos35, align 8
  br label %out_free

out_free:                                         ; preds = %copy_from_iter.exit, %if.end30, %if.then34, %if.then20
  %len.2 = phi i64 [ %len.1, %if.then34 ], [ %len.1, %if.end30 ], [ -19, %if.then20 ], [ -14, %copy_from_iter.exit ]
  %9 = load i8*, i8** %prealloc_buf, align 8
  %cmp39 = icmp eq i8* %buf.090, %9
  br i1 %cmp39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %out_free
  %prealloc_mutex41 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 5
  call void @mutex_unlock(%struct.mutex* noundef %prealloc_mutex41) #6
  br label %cleanup

if.else42:                                        ; preds = %out_free
  call void @kfree(i8* noundef nonnull %buf.090) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.else42, %if.end9.i, %if.then
  %retval.0 = phi i64 [ -7, %if.then ], [ -12, %if.end9.i ], [ %len.2, %if.else42 ], [ %len.2, %if.then40 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_fop_poll(%struct.file* nocapture noundef readonly %filp, %struct.poll_table_struct* noundef %wait) #0 {
entry:
  %call = call fastcc %struct.kernfs_open_file* @kernfs_of(%struct.file* noundef %filp) #7
  %dentry = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call1 = call fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* noundef %0) #7
  %call2 = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %call1) #6
  %tobool.not = icmp eq %struct.kernfs_node* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call1, i64 0, i32 7
  %ops = bitcast %union.anon* %1 to %struct.kernfs_ops**
  %2 = load %struct.kernfs_ops*, %struct.kernfs_ops** %ops, align 8
  %poll = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %2, i64 0, i32 10
  %3 = load i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)** %poll, align 8
  %tobool3.not = icmp eq i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)* %3, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call8 = call i32 %3(%struct.kernfs_open_file* noundef %call, %struct.poll_table_struct* noundef %wait) #6
  br label %if.end10

if.else:                                          ; preds = %if.end
  %call9 = call i32 @kernfs_generic_poll(%struct.kernfs_open_file* noundef %call, %struct.poll_table_struct* noundef %wait) #7
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  %ret.0 = phi i32 [ %call8, %if.then4 ], [ %call9, %if.else ]
  call void @kernfs_put_active(%struct.kernfs_node* noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end10
  %retval.0 = phi i32 [ %ret.0, %if.end10 ], [ 335, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_fop_mmap(%struct.file* noundef readonly %file, %struct.vm_area_struct* noundef %vma) #0 {
entry:
  %call = call fastcc %struct.kernfs_open_file* @kernfs_of(%struct.file* noundef %file) #7
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 0
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 10
  %1 = load i16, i16* %flags, align 8
  %2 = and i16 %1, 128
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 4
  call void @mutex_lock(%struct.mutex* noundef %mutex) #6
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call2 = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %3) #6
  %tobool3.not = icmp eq %struct.kernfs_node* %call2, null
  br i1 %tobool3.not, label %out_unlock, label %if.end5

if.end5:                                          ; preds = %if.end
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call7 = call fastcc %struct.kernfs_ops* @kernfs_ops(%struct.kernfs_node* noundef %4) #7
  %mmap = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call7, i64 0, i32 11
  %5 = load i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)** %mmap, align 8
  %call8 = call i32 %5(%struct.kernfs_open_file* noundef %call, %struct.vm_area_struct* noundef %vma) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %out_put

if.end11:                                         ; preds = %if.end5
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %6 = load %struct.file*, %struct.file** %vm_file, align 8
  %cmp.not = icmp eq %struct.file* %6, %file
  br i1 %cmp.not, label %if.end14, label %out_put

if.end14:                                         ; preds = %if.end11
  %mmapped = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 10
  %bf.load = load i8, i8* %mmapped, align 8
  %7 = and i8 %bf.load, 1
  %bf.cast.not = icmp eq i8 %7, 0
  br i1 %bf.cast.not, label %if.end14.if.end20_crit_edge, label %land.lhs.true

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  %vm_ops21.phi.trans.insert = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %.pre = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops21.phi.trans.insert, align 8
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end14
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 11
  %8 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %vm_ops16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %9 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops16, align 8
  %cmp17.not = icmp eq %struct.vm_operations_struct* %8, %9
  br i1 %cmp17.not, label %if.end20, label %out_put

if.end20:                                         ; preds = %if.end14.if.end20_crit_edge, %land.lhs.true
  %10 = phi %struct.vm_operations_struct* [ %.pre, %if.end14.if.end20_crit_edge ], [ %8, %land.lhs.true ]
  %vm_ops21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %tobool22.not = icmp eq %struct.vm_operations_struct* %10, null
  br i1 %tobool22.not, label %if.end27, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end20
  %close = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %10, i64 0, i32 1
  %11 = load void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)** %close, align 8
  %tobool25.not = icmp eq void (%struct.vm_area_struct*)* %11, null
  br i1 %tobool25.not, label %if.end27, label %out_put

if.end27:                                         ; preds = %land.lhs.true23, %if.end20
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %mmapped, align 8
  %12 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops21, align 8
  %vm_ops32 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 11
  store %struct.vm_operations_struct* %12, %struct.vm_operations_struct** %vm_ops32, align 8
  store %struct.vm_operations_struct* @kernfs_vm_ops, %struct.vm_operations_struct** %vm_ops21, align 8
  br label %out_put

out_put:                                          ; preds = %land.lhs.true23, %land.lhs.true, %if.end11, %if.end5, %if.end27
  %rc.0 = phi i32 [ %call8, %if.end5 ], [ 0, %if.end11 ], [ -22, %land.lhs.true ], [ -22, %land.lhs.true23 ], [ 0, %if.end27 ]
  %13 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  call void @kernfs_put_active(%struct.kernfs_node* noundef %13) #6
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %out_put
  %rc.1 = phi i32 [ %rc.0, %out_put ], [ -19, %if.end ]
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unlock
  %retval.0 = phi i32 [ %rc.1, %out_unlock ], [ -19, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_fop_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #0 {
entry:
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  %call = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %1) #7
  %call1 = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %1) #6
  %tobool.not = icmp eq %struct.kernfs_node* %call1, null
  br i1 %tobool.not, label %cleanup106, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.kernfs_ops* @kernfs_ops(%struct.kernfs_node* noundef %1) #7
  %seq_show = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call2, i64 0, i32 2
  %2 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %seq_show, align 8
  %tobool3.not = icmp eq i32 (%struct.seq_file*, i8*)* %2, null
  br i1 %tobool3.not, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %if.end
  %read = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call2, i64 0, i32 6
  %3 = load i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)** %read, align 8
  %tobool4.not = icmp eq i64 (%struct.kernfs_open_file*, i8*, i64, i64)* %3, null
  br i1 %tobool4.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %mmap = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call2, i64 0, i32 11
  %4 = load i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)** %mmap, align 8
  %tobool5 = icmp eq i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* %4, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %5 = phi i1 [ false, %lor.lhs.false ], [ false, %if.end ], [ %tobool5, %lor.rhs ]
  %write = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call2, i64 0, i32 9
  %6 = load i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)** %write, align 8
  %tobool6.not = icmp eq i64 (%struct.kernfs_open_file*, i8*, i64, i64)* %6, null
  %mmap8 = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call2, i64 0, i32 11
  %7 = load i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)** %mmap8, align 8
  %tobool9 = icmp eq i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* %7, null
  %8 = select i1 %tobool6.not, i1 %tobool9, i1 false
  %tobool13.not = icmp eq i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* %7, null
  %flags = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call, i64 0, i32 1
  %9 = load i32, i32* %flags, align 8
  %and = and i32 %9, 2
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end37, label %if.then16

if.then16:                                        ; preds = %lor.end
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %10 = load i32, i32* %f_mode, align 4
  %and17 = and i32 %10, 2
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then16
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %11 = load i16, i16* %i_mode, align 8
  %12 = and i16 %11, 146
  %tobool20.not = icmp eq i16 %12, 0
  %brmerge = select i1 %tobool20.not, i1 true, i1 %8
  br i1 %brmerge, label %cleanup106.sink.split, label %if.end24

if.end24:                                         ; preds = %land.lhs.true, %if.then16
  %and26 = and i32 %10, 1
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end37, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end24
  %i_mode29 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %13 = load i16, i16* %i_mode29, align 8
  %14 = and i16 %13, 292
  %tobool32.not = icmp eq i16 %14, 0
  %brmerge172 = select i1 %tobool32.not, i1 true, i1 %5
  br i1 %brmerge172, label %cleanup106.sink.split, label %if.end37

if.end37:                                         ; preds = %land.lhs.true28, %if.end24, %lor.end
  %call38 = call fastcc i8* @kzalloc() #7
  %15 = bitcast i8* %call38 to %struct.kernfs_open_file*
  %tobool39.not = icmp eq i8* %call38, null
  br i1 %tobool39.not, label %cleanup106.sink.split, label %if.end41

if.end41:                                         ; preds = %if.end37
  %mutex45 = getelementptr inbounds i8, i8* %call38, i64 32
  %16 = bitcast i8* %mutex45 to %struct.mutex*
  %kernfs_fop_open.__key.2.kernfs_fop_open.__key = select i1 %tobool13.not, %struct.lock_class_key* @kernfs_fop_open.__key.2, %struct.lock_class_key* @kernfs_fop_open.__key
  call void @__mutex_init(%struct.mutex* noundef %16, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* noundef nonnull %kernfs_fop_open.__key.2.kernfs_fop_open.__key) #6
  %kn49 = bitcast i8* %call38 to %struct.kernfs_node**
  store %struct.kernfs_node* %1, %struct.kernfs_node** %kn49, align 8
  %file50 = getelementptr inbounds i8, i8* %call38, i64 8
  %17 = bitcast i8* %file50 to %struct.file**
  store %struct.file* %file, %struct.file** %17, align 8
  %atomic_write_len = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call2, i64 0, i32 7
  %18 = load i64, i64* %atomic_write_len, align 8
  %atomic_write_len51 = getelementptr inbounds i8, i8* %call38, i64 128
  %19 = bitcast i8* %atomic_write_len51 to i64*
  store i64 %18, i64* %19, align 8
  %prealloc = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call2, i64 0, i32 8
  %20 = load i8, i8* %prealloc, align 8, !range !12
  %tobool52.not = icmp eq i8 %20, 0
  br i1 %tobool52.not, label %if.end74, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.end41
  %21 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %seq_show, align 8
  %tobool56.not = icmp eq i32 (%struct.seq_file*, i8*)* %21, null
  br i1 %tobool56.not, label %if.end9.i, label %err_free

if.end9.i:                                        ; preds = %land.lhs.true54
  %tobool63.not = icmp eq i64 %18, 0
  %.op = shl i64 %18, 32
  %sext = add i64 %.op, 4294967296
  %22 = ashr exact i64 %sext, 32
  %conv65 = select i1 %tobool63.not, i64 4097, i64 %22
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %conv65, i32 noundef 3264) #6
  %prealloc_buf = getelementptr inbounds i8, i8* %call38, i64 120
  %23 = bitcast i8* %prealloc_buf to i8**
  store i8* %call10.i, i8** %23, align 8
  %tobool68.not = icmp eq i8* %call10.i, null
  br i1 %tobool68.not, label %err_free, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end9.i
  %prealloc_mutex = getelementptr inbounds i8, i8* %call38, i64 64
  %24 = bitcast i8* %prealloc_mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %24, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @kernfs_fop_open.__key.3) #6
  br label %if.end74

if.end74:                                         ; preds = %if.end41, %cleanup.thread
  %25 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %seq_show, align 8
  %tobool76.not = icmp eq i32 (%struct.seq_file*, i8*)* %25, null
  br i1 %tobool76.not, label %if.else79, label %if.then77

if.then77:                                        ; preds = %if.end74
  %call78 = call i32 @seq_open(%struct.file* noundef %file, %struct.seq_operations* noundef nonnull @kernfs_seq_ops) #6
  br label %if.end81

if.else79:                                        ; preds = %if.end74
  %call80 = call i32 @seq_open(%struct.file* noundef %file, %struct.seq_operations* noundef null) #6
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.then77
  %error.0 = phi i32 [ %call78, %if.then77 ], [ %call80, %if.else79 ]
  %tobool82.not = icmp eq i32 %error.0, 0
  br i1 %tobool82.not, label %if.end84, label %err_free

if.end84:                                         ; preds = %if.end81
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %26 = bitcast i8** %private_data to %struct.seq_file**
  %27 = load %struct.seq_file*, %struct.seq_file** %26, align 8
  %seq_file = getelementptr inbounds i8, i8* %call38, i64 16
  %28 = bitcast i8* %seq_file to %struct.seq_file**
  store %struct.seq_file* %27, %struct.seq_file** %28, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %27, i64 0, i32 11
  store i8* %call38, i8** %private, align 8
  %f_mode86 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %29 = load i32, i32* %f_mode86, align 4
  %and87 = and i32 %29, 2
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end91, label %if.then89

if.then89:                                        ; preds = %if.end84
  %or = or i32 %29, 16
  store i32 %or, i32* %f_mode86, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end84
  %call92 = call fastcc i32 @kernfs_get_open_node(%struct.kernfs_node* noundef %1, %struct.kernfs_open_file* noundef nonnull %15) #7
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %err_seq_release

if.end95:                                         ; preds = %if.end91
  %open = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call2, i64 0, i32 0
  %30 = load i32 (%struct.kernfs_open_file*)*, i32 (%struct.kernfs_open_file*)** %open, align 8
  %tobool96.not = icmp eq i32 (%struct.kernfs_open_file*)* %30, null
  br i1 %tobool96.not, label %cleanup106.sink.split, label %if.then97

if.then97:                                        ; preds = %if.end95
  %call99 = call i32 %30(%struct.kernfs_open_file* noundef nonnull %15) #6
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %cleanup106.sink.split, label %err_put_node

err_put_node:                                     ; preds = %if.then97
  call fastcc void @kernfs_put_open_node(%struct.kernfs_node* noundef %1, %struct.kernfs_open_file* noundef nonnull %15) #7
  br label %err_seq_release

err_seq_release:                                  ; preds = %if.end91, %err_put_node
  %error.1 = phi i32 [ %call92, %if.end91 ], [ %call99, %err_put_node ]
  %call104 = call i32 @seq_release(%struct.inode* noundef %inode, %struct.file* noundef %file) #6
  br label %err_free

err_free:                                         ; preds = %if.end9.i, %if.end81, %land.lhs.true54, %err_seq_release
  %error.2 = phi i32 [ -22, %land.lhs.true54 ], [ %error.0, %if.end81 ], [ %error.1, %err_seq_release ], [ -12, %if.end9.i ]
  %prealloc_buf105 = getelementptr inbounds i8, i8* %call38, i64 120
  %31 = bitcast i8* %prealloc_buf105 to i8**
  %32 = load i8*, i8** %31, align 8
  call void @kfree(i8* noundef %32) #6
  call void @kfree(i8* noundef nonnull %call38) #6
  br label %cleanup106.sink.split

cleanup106.sink.split:                            ; preds = %err_free, %if.end37, %land.lhs.true, %land.lhs.true28, %if.end95, %if.then97
  %retval.0.ph = phi i32 [ 0, %if.then97 ], [ 0, %if.end95 ], [ %error.2, %err_free ], [ -12, %if.end37 ], [ -13, %land.lhs.true28 ], [ -13, %land.lhs.true ]
  call void @kernfs_put_active(%struct.kernfs_node* noundef %1) #6
  br label %cleanup106

cleanup106:                                       ; preds = %cleanup106.sink.split, %entry
  %retval.0 = phi i32 [ -19, %entry ], [ %retval.0.ph, %cleanup106.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_fop_release(%struct.inode* noundef %inode, %struct.file* noundef %filp) #0 {
entry:
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  %call = call fastcc %struct.kernfs_open_file* @kernfs_of(%struct.file* noundef %filp) #7
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %1, i64 0, i32 10
  %2 = load i16, i16* %flags, align 8
  %3 = and i16 %2, 8192
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @kernfs_open_file_mutex) #6
  call fastcc void @kernfs_release_file(%struct.kernfs_node* noundef %1, %struct.kernfs_open_file* noundef %call) #7
  call void @mutex_unlock(%struct.mutex* noundef nonnull @kernfs_open_file_mutex) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @kernfs_put_open_node(%struct.kernfs_node* noundef %1, %struct.kernfs_open_file* noundef %call) #7
  %call1 = call i32 @seq_release(%struct.inode* noundef %inode, %struct.file* noundef %filp) #6
  %prealloc_buf = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 8
  %4 = load i8*, i8** %prealloc_buf, align 8
  call void @kfree(i8* noundef %4) #6
  %5 = bitcast %struct.kernfs_open_file* %call to i8*
  call void @kfree(i8* noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @noop_fsync(%struct.file* noundef, i64 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iter_file_splice_write(%struct.pipe_inode_info* noundef, %struct.file* noundef, i64* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_splice_read(%struct.file* noundef, i64* noundef, %struct.pipe_inode_info* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kernfs_node* @__kernfs_create_file(%struct.kernfs_node* noundef %parent, i8* noundef %name, i16 noundef %mode, i64 %uid.coerce, i64 %gid.coerce, i64 noundef %size, %struct.kernfs_ops* noundef %ops, i8* noundef %priv, i8* noundef %ns, %struct.lock_class_key* nocapture noundef readnone %key) local_unnamed_addr #0 {
entry:
  %0 = and i16 %mode, 4095
  %1 = or i16 %0, -32768
  %coerce.val.ii5 = and i64 %uid.coerce, 4294967295
  %coerce.val.ii7 = and i64 %gid.coerce, 4294967295
  %call = call %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node* noundef %parent, i8* noundef %name, i16 noundef %1, i64 %coerce.val.ii5, i64 %coerce.val.ii7, i32 noundef 2) #6
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 7
  %ops9 = bitcast %union.anon* %2 to %struct.kernfs_ops**
  store %struct.kernfs_ops* %ops, %struct.kernfs_ops** %ops9, align 8
  %size11 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 7, i32 0, i32 2
  %3 = bitcast %struct.kernfs_root** %size11 to i64*
  store i64 %size, i64* %3, align 8
  %ns12 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 5
  store i8* %ns, i8** %ns12, align 8
  %priv13 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 8
  store i8* %priv, i8** %priv13, align 8
  %seq_show = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %ops, i64 0, i32 2
  %4 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %seq_show, align 8
  %tobool14.not = icmp eq i32 (%struct.seq_file*, i8*)* %4, null
  br i1 %tobool14.not, label %if.end20, label %if.then15

if.then15:                                        ; preds = %if.end
  %flags16 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 10
  %5 = load i16, i16* %flags16, align 8
  %6 = or i16 %5, 64
  store i16 %6, i16* %flags16, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end
  %mmap = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %ops, i64 0, i32 11
  %7 = load i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)** %mmap, align 8
  %tobool21.not = icmp eq i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* %7, null
  br i1 %tobool21.not, label %if.end27, label %if.then22

if.then22:                                        ; preds = %if.end20
  %flags23 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 10
  %8 = load i16, i16* %flags23, align 8
  %9 = or i16 %8, 128
  store i16 %9, i16* %flags23, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end20
  %release = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %ops, i64 0, i32 1
  %10 = load void (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)** %release, align 8
  %tobool28.not = icmp eq void (%struct.kernfs_open_file*)* %10, null
  br i1 %tobool28.not, label %if.end34, label %if.then29

if.then29:                                        ; preds = %if.end27
  %flags30 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 10
  %11 = load i16, i16* %flags30, align 8
  %12 = or i16 %11, 8192
  store i16 %12, i16* %flags30, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end27
  %call35 = call i32 @kernfs_add_one(%struct.kernfs_node* noundef nonnull %call) #6
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup, label %if.then37

if.then37:                                        ; preds = %if.end34
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #6
  %conv38 = sext i32 %call35 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.then37
  %conv38.sink = phi i64 [ %conv38, %if.then37 ], [ -12, %entry ]
  %call39 = call fastcc i8* @ERR_PTR(i64 noundef %conv38.sink) #7
  %13 = bitcast i8* %call39 to %struct.kernfs_node*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end34
  %retval.0 = phi %struct.kernfs_node* [ %call, %if.end34 ], [ %13, %cleanup.sink.split ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node* noundef, i8* noundef, i16 noundef, i64, i64, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #3 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_add_one(%struct.kernfs_node* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(%struct.kernfs_node* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #7
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #7
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !10

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #8, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #6
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #6
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #4 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #8, !srcloc !15
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #8, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #7
  call fastcc void @arch_local_irq_enable() #7
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #8, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #8, !srcloc !19
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #5 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #7
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #5 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #7
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #5 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #8, !srcloc !20
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_really_is_negative(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %cmp = icmp eq %struct.inode* %0, null
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #2 {
entry:
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %tobool.not = icmp eq %struct.kernfs_node* %0, null
  %spec.select = select i1 %tobool.not, %struct.kernfs_node* %kn, %struct.kernfs_node* %0
  %root = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %spec.select, i64 0, i32 7, i32 0, i32 2
  %1 = load %struct.kernfs_root*, %struct.kernfs_root** %root, align 8
  ret %struct.kernfs_root* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @ilookup(%struct.super_block* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @kernfs_ino(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #2 {
entry:
  %id = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 9
  %0 = load i64, i64* %id, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kernfs_node* @kernfs_get_parent(%struct.kernfs_node* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_inode(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #4 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 41, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #7
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #6
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #6
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #8, !srcloc !21
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #8, !srcloc !22
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #7
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #7
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #8, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef nonnull @kernfs_notify.kernfs_notify_work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kernfs_open_file* @kernfs_of(%struct.file* nocapture noundef readonly %file) unnamed_addr #2 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.seq_file**
  %1 = load %struct.seq_file*, %struct.seq_file** %0, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 11
  %2 = bitcast i8** %private to %struct.kernfs_open_file**
  %3 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %2, align 8
  ret %struct.kernfs_open_file* %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_read_iter(%struct.kiocb* noundef, %struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @kernfs_file_read_iter(%struct.kiocb* nocapture noundef %iocb, %struct.iov_iter* noundef %iter) unnamed_addr #0 {
entry:
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %call = call fastcc %struct.kernfs_open_file* @kernfs_of(%struct.file* noundef %0) #7
  %call1 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #7
  %cmp = icmp ult i64 %call1, 4096
  %cond = select i1 %cmp, i64 %call1, i64 4096
  %prealloc_buf = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 8
  %1 = load i8*, i8** %prealloc_buf, align 8
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %if.end9.i, label %if.then

if.then:                                          ; preds = %entry
  %prealloc_mutex = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 5
  call void @mutex_lock(%struct.mutex* noundef %prealloc_mutex) #6
  br label %if.end5

if.end9.i:                                        ; preds = %entry
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %cond, i32 noundef 3264) #6
  %tobool3.not = icmp eq i8* %call10.i, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then, %if.end9.i
  %buf.079 = phi i8* [ %call10.i, %if.end9.i ], [ %1, %if.then ]
  %mutex = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 4
  call void @mutex_lock(%struct.mutex* noundef %mutex) #6
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 0
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call6 = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %2) #6
  %tobool7.not = icmp eq %struct.kernfs_node* %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #6
  br label %out_free

if.end10:                                         ; preds = %if.end5
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %open = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %3, i64 0, i32 7, i32 0, i32 1
  %4 = bitcast %struct.rb_root* %open to %struct.kernfs_open_node**
  %5 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %4, align 8
  %counter.i = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %5, i64 0, i32 1, i32 0
  %6 = load volatile i32, i32* %counter.i, align 4
  %event13 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 6
  store i32 %6, i32* %event13, align 8
  %call15 = call fastcc %struct.kernfs_ops* @kernfs_ops(%struct.kernfs_node* noundef %3) #7
  %read = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call15, i64 0, i32 6
  %7 = load i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)** %read, align 8
  %tobool16.not = icmp eq i64 (%struct.kernfs_open_file*, i8*, i64, i64)* %7, null
  br i1 %tobool16.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.end10
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %8 = load i64, i64* %ki_pos, align 8
  %call19 = call i64 %7(%struct.kernfs_open_file* noundef %call, i8* noundef nonnull %buf.079, i64 noundef %cond, i64 noundef %8) #6
  %.pre = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end10, %if.then17
  %9 = phi %struct.kernfs_node* [ %.pre, %if.then17 ], [ %3, %if.end10 ]
  %len.0 = phi i64 [ %call19, %if.then17 ], [ -22, %if.end10 ]
  call void @kernfs_put_active(%struct.kernfs_node* noundef %9) #6
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #6
  %cmp24 = icmp slt i64 %len.0, 0
  br i1 %cmp24, label %out_free, label %if.end26

if.end26:                                         ; preds = %if.end21
  %cmp11.i.i = icmp ugt i64 %len.0, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.else.i, !prof !10

check_copy_size.exit.i:                           ; preds = %if.end26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !11
  br label %copy_to_iter.exit

if.else.i:                                        ; preds = %if.end26
  %call3.i = call i64 @_copy_to_iter(i8* noundef %buf.079, i64 noundef %len.0, %struct.iov_iter* noundef %iter) #6
  br label %copy_to_iter.exit

copy_to_iter.exit:                                ; preds = %check_copy_size.exit.i, %if.else.i
  %retval.0.i = phi i64 [ %call3.i, %if.else.i ], [ 0, %check_copy_size.exit.i ]
  %cmp28.not = icmp eq i64 %retval.0.i, %len.0
  br i1 %cmp28.not, label %if.end30, label %out_free

if.end30:                                         ; preds = %copy_to_iter.exit
  %ki_pos31 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %10 = load i64, i64* %ki_pos31, align 8
  %add = add i64 %10, %len.0
  store i64 %add, i64* %ki_pos31, align 8
  br label %out_free

out_free:                                         ; preds = %copy_to_iter.exit, %if.end21, %if.end30, %if.then8
  %len.1 = phi i64 [ %len.0, %if.end21 ], [ %len.0, %if.end30 ], [ -19, %if.then8 ], [ -14, %copy_to_iter.exit ]
  %11 = load i8*, i8** %prealloc_buf, align 8
  %cmp33 = icmp eq i8* %buf.079, %11
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %out_free
  %prealloc_mutex35 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 5
  call void @mutex_unlock(%struct.mutex* noundef %prealloc_mutex35) #6
  br label %cleanup

if.else36:                                        ; preds = %out_free
  call void @kfree(i8* noundef nonnull %buf.079) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.else36, %if.end9.i
  %retval.0 = phi i64 [ -12, %if.end9.i ], [ %len.1, %if.else36 ], [ %len.1, %if.then34 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #2 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kernfs_ops* @kernfs_ops(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 7
  %ops = bitcast %union.anon* %0 to %struct.kernfs_ops**
  %1 = load %struct.kernfs_ops*, %struct.kernfs_ops** %ops, align 8
  ret %struct.kernfs_ops* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put_active(%struct.kernfs_node* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_copy_to_iter(i8* noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_copy_from_iter(i8* noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kernfs_vma_open(%struct.vm_area_struct* noundef %vma) #0 {
entry:
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %0 = load %struct.file*, %struct.file** %vm_file, align 8
  %call = call fastcc %struct.kernfs_open_file* @kernfs_of(%struct.file* noundef %0) #7
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 11
  %1 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 0
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call1 = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %2) #6
  %tobool2.not = icmp eq %struct.kernfs_node* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %3 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %open = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %3, i64 0, i32 0
  %4 = load void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)** %open, align 8
  %tobool6.not = icmp eq void (%struct.vm_area_struct*)* %4, null
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void %4(%struct.vm_area_struct* noundef %vma) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4
  %5 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  call void @kernfs_put_active(%struct.kernfs_node* noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_vma_fault(%struct.vm_fault* noundef %vmf) #0 {
entry:
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %call = call fastcc %struct.kernfs_open_file* @kernfs_of(%struct.file* noundef %1) #7
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 11
  %2 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 0
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call1 = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %3) #6
  %tobool2.not = icmp eq %struct.kernfs_node* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %4 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %fault = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %4, i64 0, i32 5
  %5 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %fault, align 8
  %tobool6.not = icmp eq i32 (%struct.vm_fault*)* %5, null
  br i1 %tobool6.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end4
  %call10 = call i32 %5(%struct.vm_fault* noundef %vmf) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end4
  %ret.0 = phi i32 [ %call10, %if.then7 ], [ 2, %if.end4 ]
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  call void @kernfs_put_active(%struct.kernfs_node* noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end11
  %retval.0 = phi i32 [ %ret.0, %if.end11 ], [ 2, %entry ], [ 2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_vma_page_mkwrite(%struct.vm_fault* noundef %vmf) #0 {
entry:
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %call = call fastcc %struct.kernfs_open_file* @kernfs_of(%struct.file* noundef %1) #7
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 11
  %2 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 0
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call1 = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %3) #6
  %tobool2.not = icmp eq %struct.kernfs_node* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %4 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %page_mkwrite = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %4, i64 0, i32 9
  %5 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %page_mkwrite, align 8
  %tobool6.not = icmp eq i32 (%struct.vm_fault*)* %5, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  %call10 = call i32 %5(%struct.vm_fault* noundef %vmf) #6
  br label %if.end12

if.else:                                          ; preds = %if.end4
  %call11 = call i32 @file_update_time(%struct.file* noundef %1) #6
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %ret.0 = phi i32 [ %call10, %if.then7 ], [ 0, %if.else ]
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  call void @kernfs_put_active(%struct.kernfs_node* noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end12
  %retval.0 = phi i32 [ %ret.0, %if.end12 ], [ 2, %entry ], [ 2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_vma_access(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i8* noundef %buf, i32 noundef %len, i32 noundef %write) #0 {
entry:
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %0 = load %struct.file*, %struct.file** %vm_file, align 8
  %call = call fastcc %struct.kernfs_open_file* @kernfs_of(%struct.file* noundef %0) #7
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 11
  %1 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %call, i64 0, i32 0
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call1 = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %2) #6
  %tobool2.not = icmp eq %struct.kernfs_node* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %3 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %access = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %3, i64 0, i32 11
  %4 = load i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)** %access, align 8
  %tobool6.not = icmp eq i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* %4, null
  br i1 %tobool6.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end4
  %call10 = call i32 %4(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i8* noundef %buf, i32 noundef %len, i32 noundef %write) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end4
  %ret.0 = phi i32 [ %call10, %if.then7 ], [ -22, %if.end4 ]
  %5 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  call void @kernfs_put_active(%struct.kernfs_node* noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end11
  %retval.0 = phi i32 [ %ret.0, %if.end11 ], [ -22, %entry ], [ -22, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(%struct.file* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 8), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #6
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(%struct.file* noundef, %struct.seq_operations* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernfs_get_open_node(%struct.kernfs_node* nocapture noundef %kn, %struct.kernfs_open_file* noundef %of) unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @kernfs_open_file_mutex) #6
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_open_node_lock, i64 0, i32 0, i32 0)) #6
  %open = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 7, i32 0, i32 1
  %0 = bitcast %struct.rb_root* %open to %struct.kernfs_open_node**
  %1 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %0, align 8
  %tobool6.not64 = icmp eq %struct.kernfs_open_node* %1, null
  br i1 %tobool6.not64, label %if.end11.critedge, label %if.then7

if.end.thread:                                    ; preds = %if.end14
  %2 = bitcast i8* %call.i.i to %struct.kernfs_open_node*
  %3 = bitcast %struct.rb_root* %open to i8**
  store i8* %call.i.i, i8** %3, align 8
  br label %if.then7

if.then7:                                         ; preds = %entry, %if.end14, %if.end.thread
  %4 = phi i8* [ null, %if.end.thread ], [ null, %entry ], [ %call.i.i, %if.end14 ]
  %5 = phi %struct.kernfs_open_node* [ %2, %if.end.thread ], [ %1, %entry ], [ %9, %if.end14 ]
  %refcnt = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %5, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %refcnt) #6
  %list = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 7
  %files = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %5, i64 0, i32 3
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %files) #7
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_open_node_lock, i64 0, i32 0, i32 0)) #6
  call void @mutex_unlock(%struct.mutex* noundef nonnull @kernfs_open_file_mutex) #6
  call void @kfree(i8* noundef %4) #6
  br label %cleanup

if.end11.critedge:                                ; preds = %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_open_node_lock, i64 0, i32 0, i32 0)) #6
  call void @mutex_unlock(%struct.mutex* noundef nonnull @kernfs_open_file_mutex) #6
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %6, i32 noundef 3264) #6
  %tobool12.not = icmp eq i8* %call.i.i, null
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end11.critedge
  %counter.i = bitcast i8* %call.i.i to i32*
  store volatile i32 0, i32* %counter.i, align 8
  %event = getelementptr inbounds i8, i8* %call.i.i, i64 4
  %counter.i33 = bitcast i8* %event to i32*
  store volatile i32 1, i32* %counter.i33, align 4
  %poll = getelementptr inbounds i8, i8* %call.i.i, i64 8
  %7 = bitcast i8* %poll to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %7, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @kernfs_get_open_node.__key) #6
  %files16 = getelementptr inbounds i8, i8* %call.i.i, i64 32
  %8 = bitcast i8* %files16 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %8) #7
  call void @mutex_lock(%struct.mutex* noundef nonnull @kernfs_open_file_mutex) #6
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_open_node_lock, i64 0, i32 0, i32 0)) #6
  %9 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %0, align 8
  %tobool = icmp eq %struct.kernfs_open_node* %9, null
  br i1 %tobool, label %if.end.thread, label %if.then7

cleanup:                                          ; preds = %if.end11.critedge, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ -12, %if.end11.critedge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(%struct.inode* noundef, %struct.file* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @kernfs_seq_start(%struct.seq_file* noundef %sf, i64* noundef %ppos) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %sf, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.kernfs_open_file**
  %1 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %0, align 8
  %mutex = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %1, i64 0, i32 4
  call void @mutex_lock(%struct.mutex* noundef %mutex) #6
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %1, i64 0, i32 0
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %2) #6
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -19) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call3 = call fastcc %struct.kernfs_ops* @kernfs_ops(%struct.kernfs_node* noundef %3) #7
  %seq_start = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call3, i64 0, i32 3
  %4 = load i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i64*)** %seq_start, align 8
  %tobool4.not = icmp eq i8* (%struct.seq_file*, i64*)* %4, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call7 = call i8* %4(%struct.seq_file* noundef %sf, i64* noundef %ppos) #6
  %call8 = call fastcc i8* @ERR_PTR(i64 noundef -19) #7
  %cmp = icmp eq i8* %call7, %call8
  br i1 %cmp, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.then5
  call fastcc void @kernfs_seq_stop_active(%struct.seq_file* noundef %sf, i8* noundef %call7) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %5 = load i64, i64* %ppos, align 8
  %tobool11.not = icmp eq i64 %5, 0
  %6 = zext i1 %tobool11.not to i64
  %add.ptr = getelementptr i8, i8* null, i64 %6
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.then9, %if.else, %if.then
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ %call1, %if.then ], [ %call7, %if.then9 ], [ %call7, %if.then5 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kernfs_seq_stop(%struct.seq_file* noundef %sf, i8* noundef %v) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %sf, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.kernfs_open_file**
  %1 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %0, align 8
  %call = call fastcc i8* @ERR_PTR(i64 noundef -19) #7
  %cmp.not = icmp eq i8* %call, %v
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @kernfs_seq_stop_active(%struct.seq_file* noundef %sf, i8* noundef %v) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %1, i64 0, i32 4
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @kernfs_seq_next(%struct.seq_file* noundef %sf, i8* noundef %v, i64* noundef %ppos) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %sf, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.kernfs_open_file**
  %1 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %0, align 8
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %1, i64 0, i32 0
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call = call fastcc %struct.kernfs_ops* @kernfs_ops(%struct.kernfs_node* noundef %2) #7
  %seq_next = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call, i64 0, i32 4
  %3 = load i8* (%struct.seq_file*, i8*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)** %seq_next, align 8
  %tobool.not = icmp eq i8* (%struct.seq_file*, i8*, i64*)* %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i8* %3(%struct.seq_file* noundef %sf, i8* noundef %v, i64* noundef %ppos) #6
  %call3 = call fastcc i8* @ERR_PTR(i64 noundef -19) #7
  %cmp = icmp eq i8* %call2, %call3
  br i1 %cmp, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.then
  call fastcc void @kernfs_seq_stop_active(%struct.seq_file* noundef %sf, i8* noundef %call2) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %ppos, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then4, %if.else
  %retval.0 = phi i8* [ null, %if.else ], [ %call2, %if.then4 ], [ %call2, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_seq_show(%struct.seq_file* noundef %sf, i8* noundef %v) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %sf, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.kernfs_open_file**
  %1 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %0, align 8
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %1, i64 0, i32 0
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %open = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %2, i64 0, i32 7, i32 0, i32 1
  %3 = bitcast %struct.rb_root* %open to %struct.kernfs_open_node**
  %4 = load %struct.kernfs_open_node*, %struct.kernfs_open_node** %3, align 8
  %counter.i = getelementptr inbounds %struct.kernfs_open_node, %struct.kernfs_open_node* %4, i64 0, i32 1, i32 0
  %5 = load volatile i32, i32* %counter.i, align 4
  %event1 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %1, i64 0, i32 6
  store i32 %5, i32* %event1, align 8
  %6 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %2, i64 0, i32 7
  %ops = bitcast %union.anon* %6 to %struct.kernfs_ops**
  %7 = load %struct.kernfs_ops*, %struct.kernfs_ops** %ops, align 8
  %seq_show = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %7, i64 0, i32 2
  %8 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %seq_show, align 8
  %call4 = call i32 %8(%struct.seq_file* noundef %sf, i8* noundef %v) #6
  ret i32 %call4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kernfs_seq_stop_active(%struct.seq_file* noundef %sf, i8* noundef %v) unnamed_addr #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %sf, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.kernfs_open_file**
  %1 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %0, align 8
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %1, i64 0, i32 0
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call = call fastcc %struct.kernfs_ops* @kernfs_ops(%struct.kernfs_node* noundef %2) #7
  %seq_stop = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %call, i64 0, i32 5
  %3 = load void (%struct.seq_file*, i8*)*, void (%struct.seq_file*, i8*)** %seq_stop, align 8
  %tobool.not = icmp eq void (%struct.seq_file*, i8*)* %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %3(%struct.seq_file* noundef %sf, i8* noundef %v) #6
  %.pre = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct.kernfs_node* [ %.pre, %if.then ], [ %2, %entry ]
  call void @kernfs_put_active(%struct.kernfs_node* noundef %4) #6
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #5 {
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

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

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
!8 = !{i64 2154127527}
!9 = !{i64 2149542833}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148883471}
!12 = !{i8 0, i8 2}
!13 = !{i64 2149547126}
!14 = !{i64 2149102957, i64 2149103004, i64 2149103010, i64 2149103047, i64 2149103065, i64 2149104406, i64 2149104454, i64 2149104502, i64 2149104565, i64 2149104614, i64 2149103143, i64 2149103168, i64 2149103194, i64 2149103200, i64 2149104072, i64 2149104112, i64 2149104130, i64 2149104162, i64 2149104190, i64 2149104244, i64 2149104264, i64 2149104361, i64 2149103223, i64 2149103237, i64 2149103243, i64 2149103293, i64 2149103339, i64 2149103372}
!15 = !{i64 2148050619, i64 2148050652, i64 2148050705, i64 2148050764, i64 2148050798, i64 2148050853, i64 2148050882, i64 2148050902}
!16 = !{i64 2147954757, i64 2147955273, i64 2147955303, i64 2147955330, i64 2147955364, i64 2147955394}
!17 = !{i64 2149571979}
!18 = !{i64 2149357345}
!19 = !{i64 2149093501, i64 2149093548, i64 2149093554, i64 2149093591, i64 2149093609, i64 2149094949, i64 2149094997, i64 2149095045, i64 2149095108, i64 2149095157, i64 2149093687, i64 2149093712, i64 2149093738, i64 2149093744, i64 2149094615, i64 2149094655, i64 2149094673, i64 2149094705, i64 2149094733, i64 2149094787, i64 2149094807, i64 2149094904, i64 2149093767, i64 2149093781, i64 2149093787, i64 2149093837, i64 2149093883, i64 2149093916}
!20 = !{i64 2147965330, i64 2147965978, i64 2147966008, i64 2147966040, i64 2147966074, i64 2147966110, i64 2147966135}
!21 = !{i64 2149108660, i64 2149108707, i64 2149108713, i64 2149108750, i64 2149108768, i64 2149110079, i64 2149110127, i64 2149110175, i64 2149110238, i64 2149110287, i64 2149108846, i64 2149108871, i64 2149108897, i64 2149108903, i64 2149109745, i64 2149109785, i64 2149109803, i64 2149109835, i64 2149109863, i64 2149109917, i64 2149109937, i64 2149110034, i64 2149108926, i64 2149108940, i64 2149108946, i64 2149108996, i64 2149109042, i64 2149109075}
!22 = !{i64 2149110839, i64 2149110886, i64 2149110892, i64 2149110929, i64 2149110947, i64 2149111890, i64 2149111938, i64 2149111986, i64 2149112049, i64 2149112098, i64 2149111025, i64 2149111050, i64 2149111076, i64 2149111082, i64 2149111119, i64 2149111125, i64 2149111175, i64 2149111221, i64 2149111254}
!23 = !{i64 2149568676}
!24 = !{i64 2149114673, i64 2149114720, i64 2149114726, i64 2149114763, i64 2149114781, i64 2149120153, i64 2149120201, i64 2149120249, i64 2149120312, i64 2149120361, i64 2149114859, i64 2149114884, i64 2149114910, i64 2149114916, i64 2149119819, i64 2149119859, i64 2149119877, i64 2149119909, i64 2149119937, i64 2149119991, i64 2149120011, i64 2149120108, i64 2149114939, i64 2149114953, i64 2149114959, i64 2149115009, i64 2149115055, i64 2149115088}
