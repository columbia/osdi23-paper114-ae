; ModuleID = 'fs/sysfs/file.c'
source_filename = "fs/sysfs/file.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.61 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.24, i32 }
%union.anon.24 = type { %struct.kuid_t }
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
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.49, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.27 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.pgd_t = type { i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.48, i32, [12 x i8] }
%union.anon.48 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.2, %union.anon.60, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.60 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.50, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.50 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.51, %struct.list_head, %struct.list_head, %union.anon.52 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i8* }
%struct.kgid_t = type { i32 }
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
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.53 }
%union.anon.53 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.54, %struct.qspinlock }
%union.anon.54 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.17, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.18, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.17 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.18 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kref = type { %struct.refcount_struct }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"\013missing sysfs attribute operations for kobject: %s\0A\00", align 1
@sysfs_prealloc_kfops_rw = internal constant %struct.kernfs_ops { i32 (%struct.kernfs_open_file*)* null, void (%struct.kernfs_open_file*)* null, i32 (%struct.seq_file*, i8*)* null, i8* (%struct.seq_file*, i64*)* null, i8* (%struct.seq_file*, i8*, i64*)* null, void (%struct.seq_file*, i8*)* null, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* @sysfs_kf_read, i64 0, i8 1, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* @sysfs_kf_write, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)* null, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* null }, align 8
@sysfs_file_kfops_rw = internal constant %struct.kernfs_ops { i32 (%struct.kernfs_open_file*)* null, void (%struct.kernfs_open_file*)* null, i32 (%struct.seq_file*, i8*)* @sysfs_kf_seq_show, i8* (%struct.seq_file*, i64*)* null, i8* (%struct.seq_file*, i8*, i64*)* null, void (%struct.seq_file*, i8*)* null, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* null, i64 0, i8 0, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* @sysfs_kf_write, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)* null, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* null }, align 8
@sysfs_prealloc_kfops_ro = internal constant %struct.kernfs_ops { i32 (%struct.kernfs_open_file*)* null, void (%struct.kernfs_open_file*)* null, i32 (%struct.seq_file*, i8*)* null, i8* (%struct.seq_file*, i64*)* null, i8* (%struct.seq_file*, i8*, i64*)* null, void (%struct.seq_file*, i8*)* null, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* @sysfs_kf_read, i64 0, i8 1, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* null, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)* null, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* null }, align 8
@sysfs_file_kfops_ro = internal constant %struct.kernfs_ops { i32 (%struct.kernfs_open_file*)* null, void (%struct.kernfs_open_file*)* null, i32 (%struct.seq_file*, i8*)* @sysfs_kf_seq_show, i8* (%struct.seq_file*, i64*)* null, i8* (%struct.seq_file*, i8*, i64*)* null, void (%struct.seq_file*, i8*)* null, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* null, i64 0, i8 0, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* null, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)* null, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* null }, align 8
@sysfs_prealloc_kfops_wo = internal constant %struct.kernfs_ops { i32 (%struct.kernfs_open_file*)* null, void (%struct.kernfs_open_file*)* null, i32 (%struct.seq_file*, i8*)* null, i8* (%struct.seq_file*, i64*)* null, i8* (%struct.seq_file*, i8*, i64*)* null, void (%struct.seq_file*, i8*)* null, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* null, i64 0, i8 1, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* @sysfs_kf_write, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)* null, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* null }, align 8
@sysfs_file_kfops_wo = internal constant %struct.kernfs_ops { i32 (%struct.kernfs_open_file*)* null, void (%struct.kernfs_open_file*)* null, i32 (%struct.seq_file*, i8*)* null, i8* (%struct.seq_file*, i64*)* null, i8* (%struct.seq_file*, i8*, i64*)* null, void (%struct.seq_file*, i8*)* null, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* null, i64 0, i8 0, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* @sysfs_kf_write, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)* null, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* null }, align 8
@sysfs_file_kfops_empty = internal constant %struct.kernfs_ops zeroinitializer, align 8
@sysfs_bin_kfops_mmap = internal constant %struct.kernfs_ops { i32 (%struct.kernfs_open_file*)* @sysfs_kf_bin_open, void (%struct.kernfs_open_file*)* null, i32 (%struct.seq_file*, i8*)* null, i8* (%struct.seq_file*, i64*)* null, i8* (%struct.seq_file*, i8*, i64*)* null, void (%struct.seq_file*, i8*)* null, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* @sysfs_kf_bin_read, i64 0, i8 0, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* @sysfs_kf_bin_write, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)* null, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* @sysfs_kf_bin_mmap }, align 8
@sysfs_bin_kfops_rw = internal constant %struct.kernfs_ops { i32 (%struct.kernfs_open_file*)* null, void (%struct.kernfs_open_file*)* null, i32 (%struct.seq_file*, i8*)* null, i8* (%struct.seq_file*, i64*)* null, i8* (%struct.seq_file*, i8*, i64*)* null, void (%struct.seq_file*, i8*)* null, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* @sysfs_kf_bin_read, i64 0, i8 0, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* @sysfs_kf_bin_write, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)* null, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* null }, align 8
@sysfs_bin_kfops_ro = internal constant %struct.kernfs_ops { i32 (%struct.kernfs_open_file*)* null, void (%struct.kernfs_open_file*)* null, i32 (%struct.seq_file*, i8*)* null, i8* (%struct.seq_file*, i64*)* null, i8* (%struct.seq_file*, i8*, i64*)* null, void (%struct.seq_file*, i8*)* null, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* @sysfs_kf_bin_read, i64 0, i8 0, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* null, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)* null, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* null }, align 8
@sysfs_bin_kfops_wo = internal constant %struct.kernfs_ops { i32 (%struct.kernfs_open_file*)* null, void (%struct.kernfs_open_file*)* null, i32 (%struct.seq_file*, i8*)* null, i8* (%struct.seq_file*, i64*)* null, i8* (%struct.seq_file*, i8*, i64*)* null, void (%struct.seq_file*, i8*)* null, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* null, i64 0, i8 0, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* @sysfs_kf_bin_write, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)* null, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* null }, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid sysfs_emit: buf:%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"invalid sysfs_emit_at: buf:%p at:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"fill_read_buffer: %pS returned bad count\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sysfs_notify(%struct.kobject* nocapture noundef readonly %kobj, i8* noundef %dir, i8* noundef %attr) local_unnamed_addr #0 {
entry:
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %tobool = icmp ne %struct.kernfs_node* %0, null
  %tobool1 = icmp ne i8* %dir, null
  %or.cond = and i1 %tobool1, %tobool
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef nonnull %0, i8* noundef nonnull %dir) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @kernfs_get(%struct.kernfs_node* noundef %0) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %kn.0 = phi %struct.kernfs_node* [ %call, %if.then ], [ %0, %if.else ]
  %tobool2 = icmp ne %struct.kernfs_node* %kn.0, null
  %tobool4 = icmp ne i8* %attr, null
  %or.cond11 = and i1 %tobool4, %tobool2
  br i1 %or.cond11, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef nonnull %kn.0, i8* noundef nonnull %attr) #9
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %kn.0) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %kn.1 = phi %struct.kernfs_node* [ %call6, %if.then5 ], [ %kn.0, %if.end ]
  %tobool8.not = icmp eq %struct.kernfs_node* %kn.1, null
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @kernfs_notify(%struct.kernfs_node* noundef nonnull %kn.1) #10
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %kn.1) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %kn, i8* noundef %name) unnamed_addr #0 {
entry:
  %call = call %struct.kernfs_node* @kernfs_find_and_get_ns(%struct.kernfs_node* noundef %kn, i8* noundef %name, i8* noundef null) #10
  ret %struct.kernfs_node* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(%struct.kernfs_node* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(%struct.kernfs_node* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_notify(%struct.kernfs_node* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_add_file_mode_ns(%struct.kernfs_node* noundef %parent, %struct.attribute* noundef %attr, i1 noundef %is_bin, i16 noundef %mode, i64 %uid.coerce, i64 %gid.coerce, i8* noundef %ns) local_unnamed_addr #0 {
entry:
  br i1 %is_bin, label %if.else62, label %if.then

if.then:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %parent, i64 0, i32 8
  %0 = bitcast i8** %priv to %struct.kobject**
  %1 = load %struct.kobject*, %struct.kobject** %0, align 8
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %1, i64 0, i32 4
  %2 = load %struct.kobj_type*, %struct.kobj_type** %ktype, align 8
  %sysfs_ops3 = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %2, i64 0, i32 1
  %3 = load %struct.sysfs_ops*, %struct.sysfs_ops** %sysfs_ops3, align 8
  %tobool4.not = icmp eq %struct.sysfs_ops* %3, null
  br i1 %tobool4.not, label %cleanup, label %if.end29, !prof !7

if.end29:                                         ; preds = %if.then
  %show = getelementptr inbounds %struct.sysfs_ops, %struct.sysfs_ops* %3, i64 0, i32 0
  %4 = load i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*)** %show, align 8
  %tobool30.not = icmp eq i64 (%struct.kobject*, %struct.attribute*, i8*)* %4, null
  %store48 = getelementptr inbounds %struct.sysfs_ops, %struct.sysfs_ops* %3, i64 0, i32 1
  %5 = load i64 (%struct.kobject*, %struct.attribute*, i8*, i64)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)** %store48, align 8
  %tobool49.not = icmp eq i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* %5, null
  br i1 %tobool30.not, label %if.else47, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end29
  %6 = and i16 %mode, 4096
  %tobool43.not = icmp eq i16 %6, 0
  br i1 %tobool49.not, label %if.then40, label %if.then32

if.then32:                                        ; preds = %land.lhs.true
  %sysfs_file_kfops_rw.sysfs_prealloc_kfops_rw = select i1 %tobool43.not, %struct.kernfs_ops* @sysfs_file_kfops_rw, %struct.kernfs_ops* @sysfs_prealloc_kfops_rw
  br label %if.end84

if.then40:                                        ; preds = %land.lhs.true
  %sysfs_file_kfops_ro.sysfs_prealloc_kfops_ro = select i1 %tobool43.not, %struct.kernfs_ops* @sysfs_file_kfops_ro, %struct.kernfs_ops* @sysfs_prealloc_kfops_ro
  br label %if.end84

if.else47:                                        ; preds = %if.end29
  br i1 %tobool49.not, label %if.end84, label %if.then50

if.then50:                                        ; preds = %if.else47
  %7 = and i16 %mode, 4096
  %tobool53.not = icmp eq i16 %7, 0
  %sysfs_file_kfops_wo.sysfs_prealloc_kfops_wo = select i1 %tobool53.not, %struct.kernfs_ops* @sysfs_file_kfops_wo, %struct.kernfs_ops* @sysfs_prealloc_kfops_wo
  br label %if.end84

cleanup:                                          ; preds = %if.then
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %1) #9
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* noundef %call) #10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/sysfs/file.c\22; .popsection; .long 14472b - 14470b; .short 273; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !8
  br label %cleanup103

if.else62:                                        ; preds = %entry
  %mmap = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 3, i32 1
  %8 = bitcast i16* %mmap to i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)**
  %9 = load i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)** %8, align 8
  %tobool63.not = icmp eq i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* %9, null
  br i1 %tobool63.not, label %if.else65, label %if.end82

if.else65:                                        ; preds = %if.else62
  %read = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 2, i32 1
  %10 = bitcast i16* %read to i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)**
  %11 = load i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %10, align 8
  %tobool66.not = icmp eq i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* %11, null
  %write75 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 3
  %12 = bitcast %struct.attribute* %write75 to i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)**
  %13 = load i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %12, align 8
  %tobool76.not = icmp eq i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* %13, null
  br i1 %tobool66.not, label %if.else74, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %if.else65
  %spec.select = select i1 %tobool76.not, %struct.kernfs_ops* @sysfs_bin_kfops_ro, %struct.kernfs_ops* @sysfs_bin_kfops_rw
  br label %if.end82

if.else74:                                        ; preds = %if.else65
  %sysfs_file_kfops_empty.sysfs_bin_kfops_wo = select i1 %tobool76.not, %struct.kernfs_ops* @sysfs_file_kfops_empty, %struct.kernfs_ops* @sysfs_bin_kfops_wo
  br label %if.end82

if.end82:                                         ; preds = %land.lhs.true67, %if.else74, %if.else62
  %ops.2 = phi %struct.kernfs_ops* [ @sysfs_bin_kfops_mmap, %if.else62 ], [ %sysfs_file_kfops_empty.sysfs_bin_kfops_wo, %if.else74 ], [ %spec.select, %land.lhs.true67 ]
  %size83 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1
  %14 = bitcast %struct.attribute* %size83 to i64*
  %15 = load i64, i64* %14, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.else47, %if.then50, %if.then40, %if.then32, %if.end82
  %ops.3 = phi %struct.kernfs_ops* [ %ops.2, %if.end82 ], [ @sysfs_file_kfops_empty, %if.else47 ], [ %sysfs_file_kfops_wo.sysfs_prealloc_kfops_wo, %if.then50 ], [ %sysfs_file_kfops_ro.sysfs_prealloc_kfops_ro, %if.then40 ], [ %sysfs_file_kfops_rw.sysfs_prealloc_kfops_rw, %if.then32 ]
  %size.1 = phi i64 [ %15, %if.end82 ], [ 4096, %if.else47 ], [ 4096, %if.then50 ], [ 4096, %if.then40 ], [ 4096, %if.then32 ]
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 0, i32 0
  %16 = load i8*, i8** %name, align 8
  %17 = and i16 %mode, 511
  %18 = bitcast %struct.attribute* %attr to i8*
  %coerce.val.ii89 = and i64 %uid.coerce, 4294967295
  %coerce.val.ii91 = and i64 %gid.coerce, 4294967295
  %call92 = call %struct.kernfs_node* @__kernfs_create_file(%struct.kernfs_node* noundef %parent, i8* noundef %16, i16 noundef %17, i64 %coerce.val.ii89, i64 %coerce.val.ii91, i64 noundef %size.1, %struct.kernfs_ops* noundef %ops.3, i8* noundef %18, i8* noundef %ns, %struct.lock_class_key* noundef null) #10
  %19 = bitcast %struct.kernfs_node* %call92 to i8*
  %call93 = call fastcc i1 @IS_ERR(i8* noundef %19) #9
  br i1 %call93, label %if.then94, label %cleanup103

if.then94:                                        ; preds = %if.end84
  %call95 = call fastcc i64 @PTR_ERR(i8* noundef %19) #9
  %cmp = icmp eq i64 %call95, -17
  br i1 %cmp, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.then94
  %20 = load i8*, i8** %name, align 8
  call void @sysfs_warn_dup(%struct.kernfs_node* noundef %parent, i8* noundef %20) #10
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.then94
  %conv101 = trunc i64 %call95 to i32
  br label %cleanup103

cleanup103:                                       ; preds = %cleanup, %if.end84, %if.end99
  %retval.1 = phi i32 [ %conv101, %if.end99 ], [ -22, %cleanup ], [ 0, %if.end84 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #3 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kernfs_node* @__kernfs_create_file(%struct.kernfs_node* noundef, i8* noundef, i16 noundef, i64, i64, i64 noundef, %struct.kernfs_ops* noundef, i8* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_warn_dup(%struct.kernfs_node* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_create_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef %ns) local_unnamed_addr #0 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %0 = bitcast %struct.kuid_t* %uid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %1 = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %uid, i64 0, i32 0, !annotation !9
  store i32 0, i32* %1, align 4, !annotation !9
  %2 = bitcast %struct.kgid_t* %gid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #11
  %3 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %gid, i64 0, i32 0, !annotation !9
  store i32 0, i32* %3, align 4, !annotation !9
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %tobool1.not = icmp eq %struct.kernfs_node* %4, null
  %tobool2.not = icmp eq %struct.attribute* %attr, null
  %spec.select = or i1 %tobool2.not, %tobool1.not
  br i1 %spec.select, label %if.then, label %if.end20, !prof !7

if.then:                                          ; preds = %entry, %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/sysfs/file.c\22; .popsection; .long 14472b - 14470b; .short 339; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !10
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  call void @kobject_get_ownership(%struct.kobject* noundef nonnull %kobj, %struct.kuid_t* noundef nonnull %uid, %struct.kgid_t* noundef nonnull %gid) #10
  %5 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 0, i32 1
  %6 = load i16, i16* %mode, align 8
  %7 = load i32, i32* %1, align 4
  %coerce.val.ii = zext i32 %7 to i64
  %8 = load i32, i32* %3, align 4
  %coerce.val.ii23 = zext i32 %8 to i64
  %call = call i32 @sysfs_add_file_mode_ns(%struct.kernfs_node* noundef %5, %struct.attribute* noundef nonnull %attr, i1 noundef false, i16 noundef %6, i64 %coerce.val.ii, i64 %coerce.val.ii23, i8* noundef %ns) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end20
  %retval.0 = phi i32 [ %call, %if.end20 ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_get_ownership(%struct.kobject* noundef, %struct.kuid_t* noundef, %struct.kgid_t* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_create_files(%struct.kobject* noundef %kobj, %struct.attribute** nocapture noundef readonly %ptr) local_unnamed_addr #0 {
entry:
  %0 = load %struct.attribute*, %struct.attribute** %ptr, align 8
  %tobool19.not = icmp eq %struct.attribute* %0, null
  br i1 %tobool19.not, label %if.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %1 = phi %struct.attribute* [ %2, %for.body ], [ %0, %entry ]
  %i.020 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call = call fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef nonnull %1) #9
  %inc = add i32 %i.020, 1
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr %struct.attribute*, %struct.attribute** %ptr, i64 %idxprom
  %2 = load %struct.attribute*, %struct.attribute** %arrayidx, align 8
  %tobool = icmp ne %struct.attribute* %2, null
  %tobool1.not = icmp eq i32 %call, 0
  %3 = select i1 %tobool, i1 %tobool1.not, i1 false
  br i1 %3, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %phi.bo = xor i1 %tobool1.not, true
  %cmp24 = icmp sgt i32 %i.020, -1
  %or.cond = select i1 %phi.bo, i1 %cmp24, i1 false
  br i1 %or.cond, label %while.body, label %if.end

while.body:                                       ; preds = %for.end, %while.body
  %dec25 = phi i32 [ %dec, %while.body ], [ %i.020, %for.end ]
  %idxprom518 = zext i32 %dec25 to i64
  %arrayidx6 = getelementptr %struct.attribute*, %struct.attribute** %ptr, i64 %idxprom518
  %4 = load %struct.attribute*, %struct.attribute** %arrayidx6, align 8
  call fastcc void @sysfs_remove_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %4) #9
  %dec = add nsw i32 %dec25, -1
  %cmp = icmp sgt i32 %dec25, 0
  br i1 %cmp, label %while.body, label %if.end

if.end:                                           ; preds = %while.body, %entry, %for.end
  %err.0.lcssa33 = phi i32 [ %call, %for.end ], [ 0, %entry ], [ %call, %while.body ]
  ret i32 %err.0.lcssa33
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr) unnamed_addr #0 {
entry:
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef null) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sysfs_remove_file(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute* nocapture noundef readonly %attr) unnamed_addr #0 {
entry:
  call void @sysfs_remove_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef null) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_add_file_to_group(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef %group) local_unnamed_addr #0 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %0 = bitcast %struct.kuid_t* %uid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %1 = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %uid, i64 0, i32 0, !annotation !9
  store i32 0, i32* %1, align 4, !annotation !9
  %2 = bitcast %struct.kgid_t* %gid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #11
  %3 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %gid, i64 0, i32 0, !annotation !9
  store i32 0, i32* %3, align 4, !annotation !9
  %tobool.not = icmp eq i8* %group, null
  %sd1 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %sd1, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %4, i8* noundef nonnull %group) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @kernfs_get(%struct.kernfs_node* noundef %4) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %parent.0 = phi %struct.kernfs_node* [ %call, %if.then ], [ %4, %if.else ]
  %tobool2.not = icmp eq %struct.kernfs_node* %parent.0, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @kobject_get_ownership(%struct.kobject* noundef %kobj, %struct.kuid_t* noundef nonnull %uid, %struct.kgid_t* noundef nonnull %gid) #10
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 0, i32 1
  %5 = load i16, i16* %mode, align 8
  %6 = load i32, i32* %1, align 4
  %coerce.val.ii = zext i32 %6 to i64
  %7 = load i32, i32* %3, align 4
  %coerce.val.ii6 = zext i32 %7 to i64
  %call7 = call i32 @sysfs_add_file_mode_ns(%struct.kernfs_node* noundef nonnull %parent.0, %struct.attribute* noundef %attr, i1 noundef false, i16 noundef %5, i64 %coerce.val.ii, i64 %coerce.val.ii6, i8* noundef null) #9
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %parent.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ -2, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_chmod_file(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute* nocapture noundef readonly %attr, i16 noundef %mode) local_unnamed_addr #0 {
entry:
  %newattrs = alloca %struct.iattr, align 8
  %0 = bitcast %struct.iattr* %newattrs to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !9
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %1, i8* noundef %2) #9
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = and i16 %mode, 4095
  %mode1 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 11
  %4 = load i16, i16* %mode1, align 2
  %5 = and i16 %4, -4096
  %or13 = or i16 %5, %3
  %ia_mode = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 1
  store i16 %or13, i16* %ia_mode, align 4
  %ia_valid = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 0
  store i32 1, i32* %ia_valid, align 8
  %call5 = call i32 @kernfs_setattr(%struct.kernfs_node* noundef nonnull %call, %struct.iattr* noundef nonnull %newattrs) #10
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call5, %if.end ], [ -2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_setattr(%struct.kernfs_node* noundef, %struct.iattr* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kernfs_node* @sysfs_break_active_protection(%struct.kobject* noundef %kobj, %struct.attribute* nocapture noundef readonly %attr) local_unnamed_addr #0 {
entry:
  %call = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj) #10
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call1 = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %0, i8* noundef %1) #9
  %tobool.not = icmp eq %struct.kernfs_node* %call1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @kernfs_break_active_protection(%struct.kernfs_node* noundef nonnull %call1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.kernfs_node* %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_get(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_break_active_protection(%struct.kernfs_node* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sysfs_unbreak_active_protection(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %priv = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 8
  %1 = bitcast i8** %priv to %struct.kobject**
  %2 = load %struct.kobject*, %struct.kobject** %1, align 8
  call void @kernfs_unbreak_active_protection(%struct.kernfs_node* noundef %kn) #10
  call void @kernfs_put(%struct.kernfs_node* noundef %kn) #10
  call void @kobject_put(%struct.kobject* noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_unbreak_active_protection(%struct.kernfs_node* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sysfs_remove_file_ns(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %ns) local_unnamed_addr #0 {
entry:
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call = call i32 @kernfs_remove_by_name_ns(%struct.kernfs_node* noundef %0, i8* noundef %1, i8* noundef %ns) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_remove_by_name_ns(%struct.kernfs_node* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @sysfs_remove_file_self(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute* nocapture noundef readonly %attr) local_unnamed_addr #0 {
entry:
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %0, i8* noundef %1) #9
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/sysfs/file.c\22; .popsection; .long 14472b - 14470b; .short 499; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !11
  br label %cleanup

if.end18:                                         ; preds = %entry
  %call19 = call i1 @kernfs_remove_self(%struct.kernfs_node* noundef nonnull %call) #10
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end18
  %retval.0 = phi i1 [ %call19, %if.end18 ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @kernfs_remove_self(%struct.kernfs_node* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sysfs_remove_files(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute** nocapture noundef readonly %ptr) local_unnamed_addr #0 {
entry:
  %0 = load %struct.attribute*, %struct.attribute** %ptr, align 8
  %tobool.not7 = icmp eq %struct.attribute* %0, null
  br i1 %tobool.not7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %1 = phi %struct.attribute* [ %2, %for.body ], [ %0, %entry ]
  %i.08 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  call fastcc void @sysfs_remove_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef nonnull %1) #9
  %inc = add i32 %i.08, 1
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr %struct.attribute*, %struct.attribute** %ptr, i64 %idxprom
  %2 = load %struct.attribute*, %struct.attribute** %arrayidx, align 8
  %tobool.not = icmp eq %struct.attribute* %2, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sysfs_remove_file_from_group(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %group) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %group, null
  %sd1 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd1, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %0, i8* noundef nonnull %group) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @kernfs_get(%struct.kernfs_node* noundef %0) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %parent.0 = phi %struct.kernfs_node* [ %call, %if.then ], [ %0, %if.else ]
  %tobool2.not = icmp eq %struct.kernfs_node* %parent.0, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call fastcc void @kernfs_remove_by_name(%struct.kernfs_node* noundef nonnull %parent.0, i8* noundef %1) #9
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %parent.0) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kernfs_remove_by_name(%struct.kernfs_node* noundef %parent, i8* noundef %name) unnamed_addr #0 {
entry:
  %call = call i32 @kernfs_remove_by_name_ns(%struct.kernfs_node* noundef %parent, i8* noundef %name, i8* noundef null) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_create_bin_file(%struct.kobject* noundef %kobj, %struct.bin_attribute* noundef %attr) local_unnamed_addr #0 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %0 = bitcast %struct.kuid_t* %uid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %1 = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %uid, i64 0, i32 0, !annotation !9
  store i32 0, i32* %1, align 4, !annotation !9
  %2 = bitcast %struct.kgid_t* %gid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #11
  %3 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %gid, i64 0, i32 0, !annotation !9
  store i32 0, i32* %3, align 4, !annotation !9
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %tobool1.not = icmp eq %struct.kernfs_node* %4, null
  %tobool2.not = icmp eq %struct.bin_attribute* %attr, null
  %spec.select = or i1 %tobool2.not, %tobool1.not
  br i1 %spec.select, label %if.then, label %if.end20, !prof !7

if.then:                                          ; preds = %entry, %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/sysfs/file.c\22; .popsection; .long 14472b - 14470b; .short 554; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !12
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  call void @kobject_get_ownership(%struct.kobject* noundef nonnull %kobj, %struct.kuid_t* noundef nonnull %uid, %struct.kgid_t* noundef nonnull %gid) #10
  %5 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %attr22 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr, i64 0, i32 0
  %mode = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr, i64 0, i32 0, i32 1
  %6 = load i16, i16* %mode, align 8
  %7 = load i32, i32* %1, align 4
  %coerce.val.ii = zext i32 %7 to i64
  %8 = load i32, i32* %3, align 4
  %coerce.val.ii25 = zext i32 %8 to i64
  %call = call i32 @sysfs_add_file_mode_ns(%struct.kernfs_node* noundef %5, %struct.attribute* noundef %attr22, i1 noundef true, i16 noundef %6, i64 %coerce.val.ii, i64 %coerce.val.ii25, i8* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end20
  %retval.0 = phi i32 [ %call, %if.end20 ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sysfs_remove_bin_file(%struct.kobject* nocapture noundef readonly %kobj, %struct.bin_attribute* nocapture noundef readonly %attr) local_unnamed_addr #0 {
entry:
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %name = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr, i64 0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call fastcc void @kernfs_remove_by_name(%struct.kernfs_node* noundef %0, i8* noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_link_change_owner(%struct.kobject* nocapture noundef readonly %kobj, %struct.kobject* noundef readonly %targ, i8* noundef %name, i64 %kuid.coerce, i64 %kgid.coerce) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %name, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %state_in_sysfs = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_in_sysfs, align 4
  %0 = and i8 %bf.load, 2
  %tobool3.not = icmp eq i8 %0, 0
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %state_in_sysfs5 = getelementptr inbounds %struct.kobject, %struct.kobject* %targ, i64 0, i32 7
  %bf.load6 = load i8, i8* %state_in_sysfs5, align 4
  %1 = and i8 %bf.load6, 2
  %tobool10.not = icmp eq i8 %1, 0
  br i1 %tobool10.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false4
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %sd11 = getelementptr inbounds %struct.kobject, %struct.kobject* %targ, i64 0, i32 5
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %sd11, align 8
  %ns = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %3, i64 0, i32 5
  %4 = load i8*, i8** %ns, align 8
  %call = call %struct.kernfs_node* @kernfs_find_and_get_ns(%struct.kernfs_node* noundef %2, i8* noundef nonnull %name, i8* noundef %4) #10
  %tobool12.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool12.not, label %out, label %if.end14

if.end14:                                         ; preds = %if.end
  %call15 = call fastcc i32 @kernfs_type(%struct.kernfs_node* noundef nonnull %call) #9
  %cmp.not = icmp eq i32 %call15, 4
  br i1 %cmp.not, label %if.end17, label %out

if.end17:                                         ; preds = %if.end14
  %5 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 7
  %target_kn = bitcast %union.anon.61* %5 to %struct.kernfs_node**
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %target_kn, align 8
  %priv = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %6, i64 0, i32 8
  %7 = load i8*, i8** %priv, align 8
  %8 = bitcast %struct.kobject* %targ to i8*
  %cmp18.not = icmp eq i8* %7, %8
  br i1 %cmp18.not, label %if.end20, label %out

if.end20:                                         ; preds = %if.end17
  %coerce.val.ii22 = and i64 %kuid.coerce, 4294967295
  %coerce.val.ii24 = and i64 %kgid.coerce, 4294967295
  %call25 = call fastcc i32 @internal_change_owner(%struct.kernfs_node* noundef nonnull %call, i64 %coerce.val.ii22, i64 %coerce.val.ii24) #9
  br label %out

out:                                              ; preds = %if.end17, %if.end14, %if.end, %if.end20
  %error.0 = phi i32 [ -22, %if.end14 ], [ -22, %if.end17 ], [ %call25, %if.end20 ], [ -2, %if.end ]
  call void @kernfs_put(%struct.kernfs_node* noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false4, %out
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %lor.lhs.false4 ], [ -22, %lor.lhs.false ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kernfs_node* @kernfs_find_and_get_ns(%struct.kernfs_node* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @kernfs_type(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 10
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, 15
  %and = zext i16 %1 to i32
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @internal_change_owner(%struct.kernfs_node* noundef %kn, i64 %kuid.coerce, i64 %kgid.coerce) unnamed_addr #0 {
entry:
  %newattrs = alloca %struct.iattr, align 8
  %coerce.val.ii = trunc i64 %kuid.coerce to i32
  %coerce.val.ii2 = trunc i64 %kgid.coerce to i32
  %0 = bitcast %struct.iattr* %newattrs to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #11
  %ia_valid = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 0
  %1 = bitcast %struct.iattr* %newattrs to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  store i32 6, i32* %ia_valid, align 8
  %kuid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 2, i32 0
  store i32 %coerce.val.ii, i32* %kuid.sroa.0.0..sroa_idx, align 8
  %kgid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 3, i32 0
  store i32 %coerce.val.ii2, i32* %kgid.sroa.0.0..sroa_idx, align 4
  %call = call i32 @kernfs_setattr(%struct.kernfs_node* noundef %kn, %struct.iattr* noundef nonnull %newattrs) #10
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_file_change_owner(%struct.kobject* nocapture noundef readonly %kobj, i8* noundef %name, i64 %kuid.coerce, i64 %kgid.coerce) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %name, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %state_in_sysfs = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_in_sysfs, align 4
  %0 = and i8 %bf.load, 2
  %tobool3.not = icmp eq i8 %0, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %1, i8* noundef nonnull %name) #9
  %tobool6.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %coerce.val.ii10 = and i64 %kuid.coerce, 4294967295
  %coerce.val.ii12 = and i64 %kgid.coerce, 4294967295
  %call13 = call fastcc i32 @internal_change_owner(%struct.kernfs_node* noundef nonnull %call, i64 %coerce.val.ii10, i64 %coerce.val.ii12) #9
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ %call13, %if.end8 ], [ -22, %entry ], [ -22, %if.end ], [ -2, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_change_owner(%struct.kobject* noundef %kobj, i64 %kuid.coerce, i64 %kgid.coerce) local_unnamed_addr #0 {
entry:
  %state_in_sysfs = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_in_sysfs, align 4
  %0 = and i8 %bf.load, 2
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %cleanup32, label %if.end

if.end:                                           ; preds = %entry
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %coerce.val.ii4 = and i64 %kuid.coerce, 4294967295
  %coerce.val.ii6 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @internal_change_owner(%struct.kernfs_node* noundef %1, i64 %coerce.val.ii4, i64 %coerce.val.ii6) #9
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup32

if.end9:                                          ; preds = %if.end
  %call10 = call fastcc %struct.kobj_type* @get_ktype(%struct.kobject* noundef %kobj) #9
  %tobool11.not = icmp eq %struct.kobj_type* %call10, null
  br i1 %tobool11.not, label %if.end31, label %if.then12

if.then12:                                        ; preds = %if.end9
  %default_attrs = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %call10, i64 0, i32 2
  %2 = load %struct.attribute**, %struct.attribute*** %default_attrs, align 8
  %tobool13.not57 = icmp eq %struct.attribute** %2, null
  br i1 %tobool13.not57, label %cleanup, label %land.rhs

for.cond:                                         ; preds = %for.body
  %tobool13.not = icmp eq %struct.attribute** %incdec.ptr, null
  br i1 %tobool13.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %if.then12, %for.cond
  %kattr.058 = phi %struct.attribute** [ %incdec.ptr, %for.cond ], [ %2, %if.then12 ]
  %3 = load %struct.attribute*, %struct.attribute** %kattr.058, align 8
  %tobool14.not = icmp eq %struct.attribute* %3, null
  br i1 %tobool14.not, label %cleanup, label %for.body

for.body:                                         ; preds = %land.rhs
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %3, i64 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %call19 = call i32 @sysfs_file_change_owner(%struct.kobject* noundef %kobj, i8* noundef %4, i64 %coerce.val.ii4, i64 %coerce.val.ii6) #9
  %tobool20.not = icmp eq i32 %call19, 0
  %incdec.ptr = getelementptr %struct.attribute*, %struct.attribute** %kattr.058, i64 1
  br i1 %tobool20.not, label %for.cond, label %cleanup32

cleanup:                                          ; preds = %for.cond, %land.rhs, %if.then12
  %default_groups = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %call10, i64 0, i32 3
  %5 = load %struct.attribute_group**, %struct.attribute_group*** %default_groups, align 8
  %call27 = call i32 @sysfs_groups_change_owner(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %5, i64 %coerce.val.ii4, i64 %coerce.val.ii6) #10
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end31, label %cleanup32

if.end31:                                         ; preds = %cleanup, %if.end9
  br label %cleanup32

cleanup32:                                        ; preds = %for.body, %if.end, %entry, %cleanup, %if.end31
  %retval.1 = phi i32 [ 0, %if.end31 ], [ %call27, %cleanup ], [ -22, %entry ], [ %call, %if.end ], [ %call19, %for.body ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kobj_type* @get_ktype(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #3 {
entry:
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 4
  %0 = load %struct.kobj_type*, %struct.kobj_type** %ktype, align 8
  ret %struct.kobj_type* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_groups_change_owner(%struct.kobject* noundef, %struct.attribute_group** noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_emit(i8* noundef %buf, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !9
  %tobool.not = icmp eq i8* %buf, null
  %1 = ptrtoint i8* %buf to i64
  %and = and i64 %1, 4095
  %tobool1 = icmp ne i64 %and, 0
  %2 = or i1 %tobool.not, %tobool1
  br i1 %2, label %do.end, label %if.end24, !prof !7

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* noundef %buf) #10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/sysfs/file.c\22; .popsection; .long 14472b - 14470b; .short 738; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !13
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @llvm.va_start(i8* nonnull %0)
  %3 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %3, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vscnprintf(i8* noundef nonnull %buf, i64 noundef 4096, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #11
  call void @llvm.va_end(i8* nonnull %0)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end24
  %retval.0 = phi i32 [ %call, %if.end24 ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_emit_at(i8* noundef %buf, i32 noundef %at, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !9
  %tobool.not = icmp eq i8* %buf, null
  br i1 %tobool.not, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint i8* %buf to i64
  %and = and i64 %1, 4095
  %tobool1 = icmp ne i64 %and, 0
  %cmp3 = icmp ugt i32 %at, 4095
  %spec.select = or i1 %cmp3, %tobool1
  br i1 %spec.select, label %do.end, label %if.end28, !prof !7

do.end:                                           ; preds = %entry, %lor.lhs.false
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef %buf, i32 noundef %at) #10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/sysfs/file.c\22; .popsection; .long 14472b - 14470b; .short 766; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !14
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  call void @llvm.va_start(i8* nonnull %0)
  %idx.ext43 = zext i32 %at to i64
  %add.ptr = getelementptr i8, i8* %buf, i64 %idx.ext43
  %sub = sub nuw nsw i64 4096, %idx.ext43
  %2 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vscnprintf(i8* noundef %add.ptr, i64 noundef %sub, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #11
  call void @llvm.va_end(i8* nonnull %0)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end28
  %retval.0 = phi i32 [ %call, %if.end28 ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @sysfs_kf_read(%struct.kernfs_open_file* nocapture noundef readonly %of, i8* noundef %buf, i64 noundef %count, i64 noundef %pos) #0 {
entry:
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 0
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %prealloc_buf = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 8
  %1 = load i8*, i8** %prealloc_buf, align 8
  %cmp.not = icmp eq i8* %1, %buf
  br i1 %cmp.not, label %if.end17, label %if.then, !prof !15

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/sysfs/file.c\22; .popsection; .long 14472b - 14470b; .short 115; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !16
  br label %cleanup

if.end17:                                         ; preds = %entry
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 2
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %priv = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %2, i64 0, i32 8
  %3 = bitcast i8** %priv to %struct.kobject**
  %4 = load %struct.kobject*, %struct.kobject** %3, align 8
  %call = call fastcc %struct.sysfs_ops* @sysfs_file_ops(%struct.kernfs_node* noundef %0) #9
  %show = getelementptr inbounds %struct.sysfs_ops, %struct.sysfs_ops* %call, i64 0, i32 0
  %5 = load i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*)** %show, align 8
  %priv19 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 8
  %6 = bitcast i8** %priv19 to %struct.attribute**
  %7 = load %struct.attribute*, %struct.attribute** %6, align 8
  %call20 = call i64 %5(%struct.kobject* noundef %4, %struct.attribute* noundef %7, i8* noundef %buf) #10
  %cmp21 = icmp slt i64 %call20, 0
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end17
  %tobool25.not = icmp eq i64 %pos, 0
  br i1 %tobool25.not, label %if.end32, label %if.then26

if.then26:                                        ; preds = %if.end24
  %cmp27.not = icmp sgt i64 %call20, %pos
  br i1 %cmp27.not, label %if.end30, label %cleanup

if.end30:                                         ; preds = %if.then26
  %sub = sub i64 %call20, %pos
  %add.ptr = getelementptr i8, i8* %buf, i64 %pos
  %call31 = call i8* @memmove(i8* noundef %buf, i8* noundef %add.ptr, i64 noundef %sub) #10
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end24
  %len.0 = phi i64 [ %sub, %if.end30 ], [ %call20, %if.end24 ]
  %cmp34 = icmp sgt i64 %len.0, %count
  %cond = select i1 %cmp34, i64 %count, i64 %len.0
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then26, %if.end17, %if.end32
  %retval.0 = phi i64 [ %cond, %if.end32 ], [ 0, %if.then ], [ %call20, %if.end17 ], [ 0, %if.then26 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @sysfs_kf_write(%struct.kernfs_open_file* nocapture noundef readonly %of, i8* noundef %buf, i64 noundef %count, i64 noundef %pos) #0 {
entry:
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 0
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %tobool.not = icmp eq i64 %count, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.sysfs_ops* @sysfs_file_ops(%struct.kernfs_node* noundef %0) #9
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 2
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %priv = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %1, i64 0, i32 8
  %2 = bitcast i8** %priv to %struct.kobject**
  %3 = load %struct.kobject*, %struct.kobject** %2, align 8
  %store = getelementptr inbounds %struct.sysfs_ops, %struct.sysfs_ops* %call, i64 0, i32 1
  %4 = load i64 (%struct.kobject*, %struct.attribute*, i8*, i64)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)** %store, align 8
  %priv3 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 8
  %5 = bitcast i8** %priv3 to %struct.attribute**
  %6 = load %struct.attribute*, %struct.attribute** %5, align 8
  %call4 = call i64 %4(%struct.kobject* noundef %3, %struct.attribute* noundef %6, i8* noundef %buf, i64 noundef %count) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call4, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.sysfs_ops* @sysfs_file_ops(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #3 {
entry:
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %priv = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 8
  %1 = bitcast i8** %priv to %struct.kobject**
  %2 = load %struct.kobject*, %struct.kobject** %1, align 8
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %2, i64 0, i32 4
  %3 = load %struct.kobj_type*, %struct.kobj_type** %ktype, align 8
  %tobool1.not = icmp eq %struct.kobj_type* %3, null
  br i1 %tobool1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %sysfs_ops = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %3, i64 0, i32 1
  %4 = load %struct.sysfs_ops*, %struct.sysfs_ops** %sysfs_ops, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.sysfs_ops* [ %4, %cond.true ], [ null, %entry ]
  ret %struct.sysfs_ops* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @sysfs_kf_seq_show(%struct.seq_file* nocapture noundef %sf, i8* nocapture noundef readnone %v) #0 {
entry:
  %buf = alloca i8*, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %sf, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.kernfs_open_file**
  %1 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %0, align 8
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %1, i64 0, i32 0
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %2, i64 0, i32 2
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %priv = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %3, i64 0, i32 8
  %4 = bitcast i8** %priv to %struct.kobject**
  %5 = load %struct.kobject*, %struct.kobject** %4, align 8
  %call = call fastcc %struct.sysfs_ops* @sysfs_file_ops(%struct.kernfs_node* noundef %2) #9
  %6 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #11
  store i8* null, i8** %buf, align 8, !annotation !9
  %call2 = call fastcc i64 @seq_get_buf(%struct.seq_file* noundef %sf, i8** noundef nonnull %buf) #9
  %cmp = icmp ult i64 %call2, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @seq_commit(%struct.seq_file* noundef %sf, i32 noundef -1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %buf, align 8
  %call3 = call i8* @memset(i8* noundef %7, i32 noundef 0, i64 noundef 4096) #10
  %show = getelementptr inbounds %struct.sysfs_ops, %struct.sysfs_ops* %call, i64 0, i32 0
  %8 = load i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*)** %show, align 8
  %tobool.not = icmp eq i64 (%struct.kobject*, %struct.attribute*, i8*)* %8, null
  br i1 %tobool.not, label %if.end12, label %if.then4

if.then4:                                         ; preds = %if.end
  %9 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %priv7 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %9, i64 0, i32 8
  %10 = bitcast i8** %priv7 to %struct.attribute**
  %11 = load %struct.attribute*, %struct.attribute** %10, align 8
  %call8 = call i64 %8(%struct.kobject* noundef %5, %struct.attribute* noundef %11, i8* noundef %7) #10
  %cmp9 = icmp slt i64 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then4
  %conv = trunc i64 %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.then4, %if.end
  %count.0 = phi i64 [ %call8, %if.then4 ], [ %call2, %if.end ]
  %cmp13 = icmp sgt i64 %count.0, 4095
  br i1 %cmp13, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end12
  %12 = load i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*)** %show, align 8
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 (%struct.kobject*, %struct.attribute*, i8*)* noundef %12) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end12
  %count.1 = phi i64 [ 4095, %do.end ], [ %count.0, %if.end12 ]
  %conv19 = trunc i64 %count.1 to i32
  call fastcc void @seq_commit(%struct.seq_file* noundef %sf, i32 noundef %conv19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then10, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %conv, %if.then10 ], [ 0, %if.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @seq_get_buf(%struct.seq_file* nocapture noundef readonly %m, i8** nocapture noundef writeonly %bufp) unnamed_addr #0 {
entry:
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %do.body2, label %do.end5, !prof !7

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/seq_file.h\22; .popsection; .long 14472b - 14470b; .short 65; .short 0; .popsection; 14471: brk 0x800", ""() #11, !srcloc !17
  unreachable

do.end5:                                          ; preds = %entry
  %cmp8 = icmp ult i64 %0, %1
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %do.end5
  %buf = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 %0
  br label %if.end12

if.end12:                                         ; preds = %do.end5, %if.then10
  %storemerge = phi i8* [ %add.ptr, %if.then10 ], [ null, %do.end5 ]
  store i8* %storemerge, i8** %bufp, align 8
  %3 = load i64, i64* %size, align 8
  %4 = load i64, i64* %count, align 8
  %sub = sub i64 %3, %4
  ret i64 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @seq_commit(%struct.seq_file* nocapture noundef %m, i32 noundef %num) unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %num, 0
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %0 = load i64, i64* %size, align 8
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  store i64 %0, i64* %count, align 8
  br label %if.end15

do.body:                                          ; preds = %entry
  %count1 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %1 = load i64, i64* %count1, align 8
  %conv22 = zext i32 %num to i64
  %add = add i64 %1, %conv22
  %size2 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %2 = load i64, i64* %size2, align 8
  %cmp3 = icmp ugt i64 %add, %2
  br i1 %cmp3, label %do.body8, label %do.end11, !prof !7

do.body8:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/seq_file.h\22; .popsection; .long 14472b - 14470b; .short 88; .short 0; .popsection; 14471: brk 0x800", ""() #11, !srcloc !18
  unreachable

do.end11:                                         ; preds = %do.body
  store i64 %add, i64* %count1, align 8
  br label %if.end15

if.end15:                                         ; preds = %do.end11, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @sysfs_kf_bin_open(%struct.kernfs_open_file* nocapture noundef readonly %of) #0 {
entry:
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 0
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %priv = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 8
  %1 = bitcast i8** %priv to %struct.bin_attribute**
  %2 = load %struct.bin_attribute*, %struct.bin_attribute** %1, align 8
  %f_mapping = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %2, i64 0, i32 3
  %3 = load %struct.address_space* ()*, %struct.address_space* ()** %f_mapping, align 8
  %tobool.not = icmp eq %struct.address_space* ()* %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.address_space* %3() #10
  %file = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 1
  %4 = load %struct.file*, %struct.file** %file, align 8
  %f_mapping2 = getelementptr inbounds %struct.file, %struct.file* %4, i64 0, i32 17
  store %struct.address_space* %call, %struct.address_space** %f_mapping2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @sysfs_kf_bin_read(%struct.kernfs_open_file* nocapture noundef readonly %of, i8* noundef %buf, i64 noundef %count, i64 noundef %pos) #0 {
entry:
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 0
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %priv = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 8
  %1 = bitcast i8** %priv to %struct.bin_attribute**
  %2 = load %struct.bin_attribute*, %struct.bin_attribute** %1, align 8
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 2
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %priv2 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %3, i64 0, i32 8
  %4 = bitcast i8** %priv2 to %struct.kobject**
  %5 = load %struct.kobject*, %struct.kobject** %4, align 8
  %file = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 1
  %6 = load %struct.file*, %struct.file** %file, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %6) #9
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 11
  %7 = load i64, i64* %i_size, align 8
  %tobool.not = icmp eq i64 %count, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq i64 %7, 0
  br i1 %tobool3.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.end
  %cmp.not = icmp sgt i64 %7, %pos
  br i1 %cmp.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.then4
  %add = add i64 %pos, %count
  %cmp7 = icmp ugt i64 %add, %7
  %sub = sub i64 %7, %pos
  %spec.select = select i1 %cmp7, i64 %sub, i64 %count
  br label %if.end10

if.end10:                                         ; preds = %if.end6, %if.end
  %count.addr.0 = phi i64 [ %count, %if.end ], [ %spec.select, %if.end6 ]
  %read = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %2, i64 0, i32 4
  %8 = load i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %read, align 8
  %tobool11.not = icmp eq i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* %8, null
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end10
  %call16 = call i64 %8(%struct.file* noundef %6, %struct.kobject* noundef %5, %struct.bin_attribute* noundef %2, i8* noundef %buf, i64 noundef %pos, i64 noundef %count.addr.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then4, %entry, %if.end13
  %retval.0 = phi i64 [ %call16, %if.end13 ], [ 0, %entry ], [ 0, %if.then4 ], [ -5, %if.end10 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @sysfs_kf_bin_write(%struct.kernfs_open_file* nocapture noundef readonly %of, i8* noundef %buf, i64 noundef %count, i64 noundef %pos) #0 {
entry:
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 0
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %priv = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 8
  %1 = bitcast i8** %priv to %struct.bin_attribute**
  %2 = load %struct.bin_attribute*, %struct.bin_attribute** %1, align 8
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 2
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %priv2 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %3, i64 0, i32 8
  %4 = bitcast i8** %priv2 to %struct.kobject**
  %5 = load %struct.kobject*, %struct.kobject** %4, align 8
  %file = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 1
  %6 = load %struct.file*, %struct.file** %file, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %6) #9
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 11
  %7 = load i64, i64* %i_size, align 8
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %cmp.not = icmp sgt i64 %7, %pos
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %sub = sub i64 %7, %pos
  %cmp4 = icmp sgt i64 %sub, %count
  %cond = select i1 %cmp4, i64 %count, i64 %sub
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %count.addr.0 = phi i64 [ %cond, %if.end ], [ %count, %entry ]
  %tobool6.not = icmp eq i64 %count.addr.0, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %write = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %2, i64 0, i32 5
  %8 = load i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %write, align 8
  %tobool9.not = icmp eq i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* %8, null
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end8
  %call14 = call i64 %8(%struct.file* noundef %6, %struct.kobject* noundef %5, %struct.bin_attribute* noundef %2, i8* noundef %buf, i64 noundef %pos, i64 noundef %count.addr.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5, %if.then, %if.end11
  %retval.0 = phi i64 [ %call14, %if.end11 ], [ -27, %if.then ], [ 0, %if.end5 ], [ -5, %if.end8 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @sysfs_kf_bin_mmap(%struct.kernfs_open_file* nocapture noundef readonly %of, %struct.vm_area_struct* noundef %vma) #0 {
entry:
  %kn = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 0
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %priv = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 8
  %1 = bitcast i8** %priv to %struct.bin_attribute**
  %2 = load %struct.bin_attribute*, %struct.bin_attribute** %1, align 8
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 2
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %priv2 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %3, i64 0, i32 8
  %4 = bitcast i8** %priv2 to %struct.kobject**
  %5 = load %struct.kobject*, %struct.kobject** %4, align 8
  %mmap = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %2, i64 0, i32 6
  %6 = load i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)** %mmap, align 8
  %file = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %of, i64 0, i32 1
  %7 = load %struct.file*, %struct.file** %file, align 8
  %call = call i32 %6(%struct.file* noundef %7, %struct.kobject* noundef %5, %struct.bin_attribute* noundef %2, %struct.vm_area_struct* noundef %vma) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #3 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{i64 2152811581}
!9 = !{!"auto-init"}
!10 = !{i64 2152813308}
!11 = !{i64 2152815963}
!12 = !{i64 2152817899}
!13 = !{i64 2152820472}
!14 = !{i64 2152822953}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2152806016}
!17 = !{i64 2152118045}
!18 = !{i64 2152119635}
