; ModuleID = 'fs/proc/fd.c'
source_filename = "fs/proc/fd.c"
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
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.nsset = type { i32, %struct.nsproxy*, %struct.fs_struct*, %struct.cred* }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, %struct.fdtable*, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x %struct.file*], [32 x i8] }
%struct.fdtable = type { i32, %struct.file**, i64*, i64*, i64*, %struct.callback_head }
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type { %struct.ns_common, %struct.mount*, %struct.list_head, %struct.spinlock, %struct.user_namespace*, %struct.ucounts*, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.mount = type { %struct.hlist_node, %struct.mount*, %struct.dentry*, %struct.vfsmount, %union.anon.67, %struct.mnt_pcp*, %struct.list_head, %struct.list_head, %struct.list_head, i8*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mount*, %struct.mnt_namespace*, %struct.mountpoint*, %union.anon.68, %struct.list_head, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%union.anon.67 = type { %struct.callback_head }
%struct.mnt_pcp = type { i32, i32 }
%struct.mountpoint = type { %struct.hlist_node, %struct.dentry*, %struct.hlist_head, i32 }
%union.anon.68 = type { %struct.hlist_node }
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
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
%struct.proc_inode = type { %struct.pid*, i32, %union.proc_op, %struct.proc_dir_entry*, %struct.ctl_table_header*, %struct.ctl_table*, %struct.hlist_node, %struct.proc_ns_operations*, %struct.inode }
%union.proc_op = type { i32 (%struct.dentry*, %struct.path*)* }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, %union.anon.70, %struct.dentry_operations*, %union.anon.71, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }
%union.anon.70 = type { %struct.proc_ops* }
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%union.anon.71 = type { %struct.seq_operations* }
%struct.ctl_table_header = type { %union.anon.72, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.fd_data = type { i32, i32 }

@proc_fd_operations = dso_local local_unnamed_addr constant { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* } { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @generic_read_dir, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* @proc_readfd, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@proc_fd_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @proc_lookupfd, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* @proc_fd_permission, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @proc_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@proc_fdinfo_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @proc_lookupfdinfo, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @proc_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@proc_fdinfo_operations = dso_local local_unnamed_addr constant { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* } { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @generic_read_dir, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* @proc_readfdinfo, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@proc_pid_link_inode_operations = external dso_local constant %struct.inode_operations, align 64
@tid_fd_dentry_operations = internal constant %struct.dentry_operations { i32 (%struct.dentry*, i32)* @tid_fd_revalidate, i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, %struct.qstr*)* null, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* null, i32 (%struct.dentry*)* @pid_delete_dentry, i32 (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*, %struct.inode*)* null, i8* (%struct.dentry*, i8*, i32)* null, %struct.vfsmount* (%struct.path*)* null, i32 (%struct.path*, i1)* null, %struct.dentry* (%struct.dentry*, %struct.inode*)* null, [24 x i8] undef }, align 64
@proc_fdinfo_file_operations = internal constant { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* } { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @seq_fdinfo_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"pos:\09%lli\0Aflags:\090%o\0Amnt_id:\09%i\0Aino:\09%lu\0A\00", align 1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_read_dir(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_readfd(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #1 {
entry:
  %call = call fastcc i32 @proc_readfd_common(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* noundef nonnull @proc_fd_instantiate) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_fd_permission(%struct.user_namespace* nocapture readnone %mnt_userns, %struct.inode* noundef %inode, i32 noundef %mask) #1 {
entry:
  %call = call i32 @generic_permission(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %inode, i32 noundef %mask) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #9
  %call1 = call fastcc %struct.pid* @proc_pid(%struct.inode* noundef %inode) #8
  %call2 = call %struct.task_struct* @pid_task(%struct.pid* noundef %call1, i32 noundef 0) #9
  %tobool.not = icmp eq %struct.task_struct* %call2, null
  br i1 %tobool.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call4 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef nonnull %call2, %struct.task_struct* noundef %1) #8
  %spec.select = select i1 %call4, i32 0, i32 %call
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %rv.0 = phi i32 [ %call, %if.end ], [ %spec.select, %land.lhs.true ]
  call fastcc void @rcu_read_unlock() #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi i32 [ %rv.0, %if.end6 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @proc_pid(%struct.inode* noundef readonly %inode) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #8
  %pid = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call, i64 0, i32 0
  %0 = load %struct.pid*, %struct.pid** %pid, align 8
  ret %struct.pid* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @same_thread_group(%struct.task_struct* nocapture noundef readonly %p1, %struct.task_struct* nocapture noundef readonly %p2) unnamed_addr #3 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p1, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %signal1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p2, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %cmp = icmp eq %struct.signal_struct* %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_lookupfd(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i32 noundef %flags) #1 {
entry:
  %call = call fastcc %struct.dentry* @proc_lookupfd_common(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* noundef nonnull @proc_fd_instantiate) #8
  ret %struct.dentry* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_setattr(%struct.user_namespace* noundef, %struct.dentry* noundef, %struct.iattr* noundef) #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_lookupfdinfo(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i32 noundef %flags) #1 {
entry:
  %call = call fastcc %struct.dentry* @proc_lookupfd_common(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* noundef nonnull @proc_fdinfo_instantiate) #8
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_readfdinfo(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #1 {
entry:
  %call = call fastcc i32 @proc_readfd_common(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* noundef nonnull @proc_fdinfo_instantiate) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @proc_readfd_common(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* noundef %instantiate) unnamed_addr #1 {
entry:
  %fd = alloca i32, align 4
  %data = alloca i64, align 8, !annotation !8
  %tmpcast = bitcast i64* %data to %struct.fd_data*, !annotation !8
  %name = alloca [11 x i8], align 1
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #8
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #8
  %0 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  store i32 0, i32* %fd, align 4, !annotation !8
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %cleanup21, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @dir_emit_dots(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #8
  br i1 %call2, label %if.end4, label %out

if.end4:                                          ; preds = %if.end
  call fastcc void @__rcu_read_lock() #9
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %2 = trunc i64 %1 to i32
  %conv = add i32 %2, -2
  %3 = bitcast i64* %data to i8*
  %4 = getelementptr inbounds [11 x i8], [11 x i8]* %name, i64 0, i64 0
  store i32 %conv, i32* %fd, align 4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11
  store i64 0, i64* %data, align 8, !annotation !8
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %4) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %4, i8 0, i64 11, i1 false), !annotation !8
  %call541 = call %struct.file* @task_lookup_next_fd_rcu(%struct.task_struct* noundef nonnull %call1, i32* noundef nonnull %fd) #9
  %5 = load i32, i32* %fd, align 4
  %conv642 = zext i32 %5 to i64
  %add43 = add nuw nsw i64 %conv642, 2
  store i64 %add43, i64* %pos, align 8
  %tobool8.not44 = icmp eq %struct.file* %call541, null
  br i1 %tobool8.not44, label %for.end, label %if.end10.lr.ph

if.end10.lr.ph:                                   ; preds = %if.end4
  %mode = bitcast i64* %data to i32*
  %fd11 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %tmpcast, i64 0, i32 1
  br label %if.end10

if.end10:                                         ; preds = %if.end10.lr.ph, %for.inc
  %call545 = phi %struct.file* [ %call541, %if.end10.lr.ph ], [ %call5, %for.inc ]
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %call545, i64 0, i32 8
  %6 = load i32, i32* %f_mode, align 4
  store i32 %6, i32* %mode, align 8
  call fastcc void @rcu_read_unlock() #8
  %7 = load i32, i32* %fd, align 4
  store i32 %7, i32* %fd11, align 4
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %7) #9
  %call14 = call i1 @proc_fill_cache(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, i8* noundef nonnull %4, i32 noundef %call12, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* noundef %instantiate, %struct.task_struct* noundef nonnull %call1, i8* noundef nonnull %3) #9
  br i1 %call14, label %for.inc, label %cleanup

cleanup:                                          ; preds = %if.end10
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11
  br label %out

for.inc:                                          ; preds = %if.end10
  call fastcc void @_cond_resched() #8
  call fastcc void @__rcu_read_lock() #9
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11
  %8 = load i32, i32* %fd, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %fd, align 4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11
  store i64 0, i64* %data, align 8, !annotation !8
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %4) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %4, i8 0, i64 11, i1 false), !annotation !8
  %call5 = call %struct.file* @task_lookup_next_fd_rcu(%struct.task_struct* noundef nonnull %call1, i32* noundef nonnull %fd) #9
  %9 = load i32, i32* %fd, align 4
  %conv6 = zext i32 %9 to i64
  %add = add nuw nsw i64 %conv6, 2
  store i64 %add, i64* %pos, align 8
  %tobool8.not = icmp eq %struct.file* %call5, null
  br i1 %tobool8.not, label %for.end, label %if.end10

for.end:                                          ; preds = %for.inc, %if.end4
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11
  call fastcc void @rcu_read_unlock() #8
  br label %out

out:                                              ; preds = %cleanup, %if.end, %for.end
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #8
  br label %cleanup21

cleanup21:                                        ; preds = %entry, %out
  %retval.0 = phi i32 [ 0, %out ], [ -2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_fd_instantiate(%struct.dentry* noundef %dentry, %struct.task_struct* noundef %task, i8* nocapture noundef readonly %ptr) #1 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call = call %struct.inode* @proc_pid_make_inode(%struct.super_block* noundef %0, %struct.task_struct* noundef %task, i16 noundef -24576) #9
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef nonnull %call) #8
  %fd = getelementptr inbounds i8, i8* %ptr, i64 4
  %1 = bitcast i8* %fd to i32*
  %2 = load i32, i32* %1, align 4
  %fd3 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call2, i64 0, i32 1
  store i32 %2, i32* %fd3, align 8
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  store %struct.inode_operations* @proc_pid_link_inode_operations, %struct.inode_operations** %i_op, align 8
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 11
  store i64 64, i64* %i_size, align 8
  %proc_get_link = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call2, i64 0, i32 2, i32 0
  store i32 (%struct.dentry*, %struct.path*)* @proc_fd_link, i32 (%struct.dentry*, %struct.path*)** %proc_get_link, align 8
  %mode = bitcast i8* %ptr to i32*
  %3 = load i32, i32* %mode, align 4
  call fastcc void @tid_fd_update_inode(%struct.task_struct* noundef %task, %struct.inode* noundef nonnull %call, i32 noundef %3) #8
  call void @d_set_d_op(%struct.dentry* noundef %dentry, %struct.dentry_operations* noundef nonnull @tid_fd_dentry_operations) #9
  %call4 = call %struct.dentry* @d_splice_alias(%struct.inode* noundef nonnull %call, %struct.dentry* noundef %dentry) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.dentry* [ %call4, %if.end ], [ inttoptr (i64 -2 to %struct.dentry*), %entry ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %inode) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.pid* @proc_pid(%struct.inode* noundef %inode) #8
  %call1 = call %struct.task_struct* @get_pid_task(%struct.pid* noundef %call, i32 noundef 0) #9
  ret %struct.task_struct* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #3 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dots(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #1 {
entry:
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %0 = load i64, i64* %pos, align 8
  switch i64 %0, label %return [
    i64 0, label %if.then
    i64 1, label %if.then6
  ]

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @dir_emit_dot(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #8
  br i1 %call, label %if.end3.thread, label %return

if.end3.thread:                                   ; preds = %if.then
  store i64 1, i64* %pos, align 8
  br label %if.then6

if.then6:                                         ; preds = %entry, %if.end3.thread
  %call7 = call fastcc i1 @dir_emit_dotdot(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #8
  br i1 %call7, label %if.end9, label %return

if.end9:                                          ; preds = %if.then6
  store i64 2, i64* %pos, align 8
  br label %return

return:                                           ; preds = %entry, %if.end9, %if.then6, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then6 ], [ true, %if.end9 ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @task_lookup_next_fd_rcu(%struct.task_struct* noundef, i32* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @proc_fill_cache(%struct.file* noundef, %struct.dir_context* noundef, i8* noundef, i32 noundef, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* noundef, %struct.task_struct* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #1 {
entry:
  %call = call i32 @__cond_resched() #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @get_pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dot(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #1 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 5
  %3 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 8
  %4 = load i64, i64* %i_ino, align 8
  %call = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1, i64 noundef %1, i64 noundef %4, i32 noundef 4) #9
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dotdot(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #1 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc i64 @parent_ino(%struct.dentry* noundef %2) #8
  %call1 = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef 2, i64 noundef %1, i64 noundef %call, i32 noundef 4) #9
  %cmp = icmp eq i32 %call1, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @parent_ino(%struct.dentry* noundef %dentry) unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.63* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 8
  %3 = load i64, i64* %i_ino, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #9
  ret i64 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #11, !srcloc !11
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #11, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #0

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
  call void asm sideeffect "dmb ishld", "~{memory}"() #11, !srcloc !14
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !10

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
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #11, !srcloc !15
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @proc_pid_make_inode(%struct.super_block* noundef, %struct.task_struct* noundef, i16 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef readnone %inode) unnamed_addr #5 {
entry:
  %add.ptr = getelementptr %struct.inode, %struct.inode* %inode, i64 -1, i32 38, i32 11
  %0 = bitcast i32* %add.ptr to %struct.proc_inode*
  ret %struct.proc_inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_fd_link(%struct.dentry* nocapture noundef readonly %dentry, %struct.path* nocapture noundef writeonly %path) #1 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #8
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #8
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #8
  %call3 = call fastcc i32 @proc_fd(%struct.inode* noundef %call2) #8
  %call4 = call %struct.file* @fget_task(%struct.task_struct* noundef nonnull %call1, i32 noundef %call3) #9
  %tobool5.not = icmp eq %struct.file* %call4, null
  br i1 %tobool5.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %f_path = getelementptr inbounds %struct.file, %struct.file* %call4, i64 0, i32 1
  %0 = bitcast %struct.path* %path to i8*
  %1 = bitcast %struct.path* %f_path to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @path_get(%struct.path* noundef %f_path) #9
  call void @fput(%struct.file* noundef nonnull %call4) #9
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %ret.0 = phi i32 [ 0, %if.then6 ], [ -2, %if.then ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %ret.1 = phi i32 [ %ret.0, %if.end ], [ -2, %entry ]
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tid_fd_update_inode(%struct.task_struct* noundef %task, %struct.inode* noundef %inode, i32 noundef %f_mode) unnamed_addr #1 {
entry:
  %i_uid = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3
  call void @task_dump_owner(%struct.task_struct* noundef %task, i16 noundef 0, %struct.kuid_t* noundef %i_uid, %struct.kgid_t* noundef %i_gid) #9
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -24576
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %and3 = and i32 %f_mode, 1
  %tobool.not = icmp eq i32 %and3, 0
  %spec.select = select i1 %tobool.not, i32 40960, i32 41280
  %and5 = and i32 %f_mode, 2
  %tobool6.not = icmp eq i32 %and5, 0
  %or8 = or i32 %spec.select, 192
  %i_mode2.1 = select i1 %tobool6.not, i32 %spec.select, i32 %or8
  %conv10 = trunc i32 %i_mode2.1 to i16
  store i16 %conv10, i16* %i_mode, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(%struct.dentry* noundef, %struct.dentry_operations* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_splice_alias(%struct.inode* noundef, %struct.dentry* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #3 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @proc_fd(%struct.inode* noundef readonly %inode) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #8
  %fd = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call, i64 0, i32 1
  %0 = load i32, i32* %fd, align 8
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @fget_task(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(%struct.path* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_dump_owner(%struct.task_struct* noundef, i16 noundef, %struct.kuid_t* noundef, %struct.kgid_t* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @tid_fd_revalidate(%struct.dentry* nocapture noundef readonly %dentry, i32 noundef %flags) #1 {
entry:
  %f_mode = alloca i32, align 4
  %and = and i32 %flags, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup9

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #8
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #8
  %tobool3.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool3.not, label %cleanup9, label %if.then4

if.then4:                                         ; preds = %if.end
  %call2 = call fastcc i32 @proc_fd(%struct.inode* noundef %call) #8
  %0 = bitcast i32* %f_mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  store i32 0, i32* %f_mode, align 4, !annotation !8
  %call5 = call fastcc i1 @tid_fd_mode(%struct.task_struct* noundef nonnull %call1, i32 noundef %call2, i32* noundef nonnull %f_mode) #8
  br i1 %call5, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then4
  %1 = load i32, i32* %f_mode, align 4
  call fastcc void @tid_fd_update_inode(%struct.task_struct* noundef nonnull %call1, %struct.inode* noundef %call, i32 noundef %1) #8
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  br label %cleanup9

cleanup:                                          ; preds = %if.then4
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  br label %cleanup9

cleanup9:                                         ; preds = %if.end, %cleanup, %cleanup.thread, %entry
  %retval.1 = phi i32 [ -10, %entry ], [ 1, %cleanup.thread ], [ 0, %cleanup ], [ 0, %if.end ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_delete_dentry(%struct.dentry* noundef) #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @tid_fd_mode(%struct.task_struct* noundef %task, i32 noundef %fd, i32* nocapture noundef writeonly %mode) unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_lock() #9
  %call = call %struct.file* @task_lookup_fd_rcu(%struct.task_struct* noundef %task, i32 noundef %fd) #9
  %tobool = icmp ne %struct.file* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %call, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  store i32 %0, i32* %mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @rcu_read_unlock() #8
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @task_lookup_fd_rcu(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  call void @rcu_read_unlock_strict() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @proc_lookupfd_common(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* nocapture noundef readonly %instantiate) unnamed_addr #1 {
entry:
  %data = alloca i64, align 8, !annotation !8
  %tmpcast = bitcast i64* %data to %struct.fd_data*, !annotation !8
  %call = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %dir) #8
  %0 = bitcast i64* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 0, i64* %data, align 8, !annotation !8
  %mode = bitcast i64* %data to i32*
  %fd = getelementptr inbounds %struct.fd_data, %struct.fd_data* %tmpcast, i64 0, i32 1
  %d_name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4
  %call1 = call i32 @name_to_int(%struct.qstr* noundef %d_name) #9
  store i32 %call1, i32* %fd, align 4
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %out_no_task, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %out, label %if.end5

if.end5:                                          ; preds = %if.end
  %call8 = call fastcc i1 @tid_fd_mode(%struct.task_struct* noundef nonnull %call, i32 noundef %call1, i32* noundef nonnull %mode) #8
  br i1 %call8, label %if.end10, label %out

if.end10:                                         ; preds = %if.end5
  %call11 = call %struct.dentry* %instantiate(%struct.dentry* noundef %dentry, %struct.task_struct* noundef nonnull %call, i8* noundef nonnull %0) #9, !callees !18
  br label %out

out:                                              ; preds = %if.end5, %if.end, %if.end10
  %result.0 = phi %struct.dentry* [ inttoptr (i64 -2 to %struct.dentry*), %if.end ], [ %call11, %if.end10 ], [ inttoptr (i64 -2 to %struct.dentry*), %if.end5 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #8
  br label %out_no_task

out_no_task:                                      ; preds = %entry, %out
  %result.1 = phi %struct.dentry* [ %result.0, %out ], [ inttoptr (i64 -2 to %struct.dentry*), %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret %struct.dentry* %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @name_to_int(%struct.qstr* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_fdinfo_instantiate(%struct.dentry* noundef %dentry, %struct.task_struct* noundef %task, i8* nocapture noundef readonly %ptr) #1 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call = call %struct.inode* @proc_pid_make_inode(%struct.super_block* noundef %0, %struct.task_struct* noundef %task, i16 noundef -32476) #9
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef nonnull %call) #8
  %fd = getelementptr inbounds i8, i8* %ptr, i64 4
  %1 = bitcast i8* %fd to i32*
  %2 = load i32, i32* %1, align 4
  %fd3 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call2, i64 0, i32 1
  store i32 %2, i32* %fd3, align 8
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 36, i32 0
  store %struct.file_operations* bitcast ({ %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }* @proc_fdinfo_file_operations to %struct.file_operations*), %struct.file_operations** %i_fop, align 8
  call fastcc void @tid_fd_update_inode(%struct.task_struct* noundef %task, %struct.inode* noundef nonnull %call, i32 noundef 0) #8
  call void @d_set_d_op(%struct.dentry* noundef %dentry, %struct.dentry_operations* noundef nonnull @tid_fd_dentry_operations) #9
  %call4 = call %struct.dentry* @d_splice_alias(%struct.inode* noundef nonnull %call, %struct.dentry* noundef %dentry) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.dentry* [ %call4, %if.end ], [ inttoptr (i64 -2 to %struct.dentry*), %entry ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(%struct.file* noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_read(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @seq_fdinfo_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #1 {
entry:
  %call = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %inode) #8
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i1 @ptrace_may_access(%struct.task_struct* noundef nonnull %call, i32 noundef 9) #9
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #8
  br i1 %call1, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = bitcast %struct.inode* %inode to i8*
  %call5 = call i32 @single_open(%struct.file* noundef %file, i32 (%struct.seq_file*, i8*)* noundef nonnull @seq_show, i8* noundef %0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -3, %entry ], [ -13, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(%struct.inode* noundef, %struct.file* noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ptrace_may_access(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(%struct.file* noundef, i32 (%struct.seq_file*, i8*)* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @seq_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #1 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.inode**
  %1 = load %struct.inode*, %struct.inode** %0, align 8
  %call = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %1) #8
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @task_lock(%struct.task_struct* noundef nonnull %call) #8
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  %tobool2.not = icmp eq %struct.files_struct* %2, null
  br i1 %tobool2.not, label %if.end21, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load %struct.inode*, %struct.inode** %0, align 8
  %call5 = call fastcc i32 @proc_fd(%struct.inode* noundef %3) #8
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  %call6 = call fastcc %struct.file* @files_lookup_fd_locked(%struct.files_struct* noundef nonnull %2, i32 noundef %call5) #8
  %tobool7.not = icmp eq %struct.file* %call6, null
  br i1 %tobool7.not, label %if.end19, label %if.then8

if.then8:                                         ; preds = %if.then3
  %fdt9 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 3
  %4 = load volatile %struct.fdtable*, %struct.fdtable** %fdt9, align 32
  %f_flags14 = getelementptr inbounds %struct.file, %struct.file* %call6, i64 0, i32 7
  %5 = load i32, i32* %f_flags14, align 8
  %call15 = call fastcc i1 @close_on_exec(i32 noundef %call5, %struct.fdtable* noundef %4) #8
  %or = or i32 %5, 524288
  %spec.select = select i1 %call15, i32 %or, i32 %5
  call fastcc void @get_file(%struct.file* noundef nonnull %call6) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then8, %if.then3
  %ret.0 = phi i32 [ 0, %if.then8 ], [ -2, %if.then3 ]
  %f_flags.1 = phi i32 [ %spec.select, %if.then8 ], [ 0, %if.then3 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #9
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end
  %file.0 = phi %struct.file* [ %call6, %if.end19 ], [ null, %if.end ]
  %ret.1 = phi i32 [ %ret.0, %if.end19 ], [ -2, %if.end ]
  %f_flags.2 = phi i32 [ %f_flags.1, %if.end19 ], [ 0, %if.end ]
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call) #8
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #8
  %tobool22.not = icmp eq i32 %ret.1, 0
  br i1 %tobool22.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.end21
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %file.0, i64 0, i32 10
  %6 = load i64, i64* %f_pos, align 8
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file.0, i64 0, i32 1, i32 0
  %7 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call25 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %7) #8
  %mnt_id = getelementptr inbounds %struct.mount, %struct.mount* %call25, i64 0, i32 20
  %8 = load i32, i32* %mnt_id, align 8
  %call26 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file.0) #8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call26, i64 0, i32 8
  %9 = load i64, i64* %i_ino, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 noundef %6, i32 noundef %f_flags.2, i32 noundef %8, i64 noundef %9) #9
  call void @show_fd_locks(%struct.seq_file* noundef %m, %struct.file* noundef %file.0, %struct.files_struct* noundef %2) #9
  %call27 = call fastcc i1 @seq_has_overflowed(%struct.seq_file* noundef %m) #8
  br i1 %call27, label %out, label %if.end29

if.end29:                                         ; preds = %if.end24
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file.0, i64 0, i32 3
  %10 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %show_fdinfo = getelementptr inbounds %struct.file_operations, %struct.file_operations* %10, i64 0, i32 28
  %11 = load void (%struct.seq_file*, %struct.file*)*, void (%struct.seq_file*, %struct.file*)** %show_fdinfo, align 8
  %tobool30.not = icmp eq void (%struct.seq_file*, %struct.file*)* %11, null
  br i1 %tobool30.not, label %out, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void %11(%struct.seq_file* noundef %m, %struct.file* noundef %file.0) #9
  br label %out

out:                                              ; preds = %if.end29, %if.then31, %if.end24
  call void @fput(%struct.file* noundef %file.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry, %out
  %retval.0 = phi i32 [ 0, %out ], [ -2, %entry ], [ %ret.1, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @files_lookup_fd_locked(%struct.files_struct* noundef %files, i32 noundef %fd) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.file* @files_lookup_fd_raw(%struct.files_struct* noundef %files, i32 noundef %fd) #8
  ret %struct.file* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @close_on_exec(i32 noundef %fd, %struct.fdtable* nocapture noundef readonly %fdt) unnamed_addr #7 {
entry:
  %close_on_exec = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 2
  %0 = load i64*, i64** %close_on_exec, align 8
  %div.i = lshr i32 %fd, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %0, i64 %idxprom.i
  %1 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %fd, 63
  %sh_prom.i = zext i32 %and.i to i64
  %2 = shl nuw i64 1, %sh_prom.i
  %3 = and i64 %1, %2
  %tobool = icmp ne i64 %3, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_file(%struct.file* noundef %f) unnamed_addr #1 {
entry:
  %f_count = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 6
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %f_count) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef readnone %mnt) unnamed_addr #5 {
entry:
  %add.ptr2 = getelementptr %struct.vfsmount, %struct.vfsmount* %mnt, i64 -1
  %0 = bitcast %struct.vfsmount* %add.ptr2 to %struct.mount*
  ret %struct.mount* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_fd_locks(%struct.seq_file* noundef, %struct.file* noundef, %struct.files_struct* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @seq_has_overflowed(%struct.seq_file* nocapture noundef readonly %m) unnamed_addr #3 {
entry:
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @files_lookup_fd_raw(%struct.files_struct* noundef %files, i32 noundef %fd) unnamed_addr #1 {
entry:
  %fdt1 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 3
  %0 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 0
  %1 = load i32, i32* %max_fds, align 8
  %cmp = icmp ugt i32 %1, %fd
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %conv = zext i32 %fd to i64
  %conv4 = zext i32 %1 to i64
  %call = call fastcc i64 @array_index_mask_nospec(i64 noundef %conv, i64 noundef %conv4) #8
  %2 = trunc i64 %call to i32
  %conv13 = and i32 %2, %fd
  %fd19 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 1
  %3 = load %struct.file**, %struct.file*** %fd19, align 8
  %idxprom = zext i32 %conv13 to i64
  %arrayidx = getelementptr %struct.file*, %struct.file** %3, i64 %idxprom
  %4 = load volatile %struct.file*, %struct.file** %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.file* [ %4, %if.then ], [ null, %entry ]
  ret %struct.file* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @array_index_mask_nospec(i64 noundef %idx, i64 noundef %sz) unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect "\09cmp\09$1, $2\0A\09sbc\09$0, xzr, xzr\0A", "=r,r,Ir,~{cc}"(i64 %idx, i64 %sz) #11, !srcloc !19
  call void asm sideeffect "hint #20", "~{memory}"() #11, !srcloc !20
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #11, !srcloc !21
  ret void
}

attributes #0 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind readnone }
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
!7 = !{i64 1455731}
!8 = !{!"auto-init"}
!9 = !{i64 2149752472}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147906815, i64 2147906848, i64 2147906901, i64 2147906960, i64 2147906994, i64 2147907049, i64 2147907078, i64 2147907098}
!12 = !{i64 2149763814}
!13 = !{i64 2149706601}
!14 = !{i64 2149911777}
!15 = !{i64 2147828699, i64 2147829373, i64 2147829403, i64 2147829435, i64 2147829469, i64 2147829505, i64 2147829530}
!16 = !{i64 2149383352}
!17 = !{i64 2149383569}
!18 = !{%struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* @proc_fd_instantiate, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* @proc_fdinfo_instantiate}
!19 = !{i64 296928, i64 296946}
!20 = !{i64 2147784130}
!21 = !{i64 2147851639, i64 2147852153, i64 2147852183, i64 2147852209, i64 2147852241, i64 2147852270}
