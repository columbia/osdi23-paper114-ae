; ModuleID = 'lib/seq_buf.c'
source_filename = "lib/seq_buf.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.32, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.11 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.17, %union.anon.18, i32 }
%struct.request_queue = type opaque
%union.anon.17 = type { %struct.list_head }
%union.anon.18 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.19 }
%struct.anon.19 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.23 }
%struct.anon.23 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.31, i32, [12 x i8] }
%union.anon.31 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.32 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.33, %union.anon.48, %struct.atomic_t, [8 x i8] }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.48 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.49, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.49 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.60, %struct.list_head, %struct.list_head, %union.anon.61 }
%struct.lockref = type { %union.anon.58 }
%union.anon.58 = type { i64 }
%union.anon.60 = type { %struct.list_head }
%union.anon.61 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.50, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.51, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.52, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.57, i32, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.50 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.51 = type { %struct.callback_head }
%union.anon.52 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.35 }
%union.anon.35 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.57 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.55 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.53, %struct.qspinlock }
%union.anon.53 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.55 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.16 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.16 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_buf = type { i8*, i64, i64, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str = private unnamed_addr constant [10 x i8] c"%s%p: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s%.8x: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_buf_print_seq(%struct.seq_file* noundef %m, %struct.seq_buf* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @seq_buf_used(%struct.seq_buf* noundef %s) #9
  %buffer = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 0
  %0 = load i8*, i8** %buffer, align 8
  %conv = zext i32 %call to i64
  %call1 = call i32 @seq_write(%struct.seq_file* noundef %m, i8* noundef %0, i64 noundef %conv) #10
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @seq_buf_used(%struct.seq_buf* nocapture noundef readonly %s) unnamed_addr #2 {
entry:
  %len = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 2
  %0 = load i64, i64* %len, align 8
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp = icmp ult i64 %0, %1
  %cond = select i1 %cmp, i64 %0, i64 %1
  %conv = trunc i64 %cond to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(%struct.seq_file* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_buf_vprintf(%struct.seq_buf* nocapture noundef %s, i8* noundef %fmt, %"struct.std::__va_list"* nocapture noundef readonly %args) local_unnamed_addr #0 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 1
  %0 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/seq_buf.c\22; .popsection; .long 14472b - 14470b; .short 61; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !8
  %.pre = load i64, i64* %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i64 [ %.pre, %if.then ], [ %0, %entry ]
  %len14 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 2
  %2 = load i64, i64* %len14, align 8
  %cmp16 = icmp ugt i64 %1, %2
  br i1 %cmp16, label %if.then18, label %if.end32

if.then18:                                        ; preds = %if.end
  %buffer = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 0
  %3 = load i8*, i8** %buffer, align 8
  %add.ptr = getelementptr i8, i8* %3, i64 %2
  %sub = sub i64 %1, %2
  %4 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #11
  %5 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %4, i8* noundef align 8 dereferenceable(32) %5, i64 32, i1 false)
  %call = call i32 @vsnprintf(i8* noundef %add.ptr, i64 noundef %sub, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #11
  %6 = load i64, i64* %len14, align 8
  %conv23 = sext i32 %call to i64
  %add = add i64 %6, %conv23
  %7 = load i64, i64* %size, align 8
  %cmp25 = icmp ult i64 %add, %7
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.then18
  store i64 %add, i64* %len14, align 8
  br label %cleanup

if.end32:                                         ; preds = %if.then18, %if.end
  call fastcc void @seq_buf_set_overflow(%struct.seq_buf* noundef %s) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then27
  %retval.0 = phi i32 [ 0, %if.then27 ], [ -1, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @seq_buf_set_overflow(%struct.seq_buf* nocapture noundef %s) unnamed_addr #5 {
entry:
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 1
  %0 = load i64, i64* %size, align 8
  %add = add i64 %0, 1
  %len = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 2
  store i64 %add, i64* %len, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_buf_printf(%struct.seq_buf* nocapture noundef %s, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %ap = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %ap to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @seq_buf_vprintf(%struct.seq_buf* noundef %s, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_buf_puts(%struct.seq_buf* nocapture noundef %s, i8* noundef %str) local_unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %str) #10
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 1
  %0 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/seq_buf.c\22; .popsection; .long 14472b - 14470b; .short 146; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %add = add i64 %call, 1
  %call14 = call fastcc i1 @seq_buf_can_fit(%struct.seq_buf* noundef %s, i64 noundef %add) #9
  br i1 %call14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end
  %buffer = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  %len16 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 2
  %2 = load i64, i64* %len16, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 %2
  %call17 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %str, i64 noundef %add) #10
  %3 = load i64, i64* %len16, align 8
  %add19 = add i64 %3, %call
  store i64 %add19, i64* %len16, align 8
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call fastcc void @seq_buf_set_overflow(%struct.seq_buf* noundef %s) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ -1, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @seq_buf_can_fit(%struct.seq_buf* nocapture noundef readonly %s, i64 noundef %len) unnamed_addr #2 {
entry:
  %len1 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 2
  %0 = load i64, i64* %len1, align 8
  %add = add i64 %0, %len
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp = icmp ule i64 %add, %1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_buf_putc(%struct.seq_buf* nocapture noundef %s, i8 noundef %c) local_unnamed_addr #0 {
entry:
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 1
  %0 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/seq_buf.c\22; .popsection; .long 14472b - 14470b; .short 172; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc i1 @seq_buf_can_fit(%struct.seq_buf* noundef %s, i64 noundef 1) #9
  br i1 %call, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  %buffer = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  %len = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 2
  %2 = load i64, i64* %len, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %len, align 8
  %arrayidx = getelementptr i8, i8* %1, i64 %2
  store i8 %c, i8* %arrayidx, align 1
  br label %return

if.end15:                                         ; preds = %if.end
  call fastcc void @seq_buf_set_overflow(%struct.seq_buf* noundef %s) #9
  br label %return

return:                                           ; preds = %if.end15, %if.then14
  %retval.0 = phi i32 [ 0, %if.then14 ], [ -1, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_buf_putmem(%struct.seq_buf* nocapture noundef %s, i8* noundef %mem, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 1
  %0 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/seq_buf.c\22; .popsection; .long 14472b - 14470b; .short 196; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conv14 = zext i32 %len to i64
  %call = call fastcc i1 @seq_buf_can_fit(%struct.seq_buf* noundef %s, i64 noundef %conv14) #9
  br i1 %call, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end
  %buffer = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  %len16 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 2
  %2 = load i64, i64* %len16, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 %2
  %call18 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %mem, i64 noundef %conv14) #10
  %3 = load i64, i64* %len16, align 8
  %add = add i64 %3, %conv14
  store i64 %add, i64* %len16, align 8
  br label %return

if.end21:                                         ; preds = %if.end
  call fastcc void @seq_buf_set_overflow(%struct.seq_buf* noundef %s) #9
  br label %return

return:                                           ; preds = %if.end21, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ -1, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_buf_putmem_hex(%struct.seq_buf* nocapture noundef %s, i8* nocapture noundef readonly %mem, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %hex = alloca [17 x i8], align 4
  %0 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 17, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(17) %0, i8 0, i64 17, i1 false), !annotation !9
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/seq_buf.c\22; .popsection; .long 14472b - 14470b; .short 230; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool14.not109 = icmp eq i32 %len, 0
  br i1 %tobool14.not109, label %cleanup, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end
  %arrayidx24 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 0
  %arrayidx33 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 1
  %arrayidx24.1 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 2
  %arrayidx33.1 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 3
  %arrayidx24.2 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 4
  %arrayidx33.2 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 5
  %arrayidx24.3 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 6
  %arrayidx33.3 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 7
  %arrayidx24.4 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 8
  %arrayidx33.4 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 9
  %arrayidx24.5 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 10
  %arrayidx33.5 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 11
  %arrayidx24.6 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 12
  %arrayidx33.6 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 13
  %arrayidx24.7 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 14
  %arrayidx33.7 = getelementptr inbounds [17 x i8], [17 x i8]* %hex, i64 0, i64 15
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end69
  %len.addr.0111 = phi i32 [ %sub70, %if.end69 ], [ %len, %while.body.preheader ]
  %data.0110 = phi i8* [ %add.ptr, %if.end69 ], [ %mem, %while.body.preheader ]
  %cmp16 = icmp ult i32 %len.addr.0111, 8
  %cond = select i1 %cmp16, i32 %len.addr.0111, i32 8
  %i.0108 = add nsw i32 %cond, -1
  %idxprom104 = zext i32 %i.0108 to i64
  %arrayidx = getelementptr i8, i8* %data.0110, i64 %idxprom104
  %2 = load i8, i8* %arrayidx, align 1
  %3 = lshr i8 %2, 4
  %4 = zext i8 %3 to i64
  %arrayidx22 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %4
  %5 = load i8, i8* %arrayidx22, align 1
  store i8 %5, i8* %arrayidx24, align 4
  %6 = and i8 %2, 15
  %7 = zext i8 %6 to i64
  %arrayidx30 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %7
  %8 = load i8, i8* %arrayidx30, align 1
  store i8 %8, i8* %arrayidx33, align 1
  %cmp18 = icmp ugt i32 %cond, 1
  br i1 %cmp18, label %for.body.1, label %for.end

for.body.1:                                       ; preds = %while.body
  %i.0108.1 = add nsw i32 %cond, -2
  %idxprom104.1 = zext i32 %i.0108.1 to i64
  %arrayidx.1 = getelementptr i8, i8* %data.0110, i64 %idxprom104.1
  %9 = load i8, i8* %arrayidx.1, align 1
  %10 = lshr i8 %9, 4
  %11 = zext i8 %10 to i64
  %arrayidx22.1 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %11
  %12 = load i8, i8* %arrayidx22.1, align 1
  store i8 %12, i8* %arrayidx24.1, align 2
  %13 = and i8 %9, 15
  %14 = zext i8 %13 to i64
  %arrayidx30.1 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %14
  %15 = load i8, i8* %arrayidx30.1, align 1
  store i8 %15, i8* %arrayidx33.1, align 1
  %cmp18.1 = icmp ugt i32 %i.0108, 1
  br i1 %cmp18.1, label %for.body.2, label %for.end

for.body.2:                                       ; preds = %for.body.1
  %i.0108.2 = add nsw i32 %cond, -3
  %idxprom104.2 = zext i32 %i.0108.2 to i64
  %arrayidx.2 = getelementptr i8, i8* %data.0110, i64 %idxprom104.2
  %16 = load i8, i8* %arrayidx.2, align 1
  %17 = lshr i8 %16, 4
  %18 = zext i8 %17 to i64
  %arrayidx22.2 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %18
  %19 = load i8, i8* %arrayidx22.2, align 1
  store i8 %19, i8* %arrayidx24.2, align 4
  %20 = and i8 %16, 15
  %21 = zext i8 %20 to i64
  %arrayidx30.2 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %21
  %22 = load i8, i8* %arrayidx30.2, align 1
  store i8 %22, i8* %arrayidx33.2, align 1
  %cmp18.2 = icmp ugt i32 %i.0108.1, 1
  br i1 %cmp18.2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.body.2
  %i.0108.3 = add nsw i32 %cond, -4
  %idxprom104.3 = zext i32 %i.0108.3 to i64
  %arrayidx.3 = getelementptr i8, i8* %data.0110, i64 %idxprom104.3
  %23 = load i8, i8* %arrayidx.3, align 1
  %24 = lshr i8 %23, 4
  %25 = zext i8 %24 to i64
  %arrayidx22.3 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %25
  %26 = load i8, i8* %arrayidx22.3, align 1
  store i8 %26, i8* %arrayidx24.3, align 2
  %27 = and i8 %23, 15
  %28 = zext i8 %27 to i64
  %arrayidx30.3 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %28
  %29 = load i8, i8* %arrayidx30.3, align 1
  store i8 %29, i8* %arrayidx33.3, align 1
  %cmp18.3 = icmp ugt i32 %i.0108.2, 1
  br i1 %cmp18.3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.body.3
  %i.0108.4 = add nsw i32 %cond, -5
  %idxprom104.4 = zext i32 %i.0108.4 to i64
  %arrayidx.4 = getelementptr i8, i8* %data.0110, i64 %idxprom104.4
  %30 = load i8, i8* %arrayidx.4, align 1
  %31 = lshr i8 %30, 4
  %32 = zext i8 %31 to i64
  %arrayidx22.4 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %32
  %33 = load i8, i8* %arrayidx22.4, align 1
  store i8 %33, i8* %arrayidx24.4, align 4
  %34 = and i8 %30, 15
  %35 = zext i8 %34 to i64
  %arrayidx30.4 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %35
  %36 = load i8, i8* %arrayidx30.4, align 1
  store i8 %36, i8* %arrayidx33.4, align 1
  %cmp18.4 = icmp ugt i32 %i.0108.3, 1
  br i1 %cmp18.4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.body.4
  %i.0108.5 = add nsw i32 %cond, -6
  %idxprom104.5 = zext i32 %i.0108.5 to i64
  %arrayidx.5 = getelementptr i8, i8* %data.0110, i64 %idxprom104.5
  %37 = load i8, i8* %arrayidx.5, align 1
  %38 = lshr i8 %37, 4
  %39 = zext i8 %38 to i64
  %arrayidx22.5 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %39
  %40 = load i8, i8* %arrayidx22.5, align 1
  store i8 %40, i8* %arrayidx24.5, align 2
  %41 = and i8 %37, 15
  %42 = zext i8 %41 to i64
  %arrayidx30.5 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %42
  %43 = load i8, i8* %arrayidx30.5, align 1
  store i8 %43, i8* %arrayidx33.5, align 1
  %cmp18.5 = icmp ugt i32 %i.0108.4, 1
  br i1 %cmp18.5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.body.5
  %i.0108.6 = add nsw i32 %cond, -7
  %idxprom104.6 = zext i32 %i.0108.6 to i64
  %arrayidx.6 = getelementptr i8, i8* %data.0110, i64 %idxprom104.6
  %44 = load i8, i8* %arrayidx.6, align 1
  %45 = lshr i8 %44, 4
  %46 = zext i8 %45 to i64
  %arrayidx22.6 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %46
  %47 = load i8, i8* %arrayidx22.6, align 1
  store i8 %47, i8* %arrayidx24.6, align 4
  %48 = and i8 %44, 15
  %49 = zext i8 %48 to i64
  %arrayidx30.6 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %49
  %50 = load i8, i8* %arrayidx30.6, align 1
  store i8 %50, i8* %arrayidx33.6, align 1
  %cmp18.6 = icmp ugt i32 %i.0108.5, 1
  br i1 %cmp18.6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.body.6
  %i.0108.7 = add nsw i32 %cond, -8
  %idxprom104.7 = zext i32 %i.0108.7 to i64
  %arrayidx.7 = getelementptr i8, i8* %data.0110, i64 %idxprom104.7
  %51 = load i8, i8* %arrayidx.7, align 1
  %52 = lshr i8 %51, 4
  %53 = zext i8 %52 to i64
  %arrayidx22.7 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %53
  %54 = load i8, i8* %arrayidx22.7, align 1
  store i8 %54, i8* %arrayidx24.7, align 2
  %55 = and i8 %51, 15
  %56 = zext i8 %55 to i64
  %arrayidx30.7 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %56
  %57 = load i8, i8* %arrayidx30.7, align 1
  store i8 %57, i8* %arrayidx33.7, align 1
  br label %for.end

for.end:                                          ; preds = %for.body.7, %for.body.6, %for.body.5, %for.body.4, %for.body.3, %for.body.2, %for.body.1, %while.body
  %indvars.iv.next.lcssa = phi i64 [ 2, %while.body ], [ 4, %for.body.1 ], [ 6, %for.body.2 ], [ 8, %for.body.3 ], [ 10, %for.body.4 ], [ 12, %for.body.5 ], [ 14, %for.body.6 ], [ 16, %for.body.7 ]
  %58 = trunc i64 %indvars.iv.next.lcssa to i32
  %cmp35 = icmp eq i32 %58, 0
  %div = lshr exact i32 %58, 1
  %cmp37 = icmp ugt i32 %div, %len.addr.0111
  %or.cond = select i1 %cmp35, i1 true, i1 %cmp37
  br i1 %or.cond, label %if.then51, label %if.end63, !prof !14

if.then51:                                        ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/seq_buf.c\22; .popsection; .long 14472b - 14470b; .short 244; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !15
  br label %cleanup

if.end63:                                         ; preds = %for.end
  %inc64 = or i32 %58, 1
  %arrayidx66 = getelementptr [17 x i8], [17 x i8]* %hex, i64 0, i64 %indvars.iv.next.lcssa
  store i8 32, i8* %arrayidx66, align 2
  %call = call i32 @seq_buf_putmem(%struct.seq_buf* noundef %s, i8* noundef nonnull %0, i32 noundef %inc64) #9
  %call67 = call fastcc i1 @seq_buf_has_overflowed(%struct.seq_buf* noundef %s) #9
  br i1 %call67, label %cleanup, label %if.end69

if.end69:                                         ; preds = %if.end63
  %sub70 = sub i32 %len.addr.0111, %cond
  %idx.ext = zext i32 %cond to i64
  %add.ptr = getelementptr i8, i8* %data.0110, i64 %idx.ext
  %tobool14.not = icmp eq i32 %sub70, 0
  br i1 %tobool14.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.end63, %if.end69, %if.end, %if.then51
  %retval.0 = phi i32 [ 0, %if.then51 ], [ 0, %if.end ], [ -1, %if.end63 ], [ 0, %if.end69 ]
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @seq_buf_has_overflowed(%struct.seq_buf* nocapture noundef readonly %s) unnamed_addr #2 {
entry:
  %len = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 2
  %0 = load i64, i64* %len, align 8
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_buf_path(%struct.seq_buf* nocapture noundef %s, %struct.path* noundef %path, i8* noundef %esc) local_unnamed_addr #0 {
entry:
  %buf = alloca i8*, align 8
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* null, i8** %buf, align 8, !annotation !9
  %call = call fastcc i64 @seq_buf_get_buf(%struct.seq_buf* noundef %s, i8** noundef nonnull %buf) #9
  %size1 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 1
  %1 = load i64, i64* %size1, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/seq_buf.c\22; .popsection; .long 14472b - 14470b; .short 276; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool15.not = icmp eq i64 %call, 0
  br i1 %tobool15.not, label %if.end27, label %if.then16

if.then16:                                        ; preds = %if.end
  %2 = load i8*, i8** %buf, align 8
  %conv17 = trunc i64 %call to i32
  %call18 = call i8* @d_path(%struct.path* noundef %path, i8* noundef %2, i32 noundef %conv17) #10
  %call19 = call fastcc i1 @IS_ERR(i8* noundef %call18) #9
  br i1 %call19, label %if.end27, label %if.then20

if.then20:                                        ; preds = %if.then16
  %call21 = call i8* @mangle_path(i8* noundef %2, i8* noundef %call18, i8* noundef %esc) #10
  %tobool22.not = icmp eq i8* %call21, null
  %sub.ptr.lhs.cast = ptrtoint i8* %call21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv24 = trunc i64 %sub.ptr.sub to i32
  %res.0 = select i1 %tobool22.not, i32 -1, i32 %conv24
  br label %if.end27

if.end27:                                         ; preds = %if.then16, %if.then20, %if.end
  %res.2 = phi i32 [ -1, %if.end ], [ -1, %if.then16 ], [ %res.0, %if.then20 ]
  call fastcc void @seq_buf_commit(%struct.seq_buf* noundef %s, i32 noundef %res.2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %res.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @seq_buf_get_buf(%struct.seq_buf* nocapture noundef readonly %s, i8** nocapture noundef writeonly %bufp) unnamed_addr #0 {
entry:
  %len = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 2
  %0 = load i64, i64* %len, align 8
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %add = add i64 %1, 1
  %cmp = icmp ugt i64 %0, %add
  br i1 %cmp, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/seq_buf.h\22; .popsection; .long 14472b - 14470b; .short 109; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !17
  %.pre = load i64, i64* %len, align 8
  %.pre33 = load i64, i64* %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i64 [ %.pre33, %if.then ], [ %1, %entry ]
  %3 = phi i64 [ %.pre, %if.then ], [ %0, %entry ]
  %cmp16 = icmp ult i64 %3, %2
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end
  %buffer = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 0
  %4 = load i8*, i8** %buffer, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %3
  store i8* %add.ptr, i8** %bufp, align 8
  %5 = load i64, i64* %size, align 8
  %6 = load i64, i64* %len, align 8
  %sub = sub i64 %5, %6
  br label %return

if.end22:                                         ; preds = %if.end
  store i8* null, i8** %bufp, align 8
  br label %return

return:                                           ; preds = %if.end22, %if.then18
  %retval.0 = phi i64 [ %sub, %if.then18 ], [ 0, %if.end22 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @d_path(%struct.path* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #8 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @mangle_path(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @seq_buf_commit(%struct.seq_buf* nocapture noundef %s, i32 noundef %num) unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %num, 0
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call fastcc void @seq_buf_set_overflow(%struct.seq_buf* noundef %s) #9
  br label %if.end13

do.body:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 2
  %0 = load i64, i64* %len, align 8
  %conv19 = zext i32 %num to i64
  %add = add i64 %0, %conv19
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp1 = icmp ugt i64 %add, %1
  br i1 %cmp1, label %do.body6, label %do.end9, !prof !7

do.body6:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/seq_buf.h\22; .popsection; .long 14472b - 14470b; .short 135; .short 0; .popsection; 14471: brk 0x800", ""() #11, !srcloc !18
  unreachable

do.end9:                                          ; preds = %do.body
  store i64 %add, i64* %len, align 8
  br label %if.end13

if.end13:                                         ; preds = %do.end9, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_buf_to_user(%struct.seq_buf* nocapture noundef %s, i8* noundef %ubuf, i32 noundef %cnt) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %cnt, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @seq_buf_used(%struct.seq_buf* noundef %s) #9
  %conv = sext i32 %call to i64
  %readpos = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 3
  %0 = load i64, i64* %readpos, align 8
  %cmp.not = icmp slt i64 %0, %conv
  br i1 %cmp.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = trunc i64 %0 to i32
  %conv6 = sub i32 %call, %1
  %cmp7 = icmp slt i32 %conv6, %cnt
  %spec.select = select i1 %cmp7, i32 %conv6, i32 %cnt
  %conv12 = sext i32 %spec.select to i64
  %cmp11.i.i = icmp slt i32 %spec.select, 0
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !7

check_copy_size.exit.i:                           ; preds = %if.end3
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !19
  br label %copy_to_user.exit

if.then.i:                                        ; preds = %if.end3
  %buffer = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %s, i64 0, i32 0
  %2 = load i8*, i8** %buffer, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 %0
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %ubuf, i8* noundef %add.ptr, i64 noundef %conv12) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %n.addr.0.i = phi i64 [ %call2.i, %if.then.i ], [ %conv12, %check_copy_size.exit.i ]
  %conv14 = trunc i64 %n.addr.0.i to i32
  %cmp15 = icmp eq i32 %spec.select, %conv14
  br i1 %cmp15, label %cleanup, label %if.end18

if.end18:                                         ; preds = %copy_to_user.exit
  %sub19 = sub i32 %spec.select, %conv14
  %conv20 = sext i32 %sub19 to i64
  %3 = load i64, i64* %readpos, align 8
  %add = add i64 %3, %conv20
  store i64 %add, i64* %readpos, align 8
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end, %entry, %if.end18
  %retval.0 = phi i32 [ %sub19, %if.end18 ], [ 0, %entry ], [ -16, %if.end ], [ -14, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_buf_hex_dump(%struct.seq_buf* nocapture noundef %s, i8* noundef %prefix_str, i32 noundef %prefix_type, i32 noundef %rowsize, i32 noundef %groupsize, i8* noundef %buf, i64 noundef %len, i1 noundef %ascii) local_unnamed_addr #0 {
entry:
  %linebuf = alloca [131 x i8], align 1
  %0 = getelementptr inbounds [131 x i8], [131 x i8]* %linebuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 131, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(131) %0, i8 0, i64 131, i1 false), !annotation !9
  %cmp = icmp ne i32 %rowsize, 16
  %cmp2 = icmp ne i32 %rowsize, 32
  %or.cond = and i1 %cmp, %cmp2
  %spec.store.select = select i1 %or.cond, i32 16, i32 %rowsize
  %cmp553.not = icmp eq i64 %len, 0
  br i1 %cmp553.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %conv = trunc i64 %len to i32
  br label %for.body

for.cond:                                         ; preds = %sw.epilog
  %add = add i32 %spec.store.select, %indvars
  %conv4 = sext i32 %add to i64
  %cmp5 = icmp ult i64 %conv4, %len
  br i1 %cmp5, label %for.body, label %cleanup

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %conv457 = phi i64 [ %conv4, %for.cond ], [ 0, %for.body.preheader ]
  %remaining.056 = phi i32 [ %sub, %for.cond ], [ %conv, %for.body.preheader ]
  %indvars = trunc i64 %conv457 to i32
  %cmp7 = icmp slt i32 %remaining.056, %spec.store.select
  %cond = select i1 %cmp7, i32 %remaining.056, i32 %spec.store.select
  %sub = sub i32 %remaining.056, %spec.store.select
  %add.ptr = getelementptr i8, i8* %buf, i64 %conv457
  %conv9 = sext i32 %cond to i64
  %call = call i32 @hex_dump_to_buffer(i8* noundef %add.ptr, i64 noundef %conv9, i32 noundef %spec.store.select, i32 noundef %groupsize, i8* noundef nonnull %0, i64 noundef 131, i1 noundef %ascii) #10
  switch i32 %prefix_type, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
  ]

sw.bb:                                            ; preds = %for.body
  %call13 = call i32 (%struct.seq_buf*, i8*, ...) @seq_buf_printf(%struct.seq_buf* noundef %s, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef %prefix_str, i8* noundef %add.ptr, i8* noundef nonnull %0) #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.body
  %call16 = call i32 (%struct.seq_buf*, i8*, ...) @seq_buf_printf(%struct.seq_buf* noundef %s, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* noundef %prefix_str, i32 noundef %indvars, i8* noundef nonnull %0) #9
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %call18 = call i32 (%struct.seq_buf*, i8*, ...) @seq_buf_printf(%struct.seq_buf* noundef %s, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef %prefix_str, i8* noundef nonnull %0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb
  %ret.0 = phi i32 [ %call18, %sw.default ], [ %call16, %sw.bb14 ], [ %call13, %sw.bb ]
  %tobool19.not = icmp eq i32 %ret.0, 0
  br i1 %tobool19.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %sw.epilog, %for.cond, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.cond ], [ %ret.0, %sw.epilog ]
  call void @llvm.lifetime.end.p0i8(i64 131, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(i8* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #9
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #9
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #10
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #11, !srcloc !20
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #11, !srcloc !21
  call void asm sideeffect "hint #20", "~{memory}"() #11, !srcloc !22
  ret i8* %2
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }

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
!8 = !{i64 2151838037}
!9 = !{!"auto-init"}
!10 = !{i64 2151839749}
!11 = !{i64 2151841312}
!12 = !{i64 2151842875}
!13 = !{i64 2151844466}
!14 = !{!"branch_weights", i32 2002, i32 2000}
!15 = !{i64 2151848446}
!16 = !{i64 2151850020}
!17 = !{i64 2151830729}
!18 = !{i64 2151836361}
!19 = !{i64 2149044104}
!20 = !{i64 2986594, i64 2986677, i64 2986901, i64 2987121, i64 2987144}
!21 = !{i64 2991296, i64 2991320}
!22 = !{i64 2150790754}
