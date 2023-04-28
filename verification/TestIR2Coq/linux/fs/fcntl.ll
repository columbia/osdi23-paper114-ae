; ModuleID = 'fs/fcntl.c'
source_filename = "fs/fcntl.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_fcntl__388_1059_fcntl_init6:\09\09\09"
module asm ".long\09fcntl_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.21, %struct.qspinlock }
%union.anon.21 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.kmem_cache = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
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
%struct.mnt_namespace = type opaque
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
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
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.19 }
%union.anon.19 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
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
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.44 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.44 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pt_regs = type { %union.anon.72, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.72 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.f_owner_ex = type { i32, i32 }

@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@fasync_lock = internal global %struct.spinlock zeroinitializer, align 4
@fasync_cache = internal unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@__UNIQUE_ID___addressable_fcntl_init389 = internal global i8* bitcast (i32 ()* @fcntl_init to i8*), section ".discard.addressable", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@band_table = internal unnamed_addr constant [6 x i32] [i32 65, i32 772, i32 1089, i32 8, i32 130, i32 24], align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"\013kill_fasync: bad magic number in fasync_struct!\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"fasync_cache\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_fcntl_init389 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__f_setown(%struct.file* noundef %filp, %struct.pid* noundef %pid, i32 noundef %type, i32 noundef %force) local_unnamed_addr #0 {
entry:
  call fastcc void @f_modown(%struct.file* noundef %filp, %struct.pid* noundef %pid, i32 noundef %type, i32 noundef %force) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @f_modown(%struct.file* noundef %filp, %struct.pid* noundef %pid, i32 noundef %type, i32 noundef %force) unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 0
  call fastcc void @__raw_write_lock_irq(%struct.rwlock_t* noundef %lock) #9
  %tobool.not = icmp eq i32 %force, 0
  %pid2 = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 1
  %0 = load %struct.pid*, %struct.pid** %pid2, align 8
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %tobool3.not = icmp eq %struct.pid* %0, null
  br i1 %tobool3.not, label %if.then, label %if.end17

if.then:                                          ; preds = %entry, %lor.lhs.false
  %1 = phi %struct.pid* [ null, %lor.lhs.false ], [ %0, %entry ]
  %pid5 = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 1
  call void @put_pid(%struct.pid* noundef %1) #10
  %call = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %pid) #9
  store %struct.pid* %pid, %struct.pid** %pid5, align 8
  %pid_type = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 2
  store i32 %type, i32* %pid_type, align 8
  %tobool9.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool9.not, label %if.end17, label %if.then10

if.then10:                                        ; preds = %if.then
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %cred12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 80
  %4 = load %struct.cred*, %struct.cred** %cred12, align 8
  %5 = getelementptr inbounds %struct.cred, %struct.cred* %4, i64 0, i32 1, i32 0
  %6 = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 3, i32 0
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.cred, %struct.cred* %4, i64 0, i32 5, i32 0
  %9 = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 4, i32 0
  %10 = load i32, i32* %8, align 4
  store i32 %10, i32* %9, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then, %if.then10, %lor.lhs.false
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @f_setown(%struct.file* noundef %filp, i64 noundef %arg, i32 noundef %force) local_unnamed_addr #0 {
entry:
  %conv = trunc i64 %arg to i32
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i32 %conv, -2147483648
  br i1 %cmp2, label %cleanup, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.then
  %sub = sub nsw i32 0, %conv
  call fastcc void @__rcu_read_lock() #10
  br label %if.then6

if.end5:                                          ; preds = %entry
  call fastcc void @__rcu_read_lock() #10
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.then12, label %if.then6

if.then6:                                         ; preds = %if.end5.thread, %if.end5
  %who.032 = phi i32 [ %sub, %if.end5.thread ], [ %conv, %if.end5 ]
  %type.030 = phi i32 [ 2, %if.end5.thread ], [ 1, %if.end5 ]
  %call = call %struct.pid* @find_vpid(i32 noundef %who.032) #10
  %tobool7.not = icmp eq %struct.pid* %call, null
  br i1 %tobool7.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then6, %if.end5
  %type.031.ph = phi i32 [ 1, %if.end5 ], [ %type.030, %if.then6 ]
  %pid.0.ph = phi %struct.pid* [ null, %if.end5 ], [ %call, %if.then6 ]
  call void @__f_setown(%struct.file* noundef %filp, %struct.pid* noundef %pid.0.ph, i32 noundef %type.031.ph, i32 noundef %force) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.then12
  %ret.039 = phi i32 [ 0, %if.then12 ], [ -3, %if.then6 ]
  call fastcc void @rcu_read_unlock() #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end13
  %retval.0 = phi i32 [ %ret.039, %if.end13 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @find_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @f_delown(%struct.file* noundef %filp) local_unnamed_addr #0 {
entry:
  call fastcc void @f_modown(%struct.file* noundef %filp, %struct.pid* noundef null, i32 noundef 1, i32 noundef 1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @f_getown(%struct.file* noundef %filp) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 0
  call fastcc void @__raw_read_lock_irq(%struct.rwlock_t* noundef %lock) #9
  call fastcc void @__rcu_read_lock() #10
  %pid2 = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 1
  %0 = load %struct.pid*, %struct.pid** %pid2, align 8
  %pid_type = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 2
  %1 = load i32, i32* %pid_type, align 8
  %call = call %struct.task_struct* @pid_task(%struct.pid* noundef %0, i32 noundef %1) #10
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.pid*, %struct.pid** %pid2, align 8
  %call6 = call i32 @pid_vnr(%struct.pid* noundef %2) #10
  %3 = load i32, i32* %pid_type, align 8
  %cmp = icmp eq i32 %3, 2
  %sub = sub i32 0, %call6
  %spec.select = select i1 %cmp, i32 %sub, i32 %call6
  br label %if.end10

if.end10:                                         ; preds = %if.then, %entry
  %pid.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.then ]
  call fastcc void @rcu_read_unlock() #9
  call fastcc void @__raw_read_unlock_irq(%struct.rwlock_t* noundef %lock) #9
  ret i32 %pid.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock_irq(%struct.rwlock_t* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #9
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_read_lock(%struct.qrwlock* noundef %raw_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(%struct.pid* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock_irq(%struct.rwlock_t* noundef %lock) unnamed_addr #0 {
entry:
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_read_unlock(%struct.qrwlock* noundef %raw_lock) #9
  call fastcc void @arch_local_irq_enable() #9
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fcntl(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_fcntl(i64 noundef %0, i64 noundef %1, i64 noundef %2) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fcntl(i64 noundef %fd, i64 noundef %cmd, i64 noundef %arg) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %conv1 = trunc i64 %cmd to i32
  %call = call fastcc i64 @__do_sys_fcntl(i32 noundef %conv, i32 noundef %conv1, i64 noundef %arg) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @send_sigio(%struct.fown_struct* noundef %fown, i32 noundef %fd, i32 noundef %band) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %fown, i64 0, i32 0
  %call = call fastcc i64 @__raw_read_lock_irqsave(%struct.rwlock_t* noundef %lock) #9
  %pid_type = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %fown, i64 0, i32 2
  %0 = load i32, i32* %pid_type, align 8
  %pid1 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %fown, i64 0, i32 1
  %1 = load %struct.pid*, %struct.pid** %pid1, align 8
  %tobool.not = icmp eq %struct.pid* %1, null
  br i1 %tobool.not, label %do.body57, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp ult i32 %0, 2
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call fastcc void @__rcu_read_lock() #10
  %call5 = call %struct.task_struct* @pid_task(%struct.pid* noundef nonnull %1, i32 noundef 0) #10
  %tobool6.not = icmp eq %struct.task_struct* %call5, null
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then4
  call fastcc void @send_sigio_to_task(%struct.task_struct* noundef nonnull %call5, %struct.fown_struct* noundef %fown, i32 noundef %fd, i32 noundef %band, i32 noundef %0) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then4
  call fastcc void @rcu_read_unlock() #9
  br label %do.body57

if.else:                                          ; preds = %if.end
  call fastcc void @__raw_read_lock() #9
  %idxprom = zext i32 %0 to i64
  %first = getelementptr %struct.pid, %struct.pid* %1, i64 0, i32 3, i64 %idxprom, i32 0
  %2 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool19.not = icmp eq %struct.hlist_node* %2, null
  %3 = bitcast %struct.hlist_node* %2 to i8*
  %.neg102 = mul nsw i64 %idxprom, -16
  %idx.neg = add nsw i64 %.neg102, -1032
  %add.ptr = getelementptr i8, i8* %3, i64 %idx.neg
  %tobool25.not105107 = icmp eq i8* %add.ptr, null
  %tobool25.not105 = select i1 %tobool19.not, i1 true, i1 %tobool25.not105107
  br i1 %tobool25.not105, label %do.end55, label %for.body.preheader

for.body.preheader:                               ; preds = %if.else
  %4 = bitcast i8* %add.ptr to %struct.task_struct*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %p.0106 = phi %struct.task_struct* [ %spec.select104, %for.body ], [ %4, %for.body.preheader ]
  call fastcc void @send_sigio_to_task(%struct.task_struct* noundef nonnull %p.0106, %struct.fown_struct* noundef %fown, i32 noundef %fd, i32 noundef %band, i32 noundef %0) #9
  %next = getelementptr %struct.task_struct, %struct.task_struct* %p.0106, i64 0, i32 60, i64 %idxprom, i32 0
  %5 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool40.not = icmp eq %struct.hlist_node* %5, null
  %6 = bitcast %struct.hlist_node* %5 to i8*
  %add.ptr49 = getelementptr i8, i8* %6, i64 %idx.neg
  %7 = bitcast i8* %add.ptr49 to %struct.task_struct*
  %spec.select104 = select i1 %tobool40.not, %struct.task_struct* null, %struct.task_struct* %7
  %tobool25.not = icmp eq %struct.task_struct* %spec.select104, null
  br i1 %tobool25.not, label %do.end55, label %for.body

do.end55:                                         ; preds = %for.body, %if.else
  call fastcc void @__raw_read_unlock() #9
  br label %do.body57

do.body57:                                        ; preds = %entry, %do.end55, %if.end8
  call fastcc void @__raw_read_unlock_irqrestore(%struct.rwlock_t* noundef %lock, i64 noundef %call) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_read_lock_irqsave(%struct.rwlock_t* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #9
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_read_lock(%struct.qrwlock* noundef %raw_lock) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @send_sigio_to_task(%struct.task_struct* noundef %p, %struct.fown_struct* noundef %fown, i32 noundef %fd, i32 noundef %reason, i32 noundef %type) unnamed_addr #0 {
entry:
  %si = alloca %struct.kernel_siginfo, align 8
  %signum1 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %fown, i64 0, i32 5
  %0 = load volatile i32, i32* %signum1, align 4
  %call = call fastcc i32 @sigio_perm(%struct.task_struct* noundef %p, %struct.fown_struct* noundef %fown) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup44, label %if.end

if.end:                                           ; preds = %entry
  %cond = icmp eq i32 %0, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.default:                                       ; preds = %if.end
  %1 = bitcast %struct.kernel_siginfo* %si to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false), !annotation !11
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %si) #9
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %si, i64 0, i32 0, i32 0
  store i32 %0, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %si, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %si, i64 0, i32 0, i32 2
  store i32 %reason, i32* %si_code, align 8
  %cmp = icmp ne i32 %0, 29
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 31
  %4 = and i1 %cmp, %3
  br i1 %4, label %land.lhs.true5, label %do.body10

land.lhs.true5:                                   ; preds = %sw.default
  %sh_prom = zext i32 %2 to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %and = and i64 %shl, 1342244056
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %do.body10, label %if.then7

if.then7:                                         ; preds = %land.lhs.true5
  store i32 -5, i32* %si_code, align 8
  br label %do.body10

do.body10:                                        ; preds = %sw.default, %land.lhs.true5, %if.then7
  %5 = add i32 %reason, -7
  %6 = icmp ult i32 %5, -6
  br i1 %6, label %do.body17, label %if.else, !prof !12

do.body17:                                        ; preds = %do.body10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fcntl.c\22; .popsection; .long 14472b - 14470b; .short 774; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !13
  unreachable

if.else:                                          ; preds = %do.body10
  %sub12 = add nsw i32 %reason, -1
  %idxprom64 = zext i32 %sub12 to i64
  %arrayidx = getelementptr [6 x i32], [6 x i32]* @band_table, i64 0, i64 %idxprom64
  %7 = load i32, i32* %arrayidx, align 4
  %call31 = call fastcc i16 @mangle_poll(i32 noundef %7) #9
  %conv32 = zext i16 %call31 to i64
  %_sifields33 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %si, i64 0, i32 0, i32 3
  %_band35 = bitcast %union.__sifields* %_sifields33 to i64*
  store i64 %conv32, i64* %_band35, align 8
  %8 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %si, i64 0, i32 0, i32 3, i32 0, i32 2
  store i32 %fd, i32* %8, align 8
  %call39 = call i32 @do_send_sig_info(i32 noundef %0, %struct.kernel_siginfo* noundef nonnull %si, %struct.task_struct* noundef %p, i32 noundef %type) #10
  %tobool40.not = icmp eq i32 %call39, 0
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #12
  br i1 %tobool40.not, label %cleanup44, label %sw.bb

sw.bb:                                            ; preds = %if.else, %if.end
  %call43 = call i32 @do_send_sig_info(i32 noundef 29, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef %p, i32 noundef %type) #10
  br label %cleanup44

cleanup44:                                        ; preds = %if.else, %sw.bb, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  call fastcc void @queued_read_lock(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @queued_read_unlock(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #9
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock_irqrestore(%struct.rwlock_t* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_read_unlock(%struct.qrwlock* noundef %raw_lock) #9
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #9
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @send_sigurg(%struct.fown_struct* noundef %fown) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %fown, i64 0, i32 0
  %call = call fastcc i64 @__raw_read_lock_irqsave(%struct.rwlock_t* noundef %lock) #9
  %pid_type = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %fown, i64 0, i32 2
  %0 = load i32, i32* %pid_type, align 8
  %pid1 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %fown, i64 0, i32 1
  %1 = load %struct.pid*, %struct.pid** %pid1, align 8
  %tobool.not = icmp eq %struct.pid* %1, null
  br i1 %tobool.not, label %do.body57, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp ult i32 %0, 2
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call fastcc void @__rcu_read_lock() #10
  %call5 = call %struct.task_struct* @pid_task(%struct.pid* noundef nonnull %1, i32 noundef 0) #10
  %tobool6.not = icmp eq %struct.task_struct* %call5, null
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then4
  call fastcc void @send_sigurg_to_task(%struct.task_struct* noundef nonnull %call5, %struct.fown_struct* noundef %fown, i32 noundef %0) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then4
  call fastcc void @rcu_read_unlock() #9
  br label %do.body57

if.else:                                          ; preds = %if.end
  call fastcc void @__raw_read_lock() #9
  %idxprom = zext i32 %0 to i64
  %first = getelementptr %struct.pid, %struct.pid* %1, i64 0, i32 3, i64 %idxprom, i32 0
  %2 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool19.not = icmp eq %struct.hlist_node* %2, null
  %3 = bitcast %struct.hlist_node* %2 to i8*
  %.neg101 = mul nsw i64 %idxprom, -16
  %idx.neg = add nsw i64 %.neg101, -1032
  %add.ptr = getelementptr i8, i8* %3, i64 %idx.neg
  %tobool25.not104106 = icmp eq i8* %add.ptr, null
  %tobool25.not104 = select i1 %tobool19.not, i1 true, i1 %tobool25.not104106
  br i1 %tobool25.not104, label %do.end55, label %for.body.preheader

for.body.preheader:                               ; preds = %if.else
  %4 = bitcast i8* %add.ptr to %struct.task_struct*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %p.0105 = phi %struct.task_struct* [ %spec.select103, %for.body ], [ %4, %for.body.preheader ]
  call fastcc void @send_sigurg_to_task(%struct.task_struct* noundef nonnull %p.0105, %struct.fown_struct* noundef %fown, i32 noundef %0) #9
  %next = getelementptr %struct.task_struct, %struct.task_struct* %p.0105, i64 0, i32 60, i64 %idxprom, i32 0
  %5 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool40.not = icmp eq %struct.hlist_node* %5, null
  %6 = bitcast %struct.hlist_node* %5 to i8*
  %add.ptr49 = getelementptr i8, i8* %6, i64 %idx.neg
  %7 = bitcast i8* %add.ptr49 to %struct.task_struct*
  %spec.select103 = select i1 %tobool40.not, %struct.task_struct* null, %struct.task_struct* %7
  %tobool25.not = icmp eq %struct.task_struct* %spec.select103, null
  br i1 %tobool25.not, label %do.end55, label %for.body

do.end55:                                         ; preds = %for.body, %if.else
  call fastcc void @__raw_read_unlock() #9
  br label %do.body57

do.body57:                                        ; preds = %entry, %do.end55, %if.end8
  %ret.0 = phi i32 [ 1, %if.end8 ], [ 1, %do.end55 ], [ 0, %entry ]
  call fastcc void @__raw_read_unlock_irqrestore(%struct.rwlock_t* noundef %lock, i64 noundef %call) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @send_sigurg_to_task(%struct.task_struct* noundef %p, %struct.fown_struct* nocapture noundef readonly %fown, i32 noundef %type) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @sigio_perm(%struct.task_struct* noundef %p, %struct.fown_struct* noundef %fown) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @do_send_sig_info(i32 noundef 23, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef %p, i32 noundef %type) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fasync_remove_entry(%struct.file* noundef %filp, %struct.fasync_struct** nocapture noundef %fapp) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 4, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @fasync_lock, i64 0, i32 0, i32 0)) #10
  %0 = load %struct.fasync_struct*, %struct.fasync_struct** %fapp, align 8
  %cmp.not22 = icmp eq %struct.fasync_struct* %0, null
  br i1 %cmp.not22, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %fa_file32 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %0, i64 0, i32 4
  %1 = load %struct.file*, %struct.file** %fa_file32, align 8
  %cmp1.not33 = icmp eq %struct.file* %1, %filp
  br i1 %cmp1.not33, label %if.end, label %for.inc

for.body:                                         ; preds = %for.inc
  %fa_file = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %6, i64 0, i32 4
  %2 = load %struct.file*, %struct.file** %fa_file, align 8
  %cmp1.not = icmp eq %struct.file* %2, %filp
  br i1 %cmp1.not, label %if.end.loopexit, label %for.inc

if.end.loopexit:                                  ; preds = %for.body
  %fa_next4.le = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %5, i64 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %for.body.preheader
  %.lcssa = phi %struct.fasync_struct* [ %0, %for.body.preheader ], [ %6, %if.end.loopexit ]
  %fp.023.lcssa = phi %struct.fasync_struct** [ %fapp, %for.body.preheader ], [ %fa_next4.le, %if.end.loopexit ]
  %fa_file.le = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %.lcssa, i64 0, i32 4
  %fa_lock = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %.lcssa, i64 0, i32 0
  call fastcc void @__raw_write_lock_irq(%struct.rwlock_t* noundef %fa_lock) #9
  store %struct.file* null, %struct.file** %fa_file.le, align 8
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %fa_lock) #9
  %fa_next = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %.lcssa, i64 0, i32 3
  %3 = load %struct.fasync_struct*, %struct.fasync_struct** %fa_next, align 8
  store %struct.fasync_struct* %3, %struct.fasync_struct** %fp.023.lcssa, align 8
  %fa_rcu = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %.lcssa, i64 0, i32 5
  call void @call_rcu(%struct.callback_head* noundef %fa_rcu, void (%struct.callback_head*)* noundef nonnull @fasync_free_rcu) #10
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %4 = load i32, i32* %f_flags, align 8
  %and = and i32 %4, -8193
  store i32 %and, i32* %f_flags, align 8
  br label %for.end

for.inc:                                          ; preds = %for.body.preheader, %for.body
  %5 = phi %struct.fasync_struct* [ %6, %for.body ], [ %0, %for.body.preheader ]
  %fa_next4 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %5, i64 0, i32 3
  %6 = load %struct.fasync_struct*, %struct.fasync_struct** %fa_next4, align 8
  %cmp.not = icmp eq %struct.fasync_struct* %6, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry, %if.end
  %result.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], [ 0, %for.inc ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @fasync_lock, i64 0, i32 0, i32 0)) #10
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  ret i32 %result.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_lock_irq(%struct.rwlock_t* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #9
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_write_lock(%struct.qrwlock* noundef %raw_lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) unnamed_addr #0 {
entry:
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_write_unlock(%struct.qrwlock* noundef %raw_lock) #9
  call fastcc void @arch_local_irq_enable() #9
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fasync_free_rcu(%struct.callback_head* noundef %head) #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @fasync_cache, align 8
  %add.ptr2 = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 -2
  %add.ptr = bitcast %struct.callback_head* %add.ptr2 to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %add.ptr) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local noalias %struct.fasync_struct* @fasync_alloc() local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @fasync_cache, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #10
  %1 = bitcast i8* %call to %struct.fasync_struct*
  ret %struct.fasync_struct* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fasync_free(%struct.fasync_struct* noundef %new) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @fasync_cache, align 8
  %1 = bitcast %struct.fasync_struct* %new to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fasync_struct* @fasync_insert_entry(i32 noundef %fd, %struct.file* noundef %filp, %struct.fasync_struct** noundef %fapp, %struct.fasync_struct* noundef %new) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 4, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @fasync_lock, i64 0, i32 0, i32 0)) #10
  %0 = load %struct.fasync_struct*, %struct.fasync_struct** %fapp, align 8
  %cmp.not56 = icmp eq %struct.fasync_struct* %0, null
  br i1 %cmp.not56, label %do.body, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi %struct.fasync_struct* [ %3, %for.inc ], [ %0, %entry ]
  %fa_file = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %1, i64 0, i32 4
  %2 = load %struct.file*, %struct.file** %fa_file, align 8
  %cmp1.not = icmp eq %struct.file* %2, %filp
  br i1 %cmp1.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %fa_lock = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %1, i64 0, i32 0
  call fastcc void @__raw_write_lock_irq(%struct.rwlock_t* noundef %fa_lock) #9
  %fa_fd = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %1, i64 0, i32 2
  store i32 %fd, i32* %fa_fd, align 4
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %fa_lock) #9
  br label %out

for.inc:                                          ; preds = %for.body
  %fa_next = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %1, i64 0, i32 3
  %3 = load %struct.fasync_struct*, %struct.fasync_struct** %fa_next, align 8
  %cmp.not = icmp eq %struct.fasync_struct* %3, null
  br i1 %cmp.not, label %do.body, label %for.body

do.body:                                          ; preds = %for.inc, %entry
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %new, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx34 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %new, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.2.0..sroa_idx34, align 4
  %magic = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %new, i64 0, i32 1
  store i32 17921, i32* %magic, align 8
  %fa_file5 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %new, i64 0, i32 4
  store %struct.file* %filp, %struct.file** %fa_file5, align 8
  %fa_fd6 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %new, i64 0, i32 2
  store i32 %fd, i32* %fa_fd6, align 4
  %4 = load %struct.fasync_struct*, %struct.fasync_struct** %fapp, align 8
  %fa_next7 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %new, i64 0, i32 3
  store %struct.fasync_struct* %4, %struct.fasync_struct** %fa_next7, align 8
  %5 = ptrtoint %struct.fasync_struct* %new to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.fasync_struct** elementtype(%struct.fasync_struct*) %fapp, i64 %5) #12, !srcloc !19
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %6 = load i32, i32* %f_flags, align 8
  %or = or i32 %6, 8192
  store i32 %or, i32* %f_flags, align 8
  br label %out

out:                                              ; preds = %do.body, %if.end
  %7 = phi %struct.fasync_struct* [ null, %do.body ], [ %1, %if.end ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @fasync_lock, i64 0, i32 0, i32 0)) #10
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  ret %struct.fasync_struct* %7
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fasync_helper(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %on, %struct.fasync_struct** noundef %fapp) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @fasync_remove_entry(%struct.file* noundef %filp, %struct.fasync_struct** noundef %fapp) #9
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @fasync_add_entry(i32 noundef %fd, %struct.file* noundef %filp, %struct.fasync_struct** noundef %fapp) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fasync_add_entry(i32 noundef %fd, %struct.file* noundef %filp, %struct.fasync_struct** noundef %fapp) unnamed_addr #0 {
entry:
  %call = call %struct.fasync_struct* @fasync_alloc() #9
  %tobool.not = icmp eq %struct.fasync_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.fasync_struct* @fasync_insert_entry(i32 noundef %fd, %struct.file* noundef %filp, %struct.fasync_struct** noundef %fapp, %struct.fasync_struct* noundef nonnull %call) #9
  %tobool2.not = icmp eq %struct.fasync_struct* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @fasync_free(%struct.fasync_struct* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ -12, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kill_fasync(%struct.fasync_struct** noundef %fp, i32 noundef %sig, i32 noundef %band) local_unnamed_addr #0 {
entry:
  %0 = load %struct.fasync_struct*, %struct.fasync_struct** %fp, align 8
  %tobool.not = icmp eq %struct.fasync_struct* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__rcu_read_lock() #10
  %1 = load volatile %struct.fasync_struct*, %struct.fasync_struct** %fp, align 8
  call fastcc void @kill_fasync_rcu(%struct.fasync_struct* noundef %1, i32 noundef %sig, i32 noundef %band) #9
  call fastcc void @rcu_read_unlock() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kill_fasync_rcu(%struct.fasync_struct* noundef %fa, i32 noundef %sig, i32 noundef %band) unnamed_addr #0 {
entry:
  %tobool.not47 = icmp eq %struct.fasync_struct* %fa, null
  br i1 %tobool.not47, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp10 = icmp eq i32 %sig, 23
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %fa.addr.048 = phi %struct.fasync_struct* [ %fa, %while.body.lr.ph ], [ %4, %cleanup ]
  %magic = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %fa.addr.048, i64 0, i32 1
  %0 = load i32, i32* %magic, align 8
  %cmp.not = icmp eq i32 %0, 17921
  br i1 %cmp.not, label %do.body1, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0)) #13
  br label %while.end

do.body1:                                         ; preds = %while.body
  %fa_lock = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %fa.addr.048, i64 0, i32 0
  %call4 = call fastcc i64 @__raw_read_lock_irqsave(%struct.rwlock_t* noundef %fa_lock) #9
  %fa_file = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %fa.addr.048, i64 0, i32 4
  %1 = load %struct.file*, %struct.file** %fa_file, align 8
  %tobool7.not = icmp eq %struct.file* %1, null
  br i1 %tobool7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %do.body1
  %f_owner = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 11
  br i1 %cmp10, label %land.lhs.true, label %if.then14

land.lhs.true:                                    ; preds = %if.then8
  %signum = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 11, i32 5
  %2 = load i32, i32* %signum, align 4
  %cmp12 = icmp eq i32 %2, 0
  br i1 %cmp12, label %cleanup, label %if.then14

if.then14:                                        ; preds = %land.lhs.true, %if.then8
  %fa_fd = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %fa.addr.048, i64 0, i32 2
  %3 = load i32, i32* %fa_fd, align 4
  call void @send_sigio(%struct.fown_struct* noundef %f_owner, i32 noundef %3, i32 noundef %band) #9
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.then14, %do.body1
  call fastcc void @__raw_read_unlock_irqrestore(%struct.rwlock_t* noundef %fa_lock, i64 noundef %call4) #9
  %fa_next = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %fa.addr.048, i64 0, i32 3
  %4 = load volatile %struct.fasync_struct*, %struct.fasync_struct** %fa_next, align 8
  %tobool.not = icmp eq %struct.fasync_struct* %4, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %entry, %cleanup.thread
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @fcntl_init() #4 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 48, i32 noundef 0, i32 noundef 262144, void (i8*)* noundef null) #10
  store %struct.kmem_cache* %call, %struct.kmem_cache** @fasync_cache, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pid* @get_pid(%struct.pid* noundef returned %pid) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %count) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.pid* %pid
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #10
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !12

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !20

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #10
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !21
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  call void @rcu_read_unlock_strict() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #9
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !12

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #12, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %cnts1 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire(%struct.atomic_t* noundef %cnts1) #10
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !20

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 512, i32* elementtype(i32) %counter) #12, !srcloc !25
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %cnts = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0
  call fastcc void @__ll_sc_atomic_sub_return_release(%struct.atomic_t* noundef %cnts) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #12, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 512, i32* elementtype(i32) %counter) #12, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fcntl(i32 noundef %fd, i32 noundef %cmd, i64 noundef %arg) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget_raw(i32 noundef %fd) #9
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and = and i32 %1, 16384
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end10, label %if.then5, !prof !20

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i32 @check_fcntl_cmd(i32 noundef %cmd) #9
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %out1, label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end
  %call17 = call fastcc i64 @do_fcntl(i32 noundef %fd, i32 noundef %cmd, i64 noundef %arg, %struct.file* noundef nonnull %0) #9
  br label %out1

out1:                                             ; preds = %if.end10, %if.then5
  %err.0 = phi i64 [ %call17, %if.end10 ], [ -9, %if.then5 ]
  call fastcc void @fdput([2 x i64] %call) #9
  br label %out

out:                                              ; preds = %entry, %out1
  %err.1 = phi i64 [ %err.0, %out1 ], [ -9, %entry ]
  ret i64 %err.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget_raw(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget_raw(i32 noundef %fd) #10
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #9
  ret [2 x i64] %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @check_fcntl_cmd(i32 noundef %cmd) unnamed_addr #6 {
entry:
  switch i32 %cmd, label %sw.epilog [
    i32 0, label %return
    i32 1030, label %return
    i32 1, label %return
    i32 2, label %return
    i32 3, label %return
  ]

sw.epilog:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_fcntl(i32 noundef %fd, i32 noundef %cmd, i64 noundef %arg, %struct.file* noundef %filp) unnamed_addr #0 {
entry:
  %flock = alloca %struct.flock, align 8
  %0 = inttoptr i64 %arg to i8*
  %1 = bitcast %struct.flock* %flock to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !11
  switch i32 %cmd, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1030, label %sw.bb2
    i32 1, label %sw.bb6
    i32 2, label %sw.bb10
    i32 3, label %sw.bb12
    i32 4, label %sw.bb14
    i32 36, label %sw.bb17
    i32 5, label %sw.bb17
    i32 37, label %sw.bb27
    i32 38, label %sw.bb27
    i32 6, label %sw.bb27
    i32 7, label %sw.bb27
    i32 9, label %sw.bb34
    i32 8, label %sw.bb37
    i32 16, label %sw.bb40
    i32 15, label %sw.bb43
    i32 1038, label %sw.bb72
    i32 11, label %sw.bb49
    i32 10, label %sw.bb51
    i32 1025, label %sw.bb59
    i32 1024, label %sw.bb62
    i32 1037, label %sw.bb72
    i32 1031, label %sw.bb68
    i32 1032, label %sw.bb68
    i32 1036, label %sw.bb72
    i32 1035, label %sw.bb72
  ]

sw.bb:                                            ; preds = %entry
  %conv = trunc i64 %arg to i32
  %call = call i32 @f_dupfd(i32 noundef %conv, %struct.file* noundef %filp, i32 noundef 0) #10
  %conv1 = sext i32 %call to i64
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %conv3 = trunc i64 %arg to i32
  %call4 = call i32 @f_dupfd(i32 noundef %conv3, %struct.file* noundef %filp, i32 noundef 524288) #10
  %conv5 = sext i32 %call4 to i64
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %call7 = call i1 @get_close_on_exec(i32 noundef %fd) #10
  %2 = zext i1 %call7 to i64
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %3 = trunc i64 %arg to i32
  %conv11 = and i32 %3, 1
  call void @set_close_on_exec(i32 noundef %fd, i32 noundef %conv11) #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %4 = load i32, i32* %f_flags, align 8
  %conv13 = zext i32 %4 to i64
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %call15 = call fastcc i32 @setfl(i32 noundef %fd, %struct.file* noundef %filp, i64 noundef %arg) #9
  %conv16 = sext i32 %call15 to i64
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry, %entry
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %1, i8* noundef %0, i64 noundef 32) #10
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %sw.bb17
  %call19 = call i32 @fcntl_getlk(%struct.file* noundef %filp, i32 noundef %cmd, %struct.flock* noundef nonnull %flock) #10
  %conv20 = sext i32 %call19 to i64
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %land.lhs.true, label %sw.epilog

land.lhs.true:                                    ; preds = %if.end
  %call2.i124 = call fastcc i64 @_copy_to_user(i8* noundef %0, i8* noundef nonnull %1, i64 noundef 32) #10
  %tobool23.not = icmp eq i64 %call2.i124, 0
  br i1 %tobool23.not, label %sw.epilog, label %cleanup

sw.bb27:                                          ; preds = %entry, %entry, %entry, %entry
  %call2.i125 = call fastcc i64 @_copy_from_user(i8* noundef nonnull %1, i8* noundef %0, i64 noundef 32) #10
  %tobool29.not = icmp eq i64 %call2.i125, 0
  br i1 %tobool29.not, label %if.end31, label %cleanup

if.end31:                                         ; preds = %sw.bb27
  %call32 = call i32 @fcntl_setlk(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %cmd, %struct.flock* noundef nonnull %flock) #10
  %conv33 = sext i32 %call32 to i64
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %call35 = call i32 @f_getown(%struct.file* noundef %filp) #9
  %conv36 = sext i32 %call35 to i64
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  %call38 = call i32 @f_setown(%struct.file* noundef %filp, i64 noundef %arg, i32 noundef 1) #9
  %conv39 = sext i32 %call38 to i64
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  %call41 = call fastcc i32 @f_getown_ex(%struct.file* noundef %filp, i64 noundef %arg) #9
  %conv42 = sext i32 %call41 to i64
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  %call44 = call fastcc i32 @f_setown_ex(%struct.file* noundef %filp, i64 noundef %arg) #9
  %conv45 = sext i32 %call44 to i64
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  %signum = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 5
  %5 = load i32, i32* %signum, align 4
  %conv50 = sext i32 %5 to i64
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry
  %call52 = call fastcc i32 @valid_signal(i64 noundef %arg) #9
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %sw.epilog, label %if.end55

if.end55:                                         ; preds = %sw.bb51
  %conv56 = trunc i64 %arg to i32
  %signum58 = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 5
  store i32 %conv56, i32* %signum58, align 4
  br label %sw.epilog

sw.bb59:                                          ; preds = %entry
  %call60 = call i32 @fcntl_getlease(%struct.file* noundef %filp) #10
  %conv61 = sext i32 %call60 to i64
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  %call63 = call i32 @fcntl_setlease(i32 noundef %fd, %struct.file* noundef %filp, i64 noundef %arg) #10
  %conv64 = sext i32 %call63 to i64
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry, %entry
  %call69 = call i64 @pipe_fcntl(%struct.file* noundef %filp, i32 noundef %cmd, i64 noundef %arg) #10
  br label %sw.epilog

sw.bb72:                                          ; preds = %entry, %entry, %entry, %entry
  %call73 = call fastcc i64 @fcntl_rw_hint(%struct.file* noundef %filp, i32 noundef %cmd, i64 noundef %arg) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb51, %if.end, %land.lhs.true, %sw.bb72, %sw.bb68, %sw.bb62, %sw.bb59, %if.end55, %sw.bb49, %sw.bb43, %sw.bb40, %sw.bb37, %sw.bb34, %if.end31, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb
  %err.0 = phi i64 [ %call73, %sw.bb72 ], [ %call69, %sw.bb68 ], [ %conv64, %sw.bb62 ], [ %conv61, %sw.bb59 ], [ 0, %if.end55 ], [ -22, %sw.bb51 ], [ %conv50, %sw.bb49 ], [ %conv45, %sw.bb43 ], [ %conv42, %sw.bb40 ], [ %conv39, %sw.bb37 ], [ %conv36, %sw.bb34 ], [ %conv33, %if.end31 ], [ %conv20, %if.end ], [ 0, %land.lhs.true ], [ %conv16, %sw.bb14 ], [ %conv13, %sw.bb12 ], [ 0, %sw.bb10 ], [ %2, %sw.bb6 ], [ %conv5, %sw.bb2 ], [ %conv1, %sw.bb ], [ -22, %entry ]
  br label %cleanup

cleanup:                                          ; preds = %sw.bb27, %land.lhs.true, %sw.bb17, %sw.epilog
  %retval.0 = phi i64 [ %err.0, %sw.epilog ], [ -14, %sw.bb17 ], [ -14, %land.lhs.true ], [ -14, %sw.bb27 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #12
  ret i64 %retval.0
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
declare dso_local i64 @__fdget_raw(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f_dupfd(i32 noundef, %struct.file* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @get_close_on_exec(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_close_on_exec(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @setfl(i32 noundef %fd, %struct.file* noundef %filp, i64 noundef %arg) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #9
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %conv = zext i32 %0 to i64
  %xor = xor i64 %conv, %arg
  %and = and i64 %xor, 1024
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 4
  %1 = load i32, i32* %i_flags, align 4
  %and1 = and i32 %1, 4
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %and3 = and i64 %arg, 262144
  %tobool4.not = icmp ne i64 %and3, 0
  %and7 = and i32 %0, 262144
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond110 = select i1 %tobool4.not, i1 %tobool8.not, i1 false
  br i1 %or.cond110, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  %call10 = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef %filp) #9
  %call11 = call i1 @inode_owner_or_capable(%struct.user_namespace* noundef %call10, %struct.inode* noundef %call) #10
  br i1 %call11, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.then9, %if.end
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %2 = load i16, i16* %i_mode, align 8
  %3 = and i16 %2, -4096
  %cmp = icmp eq i16 %3, 4096
  %and19 = and i64 %arg, 65536
  %tobool20.not = icmp eq i64 %and19, 0
  %or.cond = or i1 %tobool20.not, %cmp
  br i1 %or.cond, label %if.end31, label %if.then21

if.then21:                                        ; preds = %if.end14
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 17
  %4 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %tobool22.not = icmp eq %struct.address_space* %4, null
  br i1 %tobool22.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %4, i64 0, i32 9
  %5 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %tobool24.not = icmp eq %struct.address_space_operations* %5, null
  br i1 %tobool24.not, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %direct_IO = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %5, i64 0, i32 12
  %6 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %direct_IO, align 8
  %tobool28.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %6, null
  br i1 %tobool28.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %lor.lhs.false25, %if.end14
  %f_op = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 3
  %7 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %check_flags = getelementptr inbounds %struct.file_operations, %struct.file_operations* %7, i64 0, i32 22
  %8 = load i32 (i32)*, i32 (i32)** %check_flags, align 8
  %tobool32.not = icmp eq i32 (i32)* %8, null
  br i1 %tobool32.not, label %if.end41, label %if.end38

if.end38:                                         ; preds = %if.end31
  %conv36 = trunc i64 %arg to i32
  %call37 = call i32 %8(i32 noundef %conv36) #10
  %tobool39.not = icmp eq i32 %call37, 0
  br i1 %tobool39.not, label %if.end41, label %cleanup

if.end41:                                         ; preds = %if.end31, %if.end38
  %9 = load i32, i32* %f_flags, align 8
  %conv43 = zext i32 %9 to i64
  %xor44 = xor i64 %conv43, %arg
  %and45 = and i64 %xor44, 8192
  %tobool46.not = icmp eq i64 %and45, 0
  br i1 %tobool46.not, label %if.end65, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %if.end41
  %10 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %fasync = getelementptr inbounds %struct.file_operations, %struct.file_operations* %10, i64 0, i32 18
  %11 = load i32 (i32, %struct.file*, i32)*, i32 (i32, %struct.file*, i32)** %fasync, align 8
  %tobool49.not = icmp eq i32 (i32, %struct.file*, i32)* %11, null
  br i1 %tobool49.not, label %if.end65, label %if.then50

if.then50:                                        ; preds = %land.lhs.true47
  %12 = trunc i64 %arg to i32
  %13 = lshr i32 %12, 13
  %14 = and i32 %13, 1
  %call56 = call i32 %11(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %14) #10
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %cleanup, label %if.end65

if.end65:                                         ; preds = %if.then50, %land.lhs.true47, %if.end41
  %rlock.i = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 4, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %15 = load i32, i32* %f_flags, align 8
  %and68 = and i32 %15, -330753
  %16 = trunc i64 %arg to i32
  %17 = and i32 %16, 330752
  %conv70 = or i32 %and68, %17
  store i32 %conv70, i32* %f_flags, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then50, %if.end38, %if.then21, %lor.lhs.false, %lor.lhs.false25, %if.then9, %land.lhs.true
  %retval.0 = phi i32 [ -1, %land.lhs.true ], [ -1, %if.then9 ], [ -22, %lor.lhs.false25 ], [ -22, %lor.lhs.false ], [ -22, %if.then21 ], [ %call37, %if.end38 ], [ %call56, %if.then50 ], [ 0, %if.end65 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_getlk(%struct.file* noundef, i32 noundef, %struct.flock* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_setlk(i32 noundef, %struct.file* noundef, i32 noundef, %struct.flock* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @f_getown_ex(%struct.file* noundef %filp, i64 noundef %arg) unnamed_addr #0 {
entry:
  %owner = alloca i64, align 8
  %0 = inttoptr i64 %arg to i8*
  %1 = bitcast i64* %owner to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  store i64 0, i64* %owner, align 8
  %lock = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 0
  call fastcc void @__raw_read_lock_irq(%struct.rwlock_t* noundef %lock) #9
  call fastcc void @__rcu_read_lock() #10
  %pid = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 1
  %2 = load %struct.pid*, %struct.pid** %pid, align 8
  %pid_type = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 11, i32 2
  %3 = load i32, i32* %pid_type, align 8
  %call = call %struct.task_struct* @pid_task(%struct.pid* noundef %2, i32 noundef %3) #10
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tmpcast = bitcast i64* %owner to %struct.f_owner_ex*
  %4 = load %struct.pid*, %struct.pid** %pid, align 8
  %call5 = call i32 @pid_vnr(%struct.pid* noundef %4) #10
  %pid6 = getelementptr inbounds %struct.f_owner_ex, %struct.f_owner_ex* %tmpcast, i64 0, i32 1
  store i32 %call5, i32* %pid6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @rcu_read_unlock() #9
  %5 = load i32, i32* %pid_type, align 8
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end
  %type = bitcast i64* %owner to i32*
  store i32 0, i32* %type, align 8
  br label %if.then28

sw.bb9:                                           ; preds = %if.end
  %type10 = bitcast i64* %owner to i32*
  store i32 1, i32* %type10, align 8
  br label %if.then28

sw.bb11:                                          ; preds = %if.end
  %type12 = bitcast i64* %owner to i32*
  store i32 2, i32* %type12, align 8
  br label %if.then28

sw.epilog:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fcntl.c\22; .popsection; .long 14472b - 14470b; .short 231; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !28
  call fastcc void @__raw_read_unlock_irq(%struct.rwlock_t* noundef %lock) #9
  br label %if.end34

if.then28:                                        ; preds = %sw.bb11, %sw.bb9, %sw.bb
  call fastcc void @__raw_read_unlock_irq(%struct.rwlock_t* noundef %lock) #9
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %0, i8* noundef nonnull %1, i64 noundef 8) #10
  %conv30 = trunc i64 %call2.i to i32
  %tobool31.not = icmp eq i32 %conv30, 0
  %spec.store.select = select i1 %tobool31.not, i32 0, i32 -14
  br label %if.end34

if.end34:                                         ; preds = %sw.epilog, %if.then28
  %ret.1 = phi i32 [ -22, %sw.epilog ], [ %spec.store.select, %if.then28 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @f_setown_ex(%struct.file* noundef %filp, i64 noundef %arg) unnamed_addr #0 {
entry:
  %owner = alloca i64, align 8, !annotation !11
  %tmpcast = bitcast i64* %owner to %struct.f_owner_ex*, !annotation !11
  %0 = inttoptr i64 %arg to i8*
  %1 = bitcast i64* %owner to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  store i64 0, i64* %owner, align 8, !annotation !11
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %1, i8* noundef %0, i64 noundef 8) #10
  %conv = trunc i64 %call2.i to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %type1 = bitcast i64* %owner to i32*
  %2 = load i32, i32* %type1, align 8
  %3 = icmp ult i32 %2, 3
  br i1 %3, label %sw.epilog, label %cleanup

sw.epilog:                                        ; preds = %if.end
  call fastcc void @__rcu_read_lock() #10
  %pid4 = getelementptr inbounds %struct.f_owner_ex, %struct.f_owner_ex* %tmpcast, i64 0, i32 1
  %4 = load i32, i32* %pid4, align 4
  %call5 = call %struct.pid* @find_vpid(i32 noundef %4) #10
  %5 = load i32, i32* %pid4, align 4
  %tobool7 = icmp eq i32 %5, 0
  %tobool8 = icmp ne %struct.pid* %call5, null
  %or.cond = select i1 %tobool7, i1 true, i1 %tobool8
  br i1 %or.cond, label %if.else, label %if.end10

if.else:                                          ; preds = %sw.epilog
  call void @__f_setown(%struct.file* noundef %filp, %struct.pid* noundef %call5, i32 noundef %2, i32 noundef 1) #9
  br label %if.end10

if.end10:                                         ; preds = %sw.epilog, %if.else
  %ret.0 = phi i32 [ 0, %if.else ], [ -3, %sw.epilog ]
  call fastcc void @rcu_read_unlock() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ %ret.0, %if.end10 ], [ -14, %entry ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @valid_signal(i64 noundef %sig) unnamed_addr #6 {
entry:
  %cmp = icmp ult i64 %sig, 65
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_getlease(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_setlease(i32 noundef, %struct.file* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @pipe_fcntl(%struct.file* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @fcntl_rw_hint(%struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) unnamed_addr #0 {
entry:
  %h = alloca i64, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #9
  %0 = bitcast i64* %h to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %h, align 8, !annotation !11
  switch i32 %cmd, label %cleanup [
    i32 1037, label %sw.bb
    i32 1038, label %sw.bb3
    i32 1035, label %sw.bb13
    i32 1036, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call fastcc i32 @file_write_hint(%struct.file* noundef %file) #9
  %conv = zext i32 %call1 to i64
  store i64 %conv, i64* %h, align 8
  %1 = inttoptr i64 %arg to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %1, i8* noundef nonnull %0, i64 noundef 8) #10
  %tobool.not = icmp eq i64 %call2.i, 0
  %. = select i1 %tobool.not, i64 0, i64 -14
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %2 = inttoptr i64 %arg to i8*
  %call2.i50 = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %2, i64 noundef 8) #10
  %tobool5.not = icmp eq i64 %call2.i50, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %sw.bb3
  %3 = load i64, i64* %h, align 8
  %conv8 = trunc i64 %3 to i32
  %call9 = call fastcc i1 @rw_hint_valid(i32 noundef %conv8) #9
  br i1 %call9, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end7
  %rlock.i = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 4, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %f_write_hint = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 5
  store i32 %conv8, i32* %f_write_hint, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %i_write_hint = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 18
  %4 = load i8, i8* %i_write_hint, align 1
  %conv14 = zext i8 %4 to i64
  store i64 %conv14, i64* %h, align 8
  %5 = inttoptr i64 %arg to i8*
  %call2.i52 = call fastcc i64 @_copy_to_user(i8* noundef %5, i8* noundef nonnull %0, i64 noundef 8) #10
  %tobool16.not = icmp eq i64 %call2.i52, 0
  %.49 = select i1 %tobool16.not, i64 0, i64 -14
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %6 = inttoptr i64 %arg to i8*
  %call2.i53 = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %6, i64 noundef 8) #10
  %tobool21.not = icmp eq i64 %call2.i53, 0
  br i1 %tobool21.not, label %if.end23, label %cleanup

if.end23:                                         ; preds = %sw.bb19
  %7 = load i64, i64* %h, align 8
  %conv24 = trunc i64 %7 to i32
  %call25 = call fastcc i1 @rw_hint_valid(i32 noundef %conv24) #9
  br i1 %call25, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.end23
  call fastcc void @inode_lock(%struct.inode* noundef %call) #9
  %conv28 = trunc i64 %7 to i8
  %i_write_hint29 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 18
  store i8 %conv28, i8* %i_write_hint29, align 1
  call fastcc void @inode_unlock(%struct.inode* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end23, %sw.bb19, %sw.bb13, %if.end7, %sw.bb3, %sw.bb, %if.end27, %if.end11
  %retval.0 = phi i64 [ 0, %if.end27 ], [ 0, %if.end11 ], [ %., %sw.bb ], [ -14, %sw.bb3 ], [ -22, %if.end7 ], [ %.49, %sw.bb13 ], [ -14, %sw.bb19 ], [ -22, %if.end23 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #7 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @inode_owner_or_capable(%struct.user_namespace* noundef, %struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #9
  ret %struct.user_namespace* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #0 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #12, !srcloc !29
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #9
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #9
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !20

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #12, !srcloc !30
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #12, !srcloc !31
  call void asm sideeffect "hint #20", "~{memory}"() #12, !srcloc !32
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @file_write_hint(%struct.file* nocapture noundef readonly %file) unnamed_addr #7 {
entry:
  %f_write_hint = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 5
  %0 = load i32, i32* %f_write_hint, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #9
  %i_write_hint = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 18
  %1 = load i8, i8* %i_write_hint, align 1
  %conv = zext i8 %1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ %0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @rw_hint_valid(i32 noundef %hint) unnamed_addr #6 {
entry:
  %switch = icmp ult i32 %hint, 6
  ret i1 %switch
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #9
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #12, !srcloc !33
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #12, !srcloc !34
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sigio_perm(%struct.task_struct* noundef %p, %struct.fown_struct* nocapture noundef readonly %fown) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #10
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 79
  %0 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %coerce.dive = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %fown, i64 0, i32 4, i32 0
  %1 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %1 to i64
  %call = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 0) #9
  br i1 %call, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %coerce.dive10 = getelementptr inbounds %struct.cred, %struct.cred* %0, i64 0, i32 3, i32 0
  %2 = load i32, i32* %coerce.dive10, align 4
  %coerce.val.ii11 = zext i32 %2 to i64
  %call12 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii11) #9
  br i1 %call12, label %land.rhs, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %coerce.dive17 = getelementptr inbounds %struct.cred, %struct.cred* %0, i64 0, i32 1, i32 0
  %3 = load i32, i32* %coerce.dive17, align 4
  %coerce.val.ii18 = zext i32 %3 to i64
  %call19 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii18) #9
  br i1 %call19, label %land.rhs, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false13
  %coerce.dive23 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %fown, i64 0, i32 3, i32 0
  %4 = load i32, i32* %coerce.dive23, align 4
  %coerce.val.ii24 = zext i32 %4 to i64
  %call27 = call fastcc i1 @uid_eq(i64 %coerce.val.ii24, i64 %coerce.val.ii11) #9
  br i1 %call27, label %land.rhs, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call35 = call fastcc i1 @uid_eq(i64 %coerce.val.ii24, i64 %coerce.val.ii18) #9
  br i1 %call35, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false28, %lor.lhs.false20, %lor.lhs.false13, %lor.lhs.false, %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false28
  %5 = phi i32 [ 0, %lor.lhs.false28 ], [ 1, %land.rhs ]
  call fastcc void @rcu_read_unlock() #9
  ret i32 %5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef %info) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 48) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i16 @mangle_poll(i32 noundef %val) unnamed_addr #6 {
entry:
  %0 = trunc i32 %val to i16
  %conv45 = and i16 %0, 10239
  ret i16 %conv45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_send_sig_info(i32 noundef, %struct.kernel_siginfo* noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #9
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #9
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #12, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !20

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #12, !srcloc !37
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_lock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.qrwlock* %lock to i8*
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 255) #10
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup, label %if.end, !prof !20

if.end:                                           ; preds = %entry
  call void @queued_write_lock_slowpath(%struct.qrwlock* noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_write_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_unlock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %wlocked = bitcast %struct.qrwlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %wlocked, i8 0) #12, !srcloc !38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !39
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #12, !srcloc !40
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 1427321}
!8 = !{i64 2149677824}
!9 = !{i64 2149726637}
!10 = !{i64 2149671238}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2154822385}
!14 = !{i64 2149664565}
!15 = !{i64 2149719519}
!16 = !{i64 2149723207}
!17 = !{i64 2149697658}
!18 = !{i64 2149739312}
!19 = !{i64 2154874156}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148018943, i64 2148019607, i64 2148019637, i64 2148019669, i64 2148019703, i64 2148019738, i64 2148019763}
!22 = !{i64 2149849754}
!23 = !{i64 2149849971}
!24 = !{i64 2149161179, i64 2149161226, i64 2149161232, i64 2149161269, i64 2149161287, i64 2149162628, i64 2149162676, i64 2149162724, i64 2149162787, i64 2149162836, i64 2149161365, i64 2149161390, i64 2149161416, i64 2149161422, i64 2149162294, i64 2149162334, i64 2149162352, i64 2149162384, i64 2149162412, i64 2149162466, i64 2149162486, i64 2149162583, i64 2149161445, i64 2149161459, i64 2149161465, i64 2149161515, i64 2149161561, i64 2149161594}
!25 = !{i64 2148015863, i64 2148016529, i64 2148016559, i64 2148016592, i64 2148016626, i64 2148016661, i64 2148016686}
!26 = !{i64 2149151723, i64 2149151770, i64 2149151776, i64 2149151813, i64 2149151831, i64 2149153171, i64 2149153219, i64 2149153267, i64 2149153330, i64 2149153379, i64 2149151909, i64 2149151934, i64 2149151960, i64 2149151966, i64 2149152837, i64 2149152877, i64 2149152895, i64 2149152927, i64 2149152955, i64 2149153009, i64 2149153029, i64 2149153126, i64 2149151989, i64 2149152003, i64 2149152009, i64 2149152059, i64 2149152105, i64 2149152138}
!27 = !{i64 2148026611, i64 2148027277, i64 2148027307, i64 2148027339, i64 2148027373, i64 2148027409, i64 2148027434}
!28 = !{i64 2154802915}
!29 = !{i64 2151778699}
!30 = !{i64 3995402, i64 3995485, i64 3995709, i64 3995929, i64 3995952}
!31 = !{i64 4000104, i64 4000128}
!32 = !{i64 2151552888}
!33 = !{i64 2149166882, i64 2149166929, i64 2149166935, i64 2149166972, i64 2149166990, i64 2149168301, i64 2149168349, i64 2149168397, i64 2149168460, i64 2149168509, i64 2149167068, i64 2149167093, i64 2149167119, i64 2149167125, i64 2149167967, i64 2149168007, i64 2149168025, i64 2149168057, i64 2149168085, i64 2149168139, i64 2149168159, i64 2149168256, i64 2149167148, i64 2149167162, i64 2149167168, i64 2149167218, i64 2149167264, i64 2149167297}
!34 = !{i64 2149169061, i64 2149169108, i64 2149169114, i64 2149169151, i64 2149169169, i64 2149170112, i64 2149170160, i64 2149170208, i64 2149170271, i64 2149170320, i64 2149169247, i64 2149169272, i64 2149169298, i64 2149169304, i64 2149169341, i64 2149169347, i64 2149169397, i64 2149169443, i64 2149169476}
!35 = !{i64 2149172895, i64 2149172942, i64 2149172948, i64 2149172985, i64 2149173003, i64 2149178375, i64 2149178423, i64 2149178471, i64 2149178534, i64 2149178583, i64 2149173081, i64 2149173106, i64 2149173132, i64 2149173138, i64 2149178041, i64 2149178081, i64 2149178099, i64 2149178131, i64 2149178159, i64 2149178213, i64 2149178233, i64 2149178330, i64 2149173161, i64 2149173175, i64 2149173181, i64 2149173231, i64 2149173277, i64 2149173310}
!36 = !{i64 2149616056}
!37 = !{i64 2148108841, i64 2148108874, i64 2148108927, i64 2148108986, i64 2148109020, i64 2148109075, i64 2148109104, i64 2148109124}
!38 = !{i64 2149579849}
!39 = !{i64 2149623337}
!40 = !{i64 2149415567}
