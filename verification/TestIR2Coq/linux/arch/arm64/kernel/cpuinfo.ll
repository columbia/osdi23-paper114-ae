; ModuleID = 'arch/arm64/kernel/cpuinfo.c'
source_filename = "arch/arm64/kernel/cpuinfo.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_cpuinfo__204_324_cpuinfo_regs_init6:\09\09\09"
module asm ".long\09cpuinfo_regs_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.seq_operations = type { {}*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.lock_class_key = type {}
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
%struct.page = type { i64, %union.anon.33, %union.anon.51, %struct.atomic_t, [8 x i8] }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.51 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.52, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.52 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { i64 }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.60, i32, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.53 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.54 = type { %struct.callback_head }
%union.anon.55 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.35 }
%union.anon.35 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.36, %union.anon.37 }
%union.anon.36 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.37 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.56, %struct.qspinlock }
%union.anon.56 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
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
%struct.cpuinfo_arm64 = type { %struct.cpu, %struct.kobject, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.cpuinfo_32bit, i64 }
%struct.cpu = type { i32, i32, %struct.device }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.65 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.cpuinfo_32bit = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kobj_attribute = type { %struct.attribute, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)*, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* }

@cpuinfo_op = dso_local local_unnamed_addr constant { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* } { i8* (%struct.seq_file*, i64*)* @c_start, void (%struct.seq_file*, i8*)* @c_stop, i8* (%struct.seq_file*, i8*, i64*)* @c_next, i32 (%struct.seq_file*, i8*)* @c_show }, align 8
@__UNIQUE_ID___addressable_cpuinfo_regs_init205 = internal global i8* bitcast (i32 ()* @cpuinfo_regs_init to i8*), section ".discard.addressable", align 8
@cpu_data = dso_local global %struct.cpuinfo_arm64 zeroinitializer, section ".data..percpu", align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@boot_cpu_data = internal global %struct.cpuinfo_arm64 zeroinitializer, align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@__icache_flags = dso_local global i64 0, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [16 x i8] c"processor\09: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"model name\09: ARMv8 Processor rev %d (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"v8l\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"BogoMIPS\09: %lu.%02lu\0A\00", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"Features\09:\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@hwcap_str = internal unnamed_addr constant [51 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0)], align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"CPU implementer\09: 0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"CPU architecture: 8\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"CPU variant\09: 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"CPU part\09: 0x%03x\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"CPU revision\09: %d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"asimd\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"evtstrm\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"pmull\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"sha2\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"crc32\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"atomics\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"fphp\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"asimdhp\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"cpuid\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"asimdrdm\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"jscvt\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"fcma\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"lrcpc\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"dcpop\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"sha3\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"sm3\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"sm4\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"asimddp\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"sve\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"asimdfhm\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"dit\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"uscat\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"ilrcpc\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"flagm\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"ssbs\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"paca\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"pacg\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"dcpodp\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"sve2\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"sveaes\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"svepmull\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"svebitperm\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"svesha3\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"svesm4\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"flagm2\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"frint\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"svei8mm\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"svef32mm\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"svef64mm\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"svebf16\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"i8mm\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"bf16\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"dgh\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"rng\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"bti\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"mte\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@cpuregs_kobj_type = internal global %struct.kobj_type { void (%struct.kobject*)* null, %struct.sysfs_ops* @kobj_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@.str.63 = private unnamed_addr constant [21 x i8] c"arm64/cpuinfo:online\00", align 1
@.str.64 = private unnamed_addr constant [50 x i8] c"\013cpuinfo: failed to register hotplug callbacks.\0A\00", align 1
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 8
@.str.65 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@cpuregs_attr_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([3 x %struct.attribute*], [3 x %struct.attribute*]* @cpuregs_id_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@.str.66 = private unnamed_addr constant [15 x i8] c"identification\00", align 1
@cpuregs_id_attrs = internal global [3 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @cpuregs_attr_midr_el1, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @cpuregs_attr_revidr_el1, i32 0, i32 0), %struct.attribute* null], align 8
@cpuregs_attr_midr_el1 = internal global %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i16 292 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @midr_el1_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* null }, align 8
@cpuregs_attr_revidr_el1 = internal global %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i16 292 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @revidr_el1_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* null }, align 8
@.str.67 = private unnamed_addr constant [9 x i8] c"midr_el1\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"0x%016llx\0A\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"revidr_el1\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"\016Detected %s I-cache on CPU%d\0A\00", align 1
@icache_policy_str = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0)], align 8
@.str.71 = private unnamed_addr constant [6 x i8] c"VPIPT\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"RESERVED/UNKNOWN\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"VIPT\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"PIPT\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_cpuinfo_regs_init205 to i8*)], section "llvm.metadata"
@switch.table.cpuinfo_detect_icache_policy = private unnamed_addr constant [3 x i64] [i64 1, i64 0, i64 0], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i8* @c_start(%struct.seq_file* nocapture noundef readnone %m, i64* nocapture noundef readonly %pos) #0 {
entry:
  %0 = load i64, i64* %pos, align 8
  %cmp = icmp slt i64 %0, 1
  %cond = select i1 %cmp, i8* inttoptr (i64 1 to i8*), i8* null
  ret i8* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @c_stop(%struct.seq_file* nocapture noundef %m, i8* nocapture noundef %v) #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal noalias i8* @c_next(%struct.seq_file* nocapture noundef readnone %m, i8* nocapture noundef readnone %v, i64* nocapture noundef %pos) #2 {
entry:
  %0 = load i64, i64* %pos, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %pos, align 8
  ret i8* null
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @c_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %personality = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 44
  %2 = load i32, i32* %personality, align 16
  %and = and i32 %2, 255
  %cmp = icmp eq i32 %and, 8
  %call156 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #13
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp257 = icmp ult i32 %call156, %3
  br i1 %cmp257, label %for.body, label %for.end25

for.body:                                         ; preds = %entry, %if.end18
  %call158 = phi i32 [ %call1, %if.end18 ], [ %call156, %entry ]
  %idxprom = sext i32 %call158 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, ptrtoint (%struct.cpuinfo_arm64* @cpu_data to i64)
  %5 = inttoptr i64 %add to %struct.cpuinfo_arm64*
  %reg_midr = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %5, i64 0, i32 5
  %6 = load i64, i64* %reg_midr, align 8
  %conv = trunc i64 %6 to i32
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %call158) #14
  br i1 %cmp, label %if.then, label %if.else.critedge

if.then:                                          ; preds = %for.body
  %and4 = and i32 %conv, 15
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 noundef %and4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #14
  %7 = load i64, i64* @loops_per_jiffy, align 8
  %div = udiv i64 %7, 2000
  %div5 = udiv i64 %7, 20
  %rem = urem i64 %div5, 100
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 noundef %div, i64 noundef %rem) #14
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #14
  br label %if.end18

if.else.critedge:                                 ; preds = %for.body
  %8 = load i64, i64* @loops_per_jiffy, align 8
  %div.c = udiv i64 %8, 2000
  %div5.c = udiv i64 %8, 20
  %rem.c = urem i64 %div5.c, 100
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 noundef %div.c, i64 noundef %rem.c) #14
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #14
  br label %for.body12

for.body12:                                       ; preds = %if.else.critedge, %for.inc
  %indvars.iv = phi i64 [ 0, %if.else.critedge ], [ %indvars.iv.next, %for.inc ]
  %9 = trunc i64 %indvars.iv to i32
  %call13 = call i1 @cpu_have_feature(i32 noundef %9) #14
  br i1 %call13, label %if.then14, label %for.inc

if.then14:                                        ; preds = %for.body12
  %arrayidx16 = getelementptr [51 x i8*], [51 x i8*]* @hwcap_str, i64 0, i64 %indvars.iv
  %10 = load i8*, i8** %arrayidx16, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef %10) #14
  br label %for.inc

for.inc:                                          ; preds = %for.body12, %if.then14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 51
  br i1 %exitcond.not, label %if.end18.loopexit, label %for.body12

if.end18.loopexit:                                ; preds = %for.inc
  %.pre = and i32 %conv, 15
  br label %if.end18

if.end18:                                         ; preds = %if.end18.loopexit, %if.then
  %and24.pre-phi = phi i32 [ %.pre, %if.end18.loopexit ], [ %and4, %if.then ]
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #14
  %shr = lshr i32 %conv, 24
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef %shr) #14
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0)) #14
  %and20 = lshr i32 %conv, 20
  %shr21 = and i32 %and20, 15
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 noundef %shr21) #14
  %and22 = lshr i32 %conv, 4
  %shr23 = and i32 %and22, 4095
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 noundef %shr23) #14
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %and24.pre-phi) #14
  %call1 = call i32 @cpumask_next(i32 noundef %call158, %struct.cpumask* noundef nonnull @__cpu_online_mask) #13
  %11 = load i32, i32* @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call1, %11
  br i1 %cmp2, label %for.body, label %for.end25

for.end25:                                        ; preds = %if.end18, %entry
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @cpuinfo_regs_init() #4 section ".init.text" {
entry:
  %call18 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #13
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp19 = icmp ult i32 %call18, %0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call20 = phi i32 [ %call, %for.body ], [ %call18, %entry ]
  %idxprom = sext i32 %call20 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.cpuinfo_arm64* @cpu_data to i64)
  %2 = inttoptr i64 %add to %struct.cpuinfo_arm64*
  %kobj = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %2, i64 0, i32 1
  call void @kobject_init(%struct.kobject* noundef %kobj, %struct.kobj_type* noundef nonnull @cpuregs_kobj_type) #14
  %call = call i32 @cpumask_next(i32 noundef %call20, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #13
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %call2 = call fastcc i32 @cpuhp_setup_state() #15
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end6, label %cleanup

do.end6:                                          ; preds = %for.end
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.64, i64 0, i64 0)) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end6
  %retval.0 = phi i32 [ %call2, %do.end6 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cpuinfo_store_cpu() local_unnamed_addr #3 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.cpuinfo_arm64* @cpu_data to i64)
  %0 = inttoptr i64 %add to %struct.cpuinfo_arm64*
  call fastcc void @__cpuinfo_store_cpu(%struct.cpuinfo_arm64* noundef %0) #15
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add10 = add i64 %call9, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add10 to i32*
  %2 = load i32, i32* %1, align 4
  call void @update_cpu_features(i32 noundef %2, %struct.cpuinfo_arm64* noundef %0, %struct.cpuinfo_arm64* noundef nonnull @boot_cpu_data) #14
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #5 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #17, !srcloc !9
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cpuinfo_store_cpu(%struct.cpuinfo_arm64* noundef %info) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @arch_timer_get_cntfrq() #15
  %conv = zext i32 %call to i64
  %reg_cntfrq = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 3
  store i64 %conv, i64* %reg_cntfrq, align 8
  %call1 = call fastcc i32 @read_cpuid_effective_cachetype() #18
  %conv2 = zext i32 %call1 to i64
  %reg_ctr = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 2
  store i64 %conv2, i64* %reg_ctr, align 8
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((3) << 16) | ((0) << 12) | ((0) << 8) | ((7) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !10
  %reg_dczid = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 4
  store i64 %0, i64* %reg_dczid, align 8
  %call3 = call fastcc i32 @read_cpuid_id() #18
  %conv4 = zext i32 %call3 to i64
  %reg_midr = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 5
  store i64 %conv4, i64* %reg_midr, align 8
  %1 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((0) << 8) | ((6) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !11
  %reg_revidr = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 6
  store i64 %1, i64* %reg_revidr, align 8
  %2 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((5) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !12
  %reg_id_aa64dfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 8
  store i64 %2, i64* %reg_id_aa64dfr0, align 8
  %3 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((5) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !13
  %reg_id_aa64dfr1 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 9
  store i64 %3, i64* %reg_id_aa64dfr1, align 8
  %4 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !14
  %reg_id_aa64isar0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 10
  store i64 %4, i64* %reg_id_aa64isar0, align 8
  %5 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((6) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !15
  %reg_id_aa64isar1 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 11
  store i64 %5, i64* %reg_id_aa64isar1, align 8
  %6 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((7) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !16
  %reg_id_aa64mmfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 12
  store i64 %6, i64* %reg_id_aa64mmfr0, align 8
  %7 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((7) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !17
  %reg_id_aa64mmfr1 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 13
  store i64 %7, i64* %reg_id_aa64mmfr1, align 8
  %8 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((7) << 8) | ((2) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !18
  %reg_id_aa64mmfr2 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 14
  store i64 %8, i64* %reg_id_aa64mmfr2, align 8
  %9 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((4) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !19
  %reg_id_aa64pfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 15
  store i64 %9, i64* %reg_id_aa64pfr0, align 8
  %10 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((4) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !20
  %reg_id_aa64pfr1 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 16
  store i64 %10, i64* %reg_id_aa64pfr1, align 8
  %11 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((4) << 8) | ((4) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !21
  %reg_id_aa64zfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 17
  store i64 %11, i64* %reg_id_aa64zfr0, align 8
  %12 = load i64, i64* %reg_id_aa64pfr1, align 8
  %call28 = call fastcc i1 @id_aa64pfr1_mte(i64 noundef %12) #15
  br i1 %call28, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((1) << 16) | ((0) << 12) | ((0) << 8) | ((4) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !22
  %reg_gmid = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 7
  store i64 %13, i64* %reg_gmid, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i64, i64* %reg_id_aa64pfr0, align 8
  %call32 = call fastcc i1 @id_aa64pfr0_32bit_el0(i64 noundef %14) #15
  br i1 %call32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end
  %aarch32 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 18
  call fastcc void @__cpuinfo_store_cpu_32bit(%struct.cpuinfo_32bit* noundef %aarch32) #15
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end
  call fastcc void @cpuinfo_detect_icache_policy(%struct.cpuinfo_arm64* noundef %info) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_cpu_features(i32 noundef, %struct.cpuinfo_arm64* noundef, %struct.cpuinfo_arm64* noundef) local_unnamed_addr #6

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @cpuinfo_store_boot_cpu() local_unnamed_addr #4 section ".init.text" {
entry:
  %0 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 0), align 8
  %add = add i64 %0, ptrtoint (%struct.cpuinfo_arm64* @cpu_data to i64)
  %1 = inttoptr i64 %add to %struct.cpuinfo_arm64*
  call fastcc void @__cpuinfo_store_cpu(%struct.cpuinfo_arm64* noundef %1) #15
  %2 = inttoptr i64 %add to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(768) bitcast (%struct.cpuinfo_arm64* @boot_cpu_data to i8*), i8* noundef align 8 dereferenceable(768) %2, i64 768, i1 false)
  call void @init_cpu_features(%struct.cpuinfo_arm64* noundef nonnull @boot_cpu_data) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @init_cpu_features(%struct.cpuinfo_arm64* noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(%struct.seq_file* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cpu_have_feature(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(%struct.kobject* noundef, %struct.kobj_type* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state() unnamed_addr #3 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 192, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i64 0, i64 0), i1 noundef true, i32 (i32)* noundef nonnull @cpuid_cpu_online, i32 (i32)* noundef nonnull @cpuid_cpu_offline, i1 noundef false) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @cpuid_cpu_online(i32 noundef %cpu) #3 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %call = call %struct.device* @get_cpu_device(i32 noundef %cpu) #14
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %add = add i64 %0, ptrtoint (%struct.cpuinfo_arm64* @cpu_data to i64)
  %1 = inttoptr i64 %add to %struct.cpuinfo_arm64*
  %kobj = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %1, i64 0, i32 1
  %kobj2 = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 0
  %call3 = call i32 (%struct.kobject*, %struct.kobject*, i8*, ...) @kobject_add(%struct.kobject* noundef %kobj, %struct.kobject* noundef %kobj2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #14
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %out

if.end6:                                          ; preds = %if.end
  %call8 = call i32 @sysfs_create_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef nonnull @cpuregs_attr_group) #14
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %out, label %if.then10

if.then10:                                        ; preds = %if.end6
  call void @kobject_del(%struct.kobject* noundef %kobj) #14
  br label %out

out:                                              ; preds = %entry, %if.end6, %if.then10, %if.end
  %rc.0 = phi i32 [ %call3, %if.end ], [ %call8, %if.then10 ], [ 0, %if.end6 ], [ -19, %entry ]
  ret i32 %rc.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @cpuid_cpu_offline(i32 noundef %cpu) #3 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %call = call %struct.device* @get_cpu_device(i32 noundef %cpu) #14
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i64 %0, ptrtoint (%struct.cpuinfo_arm64* @cpu_data to i64)
  %1 = inttoptr i64 %add to %struct.cpuinfo_arm64*
  %kobj = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %1, i64 0, i32 1
  %parent = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %1, i64 0, i32 1, i32 2
  %2 = load %struct.kobject*, %struct.kobject** %parent, align 8
  %tobool2.not = icmp eq %struct.kobject* %2, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @sysfs_remove_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef nonnull @cpuregs_attr_group) #14
  call void @kobject_del(%struct.kobject* noundef %kobj) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ -19, %entry ], [ 0, %if.then3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_cpu_device(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(%struct.kobject* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @midr_el1_show(%struct.kobject* nocapture noundef readonly %kobj, %struct.kobj_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #3 {
entry:
  %add.ptr = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -8, i32 3
  %reg_midr = getelementptr inbounds %struct.kset*, %struct.kset** %add.ptr, i64 71
  %0 = bitcast %struct.kset** %reg_midr to i64*
  %1 = load i64, i64* %0, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i64 noundef %1) #14
  %conv = sext i32 %call to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @revidr_el1_show(%struct.kobject* nocapture noundef readonly %kobj, %struct.kobj_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #3 {
entry:
  %add.ptr = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -8, i32 3
  %reg_midr = getelementptr inbounds %struct.kset*, %struct.kset** %add.ptr, i64 71
  %0 = bitcast %struct.kset** %reg_midr to i64*
  %1 = load i64, i64* %0, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %reg_revidr = getelementptr inbounds %struct.kset*, %struct.kset** %add.ptr, i64 72
  %2 = bitcast %struct.kset** %reg_revidr to i64*
  %3 = load i64, i64* %2, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i64 noundef %3) #14
  %conv = sext i32 %call to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_timer_get_cntfrq() unnamed_addr #3 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, cntfrq_el0", "=r"() #19, !srcloc !23
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @read_cpuid_effective_cachetype() unnamed_addr #11 {
entry:
  %call = call fastcc i32 @read_cpuid_cachetype() #18
  %0 = and i32 %call, 268435456
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %1 = call i64 asm sideeffect "mrs $0, clidr_el1", "=r"() #19, !srcloc !24
  %2 = and i64 %1, 117440512
  %cmp = icmp eq i64 %2, 0
  %3 = and i64 %1, 954204160
  %4 = icmp eq i64 %3, 0
  %or.cond = or i1 %cmp, %4
  %or = or i32 %call, 268435456
  %spec.select = select i1 %or.cond, i32 %or, i32 %call
  br label %if.end14

if.end14:                                         ; preds = %if.then, %entry
  %ctr.1 = phi i32 [ %call, %entry ], [ %spec.select, %if.then ]
  ret i32 %ctr.1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @read_cpuid_id() unnamed_addr #11 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((0) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !25
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @id_aa64pfr1_mte(i64 noundef %pfr1) unnamed_addr #1 {
entry:
  %0 = and i64 %pfr1, 3584
  %cmp = icmp ne i64 %0, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @id_aa64pfr0_32bit_el0(i64 noundef %pfr0) unnamed_addr #1 {
entry:
  %conv.i.i2 = and i64 %pfr0, 15
  %cmp = icmp eq i64 %conv.i.i2, 2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cpuinfo_store_cpu_32bit(%struct.cpuinfo_32bit* noundef writeonly %info) unnamed_addr #3 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((2) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !26
  %conv = trunc i64 %0 to i32
  %reg_id_dfr0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 0
  store i32 %conv, i32* %reg_id_dfr0, align 4
  %1 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((5) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !27
  %conv3 = trunc i64 %1 to i32
  %reg_id_dfr1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 1
  store i32 %conv3, i32* %reg_id_dfr1, align 4
  %2 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !28
  %conv6 = trunc i64 %2 to i32
  %reg_id_isar0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 2
  store i32 %conv6, i32* %reg_id_isar0, align 4
  %3 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !29
  %conv9 = trunc i64 %3 to i32
  %reg_id_isar1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 3
  store i32 %conv9, i32* %reg_id_isar1, align 4
  %4 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((2) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !30
  %conv12 = trunc i64 %4 to i32
  %reg_id_isar2 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 4
  store i32 %conv12, i32* %reg_id_isar2, align 4
  %5 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((3) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !31
  %conv15 = trunc i64 %5 to i32
  %reg_id_isar3 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 5
  store i32 %conv15, i32* %reg_id_isar3, align 4
  %6 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((4) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !32
  %conv18 = trunc i64 %6 to i32
  %reg_id_isar4 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 6
  store i32 %conv18, i32* %reg_id_isar4, align 4
  %7 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((5) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !33
  %conv21 = trunc i64 %7 to i32
  %reg_id_isar5 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 7
  store i32 %conv21, i32* %reg_id_isar5, align 4
  %8 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((7) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !34
  %conv24 = trunc i64 %8 to i32
  %reg_id_isar6 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 8
  store i32 %conv24, i32* %reg_id_isar6, align 4
  %9 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((4) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !35
  %conv27 = trunc i64 %9 to i32
  %reg_id_mmfr0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 9
  store i32 %conv27, i32* %reg_id_mmfr0, align 4
  %10 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((5) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !36
  %conv30 = trunc i64 %10 to i32
  %reg_id_mmfr1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 10
  store i32 %conv30, i32* %reg_id_mmfr1, align 4
  %11 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((6) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !37
  %conv33 = trunc i64 %11 to i32
  %reg_id_mmfr2 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 11
  store i32 %conv33, i32* %reg_id_mmfr2, align 4
  %12 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((7) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !38
  %conv36 = trunc i64 %12 to i32
  %reg_id_mmfr3 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 12
  store i32 %conv36, i32* %reg_id_mmfr3, align 4
  %13 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((6) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !39
  %conv39 = trunc i64 %13 to i32
  %reg_id_mmfr4 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 13
  store i32 %conv39, i32* %reg_id_mmfr4, align 4
  %14 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((6) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !40
  %conv42 = trunc i64 %14 to i32
  %reg_id_mmfr5 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 14
  store i32 %conv42, i32* %reg_id_mmfr5, align 4
  %15 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !41
  %conv45 = trunc i64 %15 to i32
  %reg_id_pfr0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 15
  store i32 %conv45, i32* %reg_id_pfr0, align 4
  %16 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !42
  %conv48 = trunc i64 %16 to i32
  %reg_id_pfr1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 16
  store i32 %conv48, i32* %reg_id_pfr1, align 4
  %17 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((4) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !43
  %conv51 = trunc i64 %17 to i32
  %reg_id_pfr2 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 17
  store i32 %conv51, i32* %reg_id_pfr2, align 4
  %18 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !44
  %conv54 = trunc i64 %18 to i32
  %reg_mvfr0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 18
  store i32 %conv54, i32* %reg_mvfr0, align 4
  %19 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !45
  %conv57 = trunc i64 %19 to i32
  %reg_mvfr1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 19
  store i32 %conv57, i32* %reg_mvfr1, align 4
  %20 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((2) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !46
  %conv60 = trunc i64 %20 to i32
  %reg_mvfr2 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 20
  store i32 %conv60, i32* %reg_mvfr2, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuinfo_detect_icache_policy(%struct.cpuinfo_arm64* nocapture noundef readonly %info) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %reg_ctr = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 2
  %2 = load i64, i64* %reg_ctr, align 8
  %3 = trunc i64 %2 to i32
  %4 = lshr i32 %3, 14
  %conv = and i32 %4, 3
  %.not = icmp eq i32 %conv, 3
  br i1 %.not, label %do.end5, label %switch.lookup

switch.lookup:                                    ; preds = %entry
  %5 = zext i32 %conv to i64
  %switch.gep = getelementptr inbounds [3 x i64], [3 x i64]* @switch.table.cpuinfo_detect_icache_policy, i64 0, i64 %5
  %switch.load = load i64, i64* %switch.gep, align 8
  call fastcc void @set_bit(i64 noundef %switch.load) #15
  br label %do.end5

do.end5:                                          ; preds = %entry, %switch.lookup
  %idxprom = zext i32 %conv to i64
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @icache_policy_str, i64 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.70, i64 0, i64 0), i8* noundef %6, i32 noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @read_cpuid_cachetype() unnamed_addr #11 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((3) << 16) | ((0) << 12) | ((0) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #19, !srcloc !47
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr) unnamed_addr #3 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i) unnamed_addr #3 {
entry:
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* nonnull elementtype(i64) @__icache_flags, i64 %i, i64* nonnull elementtype(i64) @__icache_flags) #19, !srcloc !48
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nofree nounwind readonly }
attributes #11 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nounwind readnone }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind readonly }
attributes #18 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #19 = { nounwind }

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
!8 = !{i64 1391631}
!9 = !{i64 2148953936, i64 2148953983, i64 2148953989, i64 2148954026, i64 2148954044, i64 2148954971, i64 2148955019, i64 2148955067, i64 2148955130, i64 2148955179, i64 2148954122, i64 2148954147, i64 2148954173, i64 2148954179, i64 2148954216, i64 2148954222, i64 2148954272, i64 2148954318, i64 2148954351}
!10 = !{i64 2152530300, i64 2152530402, i64 2152530442, i64 2152530460, i64 2152530202, i64 2152530490, i64 2152530518, i64 2152530018, i64 2152530851}
!11 = !{i64 2152531587, i64 2152531689, i64 2152531729, i64 2152531747, i64 2152531489, i64 2152531777, i64 2152531805, i64 2152531305, i64 2152532138}
!12 = !{i64 2152532884, i64 2152532986, i64 2152533026, i64 2152533044, i64 2152532786, i64 2152533074, i64 2152533102, i64 2152532602, i64 2152533435}
!13 = !{i64 2152534181, i64 2152534283, i64 2152534323, i64 2152534341, i64 2152534083, i64 2152534371, i64 2152534399, i64 2152533899, i64 2152534732}
!14 = !{i64 2152535480, i64 2152535582, i64 2152535622, i64 2152535640, i64 2152535382, i64 2152535670, i64 2152535698, i64 2152535198, i64 2152536031}
!15 = !{i64 2152536779, i64 2152536881, i64 2152536921, i64 2152536939, i64 2152536681, i64 2152536969, i64 2152536997, i64 2152536497, i64 2152537330}
!16 = !{i64 2152538078, i64 2152538180, i64 2152538220, i64 2152538238, i64 2152537980, i64 2152538268, i64 2152538296, i64 2152537796, i64 2152538629}
!17 = !{i64 2152539377, i64 2152539479, i64 2152539519, i64 2152539537, i64 2152539279, i64 2152539567, i64 2152539595, i64 2152539095, i64 2152539928}
!18 = !{i64 2152540676, i64 2152540778, i64 2152540818, i64 2152540836, i64 2152540578, i64 2152540866, i64 2152540894, i64 2152540394, i64 2152541227}
!19 = !{i64 2152541973, i64 2152542075, i64 2152542115, i64 2152542133, i64 2152541875, i64 2152542163, i64 2152542191, i64 2152541691, i64 2152542524}
!20 = !{i64 2152543270, i64 2152543372, i64 2152543412, i64 2152543430, i64 2152543172, i64 2152543460, i64 2152543488, i64 2152542988, i64 2152543821}
!21 = !{i64 2152544567, i64 2152544669, i64 2152544709, i64 2152544727, i64 2152544469, i64 2152544757, i64 2152544785, i64 2152544285, i64 2152545118}
!22 = !{i64 2152545850, i64 2152545952, i64 2152545992, i64 2152546010, i64 2152545752, i64 2152546040, i64 2152546068, i64 2152545568, i64 2152546401}
!23 = !{i64 2149048550}
!24 = !{i64 2148465517}
!25 = !{i64 2147749023, i64 2147749125, i64 2147749165, i64 2147749183, i64 2147748925, i64 2147749213, i64 2147749241, i64 2147748741, i64 2147749574}
!26 = !{i64 2152499160, i64 2152499262, i64 2152499302, i64 2152499320, i64 2152499062, i64 2152499350, i64 2152499378, i64 2152498878, i64 2152499711}
!27 = !{i64 2152500449, i64 2152500551, i64 2152500591, i64 2152500609, i64 2152500351, i64 2152500639, i64 2152500667, i64 2152500167, i64 2152501000}
!28 = !{i64 2152501740, i64 2152501842, i64 2152501882, i64 2152501900, i64 2152501642, i64 2152501930, i64 2152501958, i64 2152501458, i64 2152502291}
!29 = !{i64 2152503031, i64 2152503133, i64 2152503173, i64 2152503191, i64 2152502933, i64 2152503221, i64 2152503249, i64 2152502749, i64 2152503582}
!30 = !{i64 2152504322, i64 2152504424, i64 2152504464, i64 2152504482, i64 2152504224, i64 2152504512, i64 2152504540, i64 2152504040, i64 2152504873}
!31 = !{i64 2152505613, i64 2152505715, i64 2152505755, i64 2152505773, i64 2152505515, i64 2152505803, i64 2152505831, i64 2152505331, i64 2152510225}
!32 = !{i64 2152510965, i64 2152511067, i64 2152511107, i64 2152511125, i64 2152510867, i64 2152511155, i64 2152511183, i64 2152510683, i64 2152511516}
!33 = !{i64 2152512256, i64 2152512358, i64 2152512398, i64 2152512416, i64 2152512158, i64 2152512446, i64 2152512474, i64 2152511974, i64 2152512807}
!34 = !{i64 2152513547, i64 2152513649, i64 2152513689, i64 2152513707, i64 2152513449, i64 2152513737, i64 2152513765, i64 2152513265, i64 2152514098}
!35 = !{i64 2152514838, i64 2152514940, i64 2152514980, i64 2152514998, i64 2152514740, i64 2152515028, i64 2152515056, i64 2152514556, i64 2152515389}
!36 = !{i64 2152516129, i64 2152516231, i64 2152516271, i64 2152516289, i64 2152516031, i64 2152516319, i64 2152516347, i64 2152515847, i64 2152516680}
!37 = !{i64 2152517420, i64 2152517522, i64 2152517562, i64 2152517580, i64 2152517322, i64 2152517610, i64 2152517638, i64 2152517138, i64 2152517971}
!38 = !{i64 2152518711, i64 2152518813, i64 2152518853, i64 2152518871, i64 2152518613, i64 2152518901, i64 2152518929, i64 2152518429, i64 2152519262}
!39 = !{i64 2152520002, i64 2152520104, i64 2152520144, i64 2152520162, i64 2152519904, i64 2152520192, i64 2152520220, i64 2152519720, i64 2152520553}
!40 = !{i64 2152521293, i64 2152521395, i64 2152521435, i64 2152521453, i64 2152521195, i64 2152521483, i64 2152521511, i64 2152521011, i64 2152521844}
!41 = !{i64 2152522582, i64 2152522684, i64 2152522724, i64 2152522742, i64 2152522484, i64 2152522772, i64 2152522800, i64 2152522300, i64 2152523133}
!42 = !{i64 2152523871, i64 2152523973, i64 2152524013, i64 2152524031, i64 2152523773, i64 2152524061, i64 2152524089, i64 2152523589, i64 2152524422}
!43 = !{i64 2152525160, i64 2152525262, i64 2152525302, i64 2152525320, i64 2152525062, i64 2152525350, i64 2152525378, i64 2152524878, i64 2152525711}
!44 = !{i64 2152526445, i64 2152526547, i64 2152526587, i64 2152526605, i64 2152526347, i64 2152526635, i64 2152526663, i64 2152526163, i64 2152526996}
!45 = !{i64 2152527730, i64 2152527832, i64 2152527872, i64 2152527890, i64 2152527632, i64 2152527920, i64 2152527948, i64 2152527448, i64 2152528281}
!46 = !{i64 2152529015, i64 2152529117, i64 2152529157, i64 2152529175, i64 2152528917, i64 2152529205, i64 2152529233, i64 2152528733, i64 2152529566}
!47 = !{i64 2147752592, i64 2147752694, i64 2147752734, i64 2147752752, i64 2147752494, i64 2147752782, i64 2147752810, i64 2147752310, i64 2147753143}
!48 = !{i64 2147956786, i64 2147957297, i64 2147957327, i64 2147957353, i64 2147957385, i64 2147957414}
