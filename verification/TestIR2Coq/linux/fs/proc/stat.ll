; ModuleID = 'fs/proc/stat.c'
source_filename = "fs/proc/stat.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall5.init\22, \22a\22\09\09"
module asm "__initcall__kmod_proc__237_242_proc_stat_init5:\09\09\09"
module asm ".long\09proc_stat_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.7 }
%struct.file = type { %union.anon.6, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.6 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.55, i32 }
%union.anon.55 = type { %struct.kuid_t }
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
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.9 }
%union.anon.9 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.11, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.11 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.8, [0 x i64] }
%struct.anon.8 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.50, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.50 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type { %struct.user_namespace*, %struct.ucounts*, %struct.ns_common, %struct.timens_offsets, %struct.page*, i8 }
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.timens_offsets = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i64 }
%struct.page = type { i64, %union.anon.18, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.32 = type { %struct.atomic_t }
%struct.cgroup_namespace = type opaque
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.33, %union.anon.34, i32 }
%struct.request_queue = type opaque
%union.anon.33 = type { %struct.list_head }
%union.anon.34 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.35 }
%struct.anon.35 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.49, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.49 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.56, %struct.list_head, %struct.list_head, %union.anon.57 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.56 = type { %struct.list_head }
%union.anon.57 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.61, i32, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.58 = type { i32 }
%union.anon.59 = type { %struct.callback_head }
%union.anon.60 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.61 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, {}*, i32 (%struct.file*, i8*)*, {}*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.53 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.51, %struct.qspinlock }
%union.anon.51 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.53 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.17 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.17 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%union.anon.7 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.poll_table_struct = type opaque
%struct.kernel_cpustat = type { [10 x i64] }
%struct.kernel_stat = type { i64, [10 x i32] }
%struct.proc_dir_entry = type opaque

@__UNIQUE_ID___addressable_proc_stat_init238 = internal global i8* bitcast (i32 ()* @proc_stat_init to i8*), section ".discard.addressable", align 8
@.str = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@stat_proc_ops = internal constant %struct.proc_ops { i32 1, i32 (%struct.inode*, %struct.file*)* @stat_open, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @seq_read_iter, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 (%struct.file*, i64, i64, i64, i64)* null }, align 8
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"cpu  \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"cpu%d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"intr \00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"\0Actxt %llu\0Abtime %llu\0Aprocesses %lu\0Aprocs_running %u\0Aprocs_blocked %u\0A\00", align 1
@total_forks = external dso_local local_unnamed_addr global i64, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"softirq \00", align 1
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 8
@show_irq_gap.zeros = internal constant [33 x i8] c" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_proc_stat_init238 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @proc_stat_init() #0 section ".init.text" {
entry:
  %call = call %struct.proc_dir_entry* @proc_create(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i16 noundef 0, %struct.proc_dir_entry* noundef null, %struct.proc_ops* noundef nonnull @stat_proc_ops) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, %struct.proc_ops* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @stat_open(%struct.inode* nocapture noundef readnone %inode, %struct.file* noundef %file) #2 {
entry:
  %call = call fastcc i32 @num_online_cpus() #11
  %mul = shl i32 %call, 7
  %add = add i32 %mul, 1024
  %0 = load i32, i32* @nr_irqs, align 4
  %mul1 = shl i32 %0, 1
  %add2 = add i32 %add, %mul1
  %conv = zext i32 %add2 to i64
  %call3 = call i32 @single_open_size(%struct.file* noundef %file, i32 (%struct.seq_file*, i8*)* noundef nonnull @show_stat, i8* noundef null, i64 noundef %conv) #10
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_read_iter(%struct.kiocb* noundef, %struct.iov_iter* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(%struct.file* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(%struct.inode* noundef, %struct.file* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #4 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open_size(%struct.file* noundef, i32 (%struct.seq_file*, i8*)* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @show_stat(%struct.seq_file* noundef %p, i8* nocapture noundef readnone %v) #2 {
entry:
  %boottime = alloca %struct.timespec64, align 8
  %kcpustat = alloca %struct.kernel_cpustat, align 8
  %kcpustat49 = alloca %struct.kernel_cpustat, align 8
  %0 = bitcast %struct.timespec64* %boottime to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  call void @getboottime64(%struct.timespec64* noundef nonnull %boottime) #10
  %call191 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #13
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp192 = icmp ult i32 %call191, %1
  br i1 %cmp192, label %for.body.lr.ph, label %for.end32

for.body.lr.ph:                                   ; preds = %entry
  %2 = bitcast %struct.kernel_cpustat* %kcpustat to i8*
  %arraydecay = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat, i64 0, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat, i64 0, i32 0, i64 1
  %arrayidx4 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat, i64 0, i32 0, i64 2
  %arrayidx10 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat, i64 0, i32 0, i64 4
  %arrayidx12 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat, i64 0, i32 0, i64 3
  %arrayidx14 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat, i64 0, i32 0, i64 7
  %arrayidx16 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat, i64 0, i32 0, i64 8
  %arrayidx18 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat, i64 0, i32 0, i64 9
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %per_softirq_sums.sroa.0.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add29, %for.body ]
  %per_softirq_sums.sroa.6.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add29.1, %for.body ]
  %per_softirq_sums.sroa.9.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add29.2, %for.body ]
  %per_softirq_sums.sroa.12.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add29.3, %for.body ]
  %per_softirq_sums.sroa.15.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add29.4, %for.body ]
  %per_softirq_sums.sroa.18.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add29.5, %for.body ]
  %per_softirq_sums.sroa.21.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add29.6, %for.body ]
  %per_softirq_sums.sroa.24.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add29.7, %for.body ]
  %per_softirq_sums.sroa.27.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add29.8, %for.body ]
  %per_softirq_sums.sroa.30.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add29.9, %for.body ]
  %call205 = phi i32 [ %call191, %for.body.lr.ph ], [ %call, %for.body ]
  %user.0204 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %sum_softirq.0203 = phi i64 [ 0, %for.body.lr.ph ], [ %add31.9, %for.body ]
  %sum.0202 = phi i64 [ 0, %for.body.lr.ph ], [ %add21, %for.body ]
  %guest_nice.0201 = phi i64 [ 0, %for.body.lr.ph ], [ %add19, %for.body ]
  %guest.0200 = phi i64 [ 0, %for.body.lr.ph ], [ %add17, %for.body ]
  %steal.0199 = phi i64 [ 0, %for.body.lr.ph ], [ %add15, %for.body ]
  %softirq.0198 = phi i64 [ 0, %for.body.lr.ph ], [ %add13, %for.body ]
  %irq.0197 = phi i64 [ 0, %for.body.lr.ph ], [ %add11, %for.body ]
  %iowait.0196 = phi i64 [ 0, %for.body.lr.ph ], [ %add9, %for.body ]
  %idle.0195 = phi i64 [ 0, %for.body.lr.ph ], [ %add7, %for.body ]
  %system.0194 = phi i64 [ 0, %for.body.lr.ph ], [ %add5, %for.body ]
  %nice.0193 = phi i64 [ 0, %for.body.lr.ph ], [ %add3, %for.body ]
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false), !annotation !7
  call fastcc void @kcpustat_cpu_fetch(%struct.kernel_cpustat* noundef nonnull %kcpustat, i32 noundef %call205) #11
  %3 = load i64, i64* %arraydecay, align 8
  %4 = load i64, i64* %arrayidx2, align 8
  %5 = load i64, i64* %arrayidx4, align 8
  %call6 = call fastcc i64 @get_idle_time(%struct.kernel_cpustat* noundef nonnull %kcpustat, i32 noundef %call205) #11
  %call8 = call fastcc i64 @get_iowait_time(%struct.kernel_cpustat* noundef nonnull %kcpustat, i32 noundef %call205) #11
  %6 = load i64, i64* %arrayidx10, align 8
  %7 = load i64, i64* %arrayidx12, align 8
  %8 = load i64, i64* %arrayidx14, align 8
  %9 = load i64, i64* %arrayidx16, align 8
  %10 = load i64, i64* %arrayidx18, align 8
  %call20 = call fastcc i32 @kstat_cpu_irqs_sum(i32 noundef %call205) #11
  %conv = zext i32 %call20 to i64
  %call27 = call fastcc i32 @kstat_softirqs_cpu(i32 noundef 0, i32 noundef %call205) #11
  %add29 = add i32 %per_softirq_sums.sroa.0.0, %call27
  %conv30 = zext i32 %call27 to i64
  %add31 = add i64 %sum_softirq.0203, %conv30
  %call27.1 = call fastcc i32 @kstat_softirqs_cpu(i32 noundef 1, i32 noundef %call205) #11
  %add29.1 = add i32 %per_softirq_sums.sroa.6.0, %call27.1
  %conv30.1 = zext i32 %call27.1 to i64
  %add31.1 = add i64 %add31, %conv30.1
  %call27.2 = call fastcc i32 @kstat_softirqs_cpu(i32 noundef 2, i32 noundef %call205) #11
  %add29.2 = add i32 %per_softirq_sums.sroa.9.0, %call27.2
  %conv30.2 = zext i32 %call27.2 to i64
  %add31.2 = add i64 %add31.1, %conv30.2
  %call27.3 = call fastcc i32 @kstat_softirqs_cpu(i32 noundef 3, i32 noundef %call205) #11
  %add29.3 = add i32 %per_softirq_sums.sroa.12.0, %call27.3
  %conv30.3 = zext i32 %call27.3 to i64
  %add31.3 = add i64 %add31.2, %conv30.3
  %call27.4 = call fastcc i32 @kstat_softirqs_cpu(i32 noundef 4, i32 noundef %call205) #11
  %add29.4 = add i32 %per_softirq_sums.sroa.15.0, %call27.4
  %conv30.4 = zext i32 %call27.4 to i64
  %add31.4 = add i64 %add31.3, %conv30.4
  %call27.5 = call fastcc i32 @kstat_softirqs_cpu(i32 noundef 5, i32 noundef %call205) #11
  %add29.5 = add i32 %per_softirq_sums.sroa.18.0, %call27.5
  %conv30.5 = zext i32 %call27.5 to i64
  %add31.5 = add i64 %add31.4, %conv30.5
  %call27.6 = call fastcc i32 @kstat_softirqs_cpu(i32 noundef 6, i32 noundef %call205) #11
  %add29.6 = add i32 %per_softirq_sums.sroa.21.0, %call27.6
  %conv30.6 = zext i32 %call27.6 to i64
  %add31.6 = add i64 %add31.5, %conv30.6
  %call27.7 = call fastcc i32 @kstat_softirqs_cpu(i32 noundef 7, i32 noundef %call205) #11
  %add29.7 = add i32 %per_softirq_sums.sroa.24.0, %call27.7
  %conv30.7 = zext i32 %call27.7 to i64
  %add31.7 = add i64 %add31.6, %conv30.7
  %call27.8 = call fastcc i32 @kstat_softirqs_cpu(i32 noundef 8, i32 noundef %call205) #11
  %add29.8 = add i32 %per_softirq_sums.sroa.27.0, %call27.8
  %conv30.8 = zext i32 %call27.8 to i64
  %add31.8 = add i64 %add31.7, %conv30.8
  %call27.9 = call fastcc i32 @kstat_softirqs_cpu(i32 noundef 9, i32 noundef %call205) #11
  %add29.9 = add i32 %per_softirq_sums.sroa.30.0, %call27.9
  %conv30.9 = zext i32 %call27.9 to i64
  %add31.9 = add i64 %add31.8, %conv30.9
  %add = add i64 %3, %user.0204
  %add3 = add i64 %4, %nice.0193
  %add5 = add i64 %5, %system.0194
  %add7 = add i64 %call6, %idle.0195
  %add9 = add i64 %call8, %iowait.0196
  %add11 = add i64 %6, %irq.0197
  %add13 = add i64 %7, %softirq.0198
  %add15 = add i64 %8, %steal.0199
  %add17 = add i64 %9, %guest.0200
  %add19 = add i64 %10, %guest_nice.0201
  %add21 = add i64 %sum.0202, %conv
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #12
  %call = call i32 @cpumask_next(i32 noundef %call205, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #13
  %11 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %11
  br i1 %cmp, label %for.body, label %for.end32.loopexit

for.end32.loopexit:                               ; preds = %for.body
  %phi.cast = zext i32 %add29 to i64
  %phi.cast279 = zext i32 %add29.1 to i64
  %phi.cast280 = zext i32 %add29.2 to i64
  %phi.cast281 = zext i32 %add29.3 to i64
  %phi.cast282 = zext i32 %add29.4 to i64
  %phi.cast283 = zext i32 %add29.5 to i64
  %phi.cast284 = zext i32 %add29.6 to i64
  %phi.cast285 = zext i32 %add29.7 to i64
  %phi.cast286 = zext i32 %add29.8 to i64
  %phi.cast287 = zext i32 %add29.9 to i64
  br label %for.end32

for.end32:                                        ; preds = %for.end32.loopexit, %entry
  %per_softirq_sums.sroa.0.1 = phi i64 [ %phi.cast, %for.end32.loopexit ], [ 0, %entry ]
  %per_softirq_sums.sroa.6.1 = phi i64 [ %phi.cast279, %for.end32.loopexit ], [ 0, %entry ]
  %per_softirq_sums.sroa.9.1 = phi i64 [ %phi.cast280, %for.end32.loopexit ], [ 0, %entry ]
  %per_softirq_sums.sroa.12.1 = phi i64 [ %phi.cast281, %for.end32.loopexit ], [ 0, %entry ]
  %per_softirq_sums.sroa.15.1 = phi i64 [ %phi.cast282, %for.end32.loopexit ], [ 0, %entry ]
  %per_softirq_sums.sroa.18.1 = phi i64 [ %phi.cast283, %for.end32.loopexit ], [ 0, %entry ]
  %per_softirq_sums.sroa.21.1 = phi i64 [ %phi.cast284, %for.end32.loopexit ], [ 0, %entry ]
  %per_softirq_sums.sroa.24.1 = phi i64 [ %phi.cast285, %for.end32.loopexit ], [ 0, %entry ]
  %per_softirq_sums.sroa.27.1 = phi i64 [ %phi.cast286, %for.end32.loopexit ], [ 0, %entry ]
  %per_softirq_sums.sroa.30.1 = phi i64 [ %phi.cast287, %for.end32.loopexit ], [ 0, %entry ]
  %nice.0.lcssa = phi i64 [ %add3, %for.end32.loopexit ], [ 0, %entry ]
  %system.0.lcssa = phi i64 [ %add5, %for.end32.loopexit ], [ 0, %entry ]
  %idle.0.lcssa = phi i64 [ %add7, %for.end32.loopexit ], [ 0, %entry ]
  %iowait.0.lcssa = phi i64 [ %add9, %for.end32.loopexit ], [ 0, %entry ]
  %irq.0.lcssa = phi i64 [ %add11, %for.end32.loopexit ], [ 0, %entry ]
  %softirq.0.lcssa = phi i64 [ %add13, %for.end32.loopexit ], [ 0, %entry ]
  %steal.0.lcssa = phi i64 [ %add15, %for.end32.loopexit ], [ 0, %entry ]
  %guest.0.lcssa = phi i64 [ %add17, %for.end32.loopexit ], [ 0, %entry ]
  %guest_nice.0.lcssa = phi i64 [ %add19, %for.end32.loopexit ], [ 0, %entry ]
  %sum.0.lcssa = phi i64 [ %add21, %for.end32.loopexit ], [ 0, %entry ]
  %sum_softirq.0.lcssa = phi i64 [ %add31.9, %for.end32.loopexit ], [ 0, %entry ]
  %user.0.lcssa = phi i64 [ %add, %for.end32.loopexit ], [ 0, %entry ]
  %call34 = call i64 @nsec_to_clock_t(i64 noundef %user.0.lcssa) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 noundef %call34) #10
  %call35 = call i64 @nsec_to_clock_t(i64 noundef %nice.0.lcssa) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call35) #10
  %call36 = call i64 @nsec_to_clock_t(i64 noundef %system.0.lcssa) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call36) #10
  %call37 = call i64 @nsec_to_clock_t(i64 noundef %idle.0.lcssa) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call37) #10
  %call38 = call i64 @nsec_to_clock_t(i64 noundef %iowait.0.lcssa) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call38) #10
  %call39 = call i64 @nsec_to_clock_t(i64 noundef %irq.0.lcssa) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call39) #10
  %call40 = call i64 @nsec_to_clock_t(i64 noundef %softirq.0.lcssa) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call40) #10
  %call41 = call i64 @nsec_to_clock_t(i64 noundef %steal.0.lcssa) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call41) #10
  %call42 = call i64 @nsec_to_clock_t(i64 noundef %guest.0.lcssa) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call42) #10
  %call43 = call i64 @nsec_to_clock_t(i64 noundef %guest_nice.0.lcssa) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call43) #10
  call void @seq_putc(%struct.seq_file* noundef %p, i8 noundef 10) #10
  %call45217 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #13
  %12 = load i32, i32* @nr_cpu_ids, align 4
  %cmp46218 = icmp ult i32 %call45217, %12
  br i1 %cmp46218, label %for.body48.lr.ph, label %for.end73

for.body48.lr.ph:                                 ; preds = %for.end32
  %13 = bitcast %struct.kernel_cpustat* %kcpustat49 to i8*
  %arraydecay52 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat49, i64 0, i32 0, i64 0
  %arrayidx54 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat49, i64 0, i32 0, i64 1
  %arrayidx55 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat49, i64 0, i32 0, i64 2
  %arrayidx58 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat49, i64 0, i32 0, i64 4
  %arrayidx59 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat49, i64 0, i32 0, i64 3
  %arrayidx60 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat49, i64 0, i32 0, i64 7
  %arrayidx61 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat49, i64 0, i32 0, i64 8
  %arrayidx62 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %kcpustat49, i64 0, i32 0, i64 9
  br label %for.body48

for.body48:                                       ; preds = %for.body48.lr.ph, %for.body48
  %call45219 = phi i32 [ %call45217, %for.body48.lr.ph ], [ %call45, %for.body48 ]
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %13) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %13, i8 0, i64 80, i1 false), !annotation !7
  call fastcc void @kcpustat_cpu_fetch(%struct.kernel_cpustat* noundef nonnull %kcpustat49, i32 noundef %call45219) #11
  %14 = load i64, i64* %arraydecay52, align 8
  %15 = load i64, i64* %arrayidx54, align 8
  %16 = load i64, i64* %arrayidx55, align 8
  %call56 = call fastcc i64 @get_idle_time(%struct.kernel_cpustat* noundef nonnull %kcpustat49, i32 noundef %call45219) #11
  %call57 = call fastcc i64 @get_iowait_time(%struct.kernel_cpustat* noundef nonnull %kcpustat49, i32 noundef %call45219) #11
  %17 = load i64, i64* %arrayidx58, align 8
  %18 = load i64, i64* %arrayidx59, align 8
  %19 = load i64, i64* %arrayidx60, align 8
  %20 = load i64, i64* %arrayidx61, align 8
  %21 = load i64, i64* %arrayidx62, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %call45219) #10
  %call63 = call i64 @nsec_to_clock_t(i64 noundef %14) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call63) #10
  %call64 = call i64 @nsec_to_clock_t(i64 noundef %15) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call64) #10
  %call65 = call i64 @nsec_to_clock_t(i64 noundef %16) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call65) #10
  %call66 = call i64 @nsec_to_clock_t(i64 noundef %call56) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call66) #10
  %call67 = call i64 @nsec_to_clock_t(i64 noundef %call57) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call67) #10
  %call68 = call i64 @nsec_to_clock_t(i64 noundef %17) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call68) #10
  %call69 = call i64 @nsec_to_clock_t(i64 noundef %18) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call69) #10
  %call70 = call i64 @nsec_to_clock_t(i64 noundef %19) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call70) #10
  %call71 = call i64 @nsec_to_clock_t(i64 noundef %20) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call71) #10
  %call72 = call i64 @nsec_to_clock_t(i64 noundef %21) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %call72) #10
  call void @seq_putc(%struct.seq_file* noundef %p, i8 noundef 10) #10
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %13) #12
  %call45 = call i32 @cpumask_next(i32 noundef %call45219, %struct.cpumask* noundef nonnull @__cpu_online_mask) #13
  %22 = load i32, i32* @nr_cpu_ids, align 4
  %cmp46 = icmp ult i32 %call45, %22
  br i1 %cmp46, label %for.body48, label %for.end73

for.end73:                                        ; preds = %for.body48, %for.end32
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 noundef %sum.0.lcssa) #10
  call fastcc void @show_all_irqs(%struct.seq_file* noundef %p) #11
  %call74 = call i64 @nr_context_switches() #10
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %boottime, i64 0, i32 0
  %23 = load i64, i64* %tv_sec, align 8
  %24 = load i64, i64* @total_forks, align 8
  %call75 = call i32 @nr_running() #10
  %call76 = call i32 @nr_iowait() #10
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i64 noundef %call74, i64 noundef %23, i64 noundef %24, i32 noundef %call75, i32 noundef %call76) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 noundef %sum_softirq.0.lcssa) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %per_softirq_sums.sroa.0.1) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %per_softirq_sums.sroa.6.1) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %per_softirq_sums.sroa.9.1) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %per_softirq_sums.sroa.12.1) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %per_softirq_sums.sroa.15.1) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %per_softirq_sums.sroa.18.1) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %per_softirq_sums.sroa.21.1) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %per_softirq_sums.sroa.24.1) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %per_softirq_sums.sroa.27.1) #10
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %per_softirq_sums.sroa.30.1) #10
  call void @seq_putc(%struct.seq_file* noundef %p, i8 noundef 10) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @getboottime64(%struct.timespec64* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @kcpustat_cpu_fetch(%struct.kernel_cpustat* nocapture noundef writeonly %dst, i32 noundef %cpu) unnamed_addr #7 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.kernel_cpustat* @kernel_cpustat to i64)
  %1 = bitcast %struct.kernel_cpustat* %dst to i8*
  %2 = inttoptr i64 %add to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(80) %1, i8* noundef align 8 dereferenceable(80) %2, i64 80, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_idle_time(%struct.kernel_cpustat* nocapture noundef readonly %kcs, i32 noundef %cpu) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @cpu_online(i32 noundef %cpu) #11
  %arrayidx = getelementptr %struct.kernel_cpustat, %struct.kernel_cpustat* %kcs, i64 0, i32 0, i64 5
  %0 = load i64, i64* %arrayidx, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_iowait_time(%struct.kernel_cpustat* nocapture noundef readonly %kcs, i32 noundef %cpu) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @cpu_online(i32 noundef %cpu) #11
  %arrayidx = getelementptr %struct.kernel_cpustat, %struct.kernel_cpustat* %kcs, i64 0, i32 0, i64 6
  %0 = load i64, i64* %arrayidx, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @kstat_cpu_irqs_sum(i32 noundef %cpu) unnamed_addr #8 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.kernel_stat* @kstat to i64)
  %1 = inttoptr i64 %add to %struct.kernel_stat*
  %irqs_sum = getelementptr inbounds %struct.kernel_stat, %struct.kernel_stat* %1, i64 0, i32 0
  %2 = load i64, i64* %irqs_sum, align 8
  %conv = trunc i64 %2 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @kstat_softirqs_cpu(i32 noundef %irq, i32 noundef %cpu) unnamed_addr #8 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.kernel_stat* @kstat to i64)
  %1 = inttoptr i64 %add to %struct.kernel_stat*
  %idxprom2 = zext i32 %irq to i64
  %arrayidx3 = getelementptr %struct.kernel_stat, %struct.kernel_stat* %1, i64 0, i32 1, i64 %idxprom2
  %2 = load i32, i32* %arrayidx3, align 4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(%struct.seq_file* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(%struct.seq_file* noundef, i8 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_all_irqs(%struct.seq_file* noundef %p) unnamed_addr #2 {
entry:
  %call = call i32 @irq_get_next_irq(i32 noundef 0) #10
  %0 = load i32, i32* @nr_irqs, align 4
  %cmp14 = icmp ult i32 %call, %0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %next.016 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %i.015 = phi i32 [ %call3, %for.body ], [ %call, %entry ]
  %sub = sub i32 %i.015, %next.016
  call fastcc void @show_irq_gap(%struct.seq_file* noundef %p, i32 noundef %sub) #11
  %call1 = call i32 @kstat_irqs_usr(i32 noundef %i.015) #10
  %conv = zext i32 %call1 to i64
  call void @seq_put_decimal_ull(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef %conv) #10
  %add = add nuw i32 %i.015, 1
  %call3 = call i32 @irq_get_next_irq(i32 noundef %add) #10
  %1 = load i32, i32* @nr_irqs, align 4
  %cmp = icmp ult i32 %call3, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %next.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %.lcssa = phi i32 [ %0, %entry ], [ %1, %for.body ]
  %sub4 = sub i32 %.lcssa, %next.0.lcssa
  call fastcc void @show_irq_gap(%struct.seq_file* noundef %p, i32 noundef %sub4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nr_context_switches() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_running() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_iowait() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_online(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) #11
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_next_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_irq_gap(%struct.seq_file* noundef %p, i32 noundef %gap) unnamed_addr #2 {
entry:
  %cmp.not10 = icmp eq i32 %gap, 0
  br i1 %cmp.not10, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %gap.addr.011 = phi i32 [ %sub, %while.body ], [ %gap, %entry ]
  %cmp1 = icmp ult i32 %gap.addr.011, 16
  %cond = select i1 %cmp1, i32 %gap.addr.011, i32 16
  %mul = shl nuw nsw i32 %cond, 1
  %conv = zext i32 %mul to i64
  %call = call i32 @seq_write(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @show_irq_gap.zeros, i64 0, i64 0), i64 noundef %conv) #10
  %sub = sub i32 %gap.addr.011, %cond
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstat_irqs_usr(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(%struct.seq_file* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
