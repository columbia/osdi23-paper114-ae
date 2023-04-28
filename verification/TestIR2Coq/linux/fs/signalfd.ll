; ModuleID = 'fs/signalfd.c'
source_filename = "fs/signalfd.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.11, i32 }
%union.anon.11 = type { %struct.kuid_t }
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
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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
%struct.thread_info = type { i64, %union.anon.12 }
%union.anon.12 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.14 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.17, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.18, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.17 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.18 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.19, %union.anon.38, %struct.atomic_t, [8 x i8] }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.pipe_inode_info = type opaque
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
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8, [48 x i8] }
%struct.anon.8 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.9, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.68, %struct.list_head, %struct.list_head, %union.anon.69 }
%struct.lockref = type { %union.anon.66 }
%union.anon.66 = type { i64 }
%union.anon.68 = type { %struct.list_head }
%union.anon.69 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i8* }
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
%struct.swap_info_struct = type opaque
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.70, %struct.qspinlock }
%union.anon.70 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.44 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.44 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.21 }
%union.anon.21 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.22, %union.anon.23 }
%union.anon.22 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.23 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.72 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.72 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pt_regs = type { %union.anon.2, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.2 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.signalfd_ctx = type { %struct.sigset_t }
%struct.signalfd_siginfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i16, i32, i64, i32, [28 x i8] }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.anon.58 = type { i8*, i32, i32 }

@.str.1 = private unnamed_addr constant [11 x i8] c"[signalfd]\00", align 1
@signalfd_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @noop_llseek, i64 (%struct.file*, i8*, i64, i64*)* @signalfd_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @signalfd_poll, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @signalfd_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* @signalfd_show_fdinfo, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"sigmask:\09\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @signalfd_cleanup(%struct.sighand_struct* noundef %sighand) local_unnamed_addr #0 {
entry:
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %sighand, i64 0, i32 2
  %call = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %signalfd_wqh) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  call void @__wake_up(%struct.wait_queue_head* noundef %signalfd_wqh, i32 noundef 3, i32 noundef 1, i8* noundef nonnull inttoptr (i64 16400 to i8*)) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #2 {
entry:
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #7
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_signalfd4(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_signalfd4(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #7
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_signalfd4(i64 noundef %ufd, i64 noundef %user_mask, i64 noundef %sizemask, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %ufd to i32
  %0 = inttoptr i64 %user_mask to %struct.sigset_t*
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_signalfd4(i32 noundef %conv, %struct.sigset_t* noundef %0, i64 noundef %sizemask, i32 noundef %conv1) #7
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_signalfd(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_signalfd(i64 noundef %0, i64 noundef %1, i64 noundef %2) #7
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_signalfd(i64 noundef %ufd, i64 noundef %user_mask, i64 noundef %sizemask) unnamed_addr #0 {
entry:
  %conv = trunc i64 %ufd to i32
  %0 = inttoptr i64 %user_mask to %struct.sigset_t*
  %call = call fastcc i64 @__do_sys_signalfd(i32 noundef %conv, %struct.sigset_t* noundef %0, i64 noundef %sizemask) #7
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_signalfd4(i32 noundef %ufd, %struct.sigset_t* noundef %user_mask, i64 noundef %sizemask, i32 noundef %flags) unnamed_addr #0 {
entry:
  %mask = alloca %struct.sigset_t, align 8
  %0 = bitcast %struct.sigset_t* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %mask, i64 0, i32 0, i64 0, !annotation !8
  store i64 0, i64* %1, align 8, !annotation !8
  %cmp.not = icmp eq i64 %sizemask, 8
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.sigset_t* %user_mask to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %2) #8
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = call fastcc i32 @do_signalfd4(i32 noundef %ufd, %struct.sigset_t* noundef nonnull %mask, i32 noundef %flags) #7
  %conv = sext i32 %call3 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i64 [ %conv, %if.end2 ], [ -22, %entry ], [ -14, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_signalfd4(i32 noundef %ufd, %struct.sigset_t* nocapture noundef %mask, i32 noundef %flags) unnamed_addr #0 {
entry:
  %and = and i32 %flags, -526337
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup30

if.end:                                           ; preds = %entry
  call fastcc void @sigdelsetmask(%struct.sigset_t* noundef %mask) #7
  call fastcc void @signotset(%struct.sigset_t* noundef %mask) #7
  %cmp = icmp eq i32 %ufd, -1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #8
  %tobool5.not = icmp eq i8* %call.i.i, null
  br i1 %tobool5.not, label %cleanup30, label %if.end7

if.end7:                                          ; preds = %if.then4
  %1 = getelementptr %struct.sigset_t, %struct.sigset_t* %mask, i64 0, i32 0, i64 0
  %2 = bitcast i8* %call.i.i to i64*
  %3 = load i64, i64* %1, align 8
  store i64 %3, i64* %2, align 8
  %and8 = and i32 %flags, 526336
  %or = or i32 %and8, 2
  %call9 = call i32 @anon_inode_getfd(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.file_operations* noundef nonnull @signalfd_fops, i8* noundef nonnull %call.i.i, i32 noundef %or) #8
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %cleanup30

if.then11:                                        ; preds = %if.end7
  call void @kfree(i8* noundef nonnull %call.i.i) #8
  br label %cleanup30

if.else:                                          ; preds = %if.end
  %call13 = call fastcc [2 x i64] @fdget(i32 noundef %ufd) #7
  %call13.fca.0.extract = extractvalue [2 x i64] %call13, 0
  %4 = inttoptr i64 %call13.fca.0.extract to %struct.file*
  %tobool14.not = icmp eq i64 %call13.fca.0.extract, 0
  br i1 %tobool14.not, label %cleanup30, label %if.end16

if.end16:                                         ; preds = %if.else
  %f_op = getelementptr inbounds %struct.file, %struct.file* %4, i64 0, i32 3
  %5 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %cmp19.not = icmp eq %struct.file_operations* %5, @signalfd_fops
  br i1 %cmp19.not, label %cleanup, label %if.then20

if.then20:                                        ; preds = %if.end16
  call fastcc void @fdput([2 x i64] %call13) #7
  br label %cleanup30

cleanup:                                          ; preds = %if.end16
  %private_data = getelementptr inbounds %struct.file, %struct.file* %4, i64 0, i32 15
  %6 = bitcast i8** %private_data to i64**
  %7 = load i64*, i64** %6, align 8
  %8 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !9
  %9 = inttoptr i64 %8 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i64 0, i32 88
  %10 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %10, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %11 = getelementptr %struct.sigset_t, %struct.sigset_t* %mask, i64 0, i32 0, i64 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i58 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %13, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i58) #8
  %14 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %14, i64 0, i32 2
  call void @__wake_up(%struct.wait_queue_head* noundef %signalfd_wqh, i32 noundef 3, i32 noundef 1, i8* noundef null) #8
  call fastcc void @fdput([2 x i64] %call13) #7
  br label %cleanup30

cleanup30:                                        ; preds = %if.else, %if.then20, %if.then11, %if.end7, %cleanup, %if.then4, %entry
  %retval.1 = phi i32 [ -22, %entry ], [ -12, %if.then4 ], [ %call9, %if.then11 ], [ %call9, %if.end7 ], [ %ufd, %cleanup ], [ -9, %if.else ], [ -22, %if.then20 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef 8) #7
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.then16, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #7
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef 8) #8
  %tobool8.not = icmp eq i64 %call6, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !7

if.then16:                                        ; preds = %entry, %if.end
  %res.03 = phi i64 [ %call6, %if.end ], [ 8, %entry ]
  %sub = sub i64 8, %res.03
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.03) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  %res.04 = phi i64 [ %res.03, %if.then16 ], [ 0, %if.end ]
  ret i64 %res.04
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #9, !srcloc !11
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #9, !srcloc !12
  call void asm sideeffect "hint #20", "~{memory}"() #9, !srcloc !13
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sigdelsetmask(%struct.sigset_t* nocapture noundef %set) unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %and = and i64 %0, -262401
  store i64 %and, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @signotset(%struct.sigset_t* nocapture noundef %set) unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %neg = xor i64 %0, -1
  store i64 %neg, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(i8* noundef, %struct.file_operations* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #8
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #7
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
  call void @fput(%struct.file* noundef %0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @signalfd_read(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef readnone %ppos) #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.signalfd_ctx**
  %1 = load %struct.signalfd_ctx*, %struct.signalfd_ctx** %0, align 8
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %2 = load i32, i32* %f_flags, align 8
  %3 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false), !annotation !8
  %tobool.not = icmp ult i64 %count, 128
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i64 %count, 7
  %and = and i32 %2, 2048
  %4 = bitcast i8* %buf to %struct.signalfd_siginfo*
  br label %do.body

do.body:                                          ; preds = %if.end10, %if.end
  %count.addr.0 = phi i64 [ %div, %if.end ], [ %dec, %if.end10 ]
  %siginfo.0 = phi %struct.signalfd_siginfo* [ %4, %if.end ], [ %incdec.ptr, %if.end10 ]
  %nonblock.0 = phi i32 [ %and, %if.end ], [ 1, %if.end10 ]
  %total.0 = phi i64 [ 0, %if.end ], [ %add, %if.end10 ]
  %call = call fastcc i64 @signalfd_dequeue(%struct.signalfd_ctx* noundef %1, %struct.kernel_siginfo* noundef nonnull %info, i32 noundef %nonblock.0) #7
  %cmp = icmp slt i64 %call, 1
  br i1 %cmp, label %do.end, label %if.end4, !prof !10

if.end4:                                          ; preds = %do.body
  %call5 = call fastcc i32 @signalfd_copyinfo(%struct.signalfd_siginfo* noundef %siginfo.0, %struct.kernel_siginfo* noundef nonnull %info) #7
  %conv6 = sext i32 %call5 to i64
  %cmp7 = icmp slt i32 %call5, 0
  br i1 %cmp7, label %do.end, label %if.end10

if.end10:                                         ; preds = %if.end4
  %incdec.ptr = getelementptr %struct.signalfd_siginfo, %struct.signalfd_siginfo* %siginfo.0, i64 1
  %add = add i64 %total.0, %conv6
  %dec = add nsw i64 %count.addr.0, -1
  %tobool11.not = icmp eq i64 %dec, 0
  br i1 %tobool11.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end4, %do.body, %if.end10
  %ret.0 = phi i64 [ %call, %do.body ], [ %conv6, %if.end4 ], [ %conv6, %if.end10 ]
  %total.1 = phi i64 [ %total.0, %do.body ], [ %total.0, %if.end4 ], [ %add, %if.end10 ]
  %tobool12.not = icmp eq i64 %total.1, 0
  %cond = select i1 %tobool12.not, i64 %ret.0, i64 %total.1
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end
  %retval.0 = phi i64 [ %cond, %do.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #9
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @signalfd_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %wait) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.signalfd_ctx**
  %1 = load %struct.signalfd_ctx*, %struct.signalfd_ctx** %0, align 8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !9
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 88
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 2
  call fastcc void @poll_wait(%struct.file* noundef %file, %struct.wait_queue_head* noundef %signalfd_wqh, %struct.poll_table_struct* noundef %wait) #7
  %5 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %5, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %pending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 92
  %sigmask = getelementptr inbounds %struct.signalfd_ctx, %struct.signalfd_ctx* %1, i64 0, i32 0
  %call4 = call i32 @next_signal(%struct.sigpending* noundef %pending, %struct.sigset_t* noundef %sigmask) #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 87
  %6 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %shared_pending = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 6
  %call7 = call i32 @next_signal(%struct.sigpending* noundef %shared_pending, %struct.sigset_t* noundef %sigmask) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %events.0 = phi i32 [ 1, %if.then ], [ 0, %lor.lhs.false ]
  %7 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i17 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %7, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i17) #8
  ret i32 %events.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @signalfd_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readonly %file) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = load i8*, i8** %private_data, align 8
  call void @kfree(i8* noundef %0) #8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @signalfd_show_fdinfo(%struct.seq_file* noundef %m, %struct.file* nocapture noundef readonly %f) #0 {
entry:
  %sigmask = alloca %struct.sigset_t, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 15
  %0 = bitcast i8** %private_data to i64**
  %1 = load i64*, i64** %0, align 8
  %2 = bitcast %struct.sigset_t* %sigmask to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %3 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %sigmask, i64 0, i32 0, i64 0, !annotation !8
  %4 = load i64, i64* %1, align 8
  store i64 %4, i64* %3, align 8
  call fastcc void @signotset(%struct.sigset_t* noundef nonnull %sigmask) #7
  call void @render_sigset_t(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.sigset_t* noundef nonnull %sigmask) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @signalfd_dequeue(%struct.signalfd_ctx* noundef %ctx, %struct.kernel_siginfo* noundef %info, i32 noundef %nonblock) unnamed_addr #0 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %0 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = bitcast i8** %private to %struct.task_struct**
  %4 = bitcast %struct.wait_queue_entry* %wait to i64*
  store i64 0, i64* %4, align 8
  store %struct.task_struct* %2, %struct.task_struct** %3, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @default_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %next = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 0
  store %struct.list_head* null, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  store %struct.list_head* null, %struct.list_head** %prev, align 8
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 88
  %5 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %5, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %sigmask = getelementptr inbounds %struct.signalfd_ctx, %struct.signalfd_ctx* %ctx, i64 0, i32 0
  %call4 = call i32 @dequeue_signal(%struct.task_struct* noundef %2, %struct.sigset_t* noundef %sigmask, %struct.kernel_siginfo* noundef %info) #8
  %conv = sext i32 %call4 to i64
  %cond = icmp eq i32 %call4, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq i32 %nonblock, 0
  br i1 %tobool.not, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %sw.bb, %entry
  %ret.0 = phi i64 [ %conv, %entry ], [ -11, %sw.bb ]
  %6 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i74 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %6, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i74) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  %7 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %7, i64 0, i32 2
  call void @add_wait_queue(%struct.wait_queue_head* noundef %signalfd_wqh, %struct.wait_queue_entry* noundef nonnull %wait) #8
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 1
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %call2882 = call i32 @dequeue_signal(%struct.task_struct* noundef %2, %struct.sigset_t* noundef %sigmask, %struct.kernel_siginfo* noundef %info) #8
  %cmp.not83 = icmp eq i32 %call2882, 0
  br i1 %cmp.not83, label %if.end32, label %for.end.split.loop.exit78

if.end32:                                         ; preds = %sw.epilog, %if.end37
  %call34 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %2) #7
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %for.end

if.end37:                                         ; preds = %if.end32
  %8 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i75 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %8, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i75) #8
  call void @schedule() #8
  %9 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i76 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %9, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i76) #8
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %call28 = call i32 @dequeue_signal(%struct.task_struct* noundef %2, %struct.sigset_t* noundef %sigmask, %struct.kernel_siginfo* noundef %info) #8
  %cmp.not = icmp eq i32 %call28, 0
  br i1 %cmp.not, label %if.end32, label %for.end.split.loop.exit78

for.end.split.loop.exit78:                        ; preds = %if.end37, %sw.epilog
  %call28.lcssa = phi i32 [ %call2882, %sw.epilog ], [ %call28, %if.end37 ]
  %conv29.le = sext i32 %call28.lcssa to i64
  br label %for.end

for.end:                                          ; preds = %if.end32, %for.end.split.loop.exit78
  %ret.1 = phi i64 [ %conv29.le, %for.end.split.loop.exit78 ], [ -512, %if.end32 ]
  %10 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i77 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %10, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i77) #8
  %11 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %signalfd_wqh49 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %11, i64 0, i32 2
  call void @remove_wait_queue(%struct.wait_queue_head* noundef %signalfd_wqh49, %struct.wait_queue_entry* noundef nonnull %wait) #8
  store volatile i32 0, i32* %__state, align 16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.default
  %retval.0 = phi i64 [ %ret.0, %sw.default ], [ %ret.1, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @signalfd_copyinfo(%struct.signalfd_siginfo* noundef %uinfo, %struct.kernel_siginfo* noundef readonly %kinfo) unnamed_addr #0 {
entry:
  %new = alloca %struct.signalfd_siginfo, align 8
  %0 = bitcast %struct.signalfd_siginfo* %new to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !8
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 128) #8
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 0
  %1 = load i32, i32* %si_signo, align 8
  %ssi_signo = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 0
  store i32 %1, i32* %ssi_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 1
  %2 = load i32, i32* %si_errno, align 4
  %ssi_errno = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 1
  store i32 %2, i32* %ssi_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 2
  %3 = load i32, i32* %si_code, align 8
  %ssi_code = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 2
  store i32 %3, i32* %ssi_code, align 8
  %call3 = call i32 @siginfo_layout(i32 noundef %1, i32 noundef %3) #8
  switch i32 %call3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb14
    i32 6, label %sw.bb18
    i32 7, label %sw.bb18
    i32 8, label %sw.bb18
    i32 3, label %sw.bb18
    i32 4, label %sw.bb20
    i32 5, label %sw.bb27
    i32 9, label %sw.bb34
    i32 10, label %sw.bb48
    i32 11, label %sw.bb67
  ]

sw.bb:                                            ; preds = %entry
  %_pid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 0
  %4 = load i32, i32* %_pid, align 8
  %ssi_pid = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 3
  store i32 %4, i32* %ssi_pid, align 4
  %5 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %ssi_uid = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 4
  store i32 %6, i32* %ssi_uid, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %_tid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 0
  %7 = load i32, i32* %_tid, align 8
  %ssi_tid = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 6
  store i32 %7, i32* %ssi_tid, align 8
  %8 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %ssi_overrun = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 8
  store i32 %9, i32* %ssi_overrun, align 8
  %_sigval = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 2
  %sival_ptr = bitcast i32* %_sigval to i8**
  %10 = load i8*, i8** %sival_ptr, align 8
  %11 = ptrtoint i8* %10 to i64
  %ssi_ptr = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 12
  store i64 %11, i64* %ssi_ptr, align 8
  %12 = trunc i64 %11 to i32
  %ssi_int = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 11
  store i32 %12, i32* %ssi_int, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %_sifields15 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3
  %_band = bitcast %union.__sifields* %_sifields15 to i64*
  %13 = load i64, i64* %_band, align 8
  %conv = trunc i64 %13 to i32
  %ssi_band = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 7
  store i32 %conv, i32* %ssi_band, align 4
  %14 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %ssi_fd = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 5
  store i32 %15, i32* %ssi_fd, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry, %entry, %entry, %entry
  %_sifields19 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3
  %_addr = bitcast %union.__sifields* %_sifields19 to i8**
  %16 = load i8*, i8** %_addr, align 8
  %17 = ptrtoint i8* %16 to i64
  %ssi_addr = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 15
  store i64 %17, i64* %ssi_addr, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %_sifields21 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3
  %_addr23 = bitcast %union.__sifields* %_sifields21 to i8**
  %18 = load i8*, i8** %_addr23, align 8
  %19 = ptrtoint i8* %18 to i64
  %ssi_addr24 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 15
  store i64 %19, i64* %ssi_addr24, align 8
  %20 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %ssi_trapno = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 9
  store i32 %21, i32* %ssi_trapno, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %_sifields28 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3
  %_addr30 = bitcast %union.__sifields* %_sifields28 to i8**
  %22 = load i8*, i8** %_addr30, align 8
  %23 = ptrtoint i8* %22 to i64
  %ssi_addr31 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 15
  store i64 %23, i64* %ssi_addr31, align 8
  %24 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 2
  %_addr_lsb = bitcast i32* %24 to i16*
  %25 = load i16, i16* %_addr_lsb, align 8
  %ssi_addr_lsb = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 16
  store i16 %25, i16* %ssi_addr_lsb, align 8
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %_pid37 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 0
  %26 = load i32, i32* %_pid37, align 8
  %ssi_pid38 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 3
  store i32 %26, i32* %ssi_pid38, align 4
  %27 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %ssi_uid42 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 4
  store i32 %28, i32* %ssi_uid42, align 8
  %_status = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 2
  %29 = load i32, i32* %_status, align 8
  %ssi_status = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 10
  store i32 %29, i32* %ssi_status, align 8
  %_utime = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 3
  %30 = load i64, i64* %_utime, align 8
  %ssi_utime = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 13
  store i64 %30, i64* %ssi_utime, align 8
  %_stime = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 4
  %31 = load i64, i64* %_stime, align 8
  %ssi_stime = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 14
  store i64 %31, i64* %ssi_stime, align 8
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  %_pid51 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 0
  %32 = load i32, i32* %_pid51, align 8
  %ssi_pid52 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 3
  store i32 %32, i32* %ssi_pid52, align 4
  %33 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %ssi_uid56 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 4
  store i32 %34, i32* %ssi_uid56, align 8
  %_sigval59 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 2
  %sival_ptr60 = bitcast i32* %_sigval59 to i8**
  %35 = load i8*, i8** %sival_ptr60, align 8
  %36 = ptrtoint i8* %35 to i64
  %ssi_ptr61 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 12
  store i64 %36, i64* %ssi_ptr61, align 8
  %37 = trunc i64 %36 to i32
  %ssi_int66 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 11
  store i32 %37, i32* %ssi_int66, align 4
  br label %sw.epilog

sw.bb67:                                          ; preds = %entry
  %_sifields68 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3
  %_sigsys = bitcast %union.__sifields* %_sifields68 to %struct.anon.58*
  %_call_addr = bitcast %union.__sifields* %_sifields68 to i8**
  %38 = load i8*, i8** %_call_addr, align 8
  %39 = ptrtoint i8* %38 to i64
  %ssi_call_addr = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 19
  store i64 %39, i64* %ssi_call_addr, align 8
  %40 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 3, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %ssi_syscall = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 18
  store i32 %41, i32* %ssi_syscall, align 4
  %_arch = getelementptr inbounds %struct.anon.58, %struct.anon.58* %_sigsys, i64 0, i32 2
  %42 = load i32, i32* %_arch, align 4
  %ssi_arch = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %new, i64 0, i32 20
  store i32 %42, i32* %ssi_arch, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb67, %sw.bb48, %sw.bb34, %sw.bb27, %sw.bb20, %sw.bb18, %sw.bb14, %sw.bb6, %sw.bb
  %43 = bitcast %struct.signalfd_siginfo* %uinfo to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %43, i8* noundef nonnull %0) #8
  %tobool.not = icmp eq i64 %call2.i, 0
  %. = select i1 %tobool.not, i32 128, i32 -14
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #9
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dequeue_signal(%struct.task_struct* noundef, %struct.sigset_t* noundef, %struct.kernel_siginfo* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !7

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #7
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #7
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #7
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #6 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @siginfo_layout(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef 128) #7
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #7
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef 128) #8
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ 128, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

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
  call void %0(%struct.file* noundef %filp, %struct.wait_queue_head* noundef nonnull %wait_address, %struct.poll_table_struct* noundef nonnull %p) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @next_signal(%struct.sigpending* noundef, %struct.sigset_t* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @render_sigset_t(%struct.seq_file* noundef, i8* noundef, %struct.sigset_t* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #6 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #7
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
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
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #9, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #8
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #9, !srcloc !17
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #7
  call fastcc void @arch_local_irq_enable() #7
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #9, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #9, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_signalfd(i32 noundef %ufd, %struct.sigset_t* noundef %user_mask, i64 noundef %sizemask) unnamed_addr #0 {
entry:
  %mask = alloca %struct.sigset_t, align 8
  %0 = bitcast %struct.sigset_t* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %mask, i64 0, i32 0, i64 0, !annotation !8
  store i64 0, i64* %1, align 8, !annotation !8
  %cmp.not = icmp eq i64 %sizemask, 8
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.sigset_t* %user_mask to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %2) #8
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = call fastcc i32 @do_signalfd4(i32 noundef %ufd, %struct.sigset_t* noundef nonnull %mask, i32 noundef 0) #7
  %conv = sext i32 %call3 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i64 [ %conv, %if.end2 ], [ -22, %entry ], [ -14, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i64 %retval.0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }

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
!8 = !{!"auto-init"}
!9 = !{i64 1424969}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 3905597, i64 3905680, i64 3905904, i64 3906124, i64 3906147}
!12 = !{i64 3910299, i64 3910323}
!13 = !{i64 2151463083}
!14 = !{i64 2154751937}
!15 = !{i64 2149478665}
!16 = !{i64 2149241049, i64 2149241096, i64 2149241102, i64 2149241139, i64 2149241157, i64 2149246559, i64 2149246607, i64 2149246655, i64 2149246718, i64 2149246767, i64 2149241235, i64 2149241260, i64 2149241286, i64 2149241292, i64 2149246225, i64 2149246265, i64 2149246283, i64 2149246315, i64 2149246343, i64 2149246397, i64 2149246417, i64 2149246514, i64 2149241315, i64 2149241329, i64 2149241335, i64 2149241385, i64 2149241431, i64 2149241464}
!17 = !{i64 2147905511, i64 2147905544, i64 2147905597, i64 2147905656, i64 2147905690, i64 2147905745, i64 2147905774, i64 2147905794}
!18 = !{i64 2149503518}
!19 = !{i64 2149292945}
!20 = !{i64 2149231593, i64 2149231640, i64 2149231646, i64 2149231683, i64 2149231701, i64 2149233041, i64 2149233089, i64 2149233137, i64 2149233200, i64 2149233249, i64 2149231779, i64 2149231804, i64 2149231830, i64 2149231836, i64 2149232707, i64 2149232747, i64 2149232765, i64 2149232797, i64 2149232825, i64 2149232879, i64 2149232899, i64 2149232996, i64 2149231859, i64 2149231873, i64 2149231879, i64 2149231929, i64 2149231975, i64 2149232008}
