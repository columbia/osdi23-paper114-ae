; ModuleID = 'fs/seq_file.c'
source_filename = "fs/seq_file.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
%struct.lock_class_key = type {}
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [4 x i64] }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.11, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.12, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.11 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.12 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.13, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.32 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%struct.request_queue = type opaque
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.53, i32, [12 x i8] }
%union.anon.53 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.55, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.55 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { i64 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.63, i32, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.57 = type { %struct.callback_head }
%union.anon.58 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.15 }
%union.anon.15 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.16, %union.anon.17 }
%union.anon.16 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.17 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.63 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.61 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.59, %struct.qspinlock }
%union.anon.59 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.61 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.38 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@seq_file_cache = internal unnamed_addr global %struct.kmem_cache* null, section ".data..ro_after_init", align 8
@seq_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [9 x i8] c"&p->lock\00", align 1
@seq_read_iter._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.seq_read_iter = private unnamed_addr constant [14 x i8] c"seq_read_iter\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"\016seq_file: buggy .next function %ps did not update position index\0A\00", align 1
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%p: \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s%.8x: \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"seq_file\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_open(%struct.file* noundef %file, %struct.seq_operations* noundef %op) local_unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = load i8*, i8** %private_data, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/seq_file.c\22; .popsection; .long 14472b - 14470b; .short 61; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @seq_file_cache, align 8
  %call = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %1) #19
  %tobool15.not = icmp eq i8* %call, null
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end
  store i8* %call, i8** %private_data, align 8
  %lock = getelementptr inbounds i8, i8* %call, i64 56
  %2 = bitcast i8* %lock to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @seq_open.__key) #20
  %op19 = getelementptr inbounds i8, i8* %call, i64 88
  %3 = bitcast i8* %op19 to %struct.seq_operations**
  store %struct.seq_operations* %op, %struct.seq_operations** %3, align 8
  %file20 = getelementptr inbounds i8, i8* %call, i64 104
  %4 = bitcast i8* %file20 to %struct.file**
  store %struct.file* %file, %struct.file** %4, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %5 = load i32, i32* %f_mode, align 4
  %and = and i32 %5, -17
  store i32 %and, i32* %f_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end17
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #0 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 3520) #20
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @seq_read(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %size, i64* nocapture noundef %ppos) local_unnamed_addr #0 {
entry:
  %iov = alloca %struct.iovec, align 8
  %kiocb = alloca %struct.kiocb, align 8
  %iter = alloca %struct.iov_iter, align 8
  %0 = bitcast %struct.iovec* %iov to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i64 0, i32 0
  store i8* %buf, i8** %iov_base, align 8
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i64 0, i32 1
  store i64 %size, i64* %iov_len, align 8
  %1 = bitcast %struct.kiocb* %kiocb to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false), !annotation !9
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !9
  call fastcc void @init_sync_kiocb(%struct.kiocb* noundef nonnull %kiocb, %struct.file* noundef %file) #19
  call void @iov_iter_init(%struct.iov_iter* noundef nonnull %iter, i32 noundef 0, %struct.iovec* noundef nonnull %iov, i64 noundef 1, i64 noundef %size) #20
  %3 = load i64, i64* %ppos, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 1
  store i64 %3, i64* %ki_pos, align 8
  %call = call i64 @seq_read_iter(%struct.kiocb* noundef nonnull %kiocb, %struct.iov_iter* noundef nonnull %iter) #19
  %4 = load i64, i64* %ki_pos, align 8
  store i64 %4, i64* %ppos, align 8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i64 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @init_sync_kiocb(%struct.kiocb* nocapture noundef writeonly %kiocb, %struct.file* noundef %filp) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @iocb_flags(%struct.file* noundef %filp) #19
  %call1 = call fastcc i32 @file_write_hint(%struct.file* noundef %filp) #19
  %call2 = call fastcc i16 @ki_hint_validate(i32 noundef %call1) #19
  %call3 = call fastcc i32 @get_current_ioprio() #19
  %conv = trunc i32 %call3 to i16
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 0
  store %struct.file* %filp, %struct.file** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx4 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 1
  store i64 0, i64* %.compoundliteral.sroa.2.0..sroa_idx4, align 8
  %.compoundliteral.sroa.3.0..sroa_idx5 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 2
  store void (%struct.kiocb*, i64, i64)* null, void (%struct.kiocb*, i64, i64)** %.compoundliteral.sroa.3.0..sroa_idx5, align 8
  %.compoundliteral.sroa.4.0..sroa_idx6 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 3
  store i8* null, i8** %.compoundliteral.sroa.4.0..sroa_idx6, align 8
  %.compoundliteral.sroa.5.0..sroa_idx7 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 4
  store i32 %call, i32* %.compoundliteral.sroa.5.0..sroa_idx7, align 8
  %.compoundliteral.sroa.6.0..sroa_idx8 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 5
  store i16 %call2, i16* %.compoundliteral.sroa.6.0..sroa_idx8, align 4
  %.compoundliteral.sroa.7.0..sroa_idx9 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 6
  store i16 %conv, i16* %.compoundliteral.sroa.7.0..sroa_idx9, align 2
  %.compoundliteral.sroa.8.0..sroa_idx10 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 7, i32 0
  store %struct.wait_page_queue* null, %struct.wait_page_queue** %.compoundliteral.sroa.8.0..sroa_idx10, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_init(%struct.iov_iter* noundef, i32 noundef, %struct.iovec* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @seq_read_iter(%struct.kiocb* nocapture noundef %iocb, %struct.iov_iter* noundef %iter) local_unnamed_addr #0 {
entry:
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 15
  %1 = bitcast i8** %private_data to %struct.seq_file**
  %2 = load %struct.seq_file*, %struct.seq_file** %1, align 8
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #19
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup191, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 7
  call void @mutex_lock(%struct.mutex* noundef %lock) #20
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %3 = load i64, i64* %ki_pos, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %index = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 5
  store i64 0, i64* %index, align 8
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 3
  store i64 0, i64* %count, align 8
  %.pre = load i64, i64* %ki_pos, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %4 = phi i64 [ %.pre, %if.then1 ], [ %3, %if.end ]
  %read_pos = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 6
  %5 = load i64, i64* %read_pos, align 8
  %cmp4.not = icmp eq i64 %4, %5
  br i1 %cmp4.not, label %if.end20, label %while.cond, !prof !7

while.cond:                                       ; preds = %if.end2, %while.cond.while.cond_crit_edge
  %6 = phi i64 [ %.pre356, %while.cond.while.cond_crit_edge ], [ %4, %if.end2 ]
  %call9 = call fastcc i32 @traverse(%struct.seq_file* noundef %2, i64 noundef %6) #19
  switch i32 %call9, label %if.then13 [
    i32 -11, label %while.cond.while.cond_crit_edge
    i32 0, label %if.else
  ]

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  %.pre356 = load i64, i64* %ki_pos, align 8
  br label %while.cond

if.then13:                                        ; preds = %while.cond
  store i64 0, i64* %read_pos, align 8
  %index15 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 5
  store i64 0, i64* %index15, align 8
  %count16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 3
  store i64 0, i64* %count16, align 8
  br label %if.then180

if.else:                                          ; preds = %while.cond
  %7 = load i64, i64* %ki_pos, align 8
  store i64 %7, i64* %read_pos, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end2
  %buf = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 0
  %8 = load i8*, i8** %buf, align 8
  %tobool21.not = icmp eq i8* %8, null
  br i1 %tobool21.not, label %if.then22, label %if.end29

if.then22:                                        ; preds = %if.end20
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 1
  store i64 4096, i64* %size, align 8
  %call23 = call fastcc i8* @seq_buf_alloc(i64 noundef 4096) #19
  store i8* %call23, i8** %buf, align 8
  %tobool26.not = icmp eq i8* %call23, null
  br i1 %tobool26.not, label %if.then180, label %if.end29

if.end29:                                         ; preds = %if.then22, %if.end20
  %9 = phi i8* [ %call23, %if.then22 ], [ %8, %if.end20 ]
  %count30 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 3
  %10 = load i64, i64* %count30, align 8
  %tobool31.not = icmp eq i64 %10, 0
  br i1 %tobool31.not, label %if.end43, label %if.then32

if.then32:                                        ; preds = %if.end29
  %from = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 2
  %cmp11.i.i = icmp ugt i64 %10, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.else.i, !prof !10

check_copy_size.exit.i:                           ; preds = %if.then32
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !11
  br label %copy_to_iter.exit

if.else.i:                                        ; preds = %if.then32
  %11 = load i64, i64* %from, align 8
  %add.ptr = getelementptr i8, i8* %9, i64 %11
  %call3.i = call i64 @_copy_to_iter(i8* noundef %add.ptr, i64 noundef %10, %struct.iov_iter* noundef %iter) #20
  br label %copy_to_iter.exit

copy_to_iter.exit:                                ; preds = %check_copy_size.exit.i, %if.else.i
  %retval.0.i = phi i64 [ %call3.i, %if.else.i ], [ 0, %check_copy_size.exit.i ]
  %12 = load i64, i64* %count30, align 8
  %sub = sub i64 %12, %retval.0.i
  store i64 %sub, i64* %count30, align 8
  %13 = load i64, i64* %from, align 8
  %add = add i64 %13, %retval.0.i
  store i64 %add, i64* %from, align 8
  %tobool40.not = icmp eq i64 %sub, 0
  br i1 %tobool40.not, label %if.end43, label %Done

if.end43:                                         ; preds = %copy_to_iter.exit, %if.end29
  %copied.0 = phi i64 [ %retval.0.i, %copy_to_iter.exit ], [ 0, %if.end29 ]
  %from44 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 2
  store i64 0, i64* %from44, align 8
  %op = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 8
  %14 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  %start = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %14, i64 0, i32 0
  %15 = load i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i64*)** %start, align 8
  %index45 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 5
  %call46 = call i8* %15(%struct.seq_file* noundef %2, i64* noundef %index45) #20
  %tobool51.not340 = icmp eq i8* %call46, null
  br i1 %tobool51.not340, label %while.end106.split.loop.exit327, label %lor.lhs.false.lr.ph

lor.lhs.false.lr.ph:                              ; preds = %if.end43
  %size95 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 1
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.false.lr.ph, %while.cond47.backedge
  %p.0341 = phi i8* [ %call46, %lor.lhs.false.lr.ph ], [ %p.0.be, %while.cond47.backedge ]
  %call52 = call fastcc i1 @IS_ERR(i8* noundef nonnull %p.0341) #19
  br i1 %call52, label %while.end106.split.loop.exit330, label %if.end55

if.end55:                                         ; preds = %lor.lhs.false
  %16 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  %show = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %16, i64 0, i32 3
  %17 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %show, align 8
  %call57 = call i32 %17(%struct.seq_file* noundef %2, i8* noundef nonnull %p.0341) #20
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %while.end106, label %if.end61

if.end61:                                         ; preds = %if.end55
  %tobool62.not = icmp eq i32 %call57, 0
  br i1 %tobool62.not, label %if.end72, label %if.end72.thread, !prof !7

if.end72.thread:                                  ; preds = %if.end61
  store i64 0, i64* %count30, align 8
  br label %if.then84

if.end72:                                         ; preds = %if.end61
  %.pr = load i64, i64* %count30, align 8
  %tobool74.not = icmp eq i64 %.pr, 0
  br i1 %tobool74.not, label %if.then84, label %if.end88, !prof !10

if.then84:                                        ; preds = %if.end72.thread, %if.end72
  %18 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  %next = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %18, i64 0, i32 2
  %19 = load i8* (%struct.seq_file*, i8*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)** %next, align 8
  %call87 = call i8* %19(%struct.seq_file* noundef %2, i8* noundef nonnull %p.0341, i64* noundef %index45) #20
  br label %while.cond47.backedge

while.cond47.backedge:                            ; preds = %if.then84, %if.end101
  %p.0.be = phi i8* [ %call87, %if.then84 ], [ %call105, %if.end101 ]
  %tobool51.not = icmp eq i8* %p.0.be, null
  br i1 %tobool51.not, label %while.end106.split.loop.exit327, label %lor.lhs.false

if.end88:                                         ; preds = %if.end72
  %call89 = call fastcc i1 @seq_has_overflowed(%struct.seq_file* noundef %2) #19
  br i1 %call89, label %if.end91, label %while.cond110.outer

if.end91:                                         ; preds = %if.end88
  %20 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  %stop = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %20, i64 0, i32 1
  %21 = load void (%struct.seq_file*, i8*)*, void (%struct.seq_file*, i8*)** %stop, align 8
  call void %21(%struct.seq_file* noundef %2, i8* noundef nonnull %p.0341) #20
  %22 = load i8*, i8** %buf, align 8
  call void @kvfree(i8* noundef %22) #20
  store i64 0, i64* %count30, align 8
  %23 = load i64, i64* %size95, align 8
  %shl = shl i64 %23, 1
  store i64 %shl, i64* %size95, align 8
  %call96 = call fastcc i8* @seq_buf_alloc(i64 noundef %shl) #19
  store i8* %call96, i8** %buf, align 8
  %tobool99.not = icmp eq i8* %call96, null
  br i1 %tobool99.not, label %Done, label %if.end101

if.end101:                                        ; preds = %if.end91
  %24 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  %start103 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %24, i64 0, i32 0
  %25 = load i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i64*)** %start103, align 8
  %call105 = call i8* %25(%struct.seq_file* noundef %2, i64* noundef %index45) #20
  br label %while.cond47.backedge

while.end106.split.loop.exit327:                  ; preds = %while.cond47.backedge, %if.end43
  %call49.le = call fastcc i64 @PTR_ERR(i8* noundef null) #19
  %conv50.le333 = trunc i64 %call49.le to i32
  br label %while.end106

while.end106.split.loop.exit330:                  ; preds = %lor.lhs.false
  %call49.le338 = call fastcc i64 @PTR_ERR(i8* noundef nonnull %p.0341) #19
  %conv50.le = trunc i64 %call49.le338 to i32
  br label %while.end106

while.end106:                                     ; preds = %if.end55, %while.end106.split.loop.exit330, %while.end106.split.loop.exit327
  %p.0.lcssa = phi i8* [ null, %while.end106.split.loop.exit327 ], [ %p.0341, %while.end106.split.loop.exit330 ], [ %p.0341, %if.end55 ]
  %err.1 = phi i32 [ %conv50.le333, %while.end106.split.loop.exit327 ], [ %conv50.le, %while.end106.split.loop.exit330 ], [ %call57, %if.end55 ]
  %26 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  %stop108 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %26, i64 0, i32 1
  %27 = load void (%struct.seq_file*, i8*)*, void (%struct.seq_file*, i8*)** %stop108, align 8
  call void %27(%struct.seq_file* noundef %2, i8* noundef %p.0.lcssa) #20
  store i64 0, i64* %count30, align 8
  br label %Done

while.cond110:                                    ; preds = %while.cond110.outer, %if.then148
  %p.1 = phi i8* [ %call117, %if.then148 ], [ %p.1.ph, %while.cond110.outer ]
  %err.2 = phi i32 [ %call145, %if.then148 ], [ %err.2.ph, %while.cond110.outer ]
  %28 = load i64, i64* %index45, align 8
  %29 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  %next115 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %29, i64 0, i32 2
  %30 = load i8* (%struct.seq_file*, i8*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)** %next115, align 8
  %call117 = call i8* %30(%struct.seq_file* noundef %2, i8* noundef nonnull %p.1, i64* noundef %index45) #20
  %31 = load i64, i64* %index45, align 8
  %cmp119 = icmp eq i64 %28, %31
  br i1 %cmp119, label %if.then121, label %if.end130

if.then121:                                       ; preds = %while.cond110
  %call122 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @seq_read_iter._rs, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.seq_read_iter, i64 0, i64 0)) #20
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end128, label %do.end

do.end:                                           ; preds = %if.then121
  %32 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  %next126 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %32, i64 0, i32 2
  %33 = load i8* (%struct.seq_file*, i8*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)** %next126, align 8
  %call127 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* (%struct.seq_file*, i8*, i64*)* noundef %33) #21
  br label %if.end128

if.end128:                                        ; preds = %do.end, %if.then121
  %34 = load i64, i64* %index45, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %index45, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.end128, %while.cond110
  %tobool131.not = icmp eq i8* %call117, null
  br i1 %tobool131.not, label %while.end160, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %if.end130
  %call133 = call fastcc i1 @IS_ERR(i8* noundef nonnull %call117) #19
  br i1 %call133, label %while.end160, label %if.end136

if.end136:                                        ; preds = %lor.lhs.false132
  %35 = load i64, i64* %count30, align 8
  %call138 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #19
  %cmp139.not = icmp ult i64 %35, %call138
  br i1 %cmp139.not, label %if.end142, label %while.end160

if.end142:                                        ; preds = %if.end136
  %36 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  %show144 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %36, i64 0, i32 3
  %37 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %show144, align 8
  %call145 = call i32 %37(%struct.seq_file* noundef %2, i8* noundef nonnull %call117) #20
  %cmp146 = icmp sgt i32 %call145, 0
  br i1 %cmp146, label %if.then148, label %if.else150

if.then148:                                       ; preds = %if.end142
  store i64 %.ph, i64* %count30, align 8
  br label %while.cond110

if.else150:                                       ; preds = %if.end142
  %tobool151.not = icmp eq i32 %call145, 0
  br i1 %tobool151.not, label %lor.lhs.false152, label %if.then155

lor.lhs.false152:                                 ; preds = %if.else150
  %call153 = call fastcc i1 @seq_has_overflowed(%struct.seq_file* noundef %2) #19
  br i1 %call153, label %if.then155, label %lor.lhs.false152.cleanup_crit_edge

lor.lhs.false152.cleanup_crit_edge:               ; preds = %lor.lhs.false152
  %.pre357.pre = load i64, i64* %count30, align 8
  br label %while.cond110.outer

while.cond110.outer:                              ; preds = %if.end88, %lor.lhs.false152.cleanup_crit_edge
  %.ph = phi i64 [ %.pre357.pre, %lor.lhs.false152.cleanup_crit_edge ], [ %.pr, %if.end88 ]
  %p.1.ph = phi i8* [ %call117, %lor.lhs.false152.cleanup_crit_edge ], [ %p.0341, %if.end88 ]
  %err.2.ph = phi i32 [ %call145, %lor.lhs.false152.cleanup_crit_edge ], [ 0, %if.end88 ]
  br label %while.cond110

if.then155:                                       ; preds = %lor.lhs.false152, %if.else150
  store i64 %.ph, i64* %count30, align 8
  br label %while.end160

while.end160:                                     ; preds = %lor.lhs.false132, %if.end130, %if.end136, %if.then155
  %err.3.ph = phi i32 [ %call145, %if.then155 ], [ %err.2, %if.end136 ], [ %err.2, %if.end130 ], [ %err.2, %lor.lhs.false132 ]
  %38 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  %stop162 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %38, i64 0, i32 1
  %39 = load void (%struct.seq_file*, i8*)*, void (%struct.seq_file*, i8*)** %stop162, align 8
  call void %39(%struct.seq_file* noundef %2, i8* noundef %call117) #20
  %40 = load i64, i64* %count30, align 8
  %cmp11.i.i305 = icmp ugt i64 %40, 2147483647
  br i1 %cmp11.i.i305, label %check_copy_size.exit.i306, label %if.else.i308, !prof !10

check_copy_size.exit.i306:                        ; preds = %while.end160
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !11
  br label %copy_to_iter.exit310

if.else.i308:                                     ; preds = %while.end160
  %41 = load i8*, i8** %buf, align 8
  %call3.i307 = call i64 @_copy_to_iter(i8* noundef %41, i64 noundef %40, %struct.iov_iter* noundef %iter) #20
  br label %copy_to_iter.exit310

copy_to_iter.exit310:                             ; preds = %check_copy_size.exit.i306, %if.else.i308
  %retval.0.i309 = phi i64 [ %call3.i307, %if.else.i308 ], [ 0, %check_copy_size.exit.i306 ]
  %add166 = add i64 %retval.0.i309, %copied.0
  %42 = load i64, i64* %count30, align 8
  %sub168 = sub i64 %42, %retval.0.i309
  store i64 %sub168, i64* %count30, align 8
  store i64 %retval.0.i309, i64* %from44, align 8
  br label %Done

Done:                                             ; preds = %if.end91, %copy_to_iter.exit, %copy_to_iter.exit310, %while.end106
  %copied.1 = phi i64 [ %retval.0.i, %copy_to_iter.exit ], [ %copied.0, %while.end106 ], [ %add166, %copy_to_iter.exit310 ], [ %copied.0, %if.end91 ]
  %err.4 = phi i32 [ 0, %copy_to_iter.exit ], [ %err.1, %while.end106 ], [ %err.3.ph, %copy_to_iter.exit310 ], [ -12, %if.end91 ]
  %tobool170.not = icmp eq i64 %copied.1, 0
  br i1 %tobool170.not, label %if.then180, label %if.else184, !prof !10

if.then180:                                       ; preds = %if.then22, %if.then13, %Done
  %err.4319 = phi i32 [ %err.4, %Done ], [ -12, %if.then22 ], [ %call9, %if.then13 ]
  %count181 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 3
  %43 = load i64, i64* %count181, align 8
  %tobool182.not = icmp eq i64 %43, 0
  %44 = sext i32 %err.4319 to i64
  %conv183 = select i1 %tobool182.not, i64 %44, i64 -14
  br label %if.end189

if.else184:                                       ; preds = %Done
  %45 = load i64, i64* %ki_pos, align 8
  %add186 = add i64 %45, %copied.1
  store i64 %add186, i64* %ki_pos, align 8
  %46 = load i64, i64* %read_pos, align 8
  %add188 = add i64 %46, %copied.1
  store i64 %add188, i64* %read_pos, align 8
  br label %if.end189

if.end189:                                        ; preds = %if.else184, %if.then180
  %copied.2 = phi i64 [ %conv183, %if.then180 ], [ %copied.1, %if.else184 ]
  call void @mutex_unlock(%struct.mutex* noundef %lock) #20
  br label %cleanup191

cleanup191:                                       ; preds = %entry, %if.end189
  %retval.0 = phi i64 [ %copied.2, %if.end189 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #5 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @traverse(%struct.seq_file* noundef %m, i64 noundef %offset) unnamed_addr #0 {
entry:
  %index = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 5
  store i64 0, i64* %index, align 8
  %from = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 2
  store i64 0, i64* %from, align 8
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  store i64 0, i64* %count, align 8
  %tobool.not = icmp eq i64 %offset, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 0
  %0 = load i8*, i8** %buf, align 8
  %tobool1.not = icmp eq i8* %0, null
  br i1 %tobool1.not, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  store i64 4096, i64* %size, align 8
  %call = call fastcc i8* @seq_buf_alloc(i64 noundef 4096) #19
  store i8* %call, i8** %buf, align 8
  %tobool5.not = icmp eq i8* %call, null
  br i1 %tobool5.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.then2, %if.end
  %op = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 8
  %1 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  %start = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %1, i64 0, i32 0
  %2 = load i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i64*)** %start, align 8
  %call10 = call i8* %2(%struct.seq_file* noundef %m, i64* noundef %index) #20
  %tobool11.old.not = icmp eq i8* %call10, null
  br i1 %tobool11.old.not, label %while.end, label %while.body

while.body:                                       ; preds = %if.end8, %if.end42
  %pos.0 = phi i64 [ %add, %if.end42 ], [ 0, %if.end8 ]
  %p.0 = phi i8* [ %call33, %if.end42 ], [ %call10, %if.end8 ]
  %call13 = call fastcc i1 @IS_ERR(i8* noundef nonnull %p.0) #19
  br i1 %call13, label %while.end.loopexit.split.loop.exit, label %if.end15

if.end15:                                         ; preds = %while.body
  %3 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  %show = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %3, i64 0, i32 3
  %4 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %show, align 8
  %call17 = call i32 %4(%struct.seq_file* noundef %m, i8* noundef nonnull %p.0) #20
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %while.end, label %if.end20

if.end20:                                         ; preds = %if.end15
  %tobool21.not = icmp eq i32 %call17, 0
  br i1 %tobool21.not, label %if.end27, label %if.then25, !prof !7

if.then25:                                        ; preds = %if.end20
  store i64 0, i64* %count, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end20
  %call28 = call fastcc i1 @seq_has_overflowed(%struct.seq_file* noundef %m) #19
  %5 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  br i1 %call28, label %Eoverflow, label %if.end30

if.end30:                                         ; preds = %if.end27
  %next = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %5, i64 0, i32 2
  %6 = load i8* (%struct.seq_file*, i8*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)** %next, align 8
  %call33 = call i8* %6(%struct.seq_file* noundef %m, i8* noundef nonnull %p.0, i64* noundef %index) #20
  %7 = load i64, i64* %count, align 8
  %add = add i64 %7, %pos.0
  %cmp35 = icmp ugt i64 %add, %offset
  br i1 %cmp35, label %if.then37, label %if.end42

if.then37:                                        ; preds = %if.end30
  %sub = sub i64 %offset, %pos.0
  store i64 %sub, i64* %from, align 8
  %sub41 = sub i64 %7, %sub
  store i64 %sub41, i64* %count, align 8
  br label %while.end

if.end42:                                         ; preds = %if.end30
  store i64 0, i64* %count, align 8
  %cmp46 = icmp ne i64 %add, %offset
  %tobool11 = icmp ne i8* %call33, null
  %or.cond = select i1 %cmp46, i1 %tobool11, i1 false
  br i1 %or.cond, label %while.body, label %while.end

while.end.loopexit.split.loop.exit:               ; preds = %while.body
  %call12.le = call fastcc i64 @PTR_ERR(i8* noundef nonnull %p.0) #19
  %conv.le = trunc i64 %call12.le to i32
  br label %while.end

while.end:                                        ; preds = %if.end15, %if.end42, %while.end.loopexit.split.loop.exit, %if.then37, %if.end8
  %error.1 = phi i32 [ 0, %if.then37 ], [ 0, %if.end8 ], [ %conv.le, %while.end.loopexit.split.loop.exit ], [ %call17, %if.end15 ], [ 0, %if.end42 ]
  %p.1 = phi i8* [ %call33, %if.then37 ], [ null, %if.end8 ], [ %p.0, %while.end.loopexit.split.loop.exit ], [ %p.0, %if.end15 ], [ %call33, %if.end42 ]
  %8 = load %struct.seq_operations*, %struct.seq_operations** %op, align 8
  %stop = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %8, i64 0, i32 1
  %9 = load void (%struct.seq_file*, i8*)*, void (%struct.seq_file*, i8*)** %stop, align 8
  call void %9(%struct.seq_file* noundef %m, i8* noundef %p.1) #20
  br label %cleanup

Eoverflow:                                        ; preds = %if.end27
  %stop52 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %5, i64 0, i32 1
  %10 = load void (%struct.seq_file*, i8*)*, void (%struct.seq_file*, i8*)** %stop52, align 8
  call void %10(%struct.seq_file* noundef %m, i8* noundef nonnull %p.0) #20
  %11 = load i8*, i8** %buf, align 8
  call void @kvfree(i8* noundef %11) #20
  store i64 0, i64* %count, align 8
  %size55 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %12 = load i64, i64* %size55, align 8
  %shl = shl i64 %12, 1
  store i64 %shl, i64* %size55, align 8
  %call56 = call fastcc i8* @seq_buf_alloc(i64 noundef %shl) #19
  store i8* %call56, i8** %buf, align 8
  %tobool59.not = icmp eq i8* %call56, null
  %cond = select i1 %tobool59.not, i32 -12, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry, %Eoverflow, %while.end
  %retval.0 = phi i32 [ %error.1, %while.end ], [ %cond, %Eoverflow ], [ 0, %entry ], [ -12, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @seq_buf_alloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %size, 2147479552
  br i1 %cmp, label %return, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @kvmalloc(i64 noundef %size) #19
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #6 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @seq_has_overflowed(%struct.seq_file* nocapture noundef readonly %m) unnamed_addr #5 {
entry:
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %0, %1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @seq_lseek(%struct.file* nocapture noundef %file, i64 noundef %offset, i32 noundef %whence) local_unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.seq_file**
  %1 = load %struct.seq_file*, %struct.seq_file** %0, align 8
  %lock = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 7
  call void @mutex_lock(%struct.mutex* noundef %lock) #20
  switch i32 %whence, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  %2 = load i64, i64* %f_pos, align 8
  %add = add i64 %2, %offset
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb
  %offset.addr.0 = phi i64 [ %offset, %entry ], [ %add, %sw.bb ]
  %cmp = icmp slt i64 %offset.addr.0, 0
  br i1 %cmp, label %sw.epilog, label %if.end

if.end:                                           ; preds = %sw.bb2
  %read_pos = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 6
  %3 = load i64, i64* %read_pos, align 8
  %cmp3.not = icmp eq i64 %offset.addr.0, %3
  br i1 %cmp3.not, label %if.else13, label %while.cond

while.cond:                                       ; preds = %if.end, %while.cond
  %call = call fastcc i32 @traverse(%struct.seq_file* noundef %1, i64 noundef %offset.addr.0) #19
  switch i32 %call, label %if.then7 [
    i32 -11, label %while.cond
    i32 0, label %if.else
  ]

if.then7:                                         ; preds = %while.cond
  %conv = sext i32 %call to i64
  %f_pos8 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  store i64 0, i64* %f_pos8, align 8
  store i64 0, i64* %read_pos, align 8
  %index = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 5
  store i64 0, i64* %index, align 8
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 3
  store i64 0, i64* %count, align 8
  br label %sw.epilog

if.else:                                          ; preds = %while.cond
  store i64 %offset.addr.0, i64* %read_pos, align 8
  %f_pos11 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  store i64 %offset.addr.0, i64* %f_pos11, align 8
  br label %sw.epilog

if.else13:                                        ; preds = %if.end
  %f_pos14 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  store i64 %offset.addr.0, i64* %f_pos14, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else13, %if.else, %if.then7, %sw.bb2, %entry
  %retval1.0 = phi i64 [ -22, %entry ], [ -22, %sw.bb2 ], [ %conv, %if.then7 ], [ %offset.addr.0, %if.else ], [ %offset.addr.0, %if.else13 ]
  call void @mutex_unlock(%struct.mutex* noundef %lock) #20
  ret i64 %retval1.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_release(%struct.inode* nocapture readnone %inode, %struct.file* nocapture noundef readonly %file) local_unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = load i8*, i8** %private_data, align 8
  %buf = bitcast i8* %0 to i8**
  %1 = load i8*, i8** %buf, align 8
  call void @kvfree(i8* noundef %1) #20
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** @seq_file_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %2, i8* noundef %0) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @seq_escape_mem(%struct.seq_file* nocapture noundef %m, i8* noundef %src, i64 noundef %len, i32 noundef %flags, i8* noundef %esc) local_unnamed_addr #0 {
entry:
  %buf = alloca i8*, align 8
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i8* null, i8** %buf, align 8, !annotation !9
  %call = call fastcc i64 @seq_get_buf(%struct.seq_file* noundef %m, i8** noundef nonnull %buf) #19
  %1 = load i8*, i8** %buf, align 8
  %call1 = call i32 @string_escape_mem(i8* noundef %src, i64 noundef %len, i8* noundef %1, i64 noundef %call, i32 noundef %flags, i8* noundef %esc) #20
  %conv = sext i32 %call1 to i64
  %cmp = icmp ugt i64 %call, %conv
  %cond = select i1 %cmp, i32 %call1, i32 -1
  call fastcc void @seq_commit(%struct.seq_file* noundef %m, i32 noundef %cond) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @seq_get_buf(%struct.seq_file* nocapture noundef readonly %m, i8** nocapture noundef writeonly %bufp) unnamed_addr #0 {
entry:
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %do.body2, label %do.end5, !prof !10

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/seq_file.h\22; .popsection; .long 14472b - 14470b; .short 65; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !12
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @string_escape_mem(i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

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
  br i1 %cmp3, label %do.body8, label %do.end11, !prof !10

do.body8:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/seq_file.h\22; .popsection; .long 14472b - 14470b; .short 88; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !13
  unreachable

do.end11:                                         ; preds = %do.body
  store i64 %add, i64* %count1, align 8
  br label %if.end15

if.end15:                                         ; preds = %do.end11, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @seq_escape(%struct.seq_file* nocapture noundef %m, i8* noundef %s, i8* noundef %esc) local_unnamed_addr #0 {
entry:
  call fastcc void @seq_escape_str(%struct.seq_file* noundef %m, i8* noundef %s, i8* noundef %esc) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @seq_escape_str(%struct.seq_file* nocapture noundef %m, i8* noundef %src, i8* noundef %esc) unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %src) #20
  call void @seq_escape_mem(%struct.seq_file* noundef %m, i8* noundef %src, i64 noundef %call, i32 noundef 8, i8* noundef %esc) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @seq_vprintf(%struct.seq_file* nocapture noundef %m, i8* noundef %f, %"struct.std::__va_list"* nocapture noundef readonly %args) local_unnamed_addr #0 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %1, %0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 %0
  %sub = sub i64 %1, %0
  %3 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #18
  %4 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %3, i8* noundef align 8 dereferenceable(32) %4, i64 32, i1 false)
  %call = call i32 @vsnprintf(i8* noundef %add.ptr, i64 noundef %sub, i8* noundef %f, %"struct.std::__va_list"* noundef nonnull %byval-temp) #20
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #18
  %5 = load i64, i64* %count, align 8
  %conv = sext i32 %call to i64
  %add = add i64 %5, %conv
  %6 = load i64, i64* %size, align 8
  %cmp6 = icmp ult i64 %add, %6
  br i1 %cmp6, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then
  store i64 %add, i64* %count, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.then, %entry
  call fastcc void @seq_set_overflow(%struct.seq_file* noundef %m) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @seq_set_overflow(%struct.seq_file* nocapture noundef %m) unnamed_addr #9 {
entry:
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %0 = load i64, i64* %size, align 8
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  store i64 %0, i64* %count, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @seq_printf(%struct.seq_file* nocapture noundef %m, i8* noundef %f, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @seq_vprintf(%struct.seq_file* noundef %m, i8* noundef %f, %"struct.std::__va_list"* noundef nonnull %byval-temp) #19
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #18
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @mangle_path(i8* noundef writeonly %s, i8* noundef readonly %p, i8* noundef %esc) local_unnamed_addr #0 {
entry:
  %cmp.not47 = icmp ugt i8* %s, %p
  br i1 %cmp.not47, label %return, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %p.addr.049 = phi i8* [ %incdec.ptr, %cleanup ], [ %p, %entry ]
  %s.addr.048 = phi i8* [ %s.addr.2, %cleanup ], [ %s, %entry ]
  %incdec.ptr = getelementptr i8, i8* %p.addr.049, i64 1
  %0 = load i8, i8* %p.addr.049, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %return, label %if.else

if.else:                                          ; preds = %while.body
  %conv = zext i8 %0 to i32
  %call = call i8* @strchr(i8* noundef %esc, i32 noundef %conv) #20
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %incdec.ptr3 = getelementptr i8, i8* %s.addr.048, i64 1
  store i8 %0, i8* %s.addr.048, align 1
  br label %cleanup

if.else4:                                         ; preds = %if.else
  %add.ptr = getelementptr i8, i8* %s.addr.048, i64 4
  %cmp5 = icmp ugt i8* %add.ptr, %incdec.ptr
  br i1 %cmp5, label %return, label %if.else8

if.else8:                                         ; preds = %if.else4
  %incdec.ptr9 = getelementptr i8, i8* %s.addr.048, i64 1
  store i8 92, i8* %s.addr.048, align 1
  %1 = lshr i8 %0, 6
  %add = or i8 %1, 48
  %incdec.ptr12 = getelementptr i8, i8* %s.addr.048, i64 2
  store i8 %add, i8* %incdec.ptr9, align 1
  %and14 = lshr i8 %0, 3
  %2 = and i8 %and14, 7
  %add16 = or i8 %2, 48
  %incdec.ptr18 = getelementptr i8, i8* %s.addr.048, i64 3
  store i8 %add16, i8* %incdec.ptr12, align 1
  %and20 = and i8 %0, 7
  %add21 = or i8 %and20, 48
  store i8 %add21, i8* %incdec.ptr18, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else8, %if.then2
  %s.addr.2 = phi i8* [ %add.ptr, %if.else8 ], [ %incdec.ptr3, %if.then2 ]
  %cmp.not = icmp ugt i8* %s.addr.2, %incdec.ptr
  br i1 %cmp.not, label %return, label %while.body

return:                                           ; preds = %cleanup, %while.body, %if.else4, %entry
  %retval.2 = phi i8* [ null, %entry ], [ null, %if.else4 ], [ %s.addr.048, %while.body ], [ null, %cleanup ]
  ret i8* %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_path(%struct.seq_file* nocapture noundef %m, %struct.path* noundef %path, i8* noundef %esc) local_unnamed_addr #0 {
entry:
  %buf = alloca i8*, align 8
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i8* null, i8** %buf, align 8, !annotation !9
  %call = call fastcc i64 @seq_get_buf(%struct.seq_file* noundef %m, i8** noundef nonnull %buf) #19
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf, align 8
  %conv = trunc i64 %call to i32
  %call1 = call i8* @d_path(%struct.path* noundef %path, i8* noundef %1, i32 noundef %conv) #20
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %call1) #19
  br i1 %call2, label %if.end9, label %if.then3

if.then3:                                         ; preds = %if.then
  %call4 = call i8* @mangle_path(i8* noundef %1, i8* noundef %call1, i8* noundef %esc) #19
  %tobool5.not = icmp eq i8* %call4, null
  %sub.ptr.lhs.cast = ptrtoint i8* %call4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv7 = trunc i64 %sub.ptr.sub to i32
  %res.0 = select i1 %tobool5.not, i32 -1, i32 %conv7
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then3, %entry
  %res.2 = phi i32 [ -1, %entry ], [ -1, %if.then ], [ %res.0, %if.then3 ]
  call fastcc void @seq_commit(%struct.seq_file* noundef %m, i32 noundef %res.2) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %res.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @d_path(%struct.path* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_file_path(%struct.seq_file* nocapture noundef %m, %struct.file* noundef %file, i8* noundef %esc) local_unnamed_addr #0 {
entry:
  %f_path = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1
  %call = call i32 @seq_path(%struct.seq_file* noundef %m, %struct.path* noundef %f_path, i8* noundef %esc) #19
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_path_root(%struct.seq_file* nocapture noundef %m, %struct.path* noundef %path, %struct.path* noundef %root, i8* noundef %esc) local_unnamed_addr #0 {
entry:
  %buf = alloca i8*, align 8
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i8* null, i8** %buf, align 8, !annotation !9
  %call = call fastcc i64 @seq_get_buf(%struct.seq_file* noundef %m, i8** noundef nonnull %buf) #19
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf, align 8
  %conv = trunc i64 %call to i32
  %call1 = call i8* @__d_path(%struct.path* noundef %path, %struct.path* noundef %root, i8* noundef %1, i32 noundef %conv) #20
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %cleanup18, label %if.end

if.end:                                           ; preds = %if.then
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef nonnull %call1) #19
  %conv5 = trunc i64 %call4 to i32
  %call6 = call fastcc i1 @IS_ERR(i8* noundef nonnull %call1) #19
  br i1 %call6, label %if.end14, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = call i8* @mangle_path(i8* noundef %1, i8* noundef nonnull %call1, i8* noundef %esc) #19
  %tobool9.not = icmp eq i8* %call8, null
  %sub.ptr.lhs.cast = ptrtoint i8* %call8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv11 = trunc i64 %sub.ptr.sub to i32
  %res.0 = select i1 %tobool9.not, i32 -36, i32 %conv11
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end, %entry
  %res.3 = phi i32 [ -36, %entry ], [ %res.0, %if.then7 ], [ %conv5, %if.end ]
  call fastcc void @seq_commit(%struct.seq_file* noundef %m, i32 noundef %res.3) #19
  %cmp = icmp slt i32 %res.3, 0
  %cmp16 = icmp ne i32 %res.3, -36
  %or.cond = and i1 %cmp, %cmp16
  %cond = select i1 %or.cond, i32 %res.3, i32 0
  br label %cleanup18

cleanup18:                                        ; preds = %if.then, %if.end14
  %retval.1 = phi i32 [ %cond, %if.end14 ], [ 1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__d_path(%struct.path* noundef, %struct.path* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_dentry(%struct.seq_file* nocapture noundef %m, %struct.dentry* noundef %dentry, i8* noundef %esc) local_unnamed_addr #0 {
entry:
  %buf = alloca i8*, align 8
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i8* null, i8** %buf, align 8, !annotation !9
  %call = call fastcc i64 @seq_get_buf(%struct.seq_file* noundef %m, i8** noundef nonnull %buf) #19
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf, align 8
  %conv = trunc i64 %call to i32
  %call1 = call i8* @dentry_path(%struct.dentry* noundef %dentry, i8* noundef %1, i32 noundef %conv) #20
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %call1) #19
  br i1 %call2, label %if.end9, label %if.then3

if.then3:                                         ; preds = %if.then
  %call4 = call i8* @mangle_path(i8* noundef %1, i8* noundef %call1, i8* noundef %esc) #19
  %tobool5.not = icmp eq i8* %call4, null
  %sub.ptr.lhs.cast = ptrtoint i8* %call4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv7 = trunc i64 %sub.ptr.sub to i32
  %res.0 = select i1 %tobool5.not, i32 -1, i32 %conv7
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then3, %entry
  %res.2 = phi i32 [ -1, %entry ], [ -1, %if.then ], [ %res.0, %if.then3 ]
  call fastcc void @seq_commit(%struct.seq_file* noundef %m, i32 noundef %res.2) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %res.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @dentry_path(%struct.dentry* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @single_open(%struct.file* noundef %file, i32 (%struct.seq_file*, i8*)* noundef %show, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 4197568) #20
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i8* %call.i.i to %struct.seq_operations*
  %start = bitcast i8* %call.i.i to i8* (%struct.seq_file*, i64*)**
  store i8* (%struct.seq_file*, i64*)* @single_start, i8* (%struct.seq_file*, i64*)** %start, align 8
  %next = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %2 = bitcast i8* %next to i8* (%struct.seq_file*, i8*, i64*)**
  store i8* (%struct.seq_file*, i8*, i64*)* @single_next, i8* (%struct.seq_file*, i8*, i64*)** %2, align 8
  %stop = getelementptr inbounds i8, i8* %call.i.i, i64 8
  %3 = bitcast i8* %stop to void (%struct.seq_file*, i8*)**
  store void (%struct.seq_file*, i8*)* @single_stop, void (%struct.seq_file*, i8*)** %3, align 8
  %show1 = getelementptr inbounds i8, i8* %call.i.i, i64 24
  %4 = bitcast i8* %show1 to i32 (%struct.seq_file*, i8*)**
  store i32 (%struct.seq_file*, i8*)* %show, i32 (%struct.seq_file*, i8*)** %4, align 8
  %call2 = call i32 @seq_open(%struct.file* noundef %file, %struct.seq_operations* noundef nonnull %1) #19
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %5 = bitcast i8** %private_data to %struct.seq_file**
  %6 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i64 0, i32 11
  store i8* %data, i8** %private, align 8
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @kfree(i8* noundef nonnull %call.i.i) #20
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else, %entry
  %res.0 = phi i32 [ %call2, %if.else ], [ 0, %if.then4 ], [ -12, %entry ]
  ret i32 %res.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal noalias i8* @single_start(%struct.seq_file* nocapture noundef readnone %p, i64* nocapture noundef readonly %pos) #5 {
entry:
  %0 = load i64, i64* %pos, align 8
  %cmp = icmp eq i64 %0, 0
  %1 = zext i1 %cmp to i64
  %add.ptr = getelementptr i8, i8* null, i64 %1
  ret i8* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal noalias i8* @single_next(%struct.seq_file* nocapture noundef readnone %p, i8* nocapture noundef readnone %v, i64* nocapture noundef %pos) #9 {
entry:
  %0 = load i64, i64* %pos, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %pos, align 8
  ret i8* null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @single_stop(%struct.seq_file* nocapture noundef %p, i8* nocapture noundef %v) #6 {
entry:
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @single_open_size(%struct.file* noundef %file, i32 (%struct.seq_file*, i8*)* noundef %show, i8* noundef %data, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @seq_buf_alloc(i64 noundef %size) #19
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @single_open(%struct.file* noundef %file, i32 (%struct.seq_file*, i8*)* noundef %show, i8* noundef %data) #19
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @kvfree(i8* noundef nonnull %call) #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.seq_file**
  %1 = load %struct.seq_file*, %struct.seq_file** %0, align 8
  %buf5 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 0
  store i8* %call, i8** %buf5, align 8
  %2 = load %struct.seq_file*, %struct.seq_file** %0, align 8
  %size7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %2, i64 0, i32 1
  store i64 %size, i64* %size7, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @single_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readonly %file) local_unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.seq_file**
  %1 = load %struct.seq_file*, %struct.seq_file** %0, align 8
  %op1 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 8
  %2 = bitcast %struct.seq_operations** %op1 to i8**
  %3 = load i8*, i8** %2, align 8
  %call = call i32 @seq_release(%struct.inode* undef, %struct.file* noundef %file) #19
  call void @kfree(i8* noundef %3) #20
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_release_private(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readonly %file) local_unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.seq_file**
  %1 = load %struct.seq_file*, %struct.seq_file** %0, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 11
  %2 = load i8*, i8** %private, align 8
  call void @kfree(i8* noundef %2) #20
  store i8* null, i8** %private, align 8
  %call = call i32 @seq_release(%struct.inode* undef, %struct.file* noundef %file) #19
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__seq_open_private(%struct.file* noundef %f, %struct.seq_operations* noundef %ops, i32 noundef %psize) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %psize to i64
  %call = call fastcc i8* @kzalloc(i64 noundef %conv) #19
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @seq_open(%struct.file* noundef %f, %struct.seq_operations* noundef %ops) #19
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %out_free, label %if.end6

if.end6:                                          ; preds = %if.end
  %private_data = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.seq_file**
  %1 = load %struct.seq_file*, %struct.seq_file** %0, align 8
  %private7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %1, i64 0, i32 11
  store i8* %call, i8** %private7, align 8
  br label %cleanup

out_free:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #20
  br label %cleanup

cleanup:                                          ; preds = %out_free, %entry, %if.end6
  %retval.0 = phi i8* [ %call, %if.end6 ], [ null, %entry ], [ null, %out_free ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 4197824) #20
  ret i8* %call10.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_open_private(%struct.file* noundef %filp, %struct.seq_operations* noundef %ops, i32 noundef %psize) local_unnamed_addr #0 {
entry:
  %call = call i8* @__seq_open_private(%struct.file* noundef %filp, %struct.seq_operations* noundef %ops, i32 noundef %psize) #19
  %tobool.not = icmp eq i8* %call, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @seq_putc(%struct.seq_file* nocapture noundef %m, i8 noundef %c) local_unnamed_addr #9 {
entry:
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp.not = icmp ult i64 %0, %1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %inc = add nuw i64 %0, 1
  store i64 %inc, i64* %count, align 8
  %arrayidx = getelementptr i8, i8* %2, i64 %0
  store i8 %c, i8* %arrayidx, align 1
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @seq_puts(%struct.seq_file* nocapture noundef %m, i8* noundef %s) local_unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %s) #20
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %sext = shl i64 %call, 32
  %conv1 = ashr exact i64 %sext, 32
  %add = add i64 %conv1, %0
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp.not = icmp ult i64 %add, %1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @seq_set_overflow(%struct.seq_file* noundef %m) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 %0
  %call5 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %s, i64 noundef %conv1) #20
  %3 = load i64, i64* %count, align 8
  %add8 = add i64 %3, %conv1
  store i64 %add8, i64* %count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @seq_put_decimal_ull_width(%struct.seq_file* nocapture noundef %m, i8* noundef %delimiter, i64 noundef %num, i32 noundef %width) local_unnamed_addr #0 {
entry:
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %add = add i64 %0, 2
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp.not = icmp ult i64 %add, %1
  br i1 %cmp.not, label %if.end, label %overflow

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %delimiter, null
  br i1 %tobool.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, i8* %delimiter, align 1
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %land.lhs.true
  %arrayidx3 = getelementptr i8, i8* %delimiter, i64 1
  %3 = load i8, i8* %arrayidx3, align 1
  %cmp5 = icmp eq i8 %3, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then2
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef %2) #19
  br label %if.end10

if.else:                                          ; preds = %if.then2
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef nonnull %delimiter) #19
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.else, %land.lhs.true, %if.end
  %tobool11.not = icmp eq i32 %width, 0
  %spec.store.select = select i1 %tobool11.not, i32 1, i32 %width
  %4 = load i64, i64* %count, align 8
  %conv15 = zext i32 %spec.store.select to i64
  %add16 = add i64 %4, %conv15
  %5 = load i64, i64* %size, align 8
  %cmp18.not = icmp ult i64 %add16, %5
  br i1 %cmp18.not, label %if.end21, label %overflow

if.end21:                                         ; preds = %if.end10
  %buf = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 0
  %6 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %6, i64 %4
  %sub = sub i64 %5, %4
  %conv25 = trunc i64 %sub to i32
  %call = call i32 @num_to_str(i8* noundef %add.ptr, i32 noundef %conv25, i64 noundef %num, i32 noundef %spec.store.select) #20
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %overflow, label %if.end28

if.end28:                                         ; preds = %if.end21
  %conv29 = sext i32 %call to i64
  %7 = load i64, i64* %count, align 8
  %add31 = add i64 %7, %conv29
  store i64 %add31, i64* %count, align 8
  br label %cleanup

overflow:                                         ; preds = %if.end21, %if.end10, %entry
  call fastcc void @seq_set_overflow(%struct.seq_file* noundef %m) #19
  br label %cleanup

cleanup:                                          ; preds = %overflow, %if.end28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @num_to_str(i8* noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @seq_put_decimal_ull(%struct.seq_file* nocapture noundef %m, i8* noundef %delimiter, i64 noundef %num) local_unnamed_addr #0 {
entry:
  call void @seq_put_decimal_ull_width(%struct.seq_file* noundef %m, i8* noundef %delimiter, i64 noundef %num, i32 noundef 0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @seq_put_hex_ll(%struct.seq_file* nocapture noundef %m, i8* noundef %delimiter, i64 noundef %v, i32 noundef %width) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %delimiter, null
  br i1 %tobool.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, i8* %delimiter, align 1
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.end7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %arrayidx2 = getelementptr i8, i8* %delimiter, i64 1
  %1 = load i8, i8* %arrayidx2, align 1
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef %0) #19
  br label %if.end7

if.else:                                          ; preds = %if.then
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef nonnull %delimiter) #19
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else, %land.lhs.true, %entry
  %cmp8 = icmp eq i64 %v, 0
  %2 = call i64 @llvm.ctlz.i64(i64 %v, i1 true), !range !14
  %add = sub nuw nsw i64 67, %2
  %div = lshr i64 %add, 2
  %conv13 = trunc i64 %div to i32
  %len.0 = select i1 %cmp8, i32 1, i32 %conv13
  %cmp15 = icmp ult i32 %len.0, %width
  %len.1 = select i1 %cmp15, i32 %width, i32 %len.0
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %3 = load i64, i64* %count, align 8
  %conv19 = zext i32 %len.1 to i64
  %add20 = add i64 %3, %conv19
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %4 = load i64, i64* %size, align 8
  %cmp21 = icmp ugt i64 %add20, %4
  br i1 %cmp21, label %if.then23, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7
  %i.060 = add i32 %len.1, -1
  %cmp2661 = icmp sgt i32 %i.060, -1
  br i1 %cmp2661, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %buf = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 0
  %and66 = and i64 %v, 15
  %arrayidx2867 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %and66
  %5 = load i8, i8* %arrayidx2867, align 1
  %6 = load i8*, i8** %buf, align 8
  %conv305968 = zext i32 %i.060 to i64
  %add3169 = add i64 %3, %conv305968
  %arrayidx3270 = getelementptr i8, i8* %6, i64 %add3169
  store i8 %5, i8* %arrayidx3270, align 1
  %i.071 = add i32 %len.1, -2
  %cmp2672 = icmp sgt i32 %i.071, -1
  br i1 %cmp2672, label %for.body.for.body_crit_edge, label %for.end.loopexit

if.then23:                                        ; preds = %if.end7
  call fastcc void @seq_set_overflow(%struct.seq_file* noundef %m) #19
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body.lr.ph, %for.body.for.body_crit_edge
  %i.074 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.071, %for.body.lr.ph ]
  %v.addr.06273 = phi i64 [ %shr, %for.body.for.body_crit_edge ], [ %v, %for.body.lr.ph ]
  %shr = lshr i64 %v.addr.06273, 4
  %.pre = load i64, i64* %count, align 8
  %and = and i64 %shr, 15
  %arrayidx28 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %and
  %7 = load i8, i8* %arrayidx28, align 1
  %8 = load i8*, i8** %buf, align 8
  %conv3059 = zext i32 %i.074 to i64
  %add31 = add i64 %.pre, %conv3059
  %arrayidx32 = getelementptr i8, i8* %8, i64 %add31
  store i8 %7, i8* %arrayidx32, align 1
  %i.0 = add i32 %i.074, -1
  %cmp26 = icmp sgt i32 %i.0, -1
  br i1 %cmp26, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pre64 = load i64, i64* %count, align 8
  %.pre65 = add i64 %.pre64, %conv19
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %add35.pre-phi = phi i64 [ %.pre65, %for.end.loopexit ], [ %add20, %for.cond.preheader ]
  store i64 %add35.pre-phi, i64* %count, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then23
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @seq_put_decimal_ll(%struct.seq_file* nocapture noundef %m, i8* noundef %delimiter, i64 noundef %num) local_unnamed_addr #0 {
entry:
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %add = add i64 %0, 3
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp.not = icmp ult i64 %add, %1
  br i1 %cmp.not, label %if.end, label %overflow

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %delimiter, null
  br i1 %tobool.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, i8* %delimiter, align 1
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %land.lhs.true
  %arrayidx3 = getelementptr i8, i8* %delimiter, i64 1
  %3 = load i8, i8* %arrayidx3, align 1
  %cmp5 = icmp eq i8 %3, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then2
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef %2) #19
  br label %if.end10

if.else:                                          ; preds = %if.then2
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef nonnull %delimiter) #19
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.else, %land.lhs.true, %if.end
  %4 = load i64, i64* %count, align 8
  %add12 = add i64 %4, 2
  %5 = load i64, i64* %size, align 8
  %cmp14.not = icmp ult i64 %add12, %5
  br i1 %cmp14.not, label %if.end17, label %overflow

if.end17:                                         ; preds = %if.end10
  %cmp18 = icmp slt i64 %num, 0
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end17
  %buf = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 0
  %6 = load i8*, i8** %buf, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %count, align 8
  %arrayidx22 = getelementptr i8, i8* %6, i64 %4
  store i8 45, i8* %arrayidx22, align 1
  %sub = sub i64 0, %num
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17
  %num.addr.0 = phi i64 [ %sub, %if.then20 ], [ %num, %if.end17 ]
  %cmp24 = icmp slt i64 %num.addr.0, 10
  br i1 %cmp24, label %if.then26, label %if.end33

if.then26:                                        ; preds = %if.end23
  %7 = trunc i64 %num.addr.0 to i8
  %conv28 = add i8 %7, 48
  %buf29 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 0
  %8 = load i8*, i8** %buf29, align 8
  %9 = load i64, i64* %count, align 8
  %inc31 = add i64 %9, 1
  store i64 %inc31, i64* %count, align 8
  %arrayidx32 = getelementptr i8, i8* %8, i64 %9
  store i8 %conv28, i8* %arrayidx32, align 1
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %buf34 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 0
  %10 = load i8*, i8** %buf34, align 8
  %11 = load i64, i64* %count, align 8
  %add.ptr = getelementptr i8, i8* %10, i64 %11
  %12 = load i64, i64* %size, align 8
  %sub38 = sub i64 %12, %11
  %conv39 = trunc i64 %sub38 to i32
  %call = call i32 @num_to_str(i8* noundef %add.ptr, i32 noundef %conv39, i64 noundef %num.addr.0, i32 noundef 0) #20
  %tobool40.not = icmp eq i32 %call, 0
  br i1 %tobool40.not, label %overflow, label %if.end42

if.end42:                                         ; preds = %if.end33
  %conv43 = sext i32 %call to i64
  %13 = load i64, i64* %count, align 8
  %add45 = add i64 %13, %conv43
  store i64 %add45, i64* %count, align 8
  br label %cleanup

overflow:                                         ; preds = %if.end33, %if.end10, %entry
  call fastcc void @seq_set_overflow(%struct.seq_file* noundef %m) #19
  br label %cleanup

cleanup:                                          ; preds = %overflow, %if.end42, %if.then26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @seq_write(%struct.seq_file* nocapture noundef %seq, i8* noundef %data, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %seq, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %add = add i64 %0, %len
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %seq, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp = icmp ult i64 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.seq_file, %struct.seq_file* %seq, i64 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 %0
  %call = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %data, i64 noundef %len) #20
  %3 = load i64, i64* %count, align 8
  %add3 = add i64 %3, %len
  store i64 %add3, i64* %count, align 8
  br label %return

if.end:                                           ; preds = %entry
  call fastcc void @seq_set_overflow(%struct.seq_file* noundef %seq) #19
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @seq_pad(%struct.seq_file* nocapture noundef %m, i8 noundef %c) local_unnamed_addr #0 {
entry:
  %pad_until = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 4
  %0 = load i64, i64* %pad_until, align 8
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %1 = load i64, i64* %count, align 8
  %sub = sub i64 %0, %1
  %conv = trunc i64 %sub to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %sext = shl i64 %sub, 32
  %conv2 = ashr exact i64 %sext, 32
  %add = add i64 %conv2, %1
  %size4 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %2 = load i64, i64* %size4, align 8
  %cmp5 = icmp ugt i64 %add, %2
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  call fastcc void @seq_set_overflow(%struct.seq_file* noundef %m) #19
  br label %cleanup

if.end:                                           ; preds = %if.then
  %buf = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 0
  %3 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %3, i64 %1
  %call = call i8* @memset(i8* noundef %add.ptr, i32 noundef 32, i64 noundef %conv2) #20
  %4 = load i64, i64* %count, align 8
  %add12 = add i64 %4, %conv2
  store i64 %add12, i64* %count, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  %tobool.not = icmp eq i8 %c, 0
  br i1 %tobool.not, label %cleanup, label %if.then14

if.then14:                                        ; preds = %if.end13
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef %c) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then14, %if.then7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @seq_hex_dump(%struct.seq_file* nocapture noundef %m, i8* noundef %prefix_str, i32 noundef %prefix_type, i32 noundef %rowsize, i32 noundef %groupsize, i8* noundef %buf, i64 noundef %len, i1 noundef %ascii) local_unnamed_addr #0 {
entry:
  %buffer = alloca i8*, align 8
  %0 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i8* null, i8** %buffer, align 8, !annotation !9
  %cmp = icmp ne i32 %rowsize, 16
  %cmp2 = icmp ne i32 %rowsize, 32
  %or.cond = and i1 %cmp, %cmp2
  %spec.store.select = select i1 %or.cond, i32 16, i32 %rowsize
  %cmp554.not = icmp eq i64 %len, 0
  br i1 %cmp554.not, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %conv = trunc i64 %len to i32
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %sw.epilog
  %conv458 = phi i64 [ %conv4, %sw.epilog ], [ 0, %land.rhs.preheader ]
  %remaining.055 = phi i32 [ %sub, %sw.epilog ], [ %conv, %land.rhs.preheader ]
  %indvars = trunc i64 %conv458 to i32
  %call = call fastcc i1 @seq_has_overflowed(%struct.seq_file* noundef %m) #19
  br i1 %call, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %cmp7 = icmp slt i32 %remaining.055, %spec.store.select
  %cond = select i1 %cmp7, i32 %remaining.055, i32 %spec.store.select
  %sub = sub i32 %remaining.055, %spec.store.select
  switch i32 %prefix_type, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %for.body
  %add.ptr = getelementptr i8, i8* %buf, i64 %conv458
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %prefix_str, i8* noundef %add.ptr) #19
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %prefix_str, i32 noundef %indvars) #19
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef %prefix_str) #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb
  %call10 = call fastcc i64 @seq_get_buf(%struct.seq_file* noundef %m, i8** noundef nonnull %buffer) #19
  %add.ptr12 = getelementptr i8, i8* %buf, i64 %conv458
  %conv13 = sext i32 %cond to i64
  %1 = load i8*, i8** %buffer, align 8
  %call14 = call i32 @hex_dump_to_buffer(i8* noundef %add.ptr12, i64 noundef %conv13, i32 noundef %spec.store.select, i32 noundef %groupsize, i8* noundef %1, i64 noundef %call10, i1 noundef %ascii) #20
  %conv15 = sext i32 %call14 to i64
  %cmp16 = icmp ugt i64 %call10, %conv15
  %cond21 = select i1 %cmp16, i32 %call14, i32 -1
  call fastcc void @seq_commit(%struct.seq_file* noundef %m, i32 noundef %cond21) #19
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #19
  %add = add i32 %spec.store.select, %indvars
  %conv4 = sext i32 %add to i64
  %cmp5 = icmp ult i64 %conv4, %len
  br i1 %cmp5, label %land.rhs, label %for.end

for.end:                                          ; preds = %land.rhs, %sw.epilog, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(i8* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.list_head* @seq_list_start(%struct.list_head* noundef readonly %head, i64 noundef %pos) local_unnamed_addr #12 {
entry:
  %lh.0.in7 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %lh.08 = load %struct.list_head*, %struct.list_head** %lh.0.in7, align 8
  %cmp.not9 = icmp eq %struct.list_head* %lh.08, %head
  br i1 %cmp.not9, label %cleanup, label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add i64 %pos.addr.010, -1
  %lh.0.in = getelementptr inbounds %struct.list_head, %struct.list_head* %lh.011, i64 0, i32 0
  %lh.0 = load %struct.list_head*, %struct.list_head** %lh.0.in, align 8
  %cmp.not = icmp eq %struct.list_head* %lh.0, %head
  br i1 %cmp.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %lh.011 = phi %struct.list_head* [ %lh.0, %for.cond ], [ %lh.08, %entry ]
  %pos.addr.010 = phi i64 [ %dec, %for.cond ], [ %pos, %entry ]
  %cmp1 = icmp eq i64 %pos.addr.010, 0
  br i1 %cmp1, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi %struct.list_head* [ null, %entry ], [ null, %for.cond ], [ %lh.011, %for.body ]
  ret %struct.list_head* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.list_head* @seq_list_start_head(%struct.list_head* noundef readonly %head, i64 noundef %pos) local_unnamed_addr #12 {
entry:
  %tobool.not = icmp eq i64 %pos, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = add i64 %pos, -1
  %call = call %struct.list_head* @seq_list_start(%struct.list_head* noundef %head, i64 noundef %sub) #19
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.list_head* [ %call, %if.end ], [ %head, %entry ]
  ret %struct.list_head* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local %struct.list_head* @seq_list_next(i8* nocapture noundef readonly %v, %struct.list_head* noundef readnone %head, i64* nocapture noundef %ppos) local_unnamed_addr #9 {
entry:
  %next = bitcast i8* %v to %struct.list_head**
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %1 = load i64, i64* %ppos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %ppos, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %cond = select i1 %cmp, %struct.list_head* null, %struct.list_head* %0
  ret %struct.list_head* %cond
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.hlist_node* @seq_hlist_start(%struct.hlist_head* nocapture noundef readonly %head, i64 noundef %pos) local_unnamed_addr #12 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %head, i64 0, i32 0
  %node.04 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not5 = icmp eq %struct.hlist_node* %node.04, null
  %cmp6 = icmp eq i64 %pos, 0
  %or.cond7 = or i1 %tobool.not5, %cmp6
  br i1 %or.cond7, label %cleanup, label %for.inc

for.inc:                                          ; preds = %entry, %for.inc
  %node.09 = phi %struct.hlist_node* [ %node.0, %for.inc ], [ %node.04, %entry ]
  %pos.addr.08 = phi i64 [ %dec, %for.inc ], [ %pos, %entry ]
  %dec = add i64 %pos.addr.08, -1
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %node.09, i64 0, i32 0
  %node.0 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_node* %node.0, null
  %cmp = icmp eq i64 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.inc, %entry
  %node.0.lcssa = phi %struct.hlist_node* [ %node.04, %entry ], [ %node.0, %for.inc ]
  ret %struct.hlist_node* %node.0.lcssa
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.hlist_node* @seq_hlist_start_head(%struct.hlist_head* nocapture noundef readonly %head, i64 noundef %pos) local_unnamed_addr #12 {
entry:
  %tobool.not = icmp eq i64 %pos, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = add i64 %pos, -1
  %call = call %struct.hlist_node* @seq_hlist_start(%struct.hlist_head* noundef %head, i64 noundef %sub) #19
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.hlist_node* [ %call, %if.end ], [ inttoptr (i64 1 to %struct.hlist_node*), %entry ]
  ret %struct.hlist_node* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local %struct.hlist_node* @seq_hlist_next(i8* noundef readonly %v, %struct.hlist_head* nocapture noundef readonly %head, i64* nocapture noundef %ppos) local_unnamed_addr #9 {
entry:
  %0 = load i64, i64* %ppos, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %ppos, align 8
  %cmp = icmp eq i8* %v, inttoptr (i64 1 to i8*)
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %head, i64 0, i32 0
  %next = bitcast i8* %v to %struct.hlist_node**
  %retval.0.in = select i1 %cmp, %struct.hlist_node** %first, %struct.hlist_node** %next
  %retval.0 = load %struct.hlist_node*, %struct.hlist_node** %retval.0.in, align 8
  ret %struct.hlist_node* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local %struct.hlist_node* @seq_hlist_start_rcu(%struct.hlist_head* noundef %head, i64 noundef %pos) local_unnamed_addr #13 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %head, i64 0, i32 0
  %node.019 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not20 = icmp eq %struct.hlist_node* %node.019, null
  %cmp21 = icmp eq i64 %pos, 0
  %or.cond22 = or i1 %tobool.not20, %cmp21
  br i1 %or.cond22, label %cleanup, label %for.inc

for.inc:                                          ; preds = %entry, %for.inc
  %node.024 = phi %struct.hlist_node* [ %node.0, %for.inc ], [ %node.019, %entry ]
  %pos.addr.023 = phi i64 [ %dec, %for.inc ], [ %pos, %entry ]
  %dec = add i64 %pos.addr.023, -1
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %node.024, i64 0, i32 0
  %node.0 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_node* %node.0, null
  %cmp = icmp eq i64 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.inc, %entry
  %node.0.lcssa = phi %struct.hlist_node* [ %node.019, %entry ], [ %node.0, %for.inc ]
  ret %struct.hlist_node* %node.0.lcssa
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local %struct.hlist_node* @seq_hlist_start_head_rcu(%struct.hlist_head* noundef %head, i64 noundef %pos) local_unnamed_addr #13 {
entry:
  %tobool.not = icmp eq i64 %pos, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = add i64 %pos, -1
  %call = call %struct.hlist_node* @seq_hlist_start_rcu(%struct.hlist_head* noundef %head, i64 noundef %sub) #19
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.hlist_node* [ %call, %if.end ], [ inttoptr (i64 1 to %struct.hlist_node*), %entry ]
  ret %struct.hlist_node* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local %struct.hlist_node* @seq_hlist_next_rcu(i8* noundef %v, %struct.hlist_head* noundef %head, i64* nocapture noundef %ppos) local_unnamed_addr #14 {
entry:
  %0 = load i64, i64* %ppos, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %ppos, align 8
  %cmp = icmp eq i8* %v, inttoptr (i64 1 to i8*)
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %head, i64 0, i32 0
  %next = bitcast i8* %v to %struct.hlist_node**
  %retval.0.in = select i1 %cmp, %struct.hlist_node** %first, %struct.hlist_node** %next
  %retval.0 = load volatile %struct.hlist_node*, %struct.hlist_node** %retval.0.in, align 8
  ret %struct.hlist_node* %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local %struct.hlist_node* @seq_hlist_start_percpu(%struct.hlist_head* noundef %head, i32* nocapture noundef %cpu, i64 noundef %pos) local_unnamed_addr #4 {
entry:
  store i32 -1, i32* %cpu, align 4
  %call22 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  store i32 %call22, i32* %cpu, align 4
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp23 = icmp ult i32 %call22, %0
  br i1 %cmp23, label %do.body.lr.ph, label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %1 = ptrtoint %struct.hlist_head* %head to i64
  br label %do.body

for.cond.loopexit:                                ; preds = %for.inc, %do.body
  %pos.addr.1.lcssa = phi i64 [ %pos.addr.024, %do.body ], [ %dec, %for.inc ]
  %call = call i32 @cpumask_next(i32 noundef %3, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  store i32 %call, i32* %cpu, align 4
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %2
  br i1 %cmp, label %do.body, label %cleanup

do.body:                                          ; preds = %do.body.lr.ph, %for.cond.loopexit
  %3 = phi i32 [ %call22, %do.body.lr.ph ], [ %call, %for.cond.loopexit ]
  %pos.addr.024 = phi i64 [ %pos, %do.body.lr.ph ], [ %pos.addr.1.lcssa, %for.cond.loopexit ]
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, %1
  %5 = inttoptr i64 %add to %struct.hlist_head*
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %5, i64 0, i32 0
  %node.018 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not19 = icmp eq %struct.hlist_node* %node.018, null
  br i1 %tobool.not19, label %for.cond.loopexit, label %for.body3

for.body3:                                        ; preds = %do.body, %for.inc
  %node.021 = phi %struct.hlist_node* [ %node.0, %for.inc ], [ %node.018, %do.body ]
  %pos.addr.120 = phi i64 [ %dec, %for.inc ], [ %pos.addr.024, %do.body ]
  %cmp4 = icmp eq i64 %pos.addr.120, 0
  br i1 %cmp4, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body3
  %dec = add i64 %pos.addr.120, -1
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %node.021, i64 0, i32 0
  %node.0 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_node* %node.0, null
  br i1 %tobool.not, label %for.cond.loopexit, label %for.body3

cleanup:                                          ; preds = %for.cond.loopexit, %for.body3, %entry
  %retval.0 = phi %struct.hlist_node* [ null, %entry ], [ %node.021, %for.body3 ], [ null, %for.cond.loopexit ]
  ret %struct.hlist_node* %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #15

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local %struct.hlist_node* @seq_hlist_next_percpu(i8* nocapture noundef readonly %v, %struct.hlist_head* noundef %head, i32* nocapture noundef %cpu, i64* nocapture noundef %pos) local_unnamed_addr #4 {
entry:
  %0 = load i64, i64* %pos, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %pos, align 8
  %next = bitcast i8* %v to %struct.hlist_node**
  %1 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_node* %1, null
  br i1 %tobool.not, label %if.end, label %cleanup8

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %cpu, align 4
  %call = call i32 @cpumask_next(i32 noundef %2, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  store i32 %call, i32* %cpu, align 4
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp22 = icmp ult i32 %call, %3
  br i1 %cmp22, label %for.body.lr.ph, label %cleanup8

for.body.lr.ph:                                   ; preds = %if.end
  %4 = ptrtoint %struct.hlist_head* %head to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %storemerge23 = phi i32 [ %call, %for.body.lr.ph ], [ %call7, %for.inc ]
  %idxprom = sext i32 %storemerge23 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %add = add i64 %5, %4
  %6 = inttoptr i64 %add to %struct.hlist_head*
  %call3 = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %6) #19
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  %7 = inttoptr i64 %add to %struct.hlist_head*
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %7, i64 0, i32 0
  %8 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  br label %cleanup8

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %cpu, align 4
  %call7 = call i32 @cpumask_next(i32 noundef %9, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  store i32 %call7, i32* %cpu, align 4
  %10 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call7, %10
  br i1 %cmp, label %for.body, label %cleanup8

cleanup8:                                         ; preds = %for.inc, %if.end, %cleanup.thread, %entry
  %retval.2 = phi %struct.hlist_node* [ %1, %entry ], [ %8, %cleanup.thread ], [ null, %if.end ], [ null, %for.inc ]
  ret %struct.hlist_node* %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_empty(%struct.hlist_head* noundef %h) unnamed_addr #14 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @seq_file_init() local_unnamed_addr #16 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef 120, i32 noundef 8, i32 noundef 262144, void (i8*)* noundef null) #20
  store %struct.kmem_cache* %call, %struct.kmem_cache** @seq_file_cache, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iocb_flags(%struct.file* nocapture noundef readonly %file) unnamed_addr #5 {
entry:
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %and = lshr i32 %0, 6
  %1 = and i32 %and, 16
  %and2 = shl i32 %0, 1
  %2 = and i32 %and2, 131072
  %3 = or i32 %2, %1
  %and8 = and i32 %0, 4096
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.then17

lor.lhs.false:                                    ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %4 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %4, i64 0, i32 0
  %5 = load %struct.inode*, %struct.inode** %host, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %5, i64 0, i32 6
  %6 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 10
  %7 = load i64, i64* %s_flags, align 16
  %and10 = and i64 %7, 16
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %if.then17

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %5, i64 0, i32 4
  %8 = load i32, i32* %i_flags, align 4
  %and15 = and i32 %8, 1
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %lor.lhs.false12, %lor.lhs.false, %entry
  %or18 = or i32 %3, 2
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %lor.lhs.false12
  %res.2 = phi i32 [ %or18, %if.then17 ], [ %3, %lor.lhs.false12 ]
  %and21 = lshr i32 %0, 18
  %9 = and i32 %and21, 4
  %10 = or i32 %res.2, %9
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i16 @ki_hint_validate(i32 noundef %hint) unnamed_addr #6 {
entry:
  %0 = icmp ult i32 %hint, 65536
  %retval.05 = select i1 %0, i32 %hint, i32 65536
  %1 = trunc i32 %retval.05 to i16
  ret i16 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @file_write_hint(%struct.file* nocapture noundef readonly %file) unnamed_addr #5 {
entry:
  %f_write_hint = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 5
  %0 = load i32, i32* %f_write_hint, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #19
  %i_write_hint = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 18
  %1 = load i8, i8* %i_write_hint, align 1
  %conv = zext i8 %1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ %0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @get_current_ioprio() unnamed_addr #17 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #23, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %io_context = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 112
  %2 = load %struct.io_context*, %struct.io_context** %io_context, align 16
  %tobool.not = icmp eq %struct.io_context* %2, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %ioprio = getelementptr inbounds %struct.io_context, %struct.io_context* %2, i64 0, i32 4
  %3 = load i16, i16* %ioprio, align 4
  %conv = zext i16 %3 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 16388, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #5 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call i8* @kvmalloc_node(i64 noundef %size, i32 noundef 4197568, i32 noundef -1) #20
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_copy_to_iter(i8* noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #16 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { nounwind }
attributes #19 = { nobuiltin "no-builtins" }
attributes #20 = { nobuiltin nounwind "no-builtins" }
attributes #21 = { cold nobuiltin nounwind "no-builtins" }
attributes #22 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #23 = { nounwind readnone }

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
!8 = !{i64 2152667554}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148883404}
!12 = !{i64 2151834434}
!13 = !{i64 2151836024}
!14 = !{i64 0, i64 65}
!15 = !{i64 1369032}
