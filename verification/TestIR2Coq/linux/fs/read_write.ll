; ModuleID = 'fs/read_write.c'
source_filename = "fs/read_write.c"
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
%struct.swap_info_struct = type opaque
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, {}*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.19 }
%union.anon.19 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.20, %union.anon.23 }
%union.anon.20 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.23 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.65 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.65 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.pt_regs = type { %union.anon.72, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.72 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.kvec = type { i8*, i64 }

@generic_ro_fops = dso_local local_unnamed_addr constant { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* } { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @generic_file_read_iter, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* @generic_file_readonly_mmap, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* @generic_file_splice_read, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@warn_unsupported._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.warn_unsupported = private unnamed_addr constant [17 x i8] c"warn_unsupported\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"\014kernel %s not supported for file %pD4 (pid: %d comm: %.20s)\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @generic_file_llseek(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence) #0 {
entry:
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %0 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 4
  %3 = load i64, i64* %s_maxbytes, align 32
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %1) #12
  %call1 = call i64 @generic_file_llseek_size(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %3, i64 noundef %call) #12
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_read_iter(%struct.kiocb* noundef, %struct.iov_iter* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_readonly_mmap(%struct.file* noundef, %struct.vm_area_struct* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_splice_read(%struct.file* noundef, i64* noundef, %struct.pipe_inode_info* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i64 @vfs_setpos(%struct.file* nocapture noundef %file, i64 noundef %offset, i64 noundef %maxsize) local_unnamed_addr #2 {
entry:
  %cmp = icmp slt i64 %offset, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i1 @unsigned_offsets(%struct.file* noundef %file) #12
  %cmp1 = icmp sle i64 %offset, %maxsize
  %0 = and i1 %cmp1, %call
  br i1 %0, label %if.end3, label %return

if.end:                                           ; preds = %entry
  %cmp1.old = icmp sgt i64 %offset, %maxsize
  br i1 %cmp1.old, label %return, label %if.end3

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  %1 = load i64, i64* %f_pos, align 8
  %cmp4.not = icmp eq i64 %1, %offset
  br i1 %cmp4.not, label %return, label %if.then5

if.then5:                                         ; preds = %if.end3
  store i64 %offset, i64* %f_pos, align 8
  %f_version = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 14
  store i64 0, i64* %f_version, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then5, %if.end, %land.lhs.true
  %retval.0 = phi i64 [ -22, %land.lhs.true ], [ -22, %if.end ], [ %offset, %if.then5 ], [ %offset, %if.end3 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @unsigned_offsets(%struct.file* nocapture noundef readonly %file) unnamed_addr #3 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 8192
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @generic_file_llseek_size(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %maxsize, i64 noundef %eof) local_unnamed_addr #0 {
entry:
  switch i32 %whence, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb5
    i32 4, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %add = add i64 %eof, %offset
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %cmp = icmp eq i64 %offset, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  %0 = load i64, i64* %f_pos, align 8
  br label %return

if.end:                                           ; preds = %sw.bb1
  %rlock.i = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 4, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  %f_pos2 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  %1 = load i64, i64* %f_pos2, align 8
  %add3 = add i64 %1, %offset
  %call = call i64 @vfs_setpos(%struct.file* noundef %file, i64 noundef %add3, i64 noundef %maxsize) #12
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #13
  br label %return

sw.bb5:                                           ; preds = %entry
  %cmp6.not = icmp ult i64 %offset, %eof
  br i1 %cmp6.not, label %sw.epilog, label %return

sw.bb9:                                           ; preds = %entry
  %cmp10.not = icmp ult i64 %offset, %eof
  br i1 %cmp10.not, label %sw.epilog, label %return

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb5, %entry, %sw.bb
  %offset.addr.0 = phi i64 [ %offset, %entry ], [ %offset, %sw.bb5 ], [ %add, %sw.bb ], [ %eof, %sw.bb9 ]
  %call13 = call i64 @vfs_setpos(%struct.file* noundef %file, i64 noundef %offset.addr.0, i64 noundef %maxsize) #12
  br label %return

return:                                           ; preds = %sw.bb9, %sw.bb5, %sw.epilog, %if.end, %if.then
  %retval.0 = phi i64 [ %call13, %sw.epilog ], [ %0, %if.then ], [ %call, %if.end ], [ -6, %sw.bb5 ], [ -6, %sw.bb9 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @fixed_size_llseek(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %switch = icmp ult i32 %whence, 3
  br i1 %switch, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %call = call i64 @generic_file_llseek_size(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %size, i64 noundef %size) #12
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i64 [ %call, %sw.bb ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @no_seek_end_llseek(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence) local_unnamed_addr #0 {
entry:
  %switch = icmp ult i32 %whence, 2
  br i1 %switch, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %call = call i64 @generic_file_llseek_size(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef 9223372036854775807, i64 noundef 0) #12
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i64 [ %call, %sw.bb ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @no_seek_end_llseek_size(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %switch = icmp ult i32 %whence, 2
  br i1 %switch, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %call = call i64 @generic_file_llseek_size(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %size, i64 noundef 0) #12
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i64 [ %call, %sw.bb ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @noop_llseek(%struct.file* nocapture noundef readonly %file, i64 noundef %offset, i32 noundef %whence) local_unnamed_addr #3 {
entry:
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  %0 = load i64, i64* %f_pos, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @no_llseek(%struct.file* nocapture readnone %file, i64 %offset, i32 %whence) local_unnamed_addr #5 {
entry:
  ret i64 -29
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @default_llseek(%struct.file* nocapture noundef %file, i64 noundef %offset, i32 noundef %whence) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #12
  call fastcc void @inode_lock(%struct.inode* noundef %call) #12
  switch i32 %whence, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
    i32 3, label %sw.bb6
    i32 4, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %call2 = call fastcc i64 @i_size_read(%struct.inode* noundef %call) #12
  %add = add i64 %call2, %offset
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %cmp = icmp eq i64 %offset, 0
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  %0 = load i64, i64* %f_pos, align 8
  br i1 %cmp, label %out, label %if.end

if.end:                                           ; preds = %sw.bb3
  %add5 = add i64 %0, %offset
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 11
  %1 = load i64, i64* %i_size, align 8
  %cmp7.not = icmp sgt i64 %1, %offset
  br i1 %cmp7.not, label %sw.epilog, label %out

sw.bb10:                                          ; preds = %entry
  %i_size11 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 11
  %2 = load i64, i64* %i_size11, align 8
  %cmp12.not = icmp sgt i64 %2, %offset
  br i1 %cmp12.not, label %sw.epilog, label %out

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb6, %entry, %if.end, %sw.bb
  %offset.addr.0 = phi i64 [ %offset, %entry ], [ %offset, %sw.bb6 ], [ %add5, %if.end ], [ %add, %sw.bb ], [ %2, %sw.bb10 ]
  %cmp16 = icmp sgt i64 %offset.addr.0, -1
  br i1 %cmp16, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %call17 = call fastcc i1 @unsigned_offsets(%struct.file* noundef %file) #12
  br i1 %call17, label %if.then18, label %out

if.then18:                                        ; preds = %lor.lhs.false, %sw.epilog
  %f_pos19 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  %3 = load i64, i64* %f_pos19, align 8
  %cmp20.not = icmp eq i64 %offset.addr.0, %3
  br i1 %cmp20.not, label %out, label %if.then21

if.then21:                                        ; preds = %if.then18
  store i64 %offset.addr.0, i64* %f_pos19, align 8
  %f_version = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 14
  store i64 0, i64* %f_version, align 8
  br label %out

out:                                              ; preds = %sw.bb3, %if.then18, %if.then21, %sw.bb10, %sw.bb6, %lor.lhs.false
  %retval1.0 = phi i64 [ -22, %lor.lhs.false ], [ -6, %sw.bb6 ], [ -6, %sw.bb10 ], [ %offset.addr.0, %if.then21 ], [ %offset.addr.0, %if.then18 ], [ %0, %sw.bb3 ]
  call fastcc void @inode_unlock(%struct.inode* noundef %call) #12
  ret i64 %retval1.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #3 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_llseek(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence) local_unnamed_addr #0 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %1 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %llseek = getelementptr inbounds %struct.file_operations, %struct.file_operations* %1, i64 0, i32 1
  %llseek1 = bitcast {}** %llseek to i64 (%struct.file*, i64, i32)**
  %2 = load i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i64, i32)** %llseek1, align 8
  %tobool2.not = icmp eq i64 (%struct.file*, i64, i32)* %2, null
  %spec.select = select i1 %tobool2.not, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i64, i32)* %2
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry
  %fn.0 = phi i64 (%struct.file*, i64, i32)* [ @no_llseek, %entry ], [ %spec.select, %if.then ]
  %call = call i64 %fn.0(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_lseek(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_lseek(i64 noundef %0, i64 noundef %1, i64 noundef %2) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_lseek(i64 noundef %fd, i64 noundef %offset, i64 noundef %whence) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %conv1 = trunc i64 %whence to i32
  %call = call fastcc i64 @__do_sys_lseek(i32 noundef %conv, i64 noundef %offset, i32 noundef %conv1) #12
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @rw_verify_area(i32 noundef %read_write, %struct.file* nocapture noundef readonly %file, i64* noundef readonly %ppos, i64 noundef %count) local_unnamed_addr #3 {
entry:
  %cmp = icmp slt i64 %count, 0
  br i1 %cmp, label %return, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq i64* %ppos, null
  br i1 %tobool2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %0 = load i64, i64* %ppos, align 8
  %cmp4 = icmp slt i64 %0, 0
  br i1 %cmp4, label %if.then13, label %if.else, !prof !8

if.then13:                                        ; preds = %if.then3
  %call = call fastcc i1 @unsigned_offsets(%struct.file* noundef %file) #12
  br i1 %call, label %if.end15, label %cleanup.thread

if.end15:                                         ; preds = %if.then13
  %sub = sub i64 0, %0
  %cmp16.not = icmp ugt i64 %sub, %count
  br i1 %cmp16.not, label %return, label %cleanup.thread

if.else:                                          ; preds = %if.then3
  %add = add nuw i64 %0, %count
  %cmp20 = icmp slt i64 %add, 0
  br i1 %cmp20, label %if.then29, label %return, !prof !8

if.then29:                                        ; preds = %if.else
  %call30 = call fastcc i1 @unsigned_offsets(%struct.file* noundef %file) #12
  br i1 %call30, label %return, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then13, %if.end15, %if.then29
  %retval.0.ph = phi i32 [ -22, %if.then29 ], [ -75, %if.end15 ], [ -22, %if.then13 ]
  br label %return

return:                                           ; preds = %if.end, %if.end15, %if.then29, %if.else, %cleanup.thread, %entry
  %retval.1 = phi i32 [ -22, %entry ], [ %retval.0.ph, %cleanup.thread ], [ 0, %if.else ], [ 0, %if.then29 ], [ 0, %if.end15 ], [ 0, %if.end ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__kernel_read(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %pos) local_unnamed_addr #0 {
entry:
  %iov = alloca %struct.kvec, align 8
  %kiocb = alloca %struct.kiocb, align 8
  %iter = alloca %struct.iov_iter, align 8
  %0 = bitcast %struct.kvec* %iov to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %iov_base = getelementptr inbounds %struct.kvec, %struct.kvec* %iov, i64 0, i32 0
  store i8* %buf, i8** %iov_base, align 8
  %iov_len = getelementptr inbounds %struct.kvec, %struct.kvec* %iov, i64 0, i32 1
  %cmp = icmp ult i64 %count, 2147479552
  %cond = select i1 %cmp, i64 %count, i64 2147479552
  store i64 %cond, i64* %iov_len, align 8
  %1 = bitcast %struct.kiocb* %kiocb to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false), !annotation !9
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !9
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %3 = load i32, i32* %f_mode, align 4
  %and = and i32 %3, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end19, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/read_write.c\22; .popsection; .long 14472b - 14470b; .short 429; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !10
  br label %cleanup

if.end19:                                         ; preds = %entry
  %and21 = and i32 %3, 131072
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end19
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %4 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %read_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %4, i64 0, i32 4
  %5 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %read_iter, align 8
  %tobool25.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %5, null
  br i1 %tobool25.not, label %if.then35, label %lor.rhs, !prof !8

lor.rhs:                                          ; preds = %if.end24
  %read = getelementptr inbounds %struct.file_operations, %struct.file_operations* %4, i64 0, i32 2
  %6 = load i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)** %read, align 8
  %tobool27.not = icmp eq i64 (%struct.file*, i8*, i64, i64*)* %6, null
  br i1 %tobool27.not, label %if.end37, label %if.then35, !prof !11

if.then35:                                        ; preds = %if.end24, %lor.rhs
  call fastcc void @warn_unsupported(%struct.file* noundef %file, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #12
  br label %cleanup

if.end37:                                         ; preds = %lor.rhs
  call fastcc void @init_sync_kiocb(%struct.kiocb* noundef nonnull %kiocb, %struct.file* noundef %file) #12
  %tobool38.not = icmp eq i64* %pos, null
  br i1 %tobool38.not, label %cond.end41, label %cond.true39

cond.true39:                                      ; preds = %if.end37
  %7 = load i64, i64* %pos, align 8
  br label %cond.end41

cond.end41:                                       ; preds = %if.end37, %cond.true39
  %cond42 = phi i64 [ %7, %cond.true39 ], [ 0, %if.end37 ]
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 1
  store i64 %cond42, i64* %ki_pos, align 8
  call void @iov_iter_kvec(%struct.iov_iter* noundef nonnull %iter, i32 noundef 0, %struct.kvec* noundef nonnull %iov, i64 noundef 1, i64 noundef %cond) #13
  %8 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %read_iter45 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %8, i64 0, i32 4
  %9 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %read_iter45, align 8
  %call46 = call i64 %9(%struct.kiocb* noundef nonnull %kiocb, %struct.iov_iter* noundef nonnull %iter) #13
  %cmp47 = icmp sgt i64 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end55

if.then49:                                        ; preds = %cond.end41
  br i1 %tobool38.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.then49
  %10 = load i64, i64* %ki_pos, align 8
  store i64 %10, i64* %pos, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.then49
  call fastcc void @fsnotify_access(%struct.file* noundef %file) #12
  %11 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %cond.end41
  %12 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end19, %if.end55, %if.then35
  %retval.0 = phi i64 [ -22, %if.then35 ], [ %call46, %if.end55 ], [ -22, %if.then ], [ -22, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @warn_unsupported(%struct.file* noundef %file, i8* noundef %op) unnamed_addr #0 {
entry:
  %call = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @warn_unsupported._rs, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.warn_unsupported, i64 0, i64 0)) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 50
  %2 = load i32, i32* %pid, align 32
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 81, i64 0
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* noundef %op, %struct.file* noundef %file, i32 noundef %2, i8* noundef %arraydecay) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @init_sync_kiocb(%struct.kiocb* nocapture noundef writeonly %kiocb, %struct.file* noundef %filp) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @iocb_flags(%struct.file* noundef %filp) #12
  %call1 = call fastcc i32 @file_write_hint(%struct.file* noundef %filp) #12
  %call2 = call fastcc i16 @ki_hint_validate(i32 noundef %call1) #12
  %call3 = call fastcc i32 @get_current_ioprio() #12
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
declare dso_local void @iov_iter_kvec(%struct.iov_iter* noundef, i32 noundef, %struct.kvec* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_access(%struct.file* nocapture noundef readonly %file) unnamed_addr #8 {
entry:
  call fastcc void @fsnotify_file(%struct.file* noundef %file, i32 noundef 1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @kernel_read(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %pos) local_unnamed_addr #0 {
entry:
  %call = call i32 @rw_verify_area(i32 noundef 0, %struct.file* noundef %file, i64* noundef %pos, i64 noundef %count) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i64 @__kernel_read(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %pos) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %call1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_read(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %pos) local_unnamed_addr #0 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and2 = and i32 %0, 131072
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call = call fastcc i64 @__range_ok(i8* noundef %buf, i64 noundef %count) #12
  %tobool6.not = icmp eq i64 %call, 0
  br i1 %tobool6.not, label %cleanup, label %if.end11, !prof !8

if.end11:                                         ; preds = %if.end5
  %call12 = call i32 @rw_verify_area(i32 noundef 0, %struct.file* noundef %file, i64* noundef %pos, i64 noundef %count) #12
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  %conv13 = sext i32 %call12 to i64
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %1 = icmp ult i64 %count, 2147479552
  %spec.store.select = select i1 %1, i64 %count, i64 2147479552
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %2 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %read = getelementptr inbounds %struct.file_operations, %struct.file_operations* %2, i64 0, i32 2
  %3 = load i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)** %read, align 8
  %tobool20.not = icmp eq i64 (%struct.file*, i8*, i64, i64*)* %3, null
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end16
  %call24 = call i64 %3(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %spec.store.select, i64* noundef %pos) #13
  br label %if.end31

if.else:                                          ; preds = %if.end16
  %read_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %2, i64 0, i32 4
  %4 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %read_iter, align 8
  %tobool26.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %4, null
  br i1 %tobool26.not, label %if.end36, label %if.then27

if.then27:                                        ; preds = %if.else
  %call28 = call fastcc i64 @new_sync_read(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %spec.store.select, i64* noundef %pos) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.then21
  %ret.0 = phi i64 [ %call24, %if.then21 ], [ %call28, %if.then27 ]
  %cmp32 = icmp sgt i64 %ret.0, 0
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  call fastcc void @fsnotify_access(%struct.file* noundef %file) #12
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then34, %if.end31
  %ret.061 = phi i64 [ %ret.0, %if.then34 ], [ %ret.0, %if.end31 ], [ -22, %if.else ]
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %entry, %if.end36, %if.then15
  %retval.0 = phi i64 [ %conv13, %if.then15 ], [ %ret.061, %if.end36 ], [ -9, %entry ], [ -22, %if.end ], [ -14, %if.end5 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #14, !srcloc !13
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @new_sync_read(%struct.file* noundef %filp, i8* noundef %buf, i64 noundef %len, i64* noundef %ppos) unnamed_addr #0 {
entry:
  %iov = alloca %struct.iovec, align 8
  %kiocb = alloca %struct.kiocb, align 8
  %iter = alloca %struct.iov_iter, align 8
  %0 = bitcast %struct.iovec* %iov to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i64 0, i32 0
  store i8* %buf, i8** %iov_base, align 8
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i64 0, i32 1
  store i64 %len, i64* %iov_len, align 8
  %1 = bitcast %struct.kiocb* %kiocb to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false), !annotation !9
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !9
  call fastcc void @init_sync_kiocb(%struct.kiocb* noundef nonnull %kiocb, %struct.file* noundef %filp) #12
  %tobool.not = icmp eq i64* %ppos, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %ppos, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ 0, %entry ]
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 1
  store i64 %cond, i64* %ki_pos, align 8
  call void @iov_iter_init(%struct.iov_iter* noundef nonnull %iter, i32 noundef 0, %struct.iovec* noundef nonnull %iov, i64 noundef 1, i64 noundef %len) #13
  %call = call fastcc i64 @call_read_iter(%struct.file* noundef %filp, %struct.kiocb* noundef nonnull %kiocb, %struct.iov_iter* noundef nonnull %iter) #12
  %cmp = icmp eq i64 %call, -529
  br i1 %cmp, label %do.body3, label %do.end8, !prof !8

do.body3:                                         ; preds = %cond.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/read_write.c\22; .popsection; .long 14472b - 14470b; .short 405; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !14
  unreachable

do.end8:                                          ; preds = %cond.end
  br i1 %tobool.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %do.end8
  %4 = load i64, i64* %ki_pos, align 8
  store i64 %4, i64* %ppos, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__kernel_write(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %pos) local_unnamed_addr #0 {
entry:
  %iov = alloca %struct.kvec, align 8
  %kiocb = alloca %struct.kiocb, align 8
  %iter = alloca %struct.iov_iter, align 8
  %0 = bitcast %struct.kvec* %iov to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %iov_base = getelementptr inbounds %struct.kvec, %struct.kvec* %iov, i64 0, i32 0
  store i8* %buf, i8** %iov_base, align 8
  %iov_len = getelementptr inbounds %struct.kvec, %struct.kvec* %iov, i64 0, i32 1
  %cmp = icmp ult i64 %count, 2147479552
  %cond = select i1 %cmp, i64 %count, i64 2147479552
  store i64 %cond, i64* %iov_len, align 8
  %1 = bitcast %struct.kiocb* %kiocb to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false), !annotation !9
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !9
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %3 = load i32, i32* %f_mode, align 4
  %and = and i32 %3, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end19, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/read_write.c\22; .popsection; .long 14472b - 14470b; .short 525; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !15
  br label %cleanup

if.end19:                                         ; preds = %entry
  %and21 = and i32 %3, 262144
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end19
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %4 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %4, i64 0, i32 5
  %5 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %tobool25.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %5, null
  br i1 %tobool25.not, label %if.then35, label %lor.rhs, !prof !8

lor.rhs:                                          ; preds = %if.end24
  %write = getelementptr inbounds %struct.file_operations, %struct.file_operations* %4, i64 0, i32 3
  %6 = load i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)** %write, align 8
  %tobool27.not = icmp eq i64 (%struct.file*, i8*, i64, i64*)* %6, null
  br i1 %tobool27.not, label %if.end37, label %if.then35, !prof !11

if.then35:                                        ; preds = %if.end24, %lor.rhs
  call fastcc void @warn_unsupported(%struct.file* noundef %file, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #12
  br label %cleanup

if.end37:                                         ; preds = %lor.rhs
  call fastcc void @init_sync_kiocb(%struct.kiocb* noundef nonnull %kiocb, %struct.file* noundef %file) #12
  %tobool38.not = icmp eq i64* %pos, null
  br i1 %tobool38.not, label %cond.end41, label %cond.true39

cond.true39:                                      ; preds = %if.end37
  %7 = load i64, i64* %pos, align 8
  br label %cond.end41

cond.end41:                                       ; preds = %if.end37, %cond.true39
  %cond42 = phi i64 [ %7, %cond.true39 ], [ 0, %if.end37 ]
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 1
  store i64 %cond42, i64* %ki_pos, align 8
  call void @iov_iter_kvec(%struct.iov_iter* noundef nonnull %iter, i32 noundef 1, %struct.kvec* noundef nonnull %iov, i64 noundef 1, i64 noundef %cond) #13
  %8 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %write_iter45 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %8, i64 0, i32 5
  %9 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter45, align 8
  %call46 = call i64 %9(%struct.kiocb* noundef nonnull %kiocb, %struct.iov_iter* noundef nonnull %iter) #13
  %cmp47 = icmp sgt i64 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end55

if.then49:                                        ; preds = %cond.end41
  br i1 %tobool38.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.then49
  %10 = load i64, i64* %ki_pos, align 8
  store i64 %10, i64* %pos, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.then49
  call fastcc void @fsnotify_modify(%struct.file* noundef %file) #12
  %11 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %cond.end41
  %12 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end19, %if.end55, %if.then35
  %retval.0 = phi i64 [ -22, %if.then35 ], [ %call46, %if.end55 ], [ -9, %if.then ], [ -22, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_modify(%struct.file* nocapture noundef readonly %file) unnamed_addr #8 {
entry:
  call fastcc void @fsnotify_file(%struct.file* noundef %file, i32 noundef 2) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @kernel_write(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %pos) local_unnamed_addr #0 {
entry:
  %call = call i32 @rw_verify_area(i32 noundef 1, %struct.file* noundef %file, i64* noundef %pos, i64 noundef %count) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @file_start_write(%struct.file* noundef %file) #12
  %call1 = call i64 @__kernel_write(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %pos) #12
  call fastcc void @file_end_write(%struct.file* noundef %file) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %call1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_start_write(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #12
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @sb_start_write(%struct.super_block* noundef %2) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_end_write(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #12
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @__sb_end_write(%struct.super_block* noundef %2) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_write(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %pos) local_unnamed_addr #0 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and2 = and i32 %0, 262144
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call = call fastcc i64 @__range_ok(i8* noundef %buf, i64 noundef %count) #12
  %tobool6.not = icmp eq i64 %call, 0
  br i1 %tobool6.not, label %cleanup, label %if.end11, !prof !8

if.end11:                                         ; preds = %if.end5
  %call12 = call i32 @rw_verify_area(i32 noundef 1, %struct.file* noundef %file, i64* noundef %pos, i64 noundef %count) #12
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  %conv13 = sext i32 %call12 to i64
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %1 = icmp ult i64 %count, 2147479552
  %spec.store.select = select i1 %1, i64 %count, i64 2147479552
  call fastcc void @file_start_write(%struct.file* noundef %file) #12
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %2 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %write = getelementptr inbounds %struct.file_operations, %struct.file_operations* %2, i64 0, i32 3
  %3 = load i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)** %write, align 8
  %tobool20.not = icmp eq i64 (%struct.file*, i8*, i64, i64*)* %3, null
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end16
  %call24 = call i64 %3(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %spec.store.select, i64* noundef %pos) #13
  br label %if.end31

if.else:                                          ; preds = %if.end16
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %2, i64 0, i32 5
  %4 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %tobool26.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %4, null
  br i1 %tobool26.not, label %if.end36, label %if.then27

if.then27:                                        ; preds = %if.else
  %call28 = call fastcc i64 @new_sync_write(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %spec.store.select, i64* noundef %pos) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.then21
  %ret.0 = phi i64 [ %call24, %if.then21 ], [ %call28, %if.then27 ]
  %cmp32 = icmp sgt i64 %ret.0, 0
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  call fastcc void @fsnotify_modify(%struct.file* noundef %file) #12
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then34, %if.end31
  %ret.063 = phi i64 [ %ret.0, %if.then34 ], [ %ret.0, %if.end31 ], [ -22, %if.else ]
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  call fastcc void @file_end_write(%struct.file* noundef %file) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %entry, %if.end36, %if.then15
  %retval.0 = phi i64 [ %conv13, %if.then15 ], [ %ret.063, %if.end36 ], [ -9, %entry ], [ -22, %if.end ], [ -14, %if.end5 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @new_sync_write(%struct.file* noundef %filp, i8* noundef %buf, i64 noundef %len, i64* noundef %ppos) unnamed_addr #0 {
entry:
  %iov = alloca %struct.iovec, align 8
  %kiocb = alloca %struct.kiocb, align 8
  %iter = alloca %struct.iov_iter, align 8
  %0 = bitcast %struct.iovec* %iov to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i64 0, i32 0
  store i8* %buf, i8** %iov_base, align 8
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i64 0, i32 1
  store i64 %len, i64* %iov_len, align 8
  %1 = bitcast %struct.kiocb* %kiocb to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false), !annotation !9
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !9
  call fastcc void @init_sync_kiocb(%struct.kiocb* noundef nonnull %kiocb, %struct.file* noundef %filp) #12
  %tobool = icmp ne i64* %ppos, null
  br i1 %tobool, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %ppos, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ 0, %entry ]
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 1
  store i64 %cond, i64* %ki_pos, align 8
  call void @iov_iter_init(%struct.iov_iter* noundef nonnull %iter, i32 noundef 1, %struct.iovec* noundef nonnull %iov, i64 noundef 1, i64 noundef %len) #13
  %call = call fastcc i64 @call_write_iter(%struct.file* noundef %filp, %struct.kiocb* noundef nonnull %kiocb, %struct.iov_iter* noundef nonnull %iter) #12
  %cmp = icmp eq i64 %call, -529
  br i1 %cmp, label %do.body3, label %do.end8, !prof !8

do.body3:                                         ; preds = %cond.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/read_write.c\22; .popsection; .long 14472b - 14470b; .short 508; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !16
  unreachable

do.end8:                                          ; preds = %cond.end
  %cmp9 = icmp sgt i64 %call, 0
  %or.cond = and i1 %tobool, %cmp9
  br i1 %or.cond, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.end8
  %4 = load i64, i64* %ki_pos, align 8
  store i64 %4, i64* %ppos, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ksys_read(i32 noundef %fd, i8* noundef %buf, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %pos = alloca i64, align 8
  %call = call fastcc [2 x i64] @fdget_pos(i32 noundef %fd) #12
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i64 0, i64* %pos, align 8, !annotation !9
  %call2 = call fastcc i64* @file_ppos(%struct.file* noundef nonnull %0) #12
  %tobool3.not = icmp eq i64* %call2, null
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %2 = load i64, i64* %call2, align 8
  store i64 %2, i64* %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %ppos.0 = phi i64* [ %pos, %if.then4 ], [ null, %if.then ]
  %call6 = call i64 @vfs_read(%struct.file* noundef nonnull %0, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos.0) #12
  %cmp = icmp sgt i64 %call6, -1
  %tobool7 = icmp ne i64* %ppos.0, null
  %or.cond = and i1 %tobool7, %cmp
  br i1 %or.cond, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %3 = load i64, i64* %pos, align 8
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 10
  store i64 %3, i64* %f_pos, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  call fastcc void @fdput_pos([2 x i64] %call) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  %ret.0 = phi i64 [ %call6, %if.end10 ], [ -9, %entry ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget_pos(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget_pos(i32 noundef %fd) #13
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #12
  ret [2 x i64] %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64* @file_ppos(%struct.file* noundef readonly %file) unnamed_addr #3 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 2097152
  %tobool.not = icmp eq i32 %and, 0
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  %cond = select i1 %tobool.not, i64* %f_pos, i64* null
  ret i64* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdput_pos([2 x i64] %f.coerce) unnamed_addr #0 {
entry:
  %f.coerce.fca.1.extract = extractvalue [2 x i64] %f.coerce, 1
  %and1 = and i64 %f.coerce.fca.1.extract, 2
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %f.coerce.fca.0.extract = extractvalue [2 x i64] %f.coerce, 0
  %0 = inttoptr i64 %f.coerce.fca.0.extract to %struct.file*
  call void @__f_unlock_pos(%struct.file* noundef %0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @fdput([2 x i64] %f.coerce) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_read(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_read(i64 noundef %0, i64 noundef %1, i64 noundef %2) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_read(i64 noundef %fd, i64 noundef %buf, i64 noundef %count) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %0 = inttoptr i64 %buf to i8*
  %call = call fastcc i64 @__do_sys_read(i32 noundef %conv, i8* noundef %0, i64 noundef %count) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ksys_write(i32 noundef %fd, i8* noundef %buf, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %pos = alloca i64, align 8
  %call = call fastcc [2 x i64] @fdget_pos(i32 noundef %fd) #12
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i64 0, i64* %pos, align 8, !annotation !9
  %call2 = call fastcc i64* @file_ppos(%struct.file* noundef nonnull %0) #12
  %tobool3.not = icmp eq i64* %call2, null
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %2 = load i64, i64* %call2, align 8
  store i64 %2, i64* %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %ppos.0 = phi i64* [ %pos, %if.then4 ], [ null, %if.then ]
  %call6 = call i64 @vfs_write(%struct.file* noundef nonnull %0, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos.0) #12
  %cmp = icmp sgt i64 %call6, -1
  %tobool7 = icmp ne i64* %ppos.0, null
  %or.cond = and i1 %tobool7, %cmp
  br i1 %or.cond, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %3 = load i64, i64* %pos, align 8
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 10
  store i64 %3, i64* %f_pos, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  call fastcc void @fdput_pos([2 x i64] %call) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  %ret.0 = phi i64 [ %call6, %if.end10 ], [ -9, %entry ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_write(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_write(i64 noundef %0, i64 noundef %1, i64 noundef %2) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_write(i64 noundef %fd, i64 noundef %buf, i64 noundef %count) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %0 = inttoptr i64 %buf to i8*
  %call = call fastcc i64 @__do_sys_write(i32 noundef %conv, i8* noundef %0, i64 noundef %count) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ksys_pread64(i32 noundef %fd, i8* noundef %buf, i64 noundef %count, i64 noundef %pos) local_unnamed_addr #0 {
entry:
  %pos.addr = alloca i64, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %cmp = icmp slt i64 %pos, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #12
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.then1

if.then1:                                         ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and = and i32 %1, 8
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.then1
  %call6 = call i64 @vfs_read(%struct.file* noundef nonnull %0, i8* noundef %buf, i64 noundef %count, i64* noundef nonnull %pos.addr) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then1
  %ret.0 = phi i64 [ %call6, %if.then4 ], [ -29, %if.then1 ]
  call fastcc void @fdput([2 x i64] %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end7, %entry
  %retval.0 = phi i64 [ -22, %entry ], [ %ret.0, %if.end7 ], [ -9, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #13
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #12
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
  call void @fput(%struct.file* noundef %0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_pread64(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_pread64(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_pread64(i64 noundef %fd, i64 noundef %buf, i64 noundef %count, i64 noundef %pos) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %0 = inttoptr i64 %buf to i8*
  %call = call fastcc i64 @__do_sys_pread64(i32 noundef %conv, i8* noundef %0, i64 noundef %count, i64 noundef %pos) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ksys_pwrite64(i32 noundef %fd, i8* noundef %buf, i64 noundef %count, i64 noundef %pos) local_unnamed_addr #0 {
entry:
  %pos.addr = alloca i64, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %cmp = icmp slt i64 %pos, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #12
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.then1

if.then1:                                         ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and = and i32 %1, 16
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.then1
  %call6 = call i64 @vfs_write(%struct.file* noundef nonnull %0, i8* noundef %buf, i64 noundef %count, i64* noundef nonnull %pos.addr) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then1
  %ret.0 = phi i64 [ %call6, %if.then4 ], [ -29, %if.then1 ]
  call fastcc void @fdput([2 x i64] %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end7, %entry
  %retval.0 = phi i64 [ -22, %entry ], [ %ret.0, %if.end7 ], [ -9, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_pwrite64(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_pwrite64(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_pwrite64(i64 noundef %fd, i64 noundef %buf, i64 noundef %count, i64 noundef %pos) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %0 = inttoptr i64 %buf to i8*
  %call = call fastcc i64 @__do_sys_pwrite64(i32 noundef %conv, i8* noundef %0, i64 noundef %count, i64 noundef %pos) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_iocb_iter_read(%struct.file* nocapture noundef readonly %file, %struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) local_unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %read_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 4
  %1 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %read_iter, align 8
  %tobool.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %2 = load i32, i32* %f_mode, align 4
  %and = and i32 %2, 1
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %and5 = and i32 %2, 131072
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end3
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #12
  %tobool9.not = icmp eq i64 %call, 0
  br i1 %tobool9.not, label %if.then19, label %if.end11

if.end11:                                         ; preds = %if.end8
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %call12 = call i32 @rw_verify_area(i32 noundef 0, %struct.file* noundef %file, i64* noundef %ki_pos, i64 noundef %call) #12
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.then14, label %out

if.then14:                                        ; preds = %if.end11
  %conv = sext i32 %call12 to i64
  br label %cleanup

out:                                              ; preds = %if.end11
  %call16 = call fastcc i64 @call_read_iter(%struct.file* noundef %file, %struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #12
  %cmp17 = icmp sgt i64 %call16, -1
  br i1 %cmp17, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.end8, %out
  %ret.037 = phi i64 [ %call16, %out ], [ 0, %if.end8 ]
  call fastcc void @fsnotify_access(%struct.file* noundef %file) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then19, %if.end3, %if.end, %entry, %if.then14
  %retval.0 = phi i64 [ %conv, %if.then14 ], [ -22, %entry ], [ -9, %if.end ], [ -22, %if.end3 ], [ %ret.037, %if.then19 ], [ %call16, %out ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #3 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @call_read_iter(%struct.file* nocapture noundef readonly %file, %struct.kiocb* noundef %kio, %struct.iov_iter* noundef %iter) unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %read_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 4
  %1 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %read_iter, align 8
  %call = call i64 %1(%struct.kiocb* noundef %kio, %struct.iov_iter* noundef %iter) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_iter_read(%struct.file* noundef %file, %struct.iov_iter* noundef %iter, i64* noundef %ppos, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %read_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 4
  %1 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %read_iter, align 8
  %tobool.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %1, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @do_iter_read(%struct.file* noundef %file, %struct.iov_iter* noundef %iter, i64* noundef %ppos, i32 noundef %flags) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_iter_read(%struct.file* noundef %file, %struct.iov_iter* noundef %iter, i64* noundef %pos, i32 noundef %flags) unnamed_addr #0 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and2 = and i32 %0, 131072
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #12
  %tobool6.not = icmp eq i64 %call, 0
  br i1 %tobool6.not, label %if.then20, label %if.end8

if.end8:                                          ; preds = %if.end5
  %call9 = call i32 @rw_verify_area(i32 noundef 0, %struct.file* noundef %file, i64* noundef %pos, i64 noundef %call) #12
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %conv = sext i32 %call9 to i64
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %1 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %read_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %1, i64 0, i32 4
  %2 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %read_iter, align 8
  %tobool13.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %2, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call15 = call fastcc i64 @do_iter_readv_writev(%struct.file* noundef %file, %struct.iov_iter* noundef %iter, i64* noundef %pos, i32 noundef 0, i32 noundef %flags) #12
  br label %out

if.else:                                          ; preds = %if.end12
  %call16 = call fastcc i64 @do_loop_readv_writev(%struct.file* noundef %file, %struct.iov_iter* noundef %iter, i64* noundef %pos, i32 noundef 0, i32 noundef %flags) #12
  br label %out

out:                                              ; preds = %if.then14, %if.else
  %ret.0 = phi i64 [ %call15, %if.then14 ], [ %call16, %if.else ]
  %cmp18 = icmp sgt i64 %ret.0, -1
  br i1 %cmp18, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.end5, %out
  %ret.042 = phi i64 [ %ret.0, %out ], [ 0, %if.end5 ]
  call fastcc void @fsnotify_access(%struct.file* noundef %file) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then20, %if.end, %entry, %if.then11
  %retval.0 = phi i64 [ %conv, %if.then11 ], [ -9, %entry ], [ -22, %if.end ], [ %ret.042, %if.then20 ], [ %ret.0, %out ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_iocb_iter_write(%struct.file* nocapture noundef readonly %file, %struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) local_unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 5
  %1 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %tobool.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %2 = load i32, i32* %f_mode, align 4
  %and = and i32 %2, 2
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %and5 = and i32 %2, 262144
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end3
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #12
  %tobool9.not = icmp eq i64 %call, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end8
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %call12 = call i32 @rw_verify_area(i32 noundef 1, %struct.file* noundef %file, i64* noundef %ki_pos, i64 noundef %call) #12
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %conv = sext i32 %call12 to i64
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = call fastcc i64 @call_write_iter(%struct.file* noundef %file, %struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #12
  %cmp17 = icmp sgt i64 %call16, 0
  br i1 %cmp17, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.end15
  call fastcc void @fsnotify_modify(%struct.file* noundef %file) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then19, %if.end8, %if.end3, %if.end, %entry, %if.then14
  %retval.0 = phi i64 [ %conv, %if.then14 ], [ -22, %entry ], [ -9, %if.end ], [ -22, %if.end3 ], [ 0, %if.end8 ], [ %call16, %if.then19 ], [ %call16, %if.end15 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @call_write_iter(%struct.file* nocapture noundef readonly %file, %struct.kiocb* noundef %kio, %struct.iov_iter* noundef %iter) unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 5
  %1 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %call = call i64 %1(%struct.kiocb* noundef %kio, %struct.iov_iter* noundef %iter) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_iter_write(%struct.file* noundef %file, %struct.iov_iter* noundef %iter, i64* noundef %ppos, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 5
  %1 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %tobool.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %1, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @do_iter_write(%struct.file* noundef %file, %struct.iov_iter* noundef %iter, i64* noundef %ppos, i32 noundef %flags) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_iter_write(%struct.file* noundef %file, %struct.iov_iter* noundef %iter, i64* noundef %pos, i32 noundef %flags) unnamed_addr #0 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and2 = and i32 %0, 262144
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #12
  %tobool6.not = icmp eq i64 %call, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %call9 = call i32 @rw_verify_area(i32 noundef 1, %struct.file* noundef %file, i64* noundef %pos, i64 noundef %call) #12
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %conv = sext i32 %call9 to i64
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %1 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %1, i64 0, i32 5
  %2 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %tobool13.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %2, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call15 = call fastcc i64 @do_iter_readv_writev(%struct.file* noundef %file, %struct.iov_iter* noundef %iter, i64* noundef %pos, i32 noundef 1, i32 noundef %flags) #12
  br label %if.end17

if.else:                                          ; preds = %if.end12
  %call16 = call fastcc i64 @do_loop_readv_writev(%struct.file* noundef %file, %struct.iov_iter* noundef %iter, i64* noundef %pos, i32 noundef 1, i32 noundef %flags) #12
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %ret.0 = phi i64 [ %call15, %if.then14 ], [ %call16, %if.else ]
  %cmp18 = icmp sgt i64 %ret.0, 0
  br i1 %cmp18, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.end17
  call fastcc void @fsnotify_modify(%struct.file* noundef %file) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then20, %if.end5, %if.end, %entry, %if.then11
  %retval.0 = phi i64 [ %conv, %if.then11 ], [ -9, %entry ], [ -22, %if.end ], [ 0, %if.end5 ], [ %ret.0, %if.then20 ], [ %ret.0, %if.end17 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_readv(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_readv(i64 noundef %0, i64 noundef %1, i64 noundef %2) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_readv(i64 noundef %fd, i64 noundef %vec, i64 noundef %vlen) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %vec to %struct.iovec*
  %call = call fastcc i64 @__do_sys_readv(i64 noundef %fd, %struct.iovec* noundef %0, i64 noundef %vlen) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_writev(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_writev(i64 noundef %0, i64 noundef %1, i64 noundef %2) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_writev(i64 noundef %fd, i64 noundef %vec, i64 noundef %vlen) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %vec to %struct.iovec*
  %call = call fastcc i64 @__do_sys_writev(i64 noundef %fd, %struct.iovec* noundef %0, i64 noundef %vlen) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_preadv(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %call = call fastcc i64 @__se_sys_preadv(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_preadv(i64 noundef %fd, i64 noundef %vec, i64 noundef %vlen, i64 noundef %pos_l, i64 noundef %pos_h) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %vec to %struct.iovec*
  %call = call fastcc i64 @__do_sys_preadv(i64 noundef %fd, %struct.iovec* noundef %0, i64 noundef %vlen, i64 noundef %pos_l, i64 noundef %pos_h) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_preadv2(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %arrayidx11 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 5
  %5 = load i64, i64* %arrayidx11, align 8
  %call = call fastcc i64 @__se_sys_preadv2(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_preadv2(i64 noundef %fd, i64 noundef %vec, i64 noundef %vlen, i64 noundef %pos_l, i64 noundef %pos_h, i64 noundef %flags) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %vec to %struct.iovec*
  %conv = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_preadv2(i64 noundef %fd, %struct.iovec* noundef %0, i64 noundef %vlen, i64 noundef %pos_l, i64 noundef %pos_h, i32 noundef %conv) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_pwritev(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %call = call fastcc i64 @__se_sys_pwritev(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_pwritev(i64 noundef %fd, i64 noundef %vec, i64 noundef %vlen, i64 noundef %pos_l, i64 noundef %pos_h) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %vec to %struct.iovec*
  %call = call fastcc i64 @__do_sys_pwritev(i64 noundef %fd, %struct.iovec* noundef %0, i64 noundef %vlen, i64 noundef %pos_l, i64 noundef %pos_h) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_pwritev2(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %arrayidx11 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 5
  %5 = load i64, i64* %arrayidx11, align 8
  %call = call fastcc i64 @__se_sys_pwritev2(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_pwritev2(i64 noundef %fd, i64 noundef %vec, i64 noundef %vlen, i64 noundef %pos_l, i64 noundef %pos_h, i64 noundef %flags) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %vec to %struct.iovec*
  %conv = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_pwritev2(i64 noundef %fd, %struct.iovec* noundef %0, i64 noundef %vlen, i64 noundef %pos_l, i64 noundef %pos_h, i32 noundef %conv) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sendfile(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_sendfile(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sendfile(i64 noundef %out_fd, i64 noundef %in_fd, i64 noundef %offset, i64 noundef %count) unnamed_addr #0 {
entry:
  %conv = trunc i64 %out_fd to i32
  %conv1 = trunc i64 %in_fd to i32
  %0 = inttoptr i64 %offset to i64*
  %call = call fastcc i64 @__do_sys_sendfile(i32 noundef %conv, i32 noundef %conv1, i64* noundef %0, i64 noundef %count) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sendfile64(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_sendfile64(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sendfile64(i64 noundef %out_fd, i64 noundef %in_fd, i64 noundef %offset, i64 noundef %count) unnamed_addr #0 {
entry:
  %conv = trunc i64 %out_fd to i32
  %conv1 = trunc i64 %in_fd to i32
  %0 = inttoptr i64 %offset to i64*
  %call = call fastcc i64 @__do_sys_sendfile64(i32 noundef %conv, i32 noundef %conv1, i64* noundef %0, i64 noundef %count) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @generic_copy_file_range(%struct.file* noundef %file_in, i64 noundef %pos_in, %struct.file* noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 %flags) local_unnamed_addr #0 {
entry:
  %pos_in.addr = alloca i64, align 8
  %pos_out.addr = alloca i64, align 8
  store i64 %pos_in, i64* %pos_in.addr, align 8
  store i64 %pos_out, i64* %pos_out.addr, align 8
  %0 = icmp ult i64 %len, 2147479552
  %cond = select i1 %0, i64 %len, i64 2147479552
  %call = call i64 @do_splice_direct(%struct.file* noundef %file_in, i64* noundef nonnull %pos_in.addr, %struct.file* noundef %file_out, i64* noundef nonnull %pos_out.addr, i64 noundef %cond, i32 noundef 0) #13
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @do_splice_direct(%struct.file* noundef, i64* noundef, %struct.file* noundef, i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_copy_file_range(%struct.file* noundef %file_in, i64 noundef %pos_in, %struct.file* noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %pos_in.addr = alloca i64, align 8
  %pos_out.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  store i64 %pos_in, i64* %pos_in.addr, align 8
  store i64 %pos_out, i64* %pos_out.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %cmp.not = icmp eq i32 %flags, 0
  br i1 %cmp.not, label %if.end, label %cleanup84

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @generic_copy_file_checks(%struct.file* noundef %file_in, i64 noundef %pos_in, %struct.file* noundef %file_out, i64 noundef %pos_out, i64* noundef nonnull %len.addr) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.then4, !prof !11

if.then4:                                         ; preds = %if.end
  %conv = sext i32 %call to i64
  br label %cleanup84

if.end5:                                          ; preds = %if.end
  %0 = load i64, i64* %len.addr, align 8
  %call6 = call i32 @rw_verify_area(i32 noundef 0, %struct.file* noundef %file_in, i64* noundef nonnull %pos_in.addr, i64 noundef %0) #12
  %tobool8.not = icmp eq i32 %call6, 0
  br i1 %tobool8.not, label %if.end17, label %if.then16, !prof !11

if.then16:                                        ; preds = %if.end5
  %conv7 = sext i32 %call6 to i64
  br label %cleanup84

if.end17:                                         ; preds = %if.end5
  %call18 = call i32 @rw_verify_area(i32 noundef 1, %struct.file* noundef %file_out, i64* noundef nonnull %pos_out.addr, i64 noundef %0) #12
  %tobool20.not = icmp eq i32 %call18, 0
  br i1 %tobool20.not, label %if.end29, label %if.then28, !prof !11

if.then28:                                        ; preds = %if.end17
  %conv19 = sext i32 %call18 to i64
  br label %cleanup84

if.end29:                                         ; preds = %if.end17
  %cmp30 = icmp eq i64 %0, 0
  br i1 %cmp30, label %cleanup84, label %if.end33

if.end33:                                         ; preds = %if.end29
  call fastcc void @file_start_write(%struct.file* noundef %file_out) #12
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file_in, i64 0, i32 3
  %1 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %remap_file_range = getelementptr inbounds %struct.file_operations, %struct.file_operations* %1, i64 0, i32 30
  %2 = load i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)** %remap_file_range, align 8
  %tobool34.not = icmp eq i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* %2, null
  br i1 %tobool34.not, label %if.end50, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end33
  %call35 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file_in) #12
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call35, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call36 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file_out) #12
  %i_sb37 = getelementptr inbounds %struct.inode, %struct.inode* %call36, i64 0, i32 6
  %4 = load %struct.super_block*, %struct.super_block** %i_sb37, align 8
  %cmp38 = icmp eq %struct.super_block* %3, %4
  br i1 %cmp38, label %if.then40, label %if.end50

if.then40:                                        ; preds = %land.lhs.true
  %5 = load i64, i64* %pos_in.addr, align 8
  %6 = load i64, i64* %pos_out.addr, align 8
  %7 = icmp slt i64 %0, 2147479552
  %cond = select i1 %7, i64 %0, i64 2147479552
  %call45 = call i64 %2(%struct.file* noundef %file_in, i64 noundef %5, %struct.file* noundef %file_out, i64 noundef %6, i64 noundef %cond, i32 noundef 2) #13
  %cmp46 = icmp sgt i64 %call45, 0
  br i1 %cmp46, label %if.then78, label %if.end50

if.end50:                                         ; preds = %if.then40, %land.lhs.true, %if.end33
  %8 = load i64, i64* %pos_in.addr, align 8
  %9 = load i64, i64* %pos_out.addr, align 8
  %call51 = call fastcc i64 @do_copy_file_range(%struct.file* noundef %file_in, i64 noundef %8, %struct.file* noundef %file_out, i64 noundef %9, i64 noundef %0) #12
  %cmp52 = icmp eq i64 %call51, -95
  br i1 %cmp52, label %done.thread, label %done, !prof !8

done.thread:                                      ; preds = %if.end50
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/read_write.c\22; .popsection; .long 14472b - 14470b; .short 1514; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !17
  br label %if.end81

done:                                             ; preds = %if.end50
  %cmp76 = icmp sgt i64 %call51, 0
  br i1 %cmp76, label %if.then78, label %if.end81

if.then78:                                        ; preds = %if.then40, %done
  %ret.1126 = phi i64 [ %call51, %done ], [ %call45, %if.then40 ]
  call fastcc void @fsnotify_access(%struct.file* noundef %file_in) #12
  %10 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  call fastcc void @fsnotify_modify(%struct.file* noundef %file_out) #12
  br label %if.end81

if.end81:                                         ; preds = %done.thread, %if.then78, %done
  %ret.1122 = phi i64 [ -95, %done.thread ], [ %ret.1126, %if.then78 ], [ %call51, %done ]
  %11 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  call fastcc void @file_end_write(%struct.file* noundef %file_out) #12
  br label %cleanup84

cleanup84:                                        ; preds = %if.end29, %entry, %if.end81, %if.then28, %if.then16, %if.then4
  %retval.0 = phi i64 [ %conv, %if.then4 ], [ %conv7, %if.then16 ], [ %conv19, %if.then28 ], [ %ret.1122, %if.end81 ], [ -22, %entry ], [ 0, %if.end29 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @generic_copy_file_checks(%struct.file* nocapture noundef readonly %file_in, i64 noundef %pos_in, %struct.file* nocapture noundef readonly %file_out, i64 noundef %pos_out, i64* nocapture noundef %req_count) unnamed_addr #0 {
entry:
  %count = alloca i64, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file_in) #12
  %call1 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file_out) #12
  %0 = bitcast i64* %count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %1 = load i64, i64* %req_count, align 8
  %call2 = call i32 @generic_file_rw_checks(%struct.file* noundef %file_in, %struct.file* noundef %file_out) #12
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 4
  %2 = load i32, i32* %i_flags, align 4
  %and = and i32 %2, 8
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %i_flags6 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 4
  %3 = load i32, i32* %i_flags6, align 4
  %and7 = and i32 %3, 256
  %tobool8.not = icmp eq i32 %and7, 0
  %and10 = and i32 %2, 256
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond = select i1 %tobool8.not, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end5
  %4 = xor i64 %pos_in, -1
  %cmp = icmp ugt i64 %1, %4
  %5 = xor i64 %pos_out, -1
  %cmp16 = icmp ugt i64 %1, %5
  %or.cond1 = or i1 %cmp, %cmp16
  br i1 %or.cond1, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end13
  %call19 = call fastcc i64 @i_size_read(%struct.inode* noundef %call) #12
  %cmp20.not = icmp sgt i64 %call19, %pos_in
  %sub = sub i64 %call19, %pos_in
  %cmp22 = icmp ult i64 %1, %sub
  %cond = select i1 %cmp22, i64 %1, i64 %sub
  %storemerge = select i1 %cmp20.not, i64 %cond, i64 0
  store i64 %storemerge, i64* %count, align 8
  %call24 = call i32 @generic_write_check_limits(%struct.file* noundef %file_out, i64 noundef %pos_out, i64* noundef nonnull %count) #12
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.end18
  %cmp28 = icmp eq %struct.inode* %call, %call1
  %6 = load i64, i64* %count, align 8
  br i1 %cmp28, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.end27
  %add29 = add i64 %6, %pos_out
  %cmp30 = icmp ugt i64 %add29, %pos_in
  %add32 = add i64 %6, %pos_in
  %cmp33 = icmp ugt i64 %add32, %pos_out
  %or.cond2 = and i1 %cmp30, %cmp33
  br i1 %or.cond2, label %cleanup, label %if.end35

if.end35:                                         ; preds = %if.end27, %land.lhs.true
  store i64 %6, i64* %req_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end18, %if.end13, %if.end5, %if.end, %entry, %if.end35
  %retval.0 = phi i32 [ 0, %if.end35 ], [ %call2, %entry ], [ -1, %if.end ], [ -26, %if.end5 ], [ -75, %if.end13 ], [ %call24, %if.end18 ], [ -22, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_copy_file_range(%struct.file* noundef %file_in, i64 noundef %pos_in, %struct.file* noundef %file_out, i64 noundef %pos_out, i64 noundef %len) unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file_out, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %copy_file_range = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 29
  %1 = load i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)** %copy_file_range, align 8
  %tobool.not = icmp eq i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %f_op3 = getelementptr inbounds %struct.file, %struct.file* %file_in, i64 0, i32 3
  %2 = load %struct.file_operations*, %struct.file_operations** %f_op3, align 8
  %copy_file_range4 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %2, i64 0, i32 29
  %3 = load i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)** %copy_file_range4, align 8
  %cmp = icmp eq i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i64 %1(%struct.file* noundef %file_in, i64 noundef %pos_in, %struct.file* noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef 0) #13
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call7 = call i64 @generic_copy_file_range(%struct.file* noundef %file_in, i64 noundef %pos_in, %struct.file* noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 undef) #12
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ %call7, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_copy_file_range(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %arrayidx11 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 5
  %5 = load i64, i64* %arrayidx11, align 8
  %call = call fastcc i64 @__se_sys_copy_file_range(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_copy_file_range(i64 noundef %fd_in, i64 noundef %off_in, i64 noundef %fd_out, i64 noundef %off_out, i64 noundef %len, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd_in to i32
  %0 = inttoptr i64 %off_in to i64*
  %conv1 = trunc i64 %fd_out to i32
  %1 = inttoptr i64 %off_out to i64*
  %conv2 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_copy_file_range(i32 noundef %conv, i64* noundef %0, i32 noundef %conv1, i64* noundef %1, i64 noundef %len, i32 noundef %conv2) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_write_check_limits(%struct.file* nocapture noundef readonly %file, i64 noundef %pos, i64* nocapture noundef %count) local_unnamed_addr #0 {
entry:
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %0 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 4
  %3 = load i64, i64* %s_maxbytes, align 32
  %call = call fastcc i64 @rlimit() #12
  %cmp.not = icmp eq i64 %call, -1
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %cmp1.not = icmp sgt i64 %call, %pos
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %call4 = call i32 @send_sig(i32 noundef 25, %struct.task_struct* noundef %5, i32 noundef 0) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = load i64, i64* %count, align 8
  %sub = sub i64 %call, %pos
  %cmp5 = icmp slt i64 %6, %sub
  %cond = select i1 %cmp5, i64 %6, i64 %sub
  store i64 %cond, i64* %count, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %7 = load i32, i32* %f_flags, align 8
  %and = and i32 %7, 131072
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i64 2147483647, i64 %3
  %cmp9.not = icmp sgt i64 %spec.select, %pos
  br i1 %cmp9.not, label %if.end13, label %cleanup, !prof !11

if.end13:                                         ; preds = %if.end6
  %8 = load i64, i64* %count, align 8
  %sub14 = sub i64 %spec.select, %pos
  %cmp16 = icmp slt i64 %8, %sub14
  %cond21 = select i1 %cmp16, i64 %8, i64 %sub14
  store i64 %cond21, i64* %count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end13, %if.then2
  %retval.0 = phi i32 [ -27, %if.then2 ], [ 0, %if.end13 ], [ -27, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rlimit() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1) #12
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @generic_write_checks(%struct.kiocb* nocapture noundef %iocb, %struct.iov_iter* nocapture noundef %from) local_unnamed_addr #0 {
entry:
  %count = alloca i64, align 8
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 0
  %2 = load %struct.inode*, %struct.inode** %host, align 8
  %3 = bitcast i64* %count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 4
  %4 = load i32, i32* %i_flags, align 4
  %and = and i32 %4, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #12
  %tobool1.not = icmp eq i64 %call, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %5 = load i32, i32* %ki_flags, align 8
  %and4 = and i32 %5, 16
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end3
  %call7 = call fastcc i64 @i_size_read(%struct.inode* noundef %2) #12
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  store i64 %call7, i64* %ki_pos, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3
  %6 = and i32 %5, 131080
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end8
  %call17 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #12
  store i64 %call17, i64* %count, align 8
  %ki_pos18 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %8 = load i64, i64* %ki_pos18, align 8
  %call19 = call i32 @generic_write_check_limits(%struct.file* noundef %0, i64 noundef %8, i64* noundef nonnull %count) #12
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end16
  %conv = sext i32 %call19 to i64
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %9 = load i64, i64* %count, align 8
  call fastcc void @iov_iter_truncate(%struct.iov_iter* noundef %from, i64 noundef %9) #12
  %call23 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %entry, %if.end22, %if.then21
  %retval.0 = phi i64 [ %conv, %if.then21 ], [ %call23, %if.end22 ], [ -26, %entry ], [ 0, %if.end ], [ -22, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @iov_iter_truncate(%struct.iov_iter* nocapture noundef %i, i64 noundef %count) unnamed_addr #2 {
entry:
  %count1 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count1, align 8
  %cmp = icmp ugt i64 %0, %count
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %count, i64* %count1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @generic_file_rw_checks(%struct.file* nocapture noundef readonly %file_in, %struct.file* nocapture noundef readonly %file_out) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file_in) #12
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, 16384
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file_out) #12
  %i_mode3 = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 0
  %2 = load i16, i16* %i_mode3, align 8
  %3 = and i16 %2, -4096
  %cmp6 = icmp eq i16 %3, 16384
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp11 = icmp eq i16 %1, -32768
  %cmp17 = icmp eq i16 %3, -32768
  %or.cond = select i1 %cmp11, i1 %cmp17, i1 false
  br i1 %or.cond, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file_in, i64 0, i32 8
  %4 = load i32, i32* %f_mode, align 4
  %and21 = and i32 %4, 1
  %tobool.not = icmp eq i32 %and21, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end20
  %f_mode23 = getelementptr inbounds %struct.file, %struct.file* %file_out, i64 0, i32 8
  %5 = load i32, i32* %f_mode23, align 4
  %and24 = and i32 %5, 2
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cleanup, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file_out, i64 0, i32 7
  %6 = load i32, i32* %f_flags, align 8
  %and27 = and i32 %6, 1024
  %tobool28.not = icmp eq i32 %and27, 0
  %spec.select = select i1 %tobool28.not, i32 0, i32 -9
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false26, %if.end20, %lor.lhs.false22, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -21, %lor.lhs.false ], [ -21, %entry ], [ -22, %if.end ], [ -9, %lor.lhs.false22 ], [ -9, %if.end20 ], [ %spec.select, %lor.lhs.false26 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #13
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #13
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #14, !srcloc !19
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #14, !srcloc !21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_lseek(i32 noundef %fd, i64 noundef %offset, i32 noundef %whence) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @ksys_lseek(i32 noundef %fd, i64 noundef %offset, i32 noundef %whence) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ksys_lseek(i32 noundef %fd, i64 noundef %offset, i32 noundef %whence) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget_pos(i32 noundef %fd) #12
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp ult i32 %whence, 5
  br i1 %cmp, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %call4 = call i64 @vfs_llseek(%struct.file* noundef nonnull %0, i64 noundef %offset, i32 noundef %whence) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.end
  %retval1.0 = phi i64 [ %call4, %if.then2 ], [ -22, %if.end ]
  call fastcc void @fdput_pos([2 x i64] %call) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i64 [ %retval1.0, %if.end8 ], [ -9, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iocb_flags(%struct.file* nocapture noundef readonly %file) unnamed_addr #3 {
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
define internal fastcc i16 @ki_hint_validate(i32 noundef %hint) unnamed_addr #5 {
entry:
  %0 = icmp ult i32 %hint, 65536
  %retval.05 = select i1 %0, i32 %hint, i32 65536
  %1 = trunc i32 %retval.05 to i16
  ret i16 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @file_write_hint(%struct.file* nocapture noundef readonly %file) unnamed_addr #3 {
entry:
  %f_write_hint = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 5
  %0 = load i32, i32* %f_write_hint, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #12
  %i_write_hint = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 18
  %1 = load i8, i8* %i_write_hint, align 1
  %conv = zext i8 %1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ %0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @get_current_ioprio() unnamed_addr #10 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_file(%struct.file* nocapture noundef readonly %file, i32 noundef %mask) unnamed_addr #8 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 67108864
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call fastcc void @fsnotify_parent(%struct.dentry* noundef %1, i32 noundef %mask) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_parent(%struct.dentry* noundef readonly %dentry, i32 noundef %mask) unnamed_addr #8 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #12
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 41, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #3 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_init(%struct.iov_iter* noundef, i32 noundef, %struct.iovec* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  call fastcc void @__sb_start_write(%struct.super_block* noundef %sb) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #12
  br i1 %call, label %do.body7, label %if.else, !prof !11

do.body7:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call13, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 1) #12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !24
  br label %if.end

if.else:                                          ; preds = %entry
  %call15 = call i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem, i1 noundef false) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body7
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rsp) unnamed_addr #8 {
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
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #14, !srcloc !26
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #10 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #17, !srcloc !27
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !28
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #12
  br i1 %call, label %do.body3, label %if.else, !prof !11

do.body3:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call9, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 4294967295) #12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !30
  br label %if.end

if.else:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !32
  %read_count20 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %3 = load i32*, i32** %read_count20, align 8
  %4 = ptrtoint i32* %3 to i64
  %call22 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add23 = add i64 %call22, %4
  %5 = inttoptr i64 %add23 to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %5, i64 noundef 4294967295) #12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !33
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 2
  %call25 = call i32 @rcuwait_wake_up(%struct.rcuwait* noundef %writer) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body3
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(%struct.rcuwait* noundef) local_unnamed_addr #1

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
declare dso_local i64 @__fdget_pos(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__f_unlock_pos(%struct.file* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_read(i32 noundef %fd, i8* noundef %buf, i64 noundef %count) unnamed_addr #0 {
entry:
  %call = call i64 @ksys_read(i32 noundef %fd, i8* noundef %buf, i64 noundef %count) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_write(i32 noundef %fd, i8* noundef %buf, i64 noundef %count) unnamed_addr #0 {
entry:
  %call = call i64 @ksys_write(i32 noundef %fd, i8* noundef %buf, i64 noundef %count) #12
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_pread64(i32 noundef %fd, i8* noundef %buf, i64 noundef %count, i64 noundef %pos) unnamed_addr #0 {
entry:
  %call = call i64 @ksys_pread64(i32 noundef %fd, i8* noundef %buf, i64 noundef %count, i64 noundef %pos) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_pwrite64(i32 noundef %fd, i8* noundef %buf, i64 noundef %count, i64 noundef %pos) unnamed_addr #0 {
entry:
  %call = call i64 @ksys_pwrite64(i32 noundef %fd, i8* noundef %buf, i64 noundef %count, i64 noundef %pos) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_iter_readv_writev(%struct.file* noundef %filp, %struct.iov_iter* noundef %iter, i64* noundef %ppos, i32 noundef %type, i32 noundef %flags) unnamed_addr #0 {
entry:
  %kiocb = alloca %struct.kiocb, align 8
  %0 = bitcast %struct.kiocb* %kiocb to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !9
  call fastcc void @init_sync_kiocb(%struct.kiocb* noundef nonnull %kiocb, %struct.file* noundef %filp) #12
  %call = call fastcc i32 @kiocb_set_rw_flags(%struct.kiocb* noundef nonnull %kiocb, i32 noundef %flags) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i64* %ppos, null
  br i1 %tobool1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %1 = load i64, i64* %ppos, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 0, %if.end ]
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 1
  store i64 %cond, i64* %ki_pos, align 8
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %cond.end
  %call4 = call fastcc i64 @call_read_iter(%struct.file* noundef %filp, %struct.kiocb* noundef nonnull %kiocb, %struct.iov_iter* noundef %iter) #12
  br label %do.body

if.else:                                          ; preds = %cond.end
  %call5 = call fastcc i64 @call_write_iter(%struct.file* noundef %filp, %struct.kiocb* noundef nonnull %kiocb, %struct.iov_iter* noundef %iter) #12
  br label %do.body

do.body:                                          ; preds = %if.then3, %if.else
  %ret.0 = phi i64 [ %call4, %if.then3 ], [ %call5, %if.else ]
  %cmp7 = icmp eq i64 %ret.0, -529
  br i1 %cmp7, label %do.body13, label %do.end19, !prof !8

do.body13:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/read_write.c\22; .popsection; .long 14472b - 14470b; .short 730; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !35
  unreachable

do.end19:                                         ; preds = %do.body
  br i1 %tobool1.not, label %cleanup, label %if.then21

if.then21:                                        ; preds = %do.end19
  %2 = load i64, i64* %ki_pos, align 8
  store i64 %2, i64* %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.then21, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %ret.0, %if.then21 ], [ %ret.0, %do.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_loop_readv_writev(%struct.file* noundef %filp, %struct.iov_iter* noundef %iter, i64* noundef %ppos, i32 noundef %type, i32 noundef %flags) unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %while.cond.preheader, label %cleanup21

while.cond.preheader:                             ; preds = %entry
  %call48 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #12
  %tobool1.not49 = icmp eq i64 %call48, 0
  br i1 %tobool1.not49, label %cleanup21, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cmp = icmp eq i32 %type, 0
  %f_op5 = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %ret.050 = phi i64 [ 0, %while.body.lr.ph ], [ %add, %cleanup ]
  %call2 = call fastcc [2 x i64] @iov_iter_iovec(%struct.iov_iter* noundef %iter) #12
  %call2.fca.0.extract = extractvalue [2 x i64] %call2, 0
  %0 = inttoptr i64 %call2.fca.0.extract to i8*
  %call2.fca.1.extract = extractvalue [2 x i64] %call2, 1
  %1 = load %struct.file_operations*, %struct.file_operations** %f_op5, align 8
  %write = getelementptr inbounds %struct.file_operations, %struct.file_operations* %1, i64 0, i32 3
  %read = getelementptr inbounds %struct.file_operations, %struct.file_operations* %1, i64 0, i32 2
  %write.sink = select i1 %cmp, i64 (%struct.file*, i8*, i64, i64*)** %read, i64 (%struct.file*, i8*, i64, i64*)** %write
  %2 = load i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)** %write.sink, align 8
  %call8 = call i64 %2(%struct.file* noundef %filp, i8* noundef %0, i64 noundef %call2.fca.1.extract, i64* noundef %ppos) #13
  %cmp10 = icmp slt i64 %call8, 0
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %while.body
  %tobool12.not = icmp eq i64 %ret.050, 0
  %spec.select = select i1 %tobool12.not, i64 %call8, i64 %ret.050
  br label %cleanup21

if.end15:                                         ; preds = %while.body
  %add = add i64 %call8, %ret.050
  %cmp17.not = icmp eq i64 %call8, %call2.fca.1.extract
  br i1 %cmp17.not, label %cleanup, label %cleanup21

cleanup:                                          ; preds = %if.end15
  call void @iov_iter_advance(%struct.iov_iter* noundef %iter, i64 noundef %call2.fca.1.extract) #13
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #12
  %tobool1.not = icmp eq i64 %call, 0
  br i1 %tobool1.not, label %cleanup21, label %while.body

cleanup21:                                        ; preds = %cleanup, %if.end15, %while.cond.preheader, %if.then11, %entry
  %retval.0 = phi i64 [ -95, %entry ], [ %spec.select, %if.then11 ], [ 0, %while.cond.preheader ], [ %add, %if.end15 ], [ %add, %cleanup ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @kiocb_set_rw_flags(%struct.kiocb* nocapture noundef %ki, i32 noundef %flags) unnamed_addr #2 {
entry:
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp ult i32 %flags, 32
  br i1 %tobool1.not, label %if.end5, label %cleanup, !prof !11

if.end5:                                          ; preds = %if.end
  %and6 = and i32 %flags, 8
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end5
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %ki, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and9 = and i32 %1, 134217728
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end5
  %kiocb_flags.0 = phi i32 [ 0, %if.end5 ], [ 1048576, %if.then8 ]
  %and16 = lshr i32 %flags, 1
  %2 = and i32 %and16, 2
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %ki, i64 0, i32 4
  %3 = load i32, i32* %ki_flags, align 8
  %or15 = or i32 %2, %flags
  %4 = or i32 %or15, %kiocb_flags.0
  %or21 = or i32 %4, %3
  store i32 %or21, i32* %ki_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %entry, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %entry ], [ -95, %if.end ], [ -95, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc [2 x i64] @iov_iter_iovec(%struct.iov_iter* nocapture noundef readonly %iter) unnamed_addr #3 {
entry:
  %iov = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 4, i32 0
  %0 = load %struct.iovec*, %struct.iovec** %iov, align 8
  %iov_base1 = getelementptr inbounds %struct.iovec, %struct.iovec* %0, i64 0, i32 0
  %1 = load i8*, i8** %iov_base1, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 2
  %2 = load i64, i64* %iov_offset, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 %2
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 3
  %3 = load i64, i64* %count, align 8
  %iov_len3 = getelementptr inbounds %struct.iovec, %struct.iovec* %0, i64 0, i32 1
  %4 = load i64, i64* %iov_len3, align 8
  %sub = sub i64 %4, %2
  %cmp = icmp ult i64 %3, %sub
  %cond = select i1 %cmp, i64 %3, i64 %sub
  %5 = ptrtoint i8* %add.ptr to i64
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %5, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %cond, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(%struct.iov_iter* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_readv(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @do_readv(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i32 noundef 0) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_readv(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i32 noundef %flags) unnamed_addr #0 {
entry:
  %pos = alloca i64, align 8
  %conv = trunc i64 %fd to i32
  %call = call fastcc [2 x i64] @fdget_pos(i32 noundef %conv) #12
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i64 0, i64* %pos, align 8, !annotation !9
  %call2 = call fastcc i64* @file_ppos(%struct.file* noundef nonnull %0) #12
  %tobool3.not = icmp eq i64* %call2, null
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %2 = load i64, i64* %call2, align 8
  store i64 %2, i64* %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %ppos.0 = phi i64* [ %pos, %if.then4 ], [ null, %if.then ]
  %call6 = call fastcc i64 @vfs_readv(%struct.file* noundef nonnull %0, %struct.iovec* noundef %vec, i64 noundef %vlen, i64* noundef %ppos.0, i32 noundef %flags) #12
  %cmp = icmp sgt i64 %call6, -1
  %tobool8 = icmp ne i64* %ppos.0, null
  %or.cond = and i1 %tobool8, %cmp
  br i1 %or.cond, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %3 = load i64, i64* %pos, align 8
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 10
  store i64 %3, i64* %f_pos, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then9
  call fastcc void @fdput_pos([2 x i64] %call) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  %cmp13 = icmp sgt i64 %call6, 0
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  br label %if.end17

if.end17:                                         ; preds = %entry, %if.then15, %if.end12
  %ret.037 = phi i64 [ %call6, %if.then15 ], [ %call6, %if.end12 ], [ -9, %entry ]
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  ret i64 %ret.037
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @vfs_readv(%struct.file* noundef %file, %struct.iovec* noundef %vec, i64 noundef %vlen, i64* noundef %pos, i32 noundef %flags) unnamed_addr #0 {
entry:
  %iovstack = alloca [8 x %struct.iovec], align 8
  %iov = alloca %struct.iovec*, align 8
  %iter = alloca %struct.iov_iter, align 8
  %0 = bitcast [8 x %struct.iovec]* %iovstack to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !9
  %1 = bitcast %struct.iovec** %iov to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %arraydecay = getelementptr inbounds [8 x %struct.iovec], [8 x %struct.iovec]* %iovstack, i64 0, i64 0
  store %struct.iovec* %arraydecay, %struct.iovec** %iov, align 8
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !9
  %conv = trunc i64 %vlen to i32
  %call = call i64 @import_iovec(i32 noundef 0, %struct.iovec* noundef %vec, i32 noundef %conv, i32 noundef 8, %struct.iovec** noundef nonnull %iov, %struct.iov_iter* noundef nonnull %iter) #13
  %cmp = icmp sgt i64 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @do_iter_read(%struct.file* noundef %file, %struct.iov_iter* noundef nonnull %iter, i64* noundef %pos, i32 noundef %flags) #12
  %3 = bitcast %struct.iovec** %iov to i8**
  %4 = load i8*, i8** %3, align 8
  call void @kfree(i8* noundef %4) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %call2, %if.then ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #14
  ret i64 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @import_iovec(i32 noundef, %struct.iovec* noundef, i32 noundef, i32 noundef, %struct.iovec** noundef, %struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_writev(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @do_writev(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i32 noundef 0) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_writev(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i32 noundef %flags) unnamed_addr #0 {
entry:
  %pos = alloca i64, align 8
  %conv = trunc i64 %fd to i32
  %call = call fastcc [2 x i64] @fdget_pos(i32 noundef %conv) #12
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i64 0, i64* %pos, align 8, !annotation !9
  %call2 = call fastcc i64* @file_ppos(%struct.file* noundef nonnull %0) #12
  %tobool3.not = icmp eq i64* %call2, null
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %2 = load i64, i64* %call2, align 8
  store i64 %2, i64* %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %ppos.0 = phi i64* [ %pos, %if.then4 ], [ null, %if.then ]
  %call6 = call fastcc i64 @vfs_writev(%struct.file* noundef nonnull %0, %struct.iovec* noundef %vec, i64 noundef %vlen, i64* noundef %ppos.0, i32 noundef %flags) #12
  %cmp = icmp sgt i64 %call6, -1
  %tobool8 = icmp ne i64* %ppos.0, null
  %or.cond = and i1 %tobool8, %cmp
  br i1 %or.cond, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %3 = load i64, i64* %pos, align 8
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 10
  store i64 %3, i64* %f_pos, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then9
  call fastcc void @fdput_pos([2 x i64] %call) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  %cmp13 = icmp sgt i64 %call6, 0
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  br label %if.end17

if.end17:                                         ; preds = %entry, %if.then15, %if.end12
  %ret.037 = phi i64 [ %call6, %if.then15 ], [ %call6, %if.end12 ], [ -9, %entry ]
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  ret i64 %ret.037
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @vfs_writev(%struct.file* noundef %file, %struct.iovec* noundef %vec, i64 noundef %vlen, i64* noundef %pos, i32 noundef %flags) unnamed_addr #0 {
entry:
  %iovstack = alloca [8 x %struct.iovec], align 8
  %iov = alloca %struct.iovec*, align 8
  %iter = alloca %struct.iov_iter, align 8
  %0 = bitcast [8 x %struct.iovec]* %iovstack to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !9
  %1 = bitcast %struct.iovec** %iov to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %arraydecay = getelementptr inbounds [8 x %struct.iovec], [8 x %struct.iovec]* %iovstack, i64 0, i64 0
  store %struct.iovec* %arraydecay, %struct.iovec** %iov, align 8
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !9
  %conv = trunc i64 %vlen to i32
  %call = call i64 @import_iovec(i32 noundef 1, %struct.iovec* noundef %vec, i32 noundef %conv, i32 noundef 8, %struct.iovec** noundef nonnull %iov, %struct.iov_iter* noundef nonnull %iter) #13
  %cmp = icmp sgt i64 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @file_start_write(%struct.file* noundef %file) #12
  %call2 = call fastcc i64 @do_iter_write(%struct.file* noundef %file, %struct.iov_iter* noundef nonnull %iter, i64* noundef %pos, i32 noundef %flags) #12
  call fastcc void @file_end_write(%struct.file* noundef %file) #12
  %3 = bitcast %struct.iovec** %iov to i8**
  %4 = load i8*, i8** %3, align 8
  call void @kfree(i8* noundef %4) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %call2, %if.then ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #14
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_preadv(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i64 noundef %pos_l, i64 noundef %pos_h) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @do_preadv(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i64 noundef %pos_l, i32 noundef 0) #12
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_preadv(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i64 noundef %pos, i32 noundef %flags) unnamed_addr #0 {
entry:
  %pos.addr = alloca i64, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %cmp = icmp slt i64 %pos, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = trunc i64 %fd to i32
  %call = call fastcc [2 x i64] @fdget(i32 noundef %conv) #12
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %if.end13, label %if.then1

if.then1:                                         ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and = and i32 %1, 8
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end8.thread32, label %if.end8

if.end8.thread32:                                 ; preds = %if.then1
  call fastcc void @fdput([2 x i64] %call) #12
  br label %if.end13

if.end8:                                          ; preds = %if.then1
  %call6 = call fastcc i64 @vfs_readv(%struct.file* noundef nonnull %0, %struct.iovec* noundef %vec, i64 noundef %vlen, i64* noundef nonnull %pos.addr, i32 noundef %flags) #12
  call fastcc void @fdput([2 x i64] %call) #12
  %cmp9 = icmp sgt i64 %call6, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.end8.thread32, %if.then11, %if.end8
  %ret.131 = phi i64 [ %call6, %if.then11 ], [ %call6, %if.end8 ], [ -29, %if.end8.thread32 ], [ -9, %if.end ]
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end13
  %retval.0 = phi i64 [ %ret.131, %if.end13 ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_preadv2(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i64 noundef %pos_l, i64 noundef %pos_h, i32 noundef %flags) unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %pos_l, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @do_readv(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i32 noundef %flags) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i64 @do_preadv(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i64 noundef %pos_l, i32 noundef %flags) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_pwritev(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i64 noundef %pos_l, i64 noundef %pos_h) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @do_pwritev(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i64 noundef %pos_l, i32 noundef 0) #12
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_pwritev(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i64 noundef %pos, i32 noundef %flags) unnamed_addr #0 {
entry:
  %pos.addr = alloca i64, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %cmp = icmp slt i64 %pos, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = trunc i64 %fd to i32
  %call = call fastcc [2 x i64] @fdget(i32 noundef %conv) #12
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %if.end13, label %if.then1

if.then1:                                         ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and = and i32 %1, 16
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end8.thread32, label %if.end8

if.end8.thread32:                                 ; preds = %if.then1
  call fastcc void @fdput([2 x i64] %call) #12
  br label %if.end13

if.end8:                                          ; preds = %if.then1
  %call6 = call fastcc i64 @vfs_writev(%struct.file* noundef nonnull %0, %struct.iovec* noundef %vec, i64 noundef %vlen, i64* noundef nonnull %pos.addr, i32 noundef %flags) #12
  call fastcc void @fdput([2 x i64] %call) #12
  %cmp9 = icmp sgt i64 %call6, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.end8.thread32, %if.then11, %if.end8
  %ret.131 = phi i64 [ %call6, %if.then11 ], [ %call6, %if.end8 ], [ -29, %if.end8.thread32 ], [ -9, %if.end ]
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end13
  %retval.0 = phi i64 [ %ret.131, %if.end13 ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_pwritev2(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i64 noundef %pos_l, i64 noundef %pos_h, i32 noundef %flags) unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %pos_l, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @do_writev(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i32 noundef %flags) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i64 @do_pwritev(i64 noundef %fd, %struct.iovec* noundef %vec, i64 noundef %vlen, i64 noundef %pos_l, i32 noundef %flags) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sendfile(i32 noundef %out_fd, i32 noundef %in_fd, i64* noundef %offset, i64 noundef %count) unnamed_addr #0 {
entry:
  %pos = alloca i64, align 8
  %0 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %tobool.not = icmp eq i64* %offset, null
  br i1 %tobool.not, label %if.end48, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i64* %offset to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef nonnull %1, i64 noundef 8) #12
  %tobool1.not = icmp eq i64 %call, 0
  br i1 %tobool1.not, label %cleanup, label %if.end, !prof !36

if.end:                                           ; preds = %if.then
  %call3 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %1) #12
  %2 = bitcast i8* %call3 to i64*
  %3 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %2, i32 -14, i32 0) #14, !srcloc !37
  %asmresult = extractvalue { i32, i64 } %3, 0
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end17, label %cleanup, !prof !11

if.end17:                                         ; preds = %if.end
  %asmresult7 = extractvalue { i32, i64 } %3, 1
  store i64 %asmresult7, i64* %pos, align 8
  %call18 = call fastcc i64 @do_sendfile(i32 noundef %out_fd, i32 noundef %in_fd, i64* noundef nonnull %pos, i64 noundef %count, i64 noundef 2147483647) #12
  %call21 = call fastcc i64 @__range_ok(i8* noundef nonnull %1, i64 noundef 8) #12
  %tobool22.not = icmp eq i64 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.end17
  %call24 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %1) #12
  %4 = bitcast i8* %call24 to i64*
  %5 = load i64, i64* %pos, align 8
  %6 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %5, i64* %4, i32 -14, i32 0) #14, !srcloc !38
  %phi.cmp71 = icmp eq i32 %6, 0
  %spec.select = select i1 %phi.cmp71, i64 %call18, i64 -14
  br label %cleanup

if.end48:                                         ; preds = %entry
  %call49 = call fastcc i64 @do_sendfile(i32 noundef %out_fd, i32 noundef %in_fd, i64* noundef null, i64 noundef %count, i64 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end17, %if.then, %if.end, %if.end48
  %retval.0 = phi i64 [ %call49, %if.end48 ], [ -14, %if.end ], [ -14, %if.then ], [ -14, %if.end17 ], [ %spec.select, %if.end34 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #14, !srcloc !39
  call void asm sideeffect "hint #20", "~{memory}"() #14, !srcloc !40
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_sendfile(i32 noundef %out_fd, i32 noundef %in_fd, i64* noundef %ppos, i64 noundef %count, i64 noundef %max) unnamed_addr #0 {
entry:
  %pos = alloca i64, align 8
  %out_pos = alloca i64, align 8
  %0 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %pos, align 8, !annotation !9
  %1 = bitcast i64* %out_pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i64 0, i64* %out_pos, align 8, !annotation !9
  %call = call fastcc [2 x i64] @fdget(i32 noundef %in_fd) #12
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %2 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %out104, label %if.end

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %2, i64 0, i32 8
  %3 = load i32, i32* %f_mode, align 4
  %and = and i32 %3, 1
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %fput_in, label %if.end5

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq i64* %ppos, null
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %2, i64 0, i32 10
  %4 = load i64, i64* %f_pos, align 8
  store i64 %4, i64* %pos, align 8
  br label %if.end15

if.else:                                          ; preds = %if.end5
  %5 = load i64, i64* %ppos, align 8
  store i64 %5, i64* %pos, align 8
  %and11 = and i32 %3, 8
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %fput_in, label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7
  %call17 = call i32 @rw_verify_area(i32 noundef 0, %struct.file* noundef nonnull %2, i64* noundef nonnull %pos, i64 noundef %count) #12
  %conv = sext i32 %call17 to i64
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %fput_in, label %if.end20

if.end20:                                         ; preds = %if.end15
  %6 = icmp ult i64 %count, 2147479552
  %spec.store.select = select i1 %6, i64 %count, i64 2147479552
  %call26 = call fastcc [2 x i64] @fdget(i32 noundef %out_fd) #12
  %call26.fca.0.extract = extractvalue [2 x i64] %call26, 0
  %7 = inttoptr i64 %call26.fca.0.extract to %struct.file*
  %tobool28.not = icmp eq i64 %call26.fca.0.extract, 0
  br i1 %tobool28.not, label %fput_in, label %if.end30

if.end30:                                         ; preds = %if.end20
  %f_mode32 = getelementptr inbounds %struct.file, %struct.file* %7, i64 0, i32 8
  %8 = load i32, i32* %f_mode32, align 4
  %and33 = and i32 %8, 2
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %fput_out, label %if.end36

if.end36:                                         ; preds = %if.end30
  %call38 = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %2) #12
  %call40 = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %7) #12
  %f_pos42 = getelementptr inbounds %struct.file, %struct.file* %7, i64 0, i32 10
  %9 = load i64, i64* %f_pos42, align 8
  store i64 %9, i64* %out_pos, align 8
  %tobool43.not = icmp eq i64 %max, 0
  br i1 %tobool43.not, label %if.then44, label %if.end50

if.then44:                                        ; preds = %if.end36
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call38, i64 0, i32 6
  %10 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i64 0, i32 4
  %11 = load i64, i64* %s_maxbytes, align 32
  %i_sb45 = getelementptr inbounds %struct.inode, %struct.inode* %call40, i64 0, i32 6
  %12 = load %struct.super_block*, %struct.super_block** %i_sb45, align 8
  %s_maxbytes46 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i64 0, i32 4
  %13 = load i64, i64* %s_maxbytes46, align 32
  %cmp48 = icmp slt i64 %11, %13
  %cond = select i1 %cmp48, i64 %11, i64 %13
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %if.end36
  %max.addr.0 = phi i64 [ %max, %if.end36 ], [ %cond, %if.then44 ]
  %14 = load i64, i64* %pos, align 8
  %add = add i64 %14, %spec.store.select
  %cmp51 = icmp ugt i64 %add, %max.addr.0
  br i1 %cmp51, label %if.then56, label %if.end61, !prof !8

if.then56:                                        ; preds = %if.end50
  %cmp57.not = icmp sgt i64 %max.addr.0, %14
  br i1 %cmp57.not, label %if.end60, label %fput_out

if.end60:                                         ; preds = %if.then56
  %sub = sub i64 %max.addr.0, %14
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end50
  %count.addr.0 = phi i64 [ %sub, %if.end60 ], [ %spec.store.select, %if.end50 ]
  %call63 = call %struct.pipe_inode_info* @get_pipe_info(%struct.file* noundef nonnull %7, i1 noundef true) #13
  %tobool64.not = icmp eq %struct.pipe_inode_info* %call63, null
  br i1 %tobool64.not, label %if.then65, label %if.else78

if.then65:                                        ; preds = %if.end61
  %call67 = call i32 @rw_verify_area(i32 noundef 1, %struct.file* noundef nonnull %7, i64* noundef nonnull %out_pos, i64 noundef %count.addr.0) #12
  %conv68 = sext i32 %call67 to i64
  %cmp69 = icmp slt i32 %call67, 0
  br i1 %cmp69, label %fput_out, label %if.end72

if.end72:                                         ; preds = %if.then65
  call fastcc void @file_start_write(%struct.file* noundef nonnull %7) #12
  %call76 = call i64 @do_splice_direct(%struct.file* noundef nonnull %2, i64* noundef nonnull %pos, %struct.file* noundef nonnull %7, i64* noundef nonnull %out_pos, i64 noundef %count.addr.0, i32 noundef 0) #13
  call fastcc void @file_end_write(%struct.file* noundef nonnull %7) #12
  br label %if.end81

if.else78:                                        ; preds = %if.end61
  %call80 = call i64 @splice_file_to_pipe(%struct.file* noundef nonnull %2, %struct.pipe_inode_info* noundef nonnull %call63, i64* noundef nonnull %pos, i64 noundef %count.addr.0, i32 noundef 0) #13
  br label %if.end81

if.end81:                                         ; preds = %if.else78, %if.end72
  %retval1.0 = phi i64 [ %call80, %if.else78 ], [ %call76, %if.end72 ]
  %cmp82 = icmp sgt i64 %retval1.0, 0
  br i1 %cmp82, label %if.then84, label %if.end81.if.end97_crit_edge

if.end81.if.end97_crit_edge:                      ; preds = %if.end81
  %.pre = load i64, i64* %pos, align 8
  br label %if.end97

if.then84:                                        ; preds = %if.end81
  %15 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  call fastcc void @fsnotify_access(%struct.file* noundef nonnull %2) #12
  call fastcc void @fsnotify_modify(%struct.file* noundef nonnull %7) #12
  %16 = load i64, i64* %out_pos, align 8
  store i64 %16, i64* %f_pos42, align 8
  %17 = load i64, i64* %pos, align 8
  br i1 %tobool6.not, label %if.else93, label %if.then92

if.then92:                                        ; preds = %if.then84
  store i64 %17, i64* %ppos, align 8
  br label %if.end97

if.else93:                                        ; preds = %if.then84
  %f_pos95 = getelementptr inbounds %struct.file, %struct.file* %2, i64 0, i32 10
  store i64 %17, i64* %f_pos95, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.end81.if.end97_crit_edge, %if.then92, %if.else93
  %18 = phi i64 [ %.pre, %if.end81.if.end97_crit_edge ], [ %17, %if.then92 ], [ %17, %if.else93 ]
  %19 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !12
  %cmp100 = icmp sgt i64 %18, %max.addr.0
  %spec.select = select i1 %cmp100, i64 -75, i64 %retval1.0
  br label %fput_out

fput_out:                                         ; preds = %if.end97, %if.then65, %if.then56, %if.end30
  %retval1.1 = phi i64 [ -75, %if.then56 ], [ %conv68, %if.then65 ], [ -9, %if.end30 ], [ %spec.select, %if.end97 ]
  call fastcc void @fdput([2 x i64] %call26) #12
  br label %fput_in

fput_in:                                          ; preds = %if.end20, %if.end15, %if.else, %if.end, %fput_out
  %retval1.2 = phi i64 [ %conv, %if.end15 ], [ %retval1.1, %fput_out ], [ -9, %if.end20 ], [ -29, %if.else ], [ -9, %if.end ]
  call fastcc void @fdput([2 x i64] %call) #12
  br label %out104

out104:                                           ; preds = %entry, %fput_in
  %retval1.3 = phi i64 [ %retval1.2, %fput_in ], [ -9, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i64 %retval1.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pipe_inode_info* @get_pipe_info(%struct.file* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @splice_file_to_pipe(%struct.file* noundef, %struct.pipe_inode_info* noundef, i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sendfile64(i32 noundef %out_fd, i32 noundef %in_fd, i64* noundef %offset, i64 noundef %count) unnamed_addr #0 {
entry:
  %pos = alloca i64, align 8
  %0 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %pos, align 8, !annotation !9
  %tobool.not = icmp eq i64* %offset, null
  br i1 %tobool.not, label %if.end29, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i64* %offset to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef nonnull %1) #13
  %tobool1.not = icmp eq i64 %call2.i, 0
  br i1 %tobool1.not, label %if.end, label %cleanup, !prof !11

if.end:                                           ; preds = %if.then
  %call5 = call fastcc i64 @do_sendfile(i32 noundef %out_fd, i32 noundef %in_fd, i64* noundef nonnull %pos, i64 noundef %count, i64 noundef 0) #12
  %call6 = call fastcc i64 @__range_ok(i8* noundef nonnull %1, i64 noundef 8) #12
  %tobool7.not = icmp eq i64 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %call9 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %1) #12
  %2 = bitcast i8* %call9 to i64*
  %3 = load i64, i64* %pos, align 8
  %4 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %3, i64* %2, i32 -14, i32 0) #14, !srcloc !41
  %phi.cmp = icmp eq i32 %4, 0
  %spec.select = select i1 %phi.cmp, i64 %call5, i64 -14
  br label %cleanup

if.end29:                                         ; preds = %entry
  %call30 = call fastcc i64 @do_sendfile(i32 noundef %out_fd, i32 noundef %in_fd, i64* noundef null, i64 noundef %count, i64 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %if.then, %if.end29
  %retval.0 = phi i64 [ %call30, %if.end29 ], [ -14, %if.then ], [ -14, %if.end ], [ %spec.select, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef 8) #12
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.then16, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #12
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef 8) #13
  %tobool8.not = icmp eq i64 %call6, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !11

if.then16:                                        ; preds = %entry, %if.end
  %res.03 = phi i64 [ %call6, %if.end ], [ 8, %entry ]
  %sub = sub i64 8, %res.03
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.03) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  %res.04 = phi i64 [ %res.03, %if.then16 ], [ 0, %if.end ]
  ret i64 %res.04
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_copy_file_range(i32 noundef %fd_in, i64* noundef %off_in, i32 noundef %fd_out, i64* noundef %off_out, i64 noundef %len, i32 noundef %flags) unnamed_addr #0 {
entry:
  %pos_in = alloca i64, align 8
  %pos_out = alloca i64, align 8
  %0 = bitcast i64* %pos_in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %pos_in, align 8, !annotation !9
  %1 = bitcast i64* %pos_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i64 0, i64* %pos_out, align 8, !annotation !9
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd_in) #12
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %2 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %out2, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc [2 x i64] @fdget(i32 noundef %fd_out) #12
  %call2.fca.0.extract = extractvalue [2 x i64] %call2, 0
  %3 = inttoptr i64 %call2.fca.0.extract to %struct.file*
  %tobool4.not = icmp eq i64 %call2.fca.0.extract, 0
  br i1 %tobool4.not, label %out1, label %if.end6

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq i64* %off_in, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %4 = bitcast i64* %off_in to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef nonnull %4) #13
  %tobool10.not = icmp eq i64 %call2.i, 0
  br i1 %tobool10.not, label %if.end14, label %out

if.else:                                          ; preds = %if.end6
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %2, i64 0, i32 10
  %5 = load i64, i64* %f_pos, align 8
  store i64 %5, i64* %pos_in, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.else
  %tobool15.not = icmp eq i64* %off_out, null
  br i1 %tobool15.not, label %if.else21, label %if.then16

if.then16:                                        ; preds = %if.end14
  %6 = bitcast i64* %off_out to i8*
  %call2.i87 = call fastcc i64 @_copy_from_user(i8* noundef nonnull %1, i8* noundef nonnull %6) #13
  %tobool18.not = icmp eq i64 %call2.i87, 0
  br i1 %tobool18.not, label %if.then16.if.end24_crit_edge, label %out

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  %.pre = load i64, i64* %pos_out, align 8
  br label %if.end24

if.else21:                                        ; preds = %if.end14
  %f_pos23 = getelementptr inbounds %struct.file, %struct.file* %3, i64 0, i32 10
  %7 = load i64, i64* %f_pos23, align 8
  store i64 %7, i64* %pos_out, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then16.if.end24_crit_edge, %if.else21
  %8 = phi i64 [ %.pre, %if.then16.if.end24_crit_edge ], [ %7, %if.else21 ]
  %9 = load i64, i64* %pos_in, align 8
  %call27 = call i64 @vfs_copy_file_range(%struct.file* noundef nonnull %2, i64 noundef %9, %struct.file* noundef nonnull %3, i64 noundef %8, i64 noundef %len, i32 noundef %flags) #12
  %cmp = icmp sgt i64 %call27, 0
  br i1 %cmp, label %if.then28, label %out

if.then28:                                        ; preds = %if.end24
  %10 = load i64, i64* %pos_in, align 8
  %add = add i64 %10, %call27
  store i64 %add, i64* %pos_in, align 8
  %11 = load i64, i64* %pos_out, align 8
  %add29 = add i64 %11, %call27
  store i64 %add29, i64* %pos_out, align 8
  br i1 %tobool7.not, label %if.else36, label %if.then31

if.then31:                                        ; preds = %if.then28
  %12 = bitcast i64* %off_in to i8*
  %call2.i88 = call fastcc i64 @_copy_to_user(i8* noundef nonnull %12, i8* noundef nonnull %0) #13
  %tobool33.not = icmp eq i64 %call2.i88, 0
  %spec.select = select i1 %tobool33.not, i64 %call27, i64 -14
  br label %if.end39

if.else36:                                        ; preds = %if.then28
  %f_pos38 = getelementptr inbounds %struct.file, %struct.file* %2, i64 0, i32 10
  store i64 %add, i64* %f_pos38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %if.else36
  %ret.0 = phi i64 [ %call27, %if.else36 ], [ %spec.select, %if.then31 ]
  br i1 %tobool15.not, label %if.else46, label %if.then41

if.then41:                                        ; preds = %if.end39
  %13 = bitcast i64* %off_out to i8*
  %call2.i89 = call fastcc i64 @_copy_to_user(i8* noundef nonnull %13, i8* noundef nonnull %1) #13
  %tobool43.not = icmp eq i64 %call2.i89, 0
  %spec.select86 = select i1 %tobool43.not, i64 %ret.0, i64 -14
  br label %out

if.else46:                                        ; preds = %if.end39
  %14 = load i64, i64* %pos_out, align 8
  %f_pos48 = getelementptr inbounds %struct.file, %struct.file* %3, i64 0, i32 10
  store i64 %14, i64* %f_pos48, align 8
  br label %out

out:                                              ; preds = %if.then41, %if.end24, %if.else46, %if.then16, %if.then8
  %ret.1 = phi i64 [ -14, %if.then8 ], [ -14, %if.then16 ], [ %ret.0, %if.else46 ], [ %call27, %if.end24 ], [ %spec.select86, %if.then41 ]
  call fastcc void @fdput([2 x i64] %call2) #12
  br label %out1

out1:                                             ; preds = %if.end, %out
  %ret.2 = phi i64 [ %ret.1, %out ], [ -9, %if.end ]
  call fastcc void @fdput([2 x i64] %call) #12
  br label %out2

out2:                                             ; preds = %entry, %out1
  %ret.3 = phi i64 [ %ret.2, %out1 ], [ -9, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i64 %ret.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef 8) #12
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #12
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef 8) #13
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ 8, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #8 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 1, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree nounwind readonly }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 2155212991}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 1306221}
!13 = !{i64 4133596, i64 4133679, i64 4133903, i64 4134123, i64 4134146}
!14 = !{i64 2155207245}
!15 = !{i64 2155219128}
!16 = !{i64 2155215017}
!17 = !{i64 2155416021}
!18 = !{i64 2149492647}
!19 = !{i64 2148020759, i64 2148020792, i64 2148020845, i64 2148020904, i64 2148020938, i64 2148020993, i64 2148021022, i64 2148021042}
!20 = !{i64 2149499928}
!21 = !{i64 2149292158}
!22 = !{i64 2151851101}
!23 = !{i64 2151854524}
!24 = !{i64 2151855366}
!25 = !{i64 2151856552}
!26 = !{i64 2149090682, i64 2149090724, i64 2149090783, i64 2149090836}
!27 = !{i64 2149065792, i64 2149065839, i64 2149065845, i64 2149065882, i64 2149065900, i64 2149066827, i64 2149066875, i64 2149066923, i64 2149066986, i64 2149067035, i64 2149065978, i64 2149066003, i64 2149066029, i64 2149066035, i64 2149066072, i64 2149066078, i64 2149066128, i64 2149066174, i64 2149066207}
!28 = !{i64 2151869461}
!29 = !{i64 2151873322}
!30 = !{i64 2151874164}
!31 = !{i64 2151875418}
!32 = !{i64 2151879241}
!33 = !{i64 2151880083}
!34 = !{i64 2151881335}
!35 = !{i64 2155268510}
!36 = !{!"branch_weights", i32 1073205, i32 2146410443}
!37 = !{i64 2155384418, i64 2155384458, i64 2155384475, i64 2155384510, i64 2155384532, i64 2155384558, i64 2155384581, i64 2155384599, i64 2155384614, i64 2155384655, i64 2155384677, i64 2155384723}
!38 = !{i64 2155391042, i64 2155391082, i64 2155391099, i64 2155391133, i64 2155391155, i64 2155391181, i64 2155391199, i64 2155391214, i64 2155391255, i64 2155391277, i64 2155391323}
!39 = !{i64 4138298, i64 4138322}
!40 = !{i64 2151691082}
!41 = !{i64 2155409262, i64 2155409302, i64 2155409319, i64 2155409353, i64 2155409375, i64 2155409401, i64 2155409419, i64 2155409434, i64 2155409475, i64 2155409497, i64 2155409543}
