; ModuleID = 'fs/remap_range.c'
source_filename = "fs/remap_range.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

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
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
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
%struct.qspinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.atomic_t }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.60, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.10 }
%union.anon.10 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.12, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.12 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.14, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.14 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.15, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.16, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.15 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.16 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.17, %union.anon.38, %struct.atomic_t, [8 x i8] }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.38 = type { %struct.atomic_t }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
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
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.21, %struct.qspinlock }
%union.anon.21 = type { %struct.atomic_t }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.61, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.61 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [48 x i8] }
%struct.anon.2 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.3, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.lockref = type { %union.anon.68 }
%union.anon.68 = type { i64 }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i8* }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.19 }
%union.anon.19 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.20, %union.anon.23 }
%union.anon.20 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.23 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.65 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.65 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.44 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.44 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.file_dedupe_range = type { i64, i64, i16, i16, i32, [0 x %struct.file_dedupe_range_info] }
%struct.file_dedupe_range_info = type { i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_remap_file_range_prep(%struct.file* nocapture noundef readonly %file_in, i64 noundef %pos_in, %struct.file* noundef %file_out, i64 noundef %pos_out, i64* nocapture noundef %len, i32 noundef %remap_flags) local_unnamed_addr #0 {
entry:
  %is_same = alloca i8, align 4
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file_in) #9
  %call1 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file_out) #9
  %cmp = icmp eq %struct.inode* %call, %call1
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 4
  %0 = load i32, i32* %i_flags, align 4
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup96

if.end:                                           ; preds = %entry
  %i_flags2 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 4
  %1 = load i32, i32* %i_flags2, align 4
  %and3 = and i32 %1, 256
  %tobool4.not = icmp eq i32 %and3, 0
  %and6 = and i32 %0, 256
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = select i1 %tobool4.not, i1 %tobool7.not, i1 false
  br i1 %or.cond, label %if.end9, label %cleanup96

if.end9:                                          ; preds = %if.end
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %2 = load i16, i16* %i_mode, align 8
  %3 = and i16 %2, -4096
  %cmp11 = icmp eq i16 %3, 16384
  br i1 %cmp11, label %cleanup96, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end9
  %i_mode14 = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 0
  %4 = load i16, i16* %i_mode14, align 8
  %5 = and i16 %4, -4096
  %cmp17 = icmp eq i16 %5, 16384
  br i1 %cmp17, label %cleanup96, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false13
  %cmp24 = icmp eq i16 %3, -32768
  %cmp30 = icmp eq i16 %5, -32768
  %or.cond158 = select i1 %cmp24, i1 %cmp30, i1 false
  br i1 %or.cond158, label %if.end33, label %cleanup96

if.end33:                                         ; preds = %if.end20
  %6 = load i64, i64* %len, align 8
  %cmp34 = icmp eq i64 %6, 0
  br i1 %cmp34, label %if.then36, label %if.end53

if.then36:                                        ; preds = %if.end33
  %call37 = call fastcc i64 @i_size_read(%struct.inode* noundef %call) #9
  %and38 = and i32 %remap_flags, 1
  %tobool39.not = icmp ne i32 %and38, 0
  %cmp41 = icmp eq i64 %call37, %pos_in
  %or.cond159 = select i1 %tobool39.not, i1 true, i1 %cmp41
  br i1 %or.cond159, label %cleanup96, label %if.end44

if.end44:                                         ; preds = %if.then36
  %cmp45 = icmp slt i64 %call37, %pos_in
  br i1 %cmp45, label %cleanup96, label %cleanup

cleanup:                                          ; preds = %if.end44
  %sub = sub i64 %call37, %pos_in
  store i64 %sub, i64* %len, align 8
  %cmp49.not = icmp eq i64 %sub, 0
  br i1 %cmp49.not, label %cleanup96, label %if.end53

if.end53:                                         ; preds = %cleanup, %if.end33
  %call54 = call fastcc i32 @generic_remap_checks(%struct.file* noundef %file_in, i64 noundef %pos_in, %struct.file* noundef %file_out, i64 noundef %pos_out, i64* noundef %len, i32 noundef %remap_flags) #9
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %cleanup96

if.end57:                                         ; preds = %if.end53
  call void @inode_dio_wait(%struct.inode* noundef %call) #10
  br i1 %cmp, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.end57
  call void @inode_dio_wait(%struct.inode* noundef %call1) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end57
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 7
  %7 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %8 = load i64, i64* %len, align 8
  %add = add i64 %pos_in, -1
  %sub61 = add i64 %add, %8
  %call62 = call i32 @filemap_write_and_wait_range(%struct.address_space* noundef %7, i64 noundef %pos_in, i64 noundef %sub61) #10
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %cleanup96

if.end65:                                         ; preds = %if.end60
  %i_mapping66 = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 7
  %9 = load %struct.address_space*, %struct.address_space** %i_mapping66, align 8
  %10 = load i64, i64* %len, align 8
  %add67 = add i64 %pos_out, -1
  %sub68 = add i64 %add67, %10
  %call69 = call i32 @filemap_write_and_wait_range(%struct.address_space* noundef %9, i64 noundef %pos_out, i64 noundef %sub68) #10
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %cleanup96

if.end72:                                         ; preds = %if.end65
  %and73 = and i32 %remap_flags, 1
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end86, label %if.then75

if.then75:                                        ; preds = %if.end72
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %is_same) #11
  store i8 0, i8* %is_same, align 4
  %11 = load i64, i64* %len, align 8
  %call76 = call fastcc i32 @vfs_dedupe_file_range_compare(%struct.inode* noundef %call, i64 noundef %pos_in, %struct.inode* noundef %call1, i64 noundef %pos_out, i64 noundef %11, i8* noundef nonnull %is_same) #9
  %tobool77.not = icmp eq i32 %call76, 0
  %12 = load i8, i8* %is_same, align 4
  %tobool80.not = icmp eq i8 %12, 0
  %.retval.1 = select i1 %tobool80.not, i32 -52, i32 0
  %not.tobool80.not = xor i1 %tobool80.not, true
  %retval.2 = select i1 %tobool77.not, i32 %.retval.1, i32 %call76
  %cond = select i1 %tobool77.not, i1 %not.tobool80.not, i1 false
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %is_same) #11
  br i1 %cond, label %if.end86, label %cleanup96

if.end86:                                         ; preds = %if.then75, %if.end72
  %call87 = call fastcc i32 @generic_remap_check_len(%struct.inode* noundef %call, %struct.inode* noundef %call1, i64 noundef %pos_out, i64* noundef %len, i32 noundef %remap_flags) #9
  %13 = or i32 %call87, %and73
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.then93, label %cleanup96

if.then93:                                        ; preds = %if.end86
  %call94 = call i32 @file_modified(%struct.file* noundef %file_out) #10
  br label %cleanup96

cleanup96:                                        ; preds = %if.end44, %if.then36, %if.end86, %if.then93, %if.end65, %if.end60, %if.end53, %if.end20, %if.end9, %lor.lhs.false13, %if.end, %entry, %cleanup, %if.then75
  %retval.3 = phi i32 [ %retval.2, %if.then75 ], [ 0, %cleanup ], [ -1, %entry ], [ -26, %if.end ], [ -21, %lor.lhs.false13 ], [ -21, %if.end9 ], [ -22, %if.end20 ], [ %call54, %if.end53 ], [ %call62, %if.end60 ], [ %call69, %if.end65 ], [ %call87, %if.end86 ], [ %call94, %if.then93 ], [ -22, %if.end44 ], [ 0, %if.then36 ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #2 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #2 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @generic_remap_checks(%struct.file* nocapture noundef readonly %file_in, i64 noundef %pos_in, %struct.file* noundef %file_out, i64 noundef %pos_out, i64* nocapture noundef %req_count, i32 noundef %remap_flags) unnamed_addr #0 {
entry:
  %count = alloca i64, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file_in, i64 0, i32 17
  %0 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %f_mapping1 = getelementptr inbounds %struct.file, %struct.file* %file_out, i64 0, i32 17
  %2 = load %struct.address_space*, %struct.address_space** %f_mapping1, align 8
  %host2 = getelementptr inbounds %struct.address_space, %struct.address_space* %2, i64 0, i32 0
  %3 = load %struct.inode*, %struct.inode** %host2, align 8
  %4 = bitcast i64* %count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #11
  %5 = load i64, i64* %req_count, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 6
  %6 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 3
  %7 = load i64, i64* %s_blocksize, align 8
  %sub = add i64 %7, -1
  %8 = or i64 %pos_out, %pos_in
  %9 = and i64 %sub, %8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %11 = xor i64 %pos_in, -1
  %cmp6 = icmp ugt i64 %5, %11
  %12 = xor i64 %pos_out, -1
  %cmp9 = icmp ugt i64 %5, %12
  %or.cond127 = or i1 %cmp6, %cmp9
  br i1 %or.cond127, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %1) #9
  %call12 = call fastcc i64 @i_size_read(%struct.inode* noundef %3) #9
  %and13 = and i32 %remap_flags, 1
  %tobool.not = icmp eq i32 %and13, 0
  %cmp25.not.old = icmp sgt i64 %call, %pos_in
  br i1 %tobool.not, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  br i1 %cmp25.not.old, label %lor.lhs.false15, label %cleanup

lor.lhs.false15:                                  ; preds = %land.lhs.true
  %add16 = add i64 %5, %pos_in
  %cmp17 = icmp ule i64 %add16, %call
  %cmp19.not = icmp sgt i64 %call12, %pos_out
  %or.cond128 = select i1 %cmp17, i1 %cmp19.not, i1 false
  %add21 = add i64 %5, %pos_out
  %cmp22 = icmp ule i64 %add21, %call12
  %or.cond129 = select i1 %or.cond128, i1 %cmp22, i1 false
  br i1 %or.cond129, label %if.end27, label %cleanup

if.end24:                                         ; preds = %if.end11
  br i1 %cmp25.not.old, label %if.end27, label %cleanup

if.end27:                                         ; preds = %lor.lhs.false15, %if.end24
  %sub28 = sub i64 %call, %pos_in
  %cmp29 = icmp ult i64 %5, %sub28
  %cond = select i1 %cmp29, i64 %5, i64 %sub28
  store i64 %cond, i64* %count, align 8
  %call30 = call i32 @generic_write_check_limits(%struct.file* noundef %file_out, i64 noundef %pos_out, i64* noundef nonnull %count) #10
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %cleanup

if.end33:                                         ; preds = %if.end27
  %13 = load i64, i64* %count, align 8
  %add34 = add i64 %13, %pos_in
  %cmp35 = icmp eq i64 %add34, %call
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end33
  %add38 = add i64 %call, %sub
  %neg = sub i64 0, %7
  %and40 = and i64 %add38, %neg
  %sub41 = sub i64 %and40, %pos_in
  br label %if.end54

if.else:                                          ; preds = %if.end33
  %and43 = and i64 %13, %sub
  %cmp44 = icmp eq i64 %and43, 0
  br i1 %cmp44, label %if.end54, label %if.then45

if.then45:                                        ; preds = %if.else
  %neg51 = sub i64 0, %7
  %and52 = and i64 %13, %neg51
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then45, %if.then36
  %14 = phi i64 [ %13, %if.then36 ], [ %and52, %if.then45 ], [ %13, %if.else ]
  %bcount.0 = phi i64 [ %sub41, %if.then36 ], [ %and52, %if.then45 ], [ %13, %if.else ]
  %cmp55 = icmp eq %struct.inode* %1, %3
  %add57 = add i64 %bcount.0, %pos_out
  %cmp58 = icmp ugt i64 %add57, %pos_in
  %or.cond130 = select i1 %cmp55, i1 %cmp58, i1 false
  %add60 = add i64 %bcount.0, %pos_in
  %cmp61 = icmp ugt i64 %add60, %pos_out
  %or.cond131 = select i1 %or.cond130, i1 %cmp61, i1 false
  br i1 %or.cond131, label %cleanup, label %if.end63

if.end63:                                         ; preds = %if.end54
  %15 = load i64, i64* %req_count, align 8
  %cmp64.not = icmp ne i64 %15, %14
  %and66 = and i32 %remap_flags, 2
  %tobool67.not = icmp eq i32 %and66, 0
  %or.cond132 = and i1 %tobool67.not, %cmp64.not
  br i1 %or.cond132, label %cleanup, label %if.end69

if.end69:                                         ; preds = %if.end63
  store i64 %14, i64* %req_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.end54, %if.end27, %if.end24, %land.lhs.true, %lor.lhs.false15, %if.end, %entry, %if.end69
  %retval.0 = phi i32 [ 0, %if.end69 ], [ -22, %entry ], [ -22, %if.end ], [ -22, %lor.lhs.false15 ], [ -22, %land.lhs.true ], [ -22, %if.end24 ], [ %call30, %if.end27 ], [ -22, %if.end54 ], [ -22, %if.end63 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vfs_dedupe_file_range_compare(%struct.inode* nocapture noundef readonly %src, i64 noundef %srcoff, %struct.inode* nocapture noundef readonly %dest, i64 noundef %destoff, i64 noundef %len, i8* nocapture noundef writeonly %is_same) unnamed_addr #0 {
entry:
  %tobool.not141 = icmp eq i64 %len, 0
  br i1 %tobool.not141, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %src, i64 0, i32 7
  %i_mapping29 = getelementptr inbounds %struct.inode, %struct.inode* %dest, i64 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end52
  %srcoff.addr.0144 = phi i64 [ %srcoff, %while.body.lr.ph ], [ %add, %if.end52 ]
  %destoff.addr.0143 = phi i64 [ %destoff, %while.body.lr.ph ], [ %add53, %if.end52 ]
  %len.addr.0142 = phi i64 [ %len, %while.body.lr.ph ], [ %sub54, %if.end52 ]
  %and = and i64 %srcoff.addr.0144, 4095
  %and1 = and i64 %destoff.addr.0143, 4095
  %sub = sub nuw nsw i64 4096, %and
  %sub2 = sub nuw nsw i64 4096, %and1
  %cmp = icmp ult i64 %sub, %sub2
  %cond = select i1 %cmp, i64 %sub, i64 %sub2
  %cmp4 = icmp slt i64 %cond, %len.addr.0142
  %cond8 = select i1 %cmp4, i64 %cond, i64 %len.addr.0142
  %cmp9 = icmp slt i64 %cond8, 1
  br i1 %cmp9, label %cleanup, label %if.end

if.end:                                           ; preds = %while.body
  %call = call fastcc %struct.page* @vfs_dedupe_get_page(%struct.inode* noundef %src, i64 noundef %srcoff.addr.0144) #9
  %0 = bitcast %struct.page* %call to i8*
  %call10 = call fastcc i1 @IS_ERR(i8* noundef %0) #9
  br i1 %call10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %1 = bitcast %struct.page* %call to i8*
  %call12 = call fastcc i64 @PTR_ERR(i8* noundef %1) #9
  %conv = trunc i64 %call12 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = call fastcc %struct.page* @vfs_dedupe_get_page(%struct.inode* noundef %dest, i64 noundef %destoff.addr.0143) #9
  %2 = bitcast %struct.page* %call14 to i8*
  %call15 = call fastcc i1 @IS_ERR(i8* noundef %2) #9
  br i1 %call15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end13
  %3 = bitcast %struct.page* %call14 to i8*
  %call17 = call fastcc i64 @PTR_ERR(i8* noundef %3) #9
  %conv18 = trunc i64 %call17 to i32
  call fastcc void @put_page(%struct.page* noundef %call) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call fastcc void @vfs_lock_two_pages(%struct.page* noundef %call, %struct.page* noundef %call14) #9
  %call20 = call fastcc i32 @PageUptodate(%struct.page* noundef %call) #9
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %while.end.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end19
  %call22 = call fastcc i32 @PageUptodate(%struct.page* noundef %call14) #9
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %while.end.sink.split, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %mapping = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 1, i32 0, i32 1
  %4 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %5 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %cmp25.not = icmp eq %struct.address_space* %4, %5
  br i1 %cmp25.not, label %lor.lhs.false27, label %while.end.sink.split

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %mapping28 = getelementptr inbounds %struct.page, %struct.page* %call14, i64 0, i32 1, i32 0, i32 1
  %6 = load %struct.address_space*, %struct.address_space** %mapping28, align 8
  %7 = load %struct.address_space*, %struct.address_space** %i_mapping29, align 8
  %cmp30.not = icmp eq %struct.address_space* %6, %7
  br i1 %cmp30.not, label %if.end33, label %while.end.sink.split

if.end33:                                         ; preds = %lor.lhs.false27
  %call34 = call fastcc i8* @kmap_atomic(%struct.page* noundef %call) #9
  %call35 = call fastcc i8* @kmap_atomic(%struct.page* noundef %call14) #9
  call void @flush_dcache_page(%struct.page* noundef %call) #10
  call void @flush_dcache_page(%struct.page* noundef %call14) #10
  %add.ptr = getelementptr i8, i8* %call34, i64 %and
  %add.ptr36 = getelementptr i8, i8* %call35, i64 %and1
  %call37 = call i32 @memcmp(i8* noundef %add.ptr, i8* noundef %add.ptr36, i64 noundef %cond8) #10
  %tobool38.not = icmp eq i32 %call37, 0
  call fastcc void @__kunmap_atomic() #9
  call fastcc void @__kunmap_atomic() #9
  call fastcc void @vfs_unlock_two_pages(%struct.page* noundef %call, %struct.page* noundef %call14) #9
  call fastcc void @put_page(%struct.page* noundef %call14) #9
  call fastcc void @put_page(%struct.page* noundef %call) #9
  br i1 %tobool38.not, label %if.end52, label %while.end

if.end52:                                         ; preds = %if.end33
  %add = add i64 %cond8, %srcoff.addr.0144
  %add53 = add i64 %cond8, %destoff.addr.0143
  %sub54 = sub i64 %len.addr.0142, %cond8
  %tobool.not = icmp eq i64 %sub54, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end.sink.split:                             ; preds = %if.end19, %lor.lhs.false, %lor.lhs.false24, %lor.lhs.false27
  call fastcc void @vfs_unlock_two_pages(%struct.page* noundef %call, %struct.page* noundef %call14) #9
  call fastcc void @put_page(%struct.page* noundef %call14) #9
  call fastcc void @put_page(%struct.page* noundef %call) #9
  br label %while.end

while.end:                                        ; preds = %if.end52, %if.end33, %while.end.sink.split, %entry
  %same.3.off0 = phi i1 [ true, %entry ], [ false, %while.end.sink.split ], [ %tobool38.not, %if.end33 ], [ %tobool38.not, %if.end52 ]
  %frombool = zext i1 %same.3.off0 to i8
  store i8 %frombool, i8* %is_same, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.then11, %if.then16, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ %conv, %if.then11 ], [ %conv18, %if.then16 ], [ -22, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @generic_remap_check_len(%struct.inode* nocapture noundef readonly %inode_in, %struct.inode* nocapture noundef readonly %inode_out, i64 noundef %pos_out, i64* nocapture noundef %len, i32 noundef %remap_flags) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @i_blocksize(%struct.inode* noundef %inode_in) #9
  %sub = add i32 %call, -1
  %conv = zext i32 %sub to i64
  %0 = load i64, i64* %len, align 8
  %and = and i64 %0, %conv
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i64 %0, %pos_out
  %call2 = call fastcc i64 @i_size_read(%struct.inode* noundef %inode_out) #9
  %cmp3 = icmp slt i64 %add, %call2
  %neg = xor i64 %conv, -1
  %and6 = select i1 %cmp3, i64 %neg, i64 -1
  %new_len.0 = and i64 %and6, %0
  %cmp8 = icmp eq i64 %new_len.0, %0
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %and12 = and i32 %remap_flags, 2
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  store i64 %new_len.0, i64* %len, align 8
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %and15 = and i32 %remap_flags, 1
  %tobool16.not = icmp eq i32 %and15, 0
  %cond = select i1 %tobool16.not, i32 -22, i32 -52
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end14, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ %cond, %if.end14 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_modified(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @do_clone_file_range(%struct.file* noundef %file_in, i64 noundef %pos_in, %struct.file* noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %remap_flags) local_unnamed_addr #0 {
entry:
  %and = and i32 %remap_flags, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/remap_range.c\22; .popsection; .long 14472b - 14470b; .short 369; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file_in) #9
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call15 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file_out) #9
  %i_sb16 = getelementptr inbounds %struct.inode, %struct.inode* %call15, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb16, align 8
  %cmp.not = icmp eq %struct.super_block* %0, %1
  br i1 %cmp.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.end
  %call20 = call i32 @generic_file_rw_checks(%struct.file* noundef %file_in, %struct.file* noundef %file_out) #10
  %cmp22 = icmp slt i32 %call20, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  %conv21 = sext i32 %call20 to i64
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file_in, i64 0, i32 3
  %2 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %remap_file_range = getelementptr inbounds %struct.file_operations, %struct.file_operations* %2, i64 0, i32 30
  %3 = load i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)** %remap_file_range, align 8
  %tobool26.not = icmp eq i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* %3, null
  br i1 %tobool26.not, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end25
  %call29 = call fastcc i32 @remap_verify_area(i64 noundef %pos_in, i64 noundef %len, i1 noundef false) #9
  %tobool31.not = icmp eq i32 %call29, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end28
  %conv30 = sext i32 %call29 to i64
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %call34 = call fastcc i32 @remap_verify_area(i64 noundef %pos_out, i64 noundef %len, i1 noundef true) #9
  %tobool36.not = icmp eq i32 %call34, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end33
  %conv35 = sext i32 %call34 to i64
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %call41 = call i64 %3(%struct.file* noundef %file_in, i64 noundef %pos_in, %struct.file* noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %remap_flags) #10
  %cmp42 = icmp slt i64 %call41, 0
  br i1 %cmp42, label %cleanup, label %if.end45

if.end45:                                         ; preds = %if.end38
  call fastcc void @fsnotify_access(%struct.file* noundef %file_in) #9
  call fastcc void @fsnotify_modify(%struct.file* noundef %file_out) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end25, %if.end, %if.end45, %if.then37, %if.then32, %if.then24
  %retval.0 = phi i64 [ %conv21, %if.then24 ], [ %conv30, %if.then32 ], [ %conv35, %if.then37 ], [ %call41, %if.end45 ], [ -18, %if.end ], [ -95, %if.end25 ], [ %call41, %if.end38 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_rw_checks(%struct.file* noundef, %struct.file* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @remap_verify_area(i64 noundef %pos, i64 noundef %len, i1 noundef %write) unnamed_addr #5 {
entry:
  %0 = or i64 %len, %pos
  %add = add i64 %len, %pos
  %1 = or i64 %0, %add
  %.not = icmp sgt i64 %1, -1
  %spec.select = select i1 %.not, i32 0, i32 -22, !prof !10
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_access(%struct.file* nocapture noundef readonly %file) unnamed_addr #6 {
entry:
  call fastcc void @fsnotify_file(%struct.file* noundef %file, i32 noundef 1) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_modify(%struct.file* nocapture noundef readonly %file) unnamed_addr #6 {
entry:
  call fastcc void @fsnotify_file(%struct.file* noundef %file, i32 noundef 2) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_clone_file_range(%struct.file* noundef %file_in, i64 noundef %pos_in, %struct.file* noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %remap_flags) local_unnamed_addr #0 {
entry:
  call fastcc void @file_start_write(%struct.file* noundef %file_out) #9
  %call = call i64 @do_clone_file_range(%struct.file* noundef %file_in, i64 noundef %pos_in, %struct.file* noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %remap_flags) #9
  call fastcc void @file_end_write(%struct.file* noundef %file_out) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_start_write(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #9
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @sb_start_write(%struct.super_block* noundef %2) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_end_write(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #9
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @__sb_end_write(%struct.super_block* noundef %2) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_dedupe_file_range_one(%struct.file* noundef %src_file, i64 noundef %src_pos, %struct.file* noundef %dst_file, i64 noundef %dst_pos, i64 noundef %len, i32 noundef %remap_flags) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %remap_flags, 4
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/remap_range.c\22; .popsection; .long 14472b - 14470b; .short 444; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @mnt_want_write_file(%struct.file* noundef %dst_file) #10
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end
  %conv15 = sext i32 %call to i64
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = call fastcc i32 @remap_verify_area(i64 noundef %src_pos, i64 noundef %len, i1 noundef false) #9
  %conv20 = sext i32 %call19 to i64
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end23, label %out_drop_write

if.end23:                                         ; preds = %if.end18
  %call24 = call fastcc i32 @remap_verify_area(i64 noundef %dst_pos, i64 noundef %len, i1 noundef true) #9
  %conv25 = sext i32 %call24 to i64
  %tobool26.not = icmp eq i32 %call24, 0
  br i1 %tobool26.not, label %if.end28, label %out_drop_write

if.end28:                                         ; preds = %if.end23
  %call29 = call fastcc i1 @allow_file_dedupe(%struct.file* noundef %dst_file) #9
  br i1 %call29, label %if.end31, label %out_drop_write

if.end31:                                         ; preds = %if.end28
  %mnt = getelementptr inbounds %struct.file, %struct.file* %src_file, i64 0, i32 1, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt33 = getelementptr inbounds %struct.file, %struct.file* %dst_file, i64 0, i32 1, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt33, align 8
  %cmp.not = icmp eq %struct.vfsmount* %0, %1
  br i1 %cmp.not, label %if.end36, label %out_drop_write

if.end36:                                         ; preds = %if.end31
  %call37 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %dst_file) #9
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call37, i64 0, i32 0
  %2 = load i16, i16* %i_mode, align 8
  %3 = and i16 %2, -4096
  %cmp40 = icmp eq i16 %3, 16384
  br i1 %cmp40, label %out_drop_write, label %if.end43

if.end43:                                         ; preds = %if.end36
  %f_op = getelementptr inbounds %struct.file, %struct.file* %dst_file, i64 0, i32 3
  %4 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %remap_file_range = getelementptr inbounds %struct.file_operations, %struct.file_operations* %4, i64 0, i32 30
  %5 = load i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)** %remap_file_range, align 8
  %tobool44.not = icmp eq i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* %5, null
  br i1 %tobool44.not, label %out_drop_write, label %if.end46

if.end46:                                         ; preds = %if.end43
  %cmp47 = icmp eq i64 %len, 0
  br i1 %cmp47, label %out_drop_write, label %if.end50

if.end50:                                         ; preds = %if.end46
  %or = or i32 %remap_flags, 1
  %call53 = call i64 %5(%struct.file* noundef %src_file, i64 noundef %src_pos, %struct.file* noundef %dst_file, i64 noundef %dst_pos, i64 noundef %len, i32 noundef %or) #10
  br label %out_drop_write

out_drop_write:                                   ; preds = %if.end46, %if.end43, %if.end36, %if.end31, %if.end28, %if.end23, %if.end18, %if.end50
  %ret.0 = phi i64 [ %conv20, %if.end18 ], [ %conv25, %if.end23 ], [ -18, %if.end31 ], [ -21, %if.end36 ], [ %call53, %if.end50 ], [ -22, %if.end43 ], [ -1, %if.end28 ], [ 0, %if.end46 ]
  call void @mnt_drop_write_file(%struct.file* noundef %dst_file) #10
  br label %cleanup

cleanup:                                          ; preds = %out_drop_write, %if.then17
  %retval.0 = phi i64 [ %conv15, %if.then17 ], [ %ret.0, %out_drop_write ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @allow_file_dedupe(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef %file) #9
  %call1 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #9
  %call2 = call i1 @capable(i32 noundef 21) #10
  br i1 %call2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %cleanup

do.end:                                           ; preds = %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !12
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 80
  %3 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 7, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %call7 = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %call1) #9
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %coerce.val.ii10 = zext i32 %call7 to i64
  %call11 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii10) #9
  br i1 %call11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %do.end
  %call14 = call i32 @inode_permission(%struct.user_namespace* noundef %call, %struct.inode* noundef %call1, i32 noundef 2) #10
  %tobool15.not = icmp eq i32 %call14, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ true, %if.end ], [ true, %do.end ], [ %tobool15.not, %if.end13 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_dedupe_file_range(%struct.file* noundef %file, %struct.file_dedupe_range* nocapture noundef %same) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #9
  %dest_count = getelementptr inbounds %struct.file_dedupe_range, %struct.file_dedupe_range* %same, i64 0, i32 2
  %0 = load i16, i16* %dest_count, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup79, label %if.end

if.end:                                           ; preds = %entry
  %reserved1 = getelementptr inbounds %struct.file_dedupe_range, %struct.file_dedupe_range* %same, i64 0, i32 3
  %2 = load i16, i16* %reserved1, align 2
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %cleanup79

lor.lhs.false:                                    ; preds = %if.end
  %reserved2 = getelementptr inbounds %struct.file_dedupe_range, %struct.file_dedupe_range* %same, i64 0, i32 4
  %3 = load i32, i32* %reserved2, align 4
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup79

if.end4:                                          ; preds = %lor.lhs.false
  %src_offset = getelementptr inbounds %struct.file_dedupe_range, %struct.file_dedupe_range* %same, i64 0, i32 0
  %4 = load i64, i64* %src_offset, align 8
  %src_length = getelementptr inbounds %struct.file_dedupe_range, %struct.file_dedupe_range* %same, i64 0, i32 1
  %5 = load i64, i64* %src_length, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %6 = load i16, i16* %i_mode, align 8
  %7 = and i16 %6, -4096
  switch i16 %7, label %if.then15 [
    i16 16384, label %cleanup79
    i16 -32768, label %if.end16
  ]

if.then15:                                        ; preds = %if.end4
  br label %cleanup79

if.end16:                                         ; preds = %if.end4
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %8 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %remap_file_range = getelementptr inbounds %struct.file_operations, %struct.file_operations* %8, i64 0, i32 30
  %9 = load i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)** %remap_file_range, align 8
  %tobool17.not = icmp eq i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* %9, null
  br i1 %tobool17.not, label %cleanup79, label %if.end19

if.end19:                                         ; preds = %if.end16
  %call20 = call fastcc i32 @remap_verify_area(i64 noundef %4, i64 noundef %5, i1 noundef false) #9
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %cleanup79, label %if.end24

if.end24:                                         ; preds = %if.end19
  %add = add i64 %5, %4
  %call25 = call fastcc i64 @i_size_read(%struct.inode* noundef %call) #9
  %cmp26 = icmp ugt i64 %add, %call25
  br i1 %cmp26, label %cleanup79, label %if.end29

if.end29:                                         ; preds = %if.end24
  %cmp30 = icmp ult i64 %5, 1073741824
  %cond = select i1 %cmp30, i64 %5, i64 1073741824
  %conv32 = zext i16 %0 to i32
  %cmp33143.not = icmp eq i16 %0, 0
  br i1 %cmp33143.not, label %cleanup79, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end29
  %wide.trip.count = zext i16 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %bytes_deduped = getelementptr %struct.file_dedupe_range, %struct.file_dedupe_range* %same, i64 0, i32 5, i64 %indvars.iv, i32 2
  store i64 0, i64* %bytes_deduped, align 8
  %status = getelementptr %struct.file_dedupe_range, %struct.file_dedupe_range* %same, i64 0, i32 5, i64 %indvars.iv, i32 3
  store i32 0, i32* %status, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  br i1 %cmp33143.not, label %cleanup79, label %for.body44.preheader

for.body44.preheader:                             ; preds = %for.end
  %arraydecay = getelementptr inbounds %struct.file_dedupe_range, %struct.file_dedupe_range* %same, i64 0, i32 5, i64 0
  br label %for.body44

for.body44:                                       ; preds = %for.body44.preheader, %next_loop
  %info.0147 = phi %struct.file_dedupe_range_info* [ %incdec.ptr, %next_loop ], [ %arraydecay, %for.body44.preheader ]
  %i.1146 = phi i32 [ %inc77, %next_loop ], [ 0, %for.body44.preheader ]
  %dest_fd = getelementptr inbounds %struct.file_dedupe_range_info, %struct.file_dedupe_range_info* %info.0147, i64 0, i32 0
  %10 = load i64, i64* %dest_fd, align 8
  %conv45 = trunc i64 %10 to i32
  %call46 = call fastcc [2 x i64] @fdget(i32 noundef %conv45) #9
  %call46.fca.0.extract = extractvalue [2 x i64] %call46, 0
  %11 = inttoptr i64 %call46.fca.0.extract to %struct.file*
  %tobool48.not = icmp eq i64 %call46.fca.0.extract, 0
  br i1 %tobool48.not, label %if.then49, label %if.end51

if.then49:                                        ; preds = %for.body44
  %status50 = getelementptr inbounds %struct.file_dedupe_range_info, %struct.file_dedupe_range_info* %info.0147, i64 0, i32 3
  store i32 -9, i32* %status50, align 8
  br label %next_loop

if.end51:                                         ; preds = %for.body44
  %reserved = getelementptr inbounds %struct.file_dedupe_range_info, %struct.file_dedupe_range_info* %info.0147, i64 0, i32 4
  %12 = load i32, i32* %reserved, align 4
  %tobool52.not = icmp eq i32 %12, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.end51
  %status54 = getelementptr inbounds %struct.file_dedupe_range_info, %struct.file_dedupe_range_info* %info.0147, i64 0, i32 3
  store i32 -22, i32* %status54, align 8
  br label %next_fdput

if.end55:                                         ; preds = %if.end51
  %dest_offset = getelementptr inbounds %struct.file_dedupe_range_info, %struct.file_dedupe_range_info* %info.0147, i64 0, i32 1
  %13 = load i64, i64* %dest_offset, align 8
  %call56 = call i64 @vfs_dedupe_file_range_one(%struct.file* noundef %file, i64 noundef %4, %struct.file* noundef nonnull %11, i64 noundef %13, i64 noundef %cond, i32 noundef 2) #9
  %cmp57 = icmp eq i64 %call56, -52
  br i1 %cmp57, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.end55
  %status60 = getelementptr inbounds %struct.file_dedupe_range_info, %struct.file_dedupe_range_info* %info.0147, i64 0, i32 3
  store i32 1, i32* %status60, align 8
  br label %next_fdput

if.else:                                          ; preds = %if.end55
  %cmp61 = icmp slt i64 %call56, 0
  br i1 %cmp61, label %if.then63, label %if.else66

if.then63:                                        ; preds = %if.else
  %conv64 = trunc i64 %call56 to i32
  %status65 = getelementptr inbounds %struct.file_dedupe_range_info, %struct.file_dedupe_range_info* %info.0147, i64 0, i32 3
  store i32 %conv64, i32* %status65, align 8
  br label %next_fdput

if.else66:                                        ; preds = %if.else
  %bytes_deduped67 = getelementptr inbounds %struct.file_dedupe_range_info, %struct.file_dedupe_range_info* %info.0147, i64 0, i32 2
  store i64 %cond, i64* %bytes_deduped67, align 8
  br label %next_fdput

next_fdput:                                       ; preds = %if.then59, %if.else66, %if.then63, %if.then53
  call fastcc void @fdput([2 x i64] %call46) #9
  br label %next_loop

next_loop:                                        ; preds = %next_fdput, %if.then49
  %14 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !12
  %15 = inttoptr i64 %14 to %struct.task_struct*
  %call71 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %15) #9
  %tobool72.not = icmp eq i32 %call71, 0
  %inc77 = add nuw nsw i32 %i.1146, 1
  %incdec.ptr = getelementptr %struct.file_dedupe_range_info, %struct.file_dedupe_range_info* %info.0147, i64 1
  %cmp42 = icmp ult i32 %inc77, %conv32
  %or.cond = select i1 %tobool72.not, i1 %cmp42, i1 false
  br i1 %or.cond, label %for.body44, label %cleanup79

cleanup79:                                        ; preds = %next_loop, %if.end29, %for.end, %if.end24, %if.end19, %if.end16, %if.end4, %if.end, %lor.lhs.false, %entry, %if.then15
  %retval.0 = phi i32 [ -22, %if.then15 ], [ -22, %entry ], [ -22, %lor.lhs.false ], [ -22, %if.end ], [ -21, %if.end4 ], [ -95, %if.end16 ], [ %call20, %if.end19 ], [ -22, %if.end24 ], [ 0, %for.end ], [ 0, %if.end29 ], [ 0, %next_loop ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #10
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #9
  ret [2 x i64] %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdput([2 x i64] %fd.coerce) unnamed_addr #0 {
entry:
  %fd.coerce.fca.1.extract = extractvalue [2 x i64] %fd.coerce, 1
  %and1 = and i64 %fd.coerce.fca.1.extract, 1
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fd.coerce.fca.0.extract = extractvalue [2 x i64] %fd.coerce, 0
  %0 = inttoptr i64 %fd.coerce.fca.0.extract to %struct.file*
  call void @fput(%struct.file* noundef %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #9
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_check_limits(%struct.file* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @vfs_dedupe_get_page(%struct.inode* nocapture noundef readonly %inode, i64 noundef %offset) unnamed_addr #0 {
entry:
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %shr = ashr i64 %offset, 12
  %call = call fastcc %struct.page* @read_mapping_page(%struct.address_space* noundef %0, i64 noundef %shr) #9
  %1 = bitcast %struct.page* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #9
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @PageUptodate(%struct.page* noundef %call) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  call fastcc void @put_page(%struct.page* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi %struct.page* [ inttoptr (i64 -5 to %struct.page*), %if.then3 ], [ %call, %entry ], [ %call, %if.end ]
  ret %struct.page* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #9
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vfs_lock_two_pages(%struct.page* noundef %page1, %struct.page* noundef %page2) unnamed_addr #0 {
entry:
  %index = getelementptr inbounds %struct.page, %struct.page* %page1, i64 0, i32 1, i32 0, i32 2
  %0 = load i64, i64* %index, align 8
  %index1 = getelementptr inbounds %struct.page, %struct.page* %page2, i64 0, i32 1, i32 0, i32 2
  %1 = load i64, i64* %index1, align 8
  %cmp = icmp ugt i64 %0, %1
  %spec.select = select i1 %cmp, %struct.page* %page1, %struct.page* %page2
  %spec.select12 = select i1 %cmp, %struct.page* %page2, %struct.page* %page1
  call fastcc void @lock_page(%struct.page* noundef %spec.select12) #9
  %cmp2.not = icmp eq %struct.page* %spec.select12, %spec.select
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call fastcc void @lock_page(%struct.page* noundef %spec.select) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @PageUptodate(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #9
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 2
  %conv.i = and i32 %3, 1
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #11, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  call fastcc void @pagefault_disable() #9
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #0 {
entry:
  call fastcc void @pagefault_enable() #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vfs_unlock_two_pages(%struct.page* noundef %page1, %struct.page* noundef %page2) unnamed_addr #0 {
entry:
  call void @unlock_page(%struct.page* noundef %page1) #10
  %cmp.not = icmp eq %struct.page* %page1, %page2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @unlock_page(%struct.page* noundef %page2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @read_mapping_page(%struct.address_space* noundef %mapping, i64 noundef %index) unnamed_addr #0 {
entry:
  %call = call %struct.page* @read_cache_page(%struct.address_space* noundef %mapping, i64 noundef %index, i32 (i8*, %struct.page*)* noundef null, i8* noundef null) #10
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @read_cache_page(%struct.address_space* noundef, i64 noundef, i32 (i8*, %struct.page*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #6 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.17* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %sub = add i64 %1, -1
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint %struct.page* %page to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %sub, %if.then ], [ %2, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #10
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #11, !srcloc !16
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @trylock_page(%struct.page* noundef %page) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lock_page(%struct.page* noundef %page) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #9
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #9
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_page(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #10
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #11, !srcloc !17
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_blocksize(%struct.inode* nocapture noundef readonly %node) unnamed_addr #2 {
entry:
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %node, i64 0, i32 17
  %0 = load i8, i8* %i_blkbits, align 2
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 1, %conv
  ret i32 %shl
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_file(%struct.file* nocapture noundef readonly %file, i32 noundef %mask) unnamed_addr #6 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 67108864
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call fastcc void @fsnotify_parent(%struct.dentry* noundef %1, i32 noundef %mask) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_parent(%struct.dentry* noundef readonly %dentry, i32 noundef %mask) unnamed_addr #6 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #9
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 41, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  call fastcc void @__sb_start_write(%struct.super_block* noundef %sb) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #9
  br i1 %call, label %do.body7, label %if.else, !prof !8

do.body7:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call13, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 1) #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  br label %if.end

if.else:                                          ; preds = %entry
  %call15 = call i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem, i1 noundef false) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body7
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rsp) unnamed_addr #6 {
entry:
  %gp_state = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 0
  %0 = load volatile i32, i32* %gp_state, align 8
  %tobool.not = icmp eq i32 %0, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %conv = trunc i64 %val to i32
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #11, !srcloc !24
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #7 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #13, !srcloc !25
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #9
  br i1 %call, label %do.body3, label %if.else, !prof !8

do.body3:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call9, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 4294967295) #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  br label %if.end

if.else:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !29
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %read_count20 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %3 = load i32*, i32** %read_count20, align 8
  %4 = ptrtoint i32* %3 to i64
  %call22 = call fastcc i64 @__kern_my_cpu_offset() #9
  %add23 = add i64 %call22, %4
  %5 = inttoptr i64 %add23 to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %5, i64 noundef 4294967295) #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 2
  %call25 = call i32 @rcuwait_wake_up(%struct.rcuwait* noundef %writer) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body3
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(%struct.rcuwait* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #9
  ret %struct.user_namespace* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #9
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #9
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_uid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #2 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kuid_into_mnt(i64 %coerce.val.ii) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #0 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #11, !srcloc !33
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_into_mnt(i64 %kuid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #5 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p) #9
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #9
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #6 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #9
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #9
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #6 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #5 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree nounwind readonly }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }

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
!9 = !{i64 2155180529}
!10 = !{!"branch_weights", i32 4000000, i32 4001}
!11 = !{i64 2155182945}
!12 = !{i64 1280303}
!13 = !{i64 2150298485}
!14 = !{i64 2155038646}
!15 = !{i64 2155040904}
!16 = !{i64 2147905491, i64 2147906139, i64 2147906169, i64 2147906201, i64 2147906235, i64 2147906271, i64 2147906296}
!17 = !{i64 2147966886, i64 2147967556, i64 2147967586, i64 2147967618, i64 2147967650, i64 2147967684, i64 2147967709}
!18 = !{i64 2151670357}
!19 = !{i64 2151670564}
!20 = !{i64 2151825183}
!21 = !{i64 2151828606}
!22 = !{i64 2151829448}
!23 = !{i64 2151830634}
!24 = !{i64 2149064764, i64 2149064806, i64 2149064865, i64 2149064918}
!25 = !{i64 2149039874, i64 2149039921, i64 2149039927, i64 2149039964, i64 2149039982, i64 2149040909, i64 2149040957, i64 2149041005, i64 2149041068, i64 2149041117, i64 2149040060, i64 2149040085, i64 2149040111, i64 2149040117, i64 2149040154, i64 2149040160, i64 2149040210, i64 2149040256, i64 2149040289}
!26 = !{i64 2151843543}
!27 = !{i64 2151847404}
!28 = !{i64 2151848246}
!29 = !{i64 2151849500}
!30 = !{i64 2151853323}
!31 = !{i64 2151854165}
!32 = !{i64 2151855417}
!33 = !{i64 2151886914}
