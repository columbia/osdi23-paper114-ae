; ModuleID = 'fs/readdir.c'
source_filename = "fs/readdir.c"
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.58, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.17, %union.anon.36, %struct.atomic_t, [8 x i8] }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.36 = type { %struct.atomic_t }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.43, %union.anon.44, i32 }
%struct.request_queue = type opaque
%union.anon.43 = type { %struct.list_head }
%union.anon.44 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.49 }
%struct.anon.49 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.57, i32, [12 x i8] }
%union.anon.57 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.59, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.59 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.61 = type { %struct.callback_head }
%union.anon.62 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.19 }
%union.anon.19 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.21 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, {}*, {}*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.65 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.63, %struct.qspinlock }
%union.anon.63 = type { %struct.atomic_t }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.42 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.42 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.pt_regs = type { %union.anon.72, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.72 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.linux_dirent = type { i64, i64, i16, [1 x i8] }
%struct.linux_dirent64 = type { i64, i64, i16, i8, [0 x i8] }
%struct.getdents_callback = type { %struct.dir_context, %struct.linux_dirent*, i32, i32, i32 }
%struct.getdents_callback64 = type { %struct.dir_context, %struct.linux_dirent64*, i32, i32, i32 }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @iterate_dir(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #6
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %iterate_shared = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 8
  %iterate_shared1 = bitcast {}** %iterate_shared to i32 (%struct.file*, %struct.dir_context*)**
  %1 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %iterate_shared1, align 8
  %tobool.not = icmp eq i32 (%struct.file*, %struct.dir_context*)* %1, null
  br i1 %tobool.not, label %if.else, label %if.then12

if.else:                                          ; preds = %entry
  %iterate = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 7
  %iterate3 = bitcast {}** %iterate to i32 (%struct.file*, %struct.dir_context*)**
  %2 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %iterate3, align 8
  %tobool4.not = icmp eq i32 (%struct.file*, %struct.dir_context*)* %2, null
  br i1 %tobool4.not, label %out, label %if.else14

if.then12:                                        ; preds = %entry
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 21
  %call13 = call i32 @down_read_killable(%struct.rw_semaphore* noundef %i_rwsem) #7
  br label %if.end17

if.else14:                                        ; preds = %if.else
  %i_rwsem15 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 21
  %call16 = call i32 @down_write_killable(%struct.rw_semaphore* noundef %i_rwsem15) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then12
  %res.0 = phi i32 [ %call13, %if.then12 ], [ %call16, %if.else14 ]
  %tobool18.not = icmp eq i32 %res.0, 0
  br i1 %tobool18.not, label %if.end20, label %out

if.end20:                                         ; preds = %if.end17
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 4
  %3 = load i32, i32* %i_flags, align 4
  %and = and i32 %3, 16
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.then22, label %if.end37

if.then22:                                        ; preds = %if.end20
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  %4 = load i64, i64* %f_pos, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  store i64 %4, i64* %pos, align 8
  %5 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %iterate31 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %5, i64 0, i32 7
  %iterate_shared26 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %5, i64 0, i32 8
  %iterate31.sink = select i1 %tobool.not, {}** %iterate31, {}** %iterate_shared26
  %iterate32 = bitcast {}** %iterate31.sink to i32 (%struct.file*, %struct.dir_context*)**
  %6 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %iterate32, align 8
  %call33 = call i32 %6(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #7
  %7 = load i64, i64* %pos, align 8
  store i64 %7, i64* %f_pos, align 8
  call fastcc void @fsnotify_access(%struct.file* noundef %file) #6
  call fastcc void @file_accessed(%struct.file* noundef %file) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then22, %if.end20
  %res.2 = phi i32 [ -2, %if.end20 ], [ %call33, %if.then22 ]
  br i1 %tobool.not, label %if.else40, label %if.then39

if.then39:                                        ; preds = %if.end37
  call fastcc void @inode_unlock_shared(%struct.inode* noundef %call) #6
  br label %out

if.else40:                                        ; preds = %if.end37
  call fastcc void @inode_unlock(%struct.inode* noundef %call) #6
  br label %out

out:                                              ; preds = %if.then39, %if.else40, %if.end17, %if.else
  %res.3 = phi i32 [ %res.0, %if.end17 ], [ %res.2, %if.then39 ], [ %res.2, %if.else40 ], [ -20, %if.else ]
  ret i32 %res.3
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_access(%struct.file* nocapture noundef readonly %file) unnamed_addr #4 {
entry:
  call fastcc void @fsnotify_file(%struct.file* noundef %file) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_accessed(%struct.file* noundef %file) unnamed_addr #0 {
entry:
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %and = and i32 %0, 262144
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1
  call void @touch_atime(%struct.path* noundef %f_path) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock_shared(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_read(%struct.rw_semaphore* noundef %i_rwsem) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getdents(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_getdents(i64 noundef %0, i64 noundef %1, i64 noundef %2) #6
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getdents(i64 noundef %fd, i64 noundef %dirent, i64 noundef %count) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %0 = inttoptr i64 %dirent to %struct.linux_dirent*
  %conv1 = trunc i64 %count to i32
  %call = call fastcc i64 @__do_sys_getdents(i32 noundef %conv, %struct.linux_dirent* noundef %0, i32 noundef %conv1) #6
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getdents64(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_getdents64(i64 noundef %0, i64 noundef %1, i64 noundef %2) #6
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getdents64(i64 noundef %fd, i64 noundef %dirent, i64 noundef %count) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %0 = inttoptr i64 %dirent to %struct.linux_dirent64*
  %conv1 = trunc i64 %count to i32
  %call = call fastcc i64 @__do_sys_getdents64(i32 noundef %conv, %struct.linux_dirent64* noundef %0, i32 noundef %conv1) #6
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_file(%struct.file* nocapture noundef readonly %file) unnamed_addr #4 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 67108864
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call fastcc void @fsnotify_parent(%struct.dentry* noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_parent(%struct.dentry* noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(%struct.path* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getdents(i32 noundef %fd, %struct.linux_dirent* noundef %dirent, i32 noundef %count) unnamed_addr #0 {
entry:
  %buf = alloca %struct.getdents_callback, align 8
  %0 = bitcast %struct.getdents_callback* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8
  %1 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buf, i64 0, i32 4
  %2 = bitcast i32* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %actor = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buf, i64 0, i32 0, i32 0
  store i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)* @filldir, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buf, i64 0, i32 0, i32 1
  store i64 0, i64* %pos, align 8
  %current_dir = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buf, i64 0, i32 1
  store %struct.linux_dirent* %dirent, %struct.linux_dirent** %current_dir, align 8
  %prev_reclen = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buf, i64 0, i32 2
  store i32 0, i32* %prev_reclen, align 8
  %count1 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buf, i64 0, i32 3
  store i32 %count, i32* %count1, align 4
  %call = call fastcc [2 x i64] @fdget_pos(i32 noundef %fd) #6
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %error = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buf, i64 0, i32 4
  %3 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %ctx = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buf, i64 0, i32 0
  %call5 = call i32 @iterate_dir(%struct.file* noundef nonnull %3, %struct.dir_context* noundef nonnull %ctx) #6
  %cmp = icmp sgt i32 %call5, -1
  %4 = load i32, i32* %error, align 8
  %spec.select = select i1 %cmp, i32 %4, i32 %call5
  %5 = load i32, i32* %prev_reclen, align 8
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %if.end35, label %if.then11

if.then11:                                        ; preds = %if.end
  %6 = bitcast %struct.linux_dirent** %current_dir to i8**
  %7 = load i8*, i8** %6, align 8
  %idx.ext = sext i32 %5 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr i8, i8* %7, i64 %idx.neg
  %d_off = getelementptr inbounds i8, i8* %add.ptr, i64 8
  %call14 = call fastcc i64 @__range_ok(i8* noundef %d_off, i64 noundef 8) #6
  %tobool15.not = icmp eq i64 %call14, 0
  br i1 %tobool15.not, label %if.end35, label %if.then16

if.then16:                                        ; preds = %if.then11
  %call17 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %d_off) #6
  %8 = bitcast i8* %call17 to i64*
  %9 = load i64, i64* %pos, align 8
  %10 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %9, i64* %8, i32 -14, i32 0) #8, !srcloc !8
  %phi.cmp = icmp eq i32 %10, 0
  br i1 %phi.cmp, label %if.else32, label %if.end35

if.else32:                                        ; preds = %if.then16
  %11 = load i32, i32* %count1, align 4
  %sub = sub i32 %count, %11
  br label %if.end35

if.end35:                                         ; preds = %if.then11, %if.else32, %if.then16, %if.end
  %error2.2 = phi i32 [ %spec.select, %if.end ], [ %sub, %if.else32 ], [ -14, %if.then16 ], [ -14, %if.then11 ]
  call fastcc void @fdput_pos([2 x i64] %call) #6
  %conv = sext i32 %error2.2 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end35
  %retval.0 = phi i64 [ %conv, %if.end35 ], [ -9, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @filldir(%struct.dir_context* nocapture noundef %ctx, i8* noundef %name, i32 noundef %namlen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #0 {
entry:
  %conv = sext i32 %namlen to i64
  %add2 = add i32 %namlen, 27
  %and = and i32 %add2, -8
  %call = call fastcc i32 @verify_dirent_name(i8* noundef %name, i32 noundef %namlen) #6
  %error = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 2
  %0 = bitcast %struct.dir_context* %error to i32*
  store i32 %call, i32* %0, align 8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup232, !prof !9

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.dir_context* %ctx to %struct.getdents_callback*
  store i32 -22, i32* %0, align 8
  %count = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %1, i64 0, i32 3
  %2 = load i32, i32* %count, align 4
  %cmp = icmp sgt i32 %and, %2
  br i1 %cmp, label %cleanup232, label %if.end12

if.end12:                                         ; preds = %if.end
  %prev_reclen13 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 1, i32 1
  %3 = bitcast i64* %prev_reclen13 to i32*
  %4 = load i32, i32* %3, align 8
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #9, !srcloc !10
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %call16 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %6) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup232

if.end19:                                         ; preds = %land.lhs.true, %if.end12
  %current_dir = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 1
  %7 = bitcast %struct.dir_context* %current_dir to %struct.linux_dirent**
  %8 = load %struct.linux_dirent*, %struct.linux_dirent** %7, align 8
  %9 = bitcast %struct.linux_dirent* %8 to i8*
  %idx.ext = sext i32 %4 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr20 = getelementptr i8, i8* %9, i64 %idx.neg
  %add21 = add i32 %4, %and
  %conv22 = sext i32 %add21 to i64
  %call23 = call fastcc i64 @__range_ok(i8* noundef %add.ptr20, i64 noundef %conv22) #6
  %tobool24.not = icmp eq i64 %call23, 0
  br i1 %tobool24.not, label %efault, label %do.body27

do.body27:                                        ; preds = %if.end19
  %d_off = getelementptr inbounds i8, i8* %add.ptr20, i64 8
  %call29 = call fastcc i64 @__range_ok(i8* noundef %d_off, i64 noundef 8) #6
  %tobool30.not = icmp eq i64 %call29, 0
  br i1 %tobool30.not, label %efault, label %if.then31

if.then31:                                        ; preds = %do.body27
  %call32 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %d_off) #6
  %10 = bitcast i8* %call32 to i64*
  %11 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %offset, i64* %10, i32 -14, i32 0) #8, !srcloc !11
  %phi.cmp = icmp eq i32 %11, 0
  br i1 %phi.cmp, label %do.body57, label %efault, !prof !9

do.body57:                                        ; preds = %if.then31
  %call62 = call fastcc i64 @__range_ok(i8* noundef %9, i64 noundef 8) #6
  %tobool63.not = icmp eq i64 %call62, 0
  br i1 %tobool63.not, label %efault, label %if.then64

if.then64:                                        ; preds = %do.body57
  %call65 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %9) #6
  %12 = bitcast i8* %call65 to i64*
  %13 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %ino, i64* %12, i32 -14, i32 0) #8, !srcloc !12
  %phi.cmp305 = icmp eq i32 %13, 0
  br i1 %phi.cmp305, label %do.body92, label %efault, !prof !9

do.body92:                                        ; preds = %if.then64
  %d_reclen = getelementptr inbounds %struct.linux_dirent, %struct.linux_dirent* %8, i64 0, i32 2
  %14 = bitcast i16* %d_reclen to i8*
  %call96 = call fastcc i64 @__range_ok(i8* noundef %14, i64 noundef 2) #6
  %tobool97.not = icmp eq i64 %call96, 0
  br i1 %tobool97.not, label %efault, label %if.then98

if.then98:                                        ; preds = %do.body92
  %call99 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %14) #6
  %15 = bitcast i8* %call99 to i16*
  %conv104 = trunc i32 %and to i16
  %16 = call i32 asm sideeffect "1:\09sttrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %conv104, i16* %15, i32 -14, i32 0) #8, !srcloc !13
  %phi.cmp306 = icmp eq i32 %16, 0
  br i1 %phi.cmp306, label %do.body127, label %efault, !prof !9

do.body127:                                       ; preds = %if.then98
  %idx.ext131 = sext i32 %and to i64
  %add.ptr132 = getelementptr i8, i8* %9, i64 %idx.ext131
  %add.ptr133 = getelementptr i8, i8* %add.ptr132, i64 -1
  %call134 = call fastcc i64 @__range_ok(i8* noundef %add.ptr133, i64 noundef 1) #6
  %tobool135.not = icmp eq i64 %call134, 0
  br i1 %tobool135.not, label %efault, label %if.then136

if.then136:                                       ; preds = %do.body127
  %call137 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr133) #6
  %conv142 = trunc i32 %d_type to i8
  %17 = call i32 asm sideeffect "1:\09sttrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i8 %conv142, i8* %call137, i32 -14, i32 0) #8, !srcloc !14
  %phi.cmp307 = icmp eq i32 %17, 0
  br i1 %phi.cmp307, label %do.body165, label %efault, !prof !9

do.body165:                                       ; preds = %if.then136
  %arraydecay = getelementptr inbounds %struct.linux_dirent, %struct.linux_dirent* %8, i64 0, i32 3, i64 0
  %add.ptr171 = getelementptr %struct.linux_dirent, %struct.linux_dirent* %8, i64 0, i32 3, i64 %conv
  %call172 = call fastcc i64 @__range_ok(i8* noundef %add.ptr171, i64 noundef 1) #6
  %tobool173.not = icmp eq i64 %call172, 0
  br i1 %tobool173.not, label %efault, label %if.then174

if.then174:                                       ; preds = %do.body165
  %call175 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr171) #6
  %18 = call i32 asm sideeffect "1:\09sttrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i8 0, i8* %call175, i32 -14, i32 0) #8, !srcloc !15
  %phi.cmp308 = icmp eq i32 %18, 0
  br i1 %phi.cmp308, label %do.body202, label %efault, !prof !9

do.body202:                                       ; preds = %if.then174
  %call2.i = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %arraydecay) #7
  %call3.i = call i64 @__arch_copy_to_user(i8* noundef %call2.i, i8* noundef %name, i64 noundef %conv) #7
  %tobool204.not = icmp eq i64 %call3.i, 0
  br i1 %tobool204.not, label %do.end222, label %efault

do.end222:                                        ; preds = %do.body202
  %19 = bitcast %struct.dir_context* %current_dir to i8**
  store i8* %add.ptr132, i8** %19, align 8
  store i32 %and, i32* %3, align 8
  %20 = load i32, i32* %count, align 4
  %sub = sub i32 %20, %and
  store i32 %sub, i32* %count, align 4
  br label %cleanup232

efault:                                           ; preds = %do.body165, %do.body202, %if.then174, %do.body127, %do.body92, %do.body57, %do.body27, %if.then136, %if.then98, %if.then64, %if.then31, %if.end19
  store i32 -14, i32* %0, align 8
  br label %cleanup232

cleanup232:                                       ; preds = %land.lhs.true, %if.end, %entry, %efault, %do.end222
  %retval.0 = phi i32 [ -14, %efault ], [ 0, %do.end222 ], [ %call, %entry ], [ -22, %if.end ], [ -4, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget_pos(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget_pos(i32 noundef %fd) #7
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #6
  ret [2 x i64] %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #8, !srcloc !16
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #8, !srcloc !17
  call void asm sideeffect "hint #20", "~{memory}"() #8, !srcloc !18
  ret i8* %2
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
  call void @__f_unlock_pos(%struct.file* noundef %0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @fdput([2 x i64] %f.coerce) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @verify_dirent_name(i8* noundef %name, i32 noundef %len) unnamed_addr #0 {
entry:
  %0 = add i32 %len, -4096
  %1 = icmp ult i32 %0, -4095
  br i1 %1, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv6 = zext i32 %len to i64
  %call = call i8* @memchr(i8* noundef %name, i32 noundef 47, i64 noundef %conv6) #7
  %tobool.not = icmp eq i8* %call, null
  %. = select i1 %tobool.not, i32 0, i32 -5
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -5, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !9

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #6
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #6
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #6
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #4 {
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
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #5 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

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
declare dso_local i64 @__fdget_pos(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__f_unlock_pos(%struct.file* noundef) local_unnamed_addr #3

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
  call void @fput(%struct.file* noundef %0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getdents64(i32 noundef %fd, %struct.linux_dirent64* noundef %dirent, i32 noundef %count) unnamed_addr #0 {
entry:
  %buf = alloca %struct.getdents_callback64, align 8
  %0 = bitcast %struct.getdents_callback64* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8
  %1 = getelementptr inbounds %struct.getdents_callback64, %struct.getdents_callback64* %buf, i64 0, i32 4
  %2 = bitcast i32* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %actor = getelementptr inbounds %struct.getdents_callback64, %struct.getdents_callback64* %buf, i64 0, i32 0, i32 0
  store i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)* @filldir64, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.getdents_callback64, %struct.getdents_callback64* %buf, i64 0, i32 0, i32 1
  store i64 0, i64* %pos, align 8
  %current_dir = getelementptr inbounds %struct.getdents_callback64, %struct.getdents_callback64* %buf, i64 0, i32 1
  store %struct.linux_dirent64* %dirent, %struct.linux_dirent64** %current_dir, align 8
  %prev_reclen = getelementptr inbounds %struct.getdents_callback64, %struct.getdents_callback64* %buf, i64 0, i32 2
  store i32 0, i32* %prev_reclen, align 8
  %count1 = getelementptr inbounds %struct.getdents_callback64, %struct.getdents_callback64* %buf, i64 0, i32 3
  store i32 %count, i32* %count1, align 4
  %call = call fastcc [2 x i64] @fdget_pos(i32 noundef %fd) #6
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %error = getelementptr inbounds %struct.getdents_callback64, %struct.getdents_callback64* %buf, i64 0, i32 4
  %3 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %ctx = getelementptr inbounds %struct.getdents_callback64, %struct.getdents_callback64* %buf, i64 0, i32 0
  %call5 = call i32 @iterate_dir(%struct.file* noundef nonnull %3, %struct.dir_context* noundef nonnull %ctx) #6
  %cmp = icmp sgt i32 %call5, -1
  %4 = load i32, i32* %error, align 8
  %spec.select = select i1 %cmp, i32 %4, i32 %call5
  %5 = load i32, i32* %prev_reclen, align 8
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %if.end36, label %if.then11

if.then11:                                        ; preds = %if.end
  %6 = load i64, i64* %pos, align 8
  %7 = bitcast %struct.linux_dirent64** %current_dir to i8**
  %8 = load i8*, i8** %7, align 8
  %idx.ext = sext i32 %5 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.neg
  %d_off16 = getelementptr inbounds i8, i8* %add.ptr, i64 8
  %call17 = call fastcc i64 @__range_ok(i8* noundef %d_off16, i64 noundef 8) #6
  %tobool18.not = icmp eq i64 %call17, 0
  br i1 %tobool18.not, label %if.end36, label %if.then19

if.then19:                                        ; preds = %if.then11
  %call20 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %d_off16) #6
  %9 = bitcast i8* %call20 to i64*
  %10 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %6, i64* %9, i32 -14, i32 0) #8, !srcloc !19
  %phi.cmp = icmp eq i32 %10, 0
  br i1 %phi.cmp, label %if.else33, label %if.end36

if.else33:                                        ; preds = %if.then19
  %11 = load i32, i32* %count1, align 4
  %sub = sub i32 %count, %11
  br label %if.end36

if.end36:                                         ; preds = %if.then11, %if.else33, %if.then19, %if.end
  %error2.2 = phi i32 [ %spec.select, %if.end ], [ %sub, %if.else33 ], [ -14, %if.then19 ], [ -14, %if.then11 ]
  call fastcc void @fdput_pos([2 x i64] %call) #6
  %conv = sext i32 %error2.2 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end36
  %retval.0 = phi i64 [ %conv, %if.end36 ], [ -9, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @filldir64(%struct.dir_context* nocapture noundef %ctx, i8* noundef %name, i32 noundef %namlen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #0 {
entry:
  %conv = sext i32 %namlen to i64
  %add2 = add i32 %namlen, 27
  %and = and i32 %add2, -8
  %call = call fastcc i32 @verify_dirent_name(i8* noundef %name, i32 noundef %namlen) #6
  %error = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 2
  %0 = bitcast %struct.dir_context* %error to i32*
  store i32 %call, i32* %0, align 8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup229, !prof !9

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.dir_context* %ctx to %struct.getdents_callback64*
  store i32 -22, i32* %0, align 8
  %count = getelementptr inbounds %struct.getdents_callback64, %struct.getdents_callback64* %1, i64 0, i32 3
  %2 = load i32, i32* %count, align 4
  %cmp = icmp sgt i32 %and, %2
  br i1 %cmp, label %cleanup229, label %if.end12

if.end12:                                         ; preds = %if.end
  %prev_reclen13 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 1, i32 1
  %3 = bitcast i64* %prev_reclen13 to i32*
  %4 = load i32, i32* %3, align 8
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #9, !srcloc !10
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %call16 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %6) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup229

if.end19:                                         ; preds = %land.lhs.true, %if.end12
  %current_dir = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 1
  %7 = bitcast %struct.dir_context* %current_dir to %struct.linux_dirent64**
  %8 = load %struct.linux_dirent64*, %struct.linux_dirent64** %7, align 8
  %9 = bitcast %struct.linux_dirent64* %8 to i8*
  %idx.ext = sext i32 %4 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr20 = getelementptr i8, i8* %9, i64 %idx.neg
  %add21 = add i32 %4, %and
  %conv22 = sext i32 %add21 to i64
  %call23 = call fastcc i64 @__range_ok(i8* noundef %add.ptr20, i64 noundef %conv22) #6
  %tobool24.not = icmp eq i64 %call23, 0
  br i1 %tobool24.not, label %efault, label %do.body27

do.body27:                                        ; preds = %if.end19
  %d_off = getelementptr inbounds i8, i8* %add.ptr20, i64 8
  %call29 = call fastcc i64 @__range_ok(i8* noundef %d_off, i64 noundef 8) #6
  %tobool30.not = icmp eq i64 %call29, 0
  br i1 %tobool30.not, label %efault, label %if.then31

if.then31:                                        ; preds = %do.body27
  %call32 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %d_off) #6
  %10 = bitcast i8* %call32 to i64*
  %11 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %offset, i64* %10, i32 -14, i32 0) #8, !srcloc !20
  %phi.cmp = icmp eq i32 %11, 0
  br i1 %phi.cmp, label %do.body57, label %efault, !prof !9

do.body57:                                        ; preds = %if.then31
  %call61 = call fastcc i64 @__range_ok(i8* noundef %9, i64 noundef 8) #6
  %tobool62.not = icmp eq i64 %call61, 0
  br i1 %tobool62.not, label %efault, label %if.then63

if.then63:                                        ; preds = %do.body57
  %call64 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %9) #6
  %12 = bitcast i8* %call64 to i64*
  %13 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %ino, i64* %12, i32 -14, i32 0) #8, !srcloc !21
  %phi.cmp299 = icmp eq i32 %13, 0
  br i1 %phi.cmp299, label %do.body91, label %efault, !prof !9

do.body91:                                        ; preds = %if.then63
  %d_reclen = getelementptr inbounds %struct.linux_dirent64, %struct.linux_dirent64* %8, i64 0, i32 2
  %14 = bitcast i16* %d_reclen to i8*
  %call95 = call fastcc i64 @__range_ok(i8* noundef %14, i64 noundef 2) #6
  %tobool96.not = icmp eq i64 %call95, 0
  br i1 %tobool96.not, label %efault, label %if.then97

if.then97:                                        ; preds = %do.body91
  %call98 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %14) #6
  %15 = bitcast i8* %call98 to i16*
  %conv103 = trunc i32 %and to i16
  %16 = call i32 asm sideeffect "1:\09sttrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %conv103, i16* %15, i32 -14, i32 0) #8, !srcloc !22
  %phi.cmp300 = icmp eq i32 %16, 0
  br i1 %phi.cmp300, label %do.body126, label %efault, !prof !9

do.body126:                                       ; preds = %if.then97
  %d_type130 = getelementptr inbounds %struct.linux_dirent64, %struct.linux_dirent64* %8, i64 0, i32 3
  %call131 = call fastcc i64 @__range_ok(i8* noundef %d_type130, i64 noundef 1) #6
  %tobool132.not = icmp eq i64 %call131, 0
  br i1 %tobool132.not, label %efault, label %if.then133

if.then133:                                       ; preds = %do.body126
  %call134 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %d_type130) #6
  %conv139 = trunc i32 %d_type to i8
  %17 = call i32 asm sideeffect "1:\09sttrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i8 %conv139, i8* %call134, i32 -14, i32 0) #8, !srcloc !23
  %phi.cmp301 = icmp eq i32 %17, 0
  br i1 %phi.cmp301, label %do.body162, label %efault, !prof !9

do.body162:                                       ; preds = %if.then133
  %arraydecay = getelementptr inbounds %struct.linux_dirent64, %struct.linux_dirent64* %8, i64 0, i32 4, i64 0
  %add.ptr168 = getelementptr %struct.linux_dirent64, %struct.linux_dirent64* %8, i64 0, i32 4, i64 %conv
  %call169 = call fastcc i64 @__range_ok(i8* noundef %add.ptr168, i64 noundef 1) #6
  %tobool170.not = icmp eq i64 %call169, 0
  br i1 %tobool170.not, label %efault, label %if.then171

if.then171:                                       ; preds = %do.body162
  %call172 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr168) #6
  %18 = call i32 asm sideeffect "1:\09sttrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i8 0, i8* %call172, i32 -14, i32 0) #8, !srcloc !24
  %phi.cmp302 = icmp eq i32 %18, 0
  br i1 %phi.cmp302, label %do.body199, label %efault, !prof !9

do.body199:                                       ; preds = %if.then171
  %call2.i = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %arraydecay) #7
  %call3.i = call i64 @__arch_copy_to_user(i8* noundef %call2.i, i8* noundef %name, i64 noundef %conv) #7
  %tobool201.not = icmp eq i64 %call3.i, 0
  br i1 %tobool201.not, label %do.end219, label %efault

do.end219:                                        ; preds = %do.body199
  store i32 %and, i32* %3, align 8
  %idx.ext221 = sext i32 %and to i64
  %add.ptr222 = getelementptr i8, i8* %9, i64 %idx.ext221
  %19 = bitcast %struct.dir_context* %current_dir to i8**
  store i8* %add.ptr222, i8** %19, align 8
  %20 = load i32, i32* %count, align 4
  %sub = sub i32 %20, %and
  store i32 %sub, i32* %count, align 4
  br label %cleanup229

efault:                                           ; preds = %do.body162, %do.body199, %if.then171, %do.body126, %do.body91, %do.body57, %do.body27, %if.then133, %if.then97, %if.then63, %if.then31, %if.end19
  store i32 -14, i32* %0, align 8
  br label %cleanup229

cleanup229:                                       ; preds = %land.lhs.true, %if.end, %entry, %efault, %do.end219
  %retval.0 = phi i32 [ -14, %efault ], [ 0, %do.end219 ], [ %call, %entry ], [ -22, %if.end ], [ -4, %land.lhs.true ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

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
!8 = !{i64 2154972862, i64 2154972900, i64 2154972917, i64 2154972951, i64 2154972973, i64 2154972999, i64 2154973017, i64 2154973175, i64 2154973216, i64 2154973238, i64 2154973284}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 1415914}
!11 = !{i64 2154920972, i64 2154921012, i64 2154921029, i64 2154921063, i64 2154921085, i64 2154921111, i64 2154921129, i64 2154921144, i64 2154921185, i64 2154921207, i64 2154921253}
!12 = !{i64 2154930158, i64 2154930198, i64 2154930215, i64 2154930249, i64 2154930271, i64 2154930297, i64 2154930315, i64 2154930330, i64 2154930371, i64 2154930393, i64 2154930439}
!13 = !{i64 2154938497, i64 2154938541, i64 2154938558, i64 2154938592, i64 2154938614, i64 2154938640, i64 2154938658, i64 2154938673, i64 2154938714, i64 2154938736, i64 2154938782}
!14 = !{i64 2154947417, i64 2154947461, i64 2154947478, i64 2154947512, i64 2154947534, i64 2154947560, i64 2154947578, i64 2154947593, i64 2154947634, i64 2154947656, i64 2154947702}
!15 = !{i64 2154956768, i64 2154956812, i64 2154956829, i64 2154956863, i64 2154956885, i64 2154956911, i64 2154956929, i64 2154956944, i64 2154956985, i64 2154957007, i64 2154957053}
!16 = !{i64 4571549, i64 4571632, i64 4571856, i64 4572076, i64 4572099}
!17 = !{i64 4576251, i64 4576275}
!18 = !{i64 2152091090}
!19 = !{i64 2155037134, i64 2155037172, i64 2155037189, i64 2155037223, i64 2155037245, i64 2155037271, i64 2155037289, i64 2155037447, i64 2155037488, i64 2155037510, i64 2155037556}
!20 = !{i64 2154985278, i64 2154985318, i64 2154985335, i64 2154985369, i64 2154985391, i64 2154985417, i64 2154985435, i64 2154985450, i64 2154985491, i64 2154985513, i64 2154985559}
!21 = !{i64 2154994450, i64 2154994490, i64 2154994507, i64 2154994541, i64 2154994563, i64 2154994589, i64 2154994607, i64 2154994622, i64 2154994663, i64 2154994685, i64 2154994731}
!22 = !{i64 2155002789, i64 2155002833, i64 2155002850, i64 2155002884, i64 2155002906, i64 2155002932, i64 2155002950, i64 2155002965, i64 2155003006, i64 2155003028, i64 2155003074}
!23 = !{i64 2155011549, i64 2155011593, i64 2155011610, i64 2155011644, i64 2155011666, i64 2155011692, i64 2155011710, i64 2155011725, i64 2155011766, i64 2155011788, i64 2155011834}
!24 = !{i64 2155020900, i64 2155020944, i64 2155020961, i64 2155020995, i64 2155021017, i64 2155021043, i64 2155021061, i64 2155021076, i64 2155021117, i64 2155021139, i64 2155021185}
