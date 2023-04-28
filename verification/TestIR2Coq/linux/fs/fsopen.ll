; ModuleID = 'fs/fsopen.c'
source_filename = "fs/fsopen.c"
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
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.9, i64, i32 }
%union.anon.9 = type { i8* }
%struct.net = type opaque
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.11 }
%union.anon.11 = type { i64 }
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
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.mnt_namespace = type { %struct.ns_common, %struct.mount*, %struct.list_head, %struct.spinlock, %struct.user_namespace*, %struct.ucounts*, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.mount = type { %struct.hlist_node, %struct.mount*, %struct.dentry*, %struct.vfsmount, %union.anon.74, %struct.mnt_pcp*, %struct.list_head, %struct.list_head, %struct.list_head, i8*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mount*, %struct.mnt_namespace*, %struct.mountpoint*, %union.anon.75, %struct.list_head, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%union.anon.74 = type { %struct.callback_head }
%struct.mnt_pcp = type { i32, i32 }
%struct.mountpoint = type { %struct.hlist_node, %struct.dentry*, %struct.hlist_head, i32 }
%union.anon.75 = type { %struct.hlist_node }
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
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.69 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, {}*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.65, %struct.qspinlock }
%union.anon.65 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.10 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.10 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.22 }
%union.anon.22 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.23, %union.anon.24 }
%union.anon.23 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.24 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.67 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.67 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.pt_regs = type { %union.anon.76, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.76 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.filename = type { i8*, i8*, i32, %struct.audit_names*, [0 x i8] }
%struct.audit_names = type opaque

@fscontext_fops = dso_local constant { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* } { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* @fscontext_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @fscontext_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"[fscontext]\00", align 1
@legacy_fs_context_ops = external dso_local constant %struct.fs_context_operations, align 8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @fscontext_read(%struct.file* nocapture noundef readonly %file, i8* noundef %_buf, i64 noundef %len, i64* nocapture noundef readnone %pos) #1 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.fs_context**
  %1 = load %struct.fs_context*, %struct.fs_context** %0, align 8
  %log2 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %1, i64 0, i32 9, i32 1
  %2 = load %struct.fc_log*, %struct.fc_log** %log2, align 8
  %uapi_mutex = getelementptr inbounds %struct.fs_context, %struct.fs_context* %1, i64 0, i32 1
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %uapi_mutex) #6
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.fc_log, %struct.fc_log* %2, i64 0, i32 1
  %3 = load i8, i8* %head, align 4
  %tail = getelementptr inbounds %struct.fc_log, %struct.fc_log* %2, i64 0, i32 2
  %4 = load i8, i8* %tail, align 1
  %cmp6 = icmp eq i8 %3, %4
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @mutex_unlock(%struct.mutex* noundef %uapi_mutex) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %5 = and i8 %4, 7
  %and = zext i8 %5 to i32
  %6 = zext i8 %5 to i64
  %arrayidx = getelementptr %struct.fc_log, %struct.fc_log* %2, i64 0, i32 5, i64 %6
  %7 = load i8*, i8** %arrayidx, align 8
  %need_free13 = getelementptr inbounds %struct.fc_log, %struct.fc_log* %2, i64 0, i32 3
  %8 = load i8, i8* %need_free13, align 2
  %conv14 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 1, %and
  %and15 = and i32 %shl, %conv14
  %tobool.not = icmp eq i32 %and15, 0
  store i8* null, i8** %arrayidx, align 8
  %9 = trunc i32 %shl to i8
  %10 = xor i8 %9, -1
  %conv23 = and i8 %8, %10
  store i8 %conv23, i8* %need_free13, align 2
  %inc = add i8 %4, 1
  store i8 %inc, i8* %tail, align 1
  call void @mutex_unlock(%struct.mutex* noundef %uapi_mutex) #6
  %call26 = call i64 @strlen(i8* noundef %7) #6
  %sext = shl i64 %call26, 32
  %conv28 = ashr exact i64 %sext, 32
  %cmp29 = icmp ugt i64 %conv28, %len
  br i1 %cmp29, label %err_free, label %if.end32

if.end32:                                         ; preds = %if.end10
  %cmp11.i.i = icmp ugt i64 %sext, 9223372032559808512
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !7

check_copy_size.exit.i:                           ; preds = %if.end32
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !8
  br label %err_free

if.then.i:                                        ; preds = %if.end32
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %_buf, i8* noundef %7, i64 noundef %conv28) #6
  %phi.cmp = icmp eq i64 %call2.i, 0
  %phi.sel = select i1 %phi.cmp, i64 %conv28, i64 -14
  br label %err_free

err_free:                                         ; preds = %if.then.i, %check_copy_size.exit.i, %if.end10
  %ret.0 = phi i64 [ -90, %if.end10 ], [ %phi.sel, %if.then.i ], [ -14, %check_copy_size.exit.i ]
  br i1 %tobool.not, label %cleanup, label %if.then41

if.then41:                                        ; preds = %err_free
  call void @kfree(i8* noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.then41, %if.then8, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ -61, %if.then8 ], [ %ret.0, %if.then41 ], [ %ret.0, %err_free ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @fscontext_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef %file) #1 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.fs_context**
  %1 = load %struct.fs_context*, %struct.fs_context** %0, align 8
  %tobool.not = icmp eq %struct.fs_context* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %private_data, align 8
  call void @put_fs_context(%struct.fs_context* noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fsopen(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_fsopen(i64 noundef %0, i64 noundef %1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fsopen(i64 noundef %_fs_name, i64 noundef %flags) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %_fs_name to i8*
  %conv = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_fsopen(i8* noundef %0, i32 noundef %conv) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fspick(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_fspick(i64 noundef %0, i64 noundef %1, i64 noundef %2) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fspick(i64 noundef %dfd, i64 noundef %path, i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %path to i8*
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_fspick(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fsconfig(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
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
  %call = call fastcc i64 @__se_sys_fsconfig(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fsconfig(i64 noundef %fd, i64 noundef %cmd, i64 noundef %_key, i64 noundef %_value, i64 noundef %aux) unnamed_addr #1 {
entry:
  %conv = trunc i64 %fd to i32
  %conv1 = trunc i64 %cmd to i32
  %0 = inttoptr i64 %_key to i8*
  %1 = inttoptr i64 %_value to i8*
  %conv2 = trunc i64 %aux to i32
  %call = call fastcc i64 @__do_sys_fsconfig(i32 noundef %conv, i32 noundef %conv1, i8* noundef %0, i8* noundef %1, i32 noundef %conv2) #8
  ret i64 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #1 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #8
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #8
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #6
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #1 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #7, !srcloc !9
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #7, !srcloc !10
  call void asm sideeffect "hint #20", "~{memory}"() #7, !srcloc !11
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(%struct.fs_context* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fsopen(i8* noundef %_fs_name, i32 noundef %flags) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #9, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 86
  %2 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %2, i64 0, i32 3
  %3 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %user_ns = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %3, i64 0, i32 4
  %4 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call1 = call i1 @ns_capable(%struct.user_namespace* noundef %4, i32 noundef 21) #6
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i8* @strndup_user(i8* noundef %_fs_name, i64 noundef 4096) #6
  %call5 = call fastcc i1 @IS_ERR(i8* noundef %call4) #8
  br i1 %call5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  %call7 = call fastcc i64 @PTR_ERR(i8* noundef %call4) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = call %struct.file_system_type* @get_fs_type(i8* noundef %call4) #6
  call void @kfree(i8* noundef %call4) #6
  %tobool10.not = icmp eq %struct.file_system_type* %call9, null
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = call %struct.fs_context* @fs_context_for_mount(%struct.file_system_type* noundef nonnull %call9, i32 noundef 0) #6
  call void @put_filesystem(%struct.file_system_type* noundef nonnull %call9) #6
  %5 = bitcast %struct.fs_context* %call13 to i8*
  %call14 = call fastcc i1 @IS_ERR(i8* noundef %5) #8
  br i1 %call14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %call16 = call fastcc i64 @PTR_ERR(i8* noundef %5) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %phase = getelementptr inbounds %struct.fs_context, %struct.fs_context* %call13, i64 0, i32 17
  %6 = bitcast i24* %phase to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, -65281
  store i32 %bf.clear, i32* %6, align 8
  %call18 = call fastcc i32 @fscontext_alloc_log(%struct.fs_context* noundef %call13) #8
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %err_fc, label %if.end20

if.end20:                                         ; preds = %if.end17
  %and21 = shl nuw nsw i32 %flags, 19
  %7 = and i32 %and21, 524288
  %call23 = call fastcc i32 @fscontext_create_fd(%struct.fs_context* noundef %call13, i32 noundef %7) #8
  %conv = sext i32 %call23 to i64
  br label %cleanup

err_fc:                                           ; preds = %if.end17
  call void @put_fs_context(%struct.fs_context* noundef %call13) #6
  %conv24 = sext i32 %call18 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %entry, %err_fc, %if.end20, %if.then15, %if.then6
  %retval.0 = phi i64 [ %call7, %if.then6 ], [ %call16, %if.then15 ], [ %conv24, %err_fc ], [ %conv, %if.end20 ], [ -1, %entry ], [ -22, %if.end ], [ -19, %if.end8 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strndup_user(i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file_system_type* @get_fs_type(i8* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fs_context* @fs_context_for_mount(%struct.file_system_type* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fscontext_alloc_log(%struct.fs_context* nocapture noundef %fc) unnamed_addr #1 {
entry:
  %call = call fastcc i8* @kzalloc() #8
  %log1 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %0 = bitcast %struct.fc_log** %log1 to i8**
  store i8* %call, i8** %0, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %usage = bitcast i8* %call to %struct.refcount_struct*
  call fastcc void @refcount_set(%struct.refcount_struct* noundef nonnull %usage) #8
  %fs_type = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 2
  %1 = load %struct.file_system_type*, %struct.file_system_type** %fs_type, align 8
  %owner = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %1, i64 0, i32 6
  %2 = load %struct.module*, %struct.module** %owner, align 8
  %3 = load %struct.fc_log*, %struct.fc_log** %log1, align 8
  %owner8 = getelementptr inbounds %struct.fc_log, %struct.fc_log* %3, i64 0, i32 4
  store %struct.module* %2, %struct.module** %owner8, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fscontext_create_fd(%struct.fs_context* noundef %fc, i32 noundef %o_flags) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.fs_context* %fc to i8*
  %or = or i32 %o_flags, 2
  %call = call i32 @anon_inode_getfd(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.file_operations* noundef bitcast ({ %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }* @fscontext_fops to %struct.file_operations*), i8* noundef %0, i32 noundef %or) #6
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @put_fs_context(%struct.fs_context* noundef %fc) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #6
  ret i8* %call.i.i
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(i8* noundef, %struct.file_operations* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fspick(i32 noundef %dfd, i8* noundef %path, i32 noundef %flags) unnamed_addr #1 {
entry:
  %target = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %target to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !13
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #9, !srcloc !12
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 86
  %3 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %3, i64 0, i32 3
  %4 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %user_ns = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %4, i64 0, i32 4
  %5 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call1 = call i1 @ns_capable(%struct.user_namespace* noundef %5, i32 noundef 21) #6
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp.not = icmp ult i32 %flags, 16
  br i1 %cmp.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %flags, 2
  %tobool.not = icmp eq i32 %and4, 0
  %spec.select = select i1 %tobool.not, i32 5, i32 4
  %and8 = and i32 %flags, 4
  %tobool9.not = icmp eq i32 %and8, 0
  %and11 = and i32 %spec.select, 1
  %lookup_flags.1 = select i1 %tobool9.not, i32 %spec.select, i32 %and11
  %and13 = shl nuw nsw i32 %flags, 11
  %6 = and i32 %and13, 16384
  %7 = or i32 %lookup_flags.1, %6
  %call17 = call fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %path, i32 noundef %7, %struct.path* noundef nonnull %target) #8
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %err, label %if.end20

if.end20:                                         ; preds = %if.end3
  %mnt = getelementptr inbounds %struct.path, %struct.path* %target, i64 0, i32 0
  %8 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %8, i64 0, i32 0
  %9 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %target, i64 0, i32 1
  %10 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %cmp21.not = icmp eq %struct.dentry* %9, %10
  br i1 %cmp21.not, label %if.end23, label %err_path

if.end23:                                         ; preds = %if.end20
  %call25 = call %struct.fs_context* @fs_context_for_reconfigure(%struct.dentry* noundef %9, i32 noundef 0, i32 noundef 0) #6
  %11 = bitcast %struct.fs_context* %call25 to i8*
  %call26 = call fastcc i1 @IS_ERR(i8* noundef %11) #8
  br i1 %call26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  %call28 = call fastcc i64 @PTR_ERR(i8* noundef %11) #8
  %conv = trunc i64 %call28 to i32
  br label %err_path

if.end29:                                         ; preds = %if.end23
  %phase = getelementptr inbounds %struct.fs_context, %struct.fs_context* %call25, i64 0, i32 17
  %12 = bitcast i24* %phase to i32*
  %bf.load = load i32, i32* %12, align 8
  %bf.clear = and i32 %bf.load, -65281
  %bf.set = or i32 %bf.clear, 1024
  store i32 %bf.set, i32* %12, align 8
  %call30 = call fastcc i32 @fscontext_alloc_log(%struct.fs_context* noundef %call25) #8
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %err_fc, label %if.end34

if.end34:                                         ; preds = %if.end29
  call void @path_put(%struct.path* noundef nonnull %target) #6
  %and35 = shl nuw nsw i32 %flags, 19
  %13 = and i32 %and35, 524288
  %call37 = call fastcc i32 @fscontext_create_fd(%struct.fs_context* noundef %call25, i32 noundef %13) #8
  %conv38 = sext i32 %call37 to i64
  br label %cleanup

err_fc:                                           ; preds = %if.end29
  call void @put_fs_context(%struct.fs_context* noundef %call25) #6
  br label %err_path

err_path:                                         ; preds = %if.end20, %err_fc, %if.then27
  %ret.0 = phi i32 [ -22, %if.end20 ], [ %conv, %if.then27 ], [ %call30, %err_fc ]
  call void @path_put(%struct.path* noundef nonnull %target) #6
  br label %err

err:                                              ; preds = %if.end3, %err_path
  %ret.1 = phi i32 [ %call17, %if.end3 ], [ %ret.0, %err_path ]
  %conv39 = sext i32 %ret.1 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err, %if.end34
  %retval.0 = phi i64 [ %conv39, %err ], [ %conv38, %if.end34 ], [ -1, %entry ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %name, i32 noundef %flags, %struct.path* noundef %path) unnamed_addr #1 {
entry:
  %call = call i32 @user_path_at_empty(i32 noundef %dfd, i8* noundef %name, i32 noundef %flags, %struct.path* noundef %path, i32* noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fs_context* @fs_context_for_reconfigure(%struct.dentry* noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, i8* noundef, i32 noundef, %struct.path* noundef, i32* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fsconfig(i32 noundef %fd, i32 noundef %cmd, i8* noundef %_key, i8* noundef %_value, i32 noundef %aux) unnamed_addr #1 {
entry:
  %param = alloca %struct.fs_parameter, align 8
  %0 = bitcast %struct.fs_parameter* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %cmp = icmp slt i32 %fd, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb14
    i32 3, label %sw.bb24
    i32 4, label %sw.bb24
    i32 5, label %sw.bb33
    i32 6, label %sw.bb41
    i32 7, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.end
  %tobool = icmp eq i8* %_key, null
  %tobool1 = icmp ne i8* %_value, null
  %or.cond = or i1 %tobool, %tobool1
  %tobool3 = icmp ne i32 %aux, 0
  %or.cond152 = or i1 %or.cond, %tobool3
  br i1 %or.cond152, label %cleanup, label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %tobool7 = icmp eq i8* %_key, null
  %tobool9 = icmp eq i8* %_value, null
  %or.cond153.not = or i1 %tobool7, %tobool9
  %tobool11 = icmp ne i32 %aux, 0
  %or.cond154 = or i1 %or.cond153.not, %tobool11
  br i1 %or.cond154, label %cleanup, label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %tobool15 = icmp eq i8* %_key, null
  %tobool17 = icmp eq i8* %_value, null
  %or.cond155.not = or i1 %tobool15, %tobool17
  %1 = add i32 %aux, -1048577
  %2 = icmp ult i32 %1, -1048576
  %3 = or i1 %or.cond155.not, %2
  br i1 %3, label %cleanup, label %sw.epilog

sw.bb24:                                          ; preds = %if.end, %if.end
  %tobool25 = icmp ne i8* %_key, null
  %tobool27 = icmp ne i8* %_value, null
  %or.cond158 = and i1 %tobool25, %tobool27
  br i1 %or.cond158, label %lor.lhs.false28, label %cleanup

lor.lhs.false28:                                  ; preds = %sw.bb24
  %cmp29 = icmp ne i32 %aux, -100
  %cmp30 = icmp slt i32 %aux, 0
  %or.cond159 = and i1 %cmp29, %cmp30
  br i1 %or.cond159, label %cleanup, label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  %tobool34 = icmp eq i8* %_key, null
  %tobool36 = icmp ne i8* %_value, null
  %or.cond160 = or i1 %tobool34, %tobool36
  %cmp38 = icmp slt i32 %aux, 0
  %or.cond161 = or i1 %or.cond160, %cmp38
  br i1 %or.cond161, label %cleanup, label %sw.epilog

sw.bb41:                                          ; preds = %if.end, %if.end
  %tobool42 = icmp ne i8* %_key, null
  %tobool44 = icmp ne i8* %_value, null
  %or.cond162 = or i1 %tobool42, %tobool44
  %tobool46 = icmp ne i32 %aux, 0
  %or.cond163 = or i1 %or.cond162, %tobool46
  br i1 %or.cond163, label %cleanup, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb33, %lor.lhs.false28, %sw.bb14, %sw.bb6, %sw.bb
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #8
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %4 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool49.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool49.not, label %cleanup, label %if.end51

if.end51:                                         ; preds = %sw.epilog
  %f_op = getelementptr inbounds %struct.file, %struct.file* %4, i64 0, i32 3
  %5 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %cmp53.not = icmp eq %struct.file_operations* %5, bitcast ({ %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }* @fscontext_fops to %struct.file_operations*)
  br i1 %cmp53.not, label %if.end55, label %out_f

if.end55:                                         ; preds = %if.end51
  %private_data = getelementptr inbounds %struct.file, %struct.file* %4, i64 0, i32 15
  %6 = bitcast i8** %private_data to %struct.fs_context**
  %7 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %ops = getelementptr inbounds %struct.fs_context, %struct.fs_context* %7, i64 0, i32 0
  %8 = load %struct.fs_context_operations*, %struct.fs_context_operations** %ops, align 8
  %cmp57 = icmp eq %struct.fs_context_operations* %8, @legacy_fs_context_ops
  %cmd.off = add nsw i32 %cmd, -2
  %switch = icmp ult i32 %cmd.off, 4
  %or.cond214 = and i1 %switch, %cmp57
  br i1 %or.cond214, label %out_f, label %if.end61

if.end61:                                         ; preds = %if.end55
  %tobool62.not = icmp eq i8* %_key, null
  br i1 %tobool62.not, label %if.end71, label %if.then63

if.then63:                                        ; preds = %if.end61
  %call64 = call i8* @strndup_user(i8* noundef nonnull %_key, i64 noundef 256) #6
  %key = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 0
  store i8* %call64, i8** %key, align 8
  %call66 = call fastcc i1 @IS_ERR(i8* noundef %call64) #8
  br i1 %call66, label %if.then67, label %if.end71

if.then67:                                        ; preds = %if.then63
  %call69 = call fastcc i64 @PTR_ERR(i8* noundef %call64) #8
  %conv = trunc i64 %call69 to i32
  br label %out_f

if.end71:                                         ; preds = %if.then63, %if.end61
  switch i32 %cmd, label %sw.epilog122 [
    i32 0, label %sw.bb72
    i32 1, label %sw.bb73
    i32 2, label %sw.bb85
    i32 4, label %sw.bb98
    i32 3, label %sw.bb99
    i32 5, label %sw.bb113
  ]

sw.bb72:                                          ; preds = %if.end71
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  store i8 1, i8* %type, align 8
  br label %sw.epilog122

sw.bb73:                                          ; preds = %if.end71
  %type74 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  store i8 2, i8* %type74, align 8
  %call75 = call i8* @strndup_user(i8* noundef %_value, i64 noundef 256) #6
  %string = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  store i8* %call75, i8** %string, align 8
  %call77 = call fastcc i1 @IS_ERR(i8* noundef %call75) #8
  br i1 %call77, label %if.then78, label %if.end82

if.then78:                                        ; preds = %sw.bb73
  %call80 = call fastcc i64 @PTR_ERR(i8* noundef %call75) #8
  %conv81 = trunc i64 %call80 to i32
  br label %out_key

if.end82:                                         ; preds = %sw.bb73
  %call84 = call i64 @strlen(i8* noundef %call75) #6
  %size = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 3
  store i64 %call84, i64* %size, align 8
  br label %sw.epilog122

sw.bb85:                                          ; preds = %if.end71
  %type86 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  store i8 3, i8* %type86, align 8
  %conv87 = sext i32 %aux to i64
  %size88 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 3
  store i64 %conv87, i64* %size88, align 8
  %call90 = call i8* @memdup_user_nul(i8* noundef %_value, i64 noundef %conv87) #6
  %blob = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  store i8* %call90, i8** %blob, align 8
  %call92 = call fastcc i1 @IS_ERR(i8* noundef %call90) #8
  br i1 %call92, label %if.then93, label %sw.epilog122

if.then93:                                        ; preds = %sw.bb85
  %call95 = call fastcc i64 @PTR_ERR(i8* noundef %call90) #8
  %conv96 = trunc i64 %call95 to i32
  br label %out_key

sw.bb98:                                          ; preds = %if.end71
  br label %sw.bb99

sw.bb99:                                          ; preds = %if.end71, %sw.bb98
  %lookup_flags.0 = phi i32 [ 0, %if.end71 ], [ 16384, %sw.bb98 ]
  %type100 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  store i8 4, i8* %type100, align 8
  %call101 = call %struct.filename* @getname_flags(i8* noundef %_value, i32 noundef %lookup_flags.0, i32* noundef null) #6
  %9 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2
  %name = bitcast %union.anon.9* %9 to %struct.filename**
  store %struct.filename* %call101, %struct.filename** %name, align 8
  %10 = bitcast %struct.filename* %call101 to i8*
  %call103 = call fastcc i1 @IS_ERR(i8* noundef %10) #8
  br i1 %call103, label %if.then104, label %if.end108

if.then104:                                       ; preds = %sw.bb99
  %call106 = call fastcc i64 @PTR_ERR(i8* noundef %10) #8
  %conv107 = trunc i64 %call106 to i32
  br label %out_key

if.end108:                                        ; preds = %sw.bb99
  %dirfd = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 4
  store i32 %aux, i32* %dirfd, align 8
  %name110 = getelementptr inbounds %struct.filename, %struct.filename* %call101, i64 0, i32 0
  %11 = load i8*, i8** %name110, align 8
  %call111 = call i64 @strlen(i8* noundef %11) #6
  %size112 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 3
  store i64 %call111, i64* %size112, align 8
  br label %sw.epilog122

sw.bb113:                                         ; preds = %if.end71
  %type114 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  store i8 5, i8* %type114, align 8
  %call115 = call %struct.file* @fget(i32 noundef %aux) #6
  %12 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2
  %file116 = bitcast %union.anon.9* %12 to %struct.file**
  store %struct.file* %call115, %struct.file** %file116, align 8
  %tobool118.not = icmp eq %struct.file* %call115, null
  br i1 %tobool118.not, label %out_key, label %sw.epilog122

sw.epilog122:                                     ; preds = %if.end71, %sw.bb113, %sw.bb85, %if.end108, %if.end82, %sw.bb72
  %uapi_mutex = getelementptr inbounds %struct.fs_context, %struct.fs_context* %7, i64 0, i32 1
  %call123 = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %uapi_mutex) #6
  %cmp124 = icmp eq i32 %call123, 0
  br i1 %cmp124, label %if.then126, label %if.end129

if.then126:                                       ; preds = %sw.epilog122
  %call127 = call fastcc i32 @vfs_fsconfig_locked(%struct.fs_context* noundef %7, i32 noundef %cmd, %struct.fs_parameter* noundef nonnull %param) #8
  call void @mutex_unlock(%struct.mutex* noundef %uapi_mutex) #6
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %sw.epilog122
  %ret.0 = phi i32 [ %call127, %if.then126 ], [ %call123, %sw.epilog122 ]
  switch i32 %cmd, label %out_key [
    i32 1, label %sw.bb130
    i32 2, label %sw.bb130
    i32 3, label %sw.bb132
    i32 4, label %sw.bb132
    i32 5, label %sw.bb138
  ]

sw.bb130:                                         ; preds = %if.end129, %if.end129
  %string131 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %13 = load i8*, i8** %string131, align 8
  call void @kfree(i8* noundef %13) #6
  br label %out_key

sw.bb132:                                         ; preds = %if.end129, %if.end129
  %14 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2
  %name133 = bitcast %union.anon.9* %14 to %struct.filename**
  %15 = load %struct.filename*, %struct.filename** %name133, align 8
  %tobool134.not = icmp eq %struct.filename* %15, null
  br i1 %tobool134.not, label %out_key, label %if.then135

if.then135:                                       ; preds = %sw.bb132
  call void @putname(%struct.filename* noundef nonnull %15) #6
  br label %out_key

sw.bb138:                                         ; preds = %if.end129
  %16 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2
  %file139 = bitcast %union.anon.9* %16 to %struct.file**
  %17 = load %struct.file*, %struct.file** %file139, align 8
  %tobool140.not = icmp eq %struct.file* %17, null
  br i1 %tobool140.not, label %out_key, label %if.then141

if.then141:                                       ; preds = %sw.bb138
  call void @fput(%struct.file* noundef nonnull %17) #6
  br label %out_key

out_key:                                          ; preds = %sw.bb130, %if.then135, %sw.bb132, %if.then141, %sw.bb138, %if.end129, %sw.bb113, %if.then104, %if.then93, %if.then78
  %ret.1 = phi i32 [ %ret.0, %if.end129 ], [ %ret.0, %if.then141 ], [ %ret.0, %sw.bb138 ], [ %ret.0, %if.then135 ], [ %ret.0, %sw.bb132 ], [ %ret.0, %sw.bb130 ], [ -9, %sw.bb113 ], [ %conv107, %if.then104 ], [ %conv96, %if.then93 ], [ %conv81, %if.then78 ]
  %key146 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 0
  %18 = load i8*, i8** %key146, align 8
  call void @kfree(i8* noundef %18) #6
  br label %out_f

out_f:                                            ; preds = %if.end55, %if.end51, %out_key, %if.then67
  %ret.2 = phi i32 [ -22, %if.end51 ], [ %conv, %if.then67 ], [ %ret.1, %out_key ], [ -95, %if.end55 ]
  call fastcc void @fdput([2 x i64] %call) #8
  %conv147 = sext i32 %ret.2 to i64
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end, %sw.bb41, %sw.bb33, %sw.bb24, %lor.lhs.false28, %sw.bb14, %sw.bb6, %sw.bb, %entry, %out_f
  %retval.0 = phi i64 [ %conv147, %out_f ], [ -22, %entry ], [ -22, %sw.bb ], [ -22, %sw.bb6 ], [ -22, %sw.bb14 ], [ -22, %lor.lhs.false28 ], [ -22, %sw.bb24 ], [ -22, %sw.bb33 ], [ -22, %sw.bb41 ], [ -95, %if.end ], [ -9, %sw.epilog ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #1 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #6
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #8
  ret [2 x i64] %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memdup_user_nul(i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.filename* @getname_flags(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @fget(i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vfs_fsconfig_locked(%struct.fs_context* noundef %fc, i32 noundef %cmd, %struct.fs_parameter* noundef %param) unnamed_addr #1 {
entry:
  %call = call i32 @finish_clean_context(%struct.fs_context* noundef %fc) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end
  %phase = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 17
  %0 = bitcast i24* %phase to i32*
  %bf.load = load i32, i32* %0, align 8
  %1 = and i32 %bf.load, 65280
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %sw.bb
  %call3 = call i1 @mount_capable(%struct.fs_context* noundef %fc) #6
  br i1 %call3, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end2
  %bf.load7 = load i32, i32* %0, align 8
  %bf.clear8 = and i32 %bf.load7, -65281
  %bf.set = or i32 %bf.clear8, 256
  store i32 %bf.set, i32* %0, align 8
  %call9 = call i32 @vfs_get_tree(%struct.fs_context* noundef %fc) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %sw.epilog

if.end12:                                         ; preds = %if.end5
  %root = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  %2 = load %struct.dentry*, %struct.dentry** %root, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 9
  %3 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i64 0, i32 14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #6
  %bf.load20 = load i32, i32* %0, align 8
  %bf.clear21 = and i32 %bf.load20, -65281
  %bf.set22 = or i32 %bf.clear21, 512
  store i32 %bf.set22, i32* %0, align 8
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  %phase24 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 17
  %4 = bitcast i24* %phase24 to i32*
  %bf.load25 = load i32, i32* %4, align 8
  %5 = and i32 %bf.load25, 65280
  %cmp28.not = icmp eq i32 %5, 1024
  br i1 %cmp28.not, label %if.end31, label %cleanup

if.end31:                                         ; preds = %sw.bb23
  %bf.clear34 = and i32 %bf.load25, -65281
  %bf.set35 = or i32 %bf.clear34, 1280
  store i32 %bf.set35, i32* %4, align 8
  %root36 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  %6 = load %struct.dentry*, %struct.dentry** %root36, align 8
  %d_sb37 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i64 0, i32 9
  %7 = load %struct.super_block*, %struct.super_block** %d_sb37, align 8
  %s_user_ns = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i64 0, i32 46
  %8 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns, align 8
  %call38 = call i1 @ns_capable(%struct.user_namespace* noundef %8, i32 noundef 21) #6
  br i1 %call38, label %if.end40, label %sw.epilog

if.end40:                                         ; preds = %if.end31
  %s_umount41 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i64 0, i32 14
  call void @down_write(%struct.rw_semaphore* noundef %s_umount41) #6
  %call42 = call i32 @reconfigure_super(%struct.fs_context* noundef %fc) #6
  call void @up_write(%struct.rw_semaphore* noundef %s_umount41) #6
  %tobool44.not = icmp eq i32 %call42, 0
  br i1 %tobool44.not, label %if.end46, label %sw.epilog

if.end46:                                         ; preds = %if.end40
  call void @vfs_clean_context(%struct.fs_context* noundef %fc) #6
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %phase47 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 17
  %9 = bitcast i24* %phase47 to i32*
  %bf.load48 = load i32, i32* %9, align 8
  %bf.lshr49 = lshr i32 %bf.load48, 8
  %trunc = trunc i32 %bf.lshr49 to i8
  switch i8 %trunc, label %cleanup [
    i8 0, label %if.end60
    i8 4, label %if.end60
  ]

if.end60:                                         ; preds = %sw.default, %sw.default
  %call61 = call i32 @vfs_parse_fs_param(%struct.fs_context* noundef %fc, %struct.fs_parameter* noundef %param) #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end31, %if.end40, %if.end5
  %.pre-phi = phi i32* [ %4, %if.end31 ], [ %4, %if.end40 ], [ %0, %if.end5 ]
  %ret.0 = phi i32 [ -1, %if.end31 ], [ %call42, %if.end40 ], [ %call9, %if.end5 ]
  %bf.load63 = load i32, i32* %.pre-phi, align 8
  %bf.clear64 = and i32 %bf.load63, -65281
  %bf.set65 = or i32 %bf.clear64, 1536
  store i32 %bf.set65, i32* %.pre-phi, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb23, %if.end2, %sw.bb, %entry, %sw.epilog, %if.end60, %if.end46, %if.end12
  %retval.0 = phi i32 [ %call61, %if.end60 ], [ %ret.0, %sw.epilog ], [ 0, %if.end46 ], [ 0, %if.end12 ], [ %call, %entry ], [ -16, %sw.bb ], [ -1, %if.end2 ], [ -16, %sw.bb23 ], [ -16, %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(%struct.filename* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdput([2 x i64] %fd.coerce) unnamed_addr #1 {
entry:
  %fd.coerce.fca.1.extract = extractvalue [2 x i64] %fd.coerce, 1
  %and1 = and i64 %fd.coerce.fca.1.extract, 1
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fd.coerce.fca.0.extract = extractvalue [2 x i64] %fd.coerce, 0
  %0 = inttoptr i64 %fd.coerce.fca.0.extract to %struct.file*
  call void @fput(%struct.file* noundef %0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #3 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_clean_context(%struct.fs_context* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @mount_capable(%struct.fs_context* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_get_tree(%struct.fs_context* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reconfigure_super(%struct.fs_context* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfs_clean_context(%struct.fs_context* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_param(%struct.fs_context* noundef, %struct.fs_parameter* noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
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
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{i64 2149037449}
!9 = !{i64 4047938, i64 4048021, i64 4048245, i64 4048465, i64 4048488}
!10 = !{i64 4052640, i64 4052664}
!11 = !{i64 2151605424}
!12 = !{i64 1523077}
!13 = !{!"auto-init"}
