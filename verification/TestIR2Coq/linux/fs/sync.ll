; ModuleID = 'fs/sync.c'
source_filename = "fs/sync.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
%struct.workqueue_struct = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, {}*, {}*, {}*, {}*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.74, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.8, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.9 }
%union.anon.9 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.10, %union.anon.63, %struct.atomic_t, [8 x i8] }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.63 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.64, %union.anon.65 }
%union.anon.64 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.65 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.24, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.23, [0 x i64] }
%struct.anon.23 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.59, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.27 }
%union.anon.27 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.37, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.37 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.44, %union.anon.45, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.38, %union.anon.39, %union.anon.40, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.43, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.38 = type { %struct.hlist_node }
%union.anon.39 = type { %struct.rb_node }
%union.anon.40 = type { %struct.anon.42 }
%struct.anon.42 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.43 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type opaque
%struct.blk_mq_ctx = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.36, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.36 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.blk_mq_tag_set = type opaque
%union.anon.44 = type { %struct.list_head }
%union.anon.45 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.50 }
%struct.anon.50 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.58, i32, [12 x i8] }
%union.anon.58 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.60, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.60 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.24 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.25, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.26, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.25 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.26 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.69 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.67, %struct.qspinlock }
%union.anon.67 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.69 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.72 = type { %struct.callback_head }
%union.anon.73 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, {}*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.74 = type { %struct.pipe_inode_info* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.79, i32 }
%union.anon.79 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.75 }
%union.anon.75 = type { i64 }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
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
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
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
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.atomic64_t = type { i64 }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1, [48 x i8] }
%struct.anon.1 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.2, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.pt_regs = type { %union.anon.80, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.80 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }

@laptop_mode = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str = private unnamed_addr constant [25 x i8] c"Emergency Sync complete\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sync_filesystem(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  %call = call fastcc i32 @rwsem_is_locked(%struct.rw_semaphore* noundef %s_umount) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/sync.c\22; .popsection; .long 14472b - 14470b; .short 56; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call16 = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %sb) #8
  br i1 %call16, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end
  %call19 = call fastcc i32 @__sync_filesystem(%struct.super_block* noundef %sb, i32 noundef 0) #8
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end18
  %call23 = call fastcc i32 @__sync_filesystem(%struct.super_block* noundef %sb, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end, %if.end22
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ 0, %if.end ], [ %call19, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @rwsem_is_locked(%struct.rw_semaphore* noundef %sem) unnamed_addr #2 {
entry:
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %cmp = icmp ne i64 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sb_rdonly(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #3 {
entry:
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %0 = load i64, i64* %s_flags, align 16
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__sync_filesystem(%struct.super_block* noundef %sb, i32 noundef %wait) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @sync_inodes_sb(%struct.super_block* noundef %sb) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @writeback_inodes_sb(%struct.super_block* noundef %sb, i32 noundef 2) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 6
  %0 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %sync_fs = getelementptr inbounds %struct.super_operations, %struct.super_operations* %0, i64 0, i32 8
  %1 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %sync_fs, align 8
  %tobool1.not = icmp eq i32 (%struct.super_block*, i32)* %1, null
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = call i32 %1(%struct.super_block* noundef %sb, i32 noundef %wait) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %s_bdev = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 20
  %2 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %call6 = call i32 @__sync_blockdev(%struct.block_device* noundef %2, i32 noundef %wait) #10
  ret i32 %call6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ksys_sync() local_unnamed_addr #0 {
entry:
  %nowait = alloca i32, align 4
  %wait = alloca i32, align 4
  %0 = bitcast i32* %nowait to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %nowait, align 4
  %1 = bitcast i32* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  store i32 1, i32* %wait, align 4
  call void @wakeup_flusher_threads(i32 noundef 2) #10
  call void @iterate_supers(void (%struct.super_block*, i8*)* noundef nonnull @sync_inodes_one_sb, i8* noundef null) #10
  call void @iterate_supers(void (%struct.super_block*, i8*)* noundef nonnull @sync_fs_one_sb, i8* noundef nonnull %0) #10
  call void @iterate_supers(void (%struct.super_block*, i8*)* noundef nonnull @sync_fs_one_sb, i8* noundef nonnull %1) #10
  call void @iterate_bdevs(void (%struct.block_device*, i8*)* noundef nonnull @fdatawrite_one_bdev, i8* noundef null) #10
  call void @iterate_bdevs(void (%struct.block_device*, i8*)* noundef nonnull @fdatawait_one_bdev, i8* noundef null) #10
  %2 = load i32, i32* @laptop_mode, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void @laptop_sync_completion() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_flusher_threads(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iterate_supers(void (%struct.super_block*, i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @sync_inodes_one_sb(%struct.super_block* noundef %sb, i8* nocapture noundef readnone %arg) #0 {
entry:
  %call = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %sb) #8
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @sync_inodes_sb(%struct.super_block* noundef %sb) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @sync_fs_one_sb(%struct.super_block* noundef %sb, i8* nocapture noundef readonly %arg) #0 {
entry:
  %call = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %sb) #8
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %s_iflags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 11
  %0 = load i64, i64* %s_iflags, align 8
  %and = and i64 %0, 256
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 6
  %1 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %sync_fs = getelementptr inbounds %struct.super_operations, %struct.super_operations* %1, i64 0, i32 8
  %2 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %sync_fs, align 8
  %tobool2.not = icmp eq i32 (%struct.super_block*, i32)* %2, null
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true1
  %3 = bitcast i8* %arg to i32*
  %4 = load i32, i32* %3, align 4
  %call5 = call i32 %2(%struct.super_block* noundef %sb, i32 noundef %4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iterate_bdevs(void (%struct.block_device*, i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fdatawrite_one_bdev(%struct.block_device* nocapture noundef readonly %bdev, i8* nocapture noundef readnone %arg) #0 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call = call i32 @filemap_fdatawrite(%struct.address_space* noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fdatawait_one_bdev(%struct.block_device* nocapture noundef readonly %bdev, i8* nocapture noundef readnone %arg) #0 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call = call i32 @filemap_fdatawait_keep_errors(%struct.address_space* noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @laptop_sync_completion() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sync(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #0 {
entry:
  call void @ksys_sync() #8
  ret i64 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @emergency_sync() local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 2592) #10
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  %1 = bitcast i8* %call.i.i to %struct.work_struct*
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast i8* %call.i.i to i64*
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry1 = getelementptr inbounds i8, i8* %call.i.i, i64 8
  %2 = bitcast i8* %entry1 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %2) #8
  %func = getelementptr inbounds i8, i8* %call.i.i, i64 24
  %3 = bitcast i8* %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @do_sync_work, void (%struct.work_struct*)** %3, align 8
  call fastcc void @schedule_work(%struct.work_struct* noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %do.body, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @do_sync_work(%struct.work_struct* noundef %work) #0 {
entry:
  %nowait = alloca i32, align 4
  %0 = bitcast i32* %nowait to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %nowait, align 4
  call void @iterate_supers(void (%struct.super_block*, i8*)* noundef nonnull @sync_inodes_one_sb, i8* noundef nonnull %0) #10
  call void @iterate_supers(void (%struct.super_block*, i8*)* noundef nonnull @sync_fs_one_sb, i8* noundef nonnull %0) #10
  call void @iterate_bdevs(void (%struct.block_device*, i8*)* noundef nonnull @fdatawrite_one_bdev, i8* noundef null) #10
  call void @iterate_supers(void (%struct.super_block*, i8*)* noundef nonnull @sync_inodes_one_sb, i8* noundef nonnull %0) #10
  call void @iterate_supers(void (%struct.super_block*, i8*)* noundef nonnull @sync_fs_one_sb, i8* noundef nonnull %0) #10
  call void @iterate_bdevs(void (%struct.block_device*, i8*)* noundef nonnull @fdatawrite_one_bdev, i8* noundef null) #10
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)) #11
  %1 = bitcast %struct.work_struct* %work to i8*
  call void @kfree(i8* noundef %1) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_syncfs(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_syncfs(i64 noundef %0) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_syncfs(i64 noundef %fd) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %call = call fastcc i64 @__do_sys_syncfs(i32 noundef %conv) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_fsync_range(%struct.file* noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) local_unnamed_addr #0 {
entry:
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %0 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %2 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %fsync = getelementptr inbounds %struct.file_operations, %struct.file_operations* %2, i64 0, i32 17
  %3 = load i32 (%struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)** %fsync, align 8
  %tobool.not = icmp eq i32 (%struct.file*, i64, i64, i32)* %3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i32 %datasync, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 20
  %4 = load i64, i64* %i_state, align 8
  %and = and i64 %4, 2048
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  call fastcc void @mark_inode_dirty_sync(%struct.inode* noundef %1) #8
  %.pre = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %fsync6.phi.trans.insert = getelementptr inbounds %struct.file_operations, %struct.file_operations* %.pre, i64 0, i32 17
  %.pre13 = load i32 (%struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)** %fsync6.phi.trans.insert, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %5 = phi i32 (%struct.file*, i64, i64, i32)* [ %.pre13, %if.then3 ], [ %3, %land.lhs.true ], [ %3, %if.end ]
  %call = call i32 %5(%struct.file* noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_inode_dirty_sync(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void @__mark_inode_dirty(%struct.inode* noundef %inode, i32 noundef 1) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_fsync(%struct.file* noundef %file, i32 noundef %datasync) local_unnamed_addr #0 {
entry:
  %call = call i32 @vfs_fsync_range(%struct.file* noundef %file, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef %datasync) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fsync(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_fsync(i64 noundef %0) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fsync(i64 noundef %fd) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %call = call fastcc i64 @__do_sys_fsync(i32 noundef %conv) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fdatasync(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_fdatasync(i64 noundef %0) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fdatasync(i64 noundef %fd) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %call = call fastcc i64 @__do_sys_fdatasync(i32 noundef %conv) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sync_file_range(%struct.file* noundef %file, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %flags, 8
  br i1 %tobool.not, label %if.end, label %cleanup60

if.end:                                           ; preds = %entry
  %add = add i64 %nbytes, %offset
  %0 = or i64 %add, %offset
  %.not = icmp slt i64 %0, 0
  %cmp6 = icmp slt i64 %add, %offset
  %or.cond = or i1 %cmp6, %.not
  br i1 %or.cond, label %cleanup60, label %if.end8

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp eq i64 %nbytes, 0
  %dec = add i64 %add, -1
  %endbyte.0 = select i1 %cmp9, i64 9223372036854775807, i64 %dec
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #8
  %i_mode12 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %1 = load i16, i16* %i_mode12, align 8
  %2 = lshr i16 %1, 13
  %3 = shl i16 %1, 3
  %4 = and i16 %3, -32768
  %5 = or i16 %4, %2
  %6 = xor i16 %5, 4
  switch i16 %6, label %cleanup60 [
    i16 0, label %if.end31
    i16 7, label %if.end31
    i16 6, label %if.end31
    i16 1, label %if.end31
  ]

if.end31:                                         ; preds = %if.end8, %if.end8, %if.end8, %if.end8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %7 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %and32 = and i32 %flags, 1
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end40, label %if.then34

if.then34:                                        ; preds = %if.end31
  %call35 = call i32 @file_fdatawait_range(%struct.file* noundef %file, i64 noundef %offset, i64 noundef %endbyte.0) #10
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %cleanup60, label %if.end40

if.end40:                                         ; preds = %if.then34, %if.end31
  %ret.0 = phi i32 [ %call35, %if.then34 ], [ 0, %if.end31 ]
  %and41 = and i32 %flags, 2
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end54, label %if.then43

if.then43:                                        ; preds = %if.end40
  %cmp45 = icmp eq i32 %flags, 7
  %spec.store.select = zext i1 %cmp45 to i32
  %call49 = call i32 @__filemap_fdatawrite_range(%struct.address_space* noundef %7, i64 noundef %offset, i64 noundef %endbyte.0, i32 noundef %spec.store.select) #10
  %cond = icmp sgt i32 %call49, -1
  br i1 %cond, label %if.end54, label %cleanup60

if.end54:                                         ; preds = %if.then43, %if.end40
  %ret.1 = phi i32 [ %call49, %if.then43 ], [ %ret.0, %if.end40 ]
  %and55 = and i32 %flags, 4
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %cleanup60, label %if.then57

if.then57:                                        ; preds = %if.end54
  %call58 = call i32 @file_fdatawait_range(%struct.file* noundef %file, i64 noundef %offset, i64 noundef %endbyte.0) #10
  br label %cleanup60

cleanup60:                                        ; preds = %if.then43, %entry, %if.end, %if.then34, %if.then57, %if.end54, %if.end8
  %retval.0 = phi i32 [ -22, %entry ], [ -22, %if.end ], [ %call35, %if.then34 ], [ %call49, %if.then43 ], [ %call58, %if.then57 ], [ %ret.1, %if.end54 ], [ -29, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #3 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_fdatawait_range(%struct.file* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__filemap_fdatawrite_range(%struct.address_space* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ksys_sync_file_range(i32 noundef %fd, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #8
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %call2 = call i32 @sync_file_range(%struct.file* noundef nonnull %0, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call2, %if.then ], [ -9, %entry ]
  call fastcc void @fdput([2 x i64] %call) #8
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #10
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #8
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
  call void @fput(%struct.file* noundef %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sync_file_range(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_sync_file_range(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sync_file_range(i64 noundef %fd, i64 noundef %offset, i64 noundef %nbytes, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_sync_file_range(i32 noundef %conv, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %conv1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sync_file_range2(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_sync_file_range2(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sync_file_range2(i64 noundef %fd, i64 noundef %flags, i64 noundef %offset, i64 noundef %nbytes) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_sync_file_range2(i32 noundef %conv, i32 noundef %conv1, i64 noundef %offset, i64 noundef %nbytes) #8
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_inodes_sb(%struct.super_block* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @writeback_inodes_sb(%struct.super_block* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sync_blockdev(%struct.block_device* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(%struct.address_space* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_keep_errors(%struct.address_space* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_syncfs(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #8
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 9
  %2 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 14
  call void @down_read(%struct.rw_semaphore* noundef %s_umount) #10
  %call2 = call i32 @sync_filesystem(%struct.super_block* noundef %2) #8
  call void @up_read(%struct.rw_semaphore* noundef %s_umount) #10
  %s_wb_err = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 43
  %f_sb_err = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 19
  %call5 = call i32 @errseq_check_and_advance(i32* noundef %s_wb_err, i32* noundef %f_sb_err) #10
  call fastcc void @fdput([2 x i64] %call) #8
  %tobool6.not = icmp eq i32 %call2, 0
  %cond = select i1 %tobool6.not, i32 %call5, i32 %call2
  %conv = sext i32 %cond to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -9, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check_and_advance(i32* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(%struct.inode* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fsync(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_fsync(i32 noundef %fd, i32 noundef 0) #8
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_fsync(i32 noundef %fd, i32 noundef %datasync) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #8
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %call2 = call i32 @vfs_fsync(%struct.file* noundef nonnull %0, i32 noundef %datasync) #8
  call fastcc void @fdput([2 x i64] %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call2, %if.then ], [ -9, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fdatasync(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_fsync(i32 noundef %fd, i32 noundef 1) #8
  %conv = sext i32 %call to i64
  ret i64 %conv
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
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sync_file_range(i32 noundef %fd, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call i32 @ksys_sync_file_range(i32 noundef %fd, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) #8
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sync_file_range2(i32 noundef %fd, i32 noundef %flags, i64 noundef %offset, i64 noundef %nbytes) unnamed_addr #0 {
entry:
  %call = call i32 @ksys_sync_file_range(i32 noundef %fd, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) #8
  %conv = sext i32 %call to i64
  ret i64 %conv
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2155392716}
!9 = !{!"branch_weights", i32 2000, i32 1}
