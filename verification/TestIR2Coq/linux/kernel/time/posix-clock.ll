; ModuleID = 'kernel/time/posix-clock.c'
source_filename = "kernel/time/posix-clock.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { i64 }
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
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
%struct.swap_info_struct = type opaque
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.63, %struct.qspinlock }
%union.anon.63 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.42 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.42 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.19 }
%union.anon.19 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.21 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.65 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.65 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.k_itimer = type { %struct.list_head, %struct.hlist_node, %struct.spinlock, %struct.k_clock*, i32, i32, i32, i64, i64, i32, i32, i64, %struct.signal_struct*, %union.anon.73, %struct.sigqueue*, %union.anon.74, %struct.callback_head }
%struct.k_clock = type { i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i64 (i32)*, i32 (i32, %struct.__kernel_timex*)*, {}*, i32 (i32, i32, %struct.timespec64*)*, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)*, {}*, void (%struct.k_itimer*, %struct.itimerspec64*)*, void (%struct.k_itimer*)*, i64 (%struct.k_itimer*, i64)*, i64 (%struct.k_itimer*, i64)*, {}*, void (%struct.k_itimer*, i64, i1, i1)*, void (%struct.k_itimer*)* }
%union.anon.73 = type { %struct.pid* }
%struct.sigqueue = type { %struct.list_head, i32, %struct.kernel_siginfo, %struct.ucounts* }
%union.anon.74 = type { %struct.anon.76 }
%struct.anon.76 = type { %struct.alarm }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, i32 (%struct.alarm*, i64)*, i32, i32, i8* }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, %struct.device*, %struct.rw_semaphore, i8 }
%struct.posix_clock_operations = type { %struct.module*, i32 (%struct.posix_clock*, %struct.__kernel_timex*)*, i32 (%struct.posix_clock*, %struct.timespec64*)*, i32 (%struct.posix_clock*, %struct.timespec64*)*, i32 (%struct.posix_clock*, %struct.timespec64*)*, i64 (%struct.posix_clock*, i32, i64)*, i32 (%struct.posix_clock*, i32)*, i32 (%struct.posix_clock*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.posix_clock*)*, i64 (%struct.posix_clock*, i32, i8*, i64)* }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.68, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.68 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.posix_clock_desc = type { %struct.file*, %struct.posix_clock* }

@posix_clock_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [12 x i8] c"&clk->rwsem\00", align 1
@posix_clock_file_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* @posix_clock_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @posix_clock_poll, i64 (%struct.file*, i32, i64)* @posix_clock_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @posix_clock_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @posix_clock_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"\013%s unable to add device %d:%d\0A\00", align 1
@clock_posix_dynamic = dso_local local_unnamed_addr constant { i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i64 (i32)*, i32 (i32, %struct.__kernel_timex*)*, i32 (%struct.k_itimer*)*, i32 (i32, i32, %struct.timespec64*)*, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, %struct.itimerspec64*)*, void (%struct.k_itimer*)*, i64 (%struct.k_itimer*, i64)*, i64 (%struct.k_itimer*, i64)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, i64, i1, i1)*, void (%struct.k_itimer*)* } { i32 (i32, %struct.timespec64*)* @pc_clock_getres, i32 (i32, %struct.timespec64*)* @pc_clock_settime, i32 (i32, %struct.timespec64*)* @pc_clock_gettime, i64 (i32)* null, i32 (i32, %struct.__kernel_timex*)* @pc_clock_adjtime, i32 (%struct.k_itimer*)* null, i32 (i32, i32, %struct.timespec64*)* null, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)* null, i32 (%struct.k_itimer*)* null, void (%struct.k_itimer*, %struct.itimerspec64*)* null, void (%struct.k_itimer*)* null, i64 (%struct.k_itimer*, i64)* null, i64 (%struct.k_itimer*, i64)* null, i32 (%struct.k_itimer*)* null, void (%struct.k_itimer*, i64, i1, i1)* null, void (%struct.k_itimer*)* null }, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @posix_clock_register(%struct.posix_clock* noundef %clk, %struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %rwsem = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %clk, i64 0, i32 3
  call void @__init_rwsem(%struct.rw_semaphore* noundef %rwsem, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @posix_clock_register.__key) #7
  %cdev = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %clk, i64 0, i32 1
  call void @cdev_init(%struct.cdev* noundef %cdev, %struct.file_operations* noundef nonnull @posix_clock_file_operations) #7
  %call = call i32 @cdev_device_add(%struct.cdev* noundef %cdev, %struct.device* noundef %dev) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %entry
  %call5 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #8
  %devt = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 27
  %0 = load i32, i32* %devt, align 8
  %shr = lshr i32 %0, 20
  %and = and i32 %0, 1048575
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call5, i32 noundef %shr, i32 noundef %and) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %owner = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %clk, i64 0, i32 0, i32 0
  %1 = load %struct.module*, %struct.module** %owner, align 8
  %owner9 = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %clk, i64 0, i32 1, i32 1
  store %struct.module* %1, %struct.module** %owner9, align 8
  %dev10 = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %clk, i64 0, i32 2
  store %struct.device* %dev, %struct.device** %dev10, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end4
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(%struct.rw_semaphore* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(%struct.cdev* noundef, %struct.file_operations* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(%struct.cdev* noundef, %struct.device* noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #4 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @posix_clock_unregister(%struct.posix_clock* noundef %clk) local_unnamed_addr #0 {
entry:
  %cdev = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %clk, i64 0, i32 1
  %dev = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %clk, i64 0, i32 2
  %0 = load %struct.device*, %struct.device** %dev, align 8
  call void @cdev_device_del(%struct.cdev* noundef %cdev, %struct.device* noundef %0) #7
  %rwsem = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %clk, i64 0, i32 3
  call void @down_write(%struct.rw_semaphore* noundef %rwsem) #7
  %zombie = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %clk, i64 0, i32 4
  store i8 1, i8* %zombie, align 8
  call void @up_write(%struct.rw_semaphore* noundef %rwsem) #7
  %1 = load %struct.device*, %struct.device** %dev, align 8
  call void @put_device(%struct.device* noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(%struct.cdev* noundef, %struct.device* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pc_clock_getres(i32 noundef %id, %struct.timespec64* noundef %ts) #0 {
entry:
  %cd = alloca %struct.posix_clock_desc, align 8
  %0 = bitcast %struct.posix_clock_desc* %cd to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call fastcc i32 @get_clock_desc(i32 noundef %id, %struct.posix_clock_desc* noundef nonnull %cd) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %cd, i64 0, i32 1
  %1 = load %struct.posix_clock*, %struct.posix_clock** %clk, align 8
  %clock_getres = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %1, i64 0, i32 0, i32 3
  %2 = load i32 (%struct.posix_clock*, %struct.timespec64*)*, i32 (%struct.posix_clock*, %struct.timespec64*)** %clock_getres, align 8
  %tobool1.not = icmp eq i32 (%struct.posix_clock*, %struct.timespec64*)* %2, null
  br i1 %tobool1.not, label %if.end8, label %if.then2

if.then2:                                         ; preds = %if.end
  %call7 = call i32 %2(%struct.posix_clock* noundef %1, %struct.timespec64* noundef %ts) #7
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then2
  %err.0 = phi i32 [ %call7, %if.then2 ], [ -95, %if.end ]
  call fastcc void @put_clock_desc(%struct.posix_clock_desc* noundef nonnull %cd) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i32 [ %err.0, %if.end8 ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pc_clock_settime(i32 noundef %id, %struct.timespec64* noundef %ts) #0 {
entry:
  %cd = alloca %struct.posix_clock_desc, align 8
  %0 = bitcast %struct.posix_clock_desc* %cd to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call fastcc i32 @get_clock_desc(i32 noundef %id, %struct.posix_clock_desc* noundef nonnull %cd) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %fp = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %cd, i64 0, i32 0
  %1 = load %struct.file*, %struct.file** %fp, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 8
  %2 = load i32, i32* %f_mode, align 4
  %and = and i32 %2, 2
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %out, label %if.end2

if.end2:                                          ; preds = %if.end
  %clk = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %cd, i64 0, i32 1
  %3 = load %struct.posix_clock*, %struct.posix_clock** %clk, align 8
  %clock_settime = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %3, i64 0, i32 0, i32 4
  %4 = load i32 (%struct.posix_clock*, %struct.timespec64*)*, i32 (%struct.posix_clock*, %struct.timespec64*)** %clock_settime, align 8
  %tobool3.not = icmp eq i32 (%struct.posix_clock*, %struct.timespec64*)* %4, null
  br i1 %tobool3.not, label %out, label %if.then4

if.then4:                                         ; preds = %if.end2
  %call9 = call i32 %4(%struct.posix_clock* noundef %3, %struct.timespec64* noundef %ts) #7
  br label %out

out:                                              ; preds = %if.end2, %if.end, %if.then4
  %err.0 = phi i32 [ %call9, %if.then4 ], [ -13, %if.end ], [ -95, %if.end2 ]
  call fastcc void @put_clock_desc(%struct.posix_clock_desc* noundef nonnull %cd) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %err.0, %out ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pc_clock_gettime(i32 noundef %id, %struct.timespec64* noundef %ts) #0 {
entry:
  %cd = alloca %struct.posix_clock_desc, align 8
  %0 = bitcast %struct.posix_clock_desc* %cd to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call fastcc i32 @get_clock_desc(i32 noundef %id, %struct.posix_clock_desc* noundef nonnull %cd) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %cd, i64 0, i32 1
  %1 = load %struct.posix_clock*, %struct.posix_clock** %clk, align 8
  %clock_gettime = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %1, i64 0, i32 0, i32 2
  %2 = load i32 (%struct.posix_clock*, %struct.timespec64*)*, i32 (%struct.posix_clock*, %struct.timespec64*)** %clock_gettime, align 8
  %tobool1.not = icmp eq i32 (%struct.posix_clock*, %struct.timespec64*)* %2, null
  br i1 %tobool1.not, label %if.end8, label %if.then2

if.then2:                                         ; preds = %if.end
  %call7 = call i32 %2(%struct.posix_clock* noundef %1, %struct.timespec64* noundef %ts) #7
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then2
  %err.0 = phi i32 [ %call7, %if.then2 ], [ -95, %if.end ]
  call fastcc void @put_clock_desc(%struct.posix_clock_desc* noundef nonnull %cd) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i32 [ %err.0, %if.end8 ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pc_clock_adjtime(i32 noundef %id, %struct.__kernel_timex* noundef %tx) #0 {
entry:
  %cd = alloca %struct.posix_clock_desc, align 8
  %0 = bitcast %struct.posix_clock_desc* %cd to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call fastcc i32 @get_clock_desc(i32 noundef %id, %struct.posix_clock_desc* noundef nonnull %cd) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %fp = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %cd, i64 0, i32 0
  %1 = load %struct.file*, %struct.file** %fp, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 8
  %2 = load i32, i32* %f_mode, align 4
  %and = and i32 %2, 2
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %out, label %if.end2

if.end2:                                          ; preds = %if.end
  %clk = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %cd, i64 0, i32 1
  %3 = load %struct.posix_clock*, %struct.posix_clock** %clk, align 8
  %clock_adjtime = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %3, i64 0, i32 0, i32 1
  %4 = load i32 (%struct.posix_clock*, %struct.__kernel_timex*)*, i32 (%struct.posix_clock*, %struct.__kernel_timex*)** %clock_adjtime, align 8
  %tobool3.not = icmp eq i32 (%struct.posix_clock*, %struct.__kernel_timex*)* %4, null
  br i1 %tobool3.not, label %out, label %if.then4

if.then4:                                         ; preds = %if.end2
  %call9 = call i32 %4(%struct.posix_clock* noundef %3, %struct.__kernel_timex* noundef %tx) #7
  br label %out

out:                                              ; preds = %if.end2, %if.end, %if.then4
  %err.0 = phi i32 [ %call9, %if.then4 ], [ -13, %if.end ], [ -95, %if.end2 ]
  call fastcc void @put_clock_desc(%struct.posix_clock_desc* noundef nonnull %cd) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %err.0, %out ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @posix_clock_read(%struct.file* nocapture noundef readonly %fp, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef readnone %ppos) #0 {
entry:
  %call = call fastcc %struct.posix_clock* @get_posix_clock(%struct.file* noundef %fp) #8
  %tobool.not = icmp eq %struct.posix_clock* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %read = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %call, i64 0, i32 0, i32 9
  %0 = load i64 (%struct.posix_clock*, i32, i8*, i64)*, i64 (%struct.posix_clock*, i32, i8*, i64)** %read, align 8
  %tobool1.not = icmp eq i64 (%struct.posix_clock*, i32, i8*, i64)* %0, null
  br i1 %tobool1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %fp, i64 0, i32 7
  %1 = load i32, i32* %f_flags, align 8
  %call5 = call i64 %0(%struct.posix_clock* noundef nonnull %call, i32 noundef %1, i8* noundef %buf, i64 noundef %count) #7
  %sext = shl i64 %call5, 32
  %phi.cast = ashr exact i64 %sext, 32
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %err.0 = phi i64 [ %phi.cast, %if.then2 ], [ -22, %if.end ]
  call fastcc void @put_posix_clock(%struct.posix_clock* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi i64 [ %err.0, %if.end6 ], [ -19, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_clock_poll(%struct.file* noundef %fp, %struct.poll_table_struct* noundef %wait) #0 {
entry:
  %call = call fastcc %struct.posix_clock* @get_posix_clock(%struct.file* noundef %fp) #8
  %tobool.not = icmp eq %struct.posix_clock* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %poll = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %call, i64 0, i32 0, i32 7
  %0 = load i32 (%struct.posix_clock*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.posix_clock*, %struct.file*, %struct.poll_table_struct*)** %poll, align 8
  %tobool1.not = icmp eq i32 (%struct.posix_clock*, %struct.file*, %struct.poll_table_struct*)* %0, null
  br i1 %tobool1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %call5 = call i32 %0(%struct.posix_clock* noundef nonnull %call, %struct.file* noundef %fp, %struct.poll_table_struct* noundef %wait) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %result.0 = phi i32 [ %call5, %if.then2 ], [ 0, %if.end ]
  call fastcc void @put_posix_clock(%struct.posix_clock* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi i32 [ %result.0, %if.end6 ], [ 8, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @posix_clock_ioctl(%struct.file* nocapture noundef readonly %fp, i32 noundef %cmd, i64 noundef %arg) #0 {
entry:
  %call = call fastcc %struct.posix_clock* @get_posix_clock(%struct.file* noundef %fp) #8
  %tobool.not = icmp eq %struct.posix_clock* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ioctl = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %call, i64 0, i32 0, i32 5
  %0 = load i64 (%struct.posix_clock*, i32, i64)*, i64 (%struct.posix_clock*, i32, i64)** %ioctl, align 8
  %tobool1.not = icmp eq i64 (%struct.posix_clock*, i32, i64)* %0, null
  br i1 %tobool1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %call5 = call i64 %0(%struct.posix_clock* noundef nonnull %call, i32 noundef %cmd, i64 noundef %arg) #7
  %sext = shl i64 %call5, 32
  %phi.cast = ashr exact i64 %sext, 32
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %err.0 = phi i64 [ %phi.cast, %if.then2 ], [ -25, %if.end ]
  call fastcc void @put_posix_clock(%struct.posix_clock* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi i64 [ %err.0, %if.end6 ], [ -19, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_clock_open(%struct.inode* nocapture noundef readonly %inode, %struct.file* nocapture noundef %fp) #0 {
entry:
  %0 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 40
  %1 = bitcast %union.anon.67* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 -80
  %3 = bitcast i8* %add.ptr to %struct.posix_clock*
  %rwsem = getelementptr i8, i8* %2, i64 112
  %4 = bitcast i8* %rwsem to %struct.rw_semaphore*
  call void @down_read(%struct.rw_semaphore* noundef %4) #7
  %5 = getelementptr i8, i8* %2, i64 152
  %6 = load i8, i8* %5, align 8, !range !8
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %open = getelementptr i8, i8* %2, i64 -32
  %7 = bitcast i8* %open to i32 (%struct.posix_clock*, i32)**
  %8 = load i32 (%struct.posix_clock*, i32)*, i32 (%struct.posix_clock*, i32)** %7, align 8
  %tobool1.not = icmp eq i32 (%struct.posix_clock*, i32)* %8, null
  br i1 %tobool1.not, label %if.then7, label %if.end5

if.end5:                                          ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %fp, i64 0, i32 8
  %9 = load i32, i32* %f_mode, align 4
  %call = call i32 %8(%struct.posix_clock* noundef %3, i32 noundef %9) #7
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then7, label %out

if.then7:                                         ; preds = %if.end, %if.end5
  %dev = getelementptr i8, i8* %2, i64 104
  %10 = bitcast i8* %dev to %struct.device**
  %11 = load %struct.device*, %struct.device** %10, align 8
  %call8 = call %struct.device* @get_device(%struct.device* noundef %11) #7
  %private_data = getelementptr inbounds %struct.file, %struct.file* %fp, i64 0, i32 15
  store i8* %add.ptr, i8** %private_data, align 8
  br label %out

out:                                              ; preds = %entry, %if.end5, %if.then7
  %err.1 = phi i32 [ %call, %if.end5 ], [ 0, %if.then7 ], [ -19, %entry ]
  call void @up_read(%struct.rw_semaphore* noundef %4) #7
  ret i32 %err.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_clock_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef %fp) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %fp, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.posix_clock**
  %1 = load %struct.posix_clock*, %struct.posix_clock** %0, align 8
  %release = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %1, i64 0, i32 0, i32 8
  %2 = load i32 (%struct.posix_clock*)*, i32 (%struct.posix_clock*)** %release, align 8
  %tobool.not = icmp eq i32 (%struct.posix_clock*)* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %2(%struct.posix_clock* noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %err.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  %dev = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %1, i64 0, i32 2
  %3 = load %struct.device*, %struct.device** %dev, align 8
  call void @put_device(%struct.device* noundef %3) #7
  store i8* null, i8** %private_data, align 8
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.posix_clock* @get_posix_clock(%struct.file* nocapture noundef readonly %fp) unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %fp, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.posix_clock**
  %1 = load %struct.posix_clock*, %struct.posix_clock** %0, align 8
  %rwsem = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %1, i64 0, i32 3
  call void @down_read(%struct.rw_semaphore* noundef %rwsem) #7
  %zombie = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %1, i64 0, i32 4
  %2 = load i8, i8* %zombie, align 8, !range !8
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @up_read(%struct.rw_semaphore* noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.posix_clock* [ null, %if.end ], [ %1, %entry ]
  ret %struct.posix_clock* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_posix_clock(%struct.posix_clock* noundef %clk) unnamed_addr #0 {
entry:
  %rwsem = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %clk, i64 0, i32 3
  call void @up_read(%struct.rw_semaphore* noundef %rwsem) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #4 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_clock_desc(i32 noundef %id, %struct.posix_clock_desc* nocapture noundef writeonly %cd) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @clockid_to_fd(i32 noundef %id) #8, !range !9
  %call1 = call %struct.file* @fget(i32 noundef %call) #7
  %tobool.not = icmp eq %struct.file* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, %struct.file* %call1, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %open = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 14
  %1 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %open, align 8
  %cmp.not = icmp eq i32 (%struct.inode*, %struct.file*)* %1, @posix_clock_open
  br i1 %cmp.not, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %private_data = getelementptr inbounds %struct.file, %struct.file* %call1, i64 0, i32 15
  %2 = load i8*, i8** %private_data, align 8
  %tobool2.not = icmp eq i8* %2, null
  br i1 %tobool2.not, label %if.then10, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %fp5 = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %cd, i64 0, i32 0
  store %struct.file* %call1, %struct.file** %fp5, align 8
  %call6 = call fastcc %struct.posix_clock* @get_posix_clock(%struct.file* noundef nonnull %call1) #8
  %clk = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %cd, i64 0, i32 1
  store %struct.posix_clock* %call6, %struct.posix_clock** %clk, align 8
  %tobool8.not = icmp eq %struct.posix_clock* %call6, null
  br i1 %tobool8.not, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end4, %if.end, %lor.lhs.false
  %err.0.ph = phi i32 [ -22, %lor.lhs.false ], [ -22, %if.end ], [ -19, %if.end4 ]
  call void @fput(%struct.file* noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then10, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %err.0.ph, %if.then10 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_clock_desc(%struct.posix_clock_desc* nocapture noundef readonly %cd) unnamed_addr #0 {
entry:
  %clk = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %cd, i64 0, i32 1
  %0 = load %struct.posix_clock*, %struct.posix_clock** %clk, align 8
  call fastcc void @put_posix_clock(%struct.posix_clock* noundef %0) #8
  %fp = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %cd, i64 0, i32 0
  %1 = load %struct.file*, %struct.file** %fp, align 8
  call void @fput(%struct.file* noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @clockid_to_fd(i32 noundef %clk) unnamed_addr #6 {
entry:
  %shr = ashr i32 %clk, 3
  %neg = xor i32 %shr, -1
  ret i32 %neg
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { cold nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i32 -268435456, i32 268435456}
