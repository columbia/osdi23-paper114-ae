; ModuleID = 'fs/fs_context.c'
source_filename = "fs/fs_context.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, {}*, i32 (%struct.fs_context*, i8*)*, i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parameter = type { i8*, i8, %union.anon.1, i64, i32 }
%union.anon.1 = type { i8* }
%struct.fs_parse_result = type { i8, %union.anon.87 }
%union.anon.87 = type { i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.82, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.20 }
%union.anon.20 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.21, %union.anon.24 }
%union.anon.21 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.24 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.15, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.14, [0 x i64] }
%struct.anon.14 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.75, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.13 = type { i32 }
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
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.mnt_namespace = type { %struct.ns_common, %struct.mount*, %struct.list_head, %struct.spinlock, %struct.user_namespace*, %struct.ucounts*, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.mount = type { %struct.hlist_node, %struct.mount*, %struct.dentry*, %struct.vfsmount, %union.anon.88, %struct.mnt_pcp*, %struct.list_head, %struct.list_head, %struct.list_head, i8*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mount*, %struct.mnt_namespace*, %struct.mountpoint*, %union.anon.89, %struct.list_head, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%union.anon.88 = type { %struct.callback_head }
%struct.mnt_pcp = type { i32, i32 }
%struct.mountpoint = type { %struct.hlist_node, %struct.dentry*, %struct.hlist_head, i32 }
%union.anon.89 = type { %struct.hlist_node }
%struct.time_namespace = type opaque
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.60, %union.anon.61, i32 }
%struct.request_queue = type opaque
%union.anon.60 = type { %struct.list_head }
%union.anon.61 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.62 }
%struct.anon.62 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.66 }
%struct.anon.66 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.74, i32, [12 x i8] }
%union.anon.74 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.75 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.page = type { i64, %union.anon.18, %union.anon.40, %struct.atomic_t, [8 x i8] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.40 = type { %struct.atomic_t }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.22, %struct.qspinlock }
%union.anon.22 = type { %struct.atomic_t }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.76, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.76 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.15 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.16, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.17, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.16 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.17 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.80 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.80 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.78 = type { %struct.callback_head }
%union.anon.79 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.82 = type { %struct.pipe_inode_info* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.10, i32 }
%union.anon.10 = type { %struct.kuid_t }
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
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.module = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.85, %struct.list_head, %struct.list_head, %union.anon.86 }
%struct.lockref = type { %union.anon.83 }
%union.anon.83 = type { i64 }
%union.anon.85 = type { %struct.list_head }
%union.anon.86 = type { %struct.hlist_node }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6, [48 x i8] }
%struct.anon.6 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.7, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.proc_dir_entry = type opaque
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.net_device = type opaque
%struct.netns_core = type { %struct.ctl_table_header*, i32, i32*, %struct.prot_inuse* }
%struct.prot_inuse = type opaque
%struct.netns_mib = type { %struct.ipstats_mib*, %struct.tcp_mib*, %struct.linux_mib*, %struct.udp_mib*, %struct.udp_mib*, %struct.icmp_mib*, %struct.icmpmsg_mib* }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type {}
%struct.tcp_mib = type { [16 x i64] }
%struct.linux_mib = type { [126 x i64] }
%struct.udp_mib = type { [10 x i64] }
%struct.icmp_mib = type { [28 x i64] }
%struct.icmpmsg_mib = type { [512 x %struct.atomic64_t] }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, %struct.ctl_table_header* }
%struct.netns_nexthop = type { %struct.rb_root, %struct.hlist_head*, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ipv4_devconf*, %struct.ipv4_devconf*, %struct.ip_ra_chain*, %struct.mutex, i8, i8, %struct.hlist_head*, %struct.sock*, %struct.sock**, %struct.sock*, %struct.inet_peer_base*, %struct.sock**, %struct.fqdir*, i8, i8, i8, i8, i8, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i64, i64, i32, i32, %struct.tcp_congestion_ops*, %struct.tcp_fastopen_context*, i32, %struct.atomic_t, i64, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i64*, i32, %struct.fib_notifier_ops*, i32, %struct.fib_notifier_ops*, i32, %struct.atomic_t, %struct.siphash_key_t, [48 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], %struct.inet_hashinfo*, i32 }
%struct.inet_hashinfo = type opaque
%struct.ipv4_devconf = type opaque
%struct.ip_ra_chain = type opaque
%struct.inet_peer_base = type opaque
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, [23 x i8], %struct.rhashtable, [56 x i8], %struct.atomic64_t, %struct.work_struct, %struct.llist_node, [16 x i8] }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.47, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.47 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sk_buff = type { %union.anon.49, %union.anon.52, %union.anon.53, [48 x i8], %union.anon.54, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.56, i32, i32, i32, i16, i16, %union.anon.58, %union.anon.59, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.51 }
%union.anon.51 = type { %struct.net_device* }
%union.anon.52 = type { %struct.sock* }
%union.anon.53 = type { i64 }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { i64, void (%struct.sk_buff*)* }
%union.anon.56 = type { i32 }
%union.anon.58 = type { i32 }
%union.anon.59 = type { i16 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type opaque
%struct.siphash_key_t = type { [2 x i64] }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type opaque
%struct.bpf_prog = type opaque
%struct.sock = type opaque
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.46 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.46 = type { %struct.callback_head }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.constant_table = type { i8*, i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.va_format = type { i8*, %"struct.std::__va_list"* }
%struct.legacy_fs_context = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Non-string source\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Multiple sources\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Unnamed parameter\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: Unknown parameter '%s'\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@vfs_dup_fs_context.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"&fc->uapi_mutex\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"\014%s%s%pV\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"\013%s%s%pV\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"\015%s%s%pV\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%c %s%s%pV\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"OOM: Can't store error string\00", align 1
@legacy_fs_context_ops = dso_local constant { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)* } { void (%struct.fs_context*)* @legacy_fs_context_free, i32 (%struct.fs_context*, %struct.fs_context*)* @legacy_fs_context_dup, i32 (%struct.fs_context*, %struct.fs_parameter*)* @legacy_parse_param, i32 (%struct.fs_context*, i8*)* @legacy_parse_monolithic, i32 (%struct.fs_context*)* @legacy_get_tree, i32 (%struct.fs_context*)* @legacy_reconfigure }, align 8
@common_set_sb_flag = internal constant [6 x %struct.constant_table] [%struct.constant_table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 128 }, %struct.constant_table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 33554432 }, %struct.constant_table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 64 }, %struct.constant_table { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 1 }, %struct.constant_table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 16 }, %struct.constant_table zeroinitializer], align 8
@common_clear_sb_flag = internal constant [5 x %struct.constant_table] [%struct.constant_table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 16 }, %struct.constant_table { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 33554432 }, %struct.constant_table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 64 }, %struct.constant_table { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i32 1 }, %struct.constant_table zeroinitializer], align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"dirsync\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"lazytime\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"mand\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"nolazytime\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"nomand\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@alloc_fs_context.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@.str.23 = private unnamed_addr constant [57 x i8] c"VFS: Legacy: Can't mix monolithic and individual options\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"VFS: Legacy: Parameter type for '%s' not supported\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"VFS: Legacy: Cumulative options too large\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"VFS: Legacy: Option '%s' contained comma\00", align 1
@.str.27 = private unnamed_addr constant [64 x i8] c"\014fs_context: VFS: Can't mix monolithic and individual options\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_parse_fs_param_source(%struct.fs_context* nocapture noundef %fc, %struct.fs_parameter* nocapture noundef %param) local_unnamed_addr #0 {
entry:
  %key = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 0
  %0 = load i8*, i8** %key, align 8
  %call = call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #7
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load = load i8, i8* %type, align 8
  %cmp1.not = icmp eq i8 %bf.load, 2
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %log3 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %1 = load %struct.fc_log*, %struct.fc_log** %log3, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %1, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #8
  br label %return

if.end4:                                          ; preds = %if.end
  %source = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 10
  %2 = load i8*, i8** %source, align 8
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end4
  %log7 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %3 = load %struct.fc_log*, %struct.fc_log** %log7, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %3, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #8
  br label %return

if.end8:                                          ; preds = %if.end4
  %string = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %4 = load i8*, i8** %string, align 8
  store i8* %4, i8** %source, align 8
  store i8* null, i8** %string, align 8
  br label %return

return:                                           ; preds = %entry, %if.end8, %if.then5, %if.then2
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %if.then5 ], [ 0, %if.end8 ], [ -519, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @logfc(%struct.fc_log* noundef %log, i8* noundef %prefix, i8 noundef %level, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %va = alloca %"struct.std::__va_list", align 8
  %vaf = alloca %struct.va_format, align 8
  %0 = bitcast %"struct.std::__va_list"* %va to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %1 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #9
  %fmt1 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt1, align 8
  %va2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %va, %"struct.std::__va_list"** %va2, align 8
  call void @llvm.va_start(i8* nonnull %0)
  %tobool.not = icmp eq %struct.fc_log* %log, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  switch i8 %level, label %do.end22 [
    i8 119, label %do.end
    i8 101, label %do.end10
  ]

do.end:                                           ; preds = %if.then
  %tobool4.not = icmp eq i8* %prefix, null
  %cond = select i1 %tobool4.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %prefix
  %cond6 = select i1 %tobool4.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* noundef %cond, i8* noundef %cond6, %struct.va_format* noundef nonnull %vaf) #10
  br label %if.end86

do.end10:                                         ; preds = %if.then
  %tobool12.not = icmp eq i8* %prefix, null
  %cond16 = select i1 %tobool12.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %prefix
  %cond18 = select i1 %tobool12.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %call19 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* noundef %cond16, i8* noundef %cond18, %struct.va_format* noundef nonnull %vaf) #10
  br label %if.end86

do.end22:                                         ; preds = %if.then
  %tobool24.not = icmp eq i8* %prefix, null
  %cond28 = select i1 %tobool24.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %prefix
  %cond30 = select i1 %tobool24.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %call31 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* noundef %cond28, i8* noundef %cond30, %struct.va_format* noundef nonnull %vaf) #10
  br label %if.end86

if.else:                                          ; preds = %entry
  %conv32 = zext i8 %level to i32
  %tobool33.not = icmp eq i8* %prefix, null
  %cond37 = select i1 %tobool33.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %prefix
  %cond39 = select i1 %tobool33.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %call40 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv32, i8* noundef %cond37, i8* noundef %cond39, %struct.va_format* noundef nonnull %vaf) #7
  %head = getelementptr inbounds %struct.fc_log, %struct.fc_log* %log, i64 0, i32 1
  %2 = load i8, i8* %head, align 4
  %and = and i8 %2, 7
  %tail = getelementptr inbounds %struct.fc_log, %struct.fc_log* %log, i64 0, i32 2
  %3 = load i8, i8* %tail, align 1
  %sub49 = sub i8 %2, %3
  %cmp = icmp eq i8 %sub49, 8
  br i1 %cmp, label %if.then53, label %if.end60

if.then53:                                        ; preds = %if.else
  %need_free = getelementptr inbounds %struct.fc_log, %struct.fc_log* %log, i64 0, i32 3
  %4 = load i8, i8* %need_free, align 2
  %conv54 = zext i8 %4 to i32
  %conv55 = zext i8 %and to i32
  %shl = shl nuw nsw i32 1, %conv55
  %and56 = and i32 %shl, %conv54
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end, label %if.then58

if.then58:                                        ; preds = %if.then53
  %idxprom = zext i8 %and to i64
  %arrayidx = getelementptr %struct.fc_log, %struct.fc_log* %log, i64 0, i32 5, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  call void @kfree(i8* noundef %5) #7
  %.pre = load i8, i8* %tail, align 1
  br label %if.end

if.end:                                           ; preds = %if.then58, %if.then53
  %6 = phi i8 [ %.pre, %if.then58 ], [ %3, %if.then53 ]
  %inc = add i8 %6, 1
  store i8 %inc, i8* %tail, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.end, %if.else
  %tobool61.not = icmp eq i8* %call40, null
  %cond65 = select i1 %tobool61.not, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* %call40
  %idxprom67 = zext i8 %and to i64
  %arrayidx68 = getelementptr %struct.fc_log, %struct.fc_log* %log, i64 0, i32 5, i64 %idxprom67
  store i8* %cond65, i8** %arrayidx68, align 8
  %shl78 = shl nuw i8 1, %and
  br i1 %tobool61.not, label %if.else76, label %if.then70

if.then70:                                        ; preds = %if.end60
  %need_free73 = getelementptr inbounds %struct.fc_log, %struct.fc_log* %log, i64 0, i32 3
  %7 = load i8, i8* %need_free73, align 2
  %or = or i8 %7, %shl78
  store i8 %or, i8* %need_free73, align 2
  br label %if.end83

if.else76:                                        ; preds = %if.end60
  %neg = xor i8 %shl78, -1
  %need_free79 = getelementptr inbounds %struct.fc_log, %struct.fc_log* %log, i64 0, i32 3
  %8 = load i8, i8* %need_free79, align 2
  %and81 = and i8 %8, %neg
  store i8 %and81, i8* %need_free79, align 2
  br label %if.end83

if.end83:                                         ; preds = %if.else76, %if.then70
  %9 = load i8, i8* %head, align 4
  %inc85 = add i8 %9, 1
  store i8 %inc85, i8* %head, align 4
  br label %if.end86

if.end86:                                         ; preds = %do.end, %do.end10, %do.end22, %if.end83
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_parse_fs_param(%struct.fs_context* noundef %fc, %struct.fs_parameter* noundef %param) local_unnamed_addr #0 {
entry:
  %key = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 0
  %0 = load i8*, i8** %key, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %log1 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %1 = load %struct.fc_log*, %struct.fc_log** %log1, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %1, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @vfs_parse_sb_flag(%struct.fs_context* noundef %fc, i8* noundef nonnull %0) #8
  %cmp.not = icmp eq i32 %call, -519
  br i1 %cmp.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 0
  %2 = load %struct.fs_context_operations*, %struct.fs_context_operations** %ops, align 8
  %parse_param = getelementptr inbounds %struct.fs_context_operations, %struct.fs_context_operations* %2, i64 0, i32 2
  %parse_param9 = bitcast {}** %parse_param to i32 (%struct.fs_context*, %struct.fs_parameter*)**
  %3 = load i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)** %parse_param9, align 8
  %tobool10.not = icmp eq i32 (%struct.fs_context*, %struct.fs_parameter*)* %3, null
  br i1 %tobool10.not, label %if.end19, label %if.then11

if.then11:                                        ; preds = %if.end4
  %call15 = call i32 %3(%struct.fs_context* noundef %fc, %struct.fs_parameter* noundef %param) #7
  %cmp16.not = icmp eq i32 %call15, -519
  br i1 %cmp16.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.then11, %if.end4
  %call20 = call i32 @vfs_parse_fs_param_source(%struct.fs_context* noundef %fc, %struct.fs_parameter* noundef %param) #8
  %cmp21.not = icmp eq i32 %call20, -519
  br i1 %cmp21.not, label %if.end23, label %cleanup

if.end23:                                         ; preds = %if.end19
  %log25 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %4 = load %struct.fc_log*, %struct.fc_log** %log25, align 8
  %fs_type = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 2
  %5 = load %struct.file_system_type*, %struct.file_system_type** %fs_type, align 8
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %5, i64 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %7 = load i8*, i8** %key, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %4, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* noundef %6, i8* noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then11, %if.end, %if.end23, %if.then
  %retval.0 = phi i32 [ -22, %if.end23 ], [ -22, %if.then ], [ %call, %if.end ], [ %call15, %if.then11 ], [ %call20, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vfs_parse_sb_flag(%struct.fs_context* nocapture noundef %fc, i8* noundef %key) unnamed_addr #0 {
entry:
  %call = call i32 @lookup_constant(%struct.constant_table* noundef getelementptr inbounds ([6 x %struct.constant_table], [6 x %struct.constant_table]* @common_set_sb_flag, i64 0, i64 0), i8* noundef %key, i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sb_flags = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 13
  %0 = load i32, i32* %sb_flags, align 8
  %or = or i32 %0, %call
  store i32 %or, i32* %sb_flags, align 8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call2 = call i32 @lookup_constant(%struct.constant_table* noundef getelementptr inbounds ([5 x %struct.constant_table], [5 x %struct.constant_table]* @common_clear_sb_flag, i64 0, i64 0), i8* noundef %key, i32 noundef 0) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  %neg = xor i32 %call2, -1
  %sb_flags5 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 13
  %1 = load i32, i32* %sb_flags5, align 8
  %and = and i32 %1, %neg
  store i32 %and, i32* %sb_flags5, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then, %if.then4
  %call2.sink = phi i32 [ %call2, %if.then4 ], [ %call, %if.then ]
  %sb_flags_mask = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 14
  %2 = load i32, i32* %sb_flags_mask, align 4
  %or7 = or i32 %2, %call2.sink
  store i32 %or7, i32* %sb_flags_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i32 [ -519, %if.end ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_parse_fs_string(%struct.fs_context* noundef %fc, i8* noundef %key, i8* noundef %value, i64 noundef %v_size) local_unnamed_addr #0 {
entry:
  %param = alloca %struct.fs_parameter, align 8
  %0 = bitcast %struct.fs_parameter* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9
  %1 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 32, i1 false), !annotation !7
  %key1 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 0
  store i8* %key, i8** %key1, align 8
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  store i8 1, i8* %type, align 8
  %2 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2
  %size = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 3
  store i64 %v_size, i64* %size, align 8
  %tobool.not = icmp eq i8* %value, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @kmemdup_nul(i8* noundef nonnull %value, i64 noundef %v_size, i32 noundef 3264) #7
  %string = getelementptr inbounds %union.anon.1, %union.anon.1* %2, i64 0, i32 0
  store i8* %call, i8** %string, align 8
  %tobool3.not = icmp eq i8* %call, null
  br i1 %tobool3.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  store i8 2, i8* %type, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 @vfs_parse_fs_param(%struct.fs_context* noundef %fc, %struct.fs_parameter* noundef nonnull %param) #8
  %string8 = getelementptr inbounds %union.anon.1, %union.anon.1* %2, i64 0, i32 0
  %3 = load i8*, i8** %string8, align 8
  call void @kfree(i8* noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end6
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kmemdup_nul(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_parse_monolithic(%struct.fs_context* noundef %fc, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %options = alloca i8*, align 8
  %0 = bitcast i8** %options to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* %data, i8** %options, align 8
  %tobool.not = icmp eq i8* %data, null
  br i1 %tobool.not, label %cleanup21, label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %entry, %if.end14
  %ret.0.ph.ph = phi i32 [ %call15, %if.end14 ], [ 0, %entry ]
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.body, %while.cond.outer.outer
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.then9
  %call4 = call i8* @strsep(i8** noundef nonnull %options, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #7
  %cmp.not = icmp eq i8* %call4, null
  br i1 %cmp.not, label %cleanup21, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load i8, i8* %call4, align 1
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %while.cond.outer, label %if.then6

if.then6:                                         ; preds = %while.body
  %call7 = call i8* @strchr(i8* noundef nonnull %call4, i32 noundef 61) #7
  %tobool8.not = icmp eq i8* %call7, null
  br i1 %tobool8.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.then6
  %cmp10 = icmp eq i8* %call7, %call4
  br i1 %cmp10, label %while.cond, label %if.end12

if.end12:                                         ; preds = %if.then9
  %incdec.ptr = getelementptr i8, i8* %call7, i64 1
  store i8 0, i8* %call7, align 1
  %call13 = call i64 @strlen(i8* noundef %incdec.ptr) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.end12
  %v_len.0 = phi i64 [ %call13, %if.end12 ], [ 0, %if.then6 ]
  %value.0 = phi i8* [ %incdec.ptr, %if.end12 ], [ null, %if.then6 ]
  %call15 = call i32 @vfs_parse_fs_string(%struct.fs_context* noundef %fc, i8* noundef nonnull %call4, i8* noundef %value.0, i64 noundef %v_len.0) #8
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %cleanup21, label %while.cond.outer.outer

cleanup21:                                        ; preds = %if.end14, %while.cond, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %ret.0.ph.ph, %while.cond ], [ %call15, %if.end14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strsep(i8** noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fs_context* @fs_context_for_mount(%struct.file_system_type* noundef %fs_type, i32 noundef %sb_flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.fs_context* @alloc_fs_context(%struct.file_system_type* noundef %fs_type, %struct.dentry* noundef null, i32 noundef %sb_flags, i32 noundef 0, i32 noundef 0) #8
  ret %struct.fs_context* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.fs_context* @alloc_fs_context(%struct.file_system_type* noundef %fs_type, %struct.dentry* noundef %reference, i32 noundef %sb_flags, i32 noundef %sb_flags_mask, i32 noundef %purpose) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 160) #8
  %0 = bitcast i8* %call to %struct.fs_context*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -12) #8
  %1 = bitcast i8* %call1 to %struct.fs_context*
  br label %cleanup

if.end:                                           ; preds = %entry
  %purpose2 = getelementptr inbounds i8, i8* %call, i64 152
  %2 = bitcast i8* %purpose2 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.value = and i32 %purpose, 255
  %bf.clear = and i32 %bf.load, -256
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %2, align 8
  %sb_flags3 = getelementptr inbounds i8, i8* %call, i64 136
  %3 = bitcast i8* %sb_flags3 to i32*
  store i32 %sb_flags, i32* %3, align 8
  %sb_flags_mask4 = getelementptr inbounds i8, i8* %call, i64 140
  %4 = bitcast i8* %sb_flags_mask4 to i32*
  store i32 %sb_flags_mask, i32* %4, align 4
  %call5 = call %struct.file_system_type* @get_filesystem(%struct.file_system_type* noundef %fs_type) #7
  %fs_type6 = getelementptr inbounds i8, i8* %call, i64 40
  %5 = bitcast i8* %fs_type6 to %struct.file_system_type**
  store %struct.file_system_type* %call5, %struct.file_system_type** %5, align 8
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !8
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i64 0, i32 80
  %8 = load %struct.cred*, %struct.cred** %cred, align 8
  %call8 = call fastcc %struct.cred* @get_cred(%struct.cred* noundef %8) #8
  %cred9 = getelementptr inbounds i8, i8* %call, i64 88
  %9 = bitcast i8* %cred9 to %struct.cred**
  store %struct.cred* %call8, %struct.cred** %9, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i64 0, i32 86
  %10 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %net_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %10, i64 0, i32 5
  %11 = load %struct.net*, %struct.net** %net_ns, align 8
  %net_ns12 = getelementptr inbounds i8, i8* %call, i64 80
  %12 = bitcast i8* %net_ns12 to %struct.net**
  store %struct.net* %11, %struct.net** %12, align 8
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %fs_type, i64 0, i32 0
  %13 = load i8*, i8** %name, align 8
  %log = getelementptr inbounds i8, i8* %call, i64 96
  %prefix = bitcast i8* %log to i8**
  store i8* %13, i8** %prefix, align 8
  %uapi_mutex = getelementptr inbounds i8, i8* %call, i64 8
  %14 = bitcast i8* %uapi_mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %14, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_fs_context.__key) #7
  switch i32 %purpose, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end
  %user_ns18 = getelementptr inbounds i8, i8* %call, i64 72
  %15 = bitcast i8* %user_ns18 to %struct.user_namespace**
  store %struct.user_namespace* @init_user_ns, %struct.user_namespace** %15, align 8
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %user_ns21 = getelementptr inbounds i8, i8* %call, i64 72
  %16 = bitcast i8* %user_ns21 to %struct.user_namespace**
  store %struct.user_namespace* @init_user_ns, %struct.user_namespace** %16, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %d_sb23 = getelementptr inbounds %struct.dentry, %struct.dentry* %reference, i64 0, i32 9
  %17 = load %struct.super_block*, %struct.super_block** %d_sb23, align 8
  %s_active = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i64 0, i32 16
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %s_active) #7
  %user_ns27 = getelementptr inbounds i8, i8* %call, i64 72
  %18 = bitcast i8* %user_ns27 to %struct.user_namespace**
  store %struct.user_namespace* @init_user_ns, %struct.user_namespace** %18, align 8
  %call28 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %reference) #8
  %root = getelementptr inbounds i8, i8* %call, i64 64
  %19 = bitcast i8* %root to %struct.dentry**
  store %struct.dentry* %reference, %struct.dentry** %19, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb22, %sw.bb19, %sw.bb
  %20 = load %struct.file_system_type*, %struct.file_system_type** %5, align 8
  %init_fs_context30 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %20, i64 0, i32 2
  %21 = load i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)** %init_fs_context30, align 8
  %tobool31.not = icmp eq i32 (%struct.fs_context*)* %21, null
  %spec.store.select = select i1 %tobool31.not, i32 (%struct.fs_context*)* @legacy_init_fs_context, i32 (%struct.fs_context*)* %21
  %call34 = call i32 %spec.store.select(%struct.fs_context* noundef nonnull %0) #7
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %err_fc, label %if.end36

if.end36:                                         ; preds = %sw.epilog
  %bf.load37 = load i32, i32* %2, align 8
  %bf.set39 = or i32 %bf.load37, 65536
  store i32 %bf.set39, i32* %2, align 8
  br label %cleanup

err_fc:                                           ; preds = %sw.epilog
  call void @put_fs_context(%struct.fs_context* noundef nonnull %0) #8
  %conv = sext i32 %call34 to i64
  %call40 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #8
  %22 = bitcast i8* %call40 to %struct.fs_context*
  br label %cleanup

cleanup:                                          ; preds = %err_fc, %if.end36, %if.then
  %retval.0 = phi %struct.fs_context* [ %22, %err_fc ], [ %0, %if.end36 ], [ %1, %if.then ]
  ret %struct.fs_context* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fs_context* @fs_context_for_reconfigure(%struct.dentry* noundef %dentry, i32 noundef %sb_flags, i32 noundef %sb_flags_mask) local_unnamed_addr #0 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 5
  %1 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %call = call fastcc %struct.fs_context* @alloc_fs_context(%struct.file_system_type* noundef %1, %struct.dentry* noundef %dentry, i32 noundef %sb_flags, i32 noundef %sb_flags_mask, i32 noundef 2) #8
  ret %struct.fs_context* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fs_context* @fs_context_for_submount(%struct.file_system_type* noundef %type, %struct.dentry* noundef %reference) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.fs_context* @alloc_fs_context(%struct.file_system_type* noundef %type, %struct.dentry* noundef %reference, i32 noundef 0, i32 noundef 0, i32 noundef 1) #8
  ret %struct.fs_context* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fc_drop_locked(%struct.fs_context* nocapture noundef %fc) local_unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  %0 = load %struct.dentry*, %struct.dentry** %root, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 9
  %1 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  call void @dput(%struct.dentry* noundef %0) #7
  store %struct.dentry* null, %struct.dentry** %root, align 8
  call void @deactivate_locked_super(%struct.super_block* noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(%struct.super_block* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fs_context* @vfs_dup_fs_context(%struct.fs_context* noundef %src_fc) local_unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.fs_context, %struct.fs_context* %src_fc, i64 0, i32 0
  %0 = load %struct.fs_context_operations*, %struct.fs_context_operations** %ops, align 8
  %dup = getelementptr inbounds %struct.fs_context_operations, %struct.fs_context_operations* %0, i64 0, i32 1
  %1 = load i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)** %dup, align 8
  %tobool.not = icmp eq i32 (%struct.fs_context*, %struct.fs_context*)* %1, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.fs_context* %src_fc to i8*
  %call1 = call i8* @kmemdup(i8* noundef %2, i64 noundef 160, i32 noundef 3264) #7
  %3 = bitcast i8* %call1 to %struct.fs_context*
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %cleanup.sink.split, label %do.body

do.body:                                          ; preds = %if.end
  %uapi_mutex = getelementptr inbounds i8, i8* %call1, i64 8
  %4 = bitcast i8* %uapi_mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @vfs_dup_fs_context.__key) #7
  %fs_private = getelementptr inbounds i8, i8* %call1, i64 48
  %5 = bitcast i8* %fs_private to i8**
  store i8* null, i8** %5, align 8
  %s_fs_info = getelementptr inbounds i8, i8* %call1, i64 128
  %6 = bitcast i8* %s_fs_info to i8**
  store i8* null, i8** %6, align 8
  %source = getelementptr inbounds i8, i8* %call1, i64 112
  %7 = bitcast i8* %source to i8**
  store i8* null, i8** %7, align 8
  %security = getelementptr inbounds i8, i8* %call1, i64 120
  %8 = bitcast i8* %security to i8**
  store i8* null, i8** %8, align 8
  %fs_type = getelementptr inbounds i8, i8* %call1, i64 40
  %9 = bitcast i8* %fs_type to %struct.file_system_type**
  %10 = load %struct.file_system_type*, %struct.file_system_type** %9, align 8
  %call6 = call %struct.file_system_type* @get_filesystem(%struct.file_system_type* noundef %10) #7
  %cred = getelementptr inbounds i8, i8* %call1, i64 88
  %11 = bitcast i8* %cred to %struct.cred**
  %12 = load %struct.cred*, %struct.cred** %11, align 8
  %call9 = call fastcc %struct.cred* @get_cred(%struct.cred* noundef %12) #8
  %log10 = getelementptr inbounds i8, i8* %call1, i64 104
  %13 = bitcast i8* %log10 to %struct.fc_log**
  %14 = load %struct.fc_log*, %struct.fc_log** %13, align 8
  %tobool11.not = icmp eq %struct.fc_log* %14, null
  br i1 %tobool11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %do.body
  %usage = getelementptr inbounds %struct.fc_log, %struct.fc_log* %14, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %do.body
  %ops16 = bitcast i8* %call1 to %struct.fs_context_operations**
  %15 = load %struct.fs_context_operations*, %struct.fs_context_operations** %ops16, align 8
  %dup17 = getelementptr inbounds %struct.fs_context_operations, %struct.fs_context_operations* %15, i64 0, i32 1
  %16 = load i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)** %dup17, align 8
  %call18 = call i32 %16(%struct.fs_context* noundef nonnull %3, %struct.fs_context* noundef %src_fc) #7
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %err_fc, label %cleanup

err_fc:                                           ; preds = %if.end15
  call void @put_fs_context(%struct.fs_context* noundef nonnull %3) #8
  %conv = sext i32 %call18 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %entry, %err_fc
  %conv.sink = phi i64 [ %conv, %err_fc ], [ -95, %entry ], [ -12, %if.end ]
  %call25 = call fastcc i8* @ERR_PTR(i64 noundef %conv.sink) #8
  %17 = bitcast i8* %call25 to %struct.fs_context*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15
  %retval.0 = phi %struct.fs_context* [ %3, %if.end15 ], [ %17, %cleanup.sink.split ]
  ret %struct.fs_context* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kmemdup(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file_system_type* @get_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.cred* @get_cred(%struct.cred* noundef %cred) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.cred* %cred, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 19
  %non_rcu = bitcast %union.anon.46* %0 to i32*
  store i32 0, i32* %non_rcu, align 8
  %call = call fastcc %struct.cred* @get_new_cred(%struct.cred* noundef nonnull %cred) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.cred* %cred
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @put_fs_context(%struct.fs_context* noundef %fc) local_unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  %0 = load %struct.dentry*, %struct.dentry** %root, align 8
  %tobool.not = icmp eq %struct.dentry* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 9
  %1 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  call void @dput(%struct.dentry* noundef nonnull %0) #7
  store %struct.dentry* null, %struct.dentry** %root, align 8
  call void @deactivate_super(%struct.super_block* noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %need_free = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 17
  %2 = bitcast i24* %need_free to i32*
  %bf.load = load i32, i32* %2, align 8
  %3 = and i32 %bf.load, 65536
  %bf.cast.not = icmp eq i32 %3, 0
  br i1 %bf.cast.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ops = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 0
  %4 = load %struct.fs_context_operations*, %struct.fs_context_operations** %ops, align 8
  %tobool4.not = icmp eq %struct.fs_context_operations* %4, null
  br i1 %tobool4.not, label %if.end11, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %free = getelementptr inbounds %struct.fs_context_operations, %struct.fs_context_operations* %4, i64 0, i32 0
  %5 = load void (%struct.fs_context*)*, void (%struct.fs_context*)** %free, align 8
  %tobool7.not = icmp eq void (%struct.fs_context*)* %5, null
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %land.lhs.true5
  call void %5(%struct.fs_context* noundef %fc) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true5, %land.lhs.true, %if.end
  %cred = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 8
  %6 = load %struct.cred*, %struct.cred** %cred, align 8
  call fastcc void @put_cred(%struct.cred* noundef %6) #8
  call fastcc void @put_fc_log(%struct.fs_context* noundef %fc) #8
  %fs_type = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 2
  %7 = load %struct.file_system_type*, %struct.file_system_type** %fs_type, align 8
  call void @put_filesystem(%struct.file_system_type* noundef %7) #7
  %source = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 10
  %8 = load i8*, i8** %source, align 8
  call void @kfree(i8* noundef %8) #7
  %9 = bitcast %struct.fs_context* %fc to i8*
  call void @kfree(i8* noundef %9) #7
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kasprintf(i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(%struct.super_block* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_cred(%struct.cred* noundef %_cred) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.cred* %_cred, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.cred, %struct.cred* %_cred, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %usage) #7
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__put_cred(%struct.cred* noundef nonnull %_cred) #7
  br label %if.end2

if.end2:                                          ; preds = %if.then, %if.then1, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_fc_log(%struct.fs_context* nocapture noundef %fc) unnamed_addr #0 {
entry:
  %log2 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %0 = load %struct.fc_log*, %struct.fc_log** %log2, align 8
  %tobool.not = icmp eq %struct.fc_log* %0, null
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.fc_log, %struct.fc_log* %0, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #8
  br i1 %call, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.then
  store %struct.fc_log* null, %struct.fc_log** %log2, align 8
  %need_free = getelementptr inbounds %struct.fc_log, %struct.fc_log* %0, i64 0, i32 3
  %1 = load i8, i8* %need_free, align 2
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 1
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %for.inc, label %if.then7

if.then7:                                         ; preds = %if.then3
  %arrayidx = getelementptr %struct.fc_log, %struct.fc_log* %0, i64 0, i32 5, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  call void @kfree(i8* noundef %2) #7
  %.pre = load i8, i8* %need_free, align 2
  %.pre29 = zext i8 %.pre to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %if.then7
  %conv.1.pre-phi = phi i32 [ %conv, %if.then3 ], [ %.pre29, %if.then7 ]
  %and.1 = and i32 %conv.1.pre-phi, 2
  %tobool6.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool6.not.1, label %for.inc.1, label %if.then7.1

if.then7.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.fc_log, %struct.fc_log* %0, i64 0, i32 5, i64 1
  %3 = load i8*, i8** %arrayidx.1, align 8
  call void @kfree(i8* noundef %3) #7
  %.pre23 = load i8, i8* %need_free, align 2
  %.pre30 = zext i8 %.pre23 to i32
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then7.1, %for.inc
  %conv.2.pre-phi = phi i32 [ %.pre30, %if.then7.1 ], [ %conv.1.pre-phi, %for.inc ]
  %and.2 = and i32 %conv.2.pre-phi, 4
  %tobool6.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool6.not.2, label %for.inc.2, label %if.then7.2

if.then7.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.fc_log, %struct.fc_log* %0, i64 0, i32 5, i64 2
  %4 = load i8*, i8** %arrayidx.2, align 8
  call void @kfree(i8* noundef %4) #7
  %.pre24 = load i8, i8* %need_free, align 2
  %.pre31 = zext i8 %.pre24 to i32
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then7.2, %for.inc.1
  %conv.3.pre-phi = phi i32 [ %.pre31, %if.then7.2 ], [ %conv.2.pre-phi, %for.inc.1 ]
  %and.3 = and i32 %conv.3.pre-phi, 8
  %tobool6.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool6.not.3, label %for.inc.3, label %if.then7.3

if.then7.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.fc_log, %struct.fc_log* %0, i64 0, i32 5, i64 3
  %5 = load i8*, i8** %arrayidx.3, align 8
  call void @kfree(i8* noundef %5) #7
  %.pre25 = load i8, i8* %need_free, align 2
  %.pre32 = zext i8 %.pre25 to i32
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then7.3, %for.inc.2
  %conv.4.pre-phi = phi i32 [ %.pre32, %if.then7.3 ], [ %conv.3.pre-phi, %for.inc.2 ]
  %and.4 = and i32 %conv.4.pre-phi, 16
  %tobool6.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool6.not.4, label %for.inc.4, label %if.then7.4

if.then7.4:                                       ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.fc_log, %struct.fc_log* %0, i64 0, i32 5, i64 4
  %6 = load i8*, i8** %arrayidx.4, align 8
  call void @kfree(i8* noundef %6) #7
  %.pre26 = load i8, i8* %need_free, align 2
  %.pre33 = zext i8 %.pre26 to i32
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then7.4, %for.inc.3
  %conv.5.pre-phi = phi i32 [ %.pre33, %if.then7.4 ], [ %conv.4.pre-phi, %for.inc.3 ]
  %and.5 = and i32 %conv.5.pre-phi, 32
  %tobool6.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool6.not.5, label %for.inc.5, label %if.then7.5

if.then7.5:                                       ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.fc_log, %struct.fc_log* %0, i64 0, i32 5, i64 5
  %7 = load i8*, i8** %arrayidx.5, align 8
  call void @kfree(i8* noundef %7) #7
  %.pre27 = load i8, i8* %need_free, align 2
  %.pre34 = zext i8 %.pre27 to i32
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then7.5, %for.inc.4
  %conv.6.pre-phi = phi i32 [ %.pre34, %if.then7.5 ], [ %conv.5.pre-phi, %for.inc.4 ]
  %and.6 = and i32 %conv.6.pre-phi, 64
  %tobool6.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool6.not.6, label %for.inc.6, label %if.then7.6

if.then7.6:                                       ; preds = %for.inc.5
  %arrayidx.6 = getelementptr %struct.fc_log, %struct.fc_log* %0, i64 0, i32 5, i64 6
  %8 = load i8*, i8** %arrayidx.6, align 8
  call void @kfree(i8* noundef %8) #7
  %.pre28 = load i8, i8* %need_free, align 2
  %.pre35 = zext i8 %.pre28 to i32
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then7.6, %for.inc.5
  %conv.7.pre-phi = phi i32 [ %.pre35, %if.then7.6 ], [ %conv.6.pre-phi, %for.inc.5 ]
  %and.7 = and i32 %conv.7.pre-phi, 128
  %tobool6.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool6.not.7, label %for.inc.7, label %if.then7.7

if.then7.7:                                       ; preds = %for.inc.6
  %arrayidx.7 = getelementptr %struct.fc_log, %struct.fc_log* %0, i64 0, i32 5, i64 7
  %9 = load i8*, i8** %arrayidx.7, align 8
  call void @kfree(i8* noundef %9) #7
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then7.7, %for.inc.6
  %10 = bitcast %struct.fc_log* %0 to i8*
  call void @kfree(i8* noundef nonnull %10) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then, %for.inc.7, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @legacy_fs_context_free(%struct.fs_context* nocapture noundef readonly %fc) #0 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = load i8*, i8** %fs_private, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %param_type = getelementptr inbounds i8, i8* %0, i64 16
  %1 = bitcast i8* %param_type to i32*
  %2 = load i32, i32* %1, align 8
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %legacy_data = bitcast i8* %0 to i8**
  %3 = load i8*, i8** %legacy_data, align 8
  call void @kfree(i8* noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  call void @kfree(i8* noundef nonnull %0) #7
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @legacy_fs_context_dup(%struct.fs_context* nocapture noundef writeonly %fc, %struct.fs_context* nocapture noundef readonly %src_fc) #0 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %src_fc, i64 0, i32 3
  %0 = load i8*, i8** %fs_private, align 8
  %call = call i8* @kmemdup(i8* noundef %0, i64 noundef 24, i32 noundef 3264) #7
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %param_type = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %param_type to i32*
  %2 = load i32, i32* %1, align 8
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then1, label %if.end8

if.then1:                                         ; preds = %if.end
  %legacy_data = bitcast i8* %0 to i8**
  %3 = load i8*, i8** %legacy_data, align 8
  %data_size = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %data_size to i64*
  %5 = load i64, i64* %4, align 8
  %call2 = call i8* @kmemdup(i8* noundef %3, i64 noundef %5, i32 noundef 3264) #7
  %legacy_data3 = bitcast i8* %call to i8**
  store i8* %call2, i8** %legacy_data3, align 8
  %tobool5.not = icmp eq i8* %call2, null
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then1
  call void @kfree(i8* noundef nonnull %call) #7
  br label %cleanup

if.end8:                                          ; preds = %if.then1, %if.end
  %fs_private9 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  store i8* %call, i8** %fs_private9, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8, %if.then6
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -12, %if.then6 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @legacy_parse_param(%struct.fs_context* nocapture noundef %fc, %struct.fs_parameter* nocapture noundef %param) #0 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = bitcast i8** %fs_private to %struct.legacy_fs_context**
  %1 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %0, align 8
  %data_size = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %1, i64 0, i32 1
  %2 = load i64, i64* %data_size, align 8
  %call = call i32 @vfs_parse_fs_param_source(%struct.fs_context* noundef %fc, %struct.fs_parameter* noundef %param) #8
  %cmp.not = icmp eq i32 %call, -519
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %param_type = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %1, i64 0, i32 2
  %3 = load i32, i32* %param_type, align 8
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %log5 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %4 = load %struct.fc_log*, %struct.fc_log** %log5, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %4, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0)) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load131 = load i8, i8* %type, align 8
  switch i8 %bf.load131, label %sw.default [
    i8 2, label %sw.bb
    i8 1, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end6
  %size7 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 3
  %5 = load i64, i64* %size7, align 8
  %add = add i64 %5, 1
  br label %sw.bb8

sw.bb8:                                           ; preds = %if.end6, %sw.bb
  %len.0 = phi i64 [ 0, %if.end6 ], [ %add, %sw.bb ]
  %key = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 0
  %6 = load i8*, i8** %key, align 8
  %call9 = call i64 @strlen(i8* noundef %6) #7
  %add10 = add i64 %call9, %len.0
  %conv14 = and i64 %2, 4294967295
  %sub = sub nsw i64 4094, %conv14
  %cmp15 = icmp ugt i64 %add10, %sub
  br i1 %cmp15, label %if.then17, label %if.end20

sw.default:                                       ; preds = %if.end6
  %log12 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %7 = load %struct.fc_log*, %struct.fc_log** %log12, align 8
  %key13 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 0
  %8 = load i8*, i8** %key13, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %7, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i64 0, i64 0), i8* noundef %8) #8
  br label %cleanup

if.then17:                                        ; preds = %sw.bb8
  %log19 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %9 = load %struct.fc_log*, %struct.fc_log** %log19, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %9, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0)) #8
  br label %cleanup

if.end20:                                         ; preds = %sw.bb8
  %10 = load i8*, i8** %key, align 8
  %call22 = call i8* @strchr(i8* noundef %10, i32 noundef 44) #7
  %tobool.not = icmp eq i8* %call22, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.then31

lor.lhs.false:                                    ; preds = %if.end20
  %bf.load24 = load i8, i8* %type, align 8
  %cmp26 = icmp eq i8 %bf.load24, 2
  br i1 %cmp26, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %lor.lhs.false
  %string = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %11 = load i8*, i8** %string, align 8
  %size28 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 3
  %12 = load i64, i64* %size28, align 8
  %call29 = call i8* @memchr(i8* noundef %11, i32 noundef 44, i64 noundef %12) #7
  %tobool30.not = icmp eq i8* %call29, null
  br i1 %tobool30.not, label %if.end35, label %if.then31

if.then31:                                        ; preds = %land.lhs.true, %if.end20
  %log33 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %13 = load %struct.fc_log*, %struct.fc_log** %log33, align 8
  %14 = load i8*, i8** %key, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %13, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i8* noundef %14) #8
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %legacy_data = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %1, i64 0, i32 0
  %15 = load i8*, i8** %legacy_data, align 8
  %tobool36.not = icmp eq i8* %15, null
  br i1 %tobool36.not, label %if.then37, label %if.end44

if.then37:                                        ; preds = %if.end35
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 12), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %16, i32 noundef 3264) #7
  store i8* %call.i.i, i8** %legacy_data, align 8
  %tobool41.not = icmp eq i8* %call.i.i, null
  br i1 %tobool41.not, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.then37, %if.end35
  %17 = phi i8* [ %call.i.i, %if.then37 ], [ %15, %if.end35 ]
  %inc = add i64 %2, 1
  %arrayidx = getelementptr i8, i8* %17, i64 %conv14
  store i8 44, i8* %arrayidx, align 1
  %18 = load i8*, i8** %key, align 8
  %call47 = call i64 @strlen(i8* noundef %18) #7
  %19 = load i8*, i8** %legacy_data, align 8
  %idx.ext = and i64 %inc, 4294967295
  %add.ptr = getelementptr i8, i8* %19, i64 %idx.ext
  %20 = load i8*, i8** %key, align 8
  %call50 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %20, i64 noundef %call47) #7
  %add52 = add i64 %call47, %inc
  %bf.load55 = load i8, i8* %type, align 8
  %cmp57 = icmp eq i8 %bf.load55, 2
  br i1 %cmp57, label %if.then59, label %if.end74

if.then59:                                        ; preds = %if.end44
  %21 = load i8*, i8** %legacy_data, align 8
  %inc61 = add i64 %add52, 1
  %idxprom62 = and i64 %add52, 4294967295
  %arrayidx63 = getelementptr i8, i8* %21, i64 %idxprom62
  store i8 61, i8* %arrayidx63, align 1
  %22 = load i8*, i8** %legacy_data, align 8
  %idx.ext65 = and i64 %inc61, 4294967295
  %add.ptr66 = getelementptr i8, i8* %22, i64 %idx.ext65
  %string67 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %23 = load i8*, i8** %string67, align 8
  %size68 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 3
  %24 = load i64, i64* %size68, align 8
  %call69 = call i8* @memcpy(i8* noundef %add.ptr66, i8* noundef %23, i64 noundef %24) #7
  %25 = load i64, i64* %size68, align 8
  %add72 = add i64 %25, %idx.ext65
  br label %if.end74

if.end74:                                         ; preds = %if.then59, %if.end44
  %size.0 = phi i64 [ %add72, %if.then59 ], [ %add52, %if.end44 ]
  %26 = load i8*, i8** %legacy_data, align 8
  %idxprom76 = and i64 %size.0, 4294967295
  %arrayidx77 = getelementptr i8, i8* %26, i64 %idxprom76
  store i8 0, i8* %arrayidx77, align 1
  store i64 %idxprom76, i64* %data_size, align 8
  store i32 2, i32* %param_type, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %entry, %if.end74, %if.then31, %if.then17, %sw.default, %if.then4
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -22, %sw.default ], [ -22, %if.then17 ], [ -22, %if.then31 ], [ 0, %if.end74 ], [ %call, %entry ], [ -12, %if.then37 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @legacy_parse_monolithic(%struct.fs_context* nocapture noundef readonly %fc, i8* noundef %data) #0 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = bitcast i8** %fs_private to %struct.legacy_fs_context**
  %1 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %0, align 8
  %param_type = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %1, i64 0, i32 2
  %2 = load i32, i32* %param_type, align 8
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.27, i64 0, i64 0)) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %legacy_data = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %1, i64 0, i32 0
  store i8* %data, i8** %legacy_data, align 8
  store i32 1, i32* %param_type, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @legacy_get_tree(%struct.fs_context* nocapture noundef %fc) #0 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = bitcast i8** %fs_private to %struct.legacy_fs_context**
  %1 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %0, align 8
  %fs_type = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 2
  %2 = load %struct.file_system_type*, %struct.file_system_type** %fs_type, align 8
  %mount = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %2, i64 0, i32 4
  %3 = load %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)** %mount, align 8
  %sb_flags = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 13
  %4 = load i32, i32* %sb_flags, align 8
  %source = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 10
  %5 = load i8*, i8** %source, align 8
  %legacy_data = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %1, i64 0, i32 0
  %6 = load i8*, i8** %legacy_data, align 8
  %call = call %struct.dentry* %3(%struct.file_system_type* noundef %2, i32 noundef %4, i8* noundef %5, i8* noundef %6) #7
  %7 = bitcast %struct.dentry* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %7) #8
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %7) #8
  %conv = trunc i64 %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %call, i64 0, i32 9
  %8 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %tobool.not = icmp eq %struct.super_block* %8, null
  br i1 %tobool.not, label %do.body9, label %do.end15, !prof !9

do.body9:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/fs_context.c\22; .popsection; .long 14472b - 14470b; .short 616; .short 0; .popsection; 14471: brk 0x800", ""() #9, !srcloc !10
  unreachable

do.end15:                                         ; preds = %if.end
  %root16 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  store %struct.dentry* %call, %struct.dentry** %root16, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %do.end15 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @legacy_reconfigure(%struct.fs_context* noundef %fc) #0 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = bitcast i8** %fs_private to %struct.legacy_fs_context**
  %1 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %0, align 8
  %root = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  %2 = load %struct.dentry*, %struct.dentry** %root, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 9
  %3 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i64 0, i32 6
  %4 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %remount_fs = getelementptr inbounds %struct.super_operations, %struct.super_operations* %4, i64 0, i32 14
  %5 = load i32 (%struct.super_block*, i32*, i8*)*, i32 (%struct.super_block*, i32*, i8*)** %remount_fs, align 8
  %tobool.not = icmp eq i32 (%struct.super_block*, i32*, i8*)* %5, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sb_flags = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 13
  %tobool3.not = icmp eq %struct.legacy_fs_context* %1, null
  br i1 %tobool3.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %legacy_data = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %1, i64 0, i32 0
  %6 = load i8*, i8** %legacy_data, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ null, %if.end ]
  %call = call i32 %5(%struct.super_block* noundef %3, i32* noundef %sb_flags, i8* noundef %cond) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @parse_monolithic_mount_data(%struct.fs_context* noundef %fc, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 0
  %0 = load %struct.fs_context_operations*, %struct.fs_context_operations** %ops, align 8
  %parse_monolithic = getelementptr inbounds %struct.fs_context_operations, %struct.fs_context_operations* %0, i64 0, i32 3
  %1 = load i32 (%struct.fs_context*, i8*)*, i32 (%struct.fs_context*, i8*)** %parse_monolithic, align 8
  %tobool.not = icmp eq i32 (%struct.fs_context*, i8*)* %1, null
  %spec.store.select = select i1 %tobool.not, i32 (%struct.fs_context*, i8*)* @generic_parse_monolithic, i32 (%struct.fs_context*, i8*)* %1
  %call = call i32 %spec.store.select(%struct.fs_context* noundef %fc, i8* noundef %data) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vfs_clean_context(%struct.fs_context* noundef %fc) local_unnamed_addr #0 {
entry:
  %need_free = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 17
  %0 = bitcast i24* %need_free to i32*
  %bf.load = load i32, i32* %0, align 8
  %1 = and i32 %bf.load, 65536
  %bf.cast.not = icmp eq i32 %1, 0
  br i1 %bf.cast.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 0
  %2 = load %struct.fs_context_operations*, %struct.fs_context_operations** %ops, align 8
  %tobool.not = icmp eq %struct.fs_context_operations* %2, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true1

land.lhs.true1:                                   ; preds = %land.lhs.true
  %free = getelementptr inbounds %struct.fs_context_operations, %struct.fs_context_operations* %2, i64 0, i32 0
  %3 = load void (%struct.fs_context*)*, void (%struct.fs_context*)** %free, align 8
  %tobool3.not = icmp eq void (%struct.fs_context*)* %3, null
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true1
  call void %3(%struct.fs_context* noundef %fc) #7
  %bf.load7.pre = load i32, i32* %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  %bf.load7 = phi i32 [ %bf.load7.pre, %if.then ], [ %bf.load, %land.lhs.true1 ], [ %bf.load, %land.lhs.true ], [ %bf.load, %entry ]
  %bf.clear8 = and i32 %bf.load7, -65537
  store i32 %bf.clear8, i32* %0, align 8
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  store i8* null, i8** %fs_private, align 8
  %s_fs_info = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 12
  store i8* null, i8** %s_fs_info, align 8
  %sb_flags = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 13
  store i32 0, i32* %sb_flags, align 8
  %source = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 10
  %4 = load i8*, i8** %source, align 8
  call void @kfree(i8* noundef %4) #7
  store i8* null, i8** %source, align 8
  %bf.load10 = load i32, i32* %0, align 8
  %bf.clear11 = and i32 %bf.load10, -65536
  %bf.set15 = or i32 %bf.clear11, 770
  store i32 %bf.set15, i32* %0, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @finish_clean_context(%struct.fs_context* noundef %fc) local_unnamed_addr #0 {
entry:
  %phase = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 17
  %0 = bitcast i24* %phase to i32*
  %bf.load = load i32, i32* %0, align 8
  %1 = and i32 %bf.load, 65280
  %cmp.not = icmp eq i32 %1, 768
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %fs_type = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 2
  %2 = load %struct.file_system_type*, %struct.file_system_type** %fs_type, align 8
  %init_fs_context = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %2, i64 0, i32 2
  %3 = load i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)** %init_fs_context, align 8
  %tobool.not = icmp eq i32 (%struct.fs_context*)* %3, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %call = call i32 %3(%struct.fs_context* noundef %fc) #7
  br label %if.end5

if.else:                                          ; preds = %if.end
  %call4 = call i32 @legacy_init_fs_context(%struct.fs_context* noundef %fc) #8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then1
  %error.0 = phi i32 [ %call, %if.then1 ], [ %call4, %if.else ]
  %tobool6.not = icmp eq i32 %error.0, 0
  %bf.load14 = load i32, i32* %0, align 8
  %. = select i1 %tobool6.not, i32 -130817, i32 -65281, !prof !11
  %.31 = select i1 %tobool6.not, i32 66560, i32 1536, !prof !11
  %bf.set16 = and i32 %bf.load14, %.
  %bf.set20 = or i32 %bf.set16, %.31
  store i32 %bf.set20, i32* %0, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %error.0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @legacy_init_fs_context(%struct.fs_context* nocapture noundef writeonly %fc) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 24) #8
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  store i8* %call, i8** %fs_private, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 0
  store %struct.fs_context_operations* bitcast ({ void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)* }* @legacy_fs_context_ops to %struct.fs_context_operations*), %struct.fs_context_operations** %ops, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_constant(%struct.constant_table* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 4197824) #7
  ret i8* %call10.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @dget(%struct.dentry* noundef returned %dentry) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dentry* %dentry, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7
  call void @lockref_get(%struct.lockref* noundef %d_lockref) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.dentry* %dentry
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #9, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(%struct.lockref* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.cred* @get_new_cred(%struct.cred* noundef returned %cred) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %usage) #7
  ret %struct.cred* %cred
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #7
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !9

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !11

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #7
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #9, !srcloc !13
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(%struct.cred* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #9, !srcloc !14
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #7
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #9, !srcloc !15
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !11

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #9, !srcloc !16
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { cold nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind readnone }

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
!8 = !{i64 1455801}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2154984399}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2147794686, i64 2147795202, i64 2147795232, i64 2147795259, i64 2147795293, i64 2147795323}
!13 = !{i64 2147800650, i64 2147801314, i64 2147801344, i64 2147801376, i64 2147801410, i64 2147801445, i64 2147801470}
!14 = !{i64 2147805259, i64 2147805907, i64 2147805937, i64 2147805969, i64 2147806003, i64 2147806039, i64 2147806064}
!15 = !{i64 2150044462}
!16 = !{i64 2147812432, i64 2147813106, i64 2147813136, i64 2147813168, i64 2147813202, i64 2147813238, i64 2147813263}
