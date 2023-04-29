; ModuleID = 'lib/sbitmap.c'
source_filename = "lib/sbitmap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.cpumask = type { [4 x i64] }
%struct.kmem_cache = type opaque
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.atomic64_t = type { i64 }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.sbq_wait = type { %struct.sbitmap_queue*, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@.str = private unnamed_addr constant [10 x i8] c"depth=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"busy=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"cleared=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"bits_per_word=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"map_nr=%u\0A\00", align 1
@sbitmap_queue_init_node.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"&sbq->ws[i].wait\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"alloc_hint={\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"wake_batch=%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"wake_index=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"ws_active=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"ws={\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"\09{.wait_cnt=%d, .wait=%s},\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"round_robin=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"min_shallow_depth=%u\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"%08x:\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sbitmap_init_node(%struct.sbitmap* nocapture noundef %sb, i32 noundef %depth, i32 noundef %shift, i32 noundef %flags, i32 %node, i1 noundef %round_robin, i1 noundef %alloc_hint) local_unnamed_addr #0 {
entry:
  %frombool = zext i1 %round_robin to i8
  %cmp = icmp slt i32 %shift, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @sbitmap_calculate_shift(i32 noundef %depth) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %shift.addr.0 = phi i32 [ %call, %if.then ], [ %shift, %entry ]
  %shl = shl nuw i32 1, %shift.addr.0
  %cmp2 = icmp ugt i32 %shift.addr.0, 6
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %shift5 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 1
  store i32 %shift.addr.0, i32* %shift5, align 4
  %depth6 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 0
  store i32 %depth, i32* %depth6, align 8
  %add = add i32 %depth, -1
  %sub = add i32 %add, %shl
  %div = lshr i32 %sub, %shift.addr.0
  %map_nr = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 2
  store i32 %div, i32* %map_nr, align 8
  %round_robin8 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 3
  store i8 %frombool, i8* %round_robin8, align 4
  %cmp10 = icmp eq i32 %depth, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end4
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  store %struct.sbitmap_word* null, %struct.sbitmap_word** %map, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  br i1 %alloc_hint, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %call15 = call fastcc i32 @init_alloc_hint(%struct.sbitmap* noundef %sb, i32 noundef %flags) #12
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end20_crit_edge, label %cleanup

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  %.pre = load i32, i32* %map_nr, align 8
  br label %if.end20

if.else:                                          ; preds = %if.end12
  %alloc_hint19 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 5
  store i32* null, i32** %alloc_hint19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %if.else
  %0 = phi i32 [ %.pre, %if.then14.if.end20_crit_edge ], [ %div, %if.else ]
  %conv = zext i32 %0 to i64
  %call22 = call fastcc i8* @kcalloc_node(i64 noundef %conv, i32 noundef %flags) #12
  %map23 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  %1 = bitcast %struct.sbitmap_word** %map23 to i8**
  store i8* %call22, i8** %1, align 8
  %tobool25.not = icmp eq i8* %call22, null
  br i1 %tobool25.not, label %if.then26, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end20
  %2 = load i32, i32* %map_nr, align 8
  %cmp3078.not = icmp eq i32 %2, 0
  br i1 %cmp3078.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %3 = bitcast i8* %call22 to %struct.sbitmap_word*
  br label %for.body

if.then26:                                        ; preds = %if.end20
  %alloc_hint27 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 5
  %4 = bitcast i32** %alloc_hint27 to i8**
  %5 = load i8*, i8** %4, align 8
  call void @free_percpu(i8* noundef %5) #13
  br label %cleanup

for.body:                                         ; preds = %for.body.preheader, %for.body
  %6 = phi %struct.sbitmap_word* [ %7, %for.body ], [ %3, %for.body.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.preheader ]
  %depth.addr.080 = phi i32 [ %conv43, %for.body ], [ %depth, %for.body.preheader ]
  %cmp32 = icmp ult i32 %depth.addr.080, %shl
  %cond = select i1 %cmp32, i32 %depth.addr.080, i32 %shl
  %conv34 = zext i32 %cond to i64
  %depth36 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %6, i64 %indvars.iv, i32 0
  store i64 %conv34, i64* %depth36, align 64
  %7 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map23, align 8
  %depth40 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %7, i64 %indvars.iv, i32 0
  %8 = load i64, i64* %depth40, align 64
  %9 = trunc i64 %8 to i32
  %conv43 = sub i32 %depth.addr.080, %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32, i32* %map_nr, align 8
  %11 = zext i32 %10 to i64
  %cmp30 = icmp ult i64 %indvars.iv.next, %11
  br i1 %cmp30, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %if.then14, %if.end, %if.then26, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ -12, %if.then26 ], [ -22, %if.end ], [ -12, %if.then14 ], [ 0, %for.cond.preheader ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i32 @sbitmap_calculate_shift(i32 noundef %depth) unnamed_addr #1 {
entry:
  %cmp = icmp ugt i32 %depth, 3
  br i1 %cmp, label %while.cond, label %if.end

while.cond:                                       ; preds = %entry, %while.cond
  %shift.0 = phi i32 [ %dec, %while.cond ], [ 6, %entry ]
  %shl = shl i32 4, %shift.0
  %cmp1 = icmp ugt i32 %shl, %depth
  %dec = add i32 %shift.0, -1
  br i1 %cmp1, label %while.cond, label %if.end

if.end:                                           ; preds = %while.cond, %entry
  %shift.1 = phi i32 [ 6, %entry ], [ %shift.0, %while.cond ]
  ret i32 %shift.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @init_alloc_hint(%struct.sbitmap* nocapture noundef %sb, i32 noundef %flags) unnamed_addr #0 {
entry:
  %depth1 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 0
  %0 = load i32, i32* %depth1, align 8
  %call = call i8* @__alloc_percpu_gfp(i64 noundef 4, i64 noundef 4, i32 noundef %flags) #13
  %alloc_hint = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 5
  %1 = bitcast i32** %alloc_hint to i8**
  store i8* %call, i8** %1, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq i32 %0, 0
  br i1 %tobool3.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %round_robin = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 3
  %2 = load i8, i8* %round_robin, align 4, !range !8
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %land.lhs.true
  %call622 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp23 = icmp ult i32 %call622, %3
  br i1 %cmp23, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %call624 = phi i32 [ %call6, %for.body ], [ %call622, %for.cond.preheader ]
  %call7 = call i32 @prandom_u32() #13
  %rem = urem i32 %call7, %0
  %4 = load i32*, i32** %alloc_hint, align 8
  %5 = ptrtoint i32* %4 to i64
  %idxprom = sext i32 %call624 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %add = add i64 %6, %5
  %7 = inttoptr i64 %add to i32*
  store i32 %rem, i32* %7, align 4
  %call6 = call i32 @cpumask_next(i32 noundef %call624, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %8 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call6, %8
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %if.end, %land.lhs.true, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %for.cond.preheader ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc_node(i64 noundef %n, i32 noundef %flags) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 256
  %call = call fastcc i8* @kmalloc_array_node(i64 noundef %n, i32 noundef %or) #12
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sbitmap_resize(%struct.sbitmap* nocapture noundef %sb, i32 noundef %depth) local_unnamed_addr #0 {
entry:
  %shift = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 1
  %0 = load i32, i32* %shift, align 4
  %shl = shl nuw i32 1, %0
  %map_nr = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 2
  %1 = load i32, i32* %map_nr, align 8
  %cmp47.not = icmp eq i32 %1, 0
  br i1 %cmp47.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %2 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map, align 8
  %arrayidx = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %2, i64 %indvars.iv
  %call = call fastcc i1 @sbitmap_deferred_clear(%struct.sbitmap_word* noundef %arrayidx) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, i32* %map_nr, align 8
  %4 = zext i32 %3 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %depth1 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 0
  store i32 %depth, i32* %depth1, align 8
  %add = add i32 %depth, -1
  %sub = add i32 %add, %shl
  %div = lshr i32 %sub, %0
  store i32 %div, i32* %map_nr, align 8
  %cmp649.not = icmp eq i32 %div, 0
  br i1 %cmp649.not, label %for.end22, label %for.body7.lr.ph

for.body7.lr.ph:                                  ; preds = %for.end
  %map9 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  %.pre = load %struct.sbitmap_word*, %struct.sbitmap_word** %map9, align 8
  br label %for.body7

for.body7:                                        ; preds = %for.body7.lr.ph, %for.body7
  %5 = phi %struct.sbitmap_word* [ %.pre, %for.body7.lr.ph ], [ %6, %for.body7 ]
  %indvars.iv53 = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next54, %for.body7 ]
  %depth.addr.051 = phi i32 [ %depth, %for.body7.lr.ph ], [ %conv19, %for.body7 ]
  %cmp8 = icmp ult i32 %depth.addr.051, %shl
  %cond = select i1 %cmp8, i32 %depth.addr.051, i32 %shl
  %conv = zext i32 %cond to i64
  %depth12 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %5, i64 %indvars.iv53, i32 0
  store i64 %conv, i64* %depth12, align 64
  %6 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map9, align 8
  %depth16 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %6, i64 %indvars.iv53, i32 0
  %7 = load i64, i64* %depth16, align 64
  %8 = trunc i64 %7 to i32
  %conv19 = sub i32 %depth.addr.051, %8
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %9 = load i32, i32* %map_nr, align 8
  %10 = zext i32 %9 to i64
  %cmp6 = icmp ult i64 %indvars.iv.next54, %10
  br i1 %cmp6, label %for.body7, label %for.end22

for.end22:                                        ; preds = %for.body7, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @sbitmap_deferred_clear(%struct.sbitmap_word* noundef %map) unnamed_addr #0 {
entry:
  %cleared = getelementptr inbounds %struct.sbitmap_word, %struct.sbitmap_word* %map, i64 0, i32 4
  %0 = load volatile i64, i64* %cleared, align 64
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast i64* %cleared to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %1) #13
  %word = getelementptr inbounds %struct.sbitmap_word, %struct.sbitmap_word* %map, i64 0, i32 2
  %2 = bitcast i64* %word to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %call11.i, %struct.atomic64_t* noundef %2) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %3 = xor i1 %tobool.not, true
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sbitmap_get(%struct.sbitmap* noundef %sb) local_unnamed_addr #0 {
entry:
  %alloc_hint = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 5
  %0 = load i32*, i32** %alloc_hint, align 8
  %tobool.not = icmp eq i32* %0, null
  br i1 %tobool.not, label %if.then, label %do.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/sbitmap.c\22; .popsection; .long 14472b - 14470b; .short 236; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !10
  br label %cleanup

do.end:                                           ; preds = %entry
  %depth27 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 0
  %1 = load volatile i32, i32* %depth27, align 8
  %call = call fastcc i32 @update_alloc_hint_before_get(%struct.sbitmap* noundef %sb, i32 noundef %1) #12
  %call28 = call fastcc i32 @__sbitmap_get(%struct.sbitmap* noundef %sb, i32 noundef %call) #12
  call fastcc void @update_alloc_hint_after_get(%struct.sbitmap* noundef %sb, i32 noundef %1, i32 noundef %call, i32 noundef %call28) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.end
  %retval.0 = phi i32 [ %call28, %do.end ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @update_alloc_hint_before_get(%struct.sbitmap* nocapture noundef readonly %sb, i32 noundef %depth) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %alloc_hint = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 5
  %0 = load i32*, i32** %alloc_hint, align 8
  %1 = ptrtoint i32* %0 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i8*
  %call6 = call fastcc i64 @__percpu_read_32(i8* noundef %2) #12
  %conv = trunc i64 %call6 to i32
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %cmp.not = icmp ult i32 %conv, %depth
  br i1 %cmp.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  %tobool12.not = icmp eq i32 %depth, 0
  br i1 %tobool12.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %call13 = call i32 @prandom_u32() #13
  %rem = urem i32 %call13, %depth
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i32 [ %rem, %cond.true ], [ 0, %if.then ]
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  %3 = load i32*, i32** %alloc_hint, align 8
  %4 = ptrtoint i32* %3 to i64
  %call27 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add28 = add i64 %call27, %4
  %5 = inttoptr i64 %add28 to i8*
  %conv29 = zext i32 %cond to i64
  call fastcc void @__percpu_write_32(i8* noundef %5, i64 noundef %conv29) #12
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %hint.0 = phi i32 [ %cond, %cond.end ], [ %conv, %entry ]
  ret i32 %hint.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__sbitmap_get(%struct.sbitmap* nocapture noundef readonly %sb, i32 noundef %alloc_hint) unnamed_addr #0 {
entry:
  %shift = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 1
  %0 = load i32, i32* %shift, align 4
  %map_nr = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 2
  %1 = load i32, i32* %map_nr, align 8
  %cmp29.not = icmp eq i32 %1, 0
  br i1 %cmp29.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %round_robin = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 3
  %2 = load i8, i8* %round_robin, align 4, !range !8
  %tobool.not = icmp eq i8 %2, 0
  %notmask = shl nsw i32 -1, %0
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub, %alloc_hint
  %alloc_hint.addr.0 = select i1 %tobool.not, i32 0, i32 %and
  %shr = lshr i32 %alloc_hint, %0
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end6
  %index.032 = phi i32 [ %spec.store.select, %if.end6 ], [ %shr, %for.body.preheader ]
  %i.031 = phi i32 [ %inc11, %if.end6 ], [ 0, %for.body.preheader ]
  %alloc_hint.addr.130 = phi i32 [ 0, %if.end6 ], [ %alloc_hint.addr.0, %for.body.preheader ]
  %call = call fastcc i32 @sbitmap_find_bit_in_index(%struct.sbitmap* noundef %sb, i32 noundef %index.032, i32 noundef %alloc_hint.addr.130) #12
  %cmp2.not = icmp eq i32 %call, -1
  br i1 %cmp2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %for.body
  %3 = load i32, i32* %shift, align 4
  %shl5 = shl i32 %index.032, %3
  %add = add i32 %shl5, %call
  br label %for.end

if.end6:                                          ; preds = %for.body
  %inc = add i32 %index.032, 1
  %4 = load i32, i32* %map_nr, align 8
  %cmp8.not = icmp ult i32 %inc, %4
  %spec.store.select = select i1 %cmp8.not, i32 %inc, i32 0
  %inc11 = add nuw i32 %i.031, 1
  %cmp = icmp ult i32 %inc11, %4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end6, %entry, %if.then3
  %nr.1 = phi i32 [ %add, %if.then3 ], [ -1, %entry ], [ -1, %if.end6 ]
  ret i32 %nr.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_alloc_hint_after_get(%struct.sbitmap* nocapture noundef readonly %sb, i32 noundef %depth, i32 noundef %hint, i32 noundef %nr) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %nr, -1
  br i1 %cmp, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %alloc_hint = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 5
  %0 = load i32*, i32** %alloc_hint, align 8
  %1 = ptrtoint i32* %0 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_write_32(i8* noundef %2, i64 noundef 0) #12
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  br label %if.end31

if.else:                                          ; preds = %entry
  %cmp7 = icmp eq i32 %nr, %hint
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %round_robin = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 3
  %3 = load i8, i8* %round_robin, align 4, !range !8
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end31, label %if.then10, !prof !13

if.then10:                                        ; preds = %lor.lhs.false, %if.else
  %add11 = add nuw i32 %nr, 1
  %sub = add i32 %depth, -1
  %cmp12.not = icmp ult i32 %add11, %sub
  %spec.store.select = select i1 %cmp12.not, i32 %add11, i32 0
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  %alloc_hint24 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 5
  %4 = load i32*, i32** %alloc_hint24, align 8
  %5 = ptrtoint i32* %4 to i64
  %call26 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add27 = add i64 %call26, %5
  %6 = inttoptr i64 %add27 to i8*
  %conv28 = zext i32 %spec.store.select to i64
  call fastcc void @__percpu_write_32(i8* noundef %6, i64 noundef %conv28) #12
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  br label %if.end31

if.end31:                                         ; preds = %lor.lhs.false, %if.then10, %do.body1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sbitmap_get_shallow(%struct.sbitmap* noundef %sb, i64 noundef %shallow_depth) local_unnamed_addr #0 {
entry:
  %alloc_hint = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 5
  %0 = load i32*, i32** %alloc_hint, align 8
  %tobool.not = icmp eq i32* %0, null
  br i1 %tobool.not, label %if.then, label %do.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/sbitmap.c\22; .popsection; .long 14472b - 14470b; .short 288; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !20
  br label %cleanup

do.end:                                           ; preds = %entry
  %depth27 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 0
  %1 = load volatile i32, i32* %depth27, align 8
  %call = call fastcc i32 @update_alloc_hint_before_get(%struct.sbitmap* noundef %sb, i32 noundef %1) #12
  %call28 = call fastcc i32 @__sbitmap_get_shallow(%struct.sbitmap* noundef %sb, i32 noundef %call, i64 noundef %shallow_depth) #12
  call fastcc void @update_alloc_hint_after_get(%struct.sbitmap* noundef %sb, i32 noundef %1, i32 noundef %call, i32 noundef %call28) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.end
  %retval.0 = phi i32 [ %call28, %do.end ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__sbitmap_get_shallow(%struct.sbitmap* nocapture noundef readonly %sb, i32 noundef %alloc_hint, i64 noundef %shallow_depth) unnamed_addr #0 {
entry:
  %shift = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 1
  %map_nr = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 2
  %0 = load i32, i32* %map_nr, align 8
  %cmp50.not = icmp eq i32 %0, 0
  br i1 %cmp50.not, label %for.end, label %again.preheader.lr.ph

again.preheader.lr.ph:                            ; preds = %entry
  %1 = load i32, i32* %shift, align 4
  %shr = lshr i32 %alloc_hint, %1
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  br label %again.preheader

again.preheader:                                  ; preds = %again.preheader.lr.ph, %if.end14
  %2 = phi i32 [ %1, %again.preheader.lr.ph ], [ %9, %if.end14 ]
  %alloc_hint.addr.053 = phi i32 [ %alloc_hint, %again.preheader.lr.ph ], [ %spec.select47, %if.end14 ]
  %i.052 = phi i32 [ 0, %again.preheader.lr.ph ], [ %inc21, %if.end14 ]
  %index.051 = phi i32 [ %shr, %again.preheader.lr.ph ], [ %spec.select, %if.end14 ]
  %idxprom = zext i32 %index.051 to i64
  %3 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map, align 8
  %word60 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %3, i64 %idxprom, i32 2
  %depth61 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %3, i64 %idxprom, i32 0
  %4 = load i64, i64* %depth61, align 64
  %cmp462 = icmp ult i64 %4, %shallow_depth
  %cond63 = select i1 %cmp462, i64 %4, i64 %shallow_depth
  %notmask64 = shl nsw i32 -1, %2
  %sub65 = xor i32 %notmask64, -1
  %and66 = and i32 %alloc_hint.addr.053, %sub65
  %call67 = call fastcc i32 @__sbitmap_get_word(i64* noundef %word60, i64 noundef %cond63, i32 noundef %and66, i1 noundef true) #12
  %cmp6.not68 = icmp eq i32 %call67, -1
  br i1 %cmp6.not68, label %if.end, label %if.then

if.then:                                          ; preds = %again.preheader, %if.end.again_crit_edge
  %call.lcssa = phi i32 [ %call, %if.end.again_crit_edge ], [ %call67, %again.preheader ]
  %5 = load i32, i32* %shift, align 4
  %shl8 = shl i32 %index.051, %5
  %add = add i32 %shl8, %call.lcssa
  br label %for.end

if.end:                                           ; preds = %again.preheader, %if.end.again_crit_edge
  %6 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map, align 8
  %arrayidx11 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %6, i64 %idxprom
  %call12 = call fastcc i1 @sbitmap_deferred_clear(%struct.sbitmap_word* noundef %arrayidx11) #12
  br i1 %call12, label %if.end.again_crit_edge, label %if.end14

if.end.again_crit_edge:                           ; preds = %if.end
  %.pre = load i32, i32* %shift, align 4
  %7 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map, align 8
  %word = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %7, i64 %idxprom, i32 2
  %depth = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %7, i64 %idxprom, i32 0
  %8 = load i64, i64* %depth, align 64
  %cmp4 = icmp ult i64 %8, %shallow_depth
  %cond = select i1 %cmp4, i64 %8, i64 %shallow_depth
  %notmask = shl nsw i32 -1, %.pre
  %sub = xor i32 %notmask, -1
  %and = and i32 %alloc_hint.addr.053, %sub
  %call = call fastcc i32 @__sbitmap_get_word(i64* noundef %word, i64 noundef %cond, i32 noundef %and, i1 noundef true) #12
  %cmp6.not = icmp eq i32 %call, -1
  br i1 %cmp6.not, label %if.end, label %if.then

if.end14:                                         ; preds = %if.end
  %inc = add i32 %index.051, 1
  %9 = load i32, i32* %shift, align 4
  %shl16 = shl i32 %inc, %9
  %10 = load i32, i32* %map_nr, align 8
  %cmp18.not = icmp ult i32 %inc, %10
  %spec.select = select i1 %cmp18.not, i32 %inc, i32 0
  %spec.select47 = select i1 %cmp18.not, i32 %shl16, i32 0
  %inc21 = add nuw i32 %i.052, 1
  %cmp = icmp ult i32 %inc21, %10
  br i1 %cmp, label %again.preheader, label %for.end

for.end:                                          ; preds = %if.end14, %entry, %if.then
  %nr.1 = phi i32 [ %add, %if.then ], [ -1, %entry ], [ -1, %if.end14 ]
  ret i32 %nr.1
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i1 @sbitmap_any_bit_set(%struct.sbitmap* nocapture noundef readonly %sb) local_unnamed_addr #3 {
entry:
  %map_nr = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 2
  %0 = load i32, i32* %map_nr, align 8
  %cmp10.not = icmp eq i32 %0, 0
  br i1 %cmp10.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  %1 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map, align 8
  %2 = zext i32 %0 to i64
  %word14 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %1, i64 0, i32 2
  %3 = load i64, i64* %word14, align 64
  %cleared15 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %1, i64 0, i32 4
  %4 = load i64, i64* %cleared15, align 64
  %neg16 = xor i64 %4, -1
  %and17 = and i64 %3, %neg16
  %tobool.not18 = icmp eq i64 %and17, 0
  br i1 %tobool.not18, label %for.cond, label %cleanup

for.cond:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv.next19 = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %for.body.lr.ph ]
  %exitcond.not = icmp eq i64 %indvars.iv.next19, %2
  br i1 %exitcond.not, label %cleanup.loopexit, label %for.body

for.body:                                         ; preds = %for.cond
  %word = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %1, i64 %indvars.iv.next19, i32 2
  %5 = load i64, i64* %word, align 64
  %cleared = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %1, i64 %indvars.iv.next19, i32 4
  %6 = load i64, i64* %cleared, align 64
  %neg = xor i64 %6, -1
  %and = and i64 %5, %neg
  %tobool.not = icmp eq i64 %and, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next19, 1
  br i1 %tobool.not, label %for.cond, label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.body, %for.cond
  %cmp.le = icmp ult i64 %indvars.iv.next19, %2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.body.lr.ph, %entry
  %cmp.lcssa = phi i1 [ false, %entry ], [ true, %for.body.lr.ph ], [ %cmp.le, %cleanup.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sbitmap_weight(%struct.sbitmap* nocapture noundef readonly %sb) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__sbitmap_weight(%struct.sbitmap* noundef %sb, i1 noundef true) #12
  %call1 = call fastcc i32 @sbitmap_cleared(%struct.sbitmap* noundef %sb) #12
  %sub = sub i32 %call, %call1
  ret i32 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__sbitmap_weight(%struct.sbitmap* nocapture noundef readonly %sb, i1 noundef %set) unnamed_addr #0 {
entry:
  %map_nr = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 2
  %0 = load i32, i32* %map_nr, align 8
  %cmp98.not = icmp eq i32 %0, 0
  br i1 %cmp98.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %weight.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %weight.1, %for.body ]
  %1 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map, align 8
  %depth = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %1, i64 %indvars.iv, i32 0
  %2 = load i64, i64* %depth, align 64
  %conv = trunc i64 %2 to i32
  %cleared = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %1, i64 %indvars.iv, i32 4
  %word1 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %1, i64 %indvars.iv, i32 2
  %cleared.sink = select i1 %set, i64* %word1, i64* %cleared
  %call4.i94 = call i32 @__bitmap_weight(i64* noundef %cleared.sink, i32 noundef %conv) #13
  %weight.1 = add i32 %call4.i94, %weight.0100
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, i32* %map_nr, align 8
  %4 = zext i32 %3 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %weight.0.lcssa = phi i32 [ 0, %entry ], [ %weight.1, %for.body ]
  ret i32 %weight.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sbitmap_cleared(%struct.sbitmap* nocapture noundef readonly %sb) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__sbitmap_weight(%struct.sbitmap* noundef %sb, i1 noundef false) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sbitmap_show(%struct.sbitmap* nocapture noundef readonly %sb, %struct.seq_file* noundef %m) local_unnamed_addr #0 {
entry:
  %depth = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 0
  %0 = load i32, i32* %depth, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef %0) #13
  %call = call i32 @sbitmap_weight(%struct.sbitmap* noundef %sb) #12
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef %call) #13
  %call1 = call fastcc i32 @sbitmap_cleared(%struct.sbitmap* noundef %sb) #12
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef %call1) #13
  %shift = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 1
  %1 = load i32, i32* %shift, align 4
  %shl = shl nuw i32 1, %1
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 noundef %shl) #13
  %map_nr = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 2
  %2 = load i32, i32* %map_nr, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sbitmap_bitmap_show(%struct.sbitmap* nocapture noundef readonly %sb, %struct.seq_file* noundef %m) local_unnamed_addr #0 {
entry:
  %map_nr = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 2
  %0 = load i32, i32* %map_nr, align 8
  %cmp84.not = icmp eq i32 %0, 0
  br i1 %cmp84.not, label %if.end38, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %while.end
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %7, %while.end ]
  %byte.088 = phi i8 [ 0, %for.body.lr.ph ], [ %byte.1.lcssa, %while.end ]
  %byte_bits.087 = phi i32 [ 0, %for.body.lr.ph ], [ %byte_bits.1.lcssa, %while.end ]
  %offset.086 = phi i32 [ 0, %for.body.lr.ph ], [ %offset.1.lcssa, %while.end ]
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc32, %while.end ]
  %2 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map, align 8
  %idxprom = sext i32 %i.085 to i64
  %word1 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %2, i64 %idxprom, i32 2
  %3 = load volatile i64, i64* %word1, align 64
  %cleared9 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %2, i64 %idxprom, i32 4
  %4 = load volatile i64, i64* %cleared9, align 64
  %depth = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %2, i64 %idxprom, i32 0
  %5 = load volatile i64, i64* %depth, align 64
  %conv = trunc i64 %5 to i32
  %cmp17.not76 = icmp eq i32 %conv, 0
  br i1 %cmp17.not76, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %for.body
  %neg = xor i64 %4, -1
  %and = and i64 %3, %neg
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end
  %byte.181 = phi i8 [ %byte.2, %if.end ], [ %byte.088, %while.body.preheader ]
  %byte_bits.180 = phi i32 [ %byte_bits.2, %if.end ], [ %byte_bits.087, %while.body.preheader ]
  %offset.179 = phi i32 [ %offset.2, %if.end ], [ %offset.086, %while.body.preheader ]
  %word_bits.078 = phi i32 [ %sub31, %if.end ], [ %conv, %while.body.preheader ]
  %word.077 = phi i64 [ %shr, %if.end ], [ %and, %while.body.preheader ]
  %sub = sub i32 8, %byte_bits.180
  %cmp20 = icmp ult i32 %sub, %word_bits.078
  %cond = select i1 %cmp20, i32 %sub, i32 %word_bits.078
  %sh_prom = zext i32 %cond to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub22 = xor i64 %notmask, -1
  %and23 = and i64 %word.077, %sub22
  %sh_prom24 = zext i32 %byte_bits.180 to i64
  %shl25 = shl i64 %and23, %sh_prom24
  %6 = trunc i64 %shl25 to i8
  %conv27 = or i8 %byte.181, %6
  %add = add i32 %cond, %byte_bits.180
  %cmp28 = icmp eq i32 %add, 8
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call fastcc void @emit_byte(%struct.seq_file* noundef %m, i32 noundef %offset.179, i8 noundef %conv27) #12
  %inc = add i32 %offset.179, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %offset.2 = phi i32 [ %inc, %if.then ], [ %offset.179, %while.body ]
  %byte_bits.2 = phi i32 [ 0, %if.then ], [ %add, %while.body ]
  %byte.2 = phi i8 [ 0, %if.then ], [ %conv27, %while.body ]
  %shr = lshr i64 %word.077, %sh_prom
  %sub31 = sub i32 %word_bits.078, %cond
  %cmp17.not = icmp eq i32 %sub31, 0
  br i1 %cmp17.not, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %if.end
  %.pre = load i32, i32* %map_nr, align 8
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %for.body
  %7 = phi i32 [ %1, %for.body ], [ %.pre, %while.end.loopexit ]
  %offset.1.lcssa = phi i32 [ %offset.086, %for.body ], [ %offset.2, %while.end.loopexit ]
  %byte_bits.1.lcssa = phi i32 [ %byte_bits.087, %for.body ], [ %byte_bits.2, %while.end.loopexit ]
  %byte.1.lcssa = phi i8 [ %byte.088, %for.body ], [ %byte.2, %while.end.loopexit ]
  %inc32 = add nuw i32 %i.085, 1
  %cmp = icmp ult i32 %inc32, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %while.end
  %tobool.not = icmp eq i32 %byte_bits.1.lcssa, 0
  br i1 %tobool.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %for.end
  call fastcc void @emit_byte(%struct.seq_file* noundef %m, i32 noundef %offset.1.lcssa, i8 noundef %byte.1.lcssa) #12
  %inc34 = add i32 %offset.1.lcssa, 1
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.end
  %offset.3 = phi i32 [ %inc34, %if.then33 ], [ %offset.1.lcssa, %for.end ]
  %tobool36.not = icmp eq i32 %offset.3, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end35
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #13
  br label %if.end38

if.end38:                                         ; preds = %entry, %if.then37, %if.end35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @emit_byte(%struct.seq_file* noundef %m, i32 noundef %offset, i8 noundef %byte) unnamed_addr #0 {
entry:
  %and = and i32 %offset, 15
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %cmp1.not = icmp eq i32 %offset, 0
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #13
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 noundef %offset) #13
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %and4 = and i32 %offset, 1
  %cmp5 = icmp eq i32 %and4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 32) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  %conv = zext i8 %byte to i32
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(%struct.seq_file* noundef, i8 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sbitmap_queue_init_node(%struct.sbitmap_queue* noundef %sbq, i32 noundef %depth, i32 noundef %shift, i1 noundef %round_robin, i32 noundef %flags, i32 noundef %node) local_unnamed_addr #0 {
entry:
  %sb = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0
  %call = call i32 @sbitmap_init_node(%struct.sbitmap* noundef %sb, i32 noundef %depth, i32 noundef %shift, i32 noundef %flags, i32 undef, i1 noundef %round_robin, i1 noundef true) #12
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %min_shallow_depth = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 5
  store i32 -1, i32* %min_shallow_depth, align 4
  %call2 = call fastcc i32 @sbq_calc_wake_batch(%struct.sbitmap_queue* noundef %sbq, i32 noundef %depth) #12
  %wake_batch = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 1
  store i32 %call2, i32* %wake_batch, align 8
  %counter.i = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 2, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  %counter.i35 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 4, i32 0
  store volatile i32 0, i32* %counter.i35, align 4
  %call3 = call fastcc i8* @kzalloc_node(i32 noundef %flags) #12
  %ws = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 3
  %0 = bitcast %struct.sbq_wait_state** %ws to i8**
  store i8* %call3, i8** %0, align 8
  %tobool5.not = icmp eq i8* %call3, null
  br i1 %tobool5.not, label %if.then6, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end
  %wait = getelementptr i8, i8* %call3, i64 8
  %1 = bitcast i8* %wait to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @sbitmap_queue_init_node.__key) #13
  %2 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %3 = load i32, i32* %wake_batch, align 8
  %counter.i36 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %2, i64 0, i32 0, i32 0
  store volatile i32 %3, i32* %counter.i36, align 4
  %4 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %wait.1 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %4, i64 1, i32 1
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %wait.1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @sbitmap_queue_init_node.__key) #13
  %5 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %6 = load i32, i32* %wake_batch, align 8
  %counter.i36.1 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %5, i64 1, i32 0, i32 0
  store volatile i32 %6, i32* %counter.i36.1, align 4
  %7 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %wait.2 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %7, i64 2, i32 1
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %wait.2, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @sbitmap_queue_init_node.__key) #13
  %8 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %9 = load i32, i32* %wake_batch, align 8
  %counter.i36.2 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %8, i64 2, i32 0, i32 0
  store volatile i32 %9, i32* %counter.i36.2, align 4
  %10 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %wait.3 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %10, i64 3, i32 1
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %wait.3, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @sbitmap_queue_init_node.__key) #13
  %11 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %12 = load i32, i32* %wake_batch, align 8
  %counter.i36.3 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %11, i64 3, i32 0, i32 0
  store volatile i32 %12, i32* %counter.i36.3, align 4
  %13 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %wait.4 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %13, i64 4, i32 1
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %wait.4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @sbitmap_queue_init_node.__key) #13
  %14 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %15 = load i32, i32* %wake_batch, align 8
  %counter.i36.4 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %14, i64 4, i32 0, i32 0
  store volatile i32 %15, i32* %counter.i36.4, align 4
  %16 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %wait.5 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %16, i64 5, i32 1
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %wait.5, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @sbitmap_queue_init_node.__key) #13
  %17 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %18 = load i32, i32* %wake_batch, align 8
  %counter.i36.5 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %17, i64 5, i32 0, i32 0
  store volatile i32 %18, i32* %counter.i36.5, align 4
  %19 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %wait.6 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %19, i64 6, i32 1
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %wait.6, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @sbitmap_queue_init_node.__key) #13
  %20 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %21 = load i32, i32* %wake_batch, align 8
  %counter.i36.6 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %20, i64 6, i32 0, i32 0
  store volatile i32 %21, i32* %counter.i36.6, align 4
  %22 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %wait.7 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %22, i64 7, i32 1
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %wait.7, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @sbitmap_queue_init_node.__key) #13
  %23 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %24 = load i32, i32* %wake_batch, align 8
  %counter.i36.7 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %23, i64 7, i32 0, i32 0
  store volatile i32 %24, i32* %counter.i36.7, align 4
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call fastcc void @sbitmap_free(%struct.sbitmap* noundef %sb) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body.preheader, %entry, %if.then6
  %retval.0 = phi i32 [ -12, %if.then6 ], [ %call, %entry ], [ 0, %do.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sbq_calc_wake_batch(%struct.sbitmap_queue* nocapture noundef readonly %sbq, i32 noundef %depth) unnamed_addr #4 {
entry:
  %shift = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0, i32 1
  %0 = load i32, i32* %shift, align 4
  %shl = shl nuw i32 1, %0
  %min_shallow_depth = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 5
  %1 = load i32, i32* %min_shallow_depth, align 4
  %cmp = icmp ult i32 %shl, %1
  %cond = select i1 %cmp, i32 %shl, i32 %1
  %shr = lshr i32 %depth, %0
  %mul = mul i32 %cond, %shr
  %sub = add i32 %shl, -1
  %and = and i32 %sub, %depth
  %cmp7 = icmp ult i32 %and, %cond
  %cond11 = select i1 %cmp7, i32 %and, i32 %cond
  %add = add i32 %cond11, %mul
  %div = lshr i32 %add, 3
  %cmp13 = icmp ugt i32 %div, 1
  %cond17 = select i1 %cmp13, i32 %div, i32 1
  %cmp19 = icmp ult i32 %cond17, 8
  %cond23 = select i1 %cmp19, i32 %cond17, i32 8
  ret i32 %cond23
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc_node(i32 noundef %flags) unnamed_addr #0 {
entry:
  %and.i.i = and i32 %flags, 17
  %cmp.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i1.i, label %kmalloc_node.exit, label %if.end.i2.i, !prof !13

if.end.i2.i:                                      ; preds = %entry
  %and2.i.i = and i32 %flags, 1
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i64 1, i64 2
  br label %kmalloc_node.exit

kmalloc_node.exit:                                ; preds = %entry, %if.end.i2.i
  %retval.0.i3.i = phi i64 [ 0, %entry ], [ %..i.i, %if.end.i2.i ]
  %or = or i32 %flags, 256
  %arrayidx4.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %retval.0.i3.i, i64 9
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx4.i, align 8
  %call.i.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef %or) #13
  ret i8* %call.i.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbitmap_free(%struct.sbitmap* nocapture noundef %sb) unnamed_addr #0 {
entry:
  %alloc_hint = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 5
  %0 = bitcast i32** %alloc_hint to i8**
  %1 = load i8*, i8** %0, align 8
  call void @free_percpu(i8* noundef %1) #13
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  %2 = bitcast %struct.sbitmap_word** %map to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #13
  store %struct.sbitmap_word* null, %struct.sbitmap_word** %map, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sbitmap_queue_resize(%struct.sbitmap_queue* noundef %sbq, i32 noundef %depth) local_unnamed_addr #0 {
entry:
  call fastcc void @sbitmap_queue_update_wake_batch(%struct.sbitmap_queue* noundef %sbq, i32 noundef %depth) #12
  %sb = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0
  call void @sbitmap_resize(%struct.sbitmap* noundef %sb, i32 noundef %depth) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbitmap_queue_update_wake_batch(%struct.sbitmap_queue* noundef %sbq, i32 noundef %depth) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @sbq_calc_wake_batch(%struct.sbitmap_queue* noundef %sbq, i32 noundef %depth) #12
  %wake_batch1 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 1
  %0 = load i32, i32* %wake_batch1, align 8
  %cmp.not = icmp eq i32 %0, %call
  br i1 %cmp.not, label %if.end, label %do.body3

do.body3:                                         ; preds = %entry
  store volatile i32 %call, i32* %wake_batch1, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %ws = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 3
  %1 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %counter.i = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %1, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  %2 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %counter.i.1 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %2, i64 1, i32 0, i32 0
  store volatile i32 1, i32* %counter.i.1, align 4
  %3 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %counter.i.2 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %3, i64 2, i32 0, i32 0
  store volatile i32 1, i32* %counter.i.2, align 4
  %4 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %counter.i.3 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %4, i64 3, i32 0, i32 0
  store volatile i32 1, i32* %counter.i.3, align 4
  %5 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %counter.i.4 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %5, i64 4, i32 0, i32 0
  store volatile i32 1, i32* %counter.i.4, align 4
  %6 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %counter.i.5 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %6, i64 5, i32 0, i32 0
  store volatile i32 1, i32* %counter.i.5, align 4
  %7 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %counter.i.6 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %7, i64 6, i32 0, i32 0
  store volatile i32 1, i32* %counter.i.6, align 4
  %8 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  %counter.i.7 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %8, i64 7, i32 0, i32 0
  store volatile i32 1, i32* %counter.i.7, align 4
  br label %if.end

if.end:                                           ; preds = %do.body3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__sbitmap_queue_get(%struct.sbitmap_queue* noundef %sbq) local_unnamed_addr #0 {
entry:
  %sb = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0
  %call = call i32 @sbitmap_get(%struct.sbitmap* noundef %sb) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__sbitmap_queue_get_shallow(%struct.sbitmap_queue* noundef %sbq, i32 noundef %shallow_depth) local_unnamed_addr #0 {
entry:
  %min_shallow_depth = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 5
  %0 = load i32, i32* %min_shallow_depth, align 4
  %cmp = icmp ugt i32 %0, %shallow_depth
  br i1 %cmp, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/sbitmap.c\22; .popsection; .long 14472b - 14470b; .short 495; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sb = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0
  %conv14 = zext i32 %shallow_depth to i64
  %call = call i32 @sbitmap_get_shallow(%struct.sbitmap* noundef %sb, i64 noundef %conv14) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sbitmap_queue_min_shallow_depth(%struct.sbitmap_queue* noundef %sbq, i32 noundef %min_shallow_depth) local_unnamed_addr #0 {
entry:
  %min_shallow_depth1 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 5
  store i32 %min_shallow_depth, i32* %min_shallow_depth1, align 4
  %depth = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0, i32 0
  %0 = load i32, i32* %depth, align 8
  call fastcc void @sbitmap_queue_update_wake_batch(%struct.sbitmap_queue* noundef %sbq, i32 noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sbitmap_queue_wake_up(%struct.sbitmap_queue* noundef %sbq) local_unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %call = call fastcc i1 @__sbq_wake_up(%struct.sbitmap_queue* noundef %sbq) #12
  br i1 %call, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__sbq_wake_up(%struct.sbitmap_queue* noundef %sbq) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.sbq_wait_state* @sbq_wake_ptr(%struct.sbitmap_queue* noundef %sbq) #12
  %tobool.not = icmp eq %struct.sbq_wait_state* %call, null
  br i1 %tobool.not, label %cleanup11, label %if.end

if.end:                                           ; preds = %entry
  %wait_cnt1 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %call, i64 0, i32 0
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %wait_cnt1) #13
  %cmp = icmp slt i32 %call.i.i.i, 1
  br i1 %cmp, label %if.then3, label %cleanup11

if.then3:                                         ; preds = %if.end
  %wake_batch4 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 1
  %0 = load volatile i32, i32* %wake_batch4, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %1 = bitcast %struct.sbq_wait_state* %call to i8*
  %call11.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef nonnull %1, i32 noundef %call.i.i.i, i32 noundef %0) #13
  %cmp7 = icmp eq i32 %call11.i.i, %call.i.i.i
  br i1 %cmp7, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.then3
  %wake_index = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 2
  call fastcc void @sbq_index_atomic_inc(%struct.atomic_t* noundef %wake_index) #12
  %wait = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %call, i64 0, i32 1
  call void @__wake_up(%struct.wait_queue_head* noundef %wait, i32 noundef 3, i32 noundef %0, i8* noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then8
  %2 = xor i1 %cmp7, true
  br label %cleanup11

cleanup11:                                        ; preds = %if.end, %entry, %cleanup
  %retval.1 = phi i1 [ %2, %cleanup ], [ false, %entry ], [ false, %if.end ]
  ret i1 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sbitmap_queue_clear(%struct.sbitmap_queue* noundef %sbq, i32 noundef %nr, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %sb = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0
  call fastcc void @sbitmap_deferred_clear_bit(%struct.sbitmap* noundef %sb, i32 noundef %nr) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !25
  call void @sbitmap_queue_wake_up(%struct.sbitmap_queue* noundef %sbq) #12
  %round_robin = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0, i32 3
  %0 = load i8, i8* %round_robin, align 4, !range !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %land.rhs, label %if.end, !prof !13

land.rhs:                                         ; preds = %entry
  %depth = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0, i32 0
  %1 = load i32, i32* %depth, align 8
  %cmp = icmp ugt i32 %1, %nr
  br i1 %cmp, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %land.rhs
  %alloc_hint = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0, i32 5
  %2 = load i32*, i32** %alloc_hint, align 8
  %3 = ptrtoint i32* %2 to i64
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, %3
  %5 = inttoptr i64 %add to i32*
  store i32 %nr, i32* %5, align 4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %land.rhs
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbitmap_deferred_clear_bit(%struct.sbitmap* nocapture noundef readonly %sb, i32 noundef %bitnr) unnamed_addr #0 {
entry:
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  %0 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map, align 8
  %shift = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 1
  %1 = load i32, i32* %shift, align 4
  %shr = lshr i32 %bitnr, %1
  %idxprom = zext i32 %shr to i64
  %cleared = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %0, i64 %idxprom, i32 4
  %notmask = shl nsw i32 -1, %1
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub, %bitnr
  %conv = zext i32 %and to i64
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %cleared) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sbitmap_queue_wake_all(%struct.sbitmap_queue* noundef %sbq) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !26
  %counter.i = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 2, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %ws2 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 3
  %1 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws2, align 8
  %idxprom = sext i32 %0 to i64
  %wait = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %1, i64 %idxprom, i32 1
  %call3 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait) #12
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__wake_up(%struct.wait_queue_head* noundef %wait, i32 noundef 3, i32 noundef 1, i8* noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call5 = call fastcc i32 @sbq_index_inc(i32 noundef %0) #12
  %2 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws2, align 8
  %idxprom.1 = sext i32 %call5 to i64
  %wait.1 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %2, i64 %idxprom.1, i32 1
  %call3.1 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.1) #12
  %tobool.not.1 = icmp eq i32 %call3.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.then.1

if.then.1:                                        ; preds = %if.end
  call void @__wake_up(%struct.wait_queue_head* noundef %wait.1, i32 noundef 3, i32 noundef 1, i8* noundef null) #13
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end
  %call5.1 = call fastcc i32 @sbq_index_inc(i32 noundef %call5) #12
  %3 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws2, align 8
  %idxprom.2 = sext i32 %call5.1 to i64
  %wait.2 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %3, i64 %idxprom.2, i32 1
  %call3.2 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.2) #12
  %tobool.not.2 = icmp eq i32 %call3.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.then.2

if.then.2:                                        ; preds = %if.end.1
  call void @__wake_up(%struct.wait_queue_head* noundef %wait.2, i32 noundef 3, i32 noundef 1, i8* noundef null) #13
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1
  %call5.2 = call fastcc i32 @sbq_index_inc(i32 noundef %call5.1) #12
  %4 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws2, align 8
  %idxprom.3 = sext i32 %call5.2 to i64
  %wait.3 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %4, i64 %idxprom.3, i32 1
  %call3.3 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.3) #12
  %tobool.not.3 = icmp eq i32 %call3.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.then.3

if.then.3:                                        ; preds = %if.end.2
  call void @__wake_up(%struct.wait_queue_head* noundef %wait.3, i32 noundef 3, i32 noundef 1, i8* noundef null) #13
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2
  %call5.3 = call fastcc i32 @sbq_index_inc(i32 noundef %call5.2) #12
  %5 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws2, align 8
  %idxprom.4 = sext i32 %call5.3 to i64
  %wait.4 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %5, i64 %idxprom.4, i32 1
  %call3.4 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.4) #12
  %tobool.not.4 = icmp eq i32 %call3.4, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.then.4

if.then.4:                                        ; preds = %if.end.3
  call void @__wake_up(%struct.wait_queue_head* noundef %wait.4, i32 noundef 3, i32 noundef 1, i8* noundef null) #13
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3
  %call5.4 = call fastcc i32 @sbq_index_inc(i32 noundef %call5.3) #12
  %6 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws2, align 8
  %idxprom.5 = sext i32 %call5.4 to i64
  %wait.5 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %6, i64 %idxprom.5, i32 1
  %call3.5 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.5) #12
  %tobool.not.5 = icmp eq i32 %call3.5, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.then.5

if.then.5:                                        ; preds = %if.end.4
  call void @__wake_up(%struct.wait_queue_head* noundef %wait.5, i32 noundef 3, i32 noundef 1, i8* noundef null) #13
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4
  %call5.5 = call fastcc i32 @sbq_index_inc(i32 noundef %call5.4) #12
  %7 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws2, align 8
  %idxprom.6 = sext i32 %call5.5 to i64
  %wait.6 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %7, i64 %idxprom.6, i32 1
  %call3.6 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.6) #12
  %tobool.not.6 = icmp eq i32 %call3.6, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.then.6

if.then.6:                                        ; preds = %if.end.5
  call void @__wake_up(%struct.wait_queue_head* noundef %wait.6, i32 noundef 3, i32 noundef 1, i8* noundef null) #13
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end.5
  %call5.6 = call fastcc i32 @sbq_index_inc(i32 noundef %call5.5) #12
  %8 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws2, align 8
  %idxprom.7 = sext i32 %call5.6 to i64
  %wait.7 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %8, i64 %idxprom.7, i32 1
  %call3.7 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.7) #12
  %tobool.not.7 = icmp eq i32 %call3.7, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.then.7

if.then.7:                                        ; preds = %if.end.6
  call void @__wake_up(%struct.wait_queue_head* noundef %wait.7, i32 noundef 3, i32 noundef 1, i8* noundef null) #13
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %if.end.6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #5 {
entry:
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #12
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @sbq_index_inc(i32 noundef %index) unnamed_addr #6 {
entry:
  %add = add i32 %index, 1
  %and = and i32 %add, 7
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sbitmap_queue_show(%struct.sbitmap_queue* noundef %sbq, %struct.seq_file* noundef %m) local_unnamed_addr #0 {
entry:
  %sb = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0
  call void @sbitmap_show(%struct.sbitmap* noundef %sb, %struct.seq_file* noundef %m) #12
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #13
  %call48 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp49 = icmp ult i32 %call48, %0
  br i1 %cmp49, label %if.end.peel, label %for.end

if.end.peel:                                      ; preds = %entry
  %alloc_hint = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0, i32 5
  %.pre = load i32*, i32** %alloc_hint, align 8
  %idxprom.peel.phi.trans.insert = sext i32 %call48 to i64
  %arrayidx.peel.phi.trans.insert = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom.peel.phi.trans.insert
  %.pre55 = load i64, i64* %arrayidx.peel.phi.trans.insert, align 8
  %phi.cast = ptrtoint i32* %.pre to i64
  %1 = add i64 %.pre55, %phi.cast
  %phi.cast57 = inttoptr i64 %1 to i32*
  %2 = load i32, i32* %phi.cast57, align 4
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 noundef %2) #13
  %call.peel = call i32 @cpumask_next(i32 noundef %call48, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp.peel = icmp ult i32 %call.peel, %3
  br i1 %cmp.peel, label %if.end, label %for.end

if.end:                                           ; preds = %if.end.peel, %if.end
  %call51 = phi i32 [ %call, %if.end ], [ %call.peel, %if.end.peel ]
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #13
  %4 = load i32*, i32** %alloc_hint, align 8
  %5 = ptrtoint i32* %4 to i64
  %idxprom = sext i32 %call51 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %add = add i64 %6, %5
  %7 = inttoptr i64 %add to i32*
  %8 = load i32, i32* %7, align 4
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 noundef %8) #13
  %call = call i32 @cpumask_next(i32 noundef %call51, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %9 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %9
  br i1 %cmp, label %if.end, label %for.end, !llvm.loop !27

for.end:                                          ; preds = %if.end, %if.end.peel, %entry
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #13
  %wake_batch = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 1
  %10 = load i32, i32* %wake_batch, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef %10) #13
  %counter.i = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 2, i32 0
  %11 = load volatile i32, i32* %counter.i, align 4
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 noundef %11) #13
  %counter.i46 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 4, i32 0
  %12 = load volatile i32, i32* %counter.i46, align 4
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 noundef %12) #13
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #13
  %ws8 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 3
  %13 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws8, align 8
  %counter.i47 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %13, i64 0, i32 0, i32 0
  %14 = load volatile i32, i32* %counter.i47, align 4
  %wait = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %13, i64 0, i32 1
  %call12 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait) #12
  %tobool13.not = icmp eq i32 %call12, 0
  %cond = select i1 %tobool13.not, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 noundef %14, i8* noundef %cond) #13
  %15 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws8, align 8
  %counter.i47.1 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %15, i64 1, i32 0, i32 0
  %16 = load volatile i32, i32* %counter.i47.1, align 4
  %wait.1 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %15, i64 1, i32 1
  %call12.1 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.1) #12
  %tobool13.not.1 = icmp eq i32 %call12.1, 0
  %cond.1 = select i1 %tobool13.not.1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 noundef %16, i8* noundef %cond.1) #13
  %17 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws8, align 8
  %counter.i47.2 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %17, i64 2, i32 0, i32 0
  %18 = load volatile i32, i32* %counter.i47.2, align 4
  %wait.2 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %17, i64 2, i32 1
  %call12.2 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.2) #12
  %tobool13.not.2 = icmp eq i32 %call12.2, 0
  %cond.2 = select i1 %tobool13.not.2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 noundef %18, i8* noundef %cond.2) #13
  %19 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws8, align 8
  %counter.i47.3 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %19, i64 3, i32 0, i32 0
  %20 = load volatile i32, i32* %counter.i47.3, align 4
  %wait.3 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %19, i64 3, i32 1
  %call12.3 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.3) #12
  %tobool13.not.3 = icmp eq i32 %call12.3, 0
  %cond.3 = select i1 %tobool13.not.3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 noundef %20, i8* noundef %cond.3) #13
  %21 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws8, align 8
  %counter.i47.4 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %21, i64 4, i32 0, i32 0
  %22 = load volatile i32, i32* %counter.i47.4, align 4
  %wait.4 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %21, i64 4, i32 1
  %call12.4 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.4) #12
  %tobool13.not.4 = icmp eq i32 %call12.4, 0
  %cond.4 = select i1 %tobool13.not.4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 noundef %22, i8* noundef %cond.4) #13
  %23 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws8, align 8
  %counter.i47.5 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %23, i64 5, i32 0, i32 0
  %24 = load volatile i32, i32* %counter.i47.5, align 4
  %wait.5 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %23, i64 5, i32 1
  %call12.5 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.5) #12
  %tobool13.not.5 = icmp eq i32 %call12.5, 0
  %cond.5 = select i1 %tobool13.not.5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 noundef %24, i8* noundef %cond.5) #13
  %25 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws8, align 8
  %counter.i47.6 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %25, i64 6, i32 0, i32 0
  %26 = load volatile i32, i32* %counter.i47.6, align 4
  %wait.6 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %25, i64 6, i32 1
  %call12.6 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.6) #12
  %tobool13.not.6 = icmp eq i32 %call12.6, 0
  %cond.6 = select i1 %tobool13.not.6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 noundef %26, i8* noundef %cond.6) #13
  %27 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws8, align 8
  %counter.i47.7 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %27, i64 7, i32 0, i32 0
  %28 = load volatile i32, i32* %counter.i47.7, align 4
  %wait.7 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %27, i64 7, i32 1
  %call12.7 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.7) #12
  %tobool13.not.7 = icmp eq i32 %call12.7, 0
  %cond.7 = select i1 %tobool13.not.7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 noundef %28, i8* noundef %cond.7) #13
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #13
  %round_robin = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0, i32 3
  %29 = load i8, i8* %round_robin, align 4, !range !8
  %30 = zext i8 %29 to i32
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 noundef %30) #13
  %min_shallow_depth = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 5
  %31 = load i32, i32* %min_shallow_depth, align 4
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef %31) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(%struct.seq_file* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sbitmap_add_wait_queue(%struct.sbitmap_queue* noundef %sbq, %struct.sbq_wait_state* noundef %ws, %struct.sbq_wait* noundef %sbq_wait) local_unnamed_addr #0 {
entry:
  %sbq1 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %sbq_wait, i64 0, i32 0
  %0 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %sbq1, align 8
  %tobool.not = icmp eq %struct.sbitmap_queue* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.sbitmap_queue* %sbq, %struct.sbitmap_queue** %sbq1, align 8
  %ws_active = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 4
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %ws_active) #13
  %wait = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %ws, i64 0, i32 1
  %wait3 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %sbq_wait, i64 0, i32 1
  call void @add_wait_queue(%struct.wait_queue_head* noundef %wait, %struct.wait_queue_entry* noundef %wait3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sbitmap_del_wait_queue(%struct.sbq_wait* noundef %sbq_wait) local_unnamed_addr #0 {
entry:
  %entry1 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %sbq_wait, i64 0, i32 1, i32 3
  call fastcc void @list_del_init(%struct.list_head* noundef %entry1) #12
  %sbq = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %sbq_wait, i64 0, i32 0
  %0 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %sbq, align 8
  %tobool.not = icmp eq %struct.sbitmap_queue* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ws_active = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %0, i64 0, i32 4
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %ws_active) #13
  store %struct.sbitmap_queue* null, %struct.sbitmap_queue** %sbq, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #8 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #12
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sbitmap_prepare_to_wait(%struct.sbitmap_queue* noundef %sbq, %struct.sbq_wait_state* noundef %ws, %struct.sbq_wait* noundef %sbq_wait, i32 noundef %state) local_unnamed_addr #0 {
entry:
  %sbq1 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %sbq_wait, i64 0, i32 0
  %0 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %sbq1, align 8
  %tobool.not = icmp eq %struct.sbitmap_queue* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ws_active = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 4
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %ws_active) #13
  store %struct.sbitmap_queue* %sbq, %struct.sbitmap_queue** %sbq1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %wait = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %ws, i64 0, i32 1
  %wait3 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %sbq_wait, i64 0, i32 1
  %call = call i1 @prepare_to_wait_exclusive(%struct.wait_queue_head* noundef %wait, %struct.wait_queue_entry* noundef %wait3, i32 noundef %state) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @prepare_to_wait_exclusive(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sbitmap_finish_wait(%struct.sbitmap_queue* noundef %sbq, %struct.sbq_wait_state* noundef %ws, %struct.sbq_wait* noundef %sbq_wait) local_unnamed_addr #0 {
entry:
  %wait = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %ws, i64 0, i32 1
  %wait1 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %sbq_wait, i64 0, i32 1
  call void @finish_wait(%struct.wait_queue_head* noundef %wait, %struct.wait_queue_entry* noundef %wait1) #13
  %sbq2 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %sbq_wait, i64 0, i32 0
  %0 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %sbq2, align 8
  %tobool.not = icmp eq %struct.sbitmap_queue* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ws_active = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 4
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %ws_active) #13
  store %struct.sbitmap_queue* null, %struct.sbitmap_queue** %sbq2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu_gfp(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array_node(i64 noundef %n, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 192)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !9

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call.i = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef %flags) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call.i, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #15, !srcloc !29
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #15, !srcloc !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @__percpu_read_32(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = load volatile i32, i32* %0, align 4
  %conv = zext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #10 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #16, !srcloc !31
  ret i64 %2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__percpu_write_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #8 {
entry:
  %conv = trunc i64 %val to i32
  %0 = bitcast i8* %ptr to i32*
  store volatile i32 %conv, i32* %0, align 4
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sbitmap_find_bit_in_index(%struct.sbitmap* nocapture noundef readonly %sb, i32 noundef %index, i32 noundef %alloc_hint) unnamed_addr #0 {
entry:
  %map1 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  %0 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map1, align 8
  %idxprom = sext i32 %index to i64
  %arrayidx = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %0, i64 %idxprom
  %word = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %0, i64 %idxprom, i32 2
  %depth = getelementptr inbounds %struct.sbitmap_word, %struct.sbitmap_word* %arrayidx, i64 0, i32 0
  %round_robin = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %1 = load i64, i64* %depth, align 64
  %2 = load i8, i8* %round_robin, align 4, !range !8
  %tobool.not = icmp eq i8 %2, 0
  %call = call fastcc i32 @__sbitmap_get_word(i64* noundef %word, i64 noundef %1, i32 noundef %alloc_hint, i1 noundef %tobool.not) #12
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %if.end, label %do.end

if.end:                                           ; preds = %do.body
  %call2 = call fastcc i1 @sbitmap_deferred_clear(%struct.sbitmap_word* noundef %arrayidx) #12
  br i1 %call2, label %do.body, label %do.end

do.end:                                           ; preds = %if.end, %do.body
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__sbitmap_get_word(i64* noundef %word, i64 noundef %depth, i32 noundef %hint, i1 noundef %wrap) unnamed_addr #0 {
entry:
  %tobool1 = icmp ne i32 %hint, 0
  %0 = and i1 %tobool1, %wrap
  %sub = add i64 %depth, -1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %hint.addr.0 = phi i32 [ %hint, %entry ], [ %hint.addr.0.be, %while.cond.backedge ]
  %conv = zext i32 %hint.addr.0 to i64
  %call = call fastcc i64 @find_next_zero_bit(i64* noundef %word, i64 noundef %depth, i64 noundef %conv) #12
  %conv3 = trunc i64 %call to i32
  %sext = shl i64 %call, 32
  %conv4 = ashr exact i64 %sext, 32
  %cmp.not = icmp ult i64 %conv4, %depth
  br i1 %cmp.not, label %if.end13, label %if.then, !prof !13

if.then:                                          ; preds = %while.cond
  %tobool9.not = icmp ne i32 %hint.addr.0, 0
  %1 = and i1 %0, %tobool9.not
  br i1 %1, label %while.cond.backedge, label %cleanup

if.end13:                                         ; preds = %while.cond
  %call15 = call fastcc i1 @test_and_set_bit_lock(i64 noundef %conv4, i64* noundef %word) #12
  br i1 %call15, label %if.end17, label %cleanup.split.loop.exit37

if.end17:                                         ; preds = %if.end13
  %add = add i32 %conv3, 1
  %conv18 = zext i32 %add to i64
  %cmp19.not = icmp ugt i64 %sub, %conv18
  %spec.store.select = select i1 %cmp19.not, i32 %add, i32 0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end17, %if.then
  %hint.addr.0.be = phi i32 [ %spec.store.select, %if.end17 ], [ 0, %if.then ]
  br label %while.cond

cleanup.split.loop.exit37:                        ; preds = %if.end13
  %conv3.le = trunc i64 %call to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %cleanup.split.loop.exit37
  %retval.0 = phi i32 [ %conv3.le, %cleanup.split.loop.exit37 ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_zero_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call13 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef -1, i64 noundef 0) #13
  ret i64 %call13
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %0 = load volatile i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #13
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #15, !srcloc !32
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.sbq_wait_state* @sbq_wake_ptr(%struct.sbitmap_queue* noundef %sbq) unnamed_addr #8 {
entry:
  %counter.i = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 4, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup15, label %if.end

if.end:                                           ; preds = %entry
  %counter.i29 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 2, i32 0
  %1 = load volatile i32, i32* %counter.i29, align 4
  %ws3 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 3
  %2 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws3, align 8
  %idxprom = sext i32 %1 to i64
  %wait = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %2, i64 %idxprom, i32 1
  %call4 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.inc, label %if.then6

if.then6:                                         ; preds = %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %if.end
  %wake_index.036.lcssa = phi i32 [ %1, %if.end ], [ %call14, %for.inc ], [ %call14.1, %for.inc.1 ], [ %call14.2, %for.inc.2 ], [ %call14.3, %for.inc.3 ], [ %call14.4, %for.inc.4 ], [ %call14.5, %for.inc.5 ], [ %call14.6, %for.inc.6 ]
  %.lcssa = phi %struct.sbq_wait_state* [ %2, %if.end ], [ %4, %for.inc ], [ %5, %for.inc.1 ], [ %6, %for.inc.2 ], [ %7, %for.inc.3 ], [ %8, %for.inc.4 ], [ %9, %for.inc.5 ], [ %10, %for.inc.6 ]
  %idxprom.lcssa = phi i64 [ %idxprom, %if.end ], [ %idxprom.1, %for.inc ], [ %idxprom.2, %for.inc.1 ], [ %idxprom.3, %for.inc.2 ], [ %idxprom.4, %for.inc.3 ], [ %idxprom.5, %for.inc.4 ], [ %idxprom.6, %for.inc.5 ], [ %idxprom.7, %for.inc.6 ]
  %arrayidx.le = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %.lcssa, i64 %idxprom.lcssa
  %3 = load volatile i32, i32* %counter.i29, align 4
  %cmp9.not = icmp eq i32 %wake_index.036.lcssa, %3
  br i1 %cmp9.not, label %cleanup15, label %if.then10

if.then10:                                        ; preds = %if.then6
  store volatile i32 %wake_index.036.lcssa, i32* %counter.i29, align 4
  br label %cleanup15

for.inc:                                          ; preds = %if.end
  %call14 = call fastcc i32 @sbq_index_inc(i32 noundef %1) #12
  %4 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws3, align 8
  %idxprom.1 = sext i32 %call14 to i64
  %wait.1 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %4, i64 %idxprom.1, i32 1
  %call4.1 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.1) #12
  %tobool5.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool5.not.1, label %for.inc.1, label %if.then6

for.inc.1:                                        ; preds = %for.inc
  %call14.1 = call fastcc i32 @sbq_index_inc(i32 noundef %call14) #12
  %5 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws3, align 8
  %idxprom.2 = sext i32 %call14.1 to i64
  %wait.2 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %5, i64 %idxprom.2, i32 1
  %call4.2 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.2) #12
  %tobool5.not.2 = icmp eq i32 %call4.2, 0
  br i1 %tobool5.not.2, label %for.inc.2, label %if.then6

for.inc.2:                                        ; preds = %for.inc.1
  %call14.2 = call fastcc i32 @sbq_index_inc(i32 noundef %call14.1) #12
  %6 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws3, align 8
  %idxprom.3 = sext i32 %call14.2 to i64
  %wait.3 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %6, i64 %idxprom.3, i32 1
  %call4.3 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.3) #12
  %tobool5.not.3 = icmp eq i32 %call4.3, 0
  br i1 %tobool5.not.3, label %for.inc.3, label %if.then6

for.inc.3:                                        ; preds = %for.inc.2
  %call14.3 = call fastcc i32 @sbq_index_inc(i32 noundef %call14.2) #12
  %7 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws3, align 8
  %idxprom.4 = sext i32 %call14.3 to i64
  %wait.4 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %7, i64 %idxprom.4, i32 1
  %call4.4 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.4) #12
  %tobool5.not.4 = icmp eq i32 %call4.4, 0
  br i1 %tobool5.not.4, label %for.inc.4, label %if.then6

for.inc.4:                                        ; preds = %for.inc.3
  %call14.4 = call fastcc i32 @sbq_index_inc(i32 noundef %call14.3) #12
  %8 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws3, align 8
  %idxprom.5 = sext i32 %call14.4 to i64
  %wait.5 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %8, i64 %idxprom.5, i32 1
  %call4.5 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.5) #12
  %tobool5.not.5 = icmp eq i32 %call4.5, 0
  br i1 %tobool5.not.5, label %for.inc.5, label %if.then6

for.inc.5:                                        ; preds = %for.inc.4
  %call14.5 = call fastcc i32 @sbq_index_inc(i32 noundef %call14.4) #12
  %9 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws3, align 8
  %idxprom.6 = sext i32 %call14.5 to i64
  %wait.6 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %9, i64 %idxprom.6, i32 1
  %call4.6 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.6) #12
  %tobool5.not.6 = icmp eq i32 %call4.6, 0
  br i1 %tobool5.not.6, label %for.inc.6, label %if.then6

for.inc.6:                                        ; preds = %for.inc.5
  %call14.6 = call fastcc i32 @sbq_index_inc(i32 noundef %call14.5) #12
  %10 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws3, align 8
  %idxprom.7 = sext i32 %call14.6 to i64
  %wait.7 = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %10, i64 %idxprom.7, i32 1
  %call4.7 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait.7) #12
  %tobool5.not.7 = icmp eq i32 %call4.7, 0
  br i1 %tobool5.not.7, label %cleanup15, label %if.then6

cleanup15:                                        ; preds = %for.inc.6, %if.then10, %if.then6, %entry
  %retval.2 = phi %struct.sbq_wait_state* [ null, %entry ], [ %arrayidx.le, %if.then6 ], [ %arrayidx.le, %if.then10 ], [ null, %for.inc.6 ]
  ret %struct.sbq_wait_state* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbq_index_atomic_inc(%struct.atomic_t* noundef %index) unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %index, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %call1 = call fastcc i32 @sbq_index_inc(i32 noundef %0) #12, !range !33
  %1 = bitcast %struct.atomic_t* %index to i8*
  %call11.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %0, i32 noundef %call1) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !34
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #15, !srcloc !35
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #15, !srcloc !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !37
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #8 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #8 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !38
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree nounwind readonly }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nounwind readonly }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2151995089}
!11 = !{i64 2151967495}
!12 = !{i64 2151968327}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2151973002}
!15 = !{i64 2151973834}
!16 = !{i64 2151978549}
!17 = !{i64 2151979381}
!18 = !{i64 2151983997}
!19 = !{i64 2151984829}
!20 = !{i64 2152001092}
!21 = !{i64 2152033408}
!22 = !{i64 2152035013}
!23 = !{i64 2152038323}
!24 = !{i64 2152038652}
!25 = !{i64 2152038744}
!26 = !{i64 2152039763}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.peeled.count", i32 1}
!29 = !{i64 2148013269, i64 2148013301, i64 2148013345, i64 2148013392, i64 2148013418}
!30 = !{i64 2147958041, i64 2147958562, i64 2147958592, i64 2147958618, i64 2147958650, i64 2147958679}
!31 = !{i64 2149076674, i64 2149076721, i64 2149076727, i64 2149076764, i64 2149076782, i64 2149077709, i64 2149077757, i64 2149077805, i64 2149077868, i64 2149077917, i64 2149076860, i64 2149076885, i64 2149076911, i64 2149076917, i64 2149076954, i64 2149076960, i64 2149077010, i64 2149077056, i64 2149077089}
!32 = !{i64 2147950359, i64 2147951029, i64 2147951059, i64 2147951091, i64 2147951123, i64 2147951157, i64 2147951182}
!33 = !{i32 0, i32 8}
!34 = !{i64 2147888964, i64 2147889612, i64 2147889642, i64 2147889674, i64 2147889708, i64 2147889744, i64 2147889769}
!35 = !{i64 2147991461, i64 2147991494, i64 2147991546, i64 2147991605, i64 2147991639, i64 2147991695, i64 2147991724, i64 2147991751}
!36 = !{i64 2147947471, i64 2147947982, i64 2147948012, i64 2147948038, i64 2147948070, i64 2147948099}
!37 = !{i64 2147878391, i64 2147878907, i64 2147878937, i64 2147878964, i64 2147878998, i64 2147879028}
!38 = !{i64 2147888112, i64 2147888628, i64 2147888658, i64 2147888685, i64 2147888719, i64 2147888749}
