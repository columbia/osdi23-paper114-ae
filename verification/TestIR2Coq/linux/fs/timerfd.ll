; ModuleID = 'fs/timerfd.c'
source_filename = "fs/timerfd.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.workqueue_struct = type opaque
%struct.lock_class_key = type {}
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.file = type { %union.anon.6, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.6 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.13, i32 }
%union.anon.13 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.62, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.16, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.16 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.18, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.18 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.19, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.20, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.19 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.20 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.21, %union.anon.40, %struct.atomic_t, [8 x i8] }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.40 = type { %struct.atomic_t }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.time_namespace = type { %struct.user_namespace*, %struct.ucounts*, %struct.ns_common, %struct.timens_offsets, %struct.page*, i8 }
%struct.timens_offsets = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i64 }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.47, %union.anon.48, i32 }
%struct.request_queue = type opaque
%union.anon.47 = type { %struct.list_head }
%union.anon.48 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.49 }
%struct.anon.49 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.53 }
%struct.anon.53 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.61, i32, [12 x i8] }
%union.anon.61 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.62 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.63, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.63 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.7, i8* }
%union.anon.7 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.9 }
%union.anon.9 = type { %struct.anon.10, [48 x i8] }
%struct.anon.10 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.11, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.lockref = type { %union.anon.68 }
%union.anon.68 = type { i64 }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.64 = type { i32 }
%union.anon.65 = type { %struct.callback_head }
%union.anon.66 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.72, %struct.qspinlock }
%union.anon.72 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.46 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.46 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.23 }
%union.anon.23 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.24, %union.anon.25 }
%union.anon.24 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.25 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.74 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.74 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.timerfd_ctx = type { %union.anon, i64, i64, %struct.wait_queue_head, i64, i32, i16, i16, %struct.callback_head, %struct.list_head, %struct.spinlock, i8 }
%union.anon = type { %struct.alarm }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, i32 (%struct.alarm*, i64)*, i32, i32, i8* }
%struct.pt_regs = type { %union.anon.3, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.3 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.__kernel_itimerspec = type { %struct.__kernel_timespec, %struct.__kernel_timespec }
%struct.__kernel_timespec = type { i64, i64 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.fd = type { %struct.file*, i32 }

@cancel_list = internal global %struct.list_head { %struct.list_head* @cancel_list, %struct.list_head* @cancel_list }, align 8
@timerfd_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @timerfd_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @timerfd_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @timerfd_resume_work }, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@__do_sys_timerfd_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [10 x i8] c"&ctx->wqh\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"[timerfd]\00", align 1
@timerfd_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @noop_llseek, i64 (%struct.file*, i8*, i64, i64*)* @timerfd_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @timerfd_poll, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @timerfd_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* @timerfd_show, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@cancel_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [93 x i8] c"clockid: %d\0Aticks: %llu\0Asettime flags: 0%o\0Ait_value: (%llu, %llu)\0Ait_interval: (%llu, %llu)\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @timerfd_clock_was_set() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @ktime_mono_to_real() #9
  call fastcc void @__rcu_read_lock() #10
  %.pn51 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @cancel_list, i64 0, i32 0), align 8
  %cmp.not52 = icmp eq %struct.list_head* %.pn51, @cancel_list
  br i1 %cmp.not52, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn53 = phi %struct.list_head* [ %.pn, %for.inc ], [ %.pn51, %entry ]
  %ctx.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn53, i64 -12
  %ctx.0 = bitcast %struct.list_head* %ctx.0.in to %struct.timerfd_ctx*
  %might_cancel = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx.0, i64 0, i32 11
  %0 = load i8, i8* %might_cancel, align 4, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %for.inc, label %do.body6

do.body6:                                         ; preds = %for.body
  %wqh = getelementptr %struct.list_head, %struct.list_head* %.pn53, i64 -4, i32 1
  %rlock.i = bitcast %struct.list_head** %wqh to %struct.raw_spinlock*
  %call10 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #9
  %moffs15 = getelementptr %struct.list_head, %struct.list_head* %.pn53, i64 -4
  %1 = bitcast %struct.list_head* %moffs15 to i64*
  %2 = load i64, i64* %1, align 8
  %cmp16.not = icmp eq i64 %2, %call
  br i1 %cmp16.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %do.body6
  %3 = bitcast %struct.list_head** %wqh to %struct.wait_queue_head*
  store i64 9223372036854775807, i64* %1, align 8
  %ticks = getelementptr %struct.list_head, %struct.list_head* %.pn53, i64 -2
  %4 = bitcast %struct.list_head* %ticks to i64*
  %5 = load i64, i64* %4, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %4, align 8
  call void @__wake_up_locked_key(%struct.wait_queue_head* noundef %3, i32 noundef 3, i8* noundef nonnull inttoptr (i64 1 to i8*)) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %do.body6
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call10) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end21
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %.pn53, i64 0, i32 0
  %.pn = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp.not = icmp eq %struct.list_head* %.pn, @cancel_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call fastcc void @rcu_read_unlock() #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_mono_to_real() unnamed_addr #0 {
entry:
  %call = call i64 @ktime_mono_to_any(i64 noundef 0, i32 noundef 0) #10
  ret i64 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #9
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked_key(%struct.wait_queue_head* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @timerfd_resume() local_unnamed_addr #0 {
entry:
  call fastcc void @schedule_work() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work() unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_timerfd_create(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_timerfd_create(i64 noundef %0, i64 noundef %1) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_timerfd_create(i64 noundef %clockid, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %clockid to i32
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_timerfd_create(i32 noundef %conv, i32 noundef %conv1) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_timerfd_settime(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_timerfd_settime(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_timerfd_settime(i64 noundef %ufd, i64 noundef %flags, i64 noundef %utmr, i64 noundef %otmr) unnamed_addr #0 {
entry:
  %conv = trunc i64 %ufd to i32
  %conv1 = trunc i64 %flags to i32
  %0 = inttoptr i64 %utmr to %struct.__kernel_itimerspec*
  %1 = inttoptr i64 %otmr to %struct.__kernel_itimerspec*
  %call = call fastcc i64 @__do_sys_timerfd_settime(i32 noundef %conv, i32 noundef %conv1, %struct.__kernel_itimerspec* noundef %0, %struct.__kernel_itimerspec* noundef %1) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_timerfd_gettime(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_timerfd_gettime(i64 noundef %0, i64 noundef %1) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_timerfd_gettime(i64 noundef %ufd, i64 noundef %otmr) unnamed_addr #0 {
entry:
  %conv = trunc i64 %ufd to i32
  %0 = inttoptr i64 %otmr to %struct.__kernel_itimerspec*
  %call = call fastcc i64 @__do_sys_timerfd_gettime(i32 noundef %conv, %struct.__kernel_itimerspec* noundef %0) #9
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_mono_to_any(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret void
}

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
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #11, !srcloc !11
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #11, !srcloc !12
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #9
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !13

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #11, !srcloc !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #11, !srcloc !15
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #11, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #11, !srcloc !18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  call void @rcu_read_unlock_strict() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef nonnull @timerfd_work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @timerfd_resume_work(%struct.work_struct* nocapture noundef readnone %work) #0 {
entry:
  call void @timerfd_clock_was_set() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_timerfd_create(i32 noundef %clockid, i32 noundef %flags) unnamed_addr #0 {
entry:
  %and = and i32 %flags, -526337
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  switch i32 %clockid, label %cleanup [
    i32 9, label %if.end
    i32 8, label %if.end
    i32 7, label %if.end
    i32 1, label %if.end
    i32 0, label %if.end
  ]

if.end:                                           ; preds = %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false
  %0 = and i32 %clockid, -2
  %1 = icmp eq i32 %0, 8
  br i1 %1, label %land.lhs.true14, label %if.end16

land.lhs.true14:                                  ; preds = %if.end
  %call = call i1 @capable(i32 noundef 35) #10
  br i1 %call, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end, %land.lhs.true14
  %call17 = call fastcc i8* @kzalloc() #9
  %tobool18.not = icmp eq i8* %call17, null
  br i1 %tobool18.not, label %cleanup, label %do.body21

do.body21:                                        ; preds = %if.end16
  %2 = bitcast i8* %call17 to %struct.timerfd_ctx*
  %wqh = getelementptr inbounds i8, i8* %call17, i64 136
  %3 = bitcast i8* %wqh to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @__do_sys_timerfd_create.__key) #10
  %cancel_lock = getelementptr inbounds i8, i8* %call17, i64 208
  %4 = bitcast i8* %cancel_lock to i32*
  store i32 0, i32* %4, align 8
  %clockid29 = getelementptr inbounds i8, i8* %call17, i64 168
  %5 = bitcast i8* %clockid29 to i32*
  store i32 %clockid, i32* %5, align 8
  %call30 = call fastcc i1 @isalarm(%struct.timerfd_ctx* noundef nonnull %2) #9
  br i1 %call30, label %if.then31, label %if.else

if.then31:                                        ; preds = %do.body21
  %alarm = bitcast i8* %call17 to %struct.alarm*
  %cmp33 = icmp ne i32 %clockid, 8
  %cond = zext i1 %cmp33 to i32
  call void @alarm_init(%struct.alarm* noundef nonnull %alarm, i32 noundef %cond, i32 (%struct.alarm*, i64)* noundef nonnull @timerfd_alarmproc) #10
  br label %if.end35

if.else:                                          ; preds = %do.body21
  %tmr = bitcast i8* %call17 to %struct.hrtimer*
  call void @hrtimer_init(%struct.hrtimer* noundef nonnull %tmr, i32 noundef %clockid, i32 noundef 0) #10
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then31
  %call36 = call fastcc i64 @ktime_mono_to_real() #9
  %moffs = getelementptr inbounds i8, i8* %call17, i64 128
  %6 = bitcast i8* %moffs to i64*
  store i64 %call36, i64* %6, align 8
  %and37 = and i32 %flags, 526336
  %or = or i32 %and37, 2
  %call38 = call i32 @anon_inode_getfd(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.file_operations* noundef nonnull @timerfd_fops, i8* noundef nonnull %call17, i32 noundef %or) #10
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end35
  call void @kfree(i8* noundef nonnull %call17) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end35
  %conv = sext i32 %call38 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.lhs.true14, %entry, %lor.lhs.false, %if.end41
  %retval.0 = phi i64 [ %conv, %if.end41 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ -1, %land.lhs.true14 ], [ -12, %if.end16 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 8), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #10
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @isalarm(%struct.timerfd_ctx* nocapture noundef readonly %ctx) unnamed_addr #5 {
entry:
  %clockid = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 5
  %0 = load i32, i32* %clockid, align 8
  %1 = and i32 %0, -2
  %2 = icmp eq i32 %1, 8
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_init(%struct.alarm* noundef, i32 noundef, i32 (%struct.alarm*, i64)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @timerfd_alarmproc(%struct.alarm* noundef %alarm, i64 noundef %now) #0 {
entry:
  %0 = bitcast %struct.alarm* %alarm to %struct.timerfd_ctx*
  call fastcc void @timerfd_triggered(%struct.timerfd_ctx* noundef %0) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(%struct.hrtimer* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(i8* noundef, %struct.file_operations* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @timerfd_triggered(%struct.timerfd_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %wqh = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 3
  %rlock.i = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wqh, i64 0, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #9
  %expired = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 6
  store i16 1, i16* %expired, align 4
  %ticks = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 4
  %0 = load i64, i64* %ticks, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %ticks, align 8
  call void @__wake_up_locked_key(%struct.wait_queue_head* noundef %wqh, i32 noundef 3, i8* noundef nonnull inttoptr (i64 1 to i8*)) #10
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @timerfd_read(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef readnone %ppos) #0 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.timerfd_ctx**
  %1 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %0, align 8
  %cmp = icmp ult i64 %count, 8
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %wqh = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 3
  %rlock.i = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wqh, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %2 = load i32, i32* %f_flags, align 8
  %and = and i32 %2, 2048
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end31

if.else:                                          ; preds = %if.end
  %ticks2 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 4
  %3 = load i64, i64* %ticks2, align 8
  %tobool3.not = icmp eq i64 %3, 0
  br i1 %tobool3.not, label %cond.false, label %if.end31

cond.false:                                       ; preds = %if.else
  %4 = bitcast %struct.wait_queue_entry* %__wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #11
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %__wait, i64 0, i32 1
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !20
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %7 = bitcast i8** %private to %struct.task_struct**
  %8 = bitcast %struct.wait_queue_entry* %__wait to i64*
  store i64 0, i64* %8, align 8
  store %struct.task_struct* %6, %struct.task_struct** %7, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %__wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry4 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %__wait, i64 0, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry4, i64 0, i32 0
  store %struct.list_head* %entry4, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %__wait, i64 0, i32 3, i32 1
  store %struct.list_head* %entry4, %struct.list_head** %prev, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.false
  %call8 = call i32 @do_wait_intr_irq(%struct.wait_queue_head* noundef %wqh, %struct.wait_queue_entry* noundef nonnull %__wait) #10
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.cond, label %do.end

do.cond:                                          ; preds = %do.body
  %9 = load i64, i64* %ticks2, align 8
  %tobool13.not = icmp eq i64 %9, 0
  br i1 %tobool13.not, label %do.body, label %do.end

do.end:                                           ; preds = %do.body, %do.cond
  call fastcc void @__remove_wait_queue(%struct.wait_queue_entry* noundef nonnull %__wait) #9
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #11
  %phi.cast = sext i32 %call8 to i64
  br label %if.end31

if.end31:                                         ; preds = %do.end, %if.else, %if.end
  %res.0 = phi i64 [ -11, %if.end ], [ %phi.cast, %do.end ], [ 0, %if.else ]
  %call32 = call fastcc i1 @timerfd_canceled(%struct.timerfd_ctx* noundef %1) #9
  %ticks34 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 4
  br i1 %call32, label %if.end35.thread, label %if.end35

if.end35.thread:                                  ; preds = %if.end31
  store i64 0, i64* %ticks34, align 8
  %expired = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 6
  store i16 0, i16* %expired, align 4
  br label %if.end63.thread

if.end35:                                         ; preds = %if.end31
  %.pre = load i64, i64* %ticks34, align 8
  %ticks36 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 4
  %tobool37.not = icmp eq i64 %.pre, 0
  br i1 %tobool37.not, label %if.end63.thread, label %if.then38

if.end63.thread:                                  ; preds = %if.end35.thread, %if.end35
  %res.1133 = phi i64 [ -125, %if.end35.thread ], [ %res.0, %if.end35 ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  br label %cleanup

if.then38:                                        ; preds = %if.end35
  %expired40 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 6
  %10 = load i16, i16* %expired40, align 4
  %tobool42.not = icmp eq i16 %10, 0
  br i1 %tobool42.not, label %if.end63, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then38
  %tintv = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 1
  %11 = load i64, i64* %tintv, align 8
  %tobool43.not = icmp eq i64 %11, 0
  br i1 %tobool43.not, label %if.end63, label %if.then44

if.then44:                                        ; preds = %land.lhs.true
  %call45 = call fastcc i1 @isalarm(%struct.timerfd_ctx* noundef %1) #9
  br i1 %call45, label %if.then46, label %if.else51

if.then46:                                        ; preds = %if.then44
  %alarm = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 0, i32 0
  %call48 = call i64 @alarm_forward_now(%struct.alarm* noundef %alarm, i64 noundef %11) #10
  %sub = add i64 %.pre, -1
  %add = add i64 %sub, %call48
  call void @alarm_restart(%struct.alarm* noundef %alarm) #10
  br label %if.end63

if.else51:                                        ; preds = %if.then44
  %tmr = bitcast %struct.timerfd_ctx* %1 to %struct.hrtimer*
  %call54 = call fastcc i64 @hrtimer_forward_now(%struct.hrtimer* noundef %tmr, i64 noundef %11) #9
  %sub55 = add i64 %.pre, -1
  %add56 = add i64 %sub55, %call54
  call fastcc void @hrtimer_restart(%struct.hrtimer* noundef %tmr) #9
  br label %if.end63

if.end63:                                         ; preds = %if.then38, %land.lhs.true, %if.else51, %if.then46
  %ticks.0 = phi i64 [ %add, %if.then46 ], [ %add56, %if.else51 ], [ %.pre, %land.lhs.true ], [ %.pre, %if.then38 ]
  store i16 0, i16* %expired40, align 4
  store i64 0, i64* %ticks36, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %tobool66.not = icmp eq i64 %ticks.0, 0
  br i1 %tobool66.not, label %cleanup, label %if.then67

if.then67:                                        ; preds = %if.end63
  %call69 = call fastcc i64 @__range_ok(i8* noundef %buf) #9
  %tobool70.not = icmp eq i64 %call69, 0
  br i1 %tobool70.not, label %cleanup, label %if.then71

if.then71:                                        ; preds = %if.then67
  %call72 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %buf) #9
  %12 = bitcast i8* %call72 to i64*
  %13 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %ticks.0, i64* %12, i32 -14, i32 0) #11, !srcloc !21
  %phi.cmp = icmp eq i32 %13, 0
  %phi.sel = select i1 %phi.cmp, i64 8, i64 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end63.thread, %if.end63, %if.then67, %if.then71, %entry
  %retval.0 = phi i64 [ -22, %entry ], [ %res.0, %if.end63 ], [ %phi.sel, %if.then71 ], [ -14, %if.then67 ], [ %res.1133, %if.end63.thread ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @timerfd_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %wait) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.timerfd_ctx**
  %1 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %0, align 8
  %wqh = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 3
  call fastcc void @poll_wait(%struct.file* noundef %file, %struct.wait_queue_head* noundef %wqh, %struct.poll_table_struct* noundef %wait) #9
  %rlock.i = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wqh, i64 0, i32 0, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #9
  %ticks = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 4
  %2 = load i64, i64* %ticks, align 8
  %tobool.not = icmp ne i64 %2, 0
  %spec.select = zext i1 %tobool.not to i32
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #10
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @timerfd_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readonly %file) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.timerfd_ctx**
  %1 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %0, align 8
  call fastcc void @timerfd_remove_cancel(%struct.timerfd_ctx* noundef %1) #9
  %call = call fastcc i1 @isalarm(%struct.timerfd_ctx* noundef %1) #9
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %alarm = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 0, i32 0
  %call1 = call i32 @alarm_cancel(%struct.alarm* noundef %alarm) #10
  br label %do.body

if.else:                                          ; preds = %entry
  %tmr = bitcast %struct.timerfd_ctx* %1 to %struct.hrtimer*
  %call3 = call i32 @hrtimer_cancel(%struct.hrtimer* noundef %tmr) #10
  br label %do.body

do.body:                                          ; preds = %if.then, %if.else
  %tobool.not = icmp eq %struct.timerfd_ctx* %1, null
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %do.body
  %rcu = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 8
  call void @kvfree_call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull inttoptr (i64 176 to void (%struct.callback_head*)*)) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %do.body
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @timerfd_show(%struct.seq_file* noundef %m, %struct.file* nocapture noundef readonly %file) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.timerfd_ctx**
  %1 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %0, align 8
  %rlock.i = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 3, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %call = call fastcc i64 @timerfd_get_remaining(%struct.timerfd_ctx* noundef %1) #9
  %call1 = call [2 x i64] @ns_to_timespec64(i64 noundef %call) #10
  %call1.fca.0.extract = extractvalue [2 x i64] %call1, 0
  %call1.fca.1.extract = extractvalue [2 x i64] %call1, 1
  %tintv = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 1
  %2 = load i64, i64* %tintv, align 8
  %call3 = call [2 x i64] @ns_to_timespec64(i64 noundef %2) #10
  %call3.fca.0.extract = extractvalue [2 x i64] %call3, 0
  %call3.fca.1.extract = extractvalue [2 x i64] %call3, 1
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %clockid = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 5
  %3 = load i32, i32* %clockid, align 8
  %ticks = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 4
  %4 = load i64, i64* %ticks, align 8
  %settime_flags = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %1, i64 0, i32 7
  %5 = load i16, i16* %settime_flags, align 2
  %conv = zext i16 %5 to i32
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 noundef %3, i64 noundef %4, i32 noundef %conv, i64 noundef %call1.fca.0.extract, i64 noundef %call1.fca.1.extract, i64 noundef %call3.fca.0.extract, i64 noundef %call3.fca.1.extract) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_wait_intr_irq(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__remove_wait_queue(%struct.wait_queue_entry* nocapture noundef %wq_entry) unnamed_addr #6 {
entry:
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 3
  call fastcc void @list_del(%struct.list_head* noundef %entry1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @timerfd_canceled(%struct.timerfd_ctx* nocapture noundef %ctx) unnamed_addr #0 {
entry:
  %might_cancel = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 11
  %0 = load i8, i8* %might_cancel, align 4, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %moffs = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 2
  %1 = load i64, i64* %moffs, align 8
  %cmp.not = icmp eq i64 %1, 9223372036854775807
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call fastcc i64 @ktime_mono_to_real() #9
  store i64 %call, i64* %moffs, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i1 [ true, %if.end ], [ false, %lor.lhs.false ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @alarm_forward_now(%struct.alarm* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_restart(%struct.alarm* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @hrtimer_forward_now(%struct.hrtimer* noundef %timer, i64 noundef %interval) unnamed_addr #0 {
entry:
  %base = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  %0 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base, align 8
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %0, i64 0, i32 6
  %1 = load i64 ()*, i64 ()** %get_time, align 16
  %call = call i64 %1() #10
  %call1 = call i64 @hrtimer_forward(%struct.hrtimer* noundef %timer, i64 noundef %call, i64 noundef %interval) #10
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_restart(%struct.hrtimer* noundef %timer) unnamed_addr #0 {
entry:
  call fastcc void @hrtimer_start_expires(%struct.hrtimer* noundef %timer) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 8, i8* %addr, i64 549755813887) #11, !srcloc !22
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #11, !srcloc !23
  call void asm sideeffect "hint #20", "~{memory}"() #11, !srcloc !24
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #9
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(%struct.hrtimer* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_start_expires(%struct.hrtimer* noundef %timer) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @hrtimer_get_softexpires(%struct.hrtimer* noundef %timer) #9
  %call1 = call fastcc i64 @hrtimer_get_expires(%struct.hrtimer* noundef %timer) #9
  %sub = sub i64 %call1, %call
  call void @hrtimer_start_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %call, i64 noundef %sub, i32 noundef 0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_softexpires(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #5 {
entry:
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  %0 = load i64, i64* %_softexpires, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_expires(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #5 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(%struct.hrtimer* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call fastcc void @arch_local_irq_enable() #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #11, !srcloc !27
  ret void
}

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
  call void %0(%struct.file* noundef %filp, %struct.wait_queue_head* noundef nonnull %wait_address, %struct.poll_table_struct* noundef nonnull %p) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @timerfd_remove_cancel(%struct.timerfd_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 10, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  call fastcc void @__timerfd_remove_cancel(%struct.timerfd_ctx* noundef %ctx) #9
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alarm_cancel(%struct.alarm* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(%struct.hrtimer* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__timerfd_remove_cancel(%struct.timerfd_ctx* nocapture noundef %ctx) unnamed_addr #0 {
entry:
  %might_cancel = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 11
  %0 = load i8, i8* %might_cancel, align 4, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %might_cancel, align 4
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @cancel_lock, i64 0, i32 0, i32 0)) #10
  %clist = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 9
  call fastcc void @list_del_rcu(%struct.list_head* noundef %clist) #9
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @cancel_lock, i64 0, i32 0, i32 0)) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_rcu(%struct.list_head* nocapture noundef %entry1) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #9
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @ns_to_timespec64(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @timerfd_get_remaining(%struct.timerfd_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @isalarm(%struct.timerfd_ctx* noundef %ctx) #9
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %alarm = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 0, i32 0
  %call1 = call i64 @alarm_expires_remaining(%struct.alarm* noundef %alarm) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %tmr = bitcast %struct.timerfd_ctx* %ctx to %struct.hrtimer*
  %call3 = call fastcc i64 @hrtimer_expires_remaining_adjusted(%struct.hrtimer* noundef %tmr) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %remaining.0 = phi i64 [ %call1, %if.then ], [ %call3, %if.else ]
  %0 = icmp sgt i64 %remaining.0, 0
  %cond = select i1 %0, i64 %remaining.0, i64 0
  ret i64 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @alarm_expires_remaining(%struct.alarm* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @hrtimer_expires_remaining_adjusted(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #0 {
entry:
  %base = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  %0 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base, align 8
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %0, i64 0, i32 6
  %1 = load i64 ()*, i64 ()** %get_time, align 16
  %call = call i64 %1() #10
  %call1 = call fastcc i64 @__hrtimer_expires_remaining_adjusted(%struct.hrtimer* noundef %timer, i64 noundef %call) #9
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @__hrtimer_expires_remaining_adjusted(%struct.hrtimer* nocapture noundef readonly %timer, i64 noundef %now) unnamed_addr #5 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  %sub = sub i64 %0, %now
  ret i64 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_timerfd_settime(i32 noundef %ufd, i32 noundef %flags, %struct.__kernel_itimerspec* noundef %utmr, %struct.__kernel_itimerspec* noundef %otmr) unnamed_addr #0 {
entry:
  %new = alloca %struct.itimerspec64, align 8
  %old = alloca %struct.itimerspec64, align 8
  %0 = bitcast %struct.itimerspec64* %new to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !30
  %1 = bitcast %struct.itimerspec64* %old to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !30
  %call = call i32 @get_itimerspec64(%struct.itimerspec64* noundef nonnull %new, %struct.__kernel_itimerspec* noundef %utmr) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @do_timerfd_settime(i32 noundef %ufd, i32 noundef %flags, %struct.itimerspec64* noundef nonnull %new, %struct.itimerspec64* noundef nonnull %old) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %conv = sext i32 %call1 to i64
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq %struct.__kernel_itimerspec* %otmr, null
  br i1 %tobool5.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %call6 = call i32 @put_itimerspec64(%struct.itimerspec64* noundef nonnull %old, %struct.__kernel_itimerspec* noundef nonnull %otmr) #10
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end9, %if.then3
  %retval.0 = phi i64 [ %conv, %if.then3 ], [ 0, %if.end9 ], [ -14, %entry ], [ -14, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_itimerspec64(%struct.itimerspec64* noundef, %struct.__kernel_itimerspec* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_timerfd_settime(i32 noundef %ufd, i32 noundef %flags, %struct.itimerspec64* nocapture noundef readonly %new, %struct.itimerspec64* nocapture noundef writeonly %old) unnamed_addr #0 {
entry:
  %f = alloca %struct.fd, align 8
  %0 = bitcast %struct.fd* %f to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !30
  %tobool.not = icmp ult i32 %flags, 4
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i1 @itimerspec64_valid(%struct.itimerspec64* noundef %new) #9
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call fastcc i32 @timerfd_fget(i32 noundef %ufd, %struct.fd* noundef nonnull %f) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %file = getelementptr inbounds %struct.fd, %struct.fd* %f, i64 0, i32 0
  %1 = load %struct.file*, %struct.file** %file, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 15
  %2 = bitcast i8** %private_data to %struct.timerfd_ctx**
  %3 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %2, align 8
  %call5 = call fastcc i1 @isalarm(%struct.timerfd_ctx* noundef %3) #9
  %4 = ptrtoint %struct.file* %1 to i64
  br i1 %call5, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %call6 = call i1 @capable(i32 noundef 35) #10
  br i1 %call6, label %if.end8, label %cleanup.sink.split

if.end8:                                          ; preds = %land.lhs.true, %if.end4
  call fastcc void @timerfd_setup_cancel(%struct.timerfd_ctx* noundef %3, i32 noundef %flags) #9
  %tmr = bitcast %struct.timerfd_ctx* %3 to %struct.hrtimer*
  %alarm = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %3, i64 0, i32 0, i32 0
  %rlock.i = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %3, i64 0, i32 3, i32 0, i32 0, i32 0
  br label %for.cond

for.cond:                                         ; preds = %if.end19, %if.end8
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %call9 = call fastcc i1 @isalarm(%struct.timerfd_ctx* noundef %3) #9
  br i1 %call9, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.cond
  %call11 = call i32 @alarm_try_to_cancel(%struct.alarm* noundef %alarm) #10
  %cmp = icmp sgt i32 %call11, -1
  br i1 %cmp, label %for.end, label %if.end19

if.else:                                          ; preds = %for.cond
  %call15 = call i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef %tmr) #10
  %cmp16 = icmp sgt i32 %call15, -1
  br i1 %cmp16, label %for.end, label %if.end19

if.end19:                                         ; preds = %if.else, %if.then10
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  call fastcc void @hrtimer_cancel_wait_running() #9
  br label %for.cond

for.end:                                          ; preds = %if.else, %if.then10
  %expired = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %3, i64 0, i32 6
  %5 = load i16, i16* %expired, align 4
  %tobool30.not = icmp eq i16 %5, 0
  br i1 %tobool30.not, label %if.end46, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %for.end
  %tintv = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %3, i64 0, i32 1
  %6 = load i64, i64* %tintv, align 8
  %tobool32.not = icmp eq i64 %6, 0
  br i1 %tobool32.not, label %if.end46, label %if.then33

if.then33:                                        ; preds = %land.lhs.true31
  %call34 = call fastcc i1 @isalarm(%struct.timerfd_ctx* noundef %3) #9
  br i1 %call34, label %if.then35, label %if.else40

if.then35:                                        ; preds = %if.then33
  %call39 = call i64 @alarm_forward_now(%struct.alarm* noundef %alarm, i64 noundef %6) #10
  br label %if.end46

if.else40:                                        ; preds = %if.then33
  %call44 = call fastcc i64 @hrtimer_forward_now(%struct.hrtimer* noundef %tmr, i64 noundef %6) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then35, %if.else40, %land.lhs.true31, %for.end
  %call47 = call fastcc i64 @timerfd_get_remaining(%struct.timerfd_ctx* noundef %3) #9
  %call48 = call [2 x i64] @ns_to_timespec64(i64 noundef %call47) #10
  %call48.fca.0.extract = extractvalue [2 x i64] %call48, 0
  %call48.fca.1.extract = extractvalue [2 x i64] %call48, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %old, i64 0, i32 1, i32 0
  store i64 %call48.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx61 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %old, i64 0, i32 1, i32 1
  store i64 %call48.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx61, align 8
  %tintv50 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %3, i64 0, i32 1
  %7 = load i64, i64* %tintv50, align 8
  %call51 = call [2 x i64] @ns_to_timespec64(i64 noundef %7) #10
  %call51.fca.0.extract = extractvalue [2 x i64] %call51, 0
  %call51.fca.1.extract = extractvalue [2 x i64] %call51, 1
  %tmp49.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %old, i64 0, i32 0, i32 0
  store i64 %call51.fca.0.extract, i64* %tmp49.sroa.0.0..sroa_idx, align 8
  %tmp49.sroa.4.0..sroa_idx58 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %old, i64 0, i32 0, i32 1
  store i64 %call51.fca.1.extract, i64* %tmp49.sroa.4.0..sroa_idx58, align 8
  %call52 = call fastcc i32 @timerfd_setup(%struct.timerfd_ctx* noundef %3, i32 noundef %flags, %struct.itimerspec64* noundef %new) #9
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true, %if.end46
  %retval.0.ph = phi i32 [ %call52, %if.end46 ], [ -1, %land.lhs.true ]
  %.fca.0.insert89 = insertvalue [2 x i64] poison, i64 %4, 0
  %.fca.1.gep90 = getelementptr inbounds %struct.fd, %struct.fd* %f, i64 0, i32 1
  %8 = bitcast i32* %.fca.1.gep90 to i64*
  %.fca.1.load91 = load i64, i64* %8, align 8
  %.fca.1.insert92 = insertvalue [2 x i64] %.fca.0.insert89, i64 %.fca.1.load91, 1
  call fastcc void @fdput([2 x i64] %.fca.1.insert92) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -22, %lor.lhs.false ], [ -22, %entry ], [ %call1, %if.end ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_itimerspec64(%struct.itimerspec64* noundef, %struct.__kernel_itimerspec* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @itimerspec64_valid(%struct.itimerspec64* nocapture noundef readonly %its) unnamed_addr #5 {
entry:
  %it_interval = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %its, i64 0, i32 0
  %call = call fastcc i1 @timespec64_valid(%struct.timespec64* noundef %it_interval) #9
  br i1 %call, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %it_value = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %its, i64 0, i32 1
  %call1 = call fastcc i1 @timespec64_valid(%struct.timespec64* noundef %it_value) #9
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %call1, %lor.lhs.false ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @timerfd_fget(i32 noundef %fd, %struct.fd* nocapture noundef writeonly %p) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #9
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %call.fca.1.extract = extractvalue [2 x i64] %call, 1
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 3
  %1 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %cmp.not = icmp eq %struct.file_operations* %1, @timerfd_fops
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call fastcc void @fdput([2 x i64] %call) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %f.sroa.0.0..sroa_idx = getelementptr inbounds %struct.fd, %struct.fd* %p, i64 0, i32 0
  store %struct.file* %0, %struct.file** %f.sroa.0.0..sroa_idx, align 8
  %f.sroa.8.0..sroa_idx7 = getelementptr inbounds %struct.fd, %struct.fd* %p, i64 0, i32 1
  %f.sroa.8.0..sroa_cast = bitcast i32* %f.sroa.8.0..sroa_idx7 to i64*
  store i64 %call.fca.1.extract, i64* %f.sroa.8.0..sroa_cast, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ -22, %if.then2 ], [ 0, %if.end3 ], [ -9, %entry ]
  ret i32 %retval.0
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @timerfd_setup_cancel(%struct.timerfd_ctx* noundef %ctx, i32 noundef %flags) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 10, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %clockid = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 5
  %0 = load i32, i32* %clockid, align 8
  switch i32 %0, label %if.else [
    i32 0, label %land.lhs.true
    i32 8, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %entry, %entry
  %1 = and i32 %flags, 3
  %.not = icmp eq i32 %1, 3
  br i1 %.not, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %might_cancel = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 11
  %2 = load i8, i8* %might_cancel, align 4, !range !7
  %tobool6.not = icmp eq i8 %2, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then
  store i8 1, i8* %might_cancel, align 4
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @cancel_lock, i64 0, i32 0, i32 0)) #10
  %clist = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 9
  call fastcc void @list_add_rcu(%struct.list_head* noundef %clist) #9
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @cancel_lock, i64 0, i32 0, i32 0)) #10
  br label %if.end9

if.else:                                          ; preds = %entry, %land.lhs.true
  call fastcc void @__timerfd_remove_cancel(%struct.timerfd_ctx* noundef %ctx) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then7, %if.else
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alarm_try_to_cancel(%struct.alarm* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_cancel_wait_running() unnamed_addr #0 {
entry:
  call fastcc void @cpu_relax() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @timerfd_setup(%struct.timerfd_ctx* noundef %ctx, i32 noundef %flags, %struct.itimerspec64* nocapture noundef readonly %ktmr) unnamed_addr #0 {
entry:
  %clockid1 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 5
  %0 = load i32, i32* %clockid1, align 8
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  %1 = xor i32 %and, 1
  %.elt = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %ktmr, i64 0, i32 1, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %2 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %3 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %ktmr, i64 0, i32 1, i32 1
  %.unpack70 = load i64, i64* %3, align 8
  %4 = insertvalue [2 x i64] %2, i64 %.unpack70, 1
  %call = call fastcc i64 @timespec64_to_ktime([2 x i64] %4) #9
  %expired = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 6
  store i16 0, i16* %expired, align 4
  %ticks = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 4
  store i64 0, i64* %ticks, align 8
  %.elt71 = getelementptr %struct.itimerspec64, %struct.itimerspec64* %ktmr, i64 0, i32 0, i32 0
  %.unpack72 = load i64, i64* %.elt71, align 8
  %5 = insertvalue [2 x i64] undef, i64 %.unpack72, 0
  %6 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %ktmr, i64 0, i32 0, i32 1
  %.unpack74 = load i64, i64* %6, align 8
  %7 = insertvalue [2 x i64] %5, i64 %.unpack74, 1
  %call2 = call fastcc i64 @timespec64_to_ktime([2 x i64] %7) #9
  %tintv = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 1
  store i64 %call2, i64* %tintv, align 8
  %call3 = call fastcc i1 @isalarm(%struct.timerfd_ctx* noundef %ctx) #9
  br i1 %call3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %alarm = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 0, i32 0
  %cmp = icmp ne i32 %0, 8
  %cond5 = zext i1 %cmp to i32
  call void @alarm_init(%struct.alarm* noundef %alarm, i32 noundef %cond5, i32 (%struct.alarm*, i64)* noundef nonnull @timerfd_alarmproc) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %tmr = bitcast %struct.timerfd_ctx* %ctx to %struct.hrtimer*
  call void @hrtimer_init(%struct.hrtimer* noundef %tmr, i32 noundef %0, i32 noundef %1) #10
  call fastcc void @hrtimer_set_expires(%struct.hrtimer* noundef %tmr, i64 noundef %call) #9
  %function = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = bitcast %struct.rb_node** %function to i32 (%struct.hrtimer*)**
  store i32 (%struct.hrtimer*)* @timerfd_tmrproc, i32 (%struct.hrtimer*)** %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp11.not = icmp eq i64 %call, 0
  br i1 %cmp11.not, label %if.end36, label %if.then12

if.then12:                                        ; preds = %if.end
  %call18 = call fastcc i1 @isalarm(%struct.timerfd_ctx* noundef %ctx) #9
  br i1 %tobool.not, label %if.end17, label %if.end17.thread

if.end17:                                         ; preds = %if.then12
  br i1 %call18, label %if.else25, label %if.else29

if.end17.thread:                                  ; preds = %if.then12
  br i1 %call18, label %if.then22, label %if.else29

if.then22:                                        ; preds = %if.end17.thread
  %alarm24 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 0, i32 0
  call void @alarm_start(%struct.alarm* noundef %alarm24, i64 noundef %call) #10
  br label %if.end32

if.else25:                                        ; preds = %if.end17
  %alarm27 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 0, i32 0
  call void @alarm_start_relative(%struct.alarm* noundef %alarm27, i64 noundef %call) #10
  br label %if.end32

if.else29:                                        ; preds = %if.end17.thread, %if.end17
  %tmr31 = bitcast %struct.timerfd_ctx* %ctx to %struct.hrtimer*
  call fastcc void @hrtimer_start(%struct.hrtimer* noundef %tmr31, i64 noundef %call, i32 noundef %1) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then22, %if.else25, %if.else29
  %call33 = call fastcc i1 @timerfd_canceled(%struct.timerfd_ctx* noundef %ctx) #9
  br i1 %call33, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.end32, %if.end
  %9 = trunc i32 %flags to i16
  %conv = and i16 %9, 3
  %settime_flags = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %ctx, i64 0, i32 7
  store i16 %conv, i16* %settime_flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end36
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -125, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @timespec64_valid(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #5 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %cmp1 = icmp ult i64 %1, 1000000000
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #10
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #9
  ret [2 x i64] %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #7 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_rcu(%struct.list_head* noundef %new) unnamed_addr #0 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @cancel_list, i64 0, i32 0), align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %next) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* @cancel_list, %struct.list_head** %prev2, align 8
  %0 = ptrtoint %struct.list_head* %new to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) getelementptr inbounds (%struct.list_head, %struct.list_head* @cancel_list, i64 0, i32 0), i64 %0) #11, !srcloc !31
  %prev23 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev23, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #11, !srcloc !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @timespec64_to_ktime([2 x i64] %ts.coerce) unnamed_addr #7 {
entry:
  %ts.coerce.fca.0.extract = extractvalue [2 x i64] %ts.coerce, 0
  %ts.coerce.fca.1.extract = extractvalue [2 x i64] %ts.coerce, 1
  %call = call fastcc i64 @ktime_set(i64 noundef %ts.coerce.fca.0.extract, i64 noundef %ts.coerce.fca.1.extract) #9
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @hrtimer_set_expires(%struct.hrtimer* nocapture noundef writeonly %timer, i64 noundef %time) unnamed_addr #8 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  store i64 %time, i64* %expires, align 8
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  store i64 %time, i64* %_softexpires, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @timerfd_tmrproc(%struct.hrtimer* noundef %htmr) #0 {
entry:
  %0 = bitcast %struct.hrtimer* %htmr to %struct.timerfd_ctx*
  call fastcc void @timerfd_triggered(%struct.timerfd_ctx* noundef %0) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_start(%struct.alarm* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_start_relative(%struct.alarm* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_start(%struct.hrtimer* noundef %timer, i64 noundef %tim, i32 noundef %mode) unnamed_addr #0 {
entry:
  call void @hrtimer_start_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %tim, i64 noundef 0, i32 noundef %mode) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) unnamed_addr #7 {
entry:
  %cmp = icmp sgt i64 %secs, 9223372035
  %mul = mul i64 %secs, 1000000000
  %add = add i64 %mul, %nsecs
  %retval.0 = select i1 %cmp, i64 9223372036854775807, i64 %add, !prof !13
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_timerfd_gettime(i32 noundef %ufd, %struct.__kernel_itimerspec* noundef %otmr) unnamed_addr #0 {
entry:
  %kotmr = alloca %struct.itimerspec64, align 8
  %0 = bitcast %struct.itimerspec64* %kotmr to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !30
  %call = call fastcc i32 @do_timerfd_gettime(i32 noundef %ufd, %struct.itimerspec64* noundef nonnull %kotmr) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @put_itimerspec64(%struct.itimerspec64* noundef nonnull %kotmr, %struct.__kernel_itimerspec* noundef %otmr) #10
  %tobool2.not = icmp eq i32 %call1, 0
  %cond = select i1 %tobool2.not, i64 0, i64 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %cond, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_timerfd_gettime(i32 noundef %ufd, %struct.itimerspec64* nocapture noundef writeonly %t) unnamed_addr #0 {
entry:
  %f = alloca %struct.fd, align 8
  %0 = bitcast %struct.fd* %f to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !30
  %call = call fastcc i32 @timerfd_fget(i32 noundef %ufd, %struct.fd* noundef nonnull %f) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %file = getelementptr inbounds %struct.fd, %struct.fd* %f, i64 0, i32 0
  %1 = load %struct.file*, %struct.file** %file, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 15
  %2 = bitcast i8** %private_data to %struct.timerfd_ctx**
  %3 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %2, align 8
  %rlock.i = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %3, i64 0, i32 3, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %expired = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %3, i64 0, i32 6
  %4 = load i16, i16* %expired, align 4
  %tobool1.not = icmp eq i16 %4, 0
  %5 = ptrtoint %struct.file* %1 to i64
  br i1 %tobool1.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %tintv = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %3, i64 0, i32 1
  %6 = load i64, i64* %tintv, align 8
  %tobool2.not = icmp eq i64 %6, 0
  br i1 %tobool2.not, label %if.end21, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i16 0, i16* %expired, align 4
  %call5 = call fastcc i1 @isalarm(%struct.timerfd_ctx* noundef %3) #9
  br i1 %call5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %alarm = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %3, i64 0, i32 0, i32 0
  %call9 = call i64 @alarm_forward_now(%struct.alarm* noundef %alarm, i64 noundef %6) #10
  %sub = add i64 %call9, -1
  %ticks = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %3, i64 0, i32 4
  %7 = load i64, i64* %ticks, align 8
  %add = add i64 %sub, %7
  store i64 %add, i64* %ticks, align 8
  call void @alarm_restart(%struct.alarm* noundef %alarm) #10
  br label %if.end21

if.else:                                          ; preds = %if.then3
  %tmr = bitcast %struct.timerfd_ctx* %3 to %struct.hrtimer*
  %call14 = call fastcc i64 @hrtimer_forward_now(%struct.hrtimer* noundef %tmr, i64 noundef %6) #9
  %sub15 = add i64 %call14, -1
  %ticks16 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %3, i64 0, i32 4
  %8 = load i64, i64* %ticks16, align 8
  %add17 = add i64 %sub15, %8
  store i64 %add17, i64* %ticks16, align 8
  call fastcc void @hrtimer_restart(%struct.hrtimer* noundef %tmr) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then6, %if.else, %land.lhs.true, %if.end
  %call22 = call fastcc i64 @timerfd_get_remaining(%struct.timerfd_ctx* noundef %3) #9
  %call23 = call [2 x i64] @ns_to_timespec64(i64 noundef %call22) #10
  %call23.fca.0.extract = extractvalue [2 x i64] %call23, 0
  %call23.fca.1.extract = extractvalue [2 x i64] %call23, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %t, i64 0, i32 1, i32 0
  store i64 %call23.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx35 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %t, i64 0, i32 1, i32 1
  store i64 %call23.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx35, align 8
  %tintv25 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %3, i64 0, i32 1
  %9 = load i64, i64* %tintv25, align 8
  %call26 = call [2 x i64] @ns_to_timespec64(i64 noundef %9) #10
  %call26.fca.0.extract = extractvalue [2 x i64] %call26, 0
  %call26.fca.1.extract = extractvalue [2 x i64] %call26, 1
  %tmp24.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %t, i64 0, i32 0, i32 0
  store i64 %call26.fca.0.extract, i64* %tmp24.sroa.0.0..sroa_idx, align 8
  %tmp24.sroa.4.0..sroa_idx32 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %t, i64 0, i32 0, i32 1
  store i64 %call26.fca.1.extract, i64* %tmp24.sroa.4.0..sroa_idx32, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %5, 0
  %.fca.1.gep = getelementptr inbounds %struct.fd, %struct.fd* %f, i64 0, i32 1
  %10 = bitcast i32* %.fca.1.gep to i64*
  %.fca.1.load = load i64, i64* %10, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  call fastcc void @fdput([2 x i64] %.fca.1.insert) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret i32 %call
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i8 0, i8 2}
!8 = !{i64 2149589446}
!9 = !{i64 2149442522}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2149257430, i64 2149257477, i64 2149257483, i64 2149257520, i64 2149257538, i64 2149258849, i64 2149258897, i64 2149258945, i64 2149259008, i64 2149259057, i64 2149257616, i64 2149257641, i64 2149257667, i64 2149257673, i64 2149258515, i64 2149258555, i64 2149258573, i64 2149258605, i64 2149258633, i64 2149258687, i64 2149258707, i64 2149258804, i64 2149257696, i64 2149257710, i64 2149257716, i64 2149257766, i64 2149257812, i64 2149257845}
!12 = !{i64 2149259609, i64 2149259656, i64 2149259662, i64 2149259699, i64 2149259717, i64 2149260660, i64 2149260708, i64 2149260756, i64 2149260819, i64 2149260868, i64 2149259795, i64 2149259820, i64 2149259846, i64 2149259852, i64 2149259889, i64 2149259895, i64 2149259945, i64 2149259991, i64 2149260024}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2149247666, i64 2149247713, i64 2149247719, i64 2149247756, i64 2149247774, i64 2149253176, i64 2149253224, i64 2149253272, i64 2149253335, i64 2149253384, i64 2149247852, i64 2149247877, i64 2149247903, i64 2149247909, i64 2149252842, i64 2149252882, i64 2149252900, i64 2149252932, i64 2149252960, i64 2149253014, i64 2149253034, i64 2149253131, i64 2149247932, i64 2149247946, i64 2149247952, i64 2149248002, i64 2149248048, i64 2149248081}
!15 = !{i64 2147889702, i64 2147889735, i64 2147889788, i64 2147889847, i64 2147889881, i64 2147889936, i64 2147889965, i64 2147889985}
!16 = !{i64 2149615289}
!17 = !{i64 2149558588}
!18 = !{i64 2149263443, i64 2149263490, i64 2149263496, i64 2149263533, i64 2149263551, i64 2149264862, i64 2149264910, i64 2149264958, i64 2149265021, i64 2149265070, i64 2149263629, i64 2149263654, i64 2149263680, i64 2149263686, i64 2149264528, i64 2149264568, i64 2149264586, i64 2149264618, i64 2149264646, i64 2149264700, i64 2149264720, i64 2149264817, i64 2149263709, i64 2149263723, i64 2149263729, i64 2149263779, i64 2149263825, i64 2149263858}
!19 = !{i64 2149442739}
!20 = !{i64 1417960}
!21 = !{i64 2154799663, i64 2154799701, i64 2154799718, i64 2154799752, i64 2154799774, i64 2154799800, i64 2154799818, i64 2154799976, i64 2154800017, i64 2154800039, i64 2154800085}
!22 = !{i64 3910604, i64 3910687, i64 3910911, i64 3911131, i64 3911154}
!23 = !{i64 3915306, i64 3915330}
!24 = !{i64 2151468090}
!25 = !{i64 2149593739}
!26 = !{i64 2149618592}
!27 = !{i64 2149238210, i64 2149238257, i64 2149238263, i64 2149238300, i64 2149238318, i64 2149239658, i64 2149239706, i64 2149239754, i64 2149239817, i64 2149239866, i64 2149238396, i64 2149238421, i64 2149238447, i64 2149238453, i64 2149239324, i64 2149239364, i64 2149239382, i64 2149239414, i64 2149239442, i64 2149239496, i64 2149239516, i64 2149239613, i64 2149238476, i64 2149238490, i64 2149238496, i64 2149238546, i64 2149238592, i64 2149238625}
!28 = !{i64 2149604447}
!29 = !{i64 2149611728}
!30 = !{!"auto-init"}
!31 = !{i64 2150109972}
!32 = !{i64 1818386}
